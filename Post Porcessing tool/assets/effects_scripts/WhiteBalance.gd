tool
extends CanvasLayer

func _physics_process(delta):
	$Control/BackBufferCopy/temperature.rect_size = $Control.rect_size
	main()

func main():
	var properties = []
	var node = $Control/BackBufferCopy/temperature
	
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
	$tint.visible = get_parent().white_balance_show
	
	
	properties.append(
		{name = "white_balance_layer",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "white_balance_temperature",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "white_balance_tint",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	layer = get_parent().white_balance_layer
	node.material.set_shader_param("cool_color", get_parent().white_balance_cool_color)
	node.material.set_shader_param("warm_color", get_parent().white_balance_warm_color)
	get_parent().white_balance_temperature = clamp(get_parent().white_balance_temperature, -1, 1)
	get_parent().white_balance_tint = clamp(get_parent().white_balance_tint, -1, 1)
	node.material.set_shader_param("temperature", get_parent().white_balance_temperature)
	$tint.material.set_shader_param("tint", get_parent().white_balance_tint)
	
	return properties
	
