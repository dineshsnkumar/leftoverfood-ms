postgres:
	docker run --name leftoverfooddb -e POSTGRES_USER=root -e  POSTGRES_PASSWORD=root -p 5433:5432 -d postgres:15-alpine

createdb:
	docker exec -it leftoverfooddb createdb --username=root --owner=root leftoverfooddb

dropdb:
	docker exec -it postgres dropdb leftoverfooddb

migrateup:
	migrate -path db/migrate -database "postgresql://root:root@localhost:5433/leftoverfooddb?sslmode=disable" -verbose up

sqlcgenerate:
	sqlc generate

migratedown:
	migrate -path db/migrate -database "postgresql://root:root@localhost:5433/leftoverfooddb?sslmode=disable" -verbose down

.PHONY: postgres createdb dropdb sqlcgenerate

