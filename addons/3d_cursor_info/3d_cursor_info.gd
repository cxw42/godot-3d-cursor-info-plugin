@tool
extends EditorPlugin

var dock: Control

func _enter_tree():
    dock = preload("res://addons/3d_cursor_info/ui.tscn").instantiate()
    add_control_to_dock(EditorPlugin.DOCK_SLOT_RIGHT_UR, dock)


func _exit_tree():
    remove_control_from_docks(dock)
    dock.free()
