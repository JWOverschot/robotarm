require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

for i= 1,88 do
  robot_arm:grab()
  if robot_arm:scan() == "red" then
    for i=1,9 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=1,9 do
      robot_arm:move_left()
    end
  else
    robot_arm:drop()
    robot_arm:move_right()
  end
end