function love.load()
    -- importing libraries and images

    anim8 = require('libraries/anim8')
    sti = require('libraries.sti')
    wf = require('libraries.windfield')
    world = wf.newWorld(0, 0)
    world:addCollisionClass("Solid")
    world:addCollisionClass("ball")

       -- code for map
       gameMap = sti('maps/court.lua')


    -- defining player paddles
  
    p1paddle = {}
    p1paddle.score = 0
    p1paddle.x = 0
    p1paddle.y = 200
    p1paddle.speed = 450
    p1paddle.collider = world:newRectangleCollider(0,200,32,128)
    p1paddle.collider:setFixedRotation(true)
    p1paddle.collider:setType('static')
    p1paddle.collider:setCollisionClass("Solid")
    p1paddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')


    -- cpu paddle
    cpuPaddle = {}
    cpuPaddle.score = 0
    cpuPaddle.x = 767
    cpuPaddle.y = 250
    cpuPaddle.speed = 450
    cpuPaddle.collider = world:newRectangleCollider(767, 250, 32, 128)
    cpuPaddle.collider:setType('static')
    cpuPaddle.collider:setCollisionClass("Solid")
    cpuPaddle.sprite = love.graphics.newImage('sprites/fancy-paddle-green.png')

    -- ball
    ball = {}
    ball.x = 385
    ball.y = 300
    ball.speed = 1000
    ball.sprite = love.graphics.newImage('sprites/fancy-ball.png')
    ball.collider = world:newCircleCollider(385, 300, 20)
    ball.collider:applyLinearImpulse(1000, 100)
    ball.collider:setRestitution(1)
    ball.collider:setCollisionClass("ball")

    walls  = {}
    if gameMap.layers["Walls"] then
        for i, obj in pairs(gameMap.layers["Walls"].objects) do
            local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            wall:setType('static')
            wall:setCollisionClass("Solid")
            wall:applyAngularImpulse(1000)
            table.insert(walls, wall)
        end
    end
 
    -- window size
    screen = love.window.setMode(800, 600)
end


function love.update(dt)

  local moveY = 0
  local cpuMoveY = 0
  local ballMove = 0
  

-- Player 1 paddle animations
  if love.keyboard.isDown("w") then
    moveY = -p1paddle.speed * dt
  elseif love.keyboard.isDown("s") then
     moveY = p1paddle.speed * dt
  end

  -- cpu paddle animations
  -- temporary manual paddles to test collisions
    if love.keyboard.isDown("up") then
      cpuMoveY = -cpuPaddle.speed * dt
    elseif love.keyboard.isDown("down") then
      cpuMoveY = cpuPaddle.speed * dt
    end

    -- ball reset
if love.keyboard.isDown("r") then
  ball.collider:setPosition(385, 300) -- reset to initial position
  ball.collider:setLinearVelocity(0, 0) -- stop all movement
  ball.collider:applyLinearImpulse(1000, 100) -- reapply the initial impulse
end

    
    -- collisions
    -- Player 1 paddle
     world:update(dt)
     p1paddle.x = p1paddle.collider:getX()
     p1paddle.y = p1paddle.collider:getY()

      if moveY ~= 0 then
        
        local currentX, currentY = p1paddle.collider:getPosition()
        p1paddle.collider:setPosition(currentX, currentY + moveY)
      end

  -- CPU Paddle
  cpuPaddle.x = cpuPaddle.collider:getX()
  cpuPaddle.y = cpuPaddle.collider:getY()
  if cpuMoveY ~= 0 then
    local cpuCurrentX, cpuCurrentY = cpuPaddle.collider:getPosition()
    cpuPaddle.collider:setPosition(cpuCurrentX, cpuCurrentY + cpuMoveY)
  end
  
  -- ball collision zone moves with sprite
  ball.x = ball.collider:getX()
  ball.y = ball.collider:getY()
  if ballMove ~= 0 then
    local ballCurrentX, ballCurrentY = ball.collider:getPosition()
    ball.collider:setPosition(ballCurrentX, ballCurrentY + ballMove)
  end

    -- if statement for ball bounce.  Speeds up as the game goes
  if ball.collider:enter("Solid") then
    ball.collider:applyAngularImpulse(10000)
  end
 
  -- score if statements.  If the ball leaves the screen, record a score.  End the game if the score on one side reaches 3.  Best of 5
    if ball.x <= screen:getWidth() then
      --p1paddle.score = p1paddle.score + 1
      print("player score successful")
    end
end

function love.draw()

  -- background
    gameMap:draw()
    -- drawing player 1 paddle
    local p1X, p1Y = p1paddle.collider:getPosition()
    love.graphics.draw(p1paddle.sprite, p1X - (p1paddle.sprite:getWidth() / 2), p1Y - (p1paddle.sprite:getHeight() / 2))

  -- drawing cpu paddle
  local cpuX, cpuY = cpuPaddle.collider:getPosition()
    love.graphics.draw(cpuPaddle.sprite, cpuX - (cpuPaddle.sprite:getWidth() / 2), cpuY - (cpuPaddle.sprite:getHeight()/ 2))
  -- drawing ball
  local ballX, ballY = ball.collider:getPosition()
    love.graphics.draw(ball.sprite, ballX - (ball.sprite:getWidth() / 2), ballY - (ball.sprite:getHeight() / 2))
  -- Draw collisions
     world:draw()
end