require("ball")
require("player")
require("ai")

function love.load()
	Player:load()
	Ball:load()
	Ai:load()
end

function love.update(dt)
	Player:update(dt)
	Ball:update(dt)
	Ai:update(dt)
end

function love.draw()
	Player:draw()
	Ball:draw()
	Ai:draw()
end

function CheckCollision(a, b)
	if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
		return true
	else
		return false
	end
end
