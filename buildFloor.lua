turtle.select(1)
local direction = 1
while true do

	while not turtle.detect() do
		turtle.forward()

		local slot = turtle.getSelectedSlot()
		if turtle.getItemCount(slot) < 1 then
			turtle.select(slot+1)
		end

		if not turtle.detectDown() then
			turtle.placeDown()
		end
	end
  
	local slot = turtle.getSelectedSlot()
	if turtle.getItemCount(slot) < 1 then
		turtle.select(slot+1)
	end
	
	if direction == 1 then
		turtle.turnLeft()
		turtle.forward()
		turtle.turnLeft()
		turtle.placeDown()
		direction = 2
	else
		turtle.turnRight()
		turtle.forward()
		turtle.turnRight()
		turtle.placeDown()
		direction =1
	end

end
