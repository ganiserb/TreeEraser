data:extend(
{
  {
    type = "selection-tool",
    name = "tree-eraser-maintained",
    icon = "__tree-eraser-maintained__/graphics/tree-eraser-maintained.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tool",
    order = "c[automated-construction]-b[deconstruction-planner]",
    stack_size = 1,
	icon_size = 32,
	stackable = false,
    selection_color = { r = 0, g = 1, b = 0 },
    alt_selection_color = { r = 0, g = 0, b = 1 },
    selection_mode = {"any-entity"},
    alt_selection_mode = {"any-entity"},
    selection_cursor_box_type = "pair",
    alt_selection_cursor_box_type = "pair"
  },
  {
	type = "recipe",
	name = "tree-eraser-maintained",
	enabled = "true",
	ingredients =
	{
	},
	result = "tree-eraser-maintained"
  }
}
)
