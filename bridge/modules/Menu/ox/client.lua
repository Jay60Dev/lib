if not IsMissing("Menu","ox_lib")then return end;local a=exports.ox_lib;local b={}Lib.Menu=function(c,d)if not(d.id and d.title)then return print("Menu requires an id and title.")end;if d.goBack then d.menu=b[#b]d.onBack=function()b[#b]=nil end else d.onBack=function()b={}end end;b[#b+1]=d.id;a:registerContext(d)a:showContext(d.id)end