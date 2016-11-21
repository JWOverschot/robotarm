require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.99

a = {}
for i= 1, 9 do
  robot_arm:move_right()
  robot_arm:grab()
  robot_arm:scan()
  table.insert(a, robot_arm:scan())
  robot_arm:drop()
end

--[[if table.sort(a) > 3 then
  robot_arm:grab()
  for q = 1, 9 do
    robot_arm:move_left()
  end
  robot_arm:drop()
end]]--
    print(table.unpack(a))