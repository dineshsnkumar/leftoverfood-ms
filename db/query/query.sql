-- name: CreateUser :one
INSERT INTO users (
  username, first_name, last_name,country, email_address
) VALUES (
  $1, $2, $3, $4, $5
)
RETURNING *;

-- name: GetUser :one
SELECT * FROM users
WHERE user_id = $1 LIMIT 1;

-- name: ListbBusines :many
SELECT * FROM business
ORDER BY name;