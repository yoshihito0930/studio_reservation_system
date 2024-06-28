# Studio Reservation System

This project is a reservation management system for photography studios.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Go 1.16 or later
- PostgreSQL
- Docker (optional)

### Installing

1. Clone the repository
2. Run `go mod tidy` to install dependencies
3. Set up your PostgreSQL database
4. Copy `config.example.yaml` to `config.yaml` and fill in your configuration
5. Run `go run cmd/api/main.go` to start the server

## Running the tests

Run `go test ./...` to run all tests.

## Built With

* [Go](https://golang.org/) - The programming language used
* [PostgreSQL](https://www.postgresql.org/) - Database

## Authors

* **Yoshihito Ishihara  ** - *Initial work*

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
