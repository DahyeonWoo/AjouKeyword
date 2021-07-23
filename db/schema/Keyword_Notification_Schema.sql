CREATE TABLE `users` (
	`u_id`	VARCHAR(50)	NOT NULL,
	`password`	VARCHAR(50)	NULL,
	`email`	VARCHAR(100)	NULL,
	`date`	TIMESTAMP	NULL,
	PRIMARY KEY(u_id)
);

CREATE TABLE `page` (
	`p_id`	INT(11) UNSIGNED	NOT NULL	AUTO_INCREMENT,
	`url`	VARCHAR(1000)	NULL,
	`p_name`	VARCHAR(100)	NULL,
	PRIMARY KEY(p_id)
);

CREATE TABLE `keyword` (
	`k_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`keyword`	VARCHAR(100)	NULL,
	`u_id`	VARCHAR(50)	NOT NULL,
	PRIMARY KEY (k_id),
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE
);

CREATE TABLE `registration` (
	`up_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`u_id`	VARCHAR(50)	NOT NULL,
	`p_id`	INT(11) UNSIGNED	NOT NULL,
	`k_id`	INT(11) UNSIGNED	NULL,
	PRIMARY KEY (up_id),
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE,
	FOREIGN KEY (p_id) REFERENCES page (p_id) ON DELETE CASCADE,
	FOREIGN KEY (k_id) REFERENCES keyword (k_id) ON DELETE CASCADE
);

CREATE TABLE `crawl_data` (
	`d_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`title`	VARCHAR(100)	NULL,
	`content`	VARCHAR(500)	NULL,
	`link`	VARCHAR(200)	NULL,
	`p_id`	INT(11) UNSIGNED	NULL,
	`department`	VARCHAR(45)	NULL,
	`updateDate`	VARCHAR(45)	NULL,
	`idx`	INT(11) UNSIGNED	NULL,
	`category`	VARCHAR(45)	NULL,
	PRIMARY KEY (d_id),
	FOREIGN KEY (p_id) REFERENCES `page` (p_id) ON DELETE CASCADE
);

CREATE TABLE `trig` (
	`trig_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`u_id`	VARCHAR(50)	NOT NULL,
	`title`	VARCHAR(100)	NULL,
	`content`	VARCHAR(500)	NULL,
	`link`	VARCHAR(200)	NULL,
	`keyword`	VARCHAR(100)	NULL,
	`p_id`	INT(11) UNSIGNED	NULL,
	`department`	VARCHAR(45)	NULL,
	`updateDate`	VARCHAR(45)	NULL,
	`idx`	VARCHAR(45)	NULL,
	`category`	VARCHAR(45)	NULL,
	PRIMARY KEY (trig_id),
	FOREIGN KEY (p_id) REFERENCES page (p_id) ON DELETE CASCADE,
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE
);

CREATE TABLE `sessions` (
	`session_id`	VARCHAR(128)	NOT NULL,
	`expires`	INT(11) UNSIGNED	NULL,
	`data`	MEDIUMTEXT	NULL,
	PRIMARY KEY (`session_id`)
);

INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/eng/community/notice.jsp','공과대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/it/community/community01.jsp','정보통신대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://ns.ajou.ac.kr/ns/board/board01.jsp','자연과학대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://ns.ajou.ac.kr/ns/board/board01.jsp','정보통신대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/it/community/community01.jsp','경영대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','인문대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/coss/community/community01.jsp','사회과학대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ts.ajoumc.or.kr/Board/Retrieve.aspx?smpc=UH00100006&ssc=0010&ssgc=UH&mc=UH00100033','의과대학');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://isa.ajou.ac.kr/isa/community/community03.jsp','국제학부');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://cie.ajou.ac.kr/me/board/board01.jsp','기계공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/ie/board/board01.jsp','산업공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/chembio/board/board01.jsp','응용화학생명공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://che.ajou.ac.kr/che/community/community03.jsp','화학공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://eng.ajou.ac.kr/mse/board/board03.jsp','신소재공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/env/board/board03.jsp','환경안전공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/ce/board/board03.jsp','건설시스템공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://tse.ajou.ac.kr/tse/board/board03.jsp','교통시스템공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://arch.ajou.ac.kr/arch/board/board01.jsp','건축학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ise.ajou.ac.kr/ise/board/notice.jsp','융합시스템공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://mdc.ajou.ac.kr/mdc/index.jsp','국방디지털융합과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ece.ajou.ac.kr/ece/board/board01.jsp','전자공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://math.ajou.ac.kr/math/board/board01.jsp','수학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/media/board/board01.jsp','미디어학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://security.ajou.ac.kr/security/board/board01.jsp','사이버보안학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://software.ajou.ac.kr/bbs/board.php?tbl=notice','소프트웨어학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ns.ajou.ac.kr/biolog/board/board01.jsp','생명과학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://physics.ajou.ac.kr/physics/board/board01.jsp','물리학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ns.ajou.ac.kr/chem/community/community01.jsp','화학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://biz.ajou.ac.kr/gb/info/08.jsp','글로벌경영학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://fe.ajou.ac.kr/fe/board/research01.jsp','금융공학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://biz.ajou.ac.kr/ebiz/board/board01.jsp','e비즈니스학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://biz.ajou.ac.kr/biz/community/community01.jsp','경영학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/culture/board/board01.jsp','문화콘텐츠학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/history/board/board01.jsp','사학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/france/community/community04.jsp','불어불문학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','영어영문학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','국어국문학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/slez/community/community03.jsp','스포츠레저학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/pol/community/community04.jsp','정치외교학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/soci/community/community03.jsp','사회학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://apsy.ajou.ac.kr/apsy/community/community04.jsp','심리학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/pba/community/community03.jsp','행정학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://econ.ajou.ac.kr/econ/community/community03.jsp','경제학과');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://medicine.ajou.ac.kr/fr_community/sub_06_01','의학과');
