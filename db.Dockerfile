FROM mysql:8.0.23

# Copy database migration files and export it to the docker entry point. That will initialize the database.
# All scripts in docker-entrypoint-initdb.d/ are automatically executed during container startup.
COPY ./database/*.sql /docker-entrypoint-initdb.d/