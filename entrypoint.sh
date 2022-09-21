# wait for our database port to be setup.
# If you don't have this file, any you run the docker-compose build and docker-compose up, your api will start after the database is started.
wait-for "${DATABASE_HOST}:${DATABASE_PORT}" -- "$@"

# CompileDaemon package
# Watch for .go file changes
# It will allow us to update main.go file and it will automatically update everytime you make a change to it.
# Go is a compiled language, typically you have to start and stop server for changes to be seen. This package automatcally builds for us.
CompileDaemon --build="go build -o main main.go"  --command=./main