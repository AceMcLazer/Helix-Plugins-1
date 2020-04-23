
ITEM.name = "Box of Bran Flakes"
ITEM.model = Model("models/bioshockinfinite/hext_cereal_box_cornflakes.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Bran Flakes! The daily nutritional breakfast for the Citizen on the move! Now with 90% more fiber!"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
