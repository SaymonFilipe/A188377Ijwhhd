local names = {"avestruz quetetrapa", "ryan rukando char", "gelox ultimate", "gelox returns", "oliveira ed", "gelox", "paladino macabro", "cafyun", "downlink", "uplink"}
if not table.find(names, player:getName():lower()) then return end

uzu = {}
uzu.window = setupUI([[
MainWindow
  id:window
  size: 260 190
  text: setEquipper
  color:green
  Label
    id: 1
    text:helmet
    color:green
    font:verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    margin: -10 -10

  BotItem
    anchors.top:prev.bottom
    anchors.left: prev.left
    id:helmet

  Label
    text:armor
    color:green
    font:verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    margin: -10 30

  BotItem
    id:armor
    anchors.top:prev.bottom
    anchors.left: prev.left

  Label
    !text: tr("  legs")
    color:green
    font:verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    margin: -10 70
    text-horizontal-auto-resize: true

  BotItem
    id:legs
    anchors.top:prev.bottom
    anchors.left: prev.left

  Label
    text:boots
    color:green
    font:verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    margin: -10 110

  BotItem
    id:boots
    anchors.top:prev.bottom
    anchors.left: prev.left

  BotSeparator
    id: sep
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    margin: 50 -10

  BotItem
    id:helmet1
    anchors.left:helmet.left
    anchors.right:helmet.right
    anchors.top: prev.bottom
    margin: 5 0

  BotItem
    id:armor1
    anchors.left:armor.left
    anchors.right:armor.right
    anchors.top: sep.bottom
    margin: 5 0

  BotItem
    id:legs1
    anchors.left:legs.left
    anchors.right:legs.right
    anchors.top:sep.bottom
    margin: 5 0

  BotItem
    id:boots1
    anchors.left:boots.left
    anchors.right:boots.right
    anchors.top: sep.bottom
    margin: 5 0

  HorizontalScrollBar
    id:scroll
    anchors.top: prev.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    margin: 10 -10
    minimum: 0
    maximum: 100

  Button
    text:fechar
    id: close
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    margin: -10 0

  Label
    text:shield
    font: verdana-11px-rounded
    color:green
    anchors.left: boots.right
    anchors.top: parent.top
    margin: -10 7

  BotItem
    id:shield
    anchors.left: prev.left
    anchors.top: prev.bottom

  Label
    text:amulet
    font: verdana-11px-rounded
    color:green
    anchors.left: shield.right
    anchors.top: parent.top
    margin: -10 7

  BotItem
    id:amulet
    anchors.left: prev.left
    anchors.top: prev.bottom
    margin: 0 0

  BotItem
    id:shield1
    anchors.left:shield.left
    anchors.right:shield.right
    anchors.top: sep.bottom
    margin: 5 0

  BotItem
    id:amulet1
    anchors.left:amulet.left
    anchors.right:amulet.right
    anchors.top: sep.bottom
    margin: 5 0

]], g_ui.getRootWidget())
uzu.window:hide()
uzu.window.close.onClick = function(widget)
    uzu.window:hide()
end

if type(storage.uzuItems) ~= "table" then
    storage.uzuItems = {}
end

uzu.window.helmet.onItemChange = function(widget)
    storage.uzuItems.helmet = widget:getItemId()
end
uzu.window.helmet:setItemId(storage.uzuItems.helmet)

uzu.window.helmet1.onItemChange = function(widget)
    storage.uzuItems.helmet1 = widget:getItemId()
end
uzu.window.helmet1:setItemId(storage.uzuItems.helmet1)



uzu.window.armor.onItemChange = function(widget)
    storage.uzuItems.armor = widget:getItemId()
end
uzu.window.armor:setItemId(storage.uzuItems.armor)

uzu.window.armor1.onItemChange = function(widget)
    storage.uzuItems.armor1 = widget:getItemId()
end
uzu.window.armor1:setItemId(storage.uzuItems.armor1)



uzu.window.legs.onItemChange = function(widget)
    storage.uzuItems.legs = widget:getItemId()
end
uzu.window.legs:setItemId(storage.uzuItems.legs)

uzu.window.legs1.onItemChange = function(widget)
    storage.uzuItems.legs1 = widget:getItemId()
end
uzu.window.legs1:setItemId(storage.uzuItems.legs1)



uzu.window.boots.onItemChange = function(widget)
    storage.uzuItems.boots = widget:getItemId()
end
uzu.window.boots:setItemId(storage.uzuItems.boots)

uzu.window.boots1.onItemChange = function(widget)
    storage.uzuItems.boots1 = widget:getItemId()
end
uzu.window.boots1:setItemId(storage.uzuItems.boots1)

uzu.window.shield.onItemChange = function(widget)
    storage.uzuItems.shield = widget:getItemId()
end
uzu.window.shield:setItemId(storage.uzuItems.shield)

uzu.window.shield1.onItemChange = function(widget)
    storage.uzuItems.shield1 = widget:getItemId()
end
uzu.window.shield1:setItemId(storage.uzuItems.shield1)

uzu.window.amulet.onItemChange = function(widget)
    storage.uzuItems.amulet = widget:getItemId()
end
uzu.window.amulet:setItemId(storage.uzuItems.amulet)

uzu.window.amulet1.onItemChange = function(widget)
    storage.uzuItems.amulet1 = widget:getItemId()
end
uzu.window.amulet1:setItemId(storage.uzuItems.amulet1)


uzu.window.scroll.onValueChange = function(scroll, value)
    storage.uzuItems.scroll = value
    uzu.window.scroll:setText(value)
end
uzu.window.scroll:setValue(storage.uzuItems.scroll or 0)

setDefaultTab("Tools")
local ui = setupUI([[
Panel
  height: 38

  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 130
    !text: tr('Equipper')

  Button
    id: settings
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: Setup
]])

uzu.enabled = false
ui.title:setOn(uzu.enabled);
ui.title.onClick = function(widget)
    uzu.enabled = not uzu.enabled
    widget:setOn(not uzu.enabled);
end

ui.settings.onClick = function(widget)
    local u = uzu.window
    if u and not u:isVisible() then
        u:show()
        u:raise()
        u:focus()
    else
        u:hide()
    end
end

macro(100, function()

if ui.title:isOn() then

local value = storage.uzuItems.scroll or 0
local set = storage.uzuItems

local helmet, armor, leg, boots, shield, neck = set.helmet, set.armor, set.legs, set.boots, set.shield, set.amulet
local helmet1, armor1, leg1, boots1, shield1, neck1 = set.helmet1, set.armor1, set.legs1, set.boots1, set.shield1, set.amulet1


    if (hppercent() >= value) then

        if getNeck() == nil or getNeck():getId() ~= neck then
            moveToSlot(neck, SlotNeck)
        end

        if getHead() == nil or getHead():getId() ~= helmet then
            moveToSlot(helmet, SlotHead)
        end

        if getBody() == nil or getBody():getId() ~= armor then
            moveToSlot(armor, SlotBody)
        end

        if getLeg() == nil or getLeg():getId() ~= leg then
            moveToSlot(leg, SlotLeg)
        end

        if getFeet() == nil or getFeet():getId() ~= boots then
            moveToSlot(boots, SlotFeet)
        end

        if getRight() == nil or getRight():getId() ~= shield then
            moveToSlot(shield, SlotRight)
        end

    else

        if getNeck() == nil or getNeck():getId() ~= neck1 then
            moveToSlot(neck1, SlotNeck)
        end

        if getHead() == nil or getHead():getId() ~= helmet1 then
            moveToSlot(helmet1, SlotHead)
        end

        if getBody() == nil or getBody():getId() ~= armor1 then
            moveToSlot(armor1, SlotBody)
        end

        if getLeg() == nil or getLeg():getId() ~= leg1 then
            moveToSlot(leg1, SlotLeg)
        end

        if getFeet() == nil or getFeet():getId() ~= boots1 then
            moveToSlot(boots1, SlotFeet)
        end

        if getRight() == nil or getRight():getId() ~= shield1 then
            moveToSlot(shield1, SlotRight)
        end

    end
end
end)
