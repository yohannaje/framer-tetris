# Import file "tetris" (sizes and positions are scaled 1:1.5)
tetrisC = Framer.Importer.load("imported/tetris@1.5x")

tetrisC.canvas.y = 200
tetrisC.bg.y = -200
tetrisC.bg.height = 1400
tetrisC.a.x = 250
tetrisC.a.y = -500
tetrisC.b.x = 250
tetrisC.b.y = -500
tetrisC.c.x = 250
tetrisC.c.y = -500
tetrisC.d.x = 250
tetrisC.d.y = -500
tetrisC.h.x = 250
tetrisC.h.y = -500
tetrisC.i.x = 250
tetrisC.i.y = -500
tetrisC.l.x = 250
tetrisC.l.y = -500
tetrisC.z.x = 40
tetrisC.z.y = -150
tetrisC.z.opacity = 0
tetrisC.d1.opacity = 0
tetrisC.h1.opacity = 0
tetrisC.b2.opacity = 0
tetrisC.l1.opacity = 0
tetrisC.c1.opacity = 0
tetrisC.d1.y = -150
tetrisC.h1.y = -150
tetrisC.b2.y = -150
tetrisC.l1.y = -150
tetrisC.c1.y = -150
tetrisC.text.y = -150
tetrisC.text2.y = -150

tetrisC.text2.opacity = 0


tetrisC.a.states.add
	init:
		x: 250
		y: 1040
	initb:
		x: 534	
	initc:
		y: 1080
	win:
		y: 1145
tetrisC.b.states.add
	init:
		x: 250
		y: 700
	rotate:
		rotation: 90
	positionb:
		x:451
	positionc:
		y:900
	win:
		y:956

tetrisC.c.states.add
	init:
		x: 250
		y: 500
	rotate:
		rotation: 90
	positionb:
		x: 186
	positionc:
		y: 1001
	win:
		y: 1057
tetrisC.d.states.add
	init:
		x: 374
		y: 1028
	win:
		y: 1082
tetrisC.h.states.add
	init:
		x: 250
		y: 700
	positionb:
		x: 0
	positionc:
		y: 1028
	win:
		y: 1082
tetrisC.i.states.add
	init:
		x: 235
		y: 975
	initb:
		x: 480
	win:
		y: 1029

tetrisC.l.states.add
	init:
		x: 250
		y: 500
	positionb:
		x: 320
	positionc:
		y: 923
	win:
		y: 1145
tetrisC.z.states.add
	init:
		opacity: 1
	off:
		opacity: 0
tetrisC.d1.states.add
	init:
		opacity: 1
	off:
		opacity: 0
tetrisC.b2.states.add
	init:
		opacity: 1
	off:
		opacity: 0
tetrisC.h1.states.add
	init:
		opacity: 1
	off:
		opacity: 0
tetrisC.c1.states.add
	init:
		opacity: 1
	off:
		opacity: 0	
tetrisC.l1.states.add
	init:
		opacity: 1
	off:
		opacity: 0	
tetrisC.text.states.add
	init:
		opacity: 1
	off:
		opacity: 0
tetrisC.text2.states.add
	init:
		opacity: 1
	off:
		opacity: 0
					
pieceA = new Animation
	layer: tetrisC.a
	tetrisC.a.states.next("init")
	tetrisC.z.states.next("init")

	
Utils.delay 1, ->
	tetrisC.a.states.next("initb")
Utils.delay 2, ->
	tetrisC.a.states.next("initc")
	tetrisC.z.states.next("off")
Utils.delay 3, ->
	tetrisC.a.states.next("initc")
	tetrisC.i.states.next("init")
	tetrisC.z.states.next("off")
Utils.delay 4, ->
	tetrisC.i.states.next("initb")
	tetrisC.d1.states.next("init")
Utils.delay 5, ->
	tetrisC.d1.states.next("off")
	tetrisC.d.states.next("init")
Utils.delay 6, ->
	tetrisC.b2.states.next("init")
	tetrisC.b.states.next("init")
Utils.delay 7, ->
	tetrisC.b2.states.next("off")
	tetrisC.b.states.next("rotate")
Utils.delay 8, ->
	tetrisC.h1.states.next("init")
	tetrisC.b.states.next("positionb")
Utils.delay 9, ->
	tetrisC.b.states.next("positionc")
Utils.delay 10, ->
	tetrisC.h.states.next("init")
	tetrisC.h1.states.next("off")
Utils.delay 11, ->
	tetrisC.h.states.next("positionb")
Utils.delay 12, ->
	tetrisC.c1.states.next("init")
	tetrisC.h.states.next("positionc")
Utils.delay 13, ->
	tetrisC.c1.states.next("off")
	tetrisC.c.states.next("init")
Utils.delay 14, ->
	tetrisC.l1.states.next("init")
	tetrisC.c.states.next("rotate")
Utils.delay 15, ->
	tetrisC.c.states.next("positionb")
Utils.delay 16, ->
	tetrisC.c.states.next("positionc")
Utils.delay 17, ->
	tetrisC.l1.states.next("off")
	tetrisC.l.states.next("init")
Utils.delay 18, ->
	tetrisC.d1.states.next("init")
	tetrisC.l.states.next("positionb")
Utils.delay 19, ->
	tetrisC.d.states.next("init")

	tetrisC.l.states.next("positionc")
Utils.delay 20, ->
	tetrisC.text.states.next("off")
	tetrisC.text2.states.next("init")
	tetrisC.a.states.next("win")
	tetrisC.c.states.next("win")
	tetrisC.d.states.next("win")
	tetrisC.h.states.next("win")
	tetrisC.l.states.next("win")
	tetrisC.i.states.next("win")
	tetrisC.b.states.next("win")

	

