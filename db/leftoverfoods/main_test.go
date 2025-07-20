package leftoverfoods

import (
	"context"
	"log"
	"os"
	"testing"

	"github.com/jackc/pgx/v5"
	_"github.com/lib/pq"
)

const (
	dbDriver = "postgres"
	dbSource = "postgresql://root:root@localhost:5433/leftoverfooddb?sslmode=disable"
)

var testQueries *Queries

func TestMain(m *testing.M)  {
	conn, err := pgx.Connect(context.Background(), dbSource)
	
	if err!=nil{
		log.Fatal("Cannot connect to dataabse", err)
	}

	testQueries = New(conn)
	os.Exit(m.Run())
}