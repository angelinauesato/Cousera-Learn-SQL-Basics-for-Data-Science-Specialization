-- Using mode.com platform to retrieve all the answers for this module.
/* Exercise 1:
Goal: Here we use users table to pull a list of user email addresses. Edit the query to pull email
addresses, but only for non-deleted users.
*/

-- Query returning all the email address of non-deleted users
SELECT email_address FROM dsv1069.users WHERE deleted_at is NULL

-- Quantity of users
SELECT COUNT(*) FROM dsv1069.users;
-- 117178

-- Quantity of non-deleted users
SELECT COUNT(*)
FROM dsv1069.users WHERE deleted_at is NULL;
-- 114290

/*
Exercise 2:
--Goal: Use the items table to count the number of items for sale in each category
*/
 SELECT i.category, COUNT(i.id) FROM dsv1069.items i
 GROUP BY i.category;
-- Results:
-- category  - count
-- dongle -	211
-- contraption -	206
-- instrument -	239
-- tool   -	222
-- apparatus  -	207
-- mechanism - 	225
-- widget -	212
-- device -	216
-- gadget -	233
-- module -	227
/*
Exercise 3:
--Goal: Select all of the columns from the result when you JOIN the users table to the orders table
*/

SELECT * FROM dsv1069.orders o
INNER JOIN dsv1069.users u ON o.user_id = u.id;

-- Results:
invoice_id	line_item_id	user_id	item_id	item_name	item_category	price	created_at_duplicate_column_name_1	paid_at	created_at	deleted_at	email_address	first_name	id	last_name	merged_at	parent_user_id
225682	340168	158891	920	fuzzy apparatus opener	apparatus	150	2017-03-18 22:38:13	2017-03-19 13:10:44	2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber
225682	345073	158891	85	reflective apparatus	apparatus	390	2017-03-18 22:38:13	2017-03-19 13:10:44	2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber
225682	266169	158891	93	reflective apparatus wrapper	apparatus	156	2017-03-18 22:38:13	2017-03-19 13:10:44	2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber
225682	148386	158891	2720	rechargable apparatus	apparatus	390	2017-03-18 22:38:13	2017-03-19 13:10:44	2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber
229848	59244	93994	3629	digital apparatus opener	apparatus	165	2016-02-18 04:30:15	2016-02-20 15:08:49	2015-10-24 16:27:27		SNovak1966@mail.com	S	93994	Novak
229848	94696	93994	3360	apparatus opener	apparatus	150	2016-02-18 04:30:15	2016-02-20 15:08:49	2015-10-24 16:27:27		SNovak1966@mail.com	S	93994	Novak
88655	287644	64712	137	organic dongle refill	dongle	36	2015-09-05 09:37:12	2015-09-07 01:07:35	2015-03-29 09:38:01		D_Powell1991@yahoo.edu	D	64712	Powell
272561	397449	196712	1730	matte contraption	contraption	312.5	2017-10-08 04:03:50	2017-10-07 20:35:09	2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar
272561	21181	196712	3376	rechargable contraption	contraption	325	2017-10-08 04:03:50	2017-10-07 20:35:09	2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar
272561	362396	196712	2256	matte contraption storage_unit	contraption	781.25	2017-10-08 04:03:50	2017-10-07 20:35:09	2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar
272561	56549	196712	2580	analog contraption	contraption	225	2017-10-08 04:03:50	2017-10-07 20:35:09	2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar
345139	65410	196460	3937	industrial-strength contraption wrapper	contraption	300	2017-07-26 20:40:30	2017-07-25 23:22:35	2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan
345139	375647	196460	3109	glossy contraption	contraption	300	2017-07-26 20:40:30	2017-07-25 23:22:35	2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan
345139	395073	196460	1204	fuzzy contraption	contraption	250	2017-07-26 20:40:30	2017-07-25 23:22:35	2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan
345139	123019	196460	2363	digital contraption wrapper	contraption	110	2017-07-26 20:40:30	2017-07-25 23:22:35	2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan
51732	230446	26445	963	device	device	50	2014-06-12 15:16:04	2014-06-12 04:02:25	2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown
51732	169133	26445	1862	fuzzy device	device	50	2014-06-12 15:16:04	2014-06-12 04:02:25	2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown
51732	277805	26445	3219	extra-strength device charger	device	20	2014-06-12 15:16:04	2014-06-12 04:02:25	2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown
51732	131051	26445	854	fuzzy device carrying_case	device	30	2014-06-12 15:16:04	2014-06-12 04:02:25	2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown
69297	65641	171657	2395	aerodynamic dongle	dongle	42	2017-06-14 09:27:44	2017-06-16 21:54:33	2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury
69297	54956	171657	1698	extra-strength dongle storage_unit	dongle	150	2017-06-14 09:27:44	2017-06-16 21:54:33	2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury
69297	383638	171657	2865	prize-winning dongle how-to-manual	dongle	0	2017-06-14 09:27:44	2017-06-16 21:54:33	2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury
69297	13146	171657	3082	aerodynamic dongle cleaner	dongle	25.2	2017-06-14 09:27:44	2017-06-16 21:54:33	2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury
254237	260420	185769	1100	fuzzy contraption charger	contraption	50	2017-04-26 07:08:47	2017-04-26 12:15:09	2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand
254237	46540	185769	3932	reflective contraption refill	contraption	260	2017-04-26 07:08:47	2017-04-26 12:15:09	2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand
254237	207391	185769	3109	glossy contraption	contraption	300	2017-04-26 07:08:47	2017-04-26 12:15:09	2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand
172032	72347	148813	3799	miniature tool	tool	13.750000000000002	2017-01-08 05:52:21	2017-01-08 23:56:08	2016-08-26 17:12:58		SSokolov1992@yahoo.info	S	148813	Sokolov
237635	209181	128320	3016	glossy dongle wrapper	dongle	14.4	2016-07-03 01:12:55	2016-07-04 22:41:40	2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski
237635	14263	128320	215	prize-winning dongle how-to-manual	dongle	0	2016-07-03 01:12:55	2016-07-04 22:41:40	2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski
334870	360130	128320	362	fuzzy tool refill	tool	20	2016-06-11 12:17:13	2016-06-10 00:48:51	2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski
334870	341268	128320	3449	analog tool warmer	tool	24.750000000000004	2016-06-11 12:17:13	2016-06-10 00:48:51	2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski
334870	236278	128320	2423	extra-strength tool how-to-manual	tool	0	2016-06-11 12:17:13	2016-06-10 00:48:51	2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski
172645	137849	135205	1799	rechargable mechanism	mechanism	19.5	2016-12-04 00:52:13	2016-12-05 21:29:55	2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan
172645	328219	135205	122	digital mechanism carrying_case	mechanism	9.9	2016-12-04 00:52:13	2016-12-05 21:29:55	2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan
172645	388758	135205	2504	reflective mechanism charger	mechanism	3.9	2016-12-04 00:52:13	2016-12-05 21:29:55	2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan
241305	350562	20583	2599	organic device charger	device	15	2014-03-23 03:49:36	2014-03-21 09:56:43	2014-03-20 09:00:10		Peter_Chen@mail.biz	Peter	20583	Chen
241305	29904	20583	3413	reflective device	device	65	2014-03-23 03:49:36	2014-03-21 09:56:43	2014-03-20 09:00:10		Peter_Chen@mail.biz	Peter	20583	Chen
368649	103763	119815	87	rechargable gadget how-to-manual	gadget	0	2016-09-18 02:02:17	2016-09-20 06:32:36	2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot
368649	254242	119815	2857	industrial-strength gadget	gadget	267	2016-09-18 02:02:17	2016-09-20 06:32:36	2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot
368649	63524	119815	3496	reflective dongle	dongle	39	2016-09-18 02:02:17	2016-09-20 06:32:36	2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot
368649	306414	119815	3468	reflective contraption	contraption	325	2016-09-18 02:02:17	2016-09-20 06:32:36	2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot
23120	311214	21514	612	industrial-strength instrument carrying_case	instrument	79.19999999999997	2014-04-04 11:58:35	2014-04-04 02:57:19	2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace
23120	60272	21514	702	industrial-strength tool opener	tool	37.5	2014-04-04 11:58:35	2014-04-04 02:57:19	2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace
23120	281136	21514	182	reflective widget	widget	3.9	2014-04-04 11:58:35	2014-04-04 02:57:19	2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace
23120	60820	21514	367	rechargable contraption	contraption	325	2014-04-04 11:58:35	2014-04-04 02:57:19	2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace
267306	399859	263066	3416	aerodynamic gadget opener	gadget	62.3	2018-01-10 15:19:28	2018-01-10 07:16:39	2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen
267306	367685	263066	2116	glossy gadget storage_unit	gadget	267	2018-01-10 15:19:28	2018-01-10 07:16:39	2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen
267306	366246	263066	3673	extra-strength gadget	gadget	178	2018-01-10 15:19:28	2018-01-10 07:16:39	2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen
267306	266532	263066	2176	industrial-strength gadget	gadget	267	2018-01-10 15:19:28	2018-01-10 07:16:39	2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen
156838	12010	204792	828	glossy device warmer	device	66	2017-10-15 17:25:09	2017-10-13 23:49:19	2017-05-06 00:37:33		EmilyHuang1966@gmail.edu	Emily	204792	Huang
156838	18338	204792	2730	glossy device	device	60	2017-10-15 17:25:09	2017-10-13 23:49:19	2017-05-06 00:37:33		EmilyHuang1966@gmail.edu	Emily	204792	Huang
227631	261141	75151	214	analog device how-to-manual	device	0	2015-09-01 18:40:08	2015-09-01 21:11:32	2015-06-06 14:16:39		Ariel_Powell1986@outlook.info	Ariel	75151	Powell
9043	249225	127828	2446	industrial-strength module	module	300	2016-07-06 15:22:18	2016-07-07 03:13:14	2016-04-19 15:57:24		AnneComputer@outlook.biz	Anne	127828	Computer
9043	139809	127828	565	fuzzy module cleaner	module	60	2016-07-06 15:22:18	2016-07-07 03:13:14	2016-04-19 15:57:24		AnneComputer@outlook.biz	Anne	127828	Computer
112816	162731	71798	1853	matte dongle	dongle	37.5	2015-06-10 07:22:23	2015-06-10 08:17:38	2015-05-27 14:13:41		SakuraPowell@yahoo.com	Sakura	71798	Powell
60057	115506	39758	3248	contraption refill	contraption	200	2014-12-04 01:06:27	2014-12-03 02:53:30	2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin
60057	59171	39758	3585	matte contraption	contraption	312.5	2014-12-04 01:06:27	2014-12-03 02:53:30	2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin
60057	105830	39758	1461	organic contraption refill	contraption	300	2014-12-04 01:06:27	2014-12-03 02:53:30	2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin
60057	68244	39758	2747	contraption charger	contraption	50	2014-12-04 01:06:27	2014-12-03 02:53:30	2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin
103631	248175	9442	3673	extra-strength gadget	gadget	178	2014-02-06 03:19:00	2014-02-06 20:38:15	2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan
103631	49082	9442	3992	reflective gadget	gadget	115.7	2014-02-06 03:19:00	2014-02-06 20:38:15	2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan
103631	45317	9442	699	analog gadget opener	gadget	40.05	2014-02-06 03:19:00	2014-02-06 20:38:15	2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan
261798	272875	32754	3271	miniature instrument refill	instrument	19.360000000000007	2014-11-07 07:18:52	2014-11-07 03:19:39	2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar
261798	387206	32754	3417	matte instrument	instrument	55	2014-11-07 07:18:52	2014-11-07 03:19:39	2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar
261798	170177	32754	3250	fuzzy instrument how-to-manual	instrument	0	2014-11-07 07:18:52	2014-11-07 03:19:39	2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar
205291	338850	292706	3316	industrial-strength widget storage_unit	widget	22.5	2018-05-28 13:03:11	2018-05-27 20:58:35	2018-05-21 03:20:41		Omar_Martin@mail.info	Omar	292706	Martin
205291	259981	292706	1880	widget	widget	3	2018-05-28 13:03:11	2018-05-27 20:58:35	2018-05-21 03:20:41		Omar_Martin@mail.info	Omar	292706	Martin
113826	362911	206694	58	organic tool refill	tool	30	2017-11-25 05:29:25	2017-11-24 12:13:57	2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos
113826	257692	206694	1441	fuzzy tool wrapper	tool	10	2017-11-25 05:29:25	2017-11-24 12:13:57	2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos
113826	255036	206694	2672	prize-winning tool refill	tool	22	2017-11-25 05:29:25	2017-11-24 12:13:57	2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos
234803	205116	146527	1410	prize-winning mechanism refill	mechanism	13.2	2016-11-15 18:49:26	2016-11-14 21:04:53	2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz
234803	253062	146527	1235	organic mechanism	mechanism	22.5	2016-11-15 18:49:26	2016-11-14 21:04:53	2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz
234803	131072	146527	2959	digital mechanism wrapper	mechanism	6.6000000000000005	2016-11-15 18:49:26	2016-11-14 21:04:53	2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz
234803	228517	146527	2348	rechargable mechanism	mechanism	19.5	2016-11-15 18:49:26	2016-11-14 21:04:53	2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz
297900	233243	213575	63	miniature device how-to-manual	device	0	2017-07-12 20:40:03	2017-07-13 01:16:06	2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou
297900	337346	213575	2444	aerodynamic device cleaner	device	42	2017-07-12 20:40:03	2017-07-13 01:16:06	2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou
297900	361689	213575	963	device	device	50	2017-07-12 20:40:03	2017-07-13 01:16:06	2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou
297900	163115	213575	3053	fuzzy device	device	50	2017-07-12 20:40:03	2017-07-13 01:16:06	2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou
48604	198581	12791	3964	reflective device storage_unit	device	162.5	2014-01-07 16:19:14	2014-01-10 10:46:34	2013-12-17 04:37:21		Victoria_Tamm@gmail.info	Victoria	12791	Tamm
254192	113185	216120	1180	extra-strength module cleaner	module	120	2017-08-12 09:02:51	2017-08-12 13:48:46	2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang
254192	311797	216120	994	industrial-strength module	module	300	2017-08-12 09:02:51	2017-08-12 13:48:46	2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang
254192	314003	216120	1576	glossy module wrapper	module	48	2017-08-12 09:02:51	2017-08-12 13:48:46	2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang
254192	204729	216120	3792	module warmer	module	110	2017-08-12 09:02:51	2017-08-12 13:48:46	2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang
263083	300442	23477	297	prize-winning tool wrapper	tool	11	2014-06-08 07:40:44	2014-06-07 09:12:59	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
263083	340740	23477	2199	aerodynamic tool carrying_case	tool	21	2014-06-08 07:40:44	2014-06-07 09:12:59	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
263083	373053	23477	1384	matte tool charger	tool	6.25	2014-06-08 07:40:44	2014-06-07 09:12:59	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
310357	367440	23477	940	reflective widget	widget	3.9	2014-05-30 22:36:23	2014-06-02 17:47:02	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
310357	144446	23477	2496	extra-strength widget opener	widget	3	2014-05-30 22:36:23	2014-06-02 17:47:02	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
332902	276874	23477	3067	matte tool warmer	tool	34.37500000000001	2014-09-19 22:33:34	2014-09-17 23:07:33	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
332902	200514	23477	1683	industrial-strength tool carrying_case	tool	45	2014-09-19 22:33:34	2014-09-17 23:07:33	2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami
158875	307673	213165	2549	aerodynamic tool	tool	35	2017-09-14 05:17:31	2017-09-14 10:14:26	2017-06-27 07:36:29		Davit_Saito@earthlink.net	Davit	213165	Saito
158875	155365	213165	725	tool wrapper	tool	10	2017-09-14 05:17:31	2017-09-14 10:14:26	2017-06-27 07:36:29		Davit_Saito@earthlink.net	Davit	213165	Saito
113279	226277	47400	3846	digital gadget opener	gadget	48.95	2015-05-21 09:53:26	2015-05-21 02:01:56	2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen
316091	216841	47400	485	contraption	contraption	250	2015-02-23 07:58:53	2015-02-22 04:27:29	2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen
316091	220238	47400	60	fuzzy contraption warmer	contraption	275	2015-02-23 07:58:53	2015-02-22 04:27:29	2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen
316091	80907	47400	2512	fuzzy contraption carrying_case	contraption	150	2015-02-23 07:58:53	2015-02-22 04:27:29	2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen
316091	168820	47400	19	fuzzy contraption refill	contraption	200	2015-02-23 07:58:53	2015-02-22 04:27:29	2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen
207687	185298	151972	0	reflective widget charger	widget	0.7800000000000001	2016-09-22 17:42:43	2016-09-23 22:39:57	2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster
360907	313641	151972	3197	analog contraption	contraption	225	2017-02-04 09:55:27	2017-02-05 22:58:31	2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster
360907	182531	151972	2968	aerodynamic contraption charger	contraption	70	2017-02-04 09:55:27	2017-02-05 22:58:31	2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster

/*
-- Exercise 4:
-- Goal: Check out the query below. This is not the right way to count the number of viewed_item events. Determine what is wrong and correct the error.
*/

-- with error:
SELECT
COUNT(event_id) AS events
FROM dsv1069.events
WHERE event_name = ‘view_item’;

-- Correct one

SELECT  COUNT( DISTINCT event_id) AS events
FROM dsv1069.events
WHERE event_name = 'view_item';
-- Results: 525572

-- This is why the query is wrong
SELECT event_id, COUNT(event_id)
FROM dsv1069.events
GROUP BY event_id;

/*
-- Exercise 5:
-- Goal:Compute the number of items in the items table which have been ordered. The query
-- below runs, but it isn’t right. Determine what is wrong and correct the error or start from scratch.
*/

-- Starter Code:
SELECT
COUNT(item_id) as item_count
FROM dsv1069.orders
INNER JOIN dsv1069.items ON orders.item_id = items.id

-- Why it's wrong
-- SELECT COUNT(*) FROM dsv1069.items; -- 2198
SELECT
COUNT(DISTINCT o.item_id) as item_count
FROM dsv1069.items i
INNER JOIN dsv1069.orders o ON i.id = o.item_id --2198

-- OR
SELECT
COUNT(DISTINCT o.item_id) as item_count
FROM dsv1069.orders o;

/*
-- Exercise 6:
-- Goal: For each user figure out IF a user has ordered something, and when their first purchase
-- was. The query below doesn’t return info for any of the users who haven’t ordered anything.
*/

-- Starter Code:

SELECT users.id as user_id, MIN(orders.paid_at) AS min_paid_at
FROM dsv1069.orders
INNER JOIN dsv1069.users ON orders.user_id = users.id
GROUP BY users.id


-- Answer: This way will bring users tha didn't have an order
SELECT u.id AS user_id, MIN(o.paid_at) AS min_paid_at
FROM dsv1069.users u
LEFT OUTER JOIN dsv1069.orders o ON o.user_id = u.id
GROUP BY u.id;

/*
-- Exercise 7:
--Goal: Figure out what percent of users have ever viewed the user profile page, but this query
-- isn’t right. Check to make sure the number of users adds up, and if not, fix the query.
*/

-- Starter Code:
SELECT
(CASE WHEN first_view IS NULL THEN false
    ELSE true END) AS has_viewed_profile_page,
COUNT(user_id) AS users
FROM
    (SELECT u.id) AS user_id,
    MIN(e.event_time) AS first_view
    FROM dsv1069.users u
    LEFT OUTER JOIN
        dsv1069.events e ON e.user_id = u.id
        WHERE e.event_name = 'view_user_profile'
        GROUP BY u.id ) first_profile_views
        GROUP BY (CASE WHEN first_view IS NULL THEN false
        ELSE true END)

-- Correct one
-- When We have the where with events, my query is behaving as a right join.
SELECT
(CASE WHEN first_view IS NULL THEN false
    ELSE true END) AS has_viewed_profile_page,
COUNT(user_id) AS users
FROM
    (SELECT u.id AS user_id,
    MIN(e.event_time) AS first_view
    FROM dsv1069.users u
    LEFT OUTER JOIN
        dsv1069.events e ON e.user_id = u.id AND e.event_name = 'view_user_profile'
        GROUP BY u.id ) first_profile_views
        GROUP BY (CASE WHEN first_view IS NULL THEN false
        ELSE true END)



 /*
 Event table
 */

 SELECT event_id,
 event_time,
 user_id,
 platform,
 (CASE WHEN parameter_name == 'viewed_user_id'
  THEN CAST(parameter_value AS INT)
  ELSE NULL
  END) AS viewed_user_id
 FROM dsv1069.events
 WHERE
    event_name = 'view_user_profile';

-- JSON
 SELECT event_id,
 event_time,
 user_id,
 platform,
 get_json(raw.viewed_user_id) AS viewed_user_id
 FROM dsv1069.events
 WHERE
    event_name = 'view_user';

-- Data Formats
-- Exercise 1:
-- Goal: Write a query to format the view_item event into a table with the appropriate columns
SELECT
  event_id,
  event_time,
  user_id,
  platform,
  --CAST(parameter_value AS INT ) AS viewed_user_id
  MAX(CASE WHEN parameter_name = 'item_id'
    THEN CAST(parameter_value AS INT )
    ELSE NULL
    END) AS item_id,
    MAX(CASE WHEN parameter_name = 'referrer'
    THEN parameter_value
    ELSE NULL
    END) AS referrer
FROM
  dsv1069.events
WHERE
  event_name = 'view_item'
GROUP BY
  event_id,
  event_time,
  user_id,
  platform
ORDER BY event_id


-- Exercise 2:
-- Using any methods you like, determine if you can you trust this events table. (HINT: When did
-- we start recording events on mobile)

 SELECT DATE(event_time) date,
 platform,
 COUNT(*) AS rows
 FROM dsv1069.events_ex2
 GROUP BY  event_time,platform

-- Exercise 3: Imagine that you need to count item views by day. You found this table
-- item_views_by_category_temp - should you use it to answer your questiuon?
SELECT *
FROM dsv1069.item_views_by_category_temp

-- Answer: No. There is no a column with date to do the count
-- Mobile was not being recorded all the times


-- Exercise 4: Using any methods you like, decide if this table is ready to be used as a source of
  -- truth.

  SELECT *
  FROM dsv1069.raw_events
  LIMIT 100

  -- Answer: No the table is not in the schema or folder dsv1069

-- Exercise 5: Is this the right way to join orders to users?
-- Is this the right way this join.

-- SELECT COUNT(*)
-- FROM dsv1069.orders o
-- JOIN dsv1069.users u
-- ON o.user_id = u.parent_user_id -- 2604

--WHERE parent_user_id IS NULL --110770 with parent_user_id
-- orders: 47402
-- users: 117178

-- Answer: The right way it will be the join condition: o.user_id = u.id
SELECT COUNT(*)
FROM dsv1069.orders o
JOIN dsv1069.users u
ON o.user_id = u.id -- 47402 orders join with users, there is no order with no user.