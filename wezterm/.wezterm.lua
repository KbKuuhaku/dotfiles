-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 25
config.color_scheme = 'rose-pine'

config.font = wezterm.font {
    family = 'JetBrains Mono',
    -- https://github.com/JetBrains/JetBrainsMono?tab=readme-ov-file#opentype-features
    harfbuzz_features = {
        'ss02',
        'zero',
        "cv16",
        "cv18",
        "cv19",
        "cv20",
    },
}

-- Finally, return the configuration to wezterm:
return config
