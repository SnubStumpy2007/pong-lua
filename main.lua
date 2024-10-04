function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')

    background = love.graphics.newImage('maps/fancy-court.png')

    -- defining player paddles
    -- p1Paddle = love.graphics.newImage('sprites/fancy-paddle-blue.png')
    -- cpuPaddle = love.graphics.newImage('sprites/fancy-paddle-green.png')
    p1paddle = {}
    p1paddle.x = 400
    p1paddle.y = 200
    p1paddle.speed = 300
    p1paddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')
    p1paddle.grid = anim8.newGrid(32, 128, p1paddle.sprite:getWidth(), p1paddle.sprite:getHeight())


    ball = love.graphics.newImage('sprites/fancy-ball.png')

    -- starting player scores
    p1Score = { }
    cpuScore = {}

-- animations
  p1animations = {}
  p1animations.down = anim8.newAnimation(p1paddle.grid('1-4', 1), 0.2)


end


function love.update(dt)

  -- keyboard movement

  -- computer movement


  -- collision physics

end

function love.draw()

  -- background
  -- love.graphics.draw(background, 0,0)
  -- love.graphics.draw(p1Paddle, 0,250)
  -- love.graphics.draw(cpuPaddle, 766, 250)
  love.graphics.draw(ball, 385, 300)
  -- camera
end