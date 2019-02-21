--Marlon
--main.lua

local image = display.newImageRect( "Assets/pizza.png", 150, 150 )
image.x = 160
image.y = 110

local myText = display.newText( "Pizza Diameter:", 130, 370, native.systemFont, 20 )
myText:setFillColor( 6/255, 29/255, 96/255 )

display.setDefault( "background", 220/255, 120/255, 0/255 )

--Variables
local diameterOfPizzaTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 170, 200, 50 )
diameterOfPizzaTextfield.id = "length textField"

local costOfPizzaTextfield = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 240, native.systemFont, 30 )
costOfPizzaTextfield.id = "area textField"
costOfPizzaTextfield:setFillColor (81/255, 255/255, 113/255)

local calculateButton = display.newImageRect( "./assets/enterButton.png", 260, 90 )
calculateButton.x = 160
calculateButton.y = 260
calculateButton.id = "calculate button"

--function 
local function calculateButtonTouch( event )
    
 
    local diameterOfPizza
    local costOfPizza
 
    diameterOfPizza = diameterOfPizzaTextfield.text
    costOfPizza = ((diameterOfPizza * 0.5) + 1 + 0.75) * 1.13
    -- print( costOfPizza )
    costOfPizzaTextfield.text = "The cost is " .. costOfPizza

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )