function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')
    sti = require('libraries.sti')

    background = love.graphics.newImage('maps/fancy-court.png')

    -- defining player paddles
  
    -- p1 paddle 
    p1paddle = {}
    p1paddle.x = 0
    p1paddle.y = 250
    p1paddle.speed = 300
    p1paddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')



    ball = love.graphics.newImage('sprites/fancy-ball.png')

    -- code for map
    gameMap = sti('maps/court.lua')

    -- starting player scores
    p1Score = { }
    cpuScore = {}

-- animations
  --p1animations = {}
 -- p1animations.down = anim8.newAnimation(p1paddle.grid('1-4', 1), 0.2)
 -- p1paddle.anim = p1paddle.animations.down

end


function love.update(dt)

  -- keyboard movement

  -- computer movement


  -- collision physics

end

function love.draw()

  -- background
    gameMap:draw()
    love.graphics.draw(p1paddle.sprite, p1paddle.x, p1paddle.y)
  -- love.graphics.draw(cpuPaddle, 766, 250)
  love.graphics.draw(ball, 385, 300)
  -- camera
end