local a=LoadResourceFile(GetCurrentResourceName(),"lookupTables/weaponTypes.json")local b=json.decode(a or"{}")Client.GetWeaponType=function(c,d)local e=b[tostring(d)]return e or{name="weapon_unarmed",type="melee",category="melee",auto=false}end