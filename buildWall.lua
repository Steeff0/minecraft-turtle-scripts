turtle.select(1)
while true do

	while not turtle.detect() do
		turtle.forward()
		
		local slot = turtle.getSelectedSlot()
		
		if turtle.getItemCount(slot) < 2 then
			turtle.select(slot+1)
		end
		
		if not turtle.detectDown() then
			turtle.placeDown()
		end
	end
	
	turtle.up()
	turtle.turnLeft()
	turtle.turnLeft()
	turtle.placeDown()

end
