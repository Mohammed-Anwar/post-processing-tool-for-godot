tool
extends CanvasLayer

func _physics_process(delta):
	main()

func main():
	var properties = []
	var node = get_node("Control/ColorRect")
	
	# inspactore exports 
	properties.append(
		{name = "Chromatc Aberration",
		type = TYPE_NIL,
		hint_string = "chromatc_aberration_",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "chromatc_aberration_enable",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	if not get_parent().chromatc_aberration_enable:
		node.hide()
		return properties
	
	properties.append(
		{name = "chromatc_aberration_layer",
		type = TYPE_INT,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "chromatc_aberration_strength",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	# main values setup for effect
	node.show()
	layer = get_parent().chromatc_aberration_layer
	node.material.set_shader_param("strength", get_parent().chromatc_aberration_strength)
	
	return properties