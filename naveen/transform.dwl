%dw 2.0
output application/json
---
{
message:payload.message,
values: payload.values map
{
dt:$ mapObject ((value, key, index) ->
if(value ~= 'Arun')
{
'secondname': value
}else if(value ~= 'Anwesh')
{
'thirdname': value
}else
(key): value)
}.dt} 
//changing the key name by using if condition if yhe value matches the name then the key changes accorditing to our required name, or elsw print as original key value pairs