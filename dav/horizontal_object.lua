local Class = require("class")

HorizontalObject = Class{}

function HorizontalObject:init(x, y, speedX)
    self.x = x
    self.y = y
    self.speedX = speedX
    self.directionX = 1
end

function HorizontalObject:update(dt)
    self.x = self.x + self.speedX * self.directionX * dt
    if self.x <= 0 or self.x + 50 >= WINDOW_WIDTH then
        self.directionX = -self.directionX
    end
end

function HorizontalObject:draw()
    love.graphics.rectangle("fill", self.x, self.y, 50, 50)
end

return HorizontalObject
