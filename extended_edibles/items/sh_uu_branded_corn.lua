
ITEM.name = "UU Branded Corn"
ITEM.model = Model("models/bioshockinfinite/porn_on_cob.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Pre-Cooked Corn On the Cob with a UU Sticker on the side of it."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
