require 'robot_arm'
robot_arm:load_level('exercise 2')
robot_arm.speed = 0.99

robot_arm:grab()

for i=0,9 do
  robot_arm:move_right()
end

robot_arm:drop()

for i=0,4 do
  robot_arm:move_left()
end

robot_arm:grab()

for i=0,4 do
  robot_arm:move_right()
end

robot_arm:drop()

for i=0,1 do
  robot_arm:move_left()
end

robot_arm:grab()

for i=0,1 do
  robot_arm:move_right()
end

robot_arm:drop()