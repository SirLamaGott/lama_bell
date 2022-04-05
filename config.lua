Config = {}

Config.Locale = 'en'
Config.UseInteractSound = false --REQUIRES: https://github.com/plunkettscott/interact-sound/releases 

Config.DrawDistance = 10.0
Config.InteractDistance = 1.2

Config.BellPoints = {

	cardealer = {
		Pos    = {x = -57.3053, y = -1097.2000, z = 25.4223}, 
		Color  = {r = 255, g = 255, b = 255},
		Size   = {x = 1.0, y = 1.0, z = 1.0},
		Marker = 1,
		
		Job      = 'cardealer', -- Which Job shall get a message?
		Image    = 'CHAR_CARSITE', -- Available Images: https://wiki.rage.mp/index.php?title=Notification_Pictures
		Title    = 'Title',
		SubTitle = 'SubTitle',
		Text     = 'Example Text',
		
	},
	
	police = {
		Pos    = {x = 432.3734, y = -980.1884, z = 29.7119}, 
		Color  = {r = 0, g = 98, b = 255}, 
		Size   = {x = 1.0, y = 1.0, z = 1.0},
		Marker = 1,
		
		Job    = 'police',
		Image  = 'CHAR_CALL911',
		Title    = 'Bell',
		SubTitle = 'Mission Row Police Department',
		Text     = 'Someone has rang the bell!',
	},
	
}
