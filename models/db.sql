-- Active: 1711937588478@@127.0.0.1@3306@dokumen_digital
CREATE TABLE auth(
  id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(50),
  bg VARCHAR(35)
);

CREATE TABLE user_role(
  id_role INT AUTO_INCREMENT PRIMARY KEY,
  role VARCHAR(35)
);

INSERT INTO
  user_role(role)
VALUES
  ('Administrator'),
  ('Owner'),
  ('Member');

CREATE TABLE user_status(
  id_status INT AUTO_INCREMENT PRIMARY KEY,
  status VARCHAR(35)
);

INSERT INTO
  user_status(status)
VALUES
  ('Active'),
  ('No Active');

CREATE TABLE users(
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_active INT,
  en_user VARCHAR(75),
  token CHAR(6),
  name VARCHAR(100),
  image VARCHAR(100),
  email VARCHAR(75),
  password VARCHAR(100),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_active) REFERENCES user_status(id_active) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE user_menu(
  id_menu INT AUTO_INCREMENT PRIMARY KEY,
  menu VARCHAR(50)
);

CREATE TABLE user_sub_menu(
  id_sub_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_menu INT,
  id_active INT,
  title VARCHAR(50),
  url VARCHAR(50),
  icon VARCHAR(50),
  FOREIGN KEY (id_menu) REFERENCES user_menu(id_menu) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_active) REFERENCES user_status(id_active) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE user_access_menu(
  id_access_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_menu INT,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_menu) REFERENCES user_menu(id_menu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE user_access_sub_menu(
  id_access_sub_menu INT AUTO_INCREMENT PRIMARY KEY,
  id_role INT,
  id_sub_menu INT,
  FOREIGN KEY (id_role) REFERENCES user_role(id_role) ON UPDATE NO ACTION ON DELETE NO ACTION,
  FOREIGN KEY (id_sub_menu) REFERENCES user_sub_menu(id_sub_menu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE jamuan_tamu(
  id_jamuan_tamu INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(75),
  judul_jamuan VARCHAR(75),
  daerah VARCHAR(50),
  deskripsi TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE perkawinan(
  id_perkawinan INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(75),
  judul_perkawinan VARCHAR(75),
  daerah VARCHAR(50),
  deskripsi TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE pakaian_adat(
  id_pakaian_adat INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(75),
  judul_pakaian_adat VARCHAR(75),
  daerah VARCHAR(50),
  deskripsi TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE video(
  id_video INT AUTO_INCREMENT PRIMARY KEY,
  id_tipe_fitur INT,
  thumbnail VARCHAR(50),
  link_video VARCHAR(100),
  nama_video VARCHAR(100),
  deskripsi TEXT,
  author VARCHAR(50),
  penonton INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);