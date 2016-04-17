# Import file "tetris" (sizes and positions are scaled 1:1.5)
tetrisC = Framer.Importer.load("imported/tetris@1.5x")

tetrisC.canvas.y = 200

tetrisC.a.x = 250
tetrisC.a.y = -500
tetrisC.b.x = 250
tetrisC.b.y = -500
tetrisC.c.x = 250
tetrisC.c.y = -500
tetrisC.d.x = 250
tetrisC.d.y = -500
tetrisC.e.x = 250
tetrisC.e.y = -500
tetrisC.f.x = 250
tetrisC.f.y = -500
tetrisC.g.x = 250
tetrisC.g.y = -500
tetrisC.h.x = 250
tetrisC.h.y = -500
tetrisC.i.x = 250
tetrisC.i.y = -500
tetrisC.j.x = 250
tetrisC.j.y = -500
tetrisC.k.x = 250
tetrisC.k.y = -500
tetrisC.l.x = 250
tetrisC.l.y = -500
tetrisC.m.x = 250
tetrisC.m.y = -500
tetrisC.z.x = 40
tetrisC.z.y = 50
tetrisC.z.opacity = 0

tetrisC.a.states.add
	init:
		x: 250
		y: 940
	initb:
		x: 530	
		y: 940
tetrisC.b.states.add
	init:
		x: 0
		y: -500
tetrisC.c.states.add
	init:
		x: 0
		y: -500
tetrisC.d.states.add
	init:
		x: 0
		y: -500
tetrisC.e.states.add
	init:
		x: 0
		y: -500
tetrisC.f.states.add
	init:
		x: 0
		y: -500
tetrisC.g.states.add
	init:
		x: 0
		y: -500
tetrisC.h.states.add
	init:
		x: 0
		y: -500
tetrisC.i.states.add
	init:
		x: 235
		y: 835
	initb:
		x: 480
tetrisC.j.states.add
	init:
		x: 0
		y: -500
tetrisC.k.states.add
	init:
		x: 0
		y: -500
tetrisC.l.states.add
	init:
		x: 0
		y: -500
tetrisC.m.states.add
	init:
		x: 0
		y: -500
tetrisC.z.states.add
	init:
		opacity: 1
		
pieceA = new Animation
	layer: tetrisC.a
	tetrisC.a.states.next("init")
	tetrisC.z.states.next("init")

	
Utils.delay 1, ->
	tetrisC.a.states.next("initb")

Utils.delay 2, ->
	tetrisC.i.states.next("init")
Utils.delay 3, ->
	tetrisC.i.states.next("initb")