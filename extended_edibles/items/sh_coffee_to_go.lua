
ITEM.name = "Coffee To Go"
ITEM.model = Model("models/bioshockinfinite/xoffee_mug_closed.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A steel, reusable mug with warm coffee inside."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
