require 'sqlite3'

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  results = db.execute("SELECT COUNT(*) FROM artists").flatten.first
  return results
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  results = db.execute("SELECT name FROM artists ORDER BY name ASC").flatten
  return results
end

def love_tracks(db)
  # TODO: return array of love songs' names
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love'").flatten
  return results
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
end

# There are five methods to implement:
# How many rows does the artists table contain?
# How many rows does each table contain (generic method)?
# Return the list of all the artists and sort them by name (alphabetically). Hint: use the ORDER BY SQL filter.
# Find all the love songs (i.e the tracks that contain “love” anywhere in their name). Hint: use the WHERE and LIKE SQL keywords.
# Return all the tracks that are longer than a given duration and sort them. Hint: you can use the comparison operator > in SQL.