local function a(b)BeginTextCommandScaleformString("STRING")AddTextComponentScaleform(b)EndTextCommandScaleformString()end;local function c(d)N_0xe83a3e3557a56640(d)end;local function e(f,g)f=RequestScaleformMovie(f)while not HasScaleformMovieLoaded(f)do Citizen.Wait(0)end;DrawScaleformMovieFullscreen(f,255,255,255,0,0)PushScaleformMovieFunction(f,"CLEAR_ALL")PopScaleformMovieFunctionVoid()PushScaleformMovieFunction(f,"SET_CLEAR_SPACE")PushScaleformMovieFunctionParameterInt(200)PopScaleformMovieFunctionVoid()for h=1,#g do PushScaleformMovieFunction(f,"SET_DATA_SLOT")PushScaleformMovieFunctionParameterInt(h-1)c(GetControlInstructionalButton(2,g[h].key,true))a(g[h].name)PopScaleformMovieFunctionVoid()end;PushScaleformMovieFunction(f,"DRAW_INSTRUCTIONAL_BUTTONS")PopScaleformMovieFunctionVoid()PushScaleformMovieFunction(f,"SET_BACKGROUND_COLOUR")PushScaleformMovieFunctionParameterInt(0)PushScaleformMovieFunctionParameterInt(0)PushScaleformMovieFunctionParameterInt(0)PushScaleformMovieFunctionParameterInt(80)PopScaleformMovieFunctionVoid()return f end;Client.InstructionalButtonsInitiate=function(i,j)return e("instructional_buttons",j)end;Client.InstructionalButtonsShow=function(i,f)DrawScaleformMovieFullscreen(f,255,255,255,255,0)end