_project=nmea.gpr
all:
generate:
	python generate.py src/messages/*.ads

generete_Tests:
	gnattest  -P ${_project} --tests-root=${CURDIR}/tests --harness-dir=${CURDIR}/tests/harness

compile:
clean:
test:

xml::
	gnat2xml -P ${_project} --output-dir=xml -j0 --incremental
