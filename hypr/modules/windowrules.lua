--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})


hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.layer_rule({
	name = "notification-animations",
	match = { namespace = "swaync-control-center"},
	animation = "slide right" 
 })

 hl.window_rule({
	 match = { class = "kitty", title = "^bluetui$" },
	 float = true,
	 center = true,
	 size = {800, 600}
 })

 hl.window_rule({
	 match = { class = "kitty", title = "^gazelle$" },
	 float = true,
	 center = true,
	 size = {1000, 700}
 })

 hl.window_rule({
	 match = { class = "org.pulseaudio.pavucontrol", title = "^Volume Control$" },
	 float = true,
	 center = true,
	 size = {800, 600}
 })

 hl.layer_rule({
    name = "wlogout-blur",
    match = { namespace = "logout_dialog" },
    blur = true,
})
