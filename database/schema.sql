CREATE TABLE IF NOT EXISTS change_records (
  id INTEGER PRIMARY KEY,
  item_name TEXT NOT NULL,
  version TEXT NOT NULL,
  description TEXT NOT NULL,
  changed_at TEXT NOT NULL
);
