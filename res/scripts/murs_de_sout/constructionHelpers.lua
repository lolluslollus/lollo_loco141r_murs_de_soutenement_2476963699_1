local helpers = {
    getDummyGroundFaces = function()
        --[[
            LOLLO NOTE
            constructions that do not contain
            ground faces, terrain alignments, edges or depot/station/industry/town building definitions
            are not treated like constructions in the game,
            ie they cannot be selected.
            That's why we make a dummy ground face, which is practically invisible and harmless.
        ]]
        return {
            {
                face = {
                    {0.1, -0.1, 0.0, 1.0},
                    {0.1, 0.1, 0.0, 1.0},
                    {-0.1, 0.1, 0.0, 1.0},
                    {-0.1, -0.1, 0.0, 1.0},
                },
                modes = {
                    {
                        type = 'FILL',
                        key = 'shared/asphalt_01.gtex.lua' --'shared/gravel_03.gtex.lua'
                    }
                }
            },
        }
    end,
    getDummyTerrainAlignmentLists = function()
        -- LOLLO NOTE this thing with the empty faces is required , otherwise the game will make its own alignments, with spikes and all on bridges or tunnels.
        return { {
            type = 'EQUAL',
            optional = true,
            faces =  { }
        } }
    end,
    idTransf = function()
        return { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 }
    end,
}

return helpers
