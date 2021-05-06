build:
	docker build -t cs665-project .

run:
	docker run -p 3306:3306 cs665-project
