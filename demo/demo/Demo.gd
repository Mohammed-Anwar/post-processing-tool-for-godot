extends Node




func _on_hide_show_button_pressed():
	if $PostProcessing_tool.visible:
		$PostProcessing_tool.hide()
		$CanvasLayer/hide_show_button.text = "show"
	else:
		$PostProcessing_tool.show()
		$CanvasLayer/hide_show_button.text = "hide"
		
	pass # Replace with function body.
