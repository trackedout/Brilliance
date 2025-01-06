# Turn buttons off
fill -522 115 1940 -517 115 1940 minecraft:bamboo_button[powered=false,facing=south]
# Turn lamps off
fill -522 116 1939 -517 116 1939 minecraft:redstone_lamp[lit=false]
# Remove lever & sign for zone controls
fill -525 115 1944 -525 116 1944 air replace
# Remove signs and levers from zone displays
fill -529 118 1946 -529 116 1942 air replace
# Remove storages
fill -530 115 1946 -530 114 1942 air replace
# Reset marker's visibility
function do2:entity_controller/config_interface/marker_visibility/turn_invisible/all
