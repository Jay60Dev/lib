Client.Raycast=Client.Raycast or{}Client.Raycast.FromCoords=function(a,b,c,d,e)local f=StartShapeTestLosProbe(b.x,b.y,b.z,c.x,c.y,c.z,d or 511,cache.ped,e or 4)while true do Wait(0)local g,h,i,j,k,l=GetShapeTestResultIncludingMaterial(f)if g~=1 then return h,l,i,j,k end end end