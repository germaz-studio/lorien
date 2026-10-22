class_name AboutDialog
extends PanelContainer

# -------------------------------------------------------------------------------------------------
func _ready() -> void:
	get_parent().close_requested.connect(get_parent().hide)
	%VersionLabel.text = "Lorien v%s" % Config.VERSION_STRING
	%CopyrightLabel.text = %CopyrightLabel.text.replace("2021-2024", "2021-2026")
	%GithubLinkButton.pressed.connect(func() -> void: OS.shell_open("https://github.com/germaz-studio/lorien"))
	%LicenseButton.pressed.connect(func() -> void: OS.shell_open("https://github.com/germaz-studio/lorien/blob/main/LICENSE"))
	%GodotButton.pressed.connect(func() -> void: OS.shell_open("https://godotengine.org/"))
	%KennyButton.pressed.connect(func() -> void: OS.shell_open("https://www.kenney.nl/assets/platformer-art-deluxe"))
	%RemixIconsButton.pressed.connect(func() -> void: OS.shell_open("https://remixicon.com/"))
