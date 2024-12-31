import audio from './modules/audio.js';

window.addEventListener("message", function (event) {
    const module = event.data.module;
    const action = event.data.action;

    if (action === "stopResource") {
        audio.stopResource(event.data.resource);
        return
    };

    switch(module) {
        case 'Audio':
            if (audio[action] === undefined) return;
        
            let onEnd;
        
            // create the onEnd function if onEnd is defined in the options
            if (event.data?.options?.onEnd) {
                onEnd = function () {
                    audio.play(event.data.resource, event.data.options.onEnd.file, event.data.options.onEnd);
                }
            }
           
            audio[action](event.data.resource, event.data.file, event.data.options, onEnd);
            break;
        case 'OpenWebpage':
            if (action === 'open') {
                if (!event.data.url) return;
                if (!event.data.url.startsWith('http://') && !event.data.url.startsWith('https://')) {
                    event.data.url = 'https://' + event.data.url;
                }
                window.invokeNative('openUrl', event.data.url);
            }
        break;
        case 'Clipboard':
            if (action === 'copy') {
                if (!event.data.text) return;
                
                const el = document.createElement('textarea');
                el.value = event.data.value;
                document.body.appendChild(el);
                el.select();
                document.execCommand('copy');
                document.body.removeChild(el);

                fetch(`https://${GetParentResourceName()}/copied`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ status: 'copied' })
                })
            }
        break;
    }
    
}, false);

// on dom loaded
document.addEventListener("DOMContentLoaded", function () {
    // send a message to the parent window to notify it that the iframe is ready
    fetch(`https://${GetParentResourceName()}/loaded`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ status: 'loaded' })
    })
}, false);