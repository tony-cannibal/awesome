---------------------------
-- Default awesome theme --
---------------------------

local gears = require("gears")
local wibox = require("wibox")
local awful = require("awful")
local lain = require("lain")


local theme_assets = require("beautiful.theme_assets")
local xresources   = require("beautiful.xresources")
local dpi          = xresources.apply_dpi


local awesome_dir = os.getenv("HOME") .. "/.config/awesome/"

local theme_path = awesome_dir .. "themes/default/"



local gfs           = require("gears.filesystem")
local themes_path   = gfs.get_themes_dir()

local theme         = {}
theme.scripts       = theme_path .. "scripts/"
theme.autostart     = theme_path .. "autostart.sh"

theme.terminal      = "alacritty --config-file " .. theme_path .. "alacritty/alacritty.toml"

theme.font          = "terminus 11"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(6)
theme.border_width  = dpi(2)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"


theme.master_width_factor                       = 0.55

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size                       = dpi(4)
theme.taglist_squares_sel                       = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel                     = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon                         = themes_path .. "default/submenu.png"
theme.menu_height                               = dpi(15)
theme.menu_width                                = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"

theme.wallpaper                                 = themes_path .. "default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh                              = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv                              = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating                           = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier                          = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max                                = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen                         = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom                         = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft                           = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile                               = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop                            = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral                             = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle                            = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw                           = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne                           = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw                           = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse                           = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon                              = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme                                = nil

-- theme.tagnames                                  = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 " }
theme.tagnames                                  = { "一", "二", "三", "四", "五", "六", "七", "八", "九" }



local markup                   = lain.util.markup
-- local gray                     = "#7c7a75"
local sep                      = wibox.widget.textbox("  ")
local w_end                    = wibox.widget.textbox(" ")

-- {{{ Volume Widget
theme.volume, theme.vol_signal = awful.widget.watch("pamixer --get-volume-human", 60,
    function(widget, stdout)
        widget:set_markup(markup.font(theme.font, "Vol:" .. stdout))
    end)

theme.volume:buttons(gears.table.join(
    awful.button({}, 1, function()
        awful.spawn.with_line_callback(
            "pamixer -t", { exit = function() theme.vol_signal:emit_signal("timeout") end }
        )
    end),
    awful.button({}, 4, function()
        awful.spawn.with_line_callback(
            "pamixer -i 5", { exit = function() theme.vol_signal:emit_signal("timeout") end }
        )
    end),
    awful.button({}, 5, function()
        awful.spawn.with_line_callback(
            "pamixer -d 5", { exit = function() theme.vol_signal:emit_signal("timeout") end }
        )
    end)
))
-- }}}
--

-- local mytextclock = wibox.widget.textclock("%I:%M %p")
-- mytextclock.font = theme.font

local mytextclock = wibox.widget {
    format = "%I:%M %p",
    font = theme.font,
    widget = wibox.widget.textclock,
}

theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Terminus 11",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})


-- {{{ Mem Widget
theme.fs, theme.fs_signal = awful.widget.watch(theme.scripts .. "get-space.sh", 2,
    function(widget, stdout)
        widget:set_markup(markup.font(theme.font, stdout))
    end)
-- }}}


-- {{{ Mem Widget
theme.memory, theme.mem_signal = awful.widget.watch(theme.scripts .. "get-mem.sh", 2,
    function(widget, stdout)
        widget:set_markup(markup.font(theme.font, "Ram:" .. stdout))
    end)

theme.memory:buttons(gears.table.join(
    awful.button({}, 1, function()
        awful.spawn(theme.terminal .. " -e btop")
    end))
)

-- }}}

local cpu = lain.widget.cpu {
    settings = function()
        widget:set_markup(markup.font(theme.font, "Cpu:" .. cpu_now.usage .. "%"))
    end
}

local mynet = lain.widget.net {
    eth_state = "on",
    settings = function()
        local state = net_now.state
        if state == "up" then
            widget:set_markup(markup.font(theme.font, "Net:Up"))
        end
        if state == "down" then
            widget:set_markup(markup.font(theme.font, "Net:Down"))
        end
        if state == nil then
            widget:set_markup(markup.font(theme.font, "Net:Loading"))
        end
    end
}

local function update_txt_layoutbox(s)
    -- Writes a string representation of the current layout in a textbox widget
    local txt_l = theme["layout_txt_" .. awful.layout.getname(awful.layout.get(s))] or ""
    s.mytxtlayoutbox:set_text(txt_l)
end



function theme.at_screen_connect(s)
    -- Wallpaper
    if theme.wallpaper then
        local wallpaper = theme.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end

    -- Each screen has its own tag table.
    awful.tag(theme.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    -- s.mylayoutbox = awful.widget.layoutbox(s)
    -- s.mylayoutbox:buttons(gears.table.join(
    --                        awful.button({ }, 1, function () awful.layout.inc( 1) end),
    --                        awful.button({ }, 3, function () awful.layout.inc(-1) end),
    --                        awful.button({ }, 4, function () awful.layout.inc( 1) end),
    --                        awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- -- Text Layout Box Widget
    -- s.mytxtlayoutbox = wibox.widget.textbox(theme["layout_txt_" .. awful.layout.getname(awful.layout.get(s))])
    -- awful.tag.attached_connect_signal(s, "property::selected", function () update_txt_layoutbox(s) end)
    -- awful.tag.attached_connect_signal(s, "property::layout", function () update_txt_layoutbox(s) end)
    -- s.mytxtlayoutbox:buttons(gears.table.join(
    --                        awful.button({}, 1, function() awful.layout.inc(1) end),
    --                        awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
    --                        awful.button({}, 3, function() awful.layout.inc(-1) end),
    --                        awful.button({}, 4, function() awful.layout.inc(1) end),
    --                        awful.button({}, 5, function() awful.layout.inc(-1) end)))

    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({}, 1, function() awful.layout.inc(1) end),
        awful.button({}, 3, function() awful.layout.inc(-1) end),
        awful.button({}, 4, function() awful.layout.inc(1) end),
        awful.button({}, 5, function() awful.layout.inc(-1) end)))
    -- Create a taglist widget

    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)
    -- Create a tasklist widget

    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 21 })
    --
    --     -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        -- Seting this will center the middle widget
        -- expand = "none",
        { -- Left widgets
            w_end,
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            w_end,
            theme.fs,
            w_end,
        },
        s.mytasklist, -- Middle widget
        -- theme.mpd.widget,
        {             -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            w_end,
            -- theme.fs,
            -- sep,
            mynet.widget,
            sep,
            cpu.widget,
            sep,
            theme.memory,
            sep,
            theme.volume,
            -- wibox.widget.textclock(),
            sep,
            mytextclock,
            w_end,
            wibox.widget.systray(),
            w_end,
            s.mylayoutbox,
        },
    }
end

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
