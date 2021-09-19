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
		{name = "Bloom",
		type = TYPE_NIL,
		hint_string = "bloom_",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "bloom_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().bloom_show
	
	properties.append(
		{name = "bloom_radius",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "bloom_threshold",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "bloom_intensity",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
		
	# main values setup for effect
	node.material.set_shader_param("bloomRadius", get_parent().bloom_radius)
	node.material.set_shader_param("bloomThreshold", get_parent().bloom_threshold)
	node.material.set_shader_param("bloomIntensity", get_parent().bloom_intensity)
	
	return properties
	pass
