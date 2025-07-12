postgres:
	docker run --name leftoverfooddb -e POSTGRES_USER=root -e  POSTGRES_PASSWORD=root -p 5433:5432 -d postgres:15-alpine

createdb:
	docker exec -it leftoverfooddb createdb --username=root --owner=root leftoverfooddb

dropdb:
	docker exec -it postgres dropdb leftoverfooddb


.PHONY: postgres createdb dropdb

