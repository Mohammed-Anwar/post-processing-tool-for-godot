tool
extends Control

# warning-ignore:unused_argument
func _physics_process(delta):
	main()

func main():
	var properties = []
	var node = $ColorRect
	
	# inspactore exports 
	properties.append(
		{name = "Noise",
		type = TYPE_NIL,
		hint_string = "noise",
		usage = PROPERTY_USAGE_GROUP})
	properties.append(
		{name = "noise_show",
		type = TYPE_BOOL,
		usage = PROPERTY_USAGE_DEFAULT})
	
	node.visible = get_parent().noise_show
	
	properties.append(
		{name = "noise_power",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "noise_seed",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
	properties.append(
		{name = "noise_speed",
		type = TYPE_REAL,
		usage = PROPERTY_USAGE_DEFAULT})
		
	# main values setup for effect
	
	node.material.set_shader_param("seed", get_parent().noise_seed)
	node.material.set_shader_param("power", get_parent().noise_power)
	node.material.set_shader_param("speed", get_parent().noise_speed)
	
	return properties
