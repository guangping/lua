--
-- Created by IntelliJ IDEA.
-- User: 51offer
-- Date: 2016/3/14
-- Time: 16:55
-- To change this template use File | Settings | File Templates.
--

--print "测试"
--io.write("Hello world, from ",_VERSION,"!");
--[[
local i,j = 10,14;
print("i:",i,"j:",j);
print("i + j:",i+j);
]]
---- Swapping of variables
--[[
j,i=i,j;
print("i:",i,"j:",j);
f=30.25/15.0;
print("f:",f);

function add(i,j)
   return i+j;
end

d=add(10,20);
print("value is :",d);

print(type(add));
print(type(true));
print(type("false"));
print(type(3.0/1.2));
print(type(nil));
print(type(type(ABC)));
]]

---0和"" 被认为true
--[[
if 0 then
   print("true");
end

if "" then
   print("true");
end
]]
--[[
if 10==20 then
   print("true");
else
   print ("false");
end

if 10~=20 then
   print("true");
else
   print ("false");
end
]]
--[[
if "dd"=="dd" then
   print("true");
else
   print ("false");
end
]]
--[[
print("value:",1 and 1);

print("value:","hellow".." ddd");

print("value:",#"北京");
print("value:",#"333");
]]
--[[ 循环

local a=20;
while(a>0)
do
   print (a);
   a=a-1;
end
--for
for a=5,1,-1
do
  print(a);
end;

a=-2;
repeat
   print("a is vlaue:",a);
   a=a+1;
until(a>15);
]]





