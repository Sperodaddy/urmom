


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false
SWEP.AdminSpawnable			= false
SWEP.Author					= "Spero and CoSperoAtors"
SWEP.Contact				= ""

SWEP.Instructions			= "yotE"

SWEP.Primary.Ammo			= "pistol"
SWEP.Primary.Automatic		= false
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Purpose				= "splatter those tatters"
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Automatic	= true
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Spawnable				= true
SWEP.ViewModelFlip			= false
SWEP.ViewModelFOV			= 55
SWEP.ViewModel				= "models/weapons/v_pistol.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"

SWEP.PrintName			= "RPSpero"
SWEP.Slot				= 0
SWEP.SlotPos			= 5
SWEP.IconLetter			= "G"
SWEP.DrawAmmo			= true
SWEP.DrawCrosshair		= true





function SWEP:Initialize()
	if SERVER then
		self:SetWeaponHoldType("pistol")
	end
end

if SERVER then
	function SWEP:PrimaryAttack()
        local speed = 10
        local entity = ents.Create("gamershit")
        entity:SetPos(self:GetOwner():GetShootPos()--[[:Add(self:GetOwner():EyeAngles():Forward()*100)]])
        Bullet:SetModel("models/props_c17/oildrum001.mdl")
        entity["owner"] = self:GetOwner()
        entity["velocity"] = self:GetOwner():EyeAngles():Forward() * speed
	end
end
