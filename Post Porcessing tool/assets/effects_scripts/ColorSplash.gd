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
		{name = "Color Splash",
		type = TYPE_NIL,
		hint_string = "color_splash",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "color_splash_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().color_splash_show
	
	properties.append(
		{name = "color_splash_color",
		type = TYPE_COLOR,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "color_splash_strength",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.material.set_shader_param("color", get_parent().color_splash_color)
	node.material.set_shader_param("strength", get_parent().color_splash_strength)
	
	return properties

