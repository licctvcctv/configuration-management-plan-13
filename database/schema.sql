CREATE TABLE IF NOT EXISTS employees (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  role TEXT NOT NULL,
  phone TEXT,
  active INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS scripts (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  difficulty TEXT,
  duration_minutes INTEGER,
  min_players INTEGER,
  max_players INTEGER
);

CREATE TABLE IF NOT EXISTS schedules (
  id INTEGER PRIMARY KEY,
  employee_id INTEGER NOT NULL,
  work_date TEXT NOT NULL,
  shift_name TEXT NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS attendance_records (
  id INTEGER PRIMARY KEY,
  employee_id INTEGER NOT NULL,
  work_date TEXT NOT NULL,
  check_in_time TEXT,
  check_out_time TEXT,
  status TEXT NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
