@tool
extends Control

@onready var label = $VBoxContainer/Label

var vp

# Called when the node enters the scene tree for the first time.
func _ready():
    # Attach to the editor
    vp = EditorInterface.get_editor_viewport_3d(0)
    print_children(vp.get_children(), 0)

func print_children(kids, level):
    for kid in kids:
        print("    ".repeat(level), kid)
        print_children(kid, level+1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass


func _on_button_pressed():
    label.text = "Pressed!"
    vp = EditorInterface.get_editor_viewport_3d()
    label.text = "Viewport: %s" % vp
