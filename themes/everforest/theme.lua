---------------------------
-- Default awesome theme --

local gears = require("gears")
local wibox = require("wibox")
local awful = require("awful")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local lain = require("lain")


local theme_path  = os.getenv("HOME") .. "/.config/awesome/themes/everforest/"

local theme       = {}

theme.autostart   = theme_path .. "autostart.sh"
theme.scripts     = theme_path .. "scripts/"
theme.terminal    = "alacritty --config-file " .. theme_path .. "alacritty/alacritty.toml"

theme.font        = "terminus 10"

theme.bg_normal   = "#272e33"
theme.bg_focus    = "#a7c080"
theme.bg_urgent   = "#e67e80"
theme.bg_minimize = "#272e33"
theme.bg_systray  = theme.bg_normal
theme.bg_widget   = "#414b50"

theme.fg_normal   = "#d3c6aa"
theme.fg_focus    = "#414b50"
theme.fg_urgent   = "#ffffff"
theme.fg_minimize = "#ffffff"
theme.fg_accent   = "#a7c080"


theme.useless_gap                               = dpi(8)
theme.border_width                              = dpi(2)
theme.border_normal                             = "#272e33"
theme.border_focus                              = "#a7c080"
theme.border_marked                             = "#91231c"

-- Increase Default Width of Master Window
theme.master_width_factor                       = 0.55

-- Increase Space Between Tags
theme.taglist_spacing                           = 0

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
    taglist_square_size, theme.fg_focus
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
theme.menu_submenu_icon                         = theme_path .. "submenu.png"
theme.menu_height                               = dpi(15)
theme.menu_width                                = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal              = theme_path .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme_path .. "titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = theme_path .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme_path .. "titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = theme_path .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme_path .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme_path .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme_path .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = theme_path .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme_path .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme_path .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme_path .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = theme_path .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme_path .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme_path .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme_path .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme_path .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme_path .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme_path .. "titlebar/maximized_focus_active.png"

theme.wallpaper                                 = theme_path .. "japanese_pedestrian_street.png"

-- You can use your own layout icons like this:
theme.layout_fairh                              = theme_path .. "layouts/fairhw.png"
theme.layout_fairv                              = theme_path .. "layouts/fairvw.png"
theme.layout_floating                           = theme_path .. "layouts/floatingw.png"
theme.layout_magnifier                          = theme_path .. "layouts/magnifierw.png"
theme.layout_max                                = theme_path .. "layouts/maxw.png"
theme.layout_fullscreen                         = theme_path .. "layouts/fullscreenw.png"
theme.layout_tilebottom                         = theme_path .. "layouts/tilebottomw.png"
theme.layout_tileleft                           = theme_path .. "layouts/tileleftw.png"
theme.layout_tile                               = theme_path .. "layouts/tilew.png"
theme.layout_tiletop                            = theme_path .. "layouts/tiletopw.png"
theme.layout_spiral                             = theme_path .. "layouts/spiralw.png"
theme.layout_dwindle                            = theme_path .. "layouts/dwindlew.png"
theme.layout_cornernw                           = theme_path .. "layouts/cornernww.png"
theme.layout_cornerne                           = theme_path .. "layouts/cornernew.png"
theme.layout_cornersw                           = theme_path .. "layouts/cornersww.png"
theme.layout_cornerse                           = theme_path .. "layouts/cornersew.png"

theme.layout_txt_tile                           = "[T]"
theme.layout_txt_tileleft                       = "[l]"
theme.layout_txt_tilebottom                     = "[b]"
theme.layout_txt_tiletop                        = "[tt]"
theme.layout_txt_fairv                          = "[fv]"
theme.layout_txt_fairh                          = "[fh]"
theme.layout_txt_spiral                         = "[s]"
theme.layout_txt_dwindle                        = "[d]"
theme.layout_txt_max                            = "[M]"
theme.layout_txt_fullscreen                     = "[f]"
theme.layout_txt_magnifier                      = "[m]"
theme.layout_txt_floating                       = "[F]"


-- theme.tagnames                 = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }
-- theme.tagnames                                  = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 " }
theme.tagnames                 = { "一", "二", "三", "四", "五", "六", "七", "八", "九" }

local markup                   = lain.util.markup

local icon                     = '<span foreground="' .. theme.fg_accent .. '">'
local s_end                    = "</span>"

local icon_font                = "Iosevka Nerd Font 10"

-- Generate Awesome icon:
theme.awesome_icon             = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme               = nil

-- {{{ Volume Widget
local vol_icon                 = wibox.widget.textbox(icon .. " " .. s_end)
vol_icon.font                  = icon_font

local vol_bar                  = wibox.widget {
    max_value        = 1,
    forced_height    = dpi(1),
    forced_width     = dpi(69),
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    -- shape            = gears.shape.rounded_bar,
    -- bar_shape        = gears.shape.rounded_bar,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = dpi(5),
    widget           = wibox.widget.progressbar,
}

theme.volume, theme.vol_signal = awful.widget.watch(theme.scripts .. "get-volume.sh", 1,
    function(_, stdout)
        -- local value = tonumber(stdout)/100
        local value = tonumber(stdout) / 100
        if value == 2 then
            vol_bar:set_value(1)
            vol_bar:set_color(theme.bg_urgent)
        else
            vol_bar:set_value(value)
            vol_bar:set_color(theme.fg_normal)
        end
    end)

local volbg                    = wibox.container.background(vol_bar, "#474747", gears.shape.rectangle)
--                                             left,   right, top,    bottom
theme.volwidget                = wibox.container.margin(volbg, dpi(4), dpi(2), dpi(5), dpi(5))
theme.volwidget:buttons(gears.table.join(
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


-- {{{ Mem Widget
theme.mem_icon                 = wibox.widget {
    font = "Iosevka Nerd Font 11",
    markup = icon .. '󰘚 ' .. s_end,
    widget = wibox.widget.textbox,
}

theme.mem_icon_widget          = wibox.container.margin(theme.mem_icon, dpi(6), dpi(2), dpi(4), dpi(4))

theme.memory, theme.mem_signal = awful.widget.watch(theme.scripts .. "get-mem.sh", 2,
    function(widget, stdout)
        widget:set_markup(markup.font(theme.font, stdout))
    end)

theme.memory:buttons(gears.table.join(
    awful.button({}, 1, function()
        awful.spawn.with_shell(theme.terminal .. " -e btop")
    end))
)

-- }}}


-- {{{ Filesystem Widget
theme.file_icon        = wibox.widget {
    font = icon_font,
    markup = icon .. ' ' .. s_end,
    widget = wibox.widget.textbox,
}

theme.file_icon_widget = wibox.container.margin(theme.file_icon, dpi(4), dpi(2), dpi(5), dpi(6))


theme.space, theme.file_signal = awful.widget.watch(theme.scripts .. "get-space.sh", 2,
    function(widget, stdout)
        widget:set_text(stdout)
    end)
theme.space.font = theme.font

-- }}}

-- {{{ Mpd Widget
theme.mpd = lain.widget.mpd({
    timeout = 0.2,
    settings = function()
        local artist = mpd_now.artist
        local title = mpd_now.title
        if mpd_now.state == "play" then
            widget:set_markup(markup.fontcolor(theme.font, theme.bg_normal, theme.fg_accent,
                "   " .. artist .. " - " .. title .. " "))
        elseif mpd_now.state == "pause" then
            widget:set_markup(markup.fontcolor(theme.font, theme.bg_normal, theme.fg_accent,
                "   " .. artist .. " - " .. title .. " "))
        elseif mpd_now.state == "stop" then
            widget:set_markup(markup.fontcolor(theme.font, theme.bg_normal, theme.fg_accent, " -- Stop -- "))
        else
            widget:set_markup(markup.fontcolor(theme.font, theme.bg_normal, theme.fg_accent, " Diconnected "))
        end
    end
})

theme.mpd.widget:buttons(gears.table.join(
    awful.button({}, 1, function()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({}, 3, function()
        awful.spawn(theme.terminal .. " -e ncmpcpp")
        theme.mpd.update()
    end))
)

local mpd_bg = wibox.container.background(theme.mpd.widget, theme.fg_accent)
-- }}}

-- {{ Clock Widget
theme.clock_icon = wibox.widget.textbox(icon .. ' ' .. s_end)
theme.clock_icon.font = icon_font
local mytextclock = wibox.widget.textclock("%I:%M %p ")
mytextclock.font = theme.font
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Terminus 11",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})
-- }}



-- {{{ Net Widget
local mynet_logo = wibox.widget {
    font = icon_font,
    markup = icon .. "󰈀  " .. s_end,
    widget = wibox.widget.textbox
}

local mynet = lain.widget.net {
    -- eth_state = "on",
    settings = function()
        local state = net_now.state
        if state == "up" then
            widget:set_markup(markup.font(theme.font, "Up"))
        else
            widget:set_markup(markup.fontfg(theme.font, theme.bg_urgent, "Down"))
        end
    end
}
-- }}}

-- {{{ Cpu Usage Widget
local cpu_icon = wibox.widget {
    font = icon_font,
    markup = icon .. "  " .. s_end,
    widget = wibox.widget.textbox
}

local cpu = lain.widget.cpu {
    timeout = 1,
    settings = function()
        widget:set_markup(markup.font(theme.font, cpu_now.usage .. "%"))
    end
}
-- }}}

local sep = wibox.widget.textbox(' ')
local sep2 = wibox.widget.textbox('   ')


local right = wibox.widget {
    font = "Iosevka Nerd Font 15",
    markup = icon .. "  " .. s_end,
    widget = wibox.widget.textbox
}


local left = wibox.widget {
    font = "Iosevka Nerd Font 15",
    markup = icon .. "" .. s_end,
    widget = wibox.widget.textbox
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
    s.mywibox = awful.wibar({ position = "top", screen = s }) --, height = 20 })
    --
    --     -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        -- Seting this will center the middle widget
        expand = "none",
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            sep,
            s.mytaglist,
            sep2,
            mynet_logo,
            mynet.widget,
            sep2,
            theme.file_icon_widget,
            theme.space,
        },
        {
            -- s.mytasklist, -- Middle widget
            layout = wibox.layout.fixed.horizontal,
            left,
            -- theme.mpd.widget,
            mpd_bg,
            right
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            cpu_icon,
            cpu.widget,
            sep2,
            theme.mem_icon_widget,
            theme.memory,
            sep2,
            vol_icon,
            theme.volwidget,
            sep2,
            theme.clock_icon,
            mytextclock,
            wibox.widget.systray(),
            sep,
            s.mylayoutbox,
            sep
        },
    }
end

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
