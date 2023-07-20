.PHONY: run migrate_up migrate_down

# write for migrate db postgres

migrate_up:
	migrate -path db/migration -database "postgresql://root:109339Lam@@localhost:5432/simple_bank?sslmode=disable" -verbose up

migrate_down:
	migrate -path db/migration -database "postgresql://root:109339Lam@@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc_generate:
	docker run --rm -v "D:\SimpleBank":/src -w /src kjconroy/sqlc generate

test:
	go test -v -cover ./...