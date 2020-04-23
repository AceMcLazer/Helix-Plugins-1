
ITEM.name = "Pound of Cheese"
ITEM.model = Model("models/bioshockinfinite/pound_cheese.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A big circular sphere of Cheddar Cheese, aged just the right amount."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
