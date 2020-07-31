---List of required Lua files or not  
Object = require "class"
require "pixel_brick_class2"
bool = true
time = 0

screen = Matrix_display:new(15, 5)

screen:ping()
screen:get()
screenwidth = love.graphics.getWidth( )
screeneight = love.graphics.getHeight( )

function love.load()
  T = love.graphics.newImage( "active.png" )
  F = love.graphics.newImage( "inactive.png" )
end

function love.update(dt)
  time = time + dt
  if (math.fmod(math.floor (time), 2) == 0) then
    bool = false
  else
    bool = true
  end
  ---print(math.fmod(math.floor (time), 2))
end

function love.draw()
  love.graphics.setBackgroundColor( 137/255, 151/255, 116/255 )
  if (bool) then
  love.graphics.draw(F, 10, 10, 0 )
  love.graphics.draw(T, 42, 42, 0 )
  love.graphics.draw(F, 10, 42, 0 )
  love.graphics.draw(T, 42, 10, 0 )
  else
  love.graphics.draw(T, 10, 10, 0 )
  love.graphics.draw(F, 42, 42, 0 )
  love.graphics.draw(T, 10, 42, 0 )
  love.graphics.draw(F, 42, 10, 0 )
end
  ---love.graphics.print(time, 30, 30)
end
