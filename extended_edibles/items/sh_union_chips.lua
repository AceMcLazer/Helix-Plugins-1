
ITEM.name = "Union Chips"
ITEM.model = Model("models/bioshockinfinite/bag_of_hhips.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A bag of lightly salted chips with the UU logo inscribed on each chip."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
