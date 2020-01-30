--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rdr2_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rdr2_reviews (
    id integer NOT NULL,
    name character varying(50),
    grade smallint,
    link character varying(150)
);


ALTER TABLE public.rdr2_reviews OWNER TO postgres;

--
-- Name: rdr2_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rdr2_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rdr2_reviews_id_seq OWNER TO postgres;

--
-- Name: rdr2_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rdr2_reviews_id_seq OWNED BY public.rdr2_reviews.id;


--
-- Name: rdr2_users_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rdr2_users_reviews (
    id integer NOT NULL,
    name character varying(50),
    score integer,
    date date
);


ALTER TABLE public.rdr2_users_reviews OWNER TO postgres;

--
-- Name: rdr2_users_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rdr2_users_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rdr2_users_reviews_id_seq OWNER TO postgres;

--
-- Name: rdr2_users_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rdr2_users_reviews_id_seq OWNED BY public.rdr2_users_reviews.id;


--
-- Name: rdr2_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdr2_reviews ALTER COLUMN id SET DEFAULT nextval('public.rdr2_reviews_id_seq'::regclass);


--
-- Name: rdr2_users_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdr2_users_reviews ALTER COLUMN id SET DEFAULT nextval('public.rdr2_users_reviews_id_seq'::regclass);


--
-- Data for Name: rdr2_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rdr2_reviews (id, name, grade, link) FROM stdin;
158	Vgames	100	https://www.vgames.co.il/article/26516.html
159	AusGamers	100	https://www.ausgamers.com/games/red-dead-redemption-2-pc/review/
160	Areajugones	100	https://areajugones.sport.es/videojuegos/red-dead-redemption-2-en-pc-es-todavia-mejor-que-en-consola/
161	The Digital Fix	100	https://www.thedigitalfix.com/gaming/content/23989/red-dead-redemption-2-pc/
162	God is a Geek	100	https://www.godisageek.com/reviews/red-dead-redemption-2-pc-review/
163	Impulsegamer	100	https://www.impulsegamer.com/red-dead-redemption-2-pc-game-review/
164	Game Rant	100	https://gamerant.com/red-dead-redemption-2-pc-review/
165	Gamersky	100	https://www.gamersky.com/review/201911/1236781.shtml
166	3DJuegos	100	https://www.3djuegos.com/juegos/analisis/25977/0/red-dead-redemption-2/
167	PCGamesN	100	https://www.pcgamesn.com/red-dead-redemption-2/pc-review
168	Gameblog.fr	100	http://www.gameblog.fr/tests/3542-red-dead-redemption-ii-pc
169	Hobby Consolas	99	https://www.hobbyconsolas.com/reviews/analisis-red-dead-redemption-2-pc-528383
170	The Games Machine	99	https://www.thegamesmachine.it/red-dead-redemption-2/red-dead-redemption-2-recensione-pc/
171	Gameplanet	95	https://www.gameplanet.com.au/pc/reviews/g5de567915c377/Red-Dead-Redemption-2-PC-Review/
172		95	
173	Digital Chumps	95	http://digitalchumps.com/red-dead-redemption-2-pc/
174	Jeuxvideo.com	95	http://www.jeuxvideo.com/test/1139011/red-dead-redemption-2-une-version-pc-sublime-mais-quelques-couacs-techniques.htm
175	Destructoid	95	https://www.destructoid.com/red-dead-redemption-2-is-just-as-lovely-on-pc-571462.phtml
176	Hooked Gamers	93	https://www.hookedgamers.com/pc/red_dead_redemption_2/review/article-2104.html
177	COGconnected	93	https://cogconnected.com/review/red-dead-redemption-2-review-2/
178	Vandal	93	https://vandal.elespanol.com/analisis/pc/red-dead-redemption-2/42944#p-13
179	GameStar	92	https://www.gamestar.de/artikel/red-dead-redemption-2-im-pc-test-outlaws-im-nebel,3350911.html
180	Gaming Age	91	https://www.gaming-age.com/2019/12/red-dead-redemption-2-review-for-pc/
181	PLAY! Zine	90	http://play.co.rs/2019/12/review-red-dead-redemption-2-2/
182	Gaming Nexus	90	https://www.gamingnexus.com/Article/6028/Red-Dead-Redemption-2/
183	Games.cz	90	https://games.tiscali.cz/recenze/red-dead-redemption-ii-recenze-pc-verze-336624
184	Game Over Online	90	http://www.game-over.com/content/2019/11/red-dead-redemption-2-pc/#sthash.hG27hBUc.dpbs
185	Softpedia	90	https://www.softpedia.com/reviews/games/pc/red-dead-redemption-review-528292.shtml
186	XGN	90	https://www.xgn.nl/review/red-dead-redemption-2-pc-review
187	Eurogamer Italy	90	https://www.eurogamer.it/articles/2019-11-13-red-dead-redemption-2-pc-recensione
188	Ragequit.gr	90	https://ragequit.gr/reviews/item/red-dead-redemption-2-pc-review/
189	Attack of the Fanboy	90	https://attackofthefanboy.com/reviews/red-dead-redemption-2-for-pc-review/
190	Critical Hit	90	https://www.criticalhit.net/review/red-dead-redemption-2-pc-review-the-best-way-to-play-rockstars-divisive-cowboy-simulator/
191	Millenium	90	https://www.millenium.org/test/349038.html
192	4Players.de	90	https://www.4players.de/4players.php/dispbericht/PC-CDROM/Test/38241/84081/0/Red_Dead_Redemption_2.html
193	PC Gamer	88	https://www.pcgamer.com/red-dead-redemption-2-review/
194	Multiplayer.it	85	https://multiplayer.it/recensioni/red-dead-redemption-2-pc-recensione.html
195	PC Invasion	80	https://www.pcinvasion.com/red-dead-redemption-2-pc-review/
196	Worth Playing	80	https://worthplaying.com/article/2019/11/12/reviews/116894/
197	Screen Rant	80	https://screenrant.com/red-dead-redemption-2-pc-review/
198	Daily Star	80	https://www.dailystar.co.uk/tech/gaming/red-dead-redemption-2-pc-20826683
\.


--
-- Data for Name: rdr2_users_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rdr2_users_reviews (id, name, score, date) FROM stdin;
232	eldarmu	1	2019-11-05
233	Vicechico	0	2019-11-06
234	rpmmatt	0	2019-11-05
235	Yakidou	0	2019-11-07
236	Altissimus77	0	2019-11-06
237	pavulon78	0	2019-11-05
238	Thoddy398	0	2019-11-05
239	Vasot	3	2019-11-05
240	MaxGreen55555	0	2019-11-06
241	Wnuchok	0	2019-11-06
242	katonov	0	2019-11-08
243	Demoratos	0	2019-11-08
244	skvbgf44	0	2019-11-20
245	Exar92	0	2019-11-05
246	RogueNexus6	0	2019-11-05
247	MAJLaunch	0	2019-11-05
248	treiden	0	2019-11-05
249	papermoon	0	2019-11-05
250	AceAscendus	0	2019-11-05
251	DmHunter	0	2019-11-06
252	DarkAli	0	2019-11-06
253	Marley168	0	2019-11-06
254	DestinyGames	0	2019-11-06
255	boXed	0	2019-11-06
256	MegaTabbyCat	0	2019-11-05
257	kebab666	2	2019-11-05
258	prosto	1	2019-11-05
259	brudnamuza	0	2019-11-05
260	amiartnumberone	0	2019-11-06
261	Mysti_	0	2019-11-05
262	rafa_00	0	2019-11-05
263	editza	0	2019-11-05
264	MalZ187	0	2019-11-05
265	MissFire	0	2019-11-05
266	apozar2000	6	2019-11-05
267	kozzy420	9	2019-11-12
268	Decktor	8	2019-11-08
269	ukrScorpion	0	2019-11-19
270	LeadFade	10	2019-11-05
271	a_wild_dandan	6	2019-12-08
272	EquinoX4k	1	2019-12-02
273	missieloke	3	2019-12-10
274	STRANGE83	3	2019-12-12
275	SH0O0GUN	3	2019-12-21
276	Dmoney201263	4	2019-12-26
277	Arkess	1	2019-12-25
278	Valois86	8	2020-01-17
279	Coolgame_13Rus	10	2020-01-13
280	filthybatukhan	0	2019-12-08
281	tupazaebochek	10	2020-01-08
282	Danrodguez	3	2019-11-27
283	nikstas96	5	2019-11-30
284	Denchik71	0	2019-12-01
285	SoIo	4	2019-12-03
286	Vaa808	0	2019-12-03
287	ThaMoor	0	2019-12-06
288	zhopanz	0	2019-12-08
289	Arathorn12	1	2019-12-22
290	YEECEE	0	2019-12-25
291	marcelomanuel27	3	2019-12-25
292	SomeOne28i	3	2019-12-26
293	Mert2302	10	2020-01-17
294	DBCooper86	0	2019-11-11
295	Kumar676	0	2019-11-13
296	Snake2686	0	2019-11-12
297	Shef256	0	2019-11-12
298	yankeesullivan	0	2019-11-07
299	ChangeUrFace	1	2019-11-08
300	Swedehog	4	2019-11-12
301	eli_fjr	4	2019-11-07
302	NexDi	0	2019-11-07
303	crimson87	0	2019-11-07
304	playsalot	1	2019-11-07
305	Carnage907	0	2019-11-07
306	NamelessBear	0	2019-11-10
307	metapics	0	2019-11-12
308	xiwed74475	0	2019-11-13
309	Mendax89	1	2019-12-10
310	Snicker	0	2019-11-12
311	K1NGZ1	0	2019-11-08
312	Jimmy_White	8	2019-11-18
313	shArk87	0	2019-11-07
314	Alodirat	1	2019-11-12
315	Welors12	0	2019-11-08
316	AntonWorld	0	2019-11-12
317	ArminW	1	2019-12-09
318	AlexKor	0	2019-11-12
319	wxa	0	2019-11-13
320	violetbuds	0	2019-11-13
321	Wesmael	0	2019-11-11
322	d0bronin	0	2019-11-11
323	ArthurBosco	0	2019-11-12
324	pusssyh47	1	2019-11-12
325	Bf109G-10	0	2019-11-12
326	1SLEVIN1	0	2019-11-13
327	thomasenger	0	2019-12-13
328	Talbis	0	2019-11-08
329	gjmoss1	0	2019-11-08
330	cmcissell	0	2019-11-07
331	hidan999	0	2019-11-07
332	Grandmaster7	0	2019-11-07
333	BestGuyEver	0	2019-11-07
334	Binaural	1	2019-11-13
335	Loostreaks	0	2019-11-13
336	Pomodoro	0	2019-11-12
337	Evgeniy_Uzkiy	0	2019-11-07
338	carfromsky	0	2019-11-08
339	Mark_Rubane	0	2019-11-27
340	Unchik	2	2019-11-27
341	TheGaminNorway	1	2019-11-13
342	M4ng0fruit	0	2019-11-13
343	Beetlejuice2	3	2019-12-14
344	Roman1313	0	2019-11-15
345	ahluche	5	2019-11-08
346	AcrossKolliapa	0	2019-11-14
347	lkhamadiev	0	2019-11-12
348	pal1y	0	2019-12-09
349	Darkmilk	0	2019-12-10
350	KebabRemover	0	2019-11-07
351	nofunaloud	0	2019-12-27
352	Steel-Slider	0	2019-11-07
353	Zigzagoboy	0	2019-11-07
354	FudgeSociety	0	2019-11-07
355	eqobu	0	2019-11-06
356	UmarDag	0	2019-11-06
357	Waltus	0	2019-11-08
358	diverso	0	2019-11-07
359	jopkg	0	2019-11-11
360	Pro100lam	0	2019-11-12
361	CMDR_Kavinsky	0	2019-11-07
362	andrew_avp	3	2019-11-08
363	SamuelOL	0	2019-11-05
364	Mahboi	0	2019-11-05
365	gallen0	0	2019-11-05
366	ExplosiveBolts	0	2019-11-05
367	RangerDangerDan	0	2019-11-05
368	cortadew	0	2019-11-05
369	SiJiP	2	2019-11-06
370	saviatto	0	2019-11-07
371	ZorXGames	0	2019-11-07
372	temamulti	0	2019-11-07
373	OrtoNNortH	0	2019-11-07
374	Feror	0	2019-11-07
375	Blisse	1	2019-11-08
376	Znatok	0	2019-11-13
377	BeerBeardGH	0	2019-11-06
378	Rainbowdash408	0	2019-11-08
379	Anmart	2	2019-11-08
380	buskape	0	2019-11-07
381	Kopacha	0	2019-11-06
382	veseliy_kit	0	2019-11-06
383	1318	0	2019-11-07
384	eduardoweber	0	2019-11-06
385	DaemonXHUN	0	2019-11-06
386	Asderout	3	2019-11-09
387	katyuhsa	4	2019-11-06
388	saixo	0	2019-11-07
389	ByMaximus	0	2019-11-07
390	blinman	7	2019-11-08
391	FCDobbs	0	2019-11-06
392	Johnie07	0	2019-11-06
393	fudgereaddead	0	2019-11-06
394	rover32	0	2019-11-06
395	machala	0	2019-11-06
396	Fellout76	0	2019-11-06
397	StarLink	0	2019-11-06
398	Razor66	0	2019-11-07
399	madFlasher	0	2019-12-06
400	DeatHcrusH	0	2019-11-16
401	MarekSurman	0	2019-12-06
402	Heos	0	2019-12-13
403	uncle_Lesha	2	2019-11-12
404	wdll	3	2019-11-13
405	FroznFox82	0	2019-11-13
406	kaizer4677	1	2019-11-14
407	MysterySnail	0	2019-11-15
408	Munkus	7	2019-11-16
409	Kasteomind	0	2019-11-17
410	dan4n984s	0	2019-11-20
411	Monster178	1	2019-11-26
412	CountMarcel	0	2019-11-27
413	rekarex	3	2019-11-28
414	acousticnewton	0	2019-11-28
415	Aztaban	0	2019-12-04
416	Caelestiel	1	2019-12-10
417	zachary_371	0	2019-12-17
418	delphineback	0	2019-12-20
419	QueueCumber	0	2019-12-20
420	Zetsumei_	0	2019-12-21
421	Dufterklopps	2	2019-12-22
422	DeForks	0	2019-11-05
423	Bub1egume1	0	2019-11-05
424	Non-Starter	0	2019-11-06
425	szymi262pl	1	2019-11-08
426	Leon123	10	2019-11-07
427	OlEl	2	2019-11-07
428	MonsieurK	0	2019-12-03
429	Martin_Cath	0	2019-11-07
430	benjamin666	0	2019-11-07
431	mnogokotin	0	2019-11-06
432	yusep	0	2019-11-07
433	Chesty	0	2019-11-07
434	harney	0	2019-11-06
435	ic9517	0	2019-11-06
436	Neyaria	0	2019-11-07
437	Mover	1	2019-11-06
438	Mhick	0	2019-11-06
439	tehcip	2	2019-11-08
440	Vladimir_gorshe	0	2019-11-07
441	Purity_09	0	2019-11-07
442	pipeismyname	0	2019-11-06
443	KuzmichDm	0	2019-11-06
444	Amphi	0	2019-11-06
445	Westell	0	2019-11-06
446	SkinniGenius	0	2019-11-06
447	Cheantry	0	2019-11-07
448	panteraboy1988	0	2019-11-11
449	gustavius	0	2019-11-06
450	Dan_nguyen	1	2019-11-06
451	andrer56	0	2019-11-06
452	Glutamine	0	2019-11-06
453	S7arter	0	2019-11-06
454	Gytrtyu	0	2019-11-06
455	Tritokus	1	2019-11-06
456	GoinDark	0	2019-11-07
457	bolek975	0	2019-11-06
458	MrCrustxNasty	4	2019-11-07
459	Sallywan	0	2019-11-06
460	ilyesr	0	2019-11-07
461	Savoz	0	2019-11-06
462	krabb	0	2019-11-07
463	Facade	0	2019-11-07
464	JackaL187	5	2019-11-07
465	Western111	0	2019-11-08
466	kef34	2	2019-11-07
467	AlizarV	0	2019-11-07
468	Afkza4aem	0	2019-11-07
469	Rodoful	0	2019-11-08
470	Sclingan	0	2019-11-08
471	Goncas2	2	2019-11-05
472	oduin	0	2019-11-06
473	Codex260	0	2019-11-06
474	Pingus47	0	2019-11-06
475	Dimonv	0	2019-11-06
476	jmcc84	0	2019-11-06
477	Exploding	0	2019-11-05
478	Dirim	0	2019-11-05
479	iamdmitry	0	2019-11-06
480	OldJaba	0	2019-11-06
481	CokiCtaryxi	0	2019-11-06
482	AJligator	3	2019-11-06
483	Raytracer77	0	2019-11-06
484	rantingwaj	1	2019-11-28
485	dudaz	0	2019-11-07
486	myasokolbasa	0	2019-11-08
487	danreview	0	2019-12-08
488	LordUroborus	0	2019-11-05
489	deykun	0	2019-11-06
490	maxhhg	3	2019-11-06
491	unnamed124	0	2019-11-08
492	leaveit	0	2019-11-07
493	UKite	0	2019-11-05
494	ferrit	0	2019-11-05
495	macrwest97	0	2019-11-05
496	robE127	0	2019-11-05
497	Saint_Supacat	0	2019-11-08
498	ninafranksimon	0	2019-11-05
499	GoldenRevolver	0	2019-11-05
500	fckrockstars	0	2019-11-06
501	Burzumes	0	2019-11-06
502	kia_salemi	0	2019-11-06
503	Cattest	0	2019-11-06
504	KenjiSamato	0	2019-11-06
505	HV_Winterwing	0	2019-11-06
506	Von_Choo	0	2019-11-06
507	Ed3N	0	2019-11-06
508	Denrom2012	0	2019-11-06
509	dhilln	0	2019-11-06
510	time-_-flies	0	2019-11-06
511	Neloangelo28	0	2019-11-06
512	HeavenMan	0	2019-11-07
513	AKODA	0	2019-11-07
514	Traist	0	2019-11-05
515	Lavamancer	0	2019-11-05
516	Arzumanyan	0	2019-11-05
517	vargphysics	0	2019-11-05
518	Anorian	9	2019-11-19
519	Ulfhednir	0	2019-11-08
520	Compile	0	2019-11-07
521	1gnis	0	2019-11-06
522	Lctowner180	0	2019-11-06
523	Antves	0	2019-11-07
524	bomjkolyadun	0	2019-11-07
525	Blindness_Alt_S	0	2019-11-07
526	Pavel0	0	2019-12-12
527	YeRUS	0	2019-11-13
528	SuperHombreLA	0	2019-11-20
529	JimmyDamage	0	2019-11-12
530	efx	0	2019-11-19
531	sacreo	1	2019-11-17
532	TheMarquiz	4	2019-11-23
533	afex	0	2019-11-16
534	MucMecanic	0	2019-11-07
535	Zaker	0	2019-11-15
536	Monolithic	0	2019-11-07
537	asthring	0	2019-11-08
538	Tinz	5	2019-11-15
539	drpoyer	3	2019-11-27
540	AcerolaOrion	0	2019-12-23
541	Asikfaf	0	2019-11-07
542	redmike	2	2019-12-26
543	Rrichard	10	2019-11-08
544	s3rgio00	0	2019-11-16
545	Derrik4999	0	2019-11-15
546	CyborgX	0	2019-11-14
547	Kydp9	9	2019-11-11
548	Alex0001	0	2019-12-13
549	nikt455	9	2019-11-07
550	TheSky	10	2019-11-25
551	Messi2016	0	2019-12-06
552	Star_Scream	0	2019-11-14
553	Quadrapole	0	2019-11-16
554	Steff86	0	2019-11-07
555	MrLove	0	2019-11-14
556	Kunray	1	2019-12-26
557	giorgosmc	0	2019-11-17
558	calvados	0	2019-11-09
559	plato1123	10	2019-11-09
560	GoblinLip	0	2019-11-07
561	julixx86	0	2019-11-07
562	ralast	7	2019-12-17
563	Crysmay	0	2019-11-22
564	Nicolas3DHER	0	2019-11-07
565	Mehrab4K	10	2019-11-14
566	bugiepop	0	2019-11-07
567	Guilhermewls	10	2019-11-09
568	FearlessCop	0	2019-11-13
569	KvltGaMER	10	2019-11-09
570	hardy12	1	2019-11-06
571	OttoFonKarius	0	2019-11-07
572	flexxx1ble	0	2019-12-14
573	XAKER4	0	2019-11-20
574	ALEXgav	0	2019-11-13
575	Bomg5engin	4	2019-11-07
576	Sebast0409	0	2019-11-06
577	VistaKiller	0	2019-11-06
578	GvozdXL	0	2019-11-06
579	Maximnau	2	2019-11-06
580	FelipeJCosta	3	2019-11-06
581	Zazter	3	2019-11-07
582	Frank4fingers	0	2019-11-06
583	loki9696	0	2019-11-07
584	agentblue	0	2019-11-07
585	Garyrt	0	2019-11-07
586	deldagos	0	2019-11-07
587	UndeadCinder	0	2019-11-07
588	royaldo78	0	2019-11-07
589	VanderRohe	2	2019-11-07
590	Mokfarion	0	2019-11-07
591	mad_noize	0	2019-11-07
592	AndreyStep	0	2019-11-07
593	Wsaber4	0	2019-11-07
594	catarmy	0	2019-11-07
595	laggage	2	2019-11-07
596	yngy	0	2019-11-07
597	ToSHeY	0	2019-11-07
598	HateRDR2	0	2019-11-07
599	Siddis	3	2019-11-07
600	harry32019	0	2019-11-08
601	Almostdivine	1	2019-11-08
602	yaron466	0	2019-11-08
603	Gamer1465	7	2019-11-09
604	Kerezov	10	2019-11-09
605	bronkus	0	2019-11-09
606	Squalll22	0	2019-11-10
607	JustWannaPlay	1	2019-11-10
608	sleepfoxy	0	2019-11-10
609	Yooyoo	10	2019-11-11
610	Anton-Demon	9	2019-11-11
611	BigbiWolf	10	2019-11-11
612	jiujitsu00151	10	2019-11-12
613	T_Thomas	2	2019-11-11
614	Valson	4	2019-11-17
615	BoughtAGame	0	2019-11-12
616	230volt	0	2019-11-13
617	quadband	0	2019-11-13
618	icover14rus	0	2019-11-13
619	Leeo24	0	2019-11-13
620	papa_engineer	10	2019-11-14
621	Lorden96	0	2019-11-13
622	Kuznetsov_Denis	1	2019-11-13
623	gandalfstikmage	1	2019-11-13
624	Hellord	0	2019-11-13
625	Dmitlas	0	2019-11-13
626	devid12345666	1	2019-11-14
627	Racoon_RG	10	2019-11-14
628	Ragepagesix	0	2019-11-14
629	VGKING	0	2019-11-14
630	BuuuGagaGame	1	2019-11-14
631	TapperSwe	0	2019-11-14
632	MXBLooDY	4	2019-11-14
633	Serega_omel	0	2019-11-14
634	Cleanate	0	2019-11-14
635	LArrycapija	0	2019-11-14
636	qrlikk	0	2019-11-14
637	vikingbra	0	2019-11-15
638	dieisgood1	0	2019-11-15
639	Morix405	2	2019-11-15
640	Gor80hd	1	2019-11-15
641	PvtClarence	0	2019-11-15
642	MELDOG	0	2019-11-15
643	SwannRonson	0	2019-11-15
644	mepofor562	1	2019-11-16
645	DelPone	1	2019-11-16
646	AmonMacDermot	2	2019-11-16
647	Ifixjets	0	2019-11-16
648	der_henker	0	2019-11-16
649	originalreviews	4	2019-11-16
650	Trazyn777	0	2019-11-17
651	Denchik777L	2	2019-11-17
652	Gxost	1	2019-11-18
653	Sfar	1	2019-12-04
654	prpenteado	1	2019-11-20
655	Jubdragenus	0	2019-11-20
656	ozonapresident	0	2019-11-22
657	t95666f	0	2019-11-26
658	RockstarScams	0	2019-11-26
659	Nomadsky	0	2019-11-27
660	IDeathRow	0	2019-11-29
661	landelord	1	2019-11-30
662	Fakrockstar	4	2019-12-01
663	Bocharov	0	2019-11-05
664	kr0saffcheg	0	2019-11-06
665	bardim	9	2019-11-07
666	Bastian74	1	2019-11-05
667	vise	1	2019-11-06
668	ElFontanero	1	2019-11-05
669	JimmyRainor	8	2019-11-11
670	m4quina	9	2019-11-09
671	dramenbejs	0	2019-11-05
672	alisonfgt	0	2019-11-06
673	sanjar123	0	2019-11-06
674	Madara25	0	2019-11-07
675	FedorBondarchuk	0	2019-11-06
676	volkaner1981	0	2019-11-06
677	Heavy2424	1	2019-11-05
678	JuanPunch	0	2019-11-06
679	ev0	0	2019-11-06
680	TWMA_	0	2019-11-06
681	bigforko	0	2019-11-06
682	DrunkBus	0	2019-11-06
683	CrashmanR	0	2019-11-06
684	Feriluce	0	2019-11-06
685	Gasp13	0	2019-11-06
686	Sau1488	0	2019-11-06
687	Pinger54	1	2019-11-08
688	Gammagori	1	2019-11-05
689	srezdan	10	2019-11-07
690	Stardog	0	2019-11-05
691	CabalDSM	0	2019-11-08
692	Silverqt	0	2019-11-06
693	Timon2003	0	2019-11-07
694	Aguhaedo	10	2019-11-06
695	Tolder228	0	2019-11-08
696	vyrvyGLAZ	8	2019-11-06
697	Tidytib	4	2019-11-06
698	siksik81	0	2019-11-06
699	BekaX	0	2019-11-06
700	Voduch	0	2019-11-06
701	Ghauter	0	2019-11-05
702	Ithafeer	0	2019-11-06
703	Ebobot	0	2019-11-06
704	Kilogerc	0	2019-11-06
705	M4GD1ANYU5	0	2019-11-06
706	wolik	0	2019-11-06
707	azimalot	0	2019-11-06
708	Ejik	0	2019-11-06
709	Enekdnb	0	2019-11-06
710	BotUnit	1	2019-11-07
711	Fares19	0	2019-11-07
712	Matnil	0	2019-11-07
713	sunny2nos	0	2019-11-07
714	tcbenkhard	1	2019-11-07
715	Atho	0	2019-11-07
716	berko1sb	0	2019-11-07
717	RedDeadFail	0	2019-11-08
718	Mememe007	0	2019-11-08
719	dacco	9	2019-11-09
720	GVSart	0	2019-11-08
721	Hollywood42rus	0	2019-11-10
722	oxycodoner	0	2019-11-12
723	Sirsmokelot	10	2019-11-21
724	beViolent	0	2019-11-06
725	Swamplurk	0	2019-11-08
726	zippee	0	2019-11-05
727	hiperriper	0	2019-11-05
728	SuperKev	10	2019-11-06
729	HoverDonkey	10	2019-11-06
730	pokakana	10	2019-11-07
731	Gusska	0	2019-11-08
732	Danila_Jr	0	2019-11-07
733	lilkillpappy	10	2019-11-09
734	sqncer	9	2019-11-10
735	RAZOR9280	10	2019-11-10
736	armanlp98	10	2019-11-08
737	Fearsxt	10	2019-11-09
738	Helixien	2	2019-11-06
739	Romanoid	10	2019-11-09
740	RedBorowski	8	2019-11-06
741	HEisUS	10	2019-11-10
742	r1co_ua	2	2019-11-06
743	hyunok4470	1	2019-11-06
744	Nbw78	10	2019-11-07
745	Niweth	7	2019-11-07
746	JU5T	0	2019-11-18
747	czalexpic	10	2019-11-08
748	Mckdouble	10	2019-11-08
749	otesanek00811	10	2019-11-09
750	fullrango	10	2019-11-09
751	justdontbuy	1	2019-11-10
752	miaowmeow	10	2019-11-10
753	chief876	0	2019-11-16
754	Rdr2kall	9	2019-11-06
755	janderpvh	0	2019-11-06
756	Aerowalk	0	2019-11-06
757	NetLuis	5	2019-11-05
758	Waldo8888	0	2019-11-05
759	mihaisuciu1990	0	2019-11-05
760	Liar26rus	0	2019-11-06
761	imOm	0	2019-11-06
762	EnigmaFX	0	2019-11-06
763	sukablyet	0	2019-11-05
764	DedovaJopa	0	2019-11-05
765	Slalami	0	2019-11-05
766	connos	10	2019-11-11
767	codeforfood	10	2019-11-07
768	framefragger	10	2019-11-10
769	belikejunkie	0	2019-11-06
770	Kimihiro	0	2019-11-06
771	garkovsky	0	2019-11-09
772	dapenn	10	2019-11-11
773	D-Tull	10	2019-11-08
774	Fedochek	0	2019-11-14
775	4life-	0	2019-11-07
776	Mostick	0	2019-11-06
777	abyssHella	10	2019-11-06
778	Akhmed	0	2019-11-06
779	Basturmanin	0	2019-11-06
780	Priler	10	2019-11-07
781	Sergey228	10	2019-11-12
782	Locke1318	0	2019-11-09
783	eiziiaizii	0	2019-11-09
784	pumpkinlover	0	2019-11-05
785	R9X	10	2019-11-06
786	Gringonights	8	2019-11-06
787	STRASHNIY	0	2019-11-06
788	Strus	9	2019-12-05
789	noface45547	0	2019-11-06
790	Valerator	10	2019-11-07
791	SuziQuatro	10	2019-11-08
792	DreamCore	10	2019-11-07
793	thorhuesca	0	2019-11-06
794	gameren82	10	2019-11-06
795	YurikBC	10	2019-11-21
796	IgorZnam96	1	2019-11-05
797	AnnoyedAFGamer	0	2019-11-06
798	cycopass	0	2019-11-06
799	FixEr	0	2019-11-06
800	Ashen_Rover	10	2019-11-06
801	elgiz1991	0	2019-11-05
802	PedRuN	0	2019-11-06
803	lsengrim	9	2019-11-06
804	RiaskoFF	10	2019-11-06
805	Mobsster	10	2019-11-06
806	Santjago	9	2019-11-09
807	ashkart	0	2019-11-06
808	VladZh	0	2019-11-09
809	PaulGR	1	2019-11-06
810	Psyrecx	1	2019-11-20
811	RafaMondini	10	2019-11-13
812	Steyraus	10	2019-11-08
813	RavenBan	10	2019-11-06
814	5haDe	10	2019-11-06
815	AndreOF	9	2019-11-09
816	SanyaSP	10	2019-11-06
817	svmaest	10	2019-11-10
818	ReyNoel	10	2019-11-09
819	ianmaw	0	2019-11-24
820	adelzamzami	0	2019-11-09
821	hasherr	10	2019-11-09
822	Mortmal	0	2019-11-07
823	slowone334	5	2019-11-06
824	Vaya632	0	2019-11-21
825	glood1	1	2019-11-10
826	Truckpool	2	2019-11-26
827	DaggasPlays	0	2019-11-07
828	SodaBoy1000	0	2019-11-10
829	Nayer	0	2019-11-06
830	MuhtesemAtes	1	2019-11-24
831	chakramc	10	2019-11-07
832	GeneralPepechet	0	2019-11-06
833	jalberta	0	2019-11-06
834	LVST_HOP3	1	2019-11-10
835	kemalb	0	2019-11-06
836	neo89	1	2019-11-06
837	Cash_Golder	0	2019-11-06
838	pavelbarretov	9	2019-11-06
839	alikeogh	0	2019-11-06
840	Ren008	0	2019-11-06
841	ebomb312	0	2019-11-06
842	chex01	0	2019-11-06
843	DennyPRNKNG	0	2019-11-06
844	KirillM0	0	2019-11-06
845	xChris777	1	2019-11-06
846	Grouch0marx	0	2019-11-06
847	thalesgmorais	0	2019-11-06
848	kingalphaz	0	2019-11-06
849	fatezeroart	0	2019-11-06
850	Guinsoona	0	2019-11-06
851	Kabazavr	1	2019-11-06
852	TheHorneo	0	2019-11-06
853	NicoBellic	0	2019-11-06
854	Zupile	0	2019-11-06
855	Master993	0	2019-11-06
856	Atilla_85	0	2019-11-06
857	Romanovv	0	2019-11-06
858	frankie4Fingers	0	2019-11-06
859	Vakeel	1	2019-11-06
860	Cataclysm1000	0	2019-11-06
861	Douglas123	0	2019-11-06
862	buskibuwop	0	2019-11-06
863	skeletordd	0	2019-11-06
864	Kampking	0	2019-11-06
865	s3rgh	0	2019-11-06
866	mantissa	2	2019-11-06
867	D9itelok	1	2019-11-06
868	Sneezes	0	2019-11-06
869	baluka79	1	2019-11-06
870	Khanzama	2	2019-11-06
871	ImmenseGirth	1	2019-11-06
872	Aenema	0	2019-11-06
873	DarkRomen	0	2019-11-06
874	DrToio	0	2019-11-06
875	Arxec	0	2019-11-06
876	IvanBrown	0	2019-11-06
877	Kamyab77	0	2019-11-06
878	SinaSalami	0	2019-11-06
879	Alexmarine909	10	2019-11-06
880	Sinxity	10	2019-11-07
881	Postalman89	10	2019-11-07
882	Altum_	0	2019-11-07
883	avalsnines	0	2019-11-07
884	Boomerkhan	10	2019-11-07
885	KayleeDinkel	9	2019-11-07
886	10dodges	0	2019-11-08
887	topografsusanin	0	2019-11-08
888	Alexzond	10	2019-11-08
889	PeaceDeath1911	8	2019-11-08
890	LeeFrancer	0	2019-11-09
891	kariot	0	2019-11-09
892	Tsuyoshi	0	2019-11-09
893	n00bzorz	0	2019-11-09
894	XYTKI	0	2019-11-09
895	TheLoneLoser	10	2019-11-09
896	Sharps	1	2019-11-09
897	Cato111	0	2019-11-10
898	yurisminator	9	2019-11-10
899	sutaj	0	2019-11-10
900	Fnatik	10	2019-11-10
901	Extince	9	2019-11-10
902	AODqw97	10	2019-11-10
903	HomicidalHare	10	2019-11-11
904	Pedrosully	0	2019-11-20
905	Epicode	10	2019-11-18
906	Curt580	2	2019-11-08
907	Sklizverg	10	2019-11-25
908	game_over	1	2019-11-28
909	Ihitkids	0	2019-11-09
910	Acient	0	2019-11-06
911	PAA1	3	2019-11-19
912	kbx	7	2019-11-09
913	Brey	0	2019-11-06
914	Rammstein881994	1	2019-11-07
915	v0Black_Clouds	8	2019-11-18
916	pchernik	10	2019-12-25
917	Farmer_Jawa	0	2019-11-12
918	Fready	0	2019-11-07
919	Sweaty_Nutsak69	0	2019-11-22
920	MertTR34	0	2019-11-11
921	Garbageman111	3	2019-11-22
922	Wolchara	0	2019-11-07
923	Doktorschmurge	0	2019-11-06
924	HulumuHulumu	8	2019-11-11
925	Andrey3445	0	2019-11-11
926	dissalatore	7	2019-11-10
927	LysanderD	1	2019-11-06
928	Vadik4or7e	9	2019-11-07
929	original_oleg	0	2019-11-06
930	manbearpiglet	0	2019-11-06
931	HoonBee	3	2019-11-06
932	RD2sajoke	0	2019-11-06
933	Rockstarissh1t	0	2019-11-06
934	SolitudeH	4	2019-11-07
935	TurPL	2	2019-11-07
936	Gladfm	10	2019-11-07
937	VladislavusXXX	10	2019-11-07
938	LaSolitudeMoral	0	2019-11-07
939	DiscoLunar	0	2019-11-07
940	14_pain	0	2019-11-07
941	PressePuree	0	2019-11-07
942	Jurtra	9	2019-11-07
943	redangel13	10	2019-11-07
944	KostyaG	0	2019-11-07
945	reynelsoir	3	2019-11-07
946	DAltaev	0	2019-11-07
947	KRbICA_V_KACKE	10	2019-11-07
948	Pabloeldiablo	0	2019-11-08
949	Allgamers	9	2019-11-08
950	soet_za	3	2019-11-08
951	AtomicGundam	0	2019-11-08
952	M3son	0	2019-11-08
953	Fffustercluck	2	2019-11-19
954	SmoovKat	0	2019-11-10
955	Zerzen	0	2019-11-10
956	Joker86	0	2019-11-10
957	SmithWCPC	3	2019-11-10
958	nagipol	0	2019-11-10
959	micAailes	0	2019-11-10
960	alex3426	0	2019-11-10
961	Cendelweer	3	2019-11-11
962	Xs_	0	2019-11-11
963	wellenti	0	2019-11-11
964	droner2080	0	2019-11-11
965	LeoxMD	0	2019-11-11
966	ChuckleHeadOne	0	2019-11-11
967	sariq	0	2019-11-11
968	JackDeRipper	0	2019-11-12
969	Pauly	5	2019-11-12
970	Nefanatrockstar	0	2019-11-12
971	Space4Man	6	2019-11-12
972	Kah0tTiKa	3	2019-11-20
973	Necromorph1990	1	2019-11-20
974	Font1490	2	2019-11-22
975	Sycu91	1	2019-11-26
976	Max1The1Best	2	2019-11-29
977	Ev1L_SnaKe	0	2019-12-01
978	LordUnitaz	0	2019-12-02
979	peeweemunster69	1	2019-12-03
980	AndreiLi	4	2019-12-22
981	Karmazyn83	10	2019-11-05
982	Gassation	10	2019-11-05
983	Kagome	10	2019-11-05
984	astronautfreak	10	2019-11-05
985	AINFO	10	2019-11-15
986	Pinocchio	10	2019-11-06
987	ppHp	10	2019-11-05
988	Arthuriano	10	2019-11-07
989	wakedafucup	10	2019-11-06
990	boryama	0	2019-11-07
991	RemakerID	10	2019-11-06
992	DexterC2D	10	2019-11-07
993	dk270288	10	2019-11-07
994	robfontiglia	10	2019-11-05
995	Deloperso	10	2019-11-06
996	Kuti	10	2019-11-06
997	LuckyClover	10	2019-11-06
998	ICEBergRS	10	2019-11-06
999	DaniilNagay	10	2019-11-06
1000	story	10	2019-11-05
1001	jgedak	10	2019-11-05
1002	Diaconus	10	2019-11-05
1003	Barbarian4ever	10	2019-11-05
1004	Xilion	8	2019-11-06
1005	N1CKY	10	2019-11-05
1006	Gamecast	1	2019-11-08
1007	MightyRussian	10	2019-11-05
1008	basquebear	0	2019-11-06
1009	MyGunsBigger	9	2019-11-06
1010	Tule24	0	2019-11-12
1011	SicPavisMagnn_	0	2019-11-06
1012	Newal	10	2019-11-07
1013	Kimikal	9	2019-11-05
1014	Omiiid	10	2019-11-07
1015	Vlaost	10	2019-11-11
1016	WhiteProblem	10	2019-11-06
1017	Max19991	1	2019-11-06
1018	wudofudo	0	2019-11-06
1019	JoaoVictorOls	0	2019-11-06
1020	ahmetaslan	0	2019-11-06
1021	Shapboy	0	2019-11-06
1022	GabalPlay	0	2019-11-06
1023	Drenfa	8	2019-11-06
1024	Ouky1991	10	2019-11-07
1025	Weelsy777	10	2019-11-07
1026	ZykkaRa	1	2019-11-07
1027	kaJIuka	1	2019-11-08
1028	Clarkey	10	2019-11-08
1029	Rockstarcrap	0	2019-11-18
1030	Ray1st	3	2019-11-24
1031	Hasbrin	1	2019-11-24
1032	Labian4ik	10	2019-11-07
1033	Jjackattack	10	2019-11-07
1034	Xcoldat	10	2019-11-05
1035	Adriano17	10	2019-11-05
1036	dJiT	10	2019-12-03
1037	DNW	10	2019-11-07
1038	Katsumaru	0	2019-11-06
1039	beb2592	10	2019-11-05
1040	roionfgrt	10	2019-11-05
1041	Verserk	0	2019-11-05
1042	ALEGOR	9	2019-11-06
1043	Freeman	10	2019-11-13
1044	anonymus637	5	2019-11-05
1045	Blade-Runner	10	2019-11-06
1046	AZaytsevv	10	2019-11-06
1047	hestro	8	2019-11-07
1048	F7GOS	9	2019-11-06
1049	Hahn	0	2019-11-06
1050	ana_panzerfaust	3	2019-11-06
1051	flxngbstrd	0	2019-11-06
1052	Creampieguy6969	0	2019-11-06
1053	VICTOROV	0	2019-11-08
1054	Donwey	0	2019-11-07
1055	Prais	10	2019-11-09
1056	alexey4254	1	2019-11-09
1057	Mudsnake	10	2019-11-11
1058	Allkassar	0	2019-11-10
1059	Vexxel	0	2019-11-09
1060	maverick3681	9	2019-11-14
1061	Descorcho	10	2019-11-11
1062	Thwompthing	10	2019-11-19
1063	error8	10	2019-12-30
1064	Notchle	0	2019-11-10
1065	Jokhan	10	2019-11-06
1066	Chekanchik	10	2019-11-07
1067	dedjel	10	2019-11-07
1068	Siriusm31	10	2019-11-07
1069	ex3Nd	10	2019-11-08
1070	Nudrien	8	2019-11-07
1071	Geralt92	1	2019-11-20
1072	objetivo	9	2019-11-08
1073	tanner133	9	2019-11-08
1074	Ivanych-70	1	2019-11-08
1075	WaltherXO	1	2019-11-08
1076	CaduGamerCG	0	2019-11-10
1077	SamilKha	0	2019-11-10
1078	nazar322	0	2019-11-10
1079	He1LPreacher	0	2019-11-10
1080	Novenkij	0	2019-11-11
1081	ArturGGPRO	10	2019-11-11
1082	Bonik69	0	2019-11-11
1083	nnosoff	0	2019-11-11
1084	NotHotEgg	0	2019-11-12
1085	n4n0lix	10	2019-12-07
1086	Wetdogsmells	2	2019-11-21
1087	reddead2pcsucks	0	2019-11-22
1088	Stanissslav	10	2019-11-05
1089	Gramagoch	10	2019-11-06
1090	Nameless_Outlaw	10	2019-11-06
1091	111bienio111	10	2019-11-05
1092	Figotam	0	2019-11-07
1093	Alebone	7	2019-11-05
1094	Newest_Jack	9	2019-11-07
1095	DDD_D	10	2019-11-10
1096	Dalbaeb3000	0	2019-11-25
1097	Bondaleks	0	2019-11-21
1098	alexmpz	10	2019-11-05
1099	Geckleorn	10	2019-11-05
1100	MagicWolf	10	2019-11-06
1101	ossa	10	2019-11-10
1102	Layklant	10	2019-11-07
1103	OuuutCast	10	2019-11-06
1104	CherokeeGo	10	2019-11-06
1105	kavno1	10	2019-11-06
1106	L0RD-SILVER	10	2019-11-07
1107	AymanHellov	9	2019-11-16
1108	ADFGVX	0	2019-11-19
1109	Thehunkreviewer	0	2019-11-20
1110	Rocharox	0	2019-11-21
1111	antoniovassen	0	2019-11-09
1112	mirg	5	2019-11-06
1113	StDenis	9	2019-11-13
1114	FranticGamer	10	2019-12-26
1115	MrJamesL	0	2019-11-10
1116	Couti	0	2019-11-09
1117	MrCrowbarFTW	0	2019-11-09
1118	OccamsRazor	0	2019-11-09
1119	Inugamiamdog	5	2019-11-06
1120	tzencirkiran35	0	2019-11-09
1121	DedMoroze	0	2019-11-06
1122	El_Chuapnibre	9	2019-11-07
1123	matt1184	0	2019-11-11
1124	SUOERUS	10	2019-11-06
1125	designvee	10	2019-11-06
1126	AndyPalt	8	2019-11-06
1127	GloriousStone	10	2019-11-06
1128	mruderface84	0	2019-11-06
1129	l3g3nd	0	2019-11-06
1130	duckh0le	0	2019-11-06
1131	Maiafay	9	2019-11-07
1132	Kangaroo_XIII	10	2019-11-07
1133	RifmaMan	8	2019-11-07
1134	Kawasalto	10	2019-11-07
1135	BobaFettt	0	2019-11-08
1136	bes_up	0	2019-11-08
1137	Sleigh1993	10	2019-11-08
1138	Dayton002	2	2019-11-08
1139	Swagvadar	0	2019-11-08
1140	Adanis	0	2019-11-08
1141	gregor_82	0	2019-11-08
1142	SkeletalElite	0	2019-11-09
1143	DatShadi	0	2019-11-09
1144	fesco	10	2019-11-09
1145	keppel	0	2019-11-10
1146	wonderslav	10	2019-12-20
1147	Seal_Gun	10	2019-11-11
1148	Alexanatolevich	0	2019-11-11
1149	Eleaaa	0	2019-11-11
1150	GoldenGamer20k	1	2019-11-11
1151	Mordock999	0	2019-11-11
1152	funfzein	0	2019-11-12
1153	DuskTillDawn	0	2019-11-24
1154	lolatron87	0	2019-11-25
1155	catnonstop	10	2019-12-26
1156	Hippystank	10	2019-11-11
1157	Thekiller76	0	2019-11-19
1158	Fariax	10	2019-11-07
1159	hilonate	10	2019-11-05
1160	IvoBe	9	2019-11-07
1161	hagakure	0	2019-11-08
1162	Nati	9	2019-11-10
1163	Deltium	0	2019-11-08
1164	kruzik	2	2019-11-09
1165	MarkFoxy	2	2019-11-06
1166	SedatedSP	9	2019-11-11
1167	narconosis	10	2019-11-05
1168	lukewarm55055	9	2019-11-06
1169	Kavilor	10	2019-11-06
1170	Will_Munny	8	2019-11-06
1171	TheDrozdForever	10	2019-11-06
1172	GungsterEX	10	2019-11-06
1173	discodecepticon	10	2019-11-06
1174	SeregaJoker	10	2019-11-06
1175	Topik	10	2019-11-06
1176	Nofckingnick	10	2019-11-06
1177	Bloodkey	10	2019-11-06
1178	lmaoepiclets	10	2019-11-06
1179	Warld	10	2019-11-06
1180	RedMalon	10	2019-11-06
1181	mem4ikboy	10	2019-11-06
1182	fartvandalay	0	2019-11-06
1183	Teaseok	10	2019-11-07
1184	ARKADIY2256	0	2019-11-10
1185	aideseubulus	0	2019-11-08
1186	POOPSTAR	0	2019-11-08
1187	soulbeliver	0	2019-11-08
1188	Talekon	0	2019-11-08
1189	Flatra	0	2019-11-08
1190	GoRock_	0	2019-11-08
1191	Raptorian	3	2019-11-09
1192	Ra3iel	1	2019-11-09
1193	EBALOLOMATEL500	2	2019-11-09
1194	user_unknown	0	2019-11-09
1195	Vyacheslav11	0	2019-11-11
1196	MaxZiser	10	2019-11-11
1197	Cancer4Cure	0	2019-11-14
1198	Malaurin	10	2019-11-23
1199	NICEANDACCURATE	0	2019-12-28
1200	Skash	9	2019-11-05
1201	grogi	10	2019-11-05
1202	TheFirm34	10	2019-11-06
1203	ZeroKing	10	2019-11-06
1204	fernandezhirak	10	2019-11-05
1205	keredd1010	9	2019-11-07
1206	ps5-predator	0	2019-11-10
1207	Anvarli	8	2019-11-07
1208	HomerKOO	10	2019-11-05
1209	Adekvatn1y	10	2019-11-06
1210	TheSondragon	10	2019-11-06
1211	Zhirnoff	10	2019-11-06
1212	Zackovich	10	2019-11-07
1213	SlaxLord	0	2019-11-09
1214	Azranar	0	2019-11-10
1215	aberro	10	2019-11-06
1216	Yegor4ik	10	2019-11-06
1217	Legat7	9	2019-11-06
1218	spacemonkey480	0	2019-11-09
1219	FatumFors	10	2019-11-06
1220	StupidBethesda	0	2019-11-08
1221	arnkrl	9	2019-11-06
1222	ideyniy	10	2019-11-14
1223	Tilbert	10	2019-11-06
1224	RazzblazzK	10	2019-11-06
1225	Artifeks	9	2019-11-06
1226	Tritonlol	10	2019-11-11
1227	Zalox	10	2019-11-06
1228	LifelessHawk	0	2019-11-08
1229	DragoNIK	0	2019-11-10
1230	KingSeven	10	2019-11-06
1231	Alvard	10	2019-11-06
1232	Kobubu	10	2019-11-05
1233	sanyagyz	9	2019-11-06
1234	DimsRus	9	2019-11-06
1235	mactraher84	10	2019-11-06
1236	RenegadeMan	10	2019-11-06
1237	SAMF2000	9	2019-12-07
1238	Rems	8	2019-11-12
1239	sliderh2o	3	2019-11-09
1240	Escapist	10	2019-12-04
1241	Dankilicious	10	2019-12-09
1242	mohamed1988mgs	9	2019-12-08
1243	MacheteDontText	5	2019-11-07
1244	rocco0425	10	2019-11-21
1245	muzmuz	8	2019-12-08
1246	Generalgameman	9	2019-12-09
1247	frostmai	10	2019-12-02
1248	SteefSanders	10	2019-11-12
1249	Colquhoun	10	2019-12-21
1250	Jaehaerys61	8	2019-12-25
1251	razvt	9	2019-11-12
1252	bartcbem	9	2019-11-13
1253	TexRed	10	2019-12-04
1254	beaGamer	9	2019-11-26
1255	drag8n	8	2019-11-13
1256	Zombiekiller507	8	2019-11-30
1257	AzureGray	2	2019-11-10
1258	Empereur	10	2019-11-27
1259	Artecoll	10	2019-12-14
1260	tapor83	9	2019-11-14
1261	Wenceslas	2	2019-11-10
1262	Francky	8	2019-11-12
1263	TheCruelSnake	9	2019-12-01
1264	Zakis1991	5	2019-11-10
1265	kayote_23	10	2019-11-17
1266	hotlook	10	2019-12-01
1267	vladicorp	10	2019-12-04
1268	Proton45	6	2019-11-17
1269	raudelravelo91	10	2019-12-01
1270	famas	3	2019-11-09
1271	Cwilson870	9	2019-12-22
1272	Pawlo2070	10	2019-11-26
1273	R1pp3r	10	2019-11-13
1274	Solorax	10	2019-12-14
1275	hgj001	5	2019-11-06
1276	koss_wolf	10	2019-11-18
1277	BorzoiMike	10	2019-12-04
1278	oldrsd_sa	5	2019-11-06
1279	Tsotsi	9	2019-11-06
1280	briefcase0j	10	2019-11-07
1281	Keks2425	10	2019-11-07
1282	ZAKASHTAFLb	10	2019-11-07
1283	Arthur_Fleck	5	2019-11-07
1284	bynenya	10	2019-11-12
1285	Axeffett	10	2019-11-07
1286	LosBlancos	10	2019-11-07
1287	Serhio322	10	2019-11-08
1288	po1tos	10	2019-11-08
1289	EugeneCh	10	2019-11-08
1290	abtinx	3	2019-11-08
1291	Zmroo	4	2019-11-08
1292	hypevictim	1	2019-11-08
1293	OttoVonChesterf	2	2019-11-09
1294	hobbie364	2	2019-11-09
1295	BlueGuardian	1	2019-11-09
1296	LVC1VS	5	2019-11-10
1297	Boyarin_of_Pech	7	2019-11-10
1298	RuslanSabov	3	2019-11-11
1299	BeCool	2	2019-11-11
1300	Gpob999	2	2019-11-11
1301	TioAlber	3	2019-11-11
1302	Cheess	1	2019-11-11
1303	TILZ	9	2019-11-11
1304	hangmanR	8	2019-11-12
1305	vasily156	10	2019-11-13
1306	Pingus321123	9	2019-11-13
1307	Basiat	10	2019-11-14
1308	painkiller363	10	2019-11-14
1309	padla123	7	2019-11-15
1310	Db1MoK	10	2019-11-15
1311	Leandro_Aco	10	2019-11-15
1312	Deathtuna	10	2019-11-15
1313	AksiDeX	10	2019-11-16
1314	XyAH_XyAHiTac	10	2019-11-16
1315	GamesInsight	9	2019-11-17
1316	flexchamp	10	2019-11-16
1317	AnunnakiRamb0	9	2019-11-16
1318	GoranTOT	10	2019-11-17
1319	Laykmar	8	2019-11-17
1320	agadilov95	10	2019-11-17
1321	alexeishlapakov	10	2019-11-17
1322	Horsttappert	10	2019-11-17
1323	Genaroah10	10	2019-11-17
1324	Viusatina	10	2019-12-06
1325	Superkano	9	2019-11-20
1326	Danidasanic	9	2019-11-21
1327	Repak	9	2019-11-21
1328	Vatanabe	9	2019-11-26
1329	Codeis	10	2019-11-26
1330	Arc22	10	2019-11-26
1331	crategod	10	2019-11-26
1332	Gymbee	10	2019-11-28
1333	jasein01	10	2019-11-29
1334	3BLAN	9	2019-11-29
1335	Doni_mazagaming	10	2019-11-29
1336	Shimiori	10	2019-11-30
1337	Barryyyy	10	2019-11-30
1338	Gantelya1337	10	2019-12-01
1339	Barshavisko	9	2019-12-01
1340	MatiasF93	10	2019-12-02
1341	Latabar	10	2019-12-02
1342	OwlJuls23	8	2019-12-02
1343	Fishsticks19	10	2019-12-04
1344	DrLotto	9	2019-12-04
1345	all4n07	10	2019-12-04
1346	Tequila7	10	2019-12-05
1347	malutka615	10	2019-12-05
1348	Valennnnn	10	2019-12-05
1349	Waveart2019	10	2019-12-05
1350	soywiki	10	2019-12-06
1351	sqeezyyy	10	2019-12-07
1352	Vhaeraun	10	2019-12-08
1353	AbdullahOT	10	2019-12-08
1354	SevkaDinoZavR	9	2019-12-09
1355	Carface	9	2019-12-09
1356	drum_sem	10	2019-12-09
1357	EVGSounsFX	10	2019-12-10
1358	FireNoWater	10	2019-12-10
1359	MrDevold	10	2019-12-14
1360	BoJames	10	2019-12-14
1361	ABCtt	9	2019-12-15
1362	rykama	10	2019-12-19
1363	bugor92	10	2019-12-22
1364	zikads12	0	2020-01-03
1365	SashaDudeRUS	10	2020-01-04
1366	DarkTl	3	2020-01-10
1367	kring	10	2019-12-29
1368	Trickster42	0	2020-01-11
1369	Dark_D3s7r0y3r	3	2020-01-18
1370	hannibalektr	7	2019-12-08
1371	Pegula	10	2020-01-06
1372	jah1337	4	2020-01-03
1373	Arkornev	10	2019-11-25
1374	cousinit99	2	2020-01-06
1375	leet_it_b	8	2019-11-19
1376	scott_324	8	2019-11-18
1377	Andrew23cz	5	2019-11-09
1378	cyberlaw4	10	2019-11-11
1379	LemmeC	0	2020-01-19
1380	RMDsilva	7	2020-01-18
1381	HavokMode	1	2020-01-03
1382	muldjord	10	2020-01-08
1383	Frozenbyte	10	2019-11-19
1384	cterryr2	7	2019-12-19
1385	Gamerichard	10	2019-11-19
1386	MrDreamZz	10	2019-11-19
1387	HeadyWook	10	2020-01-02
1388	EpicSurvivor	5	2019-11-26
1389	Kiabeta	10	2019-11-18
1390	HTAEDestiny	10	2019-11-12
1391	russian_pueblo	10	2019-12-22
1392	SpleenSplitta	10	2019-11-18
1393	Valdemar312	7	2019-11-12
1394	MegaAlix	0	2020-01-13
1395	Dainesito	7	2019-11-12
1396	Rojjas	10	2020-01-17
1397	FOTCH	8	2019-12-31
1398	Cthulhu5000	6	2020-01-12
1399	Gwynceit	9	2020-01-04
1400	lapkina	10	2019-11-24
1401	Averycrosslin	10	2020-01-11
1402	Schmazer	10	2019-11-18
1403	dridnout	10	2019-11-18
1404	VirtusN	0	2020-01-18
1405	zalupakonia	10	2019-11-19
1406	Bombaster	10	2019-11-06
1407	VFA-19	0	2019-11-07
1408	MefistoFelm	8	2019-11-22
1409	AfeRena	9	2019-11-08
1410	ProstoDimaBlya	5	2020-01-01
1411	verrier	7	2019-11-10
1412	SCR0LL	7	2019-11-10
1413	ZloyDjigit	10	2019-11-12
1414	Wagtimao	10	2019-11-12
1415	abaeshev	5	2019-11-12
1416	PrunusTR	3	2019-12-30
1417	dimabugaenko92	10	2019-11-20
1418	Billorean	5	2019-11-18
1419	GRXSSMXN	9	2019-11-19
1420	RavKxK	10	2019-11-18
1421	Aliasnon	7	2019-11-22
1422	Berivsey	10	2019-11-19
1423	Powerblazing	9	2019-11-19
1424	zaef	9	2019-11-19
1425	Endee82	9	2019-11-21
1426	BrianHoge	8	2019-11-21
1427	jdarwen	8	2019-11-22
1428	DevaDas1995	10	2019-11-22
1429	MrUnseen	10	2019-11-24
1430	Forsworth	10	2019-11-24
1431	MACsgotagun	9	2019-11-25
1432	Ali_Khalid90	10	2019-11-25
1433	ChrisWhiteWolf	4	2020-01-01
1434	TripleBeam	8	2019-11-25
1435	Please0rka	10	2019-11-27
1436	Macodonia	10	2019-11-27
1437	PedroPotter3	9	2019-11-28
1438	Ph03n1xDE	9	2020-01-01
1439	Pipyao	7	2019-12-23
1440	PheDii	8	2020-01-04
1441	Aleuvian	7	2020-01-01
1442	JolyWonka1	10	2020-01-01
1443	FlintGamer2	0	2020-01-02
1444	OliYT	10	2020-01-03
1445	GameForm	10	2020-01-03
1446	FaitBeats	10	2020-01-08
1447	iIkotIi	0	2020-01-04
1448	Igaveuallihad	10	2020-01-04
1449	YouMoMCallME	0	2020-01-05
1450	PeKa79	0	2020-01-06
1451	SalbenFL	10	2020-01-06
1452	wkdal1018	0	2020-01-13
1453	C-HOOE	10	2020-01-10
1454	LUCACHAIR	9	2020-01-12
1455	ivanch88	10	2020-01-15
1456	Shardkiht	10	2020-01-17
1457	jefac	10	2020-01-19
\.


--
-- Name: rdr2_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rdr2_reviews_id_seq', 198, true);


--
-- Name: rdr2_users_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rdr2_users_reviews_id_seq', 1457, true);


--
-- Name: rdr2_reviews rdr2_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdr2_reviews
    ADD CONSTRAINT rdr2_reviews_pkey PRIMARY KEY (id);


--
-- Name: rdr2_users_reviews rdr2_users_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rdr2_users_reviews
    ADD CONSTRAINT rdr2_users_reviews_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

