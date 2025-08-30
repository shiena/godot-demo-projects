extends Node3D

var xr_interface: XRInterface

func _ready():
	var interface = XRServer.find_interface("visionOS")
	if interface and interface.initialize():
		var viewport : Viewport = get_viewport()
		viewport.use_xr = true
		viewport.vrs_mode = Viewport.VRS_XR
