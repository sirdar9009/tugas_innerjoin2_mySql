CREATE TABLE mahasiswa (
nim CHAR(8) PRIMARY KEY,
nama VARCHAR(50),
asal VARCHAR(50),
jurusan VARCHAR (20),
nilai_uan DEC(5,2)
) ENGINE = INNODB;

INSERT INTO mahasiswa VALUES
('17090113', 'Riana Putria', 'Padang', 'Kimia', 339.20),
('17140143', 'Rudi Permana', 'Bandung', 'Ilmu Komputer', 290.44),
('17080305', 'Rina Kumala Sari', 'Jakarta', 'Akuntansi', 337.99),
('17140119', 'Sandri Fatmala', 'Bandung', 'Ilmu Komputer', 322.91),
('17080225', 'Husli Khairan', 'Jakarta', 'Akuntansi', 288.55),
('17140133', 'Ikhsan Prayoga', 'Jakarta', 'Ilmu Komputer', 300.16),
('17140120', 'Bobby Permana', 'Medan', 'Ilmu Komputer', 280.82);

CREATE TABLE universitas (
jurusan VARCHAR(20) PRIMARY KEY,
tgl_berdiri DATE,
nama_dekan VARCHAR(50),
jum_mhs SMALLINT UNSIGNED,
akr ENUM('A', 'B', 'C', 'N/A')
) ENGINE = INNODB;

INSERT INTO universitas VALUES
('Kimia', '1987-07-12', 'Prof. Mulyono, M.Sc.', 662, 'B'),
('Ilmu Komputer', '2003-02-23', 'Dr. Syahrial, M.Kom.', 412, 'A'),
('Akuntansi', '1985-03-19', 'Maya Fitrianti, M.M.', 895, 'B'),
('Farmasi', '1997-05-30', 'Prof. Silvia Nst, M.Farm.', 312, 'C'),
('Fisika', '1989-12-10', 'Dr. Umar Agustinus, M.Sc.', 275, 'A'),
('Hukum', '1983-08-08', 'Prof. Gunarto, M.H.', 754, 'B');

CREATE VIEW `day26`.`detail_mahasiswa` 
    AS
(SELECT
    `mahasiswa`.`nim`
    , `mahasiswa`.`nama`
    , `mahasiswa`.`jurusan`
FROM
    `day26`.`universitas`
    INNER JOIN `day26`.`mahasiswa` 
        ON (`universitas`.`jurusan` = `mahasiswa`.`jurusan`));
        
        
        

CREATE
   
    VIEW `day26`.`detail_mahasiswa2` 
    AS
(SELECT
    `mahasiswa`.`nim`
    , `mahasiswa`.`nama`
    , `mahasiswa`.`jurusan`
    , `universitas`.`nama_dekan`
    , `universitas`.`akr`
FROM
    `day26`.`universitas`
    INNER JOIN `day26`.`mahasiswa` 
        ON (`universitas`.`jurusan` = `mahasiswa`.`jurusan`));
