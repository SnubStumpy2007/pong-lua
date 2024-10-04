function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')
    sti = require('libraries.sti')
    wf = require('libraries.windfield')

       -- code for map
       gameMap = sti('maps/court.lua')


    -- defining player paddles
  
    -- p1 paddle 
    p1paddle = {}
    p1paddle.x = 0
    p1paddle.y = 250
    p1paddle.speed = 10
    p1paddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')

    -- cpu paddle
    cpuPaddle = {}
    cpuPaddle.x = 767
    cpuPaddle.y = 250
    cpuPaddle.speed = 5
    cpuPaddle.sprite = love.graphics.newImage('sprites/fancy-paddle-green.png')

    -- ball
    ball = {}
    ball.x = 385
    ball.y = 300
    ball.speed = 10
    ball.sprite = love.graphics.newImage('sprites/fancy-ball.png')
    -- x = 385, y = 300
 

    -- starting player scores

   -- player 1 score
    -- p1Score = {}
    -- p1score.x = 300
    -- p1score.y = 0
    -- p1Score.spriteSheet = love.graphics.newImage('sprites/Numberssheet.png')
    -- p1Score.grid = anim8.newGrid(12, 18, p1Score.spriteSheet:getWidth(), p1Score.spriteSheet:getHeight())

  -- player 1 score animations
    -- p1Score.animations = {}
    -- p1Score.animations.right = anim8.newAnimation(p1Score.grid('1-4', 1), 0.2)


    -- cpu score
    -- cpuScore = {}
    -- cpuScore.x = 600
    -- cpuScore.y = 0
    -- cpuScore.spriteSheet = love.graphics.newImage('sprites/Numberssheet.png')

-- animations
  --p1animations = {}
 -- p1animations.down = anim8.newAnimation(p1paddle.grid('1-4', 1), 0.2)
 -- p1paddle.anim = p1paddle.animations.down

 -- ball animations and movement
-- ball.sprite = love.math.random(2) == 1 and 100 or -100

end


function love.update(dt)

  local isMoving = true

-- Player 1 paddle animations
  if love.keyboard.isDown("w") then
    p1paddle.y = p1paddle.y - p1paddle.speed
  elseif love.keyboard.isDown("s") then
    p1paddle.y = p1paddle.y + p1paddle.speed
  end

  -- cpu paddle animations

  -- ball animatiions
  

end

function love.draw()

  -- background
    gameMap:draw()
    -- drawing player 1 paddle
    love.graphics.draw(p1paddle.sprite, p1paddle.x, p1paddle.y)

  -- drawing cpu paddle
    love.graphics.draw(cpuPaddle.sprite, cpuPaddle.x, cpuPaddle.y)
  -- drawing ball
    love.graphics.draw(ball.sprite, ball.x, ball.y)
  -- camera
end