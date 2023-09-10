local currentHair = {
    id = -1,
    color_1 = 0,
    color_2 = 0,
}

RegisterCommand("hathair", function()
    local ped = PlayerPedId()
    if currentHair.id == -1 then
        currentHair.id = GetPedDrawableVariation(ped, 2)
        currentHair.color_1 = GetPedTextureVariation(ped, 2)
        currentHair.color_2 = GetPedPaletteVariation(ped, 2)
        SetPedComponentVariation(ped, 2, 0, 0, 0)
    else
        SetPedComponentVariation(ped, 2, currentHair.id, currentHair.color_1, currentHair.color_2)
        currentHair.id = -1
    end
end, false)
