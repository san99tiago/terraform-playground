install:
	[ -d "modules/python" ] || pip install -r requirements.txt -t modules/python/ --platform manylinux2014_x86_64 --python-version 3.12 --implementation cp --only-binary=:all: --upgrade

clean:
	rm -rf modules
