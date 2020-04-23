
ITEM.name = "Choco-Union"
ITEM.model = Model("models/bioshockinfinite/hext_candy_chocolate.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A Gooey Caramel Chocolate bar, with ten percent more chocolate!"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
