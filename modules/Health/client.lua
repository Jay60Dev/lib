Lib.RemoveHealth=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of health to remove, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;ApplyDamageToPed(PlayerPedId(),b,false)return true end;Lib.AddHealth=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of health to add, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;SetEntityHealth(a,GetEntityHealth(a)+b)return true end;Lib.SetHealth=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of health to set, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;SetEntityHealth(a,b)return true end;Lib.AddArmour=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of armour to add, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;SetPedArmour(a,GetPedArmour(a)+b)return true end;Lib.RemoveArmour=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of armour to remove, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;SetPedArmour(a,GetPedArmour(a)-b)return true end;Lib.SetArmour=function(a,b)if not a then return false end;if not type(a)=="number"then return false,"Amount of armour to set, must be a number"end;if not IsEntityAPed(a)then return false,"Entity must be a ped"end;SetPedArmour(a,b)return true end