tool
extends EditorPlugin

var erp 
func _enter_tree():
	erp = EditorResourcePicker.new()
	erp.toggle_mode = false
	erp.base_type = "Curve"
	add_control_to_bottom_panel(erp,"EditorResourcePicker")
	add_custom_type("CurvePlus", "Resource", preload("CurvePlus.gd"), null)
	pass


func _exit_tree():
	remove_control_from_bottom_panel(erp)
	remove_custom_type("CurvePlus")
	pass