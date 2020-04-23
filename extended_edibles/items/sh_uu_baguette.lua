
ITEM.name = "UU Baguette"
ITEM.model = Model("models/bioshockinfinite/dread_loaf.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A long piece of baguette, it appears to be slightly stale and crunchy."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
