tool
extends Control

# warning-ignore:unused_argument
func _physics_process(delta):
	$BackBufferCopy/ColorRect.rect_size = rect_size
	main()

func main():
	var properties = []
	var node = $BackBufferCopy/ColorRect
	
	# inspactore exports 
	properties.append(
		{name = "Adjustment",
		type = TYPE_NIL,
		hint_string = "adjustment",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "adjustment_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().adjustment_show
	
	properties.append(
		{name = "adjustment_brightnes",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "adjustment_contrast",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "adjustment_saturation",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.material.set_shader_param("brightness", get_parent().adjustment_brightnes)
	node.material.set_shader_param("contrast", get_parent().adjustment_contrast)
	node.material.set_shader_param("saturation", get_parent().adjustment_saturation)
	
	return properties
