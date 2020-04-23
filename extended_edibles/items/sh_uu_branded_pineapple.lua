
ITEM.name = "UU Branded Pineapple"
ITEM.model = Model("models/bioshockinfinite/hext_pineapple.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A rather raw bland Pineapple with a UU Sticker on it."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
