extends Control

var viewport

# Called when the node enters the scene tree for the first time.
func _ready():
    # TODO --- this doesn't seem to work
    get_tree().root.always_on_top = true

    # Attach to the editor
    viewport = EditorInterface.get_editor_viewport_3d(0)
    print(viewport)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
