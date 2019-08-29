	-- CARA KOMENT MYSQL via TERMINAL --
	cd xampp\mysql\bin;
	> mysql -u root -p;

	-- CARA MENAMPILKAN DATABASE --
	SHOW DATABASE

	-- CARA MEMBUAT DATABASE --
	CREAT DATABASE `11rpl1_db`;

	-- CARA MEBUAT TABLE --
	CREAT TABLE `siswa` (
 id_siswa  int(11) auto_increment,
 nis            char(8),                    
 nama_lengkap   varchar(255),                          
 jk             char(1),                  
 tmp_lahir      varchar(255),                          
 tgl_lahir      date,                         
 alamat         text,                                 
 no_hp          char(15),                              
 tanggal_entri  datetime                              
 );

	-- CARA MENAMPILKAN TABLE --
	SHOW TABLES;

	-- CARA MENAMPILKAN SPESIFIKASI TABLE --
	DESCRIBE `siswa`;

	-- CARA MENAMBAHKAN RECORD KE TABLE --
	INSERT INTO `siswa` SET
 id_siswa=NULL,
 nis= '11801050',
 nama_lengkap= 'IKHSAN FAJAR RAMADHAN',
 jk='L',
 tmp_lahir= 'SUBANG',
 tgl_lahir= '2002-11-27',
 alamat= 'DUSUN PATROL',
 no_hp= '089XXXXXXXXXX',
 tanggal_entri= NOW();

 	-- CARA MENAMPILKAN SELURUH DATA TABLE --
 	SELECT * FROM `siswa`;

 	-- CARA MENAMPILKAN DATA DENGAN  KONDISI TERTENTU --
 	SELECT * FROM `siswa` WHERE JK= 'P'

 	-- CARA MENAMPILKAN BEBERAPA / BATAS RECORD PADA TABLE --
 	SELECT * FROM `siswa` LIMIT 3,5;

 	-- CARA MENAMPILKAN / MENGURUT KAN RECORD BERDASARKAN FIELD TERTENTU --
 	SELECT * FROM `siswa` ORDER BY tgl_lahir DESC;

 	-- CARA MENAMPILKAN FIELD MENGGUNAKAN FUNCTION --
 	SELECT UPPER(alamat) FROM `siswa`;

 	-- CARA MENAMPILKAN BEBERAPA FIELD DENGAN KONDISI TERTENTU --
 	SELECT nama_lengkap, tmp_lahir,tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = '2002';

 	-- CARA MEMPERBARUI DATA PADA TABLE --
 	UPDATE `siswa` SET tmp_lahir = 'BANDUNG', tgl_lahir = '2003-01-01' WHERE id_siswa = '1';

 	-- CARA MENGHAPUS DATA/RECORD --
 	DELETE FROM `siswa` WHERE id_siswa = ''
