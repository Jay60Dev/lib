Lib.GetTimeDifference=function(a,b)if a=="now"or a==true then a=os.time()end;local c=os.difftime(b,a)return{week=math.floor(c/(60*60*24*7)),day=math.floor(c%(60*60*24*7)/(60*60*24)),hour=math.floor(c%(60*60*24)/(60*60)),minute=math.floor(c%(60*60)/60),totaldays=math.floor(c/(60*60*24))}end