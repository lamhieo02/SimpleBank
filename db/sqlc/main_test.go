package db

import (
	"database/sql"
	"os"
	"testing"

	_ "github.com/lib/pq"
)

const (
	driverName     = "postgres"
	dataSourceName = "postgresql://root:109339Lam@@localhost:5432/simple_bank?sslmode=disable"
)

var testQueries *Queries

func TestMain(m *testing.M) {
	conn, err := sql.Open(driverName, dataSourceName)
	if err != nil {
		panic("cannot connect to db:" + err.Error())
	}

	testQueries = New(conn)

	os.Exit(m.Run())
}
