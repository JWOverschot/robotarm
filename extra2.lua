require 'robot_arm'
robot_arm:load_level('exercise 6')
robot_arm.speed = 0.99

for a= 1, 4 do
  robot_arm:move_right()
end
robot_arm:grab()
for b= 1, 1 do
  robot_arm:move_left()
end
robot_arm:drop()

for a= 1, 2 do
  robot_arm:move_right()
end
robot_arm:grab()
for b= 1, 4 do
  robot_arm:move_left()
end
robot_arm:drop()

for a= 1, 6 do
  robot_arm:move_right()
end
robot_arm:grab()
for b= 1, 5 do
  robot_arm:move_left()
end
robot_arm:drop()

for a= 1, 4 do
  robot_arm:move_right()
end
robot_arm:grab()
for b= 1, 6 do
  robot_arm:move_left()
end
robot_arm:drop()