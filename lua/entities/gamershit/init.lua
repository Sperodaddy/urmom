AddCSLuaFile()
ENT.PrintName = "Spero Shit Tosser"
ENT.RenderGroup = RENDERGROUP_BOTH

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

if SERVER then
    function ENT:Initialize()
        self:Think()
    end
    function ENT:Explode()
        local Damage = 1000
        local BlastRadius = 250
        util.BlastDamage(self, self["owner"], self:GetPos(), BlastRadius, Damage )
    end
    function ENT:Think() --https://wiki.garrysmod.com/page/util/TraceLine
        local velocity = self["velocity"]
        local BulletTrace = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + velocity
        })

        self:SetPos(BulletTrace.Hitpos)
        self:SetAngle(velocity:Angle())

        if IsValid(BulletTrace.Entity) or BulletTrace.HitWorld then
                self:Explode()
        end
    end
end
-- VALUES IN THE ENTITY
-- owner
-- velocity
