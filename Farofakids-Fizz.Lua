if GetObjectName(GetMyHero()) ~= "fizz" then return end


local FizzMenu = MenuConfig("Farofakids-Fizz", "Farofakids-Fizz")
FizzMenu:Menu("Combo", "Combo")
FizzMenu.Combo:Boolean("UseQCombo", "Use Q", true)
FizzMenu.Combo:Boolean("UseWCombo", "Use W", true)
FizzMenu.Combo:Boolean("UseECombo", "Use E", true)
FizzMenu.Combo:Boolean("UseRCombo", "Use R", true)
FizzMenu.Combo.R:Boolean("UseREGapclose", "Use R, then E for gapclose if killable", true)

FizzMenu:Menu("Harass", "Harass")
FizzMenu.Harass:Boolean("UseQMixed", "Use Q", true)
FizzMenu.Harass:Boolean("UseWMixed", "Use W", true)
FizzMenu.Harass:Boolean("UseEMixed", "Use E", true)


FizzMenu:Menu("Misc", "Misc")

FizzMenu:Menu("JungleClear", "JungleClear")

FizzMenu:Menu("LaneClear", "LaneClear")

FizzMenu:Menu("Drawings", "Drawings")
FizzMenu.Drawings:Boolean("DrawQ", "Draw Q", true)
FizzMenu.Drawings:Boolean("DrawE", "Draw E", true)
FizzMenu.Drawings:Boolean("DrawR", "Draw R", true)


OnDraw(function(myHero)
if FizzMenu.Drawings.Q:Value() then DrawCircle(GetOrigin(myHero),550,1,25,0xffff0000) end
if FizzMenu.Drawings.E:Value() then DrawCircle(GetOrigin(myHero),400,1,25,0xffff0000) end
if FizzMenu.Drawings.R:Value() then DrawCircle(myHeroPos(),1300,2,25,0xffff0000) end
end)


PrintChat(string.format("<font color='#1244EA'>Orianna:</font> <font color='#FFFFFF'> MADE BY FAROFAKIDS </font>"))
PrintChat("LOADED: " ..GetObjectBaseName(myHero))
