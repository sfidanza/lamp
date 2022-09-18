FROM mysql:8.0

# These scripts create the databases and populate them at volume creation
# They are not run by Docker if mysql data is already set in the volume
# Note: For security reasons, users have been stripped from the import and will have to be added manually
COPY initdb/*.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
