tool
extends CanvasLayer

func _physics_process(delta):
	main()

func main():
	
	var properties = []
	var node = $Control/ColorRect
	
	# inspactore exports 
	properties.append(
		{name = "Glich",
		type = TYPE_NIL,
		hint_string = "glich",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "glich_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().glich_show
	
	properties.append(
		{name = "glich_layer",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glich_power",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glich_rate",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glich_speed",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glich_block_size",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "glich_color_rate",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	layer = get_parent().glich_layer
	node.material.set_shader_param("shake_power", get_parent().glich_power)
	node.material.set_shader_param("shake_rate", get_parent().glich_rate)
	node.material.set_shader_param("shake_speed", get_parent().glich_speed)
	node.material.set_shader_param("shake_block_size", get_parent().glich_block_size)
	node.material.set_shader_param("shake_color_rate", get_parent().glich_color_rate)
	
	return properties
