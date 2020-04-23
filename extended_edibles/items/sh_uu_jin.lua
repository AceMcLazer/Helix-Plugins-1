
ITEM.name = "UU Jin"
ITEM.model = Model("models/bioshockinfinite/jin_bottle.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A glass bottle with the UU logo on it. It reads: 2% Jin. Inside, is Jin."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
