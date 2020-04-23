
ITEM.name = "UU Lager"
ITEM.model = Model("models/bioshockinfinite/hext_bottle_lager.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A glass bottle with 0.5% Beer inside.."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
