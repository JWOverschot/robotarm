require 'robot_arm'
robot_arm:load_level('exercise 3')
robot_arm.speed = 0.99
i= 8
for b= 1, 4 do
  robot_arm:grab()
  for i= 1, i do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for a= 1, 8 do
    robot_arm:move_left()
  end
  i= i - 2
end