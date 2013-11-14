---------------------------------------------------

local _W = display.contentWidth
local _H = display.contentHeight

---------------------------------------------------

local yBase = display.newImage("yBase.png", 0, 0)
yBase.x = _W*4/5 ; yBase.y = _H*4/5

local bBase = display.newImage("bBase.png", 0, 0)
bBase.x = _W/5 ; bBase.y = _H*4/5

local gBase = display.newImage("gBase.png", 0, 0)
gBase.x = _W/2 ; gBase.y = _H*4/5

---------------------------------------------------

local yellow = display.newImage("yellow.png", 0, 0)
yellow.x = _W/5 ; yellow.y = _H/5

local blue = display.newImage("blue.png", 0, 0)
blue.x = _W/2 ; blue.y = _H/5

local green = display.newImage("green.png", 0, 0)
green.x = _W*4/5 ; green.y = _H/5

---------------------------------------------------

local function onYellow(event)
	if( event.phase == "moved" ) then
		yellow.x = event.x
		yellow.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W*4/5)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			yellow.alpha = 0.2
		end
	end
end

yellow:addEventListener("touch", onYellow)

---------------------------------------------------

local function onBlue(event)
	if( event.phase == "moved" ) then
		blue.x = event.x
		blue.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W/5)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			blue.alpha = 0.2
		end
	end
end

blue:addEventListener("touch", onBlue)

---------------------------------------------------

local function onGreen(event)
	if( event.phase == "moved" ) then
		green.x = event.x
		green.y = event.y
		
		local l,h,length_W,length_H
		
		l = event.x - (_W/2)
		length_W = math.abs( l )
		
		h = event.y - (_H*4/5)
		length_H = math.abs( h )
			
		if( (length_W < 30) and (length_H < 30) )then
			green.alpha = 0.2
		end
	end
end

green:addEventListener("touch", onGreen)

---------------------------------------------------
