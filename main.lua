function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')
    sti = require('libraries.sti')
    wf = require('libraries.windfield')
    world = wf.newWorld(0, 0)

       -- code for map
       gameMap = sti('maps/court.lua')


    -- defining player paddles
  
    -- p1 paddle 
    p1paddle = {}
    p1paddle.x = 0
    p1paddle.y = 200
    p1paddle.speed = 10
    p1paddle.collider = world:newRectangleCollider(0,200,32,128)
    p1paddle.collider:setFixedRotation(true)
    p1paddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')

    -- player 1 paddle animations
   -- p1paddle.anim = p1paddle.animations.down
    -- cpu paddle
    cpuPaddle = {}
    cpuPaddle.x = 767
    cpuPaddle.y = 250
    cpuPaddle.speed = 10
    cpuPaddle.sprite = love.graphics.newImage('sprites/fancy-paddle-green.png')

    -- ball
    ball = {}
    ball.x = 385
    ball.y = 300
    ball.speed = {x = 5, y = 5}
    ball.sprite = love.graphics.newImage('sprites/fancy-ball.png')
    ball.collider = world:newRectangleCollider(385, 300, 32, 32)
    ball.collider:setLinearVelocity(2,2)
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

-- collisions
-- p1paddle.x = p1paddle.collider:getX()
-- p1paddle.y = p1paddle.collider:getY()

end


function love.update(dt)

  local isMoving = false
  -- vx = 0
  -- vy = 0

-- Player 1 paddle animations
  if love.keyboard.isDown("w") then
    p1paddle.y = p1paddle.y  - p1paddle.speed
   -- p1paddle.collider:setLinearVelocity(0,- p1paddle.speed)
   --vy = p1paddle.speed - 1
   --isMoving = true
  elseif love.keyboard.isDown("s") then
     p1paddle.y = p1paddle.y + p1paddle.speed
   --vy = p1paddle.speed + 1
   --isMoving = true
  end

  -- cpu paddle animations
  -- temporary manual paddles to test collisions
    if love.keyboard.isDown("up") then
      cpuPaddle.y = cpuPaddle.y - cpuPaddle.speed
    elseif love.keyboard.isDown("down") then
      cpuPaddle.y = cpuPaddle.y + cpuPaddle.speed
    end

  -- ball animatiions
    
    -- collisions
    
    -- world:update(dt)
  --  p1paddle.y = p1paddle.collider:getY()
   -- p1paddle.collider:setLinearVelocity(0, 5)
    
 
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
  -- Draw collisions
     world:draw()
end