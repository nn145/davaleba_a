local Class = require("class")

VerticalObject = Class{}

function VerticalObject:init(x, y, speedY)
    self.x = x
    self.y = y
    self.speedY = speedY
    self.isMovingUp = false
end

function VerticalObject:update(dt)
    if self.isMovingUp then
        self.y = self.y - self.speedY * dt
    else
        self.y = self.y + self.speedY * dt
    end

    if self.y <= 0 then
        self.isMovingUp = false
    elseif self.y + 50 >= WINDOW_HEIGHT then
        self.isMovingUp = true
    end
end

function VerticalObject:draw()
    love.graphics.rectangle("fill", self.x, self.y, 50, 50)
end

return VerticalObject
