Config = {}

Config.Locale = 'en'
Config.Framework = 'esx' -- esx or qbcore (qbcore is broken at the moment)

Config.DrawDistance = 10.0
Config.InteractDistance = 1.2

Config.BellPoints = {

	cardealer = {
		Pos    = {x = -57.3053, y = -1097.2000, z = 25.4223}, 
		Color  = {r = 255, g = 255, b = 255},
		Size   = {x = 1.0, y = 1.0, z = 1.0},
		Marker = 1,
		Job    = 'cardealer', -- Which Job shall get a message?
		Image  = 'CHAR_CARSITE', -- Available Images: https://wiki.rage.mp/index.php?title=Notification_Pictures
	},
	
	police = {
		Pos    = {x = -48.2914, y = -1097.5687, z = 26.4223}, 
		Color  = {r = 0, g = 255, b = 51}, 
		Size   = {x = 1.0, y = 1.0, z = 1.0},
		Marker = 1,
		Job    = 'police',
		Image  = 'CHAR_CALL911',
	},
	
}
