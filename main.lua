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
    ball.collider:applyLinearImpulse(500, 100)
    ball.collider:setCollisionClass("ball")

    walls  = {}
    if gameMap.layers["Walls"] then
        for i, obj in pairs(gameMap.layers["Walls"].objects) do
            local wall = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
            wall:setType('static')
            wall:setCollisionClass("Solid")
            wall:applyAngularImpulse(5000)
            table.insert(walls, wall)
        end
    end
 

    -- player scores

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

  -- ball animatiions
    
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

  -- debug this
  if ball.collider:enter("Solid") then
   -- ball.collider:applyLinearImpulse(500,0)
    ball.collider:applyAngularImpulse(50000)
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