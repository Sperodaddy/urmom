


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

SWEP.PrintName			= "Poop Tosser"
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
	function Explode(owner,position)
			local Damage = 1000
			local BlastRadius = 250
			util.BlastDamage(owner, owner, position, BlastRadius, Damage )
			print("Boobies")
	end
	function SWEP:PrimaryAttack()

						Explode(self:GetOwner(),self:GetOwner():GetEyeTrace().HitPos)
	end
end
