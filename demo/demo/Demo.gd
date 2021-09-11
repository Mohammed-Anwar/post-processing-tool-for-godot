extends Node




func _on_hide_show_button_pressed():
	if $CanvasLayer2/PostProcessing_tool.visible:
		$CanvasLayer2/PostProcessing_tool.hide()
		$CanvasLayer/hide_show_button.text = "show"
	else:
		$CanvasLayer2/PostProcessing_tool.show()
		$CanvasLayer/hide_show_button.text = "hide"
		
	pass # Replace with function body.
