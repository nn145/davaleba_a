WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

local VerticalObject = require("vertical_object")
local HorizontalObject = require("horizontal_object")

local verticalObject
local horizontalObject

function love.load()
  
  bigFont = love.graphics.newFont('font.ttf', 64)
	smallFont = love.graphics.newFont('font.ttf', 8)
	
	love.graphics.setDefaultFilter('nearest', 'nearest')
  
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true
    })

    verticalObject = VerticalObject(100, 300, 150)  -- x, y, speedY
    horizontalObject = HorizontalObject(500, 300, 200)   -- x, y, speedX
end

function love.update(dt)
    verticalObject:update(dt)
    horizontalObject:update(dt)
end

function love.draw()
  
  love.graphics.setFont(smallFont)
	love.graphics.clear(193/255, 131/255, 131/255, 255/255)
	
	love.graphics.setColor(0/255, 0/255, 0/255, 1)
  
  love.graphics.rectangle("line", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)
  verticalObject:draw()
  horizontalObject:draw()
    
  love.graphics.printf('hello', 0, 10, WINDOW_WIDTH, 'center')
end
