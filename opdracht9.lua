require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99

for i=9, 1, -2 do
  robot_arm:grab()
  for i= 1, i do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i= 2, i do
    robot_arm:move_left()
  end
end