/// @desc Finds the input point in the array of the instance of PolyGmShape from which this function is called and deletes the point from the array
/// @param {Struct} _p A point (Vec2)
function PolygonPointDelete(_p)
{
	var _index = -1;
	var _len = array_length(array);
	for (var i = 0; i < _len; i++;)
	{
		if array[i] == _p
		{
			_index = i;	
		}
	}
	
	if _index != -1
	{
		array_delete(array, _index, 1);
		ArrayUpdate();
	}
}