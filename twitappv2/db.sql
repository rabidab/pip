DROP TABLE IF EXISTS `progres`;
CREATE TABLE IF NOT EXISTS `progres` (
  `id` char(1) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `progres` (`id`, `name`) VALUES
('0', 'Belum Verifikasi'),
('1', 'Verifikasi'),
('2', 'Pengecekan Lapangan'),
('3', 'Pembahasan'),
('4', 'Jawaban');

DROP TABLE IF EXISTS `lapor`;
CREATE TABLE IF NOT EXISTS `lapor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_twit` BIGINT NOT NULL,
  `tanggal` VARCHAR(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `isi` VARCHAR (160) NOT NULL,
  `id_progres` char(1) NOT NULL,
  `lastvisit` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=501 ;

INSERT INTO `lapor` (`id`,`id_twit`,`tanggal`,`name`,`isi`,`id_progres`,`lastvisit`) VALUES
  (1,529465502553227264,'Tue Nov 04 02:49:47 +0000 2014','@yayaxzz','#JogjaAsat ','1','2012-04-17'),
  (2,529465353454112768,'Tue Nov 04 02:49:11 +0000 2014','@yayaxzz','My house . . \"killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/b1r5fdXpJS\"','0','2012-04-17'),
  (3,529464169620570113,'Tue Nov 04 02:44:29 +0000 2014','@gabrielalaras','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','0','2012-04-17'),
  (4,529462433182523393,'Tue Nov 04 02:37:35 +0000 2014','@st_kurniawan','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','0','2012-04-17'),
  (5,529462351913709568,'Tue Nov 04 02:37:16 +0000 2014','@Rio_Ramabaskara','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','0','2012-04-17'),
  (6,529461612143341568,'Tue Nov 04 02:34:19 +0000 2014','@killthedj','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','1','2012-04-17'),
  (7,529456876480499712,'Tue Nov 04 02:15:30 +0000 2014','@dodoputrabangsa','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','0','2012-04-17'),
  (8,529376866042249216,'Mon Nov 03 20:57:34 +0000 2014','@penumpang_gelap','Pak Wali kok ga ada? \"@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" http://t.co/GCLddesCS0 \"','0','2012-04-17'),
  (9,529365253227036672,'Mon Nov 03 20:11:26 +0000 2014','@sangkunet','RT @chirpstory: .@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8Dn…','0','2012-04-17'),
  (10,529364395793473536,'Mon Nov 03 20:08:01 +0000 2014','@chirpstory','.@killthedj\'s \"Perjuangan Warga Miliran #JogjaAsat by @dodoputrabangsa #JogjaOraDidol\" enters lunch talk. http://t.co/wq8DnmUE8U','0','2012-04-17');

DROP TABLE IF EXISTS `twitter`;
CREATE TABLE `twitter` (
  `CONSUMER_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONSUMER_SECRET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OAUTH_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OAUTH_TOKEN_SECRET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HASTAG` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `twitter` VALUES ('ZI1PLPq7emJnHWkcyq3tFDeWV','YCqck9ZB6rWGuEG5tCRVoOjHHnDd0Y6iFHSbleq70cDIjqTMHQ','79529075-cnQlwAjcaiHYwYb8gGfe9Sq4W7mvhEwtpljLwstyL','QEUUgVjFR568jDXpcuxxyXDe7qouWYkOebQZziYXqGgIJ','#JogjaAsat','twitter');

------------------------------
CREATE TABLE Lapor(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  id_twit BIGINT,
  Tanggal VARCHAR(50),
  Name VARCHAR(25),
  Isi VARCHAR (160),
  Status char(1)
);


DROP TABLE IF EXISTS `demo`;
CREATE TABLE IF NOT EXISTS `demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `id_continent` char(2) DEFAULT NULL,
  `id_country` char(2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `freelance` tinyint(4) DEFAULT NULL,
  `lastvisit` date DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=501 ;


<?php
$qry = mysql_query("SELECT * FROM post") or die(mysql_error();
while($data=mysql_fetch_array($qry)){
if($data['id_post'] == 1){
echo $data['nama_post']." Belum";
}
elseif($data['id_post'] == 2){
echo $data['nama_post']." Verifikasi";
}
elseif($data['id_post'] == 3){
echo $data['nama_post']." Progress";
}
else{
echo "nothing found";
}
}

?>