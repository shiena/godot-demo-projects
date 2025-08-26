extends Node3D

var xr_interface: XRInterface

func _ready():
	var interface = XRServer.find_interface("visionOS")
	if interface and interface.initialize():
		get_viewport().use_xr = true
