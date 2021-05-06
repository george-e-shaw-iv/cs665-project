build:
	docker build -t cs665-project .

run:
	docker run -p 3306:3306 cs665-project

seed:
	mysql --host=127.0.0.1 --port=3306 --user=root --password=root --database=cs665-project --execute="$(cat seed/seed.sql)"

backup:
	mkdir -p backups
	mysqldump --host 127.0.0.1 --port 3306 -u root -proot cs665-project > backups/backup-`date +%F`.sql
