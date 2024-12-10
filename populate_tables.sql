-- populate card table
INSERT IGNORE INTO card (id, card_reference) VALUES
                  (1, 'card_ref_001'),
                  (2, 'card_ref_002'),
                  (3, 'card_ref_003'),
                  (4, 'card_ref_004'),
                  (5, 'card_ref_005'),
                  (6, 'card_ref_006'),
                  (7, 'card_ref_007'),
                  (8, 'card_ref_008'),
                  (9, 'card_ref_009'),
                  (10, 'card_ref_010'),
                  (11, 'card_ref_011'),
                  (12, 'card_ref_012'),
                  (13, 'card_ref_013'),
                  (14, 'card_ref_014'),
                  (15, 'card_ref_015');

DELETE FROM reservation WHERE TRUE;
ALTER TABLE reservation AUTO_INCREMENT = 1;
DELETE FROM `table` WHERE TRUE;
ALTER TABLE `table` AUTO_INCREMENT = 1;
-- populate table table
INSERT INTO `table` (table_size)
VALUES
    (2), (4), (6), (8),
    (2), (4), (6), (8),
    (2), (4), (6), (8),
    (2), (4), (6), (8),
    (2), (4), (6), (8);

-- populate open_hours table
INSERT IGNORE INTO open_hours (day_of_week, open_time, close_time)
VALUES
    ('Monday', '08:00:00', '22:00:00'),
    ('Tuesday', '08:00:00', '22:00:00'),
    ('Wednesday', '08:00:00', '22:00:00'),
    ('Thursday', '08:00:00', '22:00:00'),
    ('Friday', '08:00:00', '23:00:00'),
    ('Saturday', '10:00:00', '23:00:00'),
    ('Sunday', '10:00:00', '20:00:00');

DELETE FROM customer WHERE TRUE;
ALTER TABLE customer AUTO_INCREMENT = 1;

-- populate customer table
INSERT INTO `customer` (first_name, last_name, phone, email, address, City, State)
VALUES
                            ('Aaron','Zalmon','(801)000-0000','aaron_zalmon@mail.com','0 West 0 North','Salt Lake City','Utah'),
                            ('Baron','Yalmon','(801)001-0001','baron_yalmon@mail.com','10 West 10 North','Salt Lake City','Utah'),
                            ('Caron','Xalmon','(801)002-0002','caron_xalmon@mail.com','20 West 20 North','Salt Lake City','Utah'),
                            ('Daron','Walmon','(801)003-0003','daron_walmon@mail.com','30 West 30 North','Salt Lake City','Utah'),
                            ('Earon','Valmon','(801)004-0004','earon_valmon@mail.com','40 West 40 North','Salt Lake City','Utah'),
                            ('Faron','Ualmon','(801)005-0005','faron_ualmon@mail.com','50 West 50 North','Salt Lake City','Utah'),
                            ('Garon','Talmon','(801)006-0006','garon_talmon@mail.com','60 West 60 North','Salt Lake City','Utah'),
                            ('Haron','Salmon','(801)007-0007','haron_salmon@mail.com','70 West 70 North','Salt Lake City','Utah'),
                            ('Iaron','Ralmon','(801)010-0010','iaron_ralmon@mail.com','80 West 80 North','Salt Lake City','Utah'),
                            ('Jaron','Qalmon','(801)011-0011','jaron_qalmon@mail.com','90 West 90 North','Salt Lake City','Utah'),
                            ('Karon','Palmon','(801)012-0012','karon_palmon@mail.com','100 West 100 North','Salt Lake City','Utah'),
                            ('Laron','Oalmon','(801)013-0013','laron_oalmon@mail.com','110 West 110 North','Salt Lake City','Utah'),
                            ('Maron','Nalmon','(801)014-0014','maron_nalmon@mail.com','120 West 120 North','Salt Lake City','Utah'),
                            ('Naron','Malmon','(801)015-0015','naron_malmon@mail.com','130 West 130 North','Salt Lake City','Utah'),
                            ('Oaron','Lalmon','(801)016-0016','oaron_lalmon@mail.com','140 West 140 North','Salt Lake City','Utah'),
                            ('Paron','Kalmon','(801)017-0017','paron_kalmon@mail.com','150 West 150 North','Salt Lake City','Utah'),
                            ('Qaron','Jalmon','(801)020-0020','qaron_jalmon@mail.com','160 West 160 North','Salt Lake City','Utah'),
                            ('Raron','Ialmon','(801)021-0021','raron_ialmon@mail.com','170 West 170 North','Salt Lake City','Utah'),
                            ('Saron','Halmon','(801)022-0022','saron_halmon@mail.com','180 West 180 North','Salt Lake City','Utah'),
                            ('Taron','Galmon','(801)023-0023','taron_galmon@mail.com','190 West 190 North','Salt Lake City','Utah'),
                            ('Uaron','Falmon','(801)024-0024','uaron_falmon@mail.com','200 West 200 North','Salt Lake City','Utah'),
                            ('Varon','Ealmon','(801)025-0025','varon_ealmon@mail.com','210 West 210 North','Salt Lake City','Utah'),
                            ('Waron','Dalmon','(801)026-0026','waron_dalmon@mail.com','220 West 220 North','Salt Lake City','Utah'),
                            ('Xaron','Calmon','(801)027-0027','xaron_calmon@mail.com','230 West 230 North','Salt Lake City','Utah'),
                            ('Yaron','Balmon','(801)030-0030','yaron_balmon@mail.com','240 West 240 North','Salt Lake City','Utah'),
                            ('Zaron','Aalmon','(801)031-0031','zaron_aalmon@mail.com','250 West 250 North','Salt Lake City','Utah'),
                            ('aaronz','Zalmona','(801)032-0032','aaronz_zalmona@mail.com','260 West 260 North','Salt Lake City','Utah'),
                            ('aarony','Zalmonb','(801)033-0033','aarony_zalmonb@mail.com','270 West 270 North','Salt Lake City','Utah'),
                            ('aaronx','Zalmonc','(801)034-0034','aaronx_zalmonc@mail.com','280 West 280 North','Salt Lake City','Utah'),
                            ('aaronw','Zalmond','(801)035-0035','aaronw_zalmond@mail.com','290 West 290 North','Salt Lake City','Utah'),
                            ('aaronv','Zalmone','(801)036-0036','aaronv_zalmone@mail.com','300 West 300 North','Salt Lake City','Utah'),
                            ('aaronu','Zalmonf','(801)037-0037','aaronu_zalmonf@mail.com','310 West 310 North','Salt Lake City','Utah'),
                            ('aaront','Zalmong','(801)040-0040','aaront_zalmong@mail.com','320 West 320 North','Salt Lake City','Utah'),
                            ('aarons','Zalmonh','(801)041-0041','aarons_zalmonh@mail.com','330 West 330 North','Salt Lake City','Utah'),
                            ('aaronr','Zalmoni','(801)042-0042','aaronr_zalmoni@mail.com','340 West 340 North','Salt Lake City','Utah'),
                            ('aaronq','Zalmonj','(801)043-0043','aaronq_zalmonj@mail.com','350 West 350 North','Salt Lake City','Utah'),
                            ('aaronp','Zalmonk','(801)044-0044','aaronp_zalmonk@mail.com','360 West 360 North','Salt Lake City','Utah'),
                            ('aarono','Zalmonl','(801)045-0045','aarono_zalmonl@mail.com','370 West 370 North','Salt Lake City','Utah'),
                            ('aaronn','Zalmonm','(801)046-0046','aaronn_zalmonm@mail.com','380 West 380 North','Salt Lake City','Utah'),
                            ('aaronm','Zalmonn','(801)047-0047','aaronm_zalmonn@mail.com','390 West 390 North','Salt Lake City','Utah'),
                            ('aaronl','Zalmono','(801)050-0050','aaronl_zalmono@mail.com','400 West 400 North','Salt Lake City','Utah'),
                            ('aaronk','Zalmonp','(801)051-0051','aaronk_zalmonp@mail.com','410 West 410 North','Salt Lake City','Utah'),
                            ('aaronj','Zalmonq','(801)052-0052','aaronj_zalmonq@mail.com','420 West 420 North','Salt Lake City','Utah'),
                            ('aaroni','Zalmonr','(801)053-0053','aaroni_zalmonr@mail.com','430 West 430 North','Salt Lake City','Utah'),
                            ('aaronh','Zalmons','(801)054-0054','aaronh_zalmons@mail.com','440 West 440 North','Salt Lake City','Utah'),
                            ('aarong','Zalmont','(801)055-0055','aarong_zalmont@mail.com','450 West 450 North','Salt Lake City','Utah'),
                            ('aaronf','Zalmonu','(801)056-0056','aaronf_zalmonu@mail.com','460 West 460 North','Salt Lake City','Utah'),
                            ('aarone','Zalmonv','(801)057-0057','aarone_zalmonv@mail.com','470 West 470 North','Salt Lake City','Utah'),
                            ('aarond','Zalmonw','(801)060-0060','aarond_zalmonw@mail.com','480 West 480 North','Salt Lake City','Utah'),
                            ('aaronc','Zalmonx','(801)061-0061','aaronc_zalmonx@mail.com','490 West 490 North','Salt Lake City','Utah'),
                            ('aaronb','Zalmony','(801)062-0062','aaronb_zalmony@mail.com','500 West 500 North','Salt Lake City','Utah'),
                            ('aarona','Zalmonz','(801)063-0063','aarona_zalmonz@mail.com','510 West 510 North','Salt Lake City','Utah'),
                            ('Baronz','Yalmona','(801)033-0033','baronz_yalmona@mail.com','270 West 270 North','Salt Lake City','Utah'),
                            ('Barony','Yalmonb','(801)034-0034','barony_yalmonb@mail.com','280 West 280 North','Salt Lake City','Utah'),
                            ('Baronx','Yalmonc','(801)035-0035','baronx_yalmonc@mail.com','290 West 290 North','Salt Lake City','Utah'),
                            ('Baronw','Yalmond','(801)036-0036','baronw_yalmond@mail.com','300 West 300 North','Salt Lake City','Utah'),
                            ('Baronv','Yalmone','(801)037-0037','baronv_yalmone@mail.com','310 West 310 North','Salt Lake City','Utah'),
                            ('Baronu','Yalmonf','(801)040-0040','baronu_yalmonf@mail.com','320 West 320 North','Salt Lake City','Utah'),
                            ('Baront','Yalmong','(801)041-0041','baront_yalmong@mail.com','330 West 330 North','Salt Lake City','Utah'),
                            ('Barons','Yalmonh','(801)042-0042','barons_yalmonh@mail.com','340 West 340 North','Salt Lake City','Utah'),
                            ('Baronr','Yalmoni','(801)043-0043','baronr_yalmoni@mail.com','350 West 350 North','Salt Lake City','Utah'),
                            ('Baronq','Yalmonj','(801)044-0044','baronq_yalmonj@mail.com','360 West 360 North','Salt Lake City','Utah'),
                            ('Baronp','Yalmonk','(801)045-0045','baronp_yalmonk@mail.com','370 West 370 North','Salt Lake City','Utah'),
                            ('Barono','Yalmonl','(801)046-0046','barono_yalmonl@mail.com','380 West 380 North','Salt Lake City','Utah'),
                            ('Baronn','Yalmonm','(801)047-0047','baronn_yalmonm@mail.com','390 West 390 North','Salt Lake City','Utah'),
                            ('Baronm','Yalmonn','(801)050-0050','baronm_yalmonn@mail.com','400 West 400 North','Salt Lake City','Utah'),
                            ('Baronl','Yalmono','(801)051-0051','baronl_yalmono@mail.com','410 West 410 North','Salt Lake City','Utah'),
                            ('Baronk','Yalmonp','(801)052-0052','baronk_yalmonp@mail.com','420 West 420 North','Salt Lake City','Utah'),
                            ('Baronj','Yalmonq','(801)053-0053','baronj_yalmonq@mail.com','430 West 430 North','Salt Lake City','Utah'),
                            ('Baroni','Yalmonr','(801)054-0054','baroni_yalmonr@mail.com','440 West 440 North','Salt Lake City','Utah'),
                            ('Baronh','Yalmons','(801)055-0055','baronh_yalmons@mail.com','450 West 450 North','Salt Lake City','Utah'),
                            ('Barong','Yalmont','(801)056-0056','barong_yalmont@mail.com','460 West 460 North','Salt Lake City','Utah'),
                            ('Baronf','Yalmonu','(801)057-0057','baronf_yalmonu@mail.com','470 West 470 North','Salt Lake City','Utah'),
                            ('Barone','Yalmonv','(801)060-0060','barone_yalmonv@mail.com','480 West 480 North','Salt Lake City','Utah'),
                            ('Barond','Yalmonw','(801)061-0061','barond_yalmonw@mail.com','490 West 490 North','Salt Lake City','Utah'),
                            ('Baronc','Yalmonx','(801)062-0062','baronc_yalmonx@mail.com','500 West 500 North','Salt Lake City','Utah'),
                            ('Baronb','Yalmony','(801)063-0063','baronb_yalmony@mail.com','510 West 510 North','Salt Lake City','Utah'),
                            ('Barona','Yalmonz','(801)064-0064','barona_yalmonz@mail.com','520 West 520 North','Salt Lake City','Utah'),
                            ('Caronz','Xalmona','(801)065-0065','caronz_xalmona@mail.com','530 West 530 North','Salt Lake City','Utah'),
                            ('Carony','Xalmonb','(801)066-0066','carony_xalmonb@mail.com','540 West 540 North','Salt Lake City','Utah'),
                            ('Caronx','Xalmonc','(801)067-0067','caronx_xalmonc@mail.com','550 West 550 North','Salt Lake City','Utah'),
                            ('Caronw','Xalmond','(801)070-0070','caronw_xalmond@mail.com','560 West 560 North','Salt Lake City','Utah'),
                            ('Caronv','Xalmone','(801)071-0071','caronv_xalmone@mail.com','570 West 570 North','Salt Lake City','Utah'),
                            ('Caronu','Xalmonf','(801)072-0072','caronu_xalmonf@mail.com','580 West 580 North','Salt Lake City','Utah'),
                            ('Caront','Xalmong','(801)073-0073','caront_xalmong@mail.com','590 West 590 North','Salt Lake City','Utah'),
                            ('Carons','Xalmonh','(801)074-0074','carons_xalmonh@mail.com','600 West 600 North','Salt Lake City','Utah'),
                            ('Caronr','Xalmoni','(801)075-0075','caronr_xalmoni@mail.com','610 West 610 North','Salt Lake City','Utah'),
                            ('Caronq','Xalmonj','(801)076-0076','caronq_xalmonj@mail.com','620 West 620 North','Salt Lake City','Utah'),
                            ('Caronp','Xalmonk','(801)077-0077','caronp_xalmonk@mail.com','630 West 630 North','Salt Lake City','Utah'),
                            ('Carono','Xalmonl','(801)100-0100','carono_xalmonl@mail.com','640 West 640 North','Salt Lake City','Utah'),
                            ('Caronn','Xalmonm','(801)101-0101','caronn_xalmonm@mail.com','650 West 650 North','Salt Lake City','Utah'),
                            ('Caronm','Xalmonn','(801)102-0102','caronm_xalmonn@mail.com','660 West 660 North','Salt Lake City','Utah'),
                            ('Caronl','Xalmono','(801)103-0103','caronl_xalmono@mail.com','670 West 670 North','Salt Lake City','Utah'),
                            ('Caronk','Xalmonp','(801)104-0104','caronk_xalmonp@mail.com','680 West 680 North','Salt Lake City','Utah'),
                            ('Caronj','Xalmonq','(801)105-0105','caronj_xalmonq@mail.com','690 West 690 North','Salt Lake City','Utah'),
                            ('Caroni','Xalmonr','(801)106-0106','caroni_xalmonr@mail.com','700 West 700 North','Salt Lake City','Utah'),
                            ('Caronh','Xalmons','(801)107-0107','caronh_xalmons@mail.com','710 West 710 North','Salt Lake City','Utah'),
                            ('Carong','Xalmont','(801)110-0110','carong_xalmont@mail.com','720 West 720 North','Salt Lake City','Utah'),
                            ('Caronf','Xalmonu','(801)111-0111','caronf_xalmonu@mail.com','730 West 730 North','Salt Lake City','Utah'),
                            ('Carone','Xalmonv','(801)112-0112','carone_xalmonv@mail.com','740 West 740 North','Salt Lake City','Utah'),
                            ('Carond','Xalmonw','(801)113-0113','carond_xalmonw@mail.com','750 West 750 North','Salt Lake City','Utah'),
                            ('Caronc','Xalmonx','(801)114-0114','caronc_xalmonx@mail.com','760 West 760 North','Salt Lake City','Utah'),
                            ('Caronb','Xalmony','(801)115-0115','caronb_xalmony@mail.com','770 West 770 North','Salt Lake City','Utah'),
                            ('Carona','Xalmonz','(801)116-0116','carona_xalmonz@mail.com','780 West 780 North','Salt Lake City','Utah');


-- populate reservation table
CALL make_reservation(1, '2024-12-06 08:00:00', 6, 1);
CALL make_reservation(2, '2024-12-06 08:15:00', 4, 2);
CALL make_reservation(3, '2024-12-06 10:00:00', 8, 3);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(4, '2024-12-06 14:00:00', 2, 4);
CALL make_reservation(5, '2024-12-06 16:00:00', 6, 5);
CALL make_reservation(6, '2024-12-06 18:00:00', 4, 6);
CALL make_reservation(7, '2024-12-06 20:00:00', 8, 7);
CALL make_reservation(7, '2024-12-06 20:00:00', 8, 7);
CALL make_reservation(7, '2024-12-06 20:00:00', 8, 7);
CALL make_reservation(7, '2024-12-06 20:00:00', 8, 7);
