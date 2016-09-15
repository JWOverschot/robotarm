require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed = 0.99

i= 9
while i > 0 do
  for i=i, 1, -1 do
    robot_arm:grab()
    for i= 1, i do
      robot_arm:move_right()
    end
    robot_arm:drop()
    
    for i= 1, i do
      robot_arm:move_left()
    end
  end
  if robot_arm:grab() == null then
    i = 0
  end
end