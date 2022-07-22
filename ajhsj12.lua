local names = {"adamastor", "tripi", "gelox ultimate", "gelox returns", "oliveira ed", "gelox", "paladino macabro", "cafyun", "downlink", "uplink"}
if not table.find(names, player:getName():lower()) then return end

uzu = {}
uzu.window = setupUI([[
MainWindow
  size: 330 210
  opacity: 0.85
  color:green
  @onEscape: self:hide()

  BotItem
    id:helmet
    anchors.top: parent.top
    anchors.right:parent.right
    margin-right: 40

  BotItem
    id:armor
    anchors.top: helmet.bottom
    anchors.right:parent.right
    margin-right: 40

  BotItem
    id:legs
    anchors.top: armor.bottom
    anchors.right:parent.right
    margin-right: 40

  BotItem
    id:boots
    anchors.top: legs.bottom
    anchors.right:parent.right
    margin-right: 40

  BotItem
    id:amulet
    anchors.top: parent.top
    anchors.right:helmet.left
    margin-top: 0

  BotItem
    id:weapon
    anchors.top: amulet.bottom
    anchors.right:amulet.right
    margin-right: 0

  BotItem
    id:ring
    anchors.top: weapon.bottom
    anchors.right:weapon.right
    margin-right: 0

  BotItem
    id:shield
    anchors.top: armor.top
    anchors.left: armor.right
    margin-top: 0

  BotItem
    id:Ammo
    anchors.top: shield.bottom
    anchors.right:shield.right
    margin-right: 0

  BotItem
    id:helmet1
    anchors.top: parent.top
    anchors.left:parent.left
    margin-left: 40

  BotItem
    id:armor1
    anchors.top: helmet1.bottom
    anchors.left:parent.left
    margin-left: 40

  BotItem
    id:legs1
    anchors.top: armor1.bottom
    anchors.left:parent.left
    margin-left: 40

  BotItem
    id:boots1
    anchors.top: legs1.bottom
    anchors.left:parent.left
    margin-left: 40

  BotItem
    id:amulet1
    anchors.top: parent.top
    anchors.right:helmet1.left
    margin-top: 0

  BotItem
    id:weapon1
    anchors.top: amulet1.bottom
    anchors.right:amulet1.right
    margin-right: 0

  BotItem
    id:ring1
    anchors.top: weapon1.bottom
    anchors.right:weapon1.right
    margin-right: 0

  BotItem
    id:shield1
    anchors.top: armor1.top
    anchors.left: armor1.right
    margin-top: 0

  BotItem
    id:Ammo1
    anchors.top: shield1.bottom
    anchors.right:shield1.right
    margin-right: 0

  HorizontalScrollBar
    id:scroll
    anchors.bottom: parent.bottom
    anchors.left:parent.left
    anchors.right:parent.right
    minimum: 0
    maximum: 100

  Button
    id: close
    text:close
    anchors.bottom: scroll.top
    anchors.horizontalCenter: parent.horizontalCenter

  Label
    color:green
    text: UzumarTayhero#2677
    anchors.bottom: close.top
    anchors.left: close.left
    font: verdana-11px-rounded
    margin: 0 -11
]], g_ui.getRootWidget())

uzu.window.close.onClick = function(widget)
  uzu.window:hide()
end

uzu.window:hide()

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

uzu.window.shield.onItemChange = function(widget)
    storage.uzuItems.shield = widget:getItemId()
end
uzu.window.shield:setItemId(storage.uzuItems.shield)

uzu.window.Ammo.onItemChange = function(widget)
    storage.uzuItems.Ammo = widget:getItemId()
end
uzu.window.Ammo:setItemId(storage.uzuItems.Ammo)

uzu.window.Ammo1.onItemChange = function(widget)
    storage.uzuItems.Ammo1 = widget:getItemId()
end
uzu.window.Ammo1:setItemId(storage.uzuItems.Ammo1)

uzu.window.ring.onItemChange = function(widget)
    storage.uzuItems.ring = widget:getItemId()
end
uzu.window.ring:setItemId(storage.uzuItems.ring)

uzu.window.ring1.onItemChange = function(widget)
    storage.uzuItems.ring1 = widget:getItemId()
end
uzu.window.ring1:setItemId(storage.uzuItems.ring1)

uzu.window.weapon.onItemChange = function(widget)
    storage.uzuItems.weapon = widget:getItemId()
end
uzu.window.weapon:setItemId(storage.uzuItems.weapon)

uzu.window.weapon1.onItemChange = function(widget)
    storage.uzuItems.weapon1 = widget:getItemId()
end
uzu.window.weapon1:setItemId(storage.uzuItems.weapon1)

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
    uzu.window.scroll:setText(value.. "%")
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

ui.title:onClick()
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

local helmet, armor, leg, boots, shield, neck, weapon, ring, Ammo = set.helmet, set.armor, set.legs, set.boots, set.shield, set.amulet, set.weapon, set.ring, set.Ammo

local helmet1, armor1, leg1, boots1, shield1, neck1, weapon1, ring1,Ammo1 = set.helmet1, set.armor1, set.legs1, set.boots1, set.shield1, set.amulet1, set.weapon1, set.ring1, set.Ammo1


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

        if getLeft() == nil or getLeft():getId() ~= weapon then
            moveToSlot(weapon, SlotLeft)
        end

        if getFinger() == nil or getFinger():getId() ~= ring then
            moveToSlot(ring, SlotFinger)
        end

        if getAmmo() == nil or getAmmo():getId() ~= Ammo then
            moveToSlot(Ammo, SlotAmmo)
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

        if getLeft() == nil or getLeft():getId() ~= weapon1 then
            moveToSlot(weapon1, SlotLeft)
        end

        if getFinger() == nil or getFinger():getId() ~= ring1 then
            moveToSlot(ring1, SlotFinger)
        end

        if getAmmo() == nil or getAmmo():getId() ~= Ammo1 then
            moveToSlot(Ammo1, SlotAmmo)
        end
    end
end
end)

uzu.window:setText("Def                   Set Manager                   Atk")
