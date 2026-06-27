return {
	-- base palette (from your Noctalia config)
	primary = "rgb(8a9a7b)",
	surface = "rgb(181616)",
	secondary = "rgb(8ea4a2)",
	error = "rgb(c4746e)",
	tertiary = "rgb(c4746e)",
	surface_lowest = "rgb(1b1919)",

	-- mapped UI roles (from general/group sections)
	ui = {
		active_border = "rgb(8a9a7b)", -- $primary
		inactive_border = "rgb(181616)", -- $surface

		group = {
			border_active = "rgb(8ea4a2)", -- $secondary
			border_inactive = "rgb(181616)", -- $surface
			border_locked_active = "rgb(c4746e)", -- $error
			border_locked_inactive = "rgb(181616)",

			groupbar = {
				active = "rgb(8ea4a2)",
				inactive = "rgb(181616)",
				locked_active = "rgb(c4746e)",
				locked_inactive = "rgb(181616)",
			},
		},
	},
}
