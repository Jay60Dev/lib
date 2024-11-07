let playing = {};

export default {
    play: function (resource, fileName, options, onEnd) {
        options = options || {};

        if (playing[fileName]) {
            if (playing[fileName].paused) {
                playing[fileName].play();
            }
            return;
        }

        const file = `assets/sounds/${fileName}.ogg`;

        const audio = new Audio(file);

        audio.src = file;

        audio.dataset.resource = resource;

        if (options && options.volume !== undefined) options.volume /= 100;
        audio.volume = options.volume || 1;

        audio.play();

        playing[fileName] = audio;

        audio.onended = function () {
            if (options.looped) {
                if (!playing[fileName]) return;
                audio.play();
            } else {
                if (options.onEnd) {
                    console.log('onEnd', options.onEnd);
                    if (onEnd) onEnd();
                } 
                delete playing[fileName];
            }
        }

    },
    pause: function (resource, fileName) {
        if (playing[fileName]) {
            playing[fileName].pause();
        }
    },
    stop: function (resource, fileName) {
        if (playing[fileName]) {
            playing[fileName].pause();
            delete playing[file];
        }
    },
    stopAll: function (resource) {
        for (let file in playing) {
            playing[file].pause();
            delete playing[file];
        }
    },
    stopResource: function (resource) {
        for (let file in playing) {
            if (playing[file].dataset.resource === resource) {
                playing[file].pause();
                delete playing[file];
            }
        }
    }
}

