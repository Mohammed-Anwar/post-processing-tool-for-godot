tool
extends CanvasLayer

func _physics_process(delta):
	main()

func main():
	var properties = []
	var node = $Control/ColorRect
	
	# inspactore exports 
	properties.append(
		{name = "Color Splash",
		type = TYPE_NIL,
		hint_string = "color_splash",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "color_splash_enable",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	if not get_parent().color_splash_enable:
		node.hide()
		return properties
	
	properties.append(
		{name = "color_splash_layer",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "color_splash_hide",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "color_splash_color",
		type = TYPE_COLOR,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "color_splash_strength",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.show()
	layer = get_parent().color_splash_layer
	node.material.set_shader_param("hide", get_parent().color_splash_hide)
	node.material.set_shader_param("color", get_parent().color_splash_color)
	node.material.set_shader_param("strength", get_parent().color_splash_strength)
	
	return properties

