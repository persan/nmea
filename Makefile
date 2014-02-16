all:
generate:
	python genspecs.py NMEA.data
	python generate.py src/messages/*.ads

compile:
clean:
test:
