# Check to see if we are running against a local DB
if [ -n $DOCKERFOOLERY_DB_1_PORT_5432_TCP_ADDR ] ; then
  echo "Using local Postgres instance..."
  export DATABASE_URL=postgresql://$DOCKERFOOLERY_DB_1_ENV_POSTGRES_USER:$DOCKERFOOLERY_DB_1_ENV_POSTGRES_PASSWORD@$DOCKERFOOLERY_DB_1_PORT_5432_TCP_ADDR:5432/dockerfoolery_development
fi
