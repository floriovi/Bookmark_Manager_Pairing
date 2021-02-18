require 'pg'

# Method used for spec_helper to run TRUNCATE TABLE before each rspec run.
def setup_test_database
  p "Setting up the test database..."

  conn = PG.connect(dbname: 'bookmark_manager_test')

  # Delete data inside the table
  conn.exec("TRUNCATE bookmarks;")
end