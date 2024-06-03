/// @desc Draw vertex buffer

var _selected = PolyGmEditor.shape_selected == id;

if vbuff_empty == false
{
	var _darken = (mouse_over_shape and !_selected) or (hover_shape and moving_point == -1);
	if _darken shader_set(sh_darken);
	vertex_submit(vbuff, pr_trianglelist, texture);
	if _darken shader_reset();
}

if drawing or _selected
{
	#region Debug
	
	for (var i = 0; i < array_length(array); i++;)
	{
		var _point = array[i];
	
		draw_set_colour(c_white);
		if hover_point == _point draw_set_colour(c_aqua);
		//if nearest_point0 == _point draw_set_colour(c_red);
		//if nearest_point1 == _point draw_set_colour(c_orange);
		draw_rectangle(_point.x - point_size, _point.y - point_size, _point.x + point_size, _point.y + point_size, false);
	
		if hover_point == -1 and mouse_point != -1
		{
			draw_set_colour(c_lime);
			draw_rectangle(mouse_point.x - point_size, mouse_point.y - point_size, mouse_point.x + point_size, mouse_point.y + point_size, false);
		}
	}
	
	draw_set_colour(c_orange);
	draw_line(left,  top,    right, top);
	draw_line(left,  bottom, right, bottom);
	draw_line(left,  top,    left,  bottom);
	draw_line(right, top,    right, bottom);

	#endregion
}