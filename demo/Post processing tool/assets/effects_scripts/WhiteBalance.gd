tool
extends Control

# warning-ignore:unused_argument
func _process(delta):
	$BackBufferCopy/temperature.rect_size = rect_size
	$BackBufferCopy2/tint.rect_size = rect_size
	main()

func main():
	var properties = []
	var node = $BackBufferCopy/temperature
	
	# inspactore exports 
	properties.append(
		{name = "White Balance",
		type = TYPE_NIL,
		hint_string = "white_balance",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "white_balance_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	node.visible = get_parent().white_balance_show
	$BackBufferCopy2/tint.visible = get_parent().white_balance_show
	
	
	properties.append(
		{name = "white_balance_temperature",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "white_balance_tint",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.material.set_shader_param("cool_color", get_parent().white_balance_cool_color)
	node.material.set_shader_param("warm_color", get_parent().white_balance_warm_color)
	get_parent().white_balance_temperature = clamp(get_parent().white_balance_temperature, -1, 1)
	get_parent().white_balance_tint = clamp(get_parent().white_balance_tint, -1, 1)
	node.material.set_shader_param("temperature", get_parent().white_balance_temperature)
	$BackBufferCopy2/tint.material.set_shader_param("tint", get_parent().white_balance_tint)
	
	return properties
	
