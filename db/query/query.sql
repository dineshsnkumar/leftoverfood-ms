-- name: CreateUser :one
INSERT INTO users (
  username, first_name, last_name,country, email_address
) VALUES (
  $1, $2, $3, $4, $5
)
RETURNING *;