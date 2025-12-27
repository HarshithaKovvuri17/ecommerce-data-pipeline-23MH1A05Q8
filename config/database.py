from sqlalchemy import create_engine

DB_USER = "postgres"
DB_PASSWORD = "Harshitha%40123."
DB_HOST = "localhost"
DB_PORT = "5432"
DB_NAME = "ecommerce_db"

DATABASE_URL = (
    f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}"
    f"@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

engine = create_engine(DATABASE_URL)

print("✅ Database engine created successfully")
