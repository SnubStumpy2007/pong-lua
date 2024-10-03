function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')

    background = love.graphics.newImage('maps/fancy-court.png')

    -- defining player paddles
    p1Paddle = love.graphics.newImage('sprites/fancy-paddle-blue.png')
    cpuPaddle = love.graphics.newImage('sprites/fancy-paddle-green.png')

    -- starting player scores
    p1Score = 0
    cpuScore = 0

-- animations



end


function love.update(dt)

  -- keyboard movement

  -- computer movement


  -- collision physics

end

function love.draw()

  -- background
  love.graphics.draw(background, 0,0)
  love.graphics.draw(p1Paddle, 0,250)
  love.graphics.draw(cpuPaddle, 766, 250)
  -- camera
end