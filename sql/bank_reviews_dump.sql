--
-- PostgreSQL database dump
--

\restrict nL0k4M2ImRLh9MEv5v9laQud3dMMON01iTJVVRGyxLdpymtssaiJJ7P9delCVrT

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    bank_id character varying(200) NOT NULL,
    bank_name character varying(100),
    app_name character varying(150)
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    bank_id character varying(200),
    review_text text,
    rating integer,
    review_date date,
    sentiment_label character varying(20),
    sentiment_score double precision,
    source character varying(50)
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_review_id_seq OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews.review_id;


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN review_id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (bank_id, bank_name, app_name) FROM stdin;
com.combanketh.mobilebanking	Commercial Bank of Ethiopia	CBE Mobile Banking
com.boa.boaMobileBanking	Bank of Abyssinia	BOA Mobile Banking
com.dashen.dashensuperapp	Dashen Bank	Dashen SuperApp
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (review_id, bank_id, review_text, rating, review_date, sentiment_label, sentiment_score, source) FROM stdin;
1	com.combanketh.mobilebanking	special	5	2025-11-29	POSITIVE	0.999722182750702	Google Play
2	com.combanketh.mobilebanking	make user friendly	2	2025-11-29	POSITIVE	0.9943128824234008	Google Play
3	com.dashen.dashensuperapp	smart app easy use friendly	5	2025-11-29	POSITIVE	0.9983654618263244	Google Play
4	com.dashen.dashensuperapp	exemplery app bank aps	5	2025-11-29	NEGATIVE	0.9918402433395386	Google Play
5	com.dashen.dashensuperapp	good	5	2025-11-29	POSITIVE	0.999816119670868	Google Play
6	com.boa.boaMobileBanking	good	5	2025-11-28	POSITIVE	0.999816119670868	Google Play
7	com.boa.boaMobileBanking	good	5	2025-11-28	POSITIVE	0.999816119670868	Google Play
8	com.dashen.dashensuperapp	amaze app	4	2025-11-28	POSITIVE	0.9987784028053284	Google Play
9	com.boa.boaMobileBanking	goof	5	2025-11-28	NEGATIVE	0.9975278973579408	Google Play
10	com.combanketh.mobilebanking	maaliif daddafee install gaafata	3	2025-11-28	NEGATIVE	0.9875527620315552	Google Play
11	com.combanketh.mobilebanking	good app	5	2025-11-28	POSITIVE	0.9998493194580078	Google Play
12	com.boa.boaMobileBanking	good jop	5	2025-11-27	POSITIVE	0.9998409748077391	Google Play
13	com.boa.boaMobileBanking	bad exprienceit crush	1	2025-11-27	NEGATIVE	0.9994981288909912	Google Play
14	com.combanketh.mobilebanking	good application	4	2025-11-27	POSITIVE	0.999854564666748	Google Play
15	com.combanketh.mobilebanking	advanced app stay safe	5	2025-11-27	POSITIVE	0.9454635977745056	Google Play
16	com.combanketh.mobilebanking	app make life easy thank cbe	5	2025-11-27	POSITIVE	0.998243808746338	Google Play
17	com.combanketh.mobilebanking	didnt work app	1	2025-11-27	NEGATIVE	0.9993281364440918	Google Play
18	com.combanketh.mobilebanking	application important advantage transfer money finance coutry foriegn country	5	2025-11-27	POSITIVE	0.732491672039032	Google Play
19	com.dashen.dashensuperapp	fast easy communicate app available area keep upi make happy application thank dashen bank effortcommitment dedication appricated work	5	2025-11-26	POSITIVE	0.999338448047638	Google Play
20	com.combanketh.mobilebanking	nice app	5	2025-11-26	POSITIVE	0.9998061060905457	Google Play
21	com.boa.boaMobileBanking	good	5	2025-11-25	POSITIVE	0.999816119670868	Google Play
22	com.combanketh.mobilebanking	nice app	5	2025-11-25	POSITIVE	0.9998061060905457	Google Play
23	com.combanketh.mobilebanking	best	5	2025-11-25	POSITIVE	0.9997941851615906	Google Play
24	com.boa.boaMobileBanking	time work properly	1	2025-11-25	POSITIVE	0.9993921518325806	Google Play
25	com.boa.boaMobileBanking	good service	5	2025-11-25	POSITIVE	0.9998499155044556	Google Play
26	com.combanketh.mobilebanking	good banking service fast service	5	2025-11-24	POSITIVE	0.9997239708900452	Google Play
27	com.combanketh.mobilebanking	thanks blc app help use time	5	2025-11-24	POSITIVE	0.9917022585868835	Google Play
28	com.combanketh.mobilebanking	cant send money people telebirr wallet	1	2025-11-24	NEGATIVE	0.9940006136894226	Google Play
29	com.combanketh.mobilebanking	good	5	2025-11-24	POSITIVE	0.999816119670868	Google Play
30	com.combanketh.mobilebanking	wow	5	2025-11-23	POSITIVE	0.999592125415802	Google Play
31	com.dashen.dashensuperapp	exceptional product	5	2025-11-23	POSITIVE	0.9998618364334106	Google Play
32	com.dashen.dashensuperapp	easy app	3	2025-11-23	POSITIVE	0.9899939894676208	Google Play
33	com.boa.boaMobileBanking	use	3	2025-11-23	POSITIVE	0.9849587678909302	Google Play
34	com.combanketh.mobilebanking	excellent	5	2025-11-22	POSITIVE	0.9998434782028198	Google Play
35	com.boa.boaMobileBanking	keep notify disable developer option quiet im enable always bring another type problem new update	1	2025-11-22	NEGATIVE	0.9924895763397216	Google Play
36	com.combanketh.mobilebanking	nice	5	2025-11-22	POSITIVE	0.9998552799224854	Google Play
37	com.combanketh.mobilebanking	smart app recommend everyone	5	2025-11-22	POSITIVE	0.9997871518135072	Google Play
38	com.combanketh.mobilebanking	reason get ye chogara himem	1	2025-11-22	NEGATIVE	0.9900159239768982	Google Play
39	com.boa.boaMobileBanking	waw	5	2025-11-21	NEGATIVE	0.7346185445785522	Google Play
40	com.combanketh.mobilebanking	absolutely right	5	2025-11-21	POSITIVE	0.9998525381088256	Google Play
41	com.combanketh.mobilebanking	mid application annoy	3	2025-11-20	NEGATIVE	0.9873175024986268	Google Play
42	com.combanketh.mobilebanking	use morethan one year	4	2025-11-20	NEGATIVE	0.964558243751526	Google Play
43	com.combanketh.mobilebanking	great appi love app	5	2025-11-20	POSITIVE	0.9998466968536376	Google Play
44	com.boa.boaMobileBanking	lag unbelievable need suks	1	2025-11-19	NEGATIVE	0.9898748397827148	Google Play
45	com.combanketh.mobilebanking	nice	5	2025-11-19	POSITIVE	0.9998552799224854	Google Play
46	com.combanketh.mobilebanking	securr	5	2025-11-19	NEGATIVE	0.9891945123672484	Google Play
47	com.combanketh.mobilebanking	make life easy	5	2025-11-19	POSITIVE	0.999527096748352	Google Play
48	com.combanketh.mobilebanking	fast convenient app thanks dedication bank provide good option cuatomers	1	2025-11-19	POSITIVE	0.9905927777290344	Google Play
49	com.combanketh.mobilebanking	love app	5	2025-11-19	POSITIVE	0.9997610449790956	Google Play
50	com.combanketh.mobilebanking	allow transfer show current statement update	1	2025-11-19	NEGATIVE	0.7932183146476746	Google Play
51	com.combanketh.mobilebanking	suckkkks	1	2025-11-19	NEGATIVE	0.9737535119056702	Google Play
52	com.dashen.dashensuperapp	really slow app im sure issue even bank transfer work	2	2025-11-18	NEGATIVE	0.9992966651916504	Google Play
53	com.dashen.dashensuperapp	bill payment option limit app please add ethio telecom bill electric bill etc instead add nonsense banking app	1	2025-11-18	NEGATIVE	0.995244562625885	Google Play
54	com.boa.boaMobileBanking	good app	5	2025-11-18	POSITIVE	0.9998493194580078	Google Play
55	com.boa.boaMobileBanking	cant belive could find bad bank app ever yet simple fix problem company ignore body business kind app	1	2025-11-18	NEGATIVE	0.9980358481407166	Google Play
56	com.combanketh.mobilebanking	optional bank	5	2025-11-17	NEGATIVE	0.6350374817848206	Google Play
57	com.combanketh.mobilebanking	5 star	5	2025-11-17	POSITIVE	0.9964116215705872	Google Play
58	com.dashen.dashensuperapp	always update bad stability	1	2025-11-17	NEGATIVE	0.9934158325195312	Google Play
59	com.dashen.dashensuperapp	say disable developer option disable working still	1	2025-11-17	NEGATIVE	0.9993065595626832	Google Play
60	com.dashen.dashensuperapp	super app evry thing need tap away	5	2025-11-17	NEGATIVE	0.89150470495224	Google Play
61	com.dashen.dashensuperapp	nice	5	2025-11-16	POSITIVE	0.9998552799224854	Google Play
62	com.combanketh.mobilebanking	ok	3	2025-11-16	POSITIVE	0.9997851252555848	Google Play
63	com.combanketh.mobilebanking	sifen	5	2025-11-16	NEGATIVE	0.8473549485206604	Google Play
64	com.combanketh.mobilebanking	fantastic app	5	2025-11-16	POSITIVE	0.999858856201172	Google Play
65	com.dashen.dashensuperapp	eyita tip	1	2025-11-15	POSITIVE	0.8398545384407043	Google Play
66	com.dashen.dashensuperapp	clear presize	5	2025-11-15	POSITIVE	0.9982303977012634	Google Play
67	com.boa.boaMobileBanking	work	1	2025-11-15	POSITIVE	0.9994449019432068	Google Play
68	com.dashen.dashensuperapp	smooth easy	5	2025-11-14	POSITIVE	0.9995962977409364	Google Play
69	com.dashen.dashensuperapp	amaze experience appot o convenient easy use	5	2025-11-14	POSITIVE	0.9305214285850524	Google Play
70	com.dashen.dashensuperapp	nice app	5	2025-11-14	POSITIVE	0.9998061060905457	Google Play
71	com.dashen.dashensuperapp	one super app smooth navigation transaction lifestyle service	5	2025-11-14	POSITIVE	0.9516221284866332	Google Play
72	com.dashen.dashensuperapp	system failure transfer others account	2	2025-11-13	NEGATIVE	0.9992184638977052	Google Play
73	com.dashen.dashensuperapp	uiux good doesnt function properly shame lead tech bank app amole far well	1	2025-11-13	NEGATIVE	0.9991577863693236	Google Play
74	com.boa.boaMobileBanking	try activate app keep load security question page two day	1	2025-11-13	NEGATIVE	0.9924334287643432	Google Play
75	com.dashen.dashensuperapp	thank	1	2025-11-13	POSITIVE	0.9998283386230468	Google Play
76	com.combanketh.mobilebanking	like	5	2025-11-13	POSITIVE	0.9910564422607422	Google Play
77	com.combanketh.mobilebanking	nice useful app like	5	2025-11-13	POSITIVE	0.9994981288909912	Google Play
78	com.combanketh.mobilebanking	good	5	2025-11-13	POSITIVE	0.999816119670868	Google Play
79	com.dashen.dashensuperapp	wow dashen bank super app	5	2025-11-12	POSITIVE	0.9992703795433044	Google Play
80	com.combanketh.mobilebanking	smart app	4	2025-11-12	POSITIVE	0.999789297580719	Google Play
81	com.combanketh.mobilebanking	good app	5	2025-11-12	POSITIVE	0.9998493194580078	Google Play
82	com.combanketh.mobilebanking	sync problem may 22 2025 date stack may 8 2025 help pls	5	2025-11-12	NEGATIVE	0.9966762065887452	Google Play
83	com.dashen.dashensuperapp	excellent app use perfectlly paytransfertele airtime	5	2025-11-12	POSITIVE	0.9971539974212646	Google Play
84	com.combanketh.mobilebanking	convenient app	5	2025-11-11	POSITIVE	0.9977468848228456	Google Play
85	com.boa.boaMobileBanking	fast simple	5	2025-11-11	POSITIVE	0.9995573163032532	Google Play
86	com.dashen.dashensuperapp	best mobile banking app ethiopia	5	2025-11-11	POSITIVE	0.9996054768562316	Google Play
87	com.combanketh.mobilebanking	able transfer app respond	1	2025-11-11	POSITIVE	0.9717736840248108	Google Play
88	com.combanketh.mobilebanking	awesome	5	2025-11-11	POSITIVE	0.9998682737350464	Google Play
89	com.combanketh.mobilebanking	cbe choice	4	2025-11-11	POSITIVE	0.9943251013755798	Google Play
90	com.combanketh.mobilebanking	ok	5	2025-11-11	POSITIVE	0.9997851252555848	Google Play
91	com.dashen.dashensuperapp	nasty bank even supper app work well call response please dont use app loss time energy everything hopeless bank	1	2025-11-10	NEGATIVE	0.9989932179450988	Google Play
92	com.combanketh.mobilebanking	app constantly glitches wont stop load despite decent connection clear cache telebirr way well	1	2025-11-10	NEGATIVE	0.9969236254692078	Google Play
93	com.combanketh.mobilebanking	wow apk	5	2025-11-10	POSITIVE	0.9992477893829346	Google Play
94	com.combanketh.mobilebanking	cant access properly think need update	1	2025-11-10	NEGATIVE	0.9938716888427734	Google Play
95	com.combanketh.mobilebanking	refresh	2	2025-11-10	POSITIVE	0.9998132586479188	Google Play
96	com.combanketh.mobilebanking	statement use want	1	2025-11-10	NEUTRAL	0.591838002204895	Google Play
97	com.combanketh.mobilebanking	nice app	5	2025-11-10	POSITIVE	0.9998061060905457	Google Play
98	com.dashen.dashensuperapp	nice app ever see	5	2025-11-10	POSITIVE	0.9997578263282776	Google Play
99	com.combanketh.mobilebanking	bad app	1	2025-11-10	NEGATIVE	0.9997212290763856	Google Play
100	com.combanketh.mobilebanking	best app	5	2025-11-10	POSITIVE	0.999686598777771	Google Play
101	com.boa.boaMobileBanking	worest banking app ever see fake app bad good leave	1	2025-11-10	NEGATIVE	0.9981677532196044	Google Play
102	com.boa.boaMobileBanking	good	4	2025-11-10	POSITIVE	0.999816119670868	Google Play
103	com.combanketh.mobilebanking	excellent sometimes connect	5	2025-11-10	POSITIVE	0.9998677968978882	Google Play
104	com.boa.boaMobileBanking	best best	5	2025-11-10	POSITIVE	0.9998223185539246	Google Play
105	com.dashen.dashensuperapp	financial system must improve	4	2025-11-09	POSITIVE	0.8057984709739685	Google Play
106	com.dashen.dashensuperapp	service good	5	2025-11-09	POSITIVE	0.9998273849487304	Google Play
107	com.dashen.dashensuperapp	good experience	5	2025-11-09	POSITIVE	0.9998599290847778	Google Play
108	com.dashen.dashensuperapp	good fast	5	2025-11-09	POSITIVE	0.9998499155044556	Google Play
109	com.combanketh.mobilebanking	good good	5	2025-11-09	POSITIVE	0.9998282194137572	Google Play
110	com.combanketh.mobilebanking	absolute trash woking time server even though im use 4g data internet steal work use work even data package trash cant even send money	1	2025-11-09	NEGATIVE	0.999702513217926	Google Play
111	com.boa.boaMobileBanking	best app	5	2025-11-08	POSITIVE	0.999686598777771	Google Play
112	com.combanketh.mobilebanking	app functional week	4	2025-11-08	POSITIVE	0.6350575089454651	Google Play
113	com.combanketh.mobilebanking	good	5	2025-11-08	POSITIVE	0.999816119670868	Google Play
114	com.combanketh.mobilebanking	like	5	2025-11-08	POSITIVE	0.9910564422607422	Google Play
115	com.combanketh.mobilebanking	nice app	5	2025-11-08	POSITIVE	0.9998061060905457	Google Play
116	com.dashen.dashensuperapp	ok	5	2025-11-08	POSITIVE	0.9997851252555848	Google Play
117	com.boa.boaMobileBanking	would like share feedback regard application frequently experience disruption function properly often freeze fail load issue affect workflow efficiency kindly review address problem ensure smooth performance	1	2025-11-08	POSITIVE	0.9097022414207458	Google Play
118	com.boa.boaMobileBanking	meet genuineapp try functionalhelpingwelldoingwith boa ethiopia fastandrelevantmorconnecting digitalyworlddigitalyworld thanks	5	2025-11-08	POSITIVE	0.9733205437660216	Google Play
119	com.dashen.dashensuperapp	wooow	5	2025-11-07	NEGATIVE	0.983917474746704	Google Play
120	com.dashen.dashensuperapp	nice app	5	2025-11-07	POSITIVE	0.9998061060905457	Google Play
121	com.dashen.dashensuperapp	best	5	2025-11-07	POSITIVE	0.9997941851615906	Google Play
122	com.boa.boaMobileBanking	fav app	5	2025-11-07	POSITIVE	0.9915544390678406	Google Play
123	com.boa.boaMobileBanking	barely work always fails connect	1	2025-11-07	NEGATIVE	0.9981617331504822	Google Play
124	com.boa.boaMobileBanking	best app	5	2025-11-07	POSITIVE	0.999686598777771	Google Play
125	com.dashen.dashensuperapp	amzing	5	2025-11-06	NEGATIVE	0.9989879727363586	Google Play
126	com.dashen.dashensuperapp	attractive friendly app check awash cbe apps	1	2025-11-06	POSITIVE	0.994606912136078	Google Play
127	com.dashen.dashensuperapp	easy use friendly	5	2025-11-06	POSITIVE	0.9966408014297484	Google Play
128	com.combanketh.mobilebanking	updated bank	5	2025-11-06	POSITIVE	0.9989815354347228	Google Play
129	com.combanketh.mobilebanking	tankyu	5	2025-11-05	POSITIVE	0.840437114238739	Google Play
130	com.combanketh.mobilebanking	love	5	2025-11-05	POSITIVE	0.9998735189437866	Google Play
131	com.combanketh.mobilebanking	uninstalled need visit nearby bank go ask new sim card hasnt use buy new sim card go back new sim card reach service provider say authentication pin arrive system work come back tomorrow	1	2025-11-05	NEGATIVE	0.9920853972434998	Google Play
132	com.combanketh.mobilebanking	number 2 3 dont write pin verification	5	2025-11-05	NEGATIVE	0.9934709072113036	Google Play
133	com.boa.boaMobileBanking	app launch time long also dozen bug addition long time get update	1	2025-11-05	NEGATIVE	0.9964523315429688	Google Play
134	com.dashen.dashensuperapp	use	5	2025-11-05	POSITIVE	0.9849587678909302	Google Play
135	com.dashen.dashensuperapp	go ahead	5	2025-11-05	POSITIVE	0.999769389629364	Google Play
136	com.dashen.dashensuperapp	love app feature perfect asks update many time activate need visit near branch take time app great like	5	2025-11-05	POSITIVE	0.9984745383262634	Google Play
137	com.dashen.dashensuperapp	wonderful app	5	2025-11-05	POSITIVE	0.9998787641525269	Google Play
138	com.dashen.dashensuperapp	wonderful app develop local talent deserve appreciation continue evolve new exciting feature	5	2025-11-05	POSITIVE	0.9996157884597778	Google Play
139	com.dashen.dashensuperapp	please try fix barrier bank specially commercial bank ethiopia	3	2025-11-05	NEGATIVE	0.9877018332481384	Google Play
140	com.dashen.dashensuperapp	dashen always two step ahead	5	2025-11-05	POSITIVE	0.9996833801269532	Google Play
141	com.dashen.dashensuperapp	bad app ever	1	2025-11-05	NEGATIVE	0.9996838569641112	Google Play
142	com.dashen.dashensuperapp	exceptional	5	2025-11-05	POSITIVE	0.9998514652252196	Google Play
143	com.dashen.dashensuperapp	betam kerfafa naw	1	2025-11-05	NEGATIVE	0.9936383366584778	Google Play
144	com.boa.boaMobileBanking	application irritate use functionality doesnt even work like card management need well good idea reference banking application	3	2025-11-04	NEGATIVE	0.9994860887527466	Google Play
145	com.boa.boaMobileBanking	nice	5	2025-11-04	POSITIVE	0.9998552799224854	Google Play
146	com.dashen.dashensuperapp	improve much lately work get well yet fully fixed time night doesnt worki think problem launch early	3	2025-11-04	POSITIVE	0.9177791476249696	Google Play
147	com.dashen.dashensuperapp	boring	1	2025-11-04	NEGATIVE	0.99978905916214	Google Play
148	com.dashen.dashensuperapp	good	5	2025-11-04	POSITIVE	0.999816119670868	Google Play
149	com.dashen.dashensuperapp	rarely leave review app truely deserve oneits efficient secure reliable make fanancial task effortlessdefinitely 5 star exceptional app	5	2025-11-04	POSITIVE	0.9331679940223694	Google Play
150	com.dashen.dashensuperapp	dashen bank super app late version online banking system gift dashen bank u thanks dashen	5	2025-11-04	POSITIVE	0.9349395036697388	Google Play
151	com.dashen.dashensuperapp	supper	5	2025-11-04	POSITIVE	0.9822134971618652	Google Play
152	com.dashen.dashensuperapp	wow dashen bank	5	2025-11-03	POSITIVE	0.9995077848434448	Google Play
153	com.dashen.dashensuperapp	amaze	5	2025-11-03	POSITIVE	0.9996262788772584	Google Play
154	com.combanketh.mobilebanking	recent update unable download receipt cant see names account holder ive previously transact important please fix asap	1	2025-11-03	NEGATIVE	0.9954932928085328	Google Play
155	com.combanketh.mobilebanking	cbe need show transaction fee transaction confirm big issue fee longer insignificant	3	2025-11-03	NEGATIVE	0.9986937642097472	Google Play
156	com.combanketh.mobilebanking	app work phone	5	2025-11-03	NEGATIVE	0.9775922894477844	Google Play
157	com.boa.boaMobileBanking	like	5	2025-11-02	POSITIVE	0.9910564422607422	Google Play
158	com.combanketh.mobilebanking	mobile banking broblem	5	2025-11-01	NEGATIVE	0.9918060302734376	Google Play
159	com.combanketh.mobilebanking	good job	5	2025-11-01	POSITIVE	0.999835729598999	Google Play
160	com.dashen.dashensuperapp	updated app late version couldnt even see balance send money anything say service unavailable fix soon	5	2025-11-01	NEGATIVE	0.998607337474823	Google Play
161	com.dashen.dashensuperapp	slow	1	2025-11-01	NEGATIVE	0.9997313618659972	Google Play
162	com.dashen.dashensuperapp	might worst bank app ive ever use dont know kind bug suddenly apps stop work say temporarily unavailable simple feature like view account balance person visit help take longer 2 hour fix even 2 week later problem im go stop use bank altogether shame decent bank	1	2025-11-01	NEGATIVE	0.9994895458221436	Google Play
163	com.combanketh.mobilebanking	good clear apps use	4	2025-10-31	POSITIVE	0.9997442364692688	Google Play
164	com.dashen.dashensuperapp	app slow opening fast	1	2025-10-31	NEGATIVE	0.9961506128311156	Google Play
165	com.dashen.dashensuperapp	bad app ever extremely unreliable shame big bank	1	2025-10-31	NEGATIVE	0.9984750151634216	Google Play
166	com.dashen.dashensuperapp	seem improvement dont know whats go app sometimes get collapseed expect dashen bank amongst famous great bank	1	2025-10-30	NEGATIVE	0.9897683262825012	Google Play
167	com.combanketh.mobilebanking	love app bc every option app clear supportive	5	2025-10-30	POSITIVE	0.9971018433570862	Google Play
168	com.dashen.dashensuperapp	emplyees tell app come store actually app different	1	2025-10-30	NEGATIVE	0.6882601380348206	Google Play
169	com.dashen.dashensuperapp	interest	5	2025-10-30	POSITIVE	0.999414086341858	Google Play
170	com.dashen.dashensuperapp	nise good	5	2025-10-30	POSITIVE	0.9998576641082764	Google Play
171	com.boa.boaMobileBanking	bad app ever	1	2025-10-30	NEGATIVE	0.9996838569641112	Google Play
172	com.dashen.dashensuperapp	excellent promotion	5	2025-10-30	POSITIVE	0.9998637437820436	Google Play
173	com.boa.boaMobileBanking	sorry doesnt work android slow bank fast please update	1	2025-10-30	NEGATIVE	0.999218225479126	Google Play
174	com.combanketh.mobilebanking	app good dark mode add	3	2025-10-29	POSITIVE	0.998264491558075	Google Play
175	com.combanketh.mobilebanking	abdulakim abrahim elemoo	5	2025-10-29	POSITIVE	0.9634569883346558	Google Play
176	com.boa.boaMobileBanking	well	5	2025-10-29	POSITIVE	0.9995703101158142	Google Play
177	com.dashen.dashensuperapp	viry good	5	2025-10-29	POSITIVE	0.9997873902320862	Google Play
178	com.combanketh.mobilebanking	niiceh	5	2025-10-29	POSITIVE	0.8779542446136475	Google Play
179	com.dashen.dashensuperapp	amaze app name truly supper	5	2025-10-28	POSITIVE	0.9733238220214844	Google Play
180	com.dashen.dashensuperapp	love new dark theme give app modern feel n make comfortable use	5	2025-10-28	POSITIVE	0.9994250535964966	Google Play
181	com.combanketh.mobilebanking	strong	5	2025-10-28	POSITIVE	0.999862551689148	Google Play
182	com.combanketh.mobilebanking	abebaw zenebe	5	2025-10-28	NEUTRAL	0.5422855019569397	Google Play
183	com.boa.boaMobileBanking	kindly request bank abyssinia address issue mobile app slow numerous problem frequently experience downtime user experience also poor thank	1	2025-10-28	NEGATIVE	0.9986514449119568	Google Play
184	com.dashen.dashensuperapp	stun ui reliable service	5	2025-10-28	POSITIVE	0.9039299488067628	Google Play
185	com.dashen.dashensuperapp	astonish interface ease access complete performance	5	2025-10-28	POSITIVE	0.9992756247520448	Google Play
186	com.dashen.dashensuperapp	amaze ui ux dark mode look absolutely awesome	5	2025-10-28	POSITIVE	0.99968683719635	Google Play
187	com.dashen.dashensuperapp	design clean modern everything work smoothly without bug love reliable app make banking convenient	5	2025-10-28	POSITIVE	0.9991577863693236	Google Play
188	com.dashen.dashensuperapp	true banking super app dashen super app combine great design security impressive range feature highly recommend anyone look complete digital banking experience	5	2025-10-28	POSITIVE	0.9996474981307985	Google Play
189	com.dashen.dashensuperapp	app make daytoday payment easy everything work perfectly save lot time	5	2025-10-28	POSITIVE	0.994897186756134	Google Play
190	com.dashen.dashensuperapp	app replace several others everything need one place	5	2025-10-28	NEGATIVE	0.991973042488098	Google Play
191	com.dashen.dashensuperapp	dashen superapp keep improve new theme option beautiful overall experience faster smoother ever	5	2025-10-28	POSITIVE	0.9991043210029602	Google Play
192	com.dashen.dashensuperapp	one user friendly impressive apps encounter banking sector	5	2025-10-28	POSITIVE	0.999606430530548	Google Play
193	com.dashen.dashensuperapp	use app month easy use user friendly thanks dashen bank	5	2025-10-28	POSITIVE	0.9605998396873474	Google Play
194	com.dashen.dashensuperapp	finally bank make simple everything need one super app true game changer manage finance go	5	2025-10-28	NEGATIVE	0.99105703830719	Google Play
195	com.dashen.dashensuperapp	appreciate secure app feel every transaction come confirmation always get alert immediately	5	2025-10-28	POSITIVE	0.97958505153656	Google Play
196	com.boa.boaMobileBanking	app cant open problem please solve problem	1	2025-10-28	POSITIVE	0.7155839800834656	Google Play
197	com.dashen.dashensuperapp	super ultimate digital banking app living name speed efficiency innovation design seamless experience offer lightningfast transaction toptier security effortless financial management super banking never smooth smart super	5	2025-10-27	NEGATIVE	0.971285045146942	Google Play
198	com.boa.boaMobileBanking	kiyaa makonn	5	2025-10-27	POSITIVE	0.7175931930541992	Google Play
199	com.combanketh.mobilebanking	active grant system	5	2025-10-27	POSITIVE	0.998040497303009	Google Play
200	com.combanketh.mobilebanking	fast app	4	2025-10-27	POSITIVE	0.9983617663383484	Google Play
201	com.combanketh.mobilebanking	good love keep new update fire soo good	5	2025-10-27	POSITIVE	0.9996777772903442	Google Play
202	com.combanketh.mobilebanking	cbe	5	2025-10-27	POSITIVE	0.9966009855270386	Google Play
203	com.boa.boaMobileBanking	lazy app	1	2025-10-26	NEGATIVE	0.9996246099472046	Google Play
204	com.combanketh.mobilebanking	galaxy a10s	3	2025-10-26	POSITIVE	0.8983982801437378	Google Play
205	com.combanketh.mobilebanking	best apps	5	2025-10-26	POSITIVE	0.999784529209137	Google Play
206	com.combanketh.mobilebanking	arif app new	5	2025-10-26	NEUTRAL	0.5203977823257446	Google Play
207	com.combanketh.mobilebanking	laga bari biranch	5	2025-10-26	NEGATIVE	0.9922857284545898	Google Play
208	com.combanketh.mobilebanking	attractive	5	2025-10-25	POSITIVE	0.9998689889907836	Google Play
209	com.combanketh.mobilebanking	would like suggest improve time take money doesnt return back next day	3	2025-10-25	NEGATIVE	0.9974918365478516	Google Play
210	com.boa.boaMobileBanking	telebirr remittance	5	2025-10-24	NEGATIVE	0.9799609780311584	Google Play
211	com.combanketh.mobilebanking	useful	5	2025-10-24	POSITIVE	0.9997634291648864	Google Play
212	com.combanketh.mobilebanking	mite	5	2025-10-24	NEGATIVE	0.996557116508484	Google Play
213	com.combanketh.mobilebanking	good	5	2025-10-23	POSITIVE	0.999816119670868	Google Play
214	com.combanketh.mobilebanking	good bad	3	2025-10-23	POSITIVE	0.9987626075744628	Google Play
215	com.dashen.dashensuperapp	ui impressive add atm withdrawal feature cardless cash access would enhance functionality may require update atm system well please consider dev team	4	2025-10-22	NEGATIVE	0.9653885960578918	Google Play
216	com.dashen.dashensuperapp	convinent	5	2025-10-22	NEGATIVE	0.9798853993415833	Google Play
217	com.boa.boaMobileBanking	bad app financial experience	1	2025-10-22	NEGATIVE	0.9997988343238832	Google Play
218	com.combanketh.mobilebanking	imp	5	2025-10-22	NEGATIVE	0.9978600144386292	Google Play
219	com.boa.boaMobileBanking	good	5	2025-10-22	POSITIVE	0.999816119670868	Google Play
220	com.boa.boaMobileBanking	good mb appliciation	5	2025-10-21	POSITIVE	0.999750554561615	Google Play
221	com.combanketh.mobilebanking	super fast app	5	2025-10-21	POSITIVE	0.9976546168327332	Google Play
222	com.boa.boaMobileBanking	bad bank ever slow dont accept dual sim stupid greedy	1	2025-10-20	NEGATIVE	0.9963138699531556	Google Play
223	com.dashen.dashensuperapp	excellent april jest continue abeaten	4	2025-10-19	POSITIVE	0.987492561340332	Google Play
224	com.combanketh.mobilebanking	cbe	4	2025-10-18	POSITIVE	0.9966009855270386	Google Play
225	com.dashen.dashensuperapp	like	5	2025-10-18	POSITIVE	0.9910564422607422	Google Play
226	com.combanketh.mobilebanking	say ti work device	1	2025-10-18	NEGATIVE	0.771593451499939	Google Play
227	com.combanketh.mobilebanking	blah blah blah	5	2025-10-18	NEGATIVE	0.997789978981018	Google Play
228	com.combanketh.mobilebanking	cbe no1	5	2025-10-17	POSITIVE	0.973350703716278	Google Play
229	com.boa.boaMobileBanking	try easy network	4	2025-10-17	NEGATIVE	0.990454375743866	Google Play
230	com.dashen.dashensuperapp	abdrug bentahuuuu	3	2025-10-17	NEGATIVE	0.7569706439971924	Google Play
231	com.combanketh.mobilebanking	work correctly need sometimes works sometimes though	2	2025-10-16	POSITIVE	0.9549627900123596	Google Play
232	com.combanketh.mobilebanking	easy use secure previous one love appreciate commercial bank ethiopia every time update	5	2025-10-16	NEGATIVE	0.9499751925468444	Google Play
233	com.combanketh.mobilebanking	gooof	5	2025-10-16	NEGATIVE	0.996545135974884	Google Play
234	com.combanketh.mobilebanking	best app	5	2025-10-16	POSITIVE	0.999686598777771	Google Play
235	com.combanketh.mobilebanking	suddenly cbe application use stop work call callcenter tell expired vist branch fix go cbe silassie branchafter fill form give sit waited finish fix 2 customer case arrive turn ppl come mobile banking even atm card case finish leave get back work leftwith servicewhy	1	2025-10-16	NEGATIVE	0.9986659288406372	Google Play
236	com.boa.boaMobileBanking	exceptional banking app	5	2025-10-16	POSITIVE	0.9996622800827026	Google Play
237	com.boa.boaMobileBanking	hussen hassen umer	5	2025-10-16	POSITIVE	0.8681218028068542	Google Play
238	com.boa.boaMobileBanking	app suitable lack good ui design large bank must update app professional ui fast appropriate	2	2025-10-16	NEGATIVE	0.9975183010101318	Google Play
239	com.combanketh.mobilebanking	still perfect like	1	2025-10-15	POSITIVE	0.9998824596405028	Google Play
240	com.combanketh.mobilebanking	10 year ago	4	2025-10-14	POSITIVE	0.9869045615196228	Google Play
241	com.combanketh.mobilebanking	asefa obsa	5	2025-10-14	NEGATIVE	0.9988316893577576	Google Play
242	com.combanketh.mobilebanking	good app	5	2025-10-14	POSITIVE	0.9998493194580078	Google Play
243	com.combanketh.mobilebanking	slow	1	2025-10-14	NEGATIVE	0.9997313618659972	Google Play
244	com.combanketh.mobilebanking	berhan deriba wami	4	2025-10-14	POSITIVE	0.755568265914917	Google Play
245	com.combanketh.mobilebanking	apply	1	2025-10-14	POSITIVE	0.9935529232025146	Google Play
246	com.dashen.dashensuperapp	easy	5	2025-10-14	POSITIVE	0.9972309470176696	Google Play
247	com.dashen.dashensuperapp	best application	5	2025-10-14	POSITIVE	0.9998098015785216	Google Play
248	com.combanketh.mobilebanking	erako	5	2025-10-13	POSITIVE	0.997822403907776	Google Play
249	com.dashen.dashensuperapp	lmo	5	2025-10-13	POSITIVE	0.992374837398529	Google Play
250	com.combanketh.mobilebanking	opne	5	2025-10-13	NEGATIVE	0.7972492575645447	Google Play
251	com.combanketh.mobilebanking	mehommd nuri	5	2025-10-13	POSITIVE	0.9508018493652344	Google Play
252	com.combanketh.mobilebanking	mahamad usman	5	2025-10-13	POSITIVE	0.9890894293785096	Google Play
253	com.combanketh.mobilebanking	best	5	2025-10-12	POSITIVE	0.9997941851615906	Google Play
254	com.combanketh.mobilebanking	riyad mohammed abaoli 92 527 2567	5	2025-10-12	POSITIVE	0.9531126022338868	Google Play
255	com.combanketh.mobilebanking	provide secure service	5	2025-10-12	POSITIVE	0.998878300189972	Google Play
256	com.dashen.dashensuperapp	meseret birara	5	2025-10-12	NEGATIVE	0.7238979339599609	Google Play
257	com.dashen.dashensuperapp	doesnt let open account	1	2025-10-12	POSITIVE	0.9838077425956726	Google Play
258	com.combanketh.mobilebanking	doesnt show bank statement option see transaction past month	2	2025-10-12	NEGATIVE	0.9916319251060486	Google Play
259	com.boa.boaMobileBanking	poor	5	2025-10-11	NEGATIVE	0.9997912049293518	Google Play
260	com.dashen.dashensuperapp	good	1	2025-10-11	POSITIVE	0.999816119670868	Google Play
261	com.dashen.dashensuperapp	best	5	2025-10-11	POSITIVE	0.9997941851615906	Google Play
262	com.combanketh.mobilebanking	3 star cant see transaction history apart recent refresh button remove recent activity app allow client view transaction recent	3	2025-10-11	NEGATIVE	0.7564467787742615	Google Play
263	com.combanketh.mobilebanking	mamma husen	2	2025-10-11	POSITIVE	0.9694636464118958	Google Play
264	com.boa.boaMobileBanking	alhamdulilah	5	2025-10-11	POSITIVE	0.8558268547058105	Google Play
265	com.combanketh.mobilebanking	nice serious suggestion send cbe birr customer show name recipient befor actually send money please improve	4	2025-10-10	NEGATIVE	0.6481075882911682	Google Play
266	com.combanketh.mobilebanking	smart bank cbe	5	2025-10-10	POSITIVE	0.9971417784690856	Google Play
267	com.dashen.dashensuperapp	nice best	5	2025-10-10	POSITIVE	0.9998493194580078	Google Play
268	com.combanketh.mobilebanking	exceptional application others bank	5	2025-10-10	POSITIVE	0.9991599321365356	Google Play
269	com.combanketh.mobilebanking	really good app	5	2025-10-10	POSITIVE	0.9998643398284912	Google Play
270	com.boa.boaMobileBanking	best best	5	2025-10-09	POSITIVE	0.9998223185539246	Google Play
271	com.combanketh.mobilebanking	ali urgesa11	3	2025-10-09	NEGATIVE	0.9212200045585632	Google Play
272	com.combanketh.mobilebanking	good	5	2025-10-09	POSITIVE	0.999816119670868	Google Play
273	com.combanketh.mobilebanking	good apps	5	2025-10-09	POSITIVE	0.9998608827590942	Google Play
274	com.combanketh.mobilebanking	best app ever see	5	2025-10-09	POSITIVE	0.9996399879455566	Google Play
275	com.combanketh.mobilebanking	game change financial system	4	2025-10-09	NEGATIVE	0.7636295557022095	Google Play
276	com.combanketh.mobilebanking	good updating	5	2025-10-09	POSITIVE	0.9998449087142944	Google Play
277	com.combanketh.mobilebanking	good application thank participate	5	2025-10-08	POSITIVE	0.999832272529602	Google Play
278	com.boa.boaMobileBanking	always crush	1	2025-10-08	NEGATIVE	0.9962873458862304	Google Play
279	com.combanketh.mobilebanking	service charge vat fee everything wanna take everything fair	1	2025-10-08	NEGATIVE	0.9718189239501952	Google Play
280	com.combanketh.mobilebanking	remove screenshot feature	2	2025-10-08	NEGATIVE	0.998031198978424	Google Play
281	com.combanketh.mobilebanking	application bank commercial ethiopia happy able appear great job pleasant job	5	2025-10-08	POSITIVE	0.99897301197052	Google Play
282	com.combanketh.mobilebanking	user compatible app	5	2025-10-08	POSITIVE	0.9908377528190612	Google Play
283	com.dashen.dashensuperapp	finish app development fully give final result inconvenient reliable moment	1	2025-10-08	NEUTRAL	0.5496875643730164	Google Play
284	com.boa.boaMobileBanking	last week update app work please check problem	1	2025-10-08	NEGATIVE	0.9824066162109376	Google Play
285	com.dashen.dashensuperapp	hayelu beranu bashre	5	2025-10-07	POSITIVE	0.940301239490509	Google Play
286	com.boa.boaMobileBanking	office branch improve service please	4	2025-10-07	POSITIVE	0.9991437196731568	Google Play
287	com.combanketh.mobilebanking	amaze app know much simplify life thanks cbe proud	5	2025-10-07	POSITIVE	0.9989687204360962	Google Play
288	com.combanketh.mobilebanking	try access app android phone sometimes doesnt work kindly try improve	3	2025-10-07	NEGATIVE	0.998626470565796	Google Play
289	com.combanketh.mobilebanking	asledin ibsa	5	2025-10-06	POSITIVE	0.9360378980636596	Google Play
290	com.combanketh.mobilebanking	commercial bank ethiopia good	5	2025-10-06	POSITIVE	0.9997579455375672	Google Play
291	com.dashen.dashensuperapp	perfect	5	2025-10-06	POSITIVE	0.9998517036437988	Google Play
292	com.dashen.dashensuperapp	dashen bankk best app bank onlyu one one app mobile banking mean superr app	5	2025-10-05	NEGATIVE	0.9049291610717772	Google Play
293	com.combanketh.mobilebanking	bank	5	2025-10-05	POSITIVE	0.8260887265205383	Google Play
294	com.boa.boaMobileBanking	keep crashing cant even use boa well many customer deal cant send money	1	2025-10-05	NEGATIVE	0.9974157810211182	Google Play
295	com.combanketh.mobilebanking	terrible show history transaction show disorganise way	3	2025-10-05	NEGATIVE	0.9996565580368042	Google Play
296	com.dashen.dashensuperapp	cant open virtual accounti try 3 day still resolve	2	2025-10-04	NEGATIVE	0.9911736845970154	Google Play
297	com.dashen.dashensuperapp	wow	5	2025-10-04	POSITIVE	0.999592125415802	Google Play
298	com.combanketh.mobilebanking	special	5	2025-10-04	POSITIVE	0.999722182750702	Google Play
299	com.combanketh.mobilebanking	excellent app lot feature	5	2025-10-04	POSITIVE	0.999848484992981	Google Play
300	com.combanketh.mobilebanking	lately face problem app problem log inter pin doesnt work say cant sync say work fine day ago also say enter pin change pin 6 digit pin doesnt allow change please solve problem app	2	2025-10-04	NEGATIVE	0.9982370138168336	Google Play
301	com.combanketh.mobilebanking	data	5	2025-10-04	POSITIVE	0.961766242980957	Google Play
302	com.dashen.dashensuperapp	tadesa melka tulluu	1	2025-10-04	NEGATIVE	0.9457598328590392	Google Play
303	com.combanketh.mobilebanking	woow cbe	5	2025-10-03	POSITIVE	0.8725978136062622	Google Play
304	com.combanketh.mobilebanking	cbe best bank app	4	2025-10-03	POSITIVE	0.998711109161377	Google Play
305	com.combanketh.mobilebanking	app cbe bank simple smart like	5	2025-10-03	POSITIVE	0.9980850219726562	Google Play
306	com.dashen.dashensuperapp	app passive compare amole take 35 second open cannot refresh transaction	1	2025-10-03	NEGATIVE	0.9959924817085266	Google Play
307	com.boa.boaMobileBanking	need timely update	5	2025-10-03	NEGATIVE	0.9705756902694702	Google Play
308	com.dashen.dashensuperapp	withdraw	1	2025-10-02	NEGATIVE	0.99894779920578	Google Play
309	com.combanketh.mobilebanking	rijalufaris	5	2025-10-02	POSITIVE	0.678229570388794	Google Play
310	com.combanketh.mobilebanking	screen shoot always allow	5	2025-10-02	POSITIVE	0.9987336993217468	Google Play
311	com.combanketh.mobilebanking	good since become robber vat taxservice chargeunbelievable charge send bank monthly chargeetc hope one international bank come leave bank enough enough	1	2025-10-02	POSITIVE	0.8910593390464783	Google Play
312	com.combanketh.mobilebanking	imoo	3	2025-10-02	POSITIVE	0.9941620230674744	Google Play
313	com.combanketh.mobilebanking	best app hate repeatedly update request	5	2025-10-02	NEGATIVE	0.9955624341964722	Google Play
314	com.boa.boaMobileBanking	show name person send money request receipt become difficult u different people transfer amount different bank difficult identify account name sender	3	2025-10-01	NEGATIVE	0.9987165927886964	Google Play
315	com.boa.boaMobileBanking	like	5	2025-10-01	POSITIVE	0.9910564422607422	Google Play
316	com.boa.boaMobileBanking	cant type otp	1	2025-10-01	NEGATIVE	0.9938306212425232	Google Play
317	com.combanketh.mobilebanking	gamada mahamadi	1	2025-10-01	POSITIVE	0.7746045589447021	Google Play
318	com.combanketh.mobilebanking	enkorabetalen	5	2025-10-01	POSITIVE	0.90999573469162	Google Play
319	com.dashen.dashensuperapp	really appreciate cant use dont balance data access	2	2025-10-01	NEGATIVE	0.9575394988059998	Google Play
320	com.dashen.dashensuperapp	app outstanding	5	2025-10-01	POSITIVE	0.999841809272766	Google Play
321	com.dashen.dashensuperapp	totally bad	1	2025-10-01	NEGATIVE	0.9997747540473938	Google Play
322	com.combanketh.mobilebanking	verfcasencod	5	2025-09-30	NEGATIVE	0.8742528557777405	Google Play
323	com.boa.boaMobileBanking	jaajja	4	2025-09-30	NEGATIVE	0.9872855544090272	Google Play
324	com.combanketh.mobilebanking	good banking web network sometimes busy hope willfix problem	4	2025-09-30	NEGATIVE	0.7904471755027771	Google Play
325	com.dashen.dashensuperapp	nice app	5	2025-09-30	POSITIVE	0.9998061060905457	Google Play
326	com.combanketh.mobilebanking	cant get transaction history	1	2025-09-29	NEGATIVE	0.9824967980384828	Google Play
327	com.dashen.dashensuperapp	good improvement sep 25 2025 update	4	2025-09-29	POSITIVE	0.997808039188385	Google Play
328	com.dashen.dashensuperapp	fast service	5	2025-09-29	POSITIVE	0.9991244673728944	Google Play
329	com.combanketh.mobilebanking	sintu	5	2025-09-29	NEGATIVE	0.9596135020256042	Google Play
330	com.combanketh.mobilebanking	bank ethiopia	5	2025-09-28	POSITIVE	0.684602677822113	Google Play
331	com.boa.boaMobileBanking	love bank best experience ever	5	2025-09-28	POSITIVE	0.9994493126869202	Google Play
332	com.dashen.dashensuperapp	gooe	5	2025-09-28	NEGATIVE	0.9992986917495728	Google Play
333	com.dashen.dashensuperapp	best	5	2025-09-28	POSITIVE	0.9997941851615906	Google Play
334	com.dashen.dashensuperapp	one issue though mobile phone sim steal pattern pin app allow reset pin directly without 2fa like finger print send sm big gap address didnt expect trust	1	2025-09-28	NEGATIVE	0.9772740602493286	Google Play
335	com.combanketh.mobilebanking	best	5	2025-09-28	POSITIVE	0.9997941851615906	Google Play
336	com.combanketh.mobilebanking	niceapp	5	2025-09-27	POSITIVE	0.9998270869255066	Google Play
337	com.combanketh.mobilebanking	poor app guy delete cbe download boa	1	2025-09-27	NEGATIVE	0.9997747540473938	Google Play
338	com.dashen.dashensuperapp	tadass	1	2025-09-27	NEGATIVE	0.9969046711921692	Google Play
339	com.combanketh.mobilebanking	good need improvement	5	2025-09-27	POSITIVE	0.990943729877472	Google Play
340	com.combanketh.mobilebanking	great application meso would like rate solid 5 starthat work well overall hello everyone enjoy apps	5	2025-09-27	POSITIVE	0.9990864992141724	Google Play
341	com.dashen.dashensuperapp	amaze app one	5	2025-09-27	POSITIVE	0.9988828301429749	Google Play
342	com.dashen.dashensuperapp	app make cashless society century easy use	5	2025-09-27	POSITIVE	0.6917396783828735	Google Play
343	com.dashen.dashensuperapp	cool app	5	2025-09-27	POSITIVE	0.999824583530426	Google Play
344	com.dashen.dashensuperapp	dashen super app best ethiopian bank keep	5	2025-09-27	POSITIVE	0.9974373579025269	Google Play
345	com.dashen.dashensuperapp	dont like	1	2025-09-27	POSITIVE	0.6011914014816284	Google Play
346	com.dashen.dashensuperapp	dashen future	5	2025-09-27	POSITIVE	0.9985138773918152	Google Play
347	com.dashen.dashensuperapp	love new user interface	5	2025-09-26	POSITIVE	0.9997913241386414	Google Play
348	com.dashen.dashensuperapp	appreciate always one step ahead	5	2025-09-26	POSITIVE	0.9998156428337096	Google Play
349	com.dashen.dashensuperapp	app stop work whenever update unless update app well keep work updating optional	3	2025-09-26	NEGATIVE	0.9995670914649964	Google Play
350	com.dashen.dashensuperapp	first time experience much cool app mobile banking platform im genuinely happy see kind app tnx	5	2025-09-26	POSITIVE	0.999099850654602	Google Play
351	com.dashen.dashensuperapp	cant without data wifi	1	2025-09-26	NEGATIVE	0.9252768754959106	Google Play
352	com.dashen.dashensuperapp	best ui banking app use ethiopian bank use really old ui neat easy use also reliable	5	2025-09-26	POSITIVE	0.9785754680633544	Google Play
353	com.dashen.dashensuperapp	best app dashen unique fast app ever life	5	2025-09-26	POSITIVE	0.999652624130249	Google Play
354	com.dashen.dashensuperapp	nice	5	2025-09-26	POSITIVE	0.9998552799224854	Google Play
355	com.dashen.dashensuperapp	excellent	5	2025-09-26	POSITIVE	0.9998434782028198	Google Play
356	com.dashen.dashensuperapp	amaze app visually stun	5	2025-09-26	NEGATIVE	0.9787673950195312	Google Play
357	com.combanketh.mobilebanking	best app	5	2025-09-25	POSITIVE	0.999686598777771	Google Play
358	com.dashen.dashensuperapp	wow really love new uiux great job dashen bank guy best mobile banking ethiopia	5	2025-09-25	POSITIVE	0.9997304081916808	Google Play
359	com.dashen.dashensuperapp	whats problem apps ask update daily basis	1	2025-09-25	NEGATIVE	0.9946735501289368	Google Play
360	com.boa.boaMobileBanking	nothing improve doesnt work like previous version	1	2025-09-25	NEGATIVE	0.9994474053382874	Google Play
361	com.combanketh.mobilebanking	time try open app load circle keep spin try open get message say 2 attempt leave offline login seem mean app cannot connect internet even though stable internet connection stuff work properly	2	2025-09-24	NEGATIVE	0.999678373336792	Google Play
362	com.dashen.dashensuperapp	one best app ethiopia	5	2025-09-24	POSITIVE	0.9996439218521118	Google Play
363	com.combanketh.mobilebanking	juhaar	5	2025-09-24	NEGATIVE	0.6955288052558899	Google Play
364	com.boa.boaMobileBanking	easy fast	5	2025-09-24	POSITIVE	0.997892439365387	Google Play
365	com.combanketh.mobilebanking	use cbe app fantastic	5	2025-09-24	POSITIVE	0.9987084865570068	Google Play
366	com.combanketh.mobilebanking	good	5	2025-09-23	POSITIVE	0.999816119670868	Google Play
367	com.combanketh.mobilebanking	application provide timely service good fast reliable manner	5	2025-09-23	POSITIVE	0.9995341300964355	Google Play
368	com.combanketh.mobilebanking	well app feature receipt verify qr code screenshot image gallery currently work direct camera capturing	4	2025-09-23	NEGATIVE	0.7291603684425354	Google Play
369	com.dashen.dashensuperapp	great app	5	2025-09-23	POSITIVE	0.999821126461029	Google Play
370	com.dashen.dashensuperapp	good time say duplicate transaction text	5	2025-09-23	NEGATIVE	0.979027271270752	Google Play
371	com.combanketh.mobilebanking	bist app tankyou	4	2025-09-23	NEGATIVE	0.9962037205696106	Google Play
372	com.combanketh.mobilebanking	useful consistent app	5	2025-09-23	POSITIVE	0.9996733665466307	Google Play
373	com.combanketh.mobilebanking	amaze app well possible transfer account telebirr	5	2025-09-22	POSITIVE	0.9767159819602966	Google Play
374	com.combanketh.mobilebanking	ux perspective well old obvious find thing	3	2025-09-22	NEGATIVE	0.997747838497162	Google Play
375	com.combanketh.mobilebanking	dantro band	5	2025-09-21	POSITIVE	0.8824525475502014	Google Play
376	com.combanketh.mobilebanking	app great active however app update lose connection message network error please try fix many client cbe use app globally abroad country	3	2025-09-21	NEGATIVE	0.991915225982666	Google Play
377	com.combanketh.mobilebanking	important app	4	2025-09-21	POSITIVE	0.9980806112289428	Google Play
378	com.combanketh.mobilebanking	best mobile banking ethiopia work perfectly fine	5	2025-09-21	POSITIVE	0.9998434782028198	Google Play
379	com.combanketh.mobilebanking	must visit branch open account activate mobile banking service connect network maybe do branch	1	2025-09-20	NEGATIVE	0.9060297012329102	Google Play
380	com.combanketh.mobilebanking	app useful sometimes want see specific transaction didnt work way give 3	3	2025-09-20	NEGATIVE	0.9910486936569214	Google Play
381	com.combanketh.mobilebanking	time make transfer mobile account cbebirr wallet show customer name please check itthanks cbe cbebirr application nice application wallet	5	2025-09-20	NEGATIVE	0.9766112565994264	Google Play
382	com.boa.boaMobileBanking	great	5	2025-09-20	POSITIVE	0.9998630285263062	Google Play
383	com.combanketh.mobilebanking	jabadhaa namatii tolataan	5	2025-09-19	NEGATIVE	0.962352991104126	Google Play
384	com.combanketh.mobilebanking	app good interface user friendly could pro app additional feature let u run multiple account single phone option additional account	3	2025-09-19	POSITIVE	0.8968287706375122	Google Play
385	com.combanketh.mobilebanking	asfaw damse	5	2025-09-19	NEGATIVE	0.987163245677948	Google Play
386	com.boa.boaMobileBanking	mobile banking	5	2025-09-19	POSITIVE	0.907653510570526	Google Play
387	com.combanketh.mobilebanking	app user friendly want amendment include option send money tele birr like cbe birr	4	2025-09-18	NEGATIVE	0.9886868000030518	Google Play
388	com.combanketh.mobilebanking	truly amazing	5	2025-09-18	POSITIVE	0.9998822212219238	Google Play
389	com.combanketh.mobilebanking	doesnt option generate statement transaction	3	2025-09-18	NEGATIVE	0.9988961219787598	Google Play
390	com.dashen.dashensuperapp	safe secure	3	2025-09-18	POSITIVE	0.9998015761375428	Google Play
391	com.boa.boaMobileBanking	need alot connection choose device lug even connection	1	2025-09-17	NEGATIVE	0.9941788911819458	Google Play
392	com.combanketh.mobilebanking	janalebl	5	2025-09-17	POSITIVE	0.9632816314697266	Google Play
393	com.combanketh.mobilebanking	nice application	5	2025-09-17	POSITIVE	0.9998229146003724	Google Play
394	com.combanketh.mobilebanking	waaaaaaaw	1	2025-09-17	NEGATIVE	0.9848952293395996	Google Play
395	com.combanketh.mobilebanking	NaN	5	2025-09-16	POSITIVE	0.7481212019920349	Google Play
396	com.combanketh.mobilebanking	nice	5	2025-09-16	POSITIVE	0.9998552799224854	Google Play
397	com.combanketh.mobilebanking	best app use recently upgrade day day internationalization	4	2025-09-16	POSITIVE	0.971807599067688	Google Play
398	com.boa.boaMobileBanking	since last update open app crash lot omg slow opening loading	2	2025-09-15	NEGATIVE	0.9991149306297302	Google Play
399	com.boa.boaMobileBanking	io perfect android barley work dont transfer crush totally stopped work please fix issue beloved bank abyssinia	1	2025-09-15	NEGATIVE	0.9978786706924438	Google Play
400	com.boa.boaMobileBanking	none	5	2025-09-14	NEGATIVE	0.985345721244812	Google Play
401	com.dashen.dashensuperapp	work right snmsung galaxy f15 please help	1	2025-09-14	POSITIVE	0.9558428525924684	Google Play
402	com.combanketh.mobilebanking	apdat app	5	2025-09-14	NEGATIVE	0.7991260886192322	Google Play
403	com.combanketh.mobilebanking	great	5	2025-09-13	POSITIVE	0.9998630285263062	Google Play
404	com.combanketh.mobilebanking	best	1	2025-09-13	POSITIVE	0.9997941851615906	Google Play
405	com.combanketh.mobilebanking	hayizgi mebrahtom feshay	5	2025-09-13	NEGATIVE	0.6387812495231628	Google Play
406	com.boa.boaMobileBanking	good app ever use	5	2025-09-12	POSITIVE	0.99979168176651	Google Play
407	com.combanketh.mobilebanking	love	5	2025-09-12	POSITIVE	0.9998735189437866	Google Play
408	com.combanketh.mobilebanking	apdate app doesnt work thing else say enable connects	1	2025-09-12	NEGATIVE	0.998832643032074	Google Play
409	com.combanketh.mobilebanking	excellent app	5	2025-09-12	POSITIVE	0.9998356103897096	Google Play
410	com.dashen.dashensuperapp	staff really hardworking app like employee	3	2025-09-12	NEGATIVE	0.942631185054779	Google Play
411	com.combanketh.mobilebanking	tired update every 5 day	1	2025-09-11	NEGATIVE	0.997921884059906	Google Play
412	com.combanketh.mobilebanking	best mb application ethiopia financial sector	5	2025-09-11	POSITIVE	0.9986838698387146	Google Play
413	com.combanketh.mobilebanking	way trust	5	2025-09-11	POSITIVE	0.9997380375862122	Google Play
414	com.combanketh.mobilebanking	hasasa bank	1	2025-09-11	POSITIVE	0.8199581503868103	Google Play
415	com.combanketh.mobilebanking	like app	5	2025-09-11	POSITIVE	0.9840217232704164	Google Play
416	com.boa.boaMobileBanking	zedo	5	2025-09-11	POSITIVE	0.994045615196228	Google Play
417	com.boa.boaMobileBanking	nice app especially transaction limit extend face boa mbanking app doesnt respond activation stage strictly smsng mobile phone please try make safe	4	2025-09-11	NEGATIVE	0.9796081781387328	Google Play
418	com.dashen.dashensuperapp	total	5	2025-09-11	POSITIVE	0.9983636736869812	Google Play
419	com.combanketh.mobilebanking	usb debugig mode bicha endidereg axrigu like awash bank	1	2025-09-10	NEGATIVE	0.9961070418357848	Google Play
420	com.boa.boaMobileBanking	doesnt open	1	2025-09-10	NEGATIVE	0.998688280582428	Google Play
421	com.boa.boaMobileBanking	please open mobile app	5	2025-09-10	POSITIVE	0.9982290863990784	Google Play
422	com.dashen.dashensuperapp	dashen super app best	5	2025-09-10	POSITIVE	0.9990052580833436	Google Play
423	com.combanketh.mobilebanking	well organize	5	2025-09-08	POSITIVE	0.9997510313987732	Google Play
424	com.combanketh.mobilebanking	wowww	5	2025-09-08	POSITIVE	0.9972698092460632	Google Play
425	com.boa.boaMobileBanking	masha alla	5	2025-09-08	NEGATIVE	0.9514628052711488	Google Play
426	com.combanketh.mobilebanking	cant see near branch atm available	2	2025-09-08	NEGATIVE	0.8418424129486084	Google Play
427	com.combanketh.mobilebanking	kehru nasir abfixa	5	2025-09-08	POSITIVE	0.8188508152961731	Google Play
428	com.dashen.dashensuperapp	werke	2	2025-09-08	POSITIVE	0.8476858139038086	Google Play
429	com.dashen.dashensuperapp	simple easy use	5	2025-09-08	POSITIVE	0.996009111404419	Google Play
430	com.dashen.dashensuperapp	happen dashen bank far bad banking app extremely slow work service time	1	2025-09-08	NEGATIVE	0.999775230884552	Google Play
431	com.dashen.dashensuperapp	bad specialy weekend	1	2025-09-07	NEGATIVE	0.999766767024994	Google Play
432	com.combanketh.mobilebanking	app open	1	2025-09-07	POSITIVE	0.9981480836868286	Google Play
433	com.dashen.dashensuperapp	great app compare others freeze randomly take lot load lot error send money stop use	1	2025-09-07	NEUTRAL	0.5988689064979553	Google Play
434	com.dashen.dashensuperapp	meke	4	2025-09-07	POSITIVE	0.9576798677444458	Google Play
435	com.dashen.dashensuperapp	app doesnt allow switch account possible use two account app even account open different branch	2	2025-09-06	NEGATIVE	0.9966335892677308	Google Play
436	com.dashen.dashensuperapp	slow	3	2025-09-06	NEGATIVE	0.9997313618659972	Google Play
437	com.combanketh.mobilebanking	monk	3	2025-09-06	POSITIVE	0.9961466789245604	Google Play
438	com.combanketh.mobilebanking	incredible	5	2025-09-06	POSITIVE	0.99987530708313	Google Play
439	com.combanketh.mobilebanking	best money transfer app ever	5	2025-09-06	POSITIVE	0.9995315074920654	Google Play
440	com.dashen.dashensuperapp	good apps need strong network	5	2025-09-06	POSITIVE	0.9879828691482544	Google Play
441	com.dashen.dashensuperapp	lacag inaad amaahisan somalida maxaad ku diiden	5	2025-09-05	NEGATIVE	0.9745683670043944	Google Play
442	com.combanketh.mobilebanking	user friendly best	5	2025-09-05	POSITIVE	0.998828947544098	Google Play
443	com.combanketh.mobilebanking	good app	5	2025-09-05	POSITIVE	0.9998493194580078	Google Play
444	com.combanketh.mobilebanking	good app really user friendly possible start service app uninstalled device phone change please make easy u set u requirement office use install launch visit near branch office every time silly business important thing addition hidding sender name account number know tranfers	4	2025-09-05	POSITIVE	0.8982706069946289	Google Play
445	com.combanketh.mobilebanking	best app	5	2025-09-05	POSITIVE	0.999686598777771	Google Play
446	com.boa.boaMobileBanking	best banking transaction application ethiopia	5	2025-09-05	POSITIVE	0.99952495098114	Google Play
447	com.combanketh.mobilebanking	nice	5	2025-09-05	POSITIVE	0.9998552799224854	Google Play
448	com.dashen.dashensuperapp	slow fail transaction multiple time previous app much well	2	2025-09-04	NEGATIVE	0.9976394176483154	Google Play
449	com.combanketh.mobilebanking	jabirabdala	5	2025-09-04	NEGATIVE	0.9328045845031738	Google Play
450	com.boa.boaMobileBanking	tamaam kamal	1	2025-09-04	POSITIVE	0.991887390613556	Google Play
451	com.combanketh.mobilebanking	zinaa ahmed	5	2025-09-04	POSITIVE	0.9246605038642884	Google Play
452	com.combanketh.mobilebanking	waw proud strong bank work best even remote location malabo ecuatorial guinea mewolid mubarak cbe	5	2025-09-04	POSITIVE	0.9950365424156188	Google Play
453	com.combanketh.mobilebanking	think good app use easily however one comment app automatically sync update balance real time please review issue example someone transfer money receiver app sync automatically require user manually initiate update see current balance	4	2025-09-04	NEGATIVE	0.9899469017982484	Google Play
454	com.combanketh.mobilebanking	unfair cost transportation shame	1	2025-09-04	NEGATIVE	0.9995019435882568	Google Play
455	com.combanketh.mobilebanking	absolutely excellent	5	2025-09-04	POSITIVE	0.99985933303833	Google Play
456	com.combanketh.mobilebanking	amaze app	5	2025-09-03	POSITIVE	0.9987784028053284	Google Play
457	com.combanketh.mobilebanking	fast	5	2025-09-03	POSITIVE	0.9989494681358336	Google Play
458	com.combanketh.mobilebanking	perfect easy	5	2025-09-03	POSITIVE	0.9998643398284912	Google Play
459	com.combanketh.mobilebanking	account work	4	2025-09-03	POSITIVE	0.9786510467529296	Google Play
460	com.combanketh.mobilebanking	recent update optimize fir late version android	2	2025-09-02	POSITIVE	0.7905424237251282	Google Play
461	com.combanketh.mobilebanking	topp	5	2025-09-02	POSITIVE	0.9706206321716307	Google Play
462	com.combanketh.mobilebanking	appreciate	5	2025-09-01	POSITIVE	0.9998051524162292	Google Play
463	com.combanketh.mobilebanking	vgood app	5	2025-09-01	POSITIVE	0.9011616110801696	Google Play
464	com.combanketh.mobilebanking	sahib amin jamal	1	2025-08-31	POSITIVE	0.8987874388694763	Google Play
465	com.combanketh.mobilebanking	installi	5	2025-08-31	NEGATIVE	0.9575468301773072	Google Play
466	com.dashen.dashensuperapp	dashin bank	5	2025-08-30	POSITIVE	0.9924732446670532	Google Play
467	com.dashen.dashensuperapp	muhaammad bakko	5	2025-08-30	NEGATIVE	0.9322327971458436	Google Play
468	com.combanketh.mobilebanking	good apps	5	2025-08-30	POSITIVE	0.9998608827590942	Google Play
469	com.combanketh.mobilebanking	app say compatible ur phone u fix update	1	2025-08-30	NEGATIVE	0.9910529255867004	Google Play
470	com.combanketh.mobilebanking	tinishu titiba	5	2025-08-29	NEGATIVE	0.7159698009490967	Google Play
471	com.combanketh.mobilebanking	essy use great interface userfriendly g	5	2025-08-29	POSITIVE	0.9881758689880372	Google Play
472	com.combanketh.mobilebanking	yuuuuu	5	2025-08-29	NEGATIVE	0.9227675795555116	Google Play
473	com.combanketh.mobilebanking	found much friendly	5	2025-08-29	POSITIVE	0.9997841715812684	Google Play
474	com.boa.boaMobileBanking	absiniya banki	5	2025-08-29	NEGATIVE	0.9083036184310912	Google Play
475	com.dashen.dashensuperapp	un functional app	1	2025-08-29	NEGATIVE	0.998763918876648	Google Play
476	com.dashen.dashensuperapp	goog	5	2025-08-29	NEGATIVE	0.9989757537841796	Google Play
477	com.combanketh.mobilebanking	useful app use cbe	5	2025-08-28	POSITIVE	0.9922205805778505	Google Play
478	com.combanketh.mobilebanking	redmi	1	2025-08-28	POSITIVE	0.988286793231964	Google Play
479	com.combanketh.mobilebanking	woooow	5	2025-08-28	POSITIVE	0.9561598896980286	Google Play
480	com.combanketh.mobilebanking	kamil aweil	5	2025-08-28	POSITIVE	0.9943663477897644	Google Play
481	com.combanketh.mobilebanking	mayreba app well use bank	1	2025-08-27	NEGATIVE	0.707793116569519	Google Play
482	com.combanketh.mobilebanking	prefect transfer bank mony deliverd imidetliy take three five day	1	2025-08-27	NEGATIVE	0.9910576343536376	Google Play
483	com.combanketh.mobilebanking	let u know shut app	4	2025-08-27	NEGATIVE	0.9996770620346068	Google Play
484	com.combanketh.mobilebanking	excite	5	2025-08-27	POSITIVE	0.9993557333946228	Google Play
485	com.dashen.dashensuperapp	trnes far	5	2025-08-27	NEGATIVE	0.6042288541793823	Google Play
486	com.combanketh.mobilebanking	truly super competitive compare well know app nowadays function broadly simple feature mean namely know telebirr super app thus cbe top ultimate choice prefer bank due beautiful power lead result could recommend cbe others service provision via ethical principle practice customer satisfaction existence constraint challenge face burglary froudalent hacker thank	5	2025-08-27	POSITIVE	0.9638951420783995	Google Play
487	com.combanketh.mobilebanking	next update come night mode future	5	2025-08-27	POSITIVE	0.9810616374015808	Google Play
488	com.combanketh.mobilebanking	happy	5	2025-08-26	POSITIVE	0.99987530708313	Google Play
489	com.boa.boaMobileBanking	issue installation think doesnt work tecno common 30	1	2025-08-26	NEGATIVE	0.9995386600494384	Google Play
490	com.combanketh.mobilebanking	amizing	5	2025-08-26	NEGATIVE	0.9881718754768372	Google Play
491	com.combanketh.mobilebanking	love	5	2025-08-26	POSITIVE	0.9998735189437866	Google Play
492	com.combanketh.mobilebanking	yes v good	5	2025-08-26	POSITIVE	0.999642014503479	Google Play
493	com.combanketh.mobilebanking	great update mobile bank application thanks system customization department	5	2025-08-26	POSITIVE	0.9162374138832092	Google Play
494	com.combanketh.mobilebanking	app smart	5	2025-08-26	POSITIVE	0.9996943473815918	Google Play
495	com.combanketh.mobilebanking	still face critical problem sometimes delay open	4	2025-08-26	NEGATIVE	0.9837520122528076	Google Play
496	com.boa.boaMobileBanking	one best business	5	2025-08-25	POSITIVE	0.999862790107727	Google Play
497	com.combanketh.mobilebanking	connection bank app lag relationship must correct	4	2025-08-25	NEGATIVE	0.9973772764205932	Google Play
498	com.combanketh.mobilebanking	forgotten mobail banking password	5	2025-08-25	NEGATIVE	0.9992602467536926	Google Play
499	com.combanketh.mobilebanking	thank	5	2025-08-25	POSITIVE	0.9998283386230468	Google Play
500	com.combanketh.mobilebanking	muktaar abraahim	5	2025-08-25	NEGATIVE	0.9458083510398864	Google Play
501	com.dashen.dashensuperapp	shimalis	4	2025-08-25	POSITIVE	0.9664985537528992	Google Play
502	com.combanketh.mobilebanking	say change pin 6 digit right	4	2025-08-24	POSITIVE	0.998719334602356	Google Play
503	com.combanketh.mobilebanking	one bad mobile banking apps ethiopia cant access txn record 2 week	1	2025-08-24	NEGATIVE	0.998924195766449	Google Play
504	com.dashen.dashensuperapp	excellent mobile banking digital	5	2025-08-24	POSITIVE	0.9998231530189514	Google Play
505	com.dashen.dashensuperapp	excellent truly super app	5	2025-08-24	POSITIVE	0.9998595714569092	Google Play
506	com.dashen.dashensuperapp	nice app	5	2025-08-23	POSITIVE	0.9998061060905457	Google Play
507	com.combanketh.mobilebanking	best secure application	5	2025-08-23	POSITIVE	0.9997572302818298	Google Play
508	com.combanketh.mobilebanking	application show transaction history	3	2025-08-23	NEGATIVE	0.8339647054672241	Google Play
509	com.combanketh.mobilebanking	app nice statment history shiort atlist add 15 day	4	2025-08-23	NEGATIVE	0.9636765718460084	Google Play
510	com.combanketh.mobilebanking	like aprshat	4	2025-08-23	POSITIVE	0.9318179488182068	Google Play
511	com.combanketh.mobilebanking	app issue update recently able send fund telebirr wallet also need place save contact usually send money update keep loose important account	4	2025-08-23	NEGATIVE	0.9919222593307496	Google Play
512	com.combanketh.mobilebanking	best app easy use	5	2025-08-23	POSITIVE	0.9982343912124634	Google Play
513	com.combanketh.mobilebanking	doesnt work unless data doesnt refresh fast wise function ok update transferring telebirr work	2	2025-08-23	NEGATIVE	0.9988686442375184	Google Play
514	com.combanketh.mobilebanking	app stoop work update say change password doesnt open new password dont like	1	2025-08-23	NEGATIVE	0.9988279938697816	Google Play
515	com.combanketh.mobilebanking	transfer money telebirr work	1	2025-08-23	NEGATIVE	0.993437111377716	Google Play
516	com.combanketh.mobilebanking	dont like app service fee highl	5	2025-08-23	NEGATIVE	0.9890909790992736	Google Play
517	com.combanketh.mobilebanking	list transaction cant load month year	1	2025-08-23	NEGATIVE	0.9680882096290588	Google Play
518	com.dashen.dashensuperapp	good well	5	2025-08-22	POSITIVE	0.9998512268066406	Google Play
519	com.dashen.dashensuperapp	fast bank	5	2025-08-22	POSITIVE	0.8955249786376953	Google Play
520	com.dashen.dashensuperapp	seche	1	2025-08-22	POSITIVE	0.9675268530845642	Google Play
521	com.dashen.dashensuperapp	cant access super cant even access service need big failure	1	2025-08-22	NEGATIVE	0.9950679540634156	Google Play
522	com.dashen.dashensuperapp	bank	5	2025-08-22	POSITIVE	0.8260887265205383	Google Play
523	com.combanketh.mobilebanking	one best	5	2025-08-22	POSITIVE	0.9998579025268556	Google Play
524	com.combanketh.mobilebanking	want	5	2025-08-22	POSITIVE	0.9870406985282898	Google Play
525	com.combanketh.mobilebanking	application excellent	5	2025-08-22	POSITIVE	0.9998496770858764	Google Play
526	com.combanketh.mobilebanking	new update bug cant view name account holder previously transaction recently almost impossible load money telebirr always say unable connectplease fix asap	1	2025-08-22	NEGATIVE	0.9987026453018188	Google Play
527	com.combanketh.mobilebanking	thise app great	5	2025-08-22	POSITIVE	0.9315040707588196	Google Play
528	com.combanketh.mobilebanking	love app really downsides screenshot mandatory every transaction need screenshots download recipient would even better transaction history available via app month access directly via calender way thanks	4	2025-08-22	NEGATIVE	0.99664044380188	Google Play
529	com.combanketh.mobilebanking	good app	5	2025-08-22	POSITIVE	0.9998493194580078	Google Play
530	com.combanketh.mobilebanking	nice simple convenient app one comment double verification finger print even think good makin secure neccessary double verify finger print verification need verify pin thank	5	2025-08-22	NEGATIVE	0.6659467816352844	Google Play
531	com.dashen.dashensuperapp	dashen super app contain extended selection customer easily accessible also friendly use	2	2025-08-21	POSITIVE	0.9941959381103516	Google Play
532	com.combanketh.mobilebanking	best mobile banking app see	5	2025-08-21	POSITIVE	0.9994945526123048	Google Play
533	com.combanketh.mobilebanking	every major update mean go back ethiopia make app work 2025	2	2025-08-21	NEGATIVE	0.9877338409423828	Google Play
534	com.combanketh.mobilebanking	helpful apps	5	2025-08-21	POSITIVE	0.999646544456482	Google Play
535	com.combanketh.mobilebanking	yes app good save marketing system go ethiopia go	5	2025-08-21	POSITIVE	0.990284264087677	Google Play
536	com.combanketh.mobilebanking	every time app update history previous account number keep miss	1	2025-08-21	NEGATIVE	0.9990781545639038	Google Play
537	com.combanketh.mobilebanking	guy charge way much transfer money cbe telebirr via app	3	2025-08-21	NEGATIVE	0.9924281239509584	Google Play
538	com.combanketh.mobilebanking	bad apk	1	2025-08-21	NEGATIVE	0.9997928738594056	Google Play
539	com.combanketh.mobilebanking	excellent	5	2025-08-20	POSITIVE	0.9998434782028198	Google Play
540	com.dashen.dashensuperapp	nic	5	2025-08-20	POSITIVE	0.9977141618728638	Google Play
541	com.combanketh.mobilebanking	send money account dont reserve ball	5	2025-08-20	NEGATIVE	0.9902223348617554	Google Play
542	com.combanketh.mobilebanking	app pretty good recent one nice however update restricts take screenshot would happy remove screenshots restriction policy app give five star past performance app keep mind remove screenshot restriction policy app also self authorization uninstalled need extra sim card want visit nearby bank person	5	2025-08-20	NEGATIVE	0.9779261946678162	Google Play
543	com.combanketh.mobilebanking	ke gizew ga emihed astemamagn metegberya	1	2025-08-20	NEGATIVE	0.7793773412704468	Google Play
544	com.combanketh.mobilebanking	well app	5	2025-08-20	POSITIVE	0.9993765950202942	Google Play
545	com.combanketh.mobilebanking	nice app never usedyet	4	2025-08-20	POSITIVE	0.9935518503189088	Google Play
546	com.combanketh.mobilebanking	disappoint	1	2025-08-20	NEGATIVE	0.9995203018188475	Google Play
547	com.combanketh.mobilebanking	would great display service fee proceed transaction	4	2025-08-20	NEGATIVE	0.9543002843856812	Google Play
548	com.combanketh.mobilebanking	excellent plus	5	2025-08-20	POSITIVE	0.9998642206192015	Google Play
549	com.combanketh.mobilebanking	smart service service charge high	5	2025-08-20	POSITIVE	0.9985338449478148	Google Play
550	com.combanketh.mobilebanking	unable connect pls improve system	5	2025-08-20	NEGATIVE	0.9996615648269652	Google Play
551	com.boa.boaMobileBanking	excellent	5	2025-08-20	POSITIVE	0.9998434782028198	Google Play
552	com.combanketh.mobilebanking	recognize thank	5	2025-08-19	POSITIVE	0.9998515844345092	Google Play
553	com.combanketh.mobilebanking	best feature	5	2025-08-19	POSITIVE	0.9998006224632264	Google Play
554	com.combanketh.mobilebanking	save account totally remove	1	2025-08-19	NEGATIVE	0.9996302127838136	Google Play
555	com.boa.boaMobileBanking	unlimited experience	5	2025-08-18	POSITIVE	0.9997161030769348	Google Play
556	com.combanketh.mobilebanking	good app screenshot must enable	4	2025-08-18	POSITIVE	0.9992689490318298	Google Play
557	com.combanketh.mobilebanking	process update function easily instal easy updating screenshot prevent instant evidence need transaction	2	2025-08-18	NEGATIVE	0.8835669755935669	Google Play
558	com.combanketh.mobilebanking	change mobile banking cbe	5	2025-08-18	NEUTRAL	0.5821437835693359	Google Play
559	com.combanketh.mobilebanking	good bank ethiopian nic	5	2025-08-18	POSITIVE	0.999058187007904	Google Play
560	com.combanketh.mobilebanking	adisi deti	5	2025-08-17	POSITIVE	0.7580515742301941	Google Play
561	com.boa.boaMobileBanking	bank u least hire someone good job bc joke nowadays cant even log even transfer without crash u fix app update review count u boa update atleast fix suggestion u put password final step send money feel secure way	4	2025-08-17	NEGATIVE	0.9957555532455444	Google Play
562	com.dashen.dashensuperapp	easy use best one	5	2025-08-17	POSITIVE	0.9951332211494446	Google Play
563	com.combanketh.mobilebanking	app good apps	5	2025-08-17	POSITIVE	0.999810755252838	Google Play
564	com.dashen.dashensuperapp	good app	5	2025-08-16	POSITIVE	0.9998493194580078	Google Play
565	com.dashen.dashensuperapp	worst bank app ethiopia force change pin every three month	1	2025-08-16	NEGATIVE	0.9988356232643129	Google Play
566	com.boa.boaMobileBanking	nice mobile banking app favourite	5	2025-08-16	POSITIVE	0.9995254278182985	Google Play
567	com.dashen.dashensuperapp	totally work failure personally prefer dashen amole instead super dull app	1	2025-08-16	NEGATIVE	0.9997140765190125	Google Play
568	com.dashen.dashensuperapp	best ussd necessary	5	2025-08-15	POSITIVE	0.9977422952651978	Google Play
569	com.dashen.dashensuperapp	one step forward ethiopian bank e commerce industry	5	2025-08-15	POSITIVE	0.9991950392723083	Google Play
570	com.dashen.dashensuperapp	still essay user	4	2025-08-15	POSITIVE	0.7970700860023499	Google Play
571	com.dashen.dashensuperapp	great app unfortunately struggle use outside ethiopia tell vpn enabled please disable vpn continue use app thats happen without vpn enable think need switch back cbe need access bank account globally	1	2025-08-15	NEGATIVE	0.9934822916984558	Google Play
572	com.combanketh.mobilebanking	congra ethio	5	2025-08-15	POSITIVE	0.980097472667694	Google Play
573	com.boa.boaMobileBanking	almost never boot even crash immediately	1	2025-08-15	POSITIVE	0.6592208743095398	Google Play
574	com.boa.boaMobileBanking	best apps	5	2025-08-15	POSITIVE	0.999784529209137	Google Play
575	com.boa.boaMobileBanking	bad app ever exist bank history	1	2025-08-15	NEGATIVE	0.9994425177574158	Google Play
576	com.boa.boaMobileBanking	thank	5	2025-08-14	POSITIVE	0.9998283386230468	Google Play
577	com.combanketh.mobilebanking	dont think compatible new android version 16 fails open please update find solution	1	2025-08-14	NEGATIVE	0.9994601607322692	Google Play
578	com.dashen.dashensuperapp	plenty feature miss e g electricity bill water bill payment	2	2025-08-14	NEGATIVE	0.96523118019104	Google Play
579	com.dashen.dashensuperapp	easy enough wont even open pls help possible email address provide app support also cant find gmail pls respond	3	2025-08-14	NEGATIVE	0.9756671786308287	Google Play
580	com.boa.boaMobileBanking	best mobile app country	5	2025-08-14	POSITIVE	0.9997151494026184	Google Play
581	com.combanketh.mobilebanking	apk best people	5	2025-08-13	POSITIVE	0.9991344809532166	Google Play
582	com.combanketh.mobilebanking	good keep	5	2025-08-13	POSITIVE	0.9998505115509032	Google Play
583	com.dashen.dashensuperapp	best app ever see dashen bank always one step head	5	2025-08-13	POSITIVE	0.999516487121582	Google Play
584	com.dashen.dashensuperapp	low quality slow application unreliable time need	1	2025-08-13	NEGATIVE	0.9987820982933044	Google Play
585	com.dashen.dashensuperapp	new version good like	5	2025-08-13	POSITIVE	0.9998352527618408	Google Play
586	com.dashen.dashensuperapp	poor time take use	1	2025-08-13	NEGATIVE	0.9995962977409364	Google Play
587	com.combanketh.mobilebanking	app log device connect internet appropriate isnt expose hucking malicious activity	1	2025-08-12	NEGATIVE	0.9910969734191896	Google Play
588	com.dashen.dashensuperapp	well do keep	5	2025-08-12	POSITIVE	0.9993197917938232	Google Play
589	com.dashen.dashensuperapp	best perform fast financial app	5	2025-08-12	POSITIVE	0.9990298748016356	Google Play
590	com.boa.boaMobileBanking	fast	2	2025-08-12	POSITIVE	0.9989494681358336	Google Play
591	com.combanketh.mobilebanking	nice app	5	2025-08-12	POSITIVE	0.9998061060905457	Google Play
592	com.combanketh.mobilebanking	cbe noor	2	2025-08-12	POSITIVE	0.9799768924713136	Google Play
593	com.dashen.dashensuperapp	fast easy use great app	5	2025-08-12	POSITIVE	0.9994462132453918	Google Play
594	com.dashen.dashensuperapp	network issue	1	2025-08-12	NEGATIVE	0.9874956011772156	Google Play
595	com.dashen.dashensuperapp	best bauget app	5	2025-08-12	POSITIVE	0.998792290687561	Google Play
596	com.dashen.dashensuperapp	connection issue	3	2025-08-12	POSITIVE	0.9737948775291444	Google Play
597	com.dashen.dashensuperapp	good job dashen super app	5	2025-08-12	POSITIVE	0.9994688630104064	Google Play
598	com.dashen.dashensuperapp	good take forever load	3	2025-08-12	POSITIVE	0.9997485280036926	Google Play
599	com.dashen.dashensuperapp	good app	5	2025-08-11	POSITIVE	0.9998493194580078	Google Play
600	com.combanketh.mobilebanking	good	5	2025-08-11	POSITIVE	0.999816119670868	Google Play
601	com.dashen.dashensuperapp	bore mobile banking app work properly slow	1	2025-08-11	NEGATIVE	0.999433696269989	Google Play
602	com.boa.boaMobileBanking	keep freeze front page	1	2025-08-10	POSITIVE	0.6829196214675903	Google Play
603	com.dashen.dashensuperapp	improve app please work say response timeout	1	2025-08-10	POSITIVE	0.9935163259506226	Google Play
604	com.combanketh.mobilebanking	bad app	1	2025-08-09	NEGATIVE	0.9997212290763856	Google Play
605	com.combanketh.mobilebanking	like app order atm card get new app	5	2025-08-09	NEGATIVE	0.9778283834457396	Google Play
606	com.combanketh.mobilebanking	good add please	3	2025-08-08	POSITIVE	0.9998639822006226	Google Play
607	com.combanketh.mobilebanking	best transferring ap	5	2025-08-08	POSITIVE	0.993503987789154	Google Play
608	com.dashen.dashensuperapp	try open app redownloading something big 3gb 4gb size 3 hour late open experience bad app isnt lite app work every situation network	1	2025-08-08	NEGATIVE	0.9994053840637208	Google Play
609	com.boa.boaMobileBanking	abseniya bank app	5	2025-08-08	NEGATIVE	0.6962237358093262	Google Play
610	com.combanketh.mobilebanking	best servis app	4	2025-08-07	POSITIVE	0.99943345785141	Google Play
611	com.combanketh.mobilebanking	useful use world	5	2025-08-07	POSITIVE	0.999207317829132	Google Play
612	com.combanketh.mobilebanking	good block screen shoot	5	2025-08-07	POSITIVE	0.999817669391632	Google Play
613	com.combanketh.mobilebanking	good app	5	2025-08-07	POSITIVE	0.9998493194580078	Google Play
614	com.combanketh.mobilebanking	disgust app	1	2025-08-07	NEGATIVE	0.9997687935829164	Google Play
615	com.dashen.dashensuperapp	slow banking app ever use	3	2025-08-07	NEGATIVE	0.9965959191322328	Google Play
616	com.dashen.dashensuperapp	poor glitch stack	1	2025-08-07	NEGATIVE	0.9998094439506532	Google Play
617	com.combanketh.mobilebanking	awesome	5	2025-08-05	POSITIVE	0.9998682737350464	Google Play
618	com.combanketh.mobilebanking	best one	5	2025-08-05	POSITIVE	0.999826967716217	Google Play
619	com.dashen.dashensuperapp	dashen bank super app best app	5	2025-08-05	POSITIVE	0.9982224106788636	Google Play
620	com.combanketh.mobilebanking	unexpected anomaly unreliable fintec app	2	2025-08-05	NEGATIVE	0.9978286623954772	Google Play
621	com.combanketh.mobilebanking	good	5	2025-08-04	POSITIVE	0.999816119670868	Google Play
622	com.combanketh.mobilebanking	nise	5	2025-08-04	NEGATIVE	0.7907942533493042	Google Play
623	com.combanketh.mobilebanking	bad experience	1	2025-08-04	NEGATIVE	0.9997826218605042	Google Play
624	com.combanketh.mobilebanking	cbe	5	2025-08-04	POSITIVE	0.9966009855270386	Google Play
625	com.combanketh.mobilebanking	bad app could exist planet omg literally crash every month	1	2025-08-04	NEGATIVE	0.9997695088386536	Google Play
626	com.combanketh.mobilebanking	1st one cbe	5	2025-08-04	POSITIVE	0.9839370250701904	Google Play
627	com.combanketh.mobilebanking	goood werk	5	2025-08-03	NEGATIVE	0.996384620666504	Google Play
628	com.combanketh.mobilebanking	best application	5	2025-08-03	POSITIVE	0.9998098015785216	Google Play
629	com.boa.boaMobileBanking	yes goode app	5	2025-08-03	POSITIVE	0.9997490048408508	Google Play
630	com.combanketh.mobilebanking	ehiopian bank teach u lend beulds big infrastractures ehiopian country rigions local area basic need socity trend suport echother social participation promots society welbing coopratives development build suports private governmental institution give advise market analicies target develope country become world class economic leadership capitalist country atract big stakeholder woreld	5	2025-08-03	NEGATIVE	0.987859547138214	Google Play
631	com.boa.boaMobileBanking	great app	5	2025-08-02	POSITIVE	0.999821126461029	Google Play
632	com.combanketh.mobilebanking	screenshot problem must fix	4	2025-08-02	NEGATIVE	0.9994065761566162	Google Play
633	com.combanketh.mobilebanking	best fast	5	2025-08-02	POSITIVE	0.9998111128807068	Google Play
634	com.combanketh.mobilebanking	easy use	5	2025-08-02	POSITIVE	0.9884273409843444	Google Play
635	com.combanketh.mobilebanking	nice app	5	2025-08-02	POSITIVE	0.9998061060905457	Google Play
636	com.dashen.dashensuperapp	would likely rate even less perks part whole app fill bug stops responsive almost everytime besides new feature new ui design definitely prefer old amole version either fix mess bring back amole	2	2025-08-01	NEGATIVE	0.9992985725402832	Google Play
637	com.dashen.dashensuperapp	sometimes work honest	1	2025-08-01	POSITIVE	0.9994540810585022	Google Play
638	com.combanketh.mobilebanking	sum good	5	2025-08-01	POSITIVE	0.9998421669006348	Google Play
639	com.combanketh.mobilebanking	best one ever ive see	5	2025-08-01	POSITIVE	0.9997345805168152	Google Play
640	com.boa.boaMobileBanking	worst mobile banking app	1	2025-07-31	NEGATIVE	0.9997854828834534	Google Play
641	com.combanketh.mobilebanking	good	5	2025-07-30	POSITIVE	0.999816119670868	Google Play
642	com.combanketh.mobilebanking	freezing transfer money till time choose chose deliver bruh	1	2025-07-30	NEGATIVE	0.9977192282676696	Google Play
643	com.combanketh.mobilebanking	thank	5	2025-07-30	POSITIVE	0.9998283386230468	Google Play
644	com.combanketh.mobilebanking	update app	5	2025-07-30	POSITIVE	0.9480133652687072	Google Play
645	com.combanketh.mobilebanking	yase	5	2025-07-30	POSITIVE	0.9850412011146544	Google Play
646	com.boa.boaMobileBanking	giod	5	2025-07-30	POSITIVE	0.9893913269042968	Google Play
647	com.combanketh.mobilebanking	ok	5	2025-07-29	POSITIVE	0.9997851252555848	Google Play
648	com.dashen.dashensuperapp	100 good	5	2025-07-29	POSITIVE	0.999860405921936	Google Play
649	com.dashen.dashensuperapp	fast	5	2025-07-29	POSITIVE	0.9989494681358336	Google Play
650	com.dashen.dashensuperapp	isnt app work	5	2025-07-29	NEGATIVE	0.9810416102409364	Google Play
651	com.boa.boaMobileBanking	best bank ethiopia	5	2025-07-29	POSITIVE	0.9994090795516968	Google Play
652	com.dashen.dashensuperapp	network error	5	2025-07-29	NEGATIVE	0.999686360359192	Google Play
653	com.combanketh.mobilebanking	time gold	5	2025-07-28	POSITIVE	0.9997419714927672	Google Play
654	com.dashen.dashensuperapp	smothely use app last 5 month somehow work shall becames like open app even cant open u solution pls help kindly tnx	1	2025-07-28	NEGATIVE	0.9935988187789916	Google Play
655	com.boa.boaMobileBanking	waqayyoo	5	2025-07-28	NEUTRAL	0.5036886930465698	Google Play
656	com.dashen.dashensuperapp	stop working time	2	2025-07-28	NEGATIVE	0.9995610117912292	Google Play
657	com.combanketh.mobilebanking	app amazing use every time make payment	5	2025-07-27	POSITIVE	0.9990900754928588	Google Play
658	com.combanketh.mobilebanking	mobelibank	5	2025-07-27	NEGATIVE	0.9536474347114564	Google Play
659	com.boa.boaMobileBanking	please work	2	2025-07-27	POSITIVE	0.9998125433921814	Google Play
660	com.combanketh.mobilebanking	thanks cbe	5	2025-07-25	POSITIVE	0.999742329120636	Google Play
661	com.combanketh.mobilebanking	use service abroad active account ethiopia anytime want support family easily send fund cbe bank use abroad debit visa credit transfer bank recommend diaspora open bank account whenever go back home help lot 1st easily send money abroad bank account ceb awashoromia bank whatever 2nd dont need family withdraw money use privacy	5	2025-07-25	NEGATIVE	0.9651473164558412	Google Play
662	com.combanketh.mobilebanking	commercial bank ethiopia helpful ethiopian people respect ethio consititution	5	2025-07-25	POSITIVE	0.9895055890083312	Google Play
663	com.dashen.dashensuperapp	best app	5	2025-07-25	POSITIVE	0.999686598777771	Google Play
664	com.boa.boaMobileBanking	nothing need install apk say reup date	5	2025-07-25	NEGATIVE	0.9899688363075256	Google Play
665	com.combanketh.mobilebanking	excellent app	4	2025-07-24	POSITIVE	0.9998356103897096	Google Play
666	com.combanketh.mobilebanking	great	5	2025-07-24	POSITIVE	0.9998630285263062	Google Play
667	com.dashen.dashensuperapp	simple usage well design attractive visual design always one step ahead	5	2025-07-24	POSITIVE	0.9997584223747252	Google Play
668	com.combanketh.mobilebanking	many thing u fix	1	2025-07-24	NEGATIVE	0.979136049747467	Google Play
669	com.dashen.dashensuperapp	app good compatible ethiopian bank apps fast stack sometimes even day stop work	1	2025-07-23	POSITIVE	0.9737754464149476	Google Play
670	com.dashen.dashensuperapp	amazing product	5	2025-07-23	POSITIVE	0.9998769760131836	Google Play
671	com.boa.boaMobileBanking	log	5	2025-07-23	NEGATIVE	0.7918118238449097	Google Play
672	com.dashen.dashensuperapp	u need start cash service	4	2025-07-22	NEGATIVE	0.994681179523468	Google Play
673	com.dashen.dashensuperapp	great always one step ahead reliable bank	5	2025-07-22	POSITIVE	0.9998589754104614	Google Play
674	com.dashen.dashensuperapp	like	5	2025-07-22	POSITIVE	0.9910564422607422	Google Play
675	com.dashen.dashensuperapp	one super app	5	2025-07-21	POSITIVE	0.9332685470581056	Google Play
676	com.combanketh.mobilebanking	good job need see transaction history	4	2025-07-21	POSITIVE	0.997027575969696	Google Play
677	com.dashen.dashensuperapp	app even first phase far one step booster enable user perform seamless banking service multi step security feature hisher comfort zone really assure dashen bank live logo always one step ahead	5	2025-07-20	POSITIVE	0.9922938346862792	Google Play
678	com.dashen.dashensuperapp	fayla	5	2025-07-20	POSITIVE	0.9678625464439392	Google Play
679	com.boa.boaMobileBanking	proplem	5	2025-07-20	NEGATIVE	0.9374834895133972	Google Play
680	com.combanketh.mobilebanking	cant screen shoot	1	2025-07-20	POSITIVE	0.996109664440155	Google Play
681	com.combanketh.mobilebanking	nice apps	5	2025-07-20	POSITIVE	0.999850869178772	Google Play
682	com.combanketh.mobilebanking	best one	5	2025-07-20	POSITIVE	0.999826967716217	Google Play
683	com.combanketh.mobilebanking	full restriction	1	2025-07-20	NEGATIVE	0.9788629412651062	Google Play
684	com.combanketh.mobilebanking	nice apk	5	2025-07-19	POSITIVE	0.9998088479042052	Google Play
685	com.combanketh.mobilebanking	really excellent	5	2025-07-19	POSITIVE	0.99986469745636	Google Play
686	com.combanketh.mobilebanking	aazing	5	2025-07-18	NEGATIVE	0.9993402361869812	Google Play
687	com.boa.boaMobileBanking	excellent app	5	2025-07-18	POSITIVE	0.9998356103897096	Google Play
688	com.combanketh.mobilebanking	good need update today	5	2025-07-18	POSITIVE	0.9977506995201112	Google Play
689	com.combanketh.mobilebanking	okay	5	2025-07-18	POSITIVE	0.9997709393501282	Google Play
690	com.combanketh.mobilebanking	simple use amaze	5	2025-07-17	POSITIVE	0.9985781908035278	Google Play
691	com.combanketh.mobilebanking	best app ever	5	2025-07-17	POSITIVE	0.9997491240501404	Google Play
692	com.combanketh.mobilebanking	app good	4	2025-07-17	POSITIVE	0.9998369216918944	Google Play
693	com.combanketh.mobilebanking	like app b fast clear secure thank	5	2025-07-17	POSITIVE	0.9994200468063354	Google Play
694	com.dashen.dashensuperapp	best app good job dashen bank	5	2025-07-16	POSITIVE	0.9996065497398376	Google Play
695	com.combanketh.mobilebanking	difficult transfer account even settle tax obligation system error notification frequent	1	2025-07-16	NEGATIVE	0.995798408985138	Google Play
696	com.boa.boaMobileBanking	good work	5	2025-07-15	POSITIVE	0.999841332435608	Google Play
697	com.dashen.dashensuperapp	excellent app	5	2025-07-15	POSITIVE	0.9998356103897096	Google Play
698	com.dashen.dashensuperapp	good application	5	2025-07-15	POSITIVE	0.999854564666748	Google Play
699	com.combanketh.mobilebanking	chala bodena	2	2025-07-15	NEGATIVE	0.8392065763473511	Google Play
700	com.combanketh.mobilebanking	ebc app work unable connect server	1	2025-07-15	NEGATIVE	0.998831570148468	Google Play
701	com.dashen.dashensuperapp	bad app ever see	1	2025-07-14	NEGATIVE	0.9996180534362792	Google Play
702	com.boa.boaMobileBanking	good	5	2025-07-14	POSITIVE	0.999816119670868	Google Play
703	com.boa.boaMobileBanking	great boa	5	2025-07-14	POSITIVE	0.9992689490318298	Google Play
704	com.boa.boaMobileBanking	excellent	5	2025-07-14	POSITIVE	0.9998434782028198	Google Play
705	com.combanketh.mobilebanking	love app	5	2025-07-14	POSITIVE	0.9997610449790956	Google Play
706	com.combanketh.mobilebanking	excellent application user friendlynice one	5	2025-07-14	POSITIVE	0.999788224697113	Google Play
707	com.boa.boaMobileBanking	okay	4	2025-07-13	POSITIVE	0.9997709393501282	Google Play
708	com.dashen.dashensuperapp	good compare amole	5	2025-07-13	POSITIVE	0.9964397549629213	Google Play
709	com.boa.boaMobileBanking	work	1	2025-07-12	POSITIVE	0.9994449019432068	Google Play
710	com.dashen.dashensuperapp	secure slow mobile banking apps lazy app	2	2025-07-12	NEGATIVE	0.9993042945861816	Google Play
711	com.dashen.dashensuperapp	great application	5	2025-07-12	POSITIVE	0.999858856201172	Google Play
712	com.combanketh.mobilebanking	cant see old transaction bank app like bank mobile apps example abissinya tele birr please update feature	1	2025-07-12	NEGATIVE	0.9945775270462036	Google Play
713	com.combanketh.mobilebanking	cbe mobile bank make u life easy	5	2025-07-12	POSITIVE	0.9422805309295654	Google Play
714	com.combanketh.mobilebanking	cant transfer money telebirr	4	2025-07-12	NEGATIVE	0.9959064722061156	Google Play
715	com.boa.boaMobileBanking	app get bad bad every update	2	2025-07-11	NEGATIVE	0.9995890259742736	Google Play
716	com.combanketh.mobilebanking	user friendly	4	2025-07-11	POSITIVE	0.977589190006256	Google Play
717	com.combanketh.mobilebanking	cbe mb app best update many feature time timebut impossible download statement possible please add statement download option app ussd	2	2025-07-11	NEGATIVE	0.968985378742218	Google Play
718	com.combanketh.mobilebanking	amzing app 10q	5	2025-07-11	NEGATIVE	0.9880138635635376	Google Play
719	com.combanketh.mobilebanking	nice appand buy pay simple money transaction 10q cbe	5	2025-07-11	POSITIVE	0.7705211043357849	Google Play
720	com.boa.boaMobileBanking	nice	5	2025-07-10	POSITIVE	0.9998552799224854	Google Play
721	com.combanketh.mobilebanking	option app mobile banking	5	2025-07-09	POSITIVE	0.8521431684494019	Google Play
722	com.dashen.dashensuperapp	entreat app	5	2025-07-09	POSITIVE	0.8475521206855774	Google Play
723	com.combanketh.mobilebanking	poor even sho balance transaction history	1	2025-07-07	NEGATIVE	0.9998062252998352	Google Play
724	com.boa.boaMobileBanking	meku	5	2025-07-07	POSITIVE	0.9421750903129578	Google Play
725	com.combanketh.mobilebanking	good app bucket override dont get	4	2025-07-06	POSITIVE	0.9931453466415404	Google Play
726	com.combanketh.mobilebanking	basic app could lot good couldnt see 2 month statement even	1	2025-07-06	NEGATIVE	0.9907968044281006	Google Play
727	com.combanketh.mobilebanking	samsung s05 government utility payment option please fix next update	1	2025-07-05	NEGATIVE	0.9780213832855223	Google Play
728	com.combanketh.mobilebanking	nice	4	2025-07-05	POSITIVE	0.9998552799224854	Google Play
729	com.combanketh.mobilebanking	dont work	1	2025-07-05	NEGATIVE	0.998325765132904	Google Play
730	com.combanketh.mobilebanking	develop simple way add notebook like save info bank account number	4	2025-07-04	NEGATIVE	0.9627314209938048	Google Play
731	com.combanketh.mobilebanking	vgood	5	2025-07-04	POSITIVE	0.945227324962616	Google Play
732	com.boa.boaMobileBanking	awasome app go head	5	2025-07-04	NEGATIVE	0.9976499676704408	Google Play
733	com.boa.boaMobileBanking	suck hell crash time take long time load	1	2025-07-03	NEGATIVE	0.9905797839164734	Google Play
734	com.combanketh.mobilebanking	good app	5	2025-07-03	POSITIVE	0.9998493194580078	Google Play
735	com.combanketh.mobilebanking	please update security policy cant take screenshots	3	2025-07-02	NEGATIVE	0.9819005131721495	Google Play
736	com.dashen.dashensuperapp	cannot list number bug pile human waste absolute bad banking app ever use 50 step backwards recommend	1	2025-07-02	NEGATIVE	0.9986873269081116	Google Play
737	com.combanketh.mobilebanking	app reliable transfer money bank money transfer apps take money deliver confirmation take three day refund	2	2025-07-02	NEGATIVE	0.9823889136314392	Google Play
738	com.boa.boaMobileBanking	app nice easy use time crush say error check device connectivity please fix	3	2025-07-02	NEGATIVE	0.9474169611930848	Google Play
739	com.combanketh.mobilebanking	best app	5	2025-07-02	POSITIVE	0.999686598777771	Google Play
740	com.combanketh.mobilebanking	worst bank system app ever ethiopia	1	2025-07-02	NEGATIVE	0.9997871518135072	Google Play
741	com.combanketh.mobilebanking	fast best service go head	5	2025-07-02	POSITIVE	0.9979935884475708	Google Play
742	com.dashen.dashensuperapp	best app best bank	5	2025-07-02	POSITIVE	0.9994887113571168	Google Play
743	com.combanketh.mobilebanking	great application could improve bit example make register use comfort home without go bank branch	3	2025-07-01	POSITIVE	0.9711474776268004	Google Play
744	com.boa.boaMobileBanking	easy nice app load previouse recent time load problem detect	5	2025-07-01	NEGATIVE	0.951232373714447	Google Play
745	com.boa.boaMobileBanking	wow	5	2025-07-01	POSITIVE	0.999592125415802	Google Play
746	com.combanketh.mobilebanking	good	4	2025-07-01	POSITIVE	0.999816119670868	Google Play
747	com.combanketh.mobilebanking	fast easy use	3	2025-07-01	POSITIVE	0.9973737001419068	Google Play
748	com.combanketh.mobilebanking	nice app	5	2025-07-01	POSITIVE	0.9998061060905457	Google Play
749	com.combanketh.mobilebanking	really like application easy use reliable	5	2025-07-01	POSITIVE	0.9951375126838684	Google Play
750	com.combanketh.mobilebanking	best application available strong security	5	2025-07-01	POSITIVE	0.9995179176330566	Google Play
751	com.combanketh.mobilebanking	good thanks service	1	2025-06-30	POSITIVE	0.999852418899536	Google Play
752	com.dashen.dashensuperapp	alway slow loading	1	2025-06-30	NEGATIVE	0.9991027116775512	Google Play
753	com.combanketh.mobilebanking	like app bcz simple easy use	5	2025-06-29	POSITIVE	0.8668671250343323	Google Play
754	com.combanketh.mobilebanking	application work properly payment service transfer money please fix dear bank developer boring service	3	2025-06-29	NEGATIVE	0.997384250164032	Google Play
755	com.combanketh.mobilebanking	frist use app perfect soon begin change speed massage cost arm leg	1	2025-06-29	NEGATIVE	0.9423928260803224	Google Play
756	com.combanketh.mobilebanking	good	5	2025-06-29	POSITIVE	0.999816119670868	Google Play
757	com.combanketh.mobilebanking	safe secure fast	5	2025-06-28	POSITIVE	0.9997405409812928	Google Play
758	com.combanketh.mobilebanking	like	5	2025-06-28	POSITIVE	0.9910564422607422	Google Play
759	com.combanketh.mobilebanking	atashkabte	1	2025-06-28	POSITIVE	0.8923487067222595	Google Play
760	com.combanketh.mobilebanking	trasaction history need detail	3	2025-06-28	NEGATIVE	0.968058466911316	Google Play
761	com.boa.boaMobileBanking	bad mba experience app crush frequently take long fix problem even week	1	2025-06-27	NEGATIVE	0.9980968832969666	Google Play
762	com.dashen.dashensuperapp	bad app ever chance account deactivate doom	1	2025-06-27	NEGATIVE	0.9996298551559448	Google Play
763	com.combanketh.mobilebanking	best mobile banking app	5	2025-06-26	POSITIVE	0.9997095465660096	Google Play
764	com.combanketh.mobilebanking	excellent service	5	2025-06-26	POSITIVE	0.9998576641082764	Google Play
765	com.combanketh.mobilebanking	best	5	2025-06-26	POSITIVE	0.9997941851615906	Google Play
766	com.combanketh.mobilebanking	app problem	1	2025-06-26	NEGATIVE	0.9991914629936218	Google Play
767	com.combanketh.mobilebanking	reason money go system keep tell fail try many time money nowhere go checked balance realise money go	1	2025-06-25	NEGATIVE	0.9984170198440552	Google Play
768	com.combanketh.mobilebanking	ill give 5 star app function see couple transaction right even go back one month see prior transaction standard banking function also cbe 1 start	1	2025-06-25	NEGATIVE	0.9933567643165588	Google Play
769	com.combanketh.mobilebanking	best	5	2025-06-25	POSITIVE	0.9997941851615906	Google Play
770	com.combanketh.mobilebanking	unreliable banking app ever use transaction stuck halfway cant access money call call center ask wait 35 business day return money point banking app transaction unreliable incomplete id rate less could	1	2025-06-25	NEGATIVE	0.9983097314834596	Google Play
771	com.boa.boaMobileBanking	good app fore	5	2025-06-25	POSITIVE	0.9998137354850768	Google Play
772	com.dashen.dashensuperapp	unpredictable app cant make transaction cant even get otp go bad bad thank goodness amole dashen app still exist	1	2025-06-25	NEGATIVE	0.9855552911758424	Google Play
773	com.combanketh.mobilebanking	would appreciate app allow take screensshot	4	2025-06-24	POSITIVE	0.7256739735603333	Google Play
774	com.combanketh.mobilebanking	easy use clear	5	2025-06-24	POSITIVE	0.9941689968109132	Google Play
775	com.boa.boaMobileBanking	uninterested work developer mode havent developer option prefer uninstall app	1	2025-06-24	NEGATIVE	0.9987074136734008	Google Play
776	com.dashen.dashensuperapp	nice app limit max 600000	5	2025-06-24	POSITIVE	0.9648357629776	Google Play
777	com.combanketh.mobilebanking	excellence	5	2025-06-23	POSITIVE	0.999836564064026	Google Play
778	com.combanketh.mobilebanking	easy use	4	2025-06-23	POSITIVE	0.9884273409843444	Google Play
779	com.boa.boaMobileBanking	fantastic	5	2025-06-22	POSITIVE	0.9998743534088136	Google Play
780	com.boa.boaMobileBanking	app doesnt start	1	2025-06-21	NEGATIVE	0.9964824914932252	Google Play
781	com.combanketh.mobilebanking	god	5	2025-06-21	POSITIVE	0.944879412651062	Google Play
782	com.combanketh.mobilebanking	life	5	2025-06-21	POSITIVE	0.9965232610702516	Google Play
783	com.boa.boaMobileBanking	nice use	5	2025-06-21	POSITIVE	0.999746024608612	Google Play
784	com.dashen.dashensuperapp	super	5	2025-06-21	POSITIVE	0.998783528804779	Google Play
785	com.combanketh.mobilebanking	great app	5	2025-06-19	POSITIVE	0.999821126461029	Google Play
786	com.combanketh.mobilebanking	sufaa milikesaa	5	2025-06-19	NEGATIVE	0.9896273612976074	Google Play
787	com.combanketh.mobilebanking	able make screenshot	1	2025-06-18	POSITIVE	0.9997891783714294	Google Play
788	com.dashen.dashensuperapp	would happy get withdraw system application otherwise everything fine	4	2025-06-18	NEGATIVE	0.9171205163002014	Google Play
789	com.boa.boaMobileBanking	excellent application	5	2025-06-18	POSITIVE	0.9998571872711182	Google Play
790	com.boa.boaMobileBanking	bad app slow	1	2025-06-17	NEGATIVE	0.9997616410255432	Google Play
791	com.combanketh.mobilebanking	good	5	2025-06-17	POSITIVE	0.999816119670868	Google Play
792	com.dashen.dashensuperapp	nice app transaction limet enough	5	2025-06-17	POSITIVE	0.9975263476371764	Google Play
793	com.combanketh.mobilebanking	best app please addincluded water bill payment	4	2025-06-16	NEGATIVE	0.9719850420951844	Google Play
794	com.combanketh.mobilebanking	make life easy feel like deserves 4star	4	2025-06-16	POSITIVE	0.9938042163848876	Google Play
795	com.combanketh.mobilebanking	good service lightly internet accessed	3	2025-06-14	NEGATIVE	0.946903109550476	Google Play
796	com.combanketh.mobilebanking	nice use app	5	2025-06-14	POSITIVE	0.9995125532150269	Google Play
797	com.dashen.dashensuperapp	amaze application use bank transaction ethiopia friendly btw need ck account link lose mobile ver difficult link next one pls ck	5	2025-06-14	NEGATIVE	0.990549623966217	Google Play
798	com.dashen.dashensuperapp	incredible	5	2025-06-14	POSITIVE	0.99987530708313	Google Play
799	com.combanketh.mobilebanking	waw	5	2025-06-13	NEGATIVE	0.7346185445785522	Google Play
800	com.boa.boaMobileBanking	good job	5	2025-06-13	POSITIVE	0.999835729598999	Google Play
801	com.combanketh.mobilebanking	best mobile banking ever ethiopia	5	2025-06-13	POSITIVE	0.999790370464325	Google Play
802	com.combanketh.mobilebanking	good app fast	5	2025-06-13	POSITIVE	0.9998340606689452	Google Play
803	com.combanketh.mobilebanking	good work cbe team well develop	5	2025-06-13	POSITIVE	0.9998400211334229	Google Play
804	com.combanketh.mobilebanking	excellent easy access uptodate	5	2025-06-13	POSITIVE	0.999591052532196	Google Play
805	com.dashen.dashensuperapp	simple user friendly app thank dashen bank	5	2025-06-12	POSITIVE	0.9994839429855348	Google Play
806	com.combanketh.mobilebanking	best mobile banking app ethiopian banking industry keep cbe	5	2025-06-12	POSITIVE	0.9992759823799132	Google Play
807	com.combanketh.mobilebanking	helpful app way county ethiopia good luck	5	2025-06-12	POSITIVE	0.99961519241333	Google Play
808	com.boa.boaMobileBanking	best financial app	5	2025-06-12	POSITIVE	0.9997140765190125	Google Play
809	com.boa.boaMobileBanking	bad app human ever create	1	2025-06-09	NEGATIVE	0.9996734857559204	Google Play
810	com.combanketh.mobilebanking	bad hard use	5	2025-06-09	NEGATIVE	0.9995744824409484	Google Play
811	com.combanketh.mobilebanking	amaze app well update access without internet fee make open free internet service open data connection	5	2025-06-09	POSITIVE	0.9868544340133668	Google Play
812	com.dashen.dashensuperapp	good	5	2025-06-09	POSITIVE	0.999816119670868	Google Play
813	com.combanketh.mobilebanking	amaze app indeed im enjoy	5	2025-06-08	POSITIVE	0.998899221420288	Google Play
814	com.dashen.dashensuperapp	like mobile banking app much overall user interface navigation awesome lack instant response someone deposit withdraw money	2	2025-06-07	NEGATIVE	0.9986687898635864	Google Play
815	com.combanketh.mobilebanking	like app user interface basic attractive	2	2025-06-07	POSITIVE	0.9995747208595276	Google Play
816	com.combanketh.mobilebanking	really happy app siple use everything	5	2025-06-07	POSITIVE	0.9997885823249816	Google Play
817	com.combanketh.mobilebanking	great app like carry bank pocket	4	2025-06-07	POSITIVE	0.9959254264831544	Google Play
818	com.combanketh.mobilebanking	garrantty bank ebc	4	2025-06-07	NEGATIVE	0.9680942296981812	Google Play
819	com.dashen.dashensuperapp	love	3	2025-06-06	POSITIVE	0.9998735189437866	Google Play
820	com.combanketh.mobilebanking	cannot send cbebirr app app	3	2025-06-05	NEGATIVE	0.9974468946456908	Google Play
821	com.combanketh.mobilebanking	functional	1	2025-06-05	POSITIVE	0.9993332028388976	Google Play
822	com.combanketh.mobilebanking	app proactive good connection	5	2025-06-05	POSITIVE	0.9998316764831544	Google Play
823	com.combanketh.mobilebanking	app problem	1	2025-06-05	NEGATIVE	0.9991914629936218	Google Play
824	com.boa.boaMobileBanking	work	3	2025-06-05	POSITIVE	0.9994449019432068	Google Play
825	com.combanketh.mobilebanking	good app issue like doesnt give right amount bank issue transfer	2	2025-06-04	POSITIVE	0.9565141201019288	Google Play
826	com.combanketh.mobilebanking	best mobile banking app ever	5	2025-06-04	POSITIVE	0.9997294545173644	Google Play
827	com.combanketh.mobilebanking	best app finance	5	2025-06-04	POSITIVE	0.9994705319404602	Google Play
828	com.combanketh.mobilebanking	everytime uninstall app reach physically oldy thats one security layer theyd check fraud attempt via app source directlysource app store play store etc implicitly 2025 physical presence every app install traditionaltraditionally rare	1	2025-06-04	NEGATIVE	0.9957544803619384	Google Play
829	com.combanketh.mobilebanking	niec	5	2025-06-04	NEUTRAL	0.5998052954673767	Google Play
830	com.combanketh.mobilebanking	yetemeta	1	2025-06-03	POSITIVE	0.6553682684898376	Google Play
831	com.combanketh.mobilebanking	safety	1	2025-06-03	POSITIVE	0.9971936345100404	Google Play
832	com.combanketh.mobilebanking	nice bank	5	2025-06-03	POSITIVE	0.999805510044098	Google Play
833	com.boa.boaMobileBanking	exceptional	5	2025-06-03	POSITIVE	0.9998514652252196	Google Play
834	com.boa.boaMobileBanking	boa mobile good bank	5	2025-06-02	POSITIVE	0.9984728693962096	Google Play
835	com.combanketh.mobilebanking	good try make facilitate client	4	2025-06-02	POSITIVE	0.9987377524375916	Google Play
836	com.combanketh.mobilebanking	problem solver application go ahead cbe love much	5	2025-06-02	POSITIVE	0.9991011619567872	Google Play
837	com.combanketh.mobilebanking	like childish app make good bad ever see	1	2025-06-02	NEGATIVE	0.9984995126724244	Google Play
838	com.boa.boaMobileBanking	worest app 247 loading	1	2025-06-01	NEGATIVE	0.9799231886863708	Google Play
839	com.boa.boaMobileBanking	boa system confartable	5	2025-06-01	NEGATIVE	0.9988227486610411	Google Play
840	com.combanketh.mobilebanking	awesome bank	5	2025-06-01	POSITIVE	0.99984610080719	Google Play
841	com.dashen.dashensuperapp	gadaa	5	2025-06-01	NEGATIVE	0.7211465239524841	Google Play
842	com.dashen.dashensuperapp	massive upgrade amole app	5	2025-05-31	POSITIVE	0.7140384316444397	Google Play
843	com.dashen.dashensuperapp	good app	5	2025-05-31	POSITIVE	0.9998493194580078	Google Play
844	com.dashen.dashensuperapp	top	5	2025-05-31	POSITIVE	0.9997069239616394	Google Play
845	com.dashen.dashensuperapp	app well amole biometric new update doesnt work	4	2025-05-31	NEGATIVE	0.9987209439277648	Google Play
846	com.combanketh.mobilebanking	well service	5	2025-05-31	POSITIVE	0.9997822642326356	Google Play
847	com.combanketh.mobilebanking	app develop good way comment need make 1 prevent screenshot likely good someone like coz need make screenshot quick evidence 2it would good make u access recent transaction histories 30 day coz dont go bank person see old transaction add colander category user easily access old transaction colander	5	2025-05-31	NEGATIVE	0.995372474193573	Google Play
848	com.combanketh.mobilebanking	masha alla	5	2025-05-31	NEGATIVE	0.9514628052711488	Google Play
849	com.combanketh.mobilebanking	recently big problem send safaricom telebir even cbebirr wallet could anybody responsible fix frustrate 5 day money hasnt return take account doesnt send mpesa update correct send back money still im afraid send	2	2025-05-31	NEGATIVE	0.9978579878807068	Google Play
850	com.combanketh.mobilebanking	nice	5	2025-05-30	POSITIVE	0.9998552799224854	Google Play
851	com.combanketh.mobilebanking	low system everything	3	2025-05-30	NEGATIVE	0.9995009899139404	Google Play
852	com.combanketh.mobilebanking	malkaamuu jiidhaa namoo	5	2025-05-30	NEGATIVE	0.9887813329696656	Google Play
853	com.dashen.dashensuperapp	wow	5	2025-05-30	POSITIVE	0.999592125415802	Google Play
854	com.dashen.dashensuperapp	wow saff app	5	2025-05-30	POSITIVE	0.9958081245422364	Google Play
855	com.dashen.dashensuperapp	slow	3	2025-05-29	NEGATIVE	0.9997313618659972	Google Play
856	com.combanketh.mobilebanking	keep cbe	5	2025-05-29	POSITIVE	0.992401123046875	Google Play
857	com.combanketh.mobilebanking	yes good	5	2025-05-28	POSITIVE	0.9998410940170288	Google Play
858	com.dashen.dashensuperapp	nice application	5	2025-05-27	POSITIVE	0.9998229146003724	Google Play
859	com.dashen.dashensuperapp	useless app ever load take long	1	2025-05-27	NEGATIVE	0.9996453523635864	Google Play
860	com.boa.boaMobileBanking	app waste time doesnt work cant even long really piss fix problem	1	2025-05-27	NEGATIVE	0.9993240833282472	Google Play
861	com.combanketh.mobilebanking	like everything app	5	2025-05-27	POSITIVE	0.9987452030181884	Google Play
862	com.combanketh.mobilebanking	use app last two year problem stop work 3 month ago try transfer fund give error cant transaction inactive account	4	2025-05-27	NEGATIVE	0.9971454739570618	Google Play
863	com.dashen.dashensuperapp	game changer app dashen bank super app fast secure easy use threeclick payment make send money super quick qr code payment perfect cashless shopping also love biometric login easy airtime bill payment everything need one place dashen bank really raise bar digital banking ethiopia highly recommend	5	2025-05-26	POSITIVE	0.997061550617218	Google Play
864	com.dashen.dashensuperapp	useful app	1	2025-05-26	POSITIVE	0.9991915822029114	Google Play
865	com.combanketh.mobilebanking	cbe best financial application dimple use would like say thank much developer application really appreciate app	5	2025-05-26	POSITIVE	0.9978892207145692	Google Play
866	com.boa.boaMobileBanking	good service	3	2025-05-25	POSITIVE	0.9998499155044556	Google Play
867	com.combanketh.mobilebanking	mortuary app	5	2025-05-25	NEGATIVE	0.7924909591674805	Google Play
868	com.combanketh.mobilebanking	smart app stop period time device reason	5	2025-05-25	NEGATIVE	0.7012113332748413	Google Play
869	com.combanketh.mobilebanking	awesome	5	2025-05-25	POSITIVE	0.9998682737350464	Google Play
870	com.combanketh.mobilebanking	thankyou every one	5	2025-05-25	POSITIVE	0.99984610080719	Google Play
871	com.combanketh.mobilebanking	app absolutely fantastic love enjoy let u support foundation together	5	2025-05-25	POSITIVE	0.9997488856315612	Google Play
872	com.combanketh.mobilebanking	cbe app highly unreliable recent week frequently fail work properly ethio telecom safaricom network whether use wifi mobile data week system entirely extend period make difficult access banking service app function intermittently lack consistency frustrate hope issue address soon nontechnical influence remove essential service	2	2025-05-25	NEGATIVE	0.9995001554489136	Google Play
873	com.dashen.dashensuperapp	wawww	5	2025-05-24	NEGATIVE	0.9418039321899414	Google Play
874	com.combanketh.mobilebanking	sooo good	5	2025-05-24	POSITIVE	0.9998644590377808	Google Play
875	com.combanketh.mobilebanking	amaze app use app one year	4	2025-05-24	POSITIVE	0.616897463798523	Google Play
876	com.boa.boaMobileBanking	app crush frequently	1	2025-05-24	NEGATIVE	0.9947291016578674	Google Play
877	com.combanketh.mobilebanking	fast	1	2025-05-24	POSITIVE	0.9989494681358336	Google Play
878	com.dashen.dashensuperapp	nice	5	2025-05-23	POSITIVE	0.9998552799224854	Google Play
879	com.dashen.dashensuperapp	best	5	2025-05-23	POSITIVE	0.9997941851615906	Google Play
880	com.combanketh.mobilebanking	fantastic	5	2025-05-23	POSITIVE	0.9998743534088136	Google Play
881	com.combanketh.mobilebanking	accessible use	5	2025-05-23	POSITIVE	0.9996153116226196	Google Play
882	com.combanketh.mobilebanking	like	4	2025-05-23	POSITIVE	0.9910564422607422	Google Play
883	com.combanketh.mobilebanking	change default network	5	2025-05-23	NEGATIVE	0.9772278666496276	Google Play
884	com.combanketh.mobilebanking	nice fast app	5	2025-05-23	POSITIVE	0.999833345413208	Google Play
885	com.combanketh.mobilebanking	get money	5	2025-05-23	NEGATIVE	0.6802431344985962	Google Play
886	com.combanketh.mobilebanking	oldie	1	2025-05-22	NEGATIVE	0.6663157343864441	Google Play
887	com.combanketh.mobilebanking	good app please make reliable crash sometimes	4	2025-05-22	POSITIVE	0.998899221420288	Google Play
888	com.boa.boaMobileBanking	guy keep get bad	1	2025-05-22	NEGATIVE	0.9978876709938048	Google Play
889	com.combanketh.mobilebanking	bad cant even load need improve service	1	2025-05-22	NEGATIVE	0.9993813037872314	Google Play
890	com.combanketh.mobilebanking	busy dont know prefer 889	3	2025-05-22	NEGATIVE	0.995585560798645	Google Play
891	com.combanketh.mobilebanking	work safari network	1	2025-05-22	POSITIVE	0.6657440662384033	Google Play
892	com.combanketh.mobilebanking	bore mobil banking application ethiopiaplease use alternative private bank mobile bank apps	1	2025-05-22	NEGATIVE	0.9866325855255128	Google Play
893	com.combanketh.mobilebanking	hojii bonsaadha	5	2025-05-22	POSITIVE	0.9568661451339722	Google Play
894	com.combanketh.mobilebanking	userfriendly appsbecause app easy	5	2025-05-22	NEGATIVE	0.9732796549797058	Google Play
895	com.combanketh.mobilebanking	awosome	5	2025-05-22	NEGATIVE	0.6613028645515442	Google Play
896	com.combanketh.mobilebanking	good app	5	2025-05-22	POSITIVE	0.9998493194580078	Google Play
897	com.combanketh.mobilebanking	trustful	5	2025-05-22	POSITIVE	0.9998213648796082	Google Play
898	com.combanketh.mobilebanking	like	5	2025-05-22	POSITIVE	0.9910564422607422	Google Play
899	com.combanketh.mobilebanking	update issue	4	2025-05-22	NEUTRAL	0.5473259091377258	Google Play
900	com.dashen.dashensuperapp	good mobile bank app	1	2025-05-22	POSITIVE	0.9997158646583556	Google Play
901	com.combanketh.mobilebanking	screenshot reffresh option annoy make transaction delay activity	2	2025-05-21	NEGATIVE	0.9954864382743835	Google Play
902	com.combanketh.mobilebanking	app useful appit save timeand secure	4	2025-05-21	POSITIVE	0.6832634806632996	Google Play
903	com.combanketh.mobilebanking	best mobile banking app	5	2025-05-21	POSITIVE	0.9997095465660096	Google Play
904	com.combanketh.mobilebanking	easy use helpful life	5	2025-05-21	POSITIVE	0.9875379800796508	Google Play
905	com.combanketh.mobilebanking	yes yes	5	2025-05-21	POSITIVE	0.9997482895851136	Google Play
906	com.combanketh.mobilebanking	app good use well	1	2025-05-21	POSITIVE	0.999492645263672	Google Play
907	com.combanketh.mobilebanking	doesnt work	1	2025-05-21	NEGATIVE	0.9989099502563475	Google Play
908	com.dashen.dashensuperapp	nothing change updated version collect comment fee back improve version superapp mot function today	4	2025-05-20	NEGATIVE	0.9867191910743712	Google Play
909	com.boa.boaMobileBanking	boa	2	2025-05-20	NEGATIVE	0.7410527467727661	Google Play
910	com.boa.boaMobileBanking	open android	4	2025-05-19	POSITIVE	0.9966705441474916	Google Play
1219	com.dashen.dashensuperapp	hope well amole	5	2025-01-18	POSITIVE	0.9985826015472412	Google Play
911	com.boa.boaMobileBanking	bad app ever totally unreliable didnt work last 4 month	1	2025-05-18	NEGATIVE	0.99735426902771	Google Play
912	com.boa.boaMobileBanking	amaze	5	2025-05-18	POSITIVE	0.9996262788772584	Google Play
913	com.dashen.dashensuperapp	good app compitators confuse transfer need otp pin user inter pin instead otp know litrecy level society device base dont know need otp please try fix	3	2025-05-18	NEGATIVE	0.7741235494613647	Google Play
914	com.dashen.dashensuperapp	best app ever finance sector	5	2025-05-18	POSITIVE	0.9996483325958252	Google Play
915	com.dashen.dashensuperapp	wowwwe app	5	2025-05-17	POSITIVE	0.9829692840576172	Google Play
916	com.dashen.dashensuperapp	dashen bank dashen super app	1	2025-05-17	NEUTRAL	0.5405223965644836	Google Play
917	com.dashen.dashensuperapp	transfer bank account hastle inconvenient get use see please try	2	2025-05-17	NEGATIVE	0.9984351992607116	Google Play
918	com.dashen.dashensuperapp	amazing application	5	2025-05-16	POSITIVE	0.9998698234558104	Google Play
919	com.dashen.dashensuperapp	fantastic	5	2025-05-16	POSITIVE	0.9998743534088136	Google Play
920	com.dashen.dashensuperapp	always lag	1	2025-05-16	NEGATIVE	0.999782145023346	Google Play
921	com.dashen.dashensuperapp	wow apo	5	2025-05-15	POSITIVE	0.99947851896286	Google Play
922	com.dashen.dashensuperapp	choice	5	2025-05-15	POSITIVE	0.9985694885253906	Google Play
923	com.dashen.dashensuperapp	dashen bank app good sometimes work well	5	2025-05-15	POSITIVE	0.997885286808014	Google Play
924	com.dashen.dashensuperapp	awesome app keep go	5	2025-05-14	POSITIVE	0.9998612403869628	Google Play
925	com.dashen.dashensuperapp	grows ethiopian digital banking step aheadall fetures onesimple fast convince	5	2025-05-14	POSITIVE	0.995567500591278	Google Play
926	com.dashen.dashensuperapp	totally amazing	5	2025-05-13	POSITIVE	0.9998782873153688	Google Play
927	com.dashen.dashensuperapp	helpful app	5	2025-05-13	POSITIVE	0.9995542168617249	Google Play
928	com.dashen.dashensuperapp	game changer	5	2025-05-13	POSITIVE	0.988757073879242	Google Play
929	com.dashen.dashensuperapp	honest best banking lifestyle app ethiopia	5	2025-05-12	POSITIVE	0.9996052384376526	Google Play
930	com.dashen.dashensuperapp	must seamless one digital platform db superapp keep living motto always one step ahead	5	2025-05-12	POSITIVE	0.9956278800964355	Google Play
931	com.boa.boaMobileBanking	app work samsung a51 give preview logo	1	2025-05-11	NEGATIVE	0.9634435772895812	Google Play
932	com.boa.boaMobileBanking	enter incorrect security question mistake boa app lock pin forever option contact different branch 4times didnt able solve issue	5	2025-05-10	NEGATIVE	0.9992573857307434	Google Play
933	com.dashen.dashensuperapp	best ever	5	2025-05-09	POSITIVE	0.999841570854187	Google Play
934	com.dashen.dashensuperapp	amaze app super easy use best design love	5	2025-05-09	POSITIVE	0.9993641972541808	Google Play
935	com.dashen.dashensuperapp	excellent game changer app	5	2025-05-08	POSITIVE	0.9998358488082886	Google Play
936	com.boa.boaMobileBanking	app future good problem apps reset activate difficult even branch staff take long time active branch plus time high expect failure activation process counter otp send work	1	2025-05-06	NEGATIVE	0.996475875377655	Google Play
937	com.dashen.dashensuperapp	nice app especially gui get error send within dashen bank receipter get sms notification	4	2025-05-03	NEGATIVE	0.8684996366500854	Google Play
938	com.dashen.dashensuperapp	seem log within minute	1	2025-05-03	NEGATIVE	0.8492996096611023	Google Play
939	com.dashen.dashensuperapp	highly excite use application favorable well preferrable mobile app	5	2025-05-03	POSITIVE	0.9981435537338256	Google Play
940	com.dashen.dashensuperapp	yes want dashen super open	5	2025-05-02	POSITIVE	0.9973095655441284	Google Play
941	com.dashen.dashensuperapp	fast version	5	2025-05-01	POSITIVE	0.998946726322174	Google Play
942	com.dashen.dashensuperapp	best ui mobile banking app prop design team	5	2025-04-30	POSITIVE	0.9993069171905518	Google Play
943	com.dashen.dashensuperapp	bad	1	2025-04-30	NEGATIVE	0.999782383441925	Google Play
944	com.dashen.dashensuperapp	best best	5	2025-04-29	POSITIVE	0.9998223185539246	Google Play
945	com.dashen.dashensuperapp	best app ever see	5	2025-04-29	POSITIVE	0.9996399879455566	Google Play
946	com.dashen.dashensuperapp	fast secure mobile banking app like app	5	2025-04-29	POSITIVE	0.9884229302406312	Google Play
947	com.dashen.dashensuperapp	dashen super app secure band easy	5	2025-04-29	POSITIVE	0.8955517411231995	Google Play
948	com.dashen.dashensuperapp	waw	5	2025-04-28	NEGATIVE	0.7346185445785522	Google Play
949	com.dashen.dashensuperapp	best app	5	2025-04-28	POSITIVE	0.999686598777771	Google Play
950	com.dashen.dashensuperapp	slow try see recent transaction stucked	1	2025-04-28	NEGATIVE	0.9987096786499025	Google Play
951	com.dashen.dashensuperapp	wowslnwoooo wowwww amaze	5	2025-04-28	POSITIVE	0.9956607222557068	Google Play
952	com.dashen.dashensuperapp	wow appl	5	2025-04-28	POSITIVE	0.9994691014289856	Google Play
953	com.dashen.dashensuperapp	change pin number use finger print dummy	1	2025-04-27	NEGATIVE	0.9972420930862428	Google Play
954	com.dashen.dashensuperapp	nice	5	2025-04-26	POSITIVE	0.9998552799224854	Google Play
955	com.dashen.dashensuperapp	great	4	2025-04-26	POSITIVE	0.9998630285263062	Google Play
956	com.dashen.dashensuperapp	slow lack many feature super app high rating give employee customer	1	2025-04-25	NEGATIVE	0.9993460774421692	Google Play
957	com.dashen.dashensuperapp	incomparably userfriendly fast app mobile banking	5	2025-04-24	NEGATIVE	0.9973512887954712	Google Play
958	com.dashen.dashensuperapp	smooth secure experience transfer bill payment track expense effortless intuitive design make banking go	5	2025-04-24	POSITIVE	0.9990517497062684	Google Play
959	com.dashen.dashensuperapp	easy fast	5	2025-04-24	POSITIVE	0.997892439365387	Google Play
960	com.dashen.dashensuperapp	execellent	5	2025-04-24	NEGATIVE	0.9866806864738464	Google Play
961	com.dashen.dashensuperapp	nothing super app repeatedly fail transaction waste customer valuable time system upgrade time less traffic demand technical difficulty reflect customer	2	2025-04-24	NEGATIVE	0.9950292706489564	Google Play
962	com.dashen.dashensuperapp	amaze app experience	5	2025-04-23	POSITIVE	0.9986839890480042	Google Play
963	com.dashen.dashensuperapp	incredible product	5	2025-04-23	POSITIVE	0.9998781681060792	Google Play
964	com.boa.boaMobileBanking	bad app stick open note work	1	2025-04-23	NEGATIVE	0.999160885810852	Google Play
965	com.dashen.dashensuperapp	best banking app ever recommend everyone use	5	2025-04-23	POSITIVE	0.9995530247688292	Google Play
1013	com.dashen.dashensuperapp	good fast supper app thanks dashen bank	5	2025-04-21	POSITIVE	0.9997907280921936	Google Play
966	com.dashen.dashensuperapp	app great user interface comprehensive payment ecommerce platform also include unique feature chat banking budget	5	2025-04-22	POSITIVE	0.994878888130188	Google Play
967	com.dashen.dashensuperapp	dashen bank number one choice	5	2025-04-22	POSITIVE	0.9987853169441224	Google Play
968	com.dashen.dashensuperapp	powerful local solution rival global app love easy explore service product	5	2025-04-22	POSITIVE	0.9994159936904908	Google Play
969	com.dashen.dashensuperapp	best app ever plan include digital lending gasification	5	2025-04-22	POSITIVE	0.999284565448761	Google Play
970	com.dashen.dashensuperapp	best supper app ever	5	2025-04-22	POSITIVE	0.9997851252555848	Google Play
971	com.dashen.dashensuperapp	convenient	5	2025-04-22	POSITIVE	0.999121367931366	Google Play
972	com.dashen.dashensuperapp	betam mirt ena betam le atikakem kelel yale ena michu application nw	5	2025-04-22	NEGATIVE	0.9886249303817748	Google Play
973	com.dashen.dashensuperapp	effect payment via app create convenience recipient easily confirm payment receive	5	2025-04-22	NEGATIVE	0.9536195993423462	Google Play
974	com.dashen.dashensuperapp	app various usefull function make easy payment system also connect seller reasonable price	5	2025-04-22	NEUTRAL	0.5802704691886902	Google Play
975	com.dashen.dashensuperapp	make transaction never easy new update amazing	5	2025-04-22	NEGATIVE	0.979477882385254	Google Play
976	com.dashen.dashensuperapp	great everyday banking payment go	5	2025-04-22	POSITIVE	0.9995524287223816	Google Play
977	com.dashen.dashensuperapp	love app esp 3 click make ecommerce easy convinient	5	2025-04-22	POSITIVE	0.997201681137085	Google Play
978	com.dashen.dashensuperapp	fast reliable user friendly keep	5	2025-04-22	POSITIVE	0.9996548891067504	Google Play
979	com.dashen.dashensuperapp	feature dynamic	5	2025-04-22	POSITIVE	0.9995842576026917	Google Play
980	com.dashen.dashensuperapp	exceptional digital experience supperapp bring new paradigm shift banking business bravo dashen keep	5	2025-04-22	POSITIVE	0.99946528673172	Google Play
981	com.dashen.dashensuperapp	best application	5	2025-04-22	POSITIVE	0.9998098015785216	Google Play
982	com.dashen.dashensuperapp	amaze application meet need customer	5	2025-04-22	POSITIVE	0.9988634586334229	Google Play
983	com.dashen.dashensuperapp	dashen supper app useful app customer	5	2025-04-21	POSITIVE	0.8582969307899475	Google Play
984	com.dashen.dashensuperapp	dashen super app offer quick userfriendly experience bring together variety service like budget payment airtime recharge one convenient platform sleek design intuitive navigation ensure effortless transaction evident dashen bank carefully craft app make everyday financial activity easier great choice anyone aim streamline digital routine	5	2025-04-21	POSITIVE	0.9966977834701538	Google Play
985	com.dashen.dashensuperapp	impressed dashen super app userfriendly operate efficiently budget chatbot feature impressive item purchase three click	5	2025-04-21	POSITIVE	0.9986478686332704	Google Play
986	com.dashen.dashensuperapp	fantastic product keep good work	5	2025-04-21	POSITIVE	0.9998798370361328	Google Play
987	com.dashen.dashensuperapp	dashen bank super fast convenience also contain thing one app interesting use dashen bank super	5	2025-04-21	POSITIVE	0.958730697631836	Google Play
988	com.dashen.dashensuperapp	internal customer dashen bank superapp greatly simplify online banking experience easy use allow quickly check balance transfer money pay bill apps advanced security feature highly secure ensure data well protect three click chat bank ip feature also give smart experience deed dashen bank always step ahead	5	2025-04-21	POSITIVE	0.996704638004303	Google Play
989	com.dashen.dashensuperapp	app keep get well every update smooth performance great ui topnotch security thank make banking convenient	5	2025-04-21	POSITIVE	0.9960629343986512	Google Play
990	com.dashen.dashensuperapp	comfortable app keep	5	2025-04-21	POSITIVE	0.9997735619544984	Google Play
991	com.dashen.dashensuperapp	convenient fast	5	2025-04-21	POSITIVE	0.998004138469696	Google Play
992	com.dashen.dashensuperapp	dashen super app simple faster reliable	5	2025-04-21	POSITIVE	0.9986547231674194	Google Play
993	com.dashen.dashensuperapp	work hulum information asgebiche continue accept yemilew button ayeseram phone samsung a51	1	2025-04-21	NEGATIVE	0.992849826812744	Google Play
994	com.dashen.dashensuperapp	love app	5	2025-04-21	POSITIVE	0.9997610449790956	Google Play
995	com.dashen.dashensuperapp	love one best mobile banking app banking industry	5	2025-04-21	POSITIVE	0.9997628331184388	Google Play
996	com.dashen.dashensuperapp	best app	5	2025-04-21	POSITIVE	0.999686598777771	Google Play
997	com.dashen.dashensuperapp	dashen super app offer modern userfriendly experience leverage late technological advancement deliver seamless ecommerce platform	5	2025-04-21	POSITIVE	0.9916017651557922	Google Play
998	com.dashen.dashensuperapp	amazing feature faster easy use	5	2025-04-21	POSITIVE	0.9997696280479432	Google Play
999	com.dashen.dashensuperapp	superb	5	2025-04-21	POSITIVE	0.9998656511306764	Google Play
1000	com.dashen.dashensuperapp	really like amaze application dashen supper app make life easier	5	2025-04-21	POSITIVE	0.8813075423240662	Google Play
1001	com.dashen.dashensuperapp	best inclass app	5	2025-04-21	POSITIVE	0.996780514717102	Google Play
1002	com.dashen.dashensuperapp	wow like name super app	5	2025-04-21	POSITIVE	0.9992703795433044	Google Play
1003	com.dashen.dashensuperapp	amaze mobile app	5	2025-04-21	POSITIVE	0.9980443716049194	Google Play
1004	com.dashen.dashensuperapp	excellent mobile banking app	5	2025-04-21	POSITIVE	0.9998179078102112	Google Play
1005	com.dashen.dashensuperapp	dashen super app give amazing convenience make life easy	5	2025-04-21	POSITIVE	0.9996932744979858	Google Play
1006	com.dashen.dashensuperapp	expect get service dashen bank always like slogan	5	2025-04-21	NEGATIVE	0.9917210340499878	Google Play
1007	com.dashen.dashensuperapp	really amazed idea ecommerce service bank app mean one step ahead please include kind product soon possible	5	2025-04-21	POSITIVE	0.997567653656006	Google Play
1008	com.dashen.dashensuperapp	banking superapp incredibly well design design appearance app overall experience use app fantastic app pack feature bank ecommerce one placeit even budget setting option super useful manage money everything run smoothly love convenient make daily life huge kudos dashen bank truly living motto always one step ahead keep	5	2025-04-21	POSITIVE	0.9987210631370544	Google Play
1009	com.dashen.dashensuperapp	best mobile banking application	5	2025-04-21	POSITIVE	0.9996380805969238	Google Play
1010	com.dashen.dashensuperapp	join digital world use supper app make life easy	5	2025-04-21	POSITIVE	0.9455338716506958	Google Play
1011	com.dashen.dashensuperapp	dashen bank super upuse app make easyfastconvinent	5	2025-04-21	NEGATIVE	0.6234503388404846	Google Play
1012	com.dashen.dashensuperapp	best	1	2025-04-21	POSITIVE	0.9997941851615906	Google Play
1014	com.dashen.dashensuperapp	clear detail information application help customer use app easy use also app secure	5	2025-04-21	POSITIVE	0.9750409722328186	Google Play
1015	com.dashen.dashensuperapp	easiness use fast response time	5	2025-04-21	NEUTRAL	0.5173728466033936	Google Play
1016	com.dashen.dashensuperapp	amaze app really loved thats say dashen bank one stap ahead best mobile application every phone	5	2025-04-21	POSITIVE	0.998699426651001	Google Play
1017	com.dashen.dashensuperapp	call banking app professional want banking app simple app rich feature align lifestyle	5	2025-04-21	POSITIVE	0.987324833869934	Google Play
1018	com.dashen.dashensuperapp	super easy use fast transaction	5	2025-04-21	POSITIVE	0.6839419603347778	Google Play
1019	com.dashen.dashensuperapp	cant recommend dashen super app enough app truly game changer anyone look seamless efficient way manage daily life combine multiple essential service one easytouse platform save time simplify task user interface modern intuitive super responsive make navigation breeze whether bank payment service access lifestyle feature everything click away	5	2025-04-21	POSITIVE	0.9953202605247498	Google Play
1020	com.dashen.dashensuperapp	app	5	2025-04-21	POSITIVE	0.9684573411941528	Google Play
1021	com.dashen.dashensuperapp	new ecommerce feature incredibly amaze user friendly	5	2025-04-21	POSITIVE	0.9995380640029908	Google Play
1022	com.dashen.dashensuperapp	dashen bank supper app easy use high speedquality like feature like chatbudgetfuel payment security opinion product techonolgy edgethis international standard thanks product oweners dashen bank	3	2025-04-21	NEGATIVE	0.8893216848373413	Google Play
1023	com.dashen.dashensuperapp	proudly ethiopian innovation delivers beyond expectation marketplace feature big win local shopper seller impress new update ecommerce section smooth support ethiopian merchant	5	2025-04-21	POSITIVE	0.9996123909950256	Google Play
1024	com.dashen.dashensuperapp	db sup app platform application grasp satisfaction fastest mode operation mean budget planning use qr codescan pay go chat staff acc acc bank ft merchant payment easly addition satisfy invite everyone use platform	5	2025-04-21	NEGATIVE	0.9911605715751648	Google Play
1025	com.dashen.dashensuperapp	chat banking unique app alow money request	5	2025-04-21	NEGATIVE	0.9602184891700744	Google Play
1026	com.dashen.dashensuperapp	well inclusive app	5	2025-04-21	POSITIVE	0.999827206134796	Google Play
1027	com.dashen.dashensuperapp	amazing application	5	2025-04-21	POSITIVE	0.9998698234558104	Google Play
1028	com.dashen.dashensuperapp	keep time pay bill generate satment easily	5	2025-04-21	POSITIVE	0.9430365562438964	Google Play
1029	com.dashen.dashensuperapp	amaze app uptodate time wow wow	5	2025-04-21	POSITIVE	0.9984242916107178	Google Play
1030	com.dashen.dashensuperapp	amaze app uniqe qualityeasy fast mobile banking app	5	2025-04-21	NEUTRAL	0.5004969835281372	Google Play
1031	com.dashen.dashensuperapp	dashen bank super app crucial convenient app ethiopia app compare dashen bank super app	5	2025-04-21	NEGATIVE	0.9790244102478028	Google Play
1032	com.dashen.dashensuperapp	hestorical app bank industry	5	2025-04-21	NEGATIVE	0.9928353428840636	Google Play
1033	com.dashen.dashensuperapp	game changer ethiopian digital banking fast secure pack service everything need one powerful app true leap toward financial convenience innovation	4	2025-04-21	POSITIVE	0.8841928243637085	Google Play
1034	com.dashen.dashensuperapp	bank make smart local solution one place smooth fast actually save time feel like future love	5	2025-04-21	POSITIVE	0.9974615573883056	Google Play
1035	com.dashen.dashensuperapp	dashen bank supper app multipurpose convenient attractive make life easy	5	2025-04-21	POSITIVE	0.9948450326919556	Google Play
1036	com.dashen.dashensuperapp	easy flexible app	5	2025-04-21	POSITIVE	0.9994267225265504	Google Play
1037	com.dashen.dashensuperapp	keep	5	2025-04-21	POSITIVE	0.9988995790481568	Google Play
1038	com.dashen.dashensuperapp	thanks	5	2025-04-21	POSITIVE	0.9998080134391784	Google Play
1039	com.dashen.dashensuperapp	dashen bank super app suitable reliable fast digital banking system	5	2025-04-21	POSITIVE	0.9905745387077332	Google Play
1040	com.dashen.dashensuperapp	one best digital platform ive use smooth transaction seamless shop experience highly recommend	5	2025-04-21	POSITIVE	0.9994120597839355	Google Play
1041	com.dashen.dashensuperapp	appreciate dashen bank take lifestyle service account	5	2025-04-21	POSITIVE	0.9981811046600342	Google Play
1042	com.dashen.dashensuperapp	allinone convenience manage account pay bill shop online chat banking game changer app seamlessly	5	2025-04-21	NEGATIVE	0.8243508338928223	Google Play
1043	com.dashen.dashensuperapp	user friendly attractive user interface full useful feature really encourage everyone give try	5	2025-04-21	POSITIVE	0.9996606111526488	Google Play
1044	com.dashen.dashensuperapp	app high performance advance feature	5	2025-04-21	POSITIVE	0.9946931004524232	Google Play
1045	com.dashen.dashensuperapp	download app recently smooth expriance user friendly fast everything work expect keep good work	5	2025-04-21	POSITIVE	0.9851232171058656	Google Play
1046	com.dashen.dashensuperapp	app simply use secure safe love use bank transaction	5	2025-04-21	NEGATIVE	0.7634575366973877	Google Play
1047	com.dashen.dashensuperapp	app incredibly userfriendly bring multiple service one place fast intuitive make daily task super convenient true allinone solution	5	2025-04-21	NEGATIVE	0.9425023198127748	Google Play
1048	com.dashen.dashensuperapp	proudly make ethiopia innovation delivers promise marketplace major boost local commerce	5	2025-04-21	POSITIVE	0.9997908473014832	Google Play
1049	com.dashen.dashensuperapp	fanrastic user friendly app bravo dashen bank thanks	5	2025-04-21	POSITIVE	0.9957053065299988	Google Play
1050	com.dashen.dashensuperapp	proudly ethiopia innovation delivers beyond expectation marketplace feature big win local shopper bnd seller	5	2025-04-21	POSITIVE	0.9995040893554688	Google Play
1051	com.dashen.dashensuperapp	one app everything shop manage bank account much truly super app	5	2025-04-21	POSITIVE	0.9974272847175598	Google Play
1052	com.dashen.dashensuperapp	easy use many option best financial app ever use	5	2025-04-21	POSITIVE	0.9879294633865356	Google Play
1053	com.dashen.dashensuperapp	highly impressed dash bank really nailed app secure reliable packed feature use daily	5	2025-04-21	POSITIVE	0.9990358352661132	Google Play
1054	com.dashen.dashensuperapp	convenient	5	2025-04-21	POSITIVE	0.999121367931366	Google Play
1055	com.dashen.dashensuperapp	wawwwww nice super app keep dashen bank	5	2025-04-21	POSITIVE	0.993996262550354	Google Play
1056	com.dashen.dashensuperapp	dashen superapp ultimate allinone solution bank shopping bill payment everything need right fingertip life get whole lot easy	5	2025-04-21	POSITIVE	0.6207631826400757	Google Play
1110	com.boa.boaMobileBanking	consider fact bank huge app really bad could better	1	2025-03-25	NEGATIVE	0.9997147917747498	Google Play
1057	com.dashen.dashensuperapp	isreally super unique offering individual businessesit secure ux first app intend cater comprehensive digital meedsi also happy know dashen consider make app inclusive lower mobile version requirement	5	2025-04-21	POSITIVE	0.9979798197746276	Google Play
1058	com.dashen.dashensuperapp	easy secure fast multifunctional dashen supper application ever see dashen really one step ahead	5	2025-04-21	POSITIVE	0.9987980127334596	Google Play
1059	com.dashen.dashensuperapp	impressed new update ecommerce section smooth support ethiopian merchant	5	2025-04-21	POSITIVE	0.9991201758384703	Google Play
1060	com.boa.boaMobileBanking	app isnt work ask password start load doesnt open	3	2025-04-20	NEGATIVE	0.9987241625785828	Google Play
1061	com.boa.boaMobileBanking	best	2	2025-04-19	POSITIVE	0.9997941851615906	Google Play
1062	com.boa.boaMobileBanking	keep show pop turn developer option even tho turn make work horrible experience need fix asap plus kinda slow	1	2025-04-19	NEGATIVE	0.9996138215065002	Google Play
1063	com.dashen.dashensuperapp	waw idea best app	5	2025-04-19	POSITIVE	0.992698848247528	Google Play
1064	com.dashen.dashensuperapp	fast best app	5	2025-04-19	POSITIVE	0.999737560749054	Google Play
1065	com.boa.boaMobileBanking	yideg	1	2025-04-18	NEGATIVE	0.7675816416740417	Google Play
1066	com.dashen.dashensuperapp	nice app	5	2025-04-18	POSITIVE	0.9998061060905457	Google Play
1067	com.dashen.dashensuperapp	nice app ever	5	2025-04-17	POSITIVE	0.9998384714126588	Google Play
1068	com.dashen.dashensuperapp	featurerich absolutely speed painfully slow seriously communicate server mar something	5	2025-04-16	NEGATIVE	0.9976529479026794	Google Play
1069	com.dashen.dashensuperapp	nic app	5	2025-04-16	POSITIVE	0.9797858595848083	Google Play
1070	com.dashen.dashensuperapp	nice	5	2025-04-16	POSITIVE	0.9998552799224854	Google Play
1071	com.dashen.dashensuperapp	dashen super app delivers remarkably fast highly secure exceptionally userfriendly experience establish leading application categorykeep stay ahead dashen bank	5	2025-04-14	POSITIVE	0.9995057582855223	Google Play
1072	com.dashen.dashensuperapp	bad connection many day work	1	2025-04-12	NEGATIVE	0.9995272159576416	Google Play
1073	com.dashen.dashensuperapp	good app	5	2025-04-10	POSITIVE	0.9998493194580078	Google Play
1074	com.boa.boaMobileBanking	great boa	5	2025-04-10	POSITIVE	0.9992689490318298	Google Play
1075	com.dashen.dashensuperapp	app work properly use	1	2025-04-10	POSITIVE	0.9968384504318236	Google Play
1076	com.dashen.dashensuperapp	samart	5	2025-04-10	POSITIVE	0.998528003692627	Google Play
1077	com.boa.boaMobileBanking	boa mobile backing	5	2025-04-09	NEGATIVE	0.7506158351898193	Google Play
1078	com.dashen.dashensuperapp	disappointing experience dashen bank super service app slow take forever load transaction incredibly frustrate additionally doesnt generate receipt transaction make difficult keep track expense also reach customer support response time longer expect overall hop good experience find service lack need improvement	2	2025-04-09	NEGATIVE	0.9989323019981384	Google Play
1079	com.boa.boaMobileBanking	would give lower possible crush much take bank long fix bug	1	2025-04-08	NEGATIVE	0.9988319277763368	Google Play
1080	com.boa.boaMobileBanking	faster bank abissinya	5	2025-04-08	NEGATIVE	0.8001851439476013	Google Play
1081	com.dashen.dashensuperapp	slow cumbersome	3	2025-04-08	NEGATIVE	0.9997989535331726	Google Play
1082	com.dashen.dashensuperapp	experience use app bank ethiopia dashen sup like old version application use give 3 star low speed login processing	3	2025-04-07	NEGATIVE	0.9970790147781372	Google Play
1083	com.dashen.dashensuperapp	slow send otp reliable crush many time needs improvement many way	1	2025-04-07	NEGATIVE	0.9957352876663208	Google Play
1084	com.boa.boaMobileBanking	doesnt workso frustrating	1	2025-04-07	NEGATIVE	0.9843235611915588	Google Play
1085	com.boa.boaMobileBanking	like	5	2025-04-06	POSITIVE	0.9910564422607422	Google Play
1086	com.boa.boaMobileBanking	work correctly must update	1	2025-04-06	POSITIVE	0.9969622492790222	Google Play
1087	com.dashen.dashensuperapp	proud dashen bank	5	2025-04-06	POSITIVE	0.9998334646224976	Google Play
1088	com.dashen.dashensuperapp	real super	5	2025-04-04	POSITIVE	0.9997572302818298	Google Play
1089	com.boa.boaMobileBanking	app get considerable improvement like language qr scanner unlimited transfer survice boa please alot fastness convenient login make transaction	5	2025-04-04	POSITIVE	0.6844198703765869	Google Play
1090	com.boa.boaMobileBanking	type password say successfully log go back first page	2	2025-04-04	NEGATIVE	0.9560199975967408	Google Play
1091	com.boa.boaMobileBanking	good dont update enough dont add new thing	3	2025-04-04	POSITIVE	0.9879945516586304	Google Play
1092	com.dashen.dashensuperapp	tanku	5	2025-04-04	NEGATIVE	0.91596519947052	Google Play
1093	com.dashen.dashensuperapp	disappointing fix soon possible expect dashin bank fix	1	2025-04-04	NEGATIVE	0.9977006316184998	Google Play
1094	com.dashen.dashensuperapp	app work unless turn developer mode phone take right use	2	2025-04-04	NEGATIVE	0.9927720427513124	Google Play
1095	com.dashen.dashensuperapp	ask pin opt even opt touch let alone	2	2025-04-02	NEGATIVE	0.988889217376709	Google Play
1096	com.dashen.dashensuperapp	goood	5	2025-04-02	NEGATIVE	0.9943867921829224	Google Play
1097	com.dashen.dashensuperapp	best app easy use	5	2025-04-01	POSITIVE	0.9982343912124634	Google Play
1098	com.dashen.dashensuperapp	easy use powerful application	3	2025-04-01	POSITIVE	0.9988314509391784	Google Play
1099	com.dashen.dashensuperapp	apps good feature feature like developer mode turn irritate user	3	2025-04-01	NEGATIVE	0.8714469075202942	Google Play
1100	com.boa.boaMobileBanking	activate application allow sign automatically turn phone	1	2025-03-31	POSITIVE	0.8343862295150757	Google Play
1101	com.dashen.dashensuperapp	waw amaze app thank dashen bank	5	2025-03-31	POSITIVE	0.9993157386779784	Google Play
1102	com.dashen.dashensuperapp	wallahi fantastic bank	5	2025-03-31	POSITIVE	0.9991859793663024	Google Play
1103	com.boa.boaMobileBanking	good application	5	2025-03-30	POSITIVE	0.999854564666748	Google Play
1104	com.boa.boaMobileBanking	version work cannot even buy card cannot send money	1	2025-03-30	NEGATIVE	0.9966428279876708	Google Play
1105	com.boa.boaMobileBanking	cant actively initialization say incorrect otp get exact otp	1	2025-03-29	NEGATIVE	0.9964726567268372	Google Play
1106	com.dashen.dashensuperapp	good app like bc fast easy use	5	2025-03-26	POSITIVE	0.9945424795150756	Google Play
1107	com.dashen.dashensuperapp	best experience	5	2025-03-26	POSITIVE	0.9996858835220336	Google Play
1108	com.dashen.dashensuperapp	slow use	1	2025-03-26	NEGATIVE	0.9994843006134032	Google Play
1109	com.boa.boaMobileBanking	always problematic hardly work	1	2025-03-26	NEGATIVE	0.9988321661949158	Google Play
1111	com.boa.boaMobileBanking	bad app bank ever u ashamed scammer	1	2025-03-24	NEGATIVE	0.999570906162262	Google Play
1112	com.boa.boaMobileBanking	great boa	5	2025-03-22	POSITIVE	0.9992689490318298	Google Play
1113	com.dashen.dashensuperapp	thanks digital transaction	5	2025-03-21	POSITIVE	0.9997575879096984	Google Play
1114	com.boa.boaMobileBanking	best	5	2025-03-21	POSITIVE	0.9997941851615906	Google Play
1115	com.boa.boaMobileBanking	go bank many time couldnt make transaction see balance nothing else point mobile banking cant make transaction please work	1	2025-03-21	NEGATIVE	0.9909234642982484	Google Play
1116	com.dashen.dashensuperapp	app support smart phone old android version none inclusive time amole lite work properly reach maximum otp trail mistake due network error like stack tie make transaction ohh tire	1	2025-03-20	NEGATIVE	0.9991604089736938	Google Play
1117	com.boa.boaMobileBanking	anyone want download dont	1	2025-03-19	NEGATIVE	0.9938371777534484	Google Play
1118	com.boa.boaMobileBanking	wonderful	5	2025-03-19	POSITIVE	0.9998772144317628	Google Play
1119	com.dashen.dashensuperapp	best ever digital banking sector essay understand smart convince use	5	2025-03-19	POSITIVE	0.999220609664917	Google Play
1120	com.boa.boaMobileBanking	speed	1	2025-03-19	POSITIVE	0.9994010925292968	Google Play
1121	com.boa.boaMobileBanking	worck	5	2025-03-19	NEGATIVE	0.97611802816391	Google Play
1122	com.dashen.dashensuperapp	good late	5	2025-03-18	POSITIVE	0.9998389482498168	Google Play
1123	com.dashen.dashensuperapp	best app	5	2025-03-17	POSITIVE	0.999686598777771	Google Play
1124	com.boa.boaMobileBanking	wow	1	2025-03-14	POSITIVE	0.999592125415802	Google Play
1125	com.dashen.dashensuperapp	app unreliable mobile banking application ever use transaction late nonresponsive full bug disappoint inconvinient user friendly compatabke	1	2025-03-14	NEGATIVE	0.9983643889427184	Google Play
1126	com.dashen.dashensuperapp	naiycapp	5	2025-03-14	POSITIVE	0.8075161576271057	Google Play
1127	com.boa.boaMobileBanking	love	5	2025-03-14	POSITIVE	0.9998735189437866	Google Play
1128	com.dashen.dashensuperapp	app good ussd option	4	2025-03-13	POSITIVE	0.9961440563201904	Google Play
1129	com.dashen.dashensuperapp	use many mobile banking also tellebir mpesa nothing come close app well do dashen indeed one step head lot cool feature amole hasnt receipt account statement superb hope add integrate small apps	5	2025-03-12	NEGATIVE	0.9352374076843262	Google Play
1130	com.boa.boaMobileBanking	edit new bug app let type otp code shameful app allow use developer option yall consider might perhaps actual developer expect toggle option bank restart phone message labled somthing smoothen experience like security consultant thing implement app please invest actual security mess	1	2025-03-12	NEGATIVE	0.9993995428085328	Google Play
1131	com.dashen.dashensuperapp	hey great	5	2025-03-12	POSITIVE	0.999745786190033	Google Play
1132	com.dashen.dashensuperapp	app good ask update every week tire	2	2025-03-11	POSITIVE	0.9893084764480592	Google Play
1133	com.dashen.dashensuperapp	good easy use	5	2025-03-11	POSITIVE	0.9997110962867736	Google Play
1134	com.boa.boaMobileBanking	improve best	5	2025-03-11	POSITIVE	0.9997484087944032	Google Play
1135	com.boa.boaMobileBanking	decent problem sometimes say error transfer money infact transfer bug transfer 2 time instead 1 also cant transfer money others telebirr acc self boe dev fix	3	2025-03-11	NEGATIVE	0.9971895813941956	Google Play
1136	com.boa.boaMobileBanking	boa greqt ethiopian bank	5	2025-03-11	NEGATIVE	0.6850459575653076	Google Play
1137	com.dashen.dashensuperapp	greately improve since release really like budget expense tegistration feature atm pos withdrawal possible account expense even visible transaction window work improve much	5	2025-03-10	POSITIVE	0.997148334980011	Google Play
1138	com.dashen.dashensuperapp	excellent	5	2025-03-10	POSITIVE	0.9998434782028198	Google Play
1139	com.boa.boaMobileBanking	bug still therethe app crash every time try log especially old phone like galaxy a32	1	2025-03-10	NEGATIVE	0.9992225170135498	Google Play
1140	com.boa.boaMobileBanking	awesome apps simple use much important apps	5	2025-03-09	POSITIVE	0.9997594952583312	Google Play
1141	com.boa.boaMobileBanking	almost well compare cbe qualify	4	2025-03-09	POSITIVE	0.982479453086853	Google Play
1142	com.dashen.dashensuperapp	nice app experience issue others bank transfer keep say account exist time	4	2025-03-08	POSITIVE	0.9659074544906616	Google Play
1143	com.boa.boaMobileBanking	wonderfull app	5	2025-03-08	POSITIVE	0.9998815059661864	Google Play
1144	com.dashen.dashensuperapp	add option send money telebirr account like amole	3	2025-03-08	NEGATIVE	0.9891737699508668	Google Play
1145	com.dashen.dashensuperapp	best	5	2025-03-08	POSITIVE	0.9997941851615906	Google Play
1146	com.dashen.dashensuperapp	wow excellent app	5	2025-03-08	POSITIVE	0.9998443126678468	Google Play
1147	com.boa.boaMobileBanking	cant use app	5	2025-03-07	POSITIVE	0.971189558506012	Google Play
1148	com.dashen.dashensuperapp	one dashen yichlal	5	2025-03-07	POSITIVE	0.9270413517951964	Google Play
1149	com.boa.boaMobileBanking	worst mobile banking app ever experience blame apps compare theyre much good clash take much long time login load short complete trash	1	2025-03-06	NEGATIVE	0.999647855758667	Google Play
1150	com.dashen.dashensuperapp	speed slow need improvement	2	2025-03-06	NEGATIVE	0.9966747760772704	Google Play
1151	com.dashen.dashensuperapp	short im proud app developer high professional develop thanks	5	2025-03-06	POSITIVE	0.9990456700325012	Google Play
1152	com.boa.boaMobileBanking	bro bad app make human kind software engineer make sad see enterprise big boa make apps like disgrace country	1	2025-03-05	NEGATIVE	0.9996552467346193	Google Play
1153	com.dashen.dashensuperapp	good app	5	2025-03-04	POSITIVE	0.9998493194580078	Google Play
1154	com.boa.boaMobileBanking	download app first time read customer review soon instal open app close back automatically unserious bank uninstalled app immediately	1	2025-03-03	NEGATIVE	0.9967137575149536	Google Play
1155	com.boa.boaMobileBanking	good app	5	2025-03-03	POSITIVE	0.9998493194580078	Google Play
1156	com.boa.boaMobileBanking	good feature sometimes doesnt work0	1	2025-03-02	NEGATIVE	0.880649745464325	Google Play
1157	com.dashen.dashensuperapp	fantastic app	5	2025-03-01	POSITIVE	0.999858856201172	Google Play
1158	com.boa.boaMobileBanking	verry amaze app ib	5	2025-03-01	POSITIVE	0.988913357257843	Google Play
1159	com.boa.boaMobileBanking	open really frustrate	1	2025-03-01	POSITIVE	0.9944191575050354	Google Play
1160	com.boa.boaMobileBanking	poor proformance	1	2025-03-01	NEGATIVE	0.9997919201850892	Google Play
1161	com.dashen.dashensuperapp	wish dark mode feature add option good app	5	2025-02-27	POSITIVE	0.9980168342590332	Google Play
1218	com.boa.boaMobileBanking	boa	4	2025-01-18	NEGATIVE	0.7410527467727661	Google Play
1162	com.dashen.dashensuperapp	dashen super app gamechanger digital banking offering seamless convenient experience userfriendly interface fast transaction wide range financial service simplifies bank customer feature like bill payment fund transfer mobile topups loan application make allinone solution plus security measure ensure safe reliable experiance effortless banking	5	2025-02-26	POSITIVE	0.8433101177215576	Google Play
1163	com.boa.boaMobileBanking	work day	1	2025-02-26	POSITIVE	0.9883727431297302	Google Play
1164	com.dashen.dashensuperapp	excellent app	5	2025-02-24	POSITIVE	0.9998356103897096	Google Play
1165	com.dashen.dashensuperapp	good feature slow difficult pay receive speed improve else didnt recommend	2	2025-02-24	NEGATIVE	0.7302958965301514	Google Play
1166	com.boa.boaMobileBanking	thank boa	5	2025-02-23	POSITIVE	0.9998200535774232	Google Play
1167	com.dashen.dashensuperapp	good	1	2025-02-22	POSITIVE	0.999816119670868	Google Play
1168	com.boa.boaMobileBanking	best banking app wworld	5	2025-02-22	POSITIVE	0.9995890259742736	Google Play
1169	com.dashen.dashensuperapp	wow amaze app	5	2025-02-21	POSITIVE	0.9995535016059875	Google Play
1170	com.dashen.dashensuperapp	best platform please avoid otp	5	2025-02-21	NEGATIVE	0.7131854891777039	Google Play
1171	com.boa.boaMobileBanking	nice app easy use	5	2025-02-21	POSITIVE	0.9993615746498108	Google Play
1172	com.dashen.dashensuperapp	super smart app	5	2025-02-18	POSITIVE	0.9997450709342957	Google Play
1173	com.dashen.dashensuperapp	dont know happen application send verification pas code fix	1	2025-02-16	NEGATIVE	0.9958611130714417	Google Play
1174	com.dashen.dashensuperapp	amaze user friendly supper app look forward additional feature	5	2025-02-14	POSITIVE	0.9959061145782472	Google Play
1175	com.dashen.dashensuperapp	dashen super app secure easy use service uniquely like budget chat ip	5	2025-02-14	POSITIVE	0.7550948858261108	Google Play
1176	com.boa.boaMobileBanking	help full like ittttt	5	2025-02-14	POSITIVE	0.9263752698898317	Google Play
1177	com.dashen.dashensuperapp	amaze app see ever	5	2025-02-13	POSITIVE	0.9986851811408995	Google Play
1178	com.dashen.dashensuperapp	keep good work plea add water electric utility payment	5	2025-02-12	POSITIVE	0.990409016609192	Google Play
1179	com.boa.boaMobileBanking	functional	2	2025-02-12	POSITIVE	0.9993332028388976	Google Play
1180	com.dashen.dashensuperapp	app miss important feature 1 doest show recent transaction 2 transfer telebirr limit telebirr 3 statement doest show run balance	2	2025-02-11	NEGATIVE	0.9983609318733216	Google Play
1181	com.boa.boaMobileBanking	best bank	5	2025-02-08	POSITIVE	0.9997438788414	Google Play
1182	com.dashen.dashensuperapp	doesnt work	1	2025-02-07	NEGATIVE	0.9989099502563475	Google Play
1183	com.dashen.dashensuperapp	baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra godina jimmaa magaalaa aggaaroo irraa muaz abamecha abamilki	5	2025-02-07	NEGATIVE	0.9961472749710084	Google Play
1184	com.boa.boaMobileBanking	make easy convienient use perfect high prefrence choice	3	2025-02-07	POSITIVE	0.9919643402099608	Google Play
1185	com.dashen.dashensuperapp	transaction page show send transaction try include receive transaction	4	2025-02-06	NEGATIVE	0.9734814167022704	Google Play
1186	com.dashen.dashensuperapp	gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	NEGATIVE	0.9852219223976136	Google Play
1187	com.dashen.dashensuperapp	tried new dash bank super app today amazingly easy funi recommend download use really like	5	2025-02-06	POSITIVE	0.9968660473823548	Google Play
1188	com.dashen.dashensuperapp	love	5	2025-02-05	POSITIVE	0.9998735189437866	Google Play
1189	com.dashen.dashensuperapp	good app	1	2025-02-04	POSITIVE	0.9998493194580078	Google Play
1190	com.dashen.dashensuperapp	thankful best app dashen one step ahead	5	2025-02-04	POSITIVE	0.9991827607154846	Google Play
1191	com.dashen.dashensuperapp	excellent app ever need improvement speed transaction list	1	2025-02-03	POSITIVE	0.9960976839065552	Google Play
1192	com.dashen.dashensuperapp	perfect	5	2025-02-02	POSITIVE	0.9998517036437988	Google Play
1193	com.dashen.dashensuperapp	work functional	1	2025-02-02	POSITIVE	0.9995833039283752	Google Play
1194	com.dashen.dashensuperapp	ok	5	2025-02-02	POSITIVE	0.9997851252555848	Google Play
1195	com.dashen.dashensuperapp	dashen bank customer use application good use	5	2025-02-01	POSITIVE	0.9935374855995178	Google Play
1196	com.boa.boaMobileBanking	use app two yearsit amazing	5	2025-02-01	POSITIVE	0.9990752935409546	Google Play
1197	com.dashen.dashensuperapp	gret experience	5	2025-02-01	NEGATIVE	0.760029137134552	Google Play
1198	com.dashen.dashensuperapp	dashen super app easy use fast robust	5	2025-01-31	POSITIVE	0.9958296418190002	Google Play
1199	com.dashen.dashensuperapp	good need	3	2025-01-31	POSITIVE	0.999848484992981	Google Play
1200	com.boa.boaMobileBanking	sad experience	1	2025-01-30	NEGATIVE	0.999068796634674	Google Play
1201	com.dashen.dashensuperapp	amaze appthank dashen bank	5	2025-01-30	POSITIVE	0.7724063992500305	Google Play
1202	com.dashen.dashensuperapp	wow	5	2025-01-29	POSITIVE	0.999592125415802	Google Play
1203	com.dashen.dashensuperapp	mobile banking next level	5	2025-01-28	POSITIVE	0.9627662301063538	Google Play
1204	com.boa.boaMobileBanking	always update annoying	3	2025-01-27	NEGATIVE	0.99937903881073	Google Play
1205	com.dashen.dashensuperapp	first 3 star review	3	2025-01-25	POSITIVE	0.998117208480835	Google Play
1206	com.dashen.dashensuperapp	work	1	2025-01-25	POSITIVE	0.9994449019432068	Google Play
1207	com.dashen.dashensuperapp	fast reliable user friendly amaze chat feature keep always one step ahead	5	2025-01-24	POSITIVE	0.9992917776107788	Google Play
1208	com.boa.boaMobileBanking	best app somehow wait minute	5	2025-01-23	NEGATIVE	0.951634407043457	Google Play
1209	com.dashen.dashensuperapp	see white page	2	2025-01-23	NEGATIVE	0.9828705191612244	Google Play
1210	com.dashen.dashensuperapp	fast easy use	5	2025-01-22	POSITIVE	0.9973737001419068	Google Play
1211	com.boa.boaMobileBanking	cant dijitalize atm apollo app phone	1	2025-01-22	NEGATIVE	0.9837754368782043	Google Play
1212	com.boa.boaMobileBanking	whenever try sign app close please fix	2	2025-01-21	NEGATIVE	0.995692789554596	Google Play
1213	com.boa.boaMobileBanking	beter	5	2025-01-21	POSITIVE	0.6771950721740723	Google Play
1214	com.dashen.dashensuperapp	exellent app exellent banking system exellent bank ever	5	2025-01-21	NEGATIVE	0.9847196340560912	Google Play
1215	com.dashen.dashensuperapp	need improvement	5	2025-01-20	NEGATIVE	0.983095109462738	Google Play
1216	com.dashen.dashensuperapp	amaze app use usual option transfer telebirr pesa available amole app omit dasheen favourite keep	4	2025-01-20	NEGATIVE	0.993212103843689	Google Play
1217	com.dashen.dashensuperapp	amaze super app	5	2025-01-19	POSITIVE	0.999006450176239	Google Play
1220	com.dashen.dashensuperapp	pro max	5	2025-01-17	POSITIVE	0.9984601736068726	Google Play
1221	com.boa.boaMobileBanking	aadan axmed barkhadle	5	2025-01-17	POSITIVE	0.6127510070800781	Google Play
1222	com.dashen.dashensuperapp	dashen yichalal ewnetem one step head	5	2025-01-17	NEGATIVE	0.9878956079483032	Google Play
1223	com.dashen.dashensuperapp	good performance need upgrade performance like login account fast balance show thing look good carry thanks much great service	4	2025-01-17	POSITIVE	0.9993273019790648	Google Play
1224	com.dashen.dashensuperapp	wonderful work save time always one step ahead	5	2025-01-17	POSITIVE	0.9998842477798462	Google Play
1225	com.dashen.dashensuperapp	excellent app	5	2025-01-16	POSITIVE	0.9998356103897096	Google Play
1226	com.dashen.dashensuperapp	good app easy	5	2025-01-16	POSITIVE	0.9998089671134948	Google Play
1227	com.dashen.dashensuperapp	excellent user friendly app excellence make always one step ahead dashen bank always one step ahead	5	2025-01-16	POSITIVE	0.9997723698616028	Google Play
1228	com.dashen.dashensuperapp	great job home bank	5	2025-01-16	POSITIVE	0.9996589422225952	Google Play
1229	com.dashen.dashensuperapp	best app	5	2025-01-16	POSITIVE	0.999686598777771	Google Play
1230	com.boa.boaMobileBanking	horrible customer service app crash horrible	1	2025-01-15	NEGATIVE	0.9997979998588562	Google Play
1231	com.dashen.dashensuperapp	dashen bank always one step ahead	5	2025-01-15	POSITIVE	0.9996015429496764	Google Play
1232	com.dashen.dashensuperapp	great app well do dashen bank	5	2025-01-15	POSITIVE	0.9995871186256408	Google Play
1233	com.dashen.dashensuperapp	see	2	2025-01-15	POSITIVE	0.998429000377655	Google Play
1234	com.dashen.dashensuperapp	bank	5	2025-01-15	POSITIVE	0.8260887265205383	Google Play
1235	com.dashen.dashensuperapp	yea good idea make bank name help bank easily find application customer easily downloed use product wish best dashen bank initiative	5	2025-01-15	NEGATIVE	0.9039279818534852	Google Play
1236	com.dashen.dashensuperapp	great	5	2025-01-15	POSITIVE	0.9998630285263062	Google Play
1237	com.dashen.dashensuperapp	impressive interface best security feature user friendly app	5	2025-01-15	POSITIVE	0.9994072914123536	Google Play
1238	com.dashen.dashensuperapp	lightweightcatchy smooth app	5	2025-01-15	NEGATIVE	0.9606851935386658	Google Play
1239	com.dashen.dashensuperapp	always one step head	5	2025-01-15	POSITIVE	0.9925231337547302	Google Play
1240	com.dashen.dashensuperapp	far good unique feature telebirr good job dashen	5	2025-01-15	POSITIVE	0.9998098015785216	Google Play
1241	com.dashen.dashensuperapp	really super app seamless nice user interface proud dashen bank	5	2025-01-15	POSITIVE	0.9995753169059752	Google Play
1242	com.dashen.dashensuperapp	small size vast feature functionality	5	2025-01-15	POSITIVE	0.9952606558799744	Google Play
1243	com.dashen.dashensuperapp	always one step forward	5	2025-01-15	POSITIVE	0.999639630317688	Google Play
1244	com.dashen.dashensuperapp	love bug confirmation password please make functional	5	2025-01-15	POSITIVE	0.716417670249939	Google Play
1245	com.dashen.dashensuperapp	u cant create account	1	2025-01-15	POSITIVE	0.9878660440444946	Google Play
1246	com.dashen.dashensuperapp	one	5	2025-01-14	POSITIVE	0.9882547855377196	Google Play
1247	com.dashen.dashensuperapp	really app look like amaze cant wait activate morning	5	2025-01-14	NEGATIVE	0.9264436364173888	Google Play
1248	com.dashen.dashensuperapp	oh nice wish nice app	5	2025-01-14	POSITIVE	0.99860018491745	Google Play
1249	com.dashen.dashensuperapp	well develop	5	2025-01-14	POSITIVE	0.9998263716697692	Google Play
1250	com.dashen.dashensuperapp	always one step ahead	5	2025-01-14	POSITIVE	0.9997699856758118	Google Play
1251	com.dashen.dashensuperapp	best banking app ever see	5	2025-01-14	POSITIVE	0.9996203184127808	Google Play
1252	com.boa.boaMobileBanking	love	5	2025-01-14	POSITIVE	0.9998735189437866	Google Play
1253	com.dashen.dashensuperapp	faster userfriendly	5	2025-01-14	POSITIVE	0.7609531879425049	Google Play
1254	com.dashen.dashensuperapp	app make difference	5	2025-01-14	POSITIVE	0.9994162321090698	Google Play
1255	com.dashen.dashensuperapp	looks good simple use	5	2025-01-14	POSITIVE	0.9972670078277588	Google Play
1256	com.dashen.dashensuperapp	always one step ahead	5	2025-01-13	POSITIVE	0.9997699856758118	Google Play
1257	com.dashen.dashensuperapp	waw great innovateduser friendly always one step ahead	5	2025-01-13	POSITIVE	0.999626636505127	Google Play
1258	com.boa.boaMobileBanking	keep ask turn developer mode even dev mode couldnt use	1	2025-01-13	NEGATIVE	0.994675636291504	Google Play
1259	com.dashen.dashensuperapp	like hope work well	5	2025-01-11	POSITIVE	0.9997783303260804	Google Play
1260	com.boa.boaMobileBanking	like much	5	2025-01-11	POSITIVE	0.999556839466095	Google Play
1261	com.boa.boaMobileBanking	thank	5	2025-01-10	POSITIVE	0.9998283386230468	Google Play
1262	com.boa.boaMobileBanking	perfect	5	2025-01-09	POSITIVE	0.9998517036437988	Google Play
1263	com.boa.boaMobileBanking	best best	5	2025-01-09	POSITIVE	0.9998223185539246	Google Play
1264	com.boa.boaMobileBanking	use app long time amaze user friendly ui cant find get pin button app	3	2025-01-07	NEUTRAL	0.5572860836982727	Google Play
1265	com.boa.boaMobileBanking	fast suitable customer	5	2025-01-04	POSITIVE	0.9997313618659972	Google Play
1266	com.boa.boaMobileBanking	give one star face multiple problem 1 app fast bank app eg like cbe 2 app asks repeatedly switch developer option even switch 3 bank abyssinia service interesting ignored issue app service 4 customer give complain app one accept complain fix issue 5 lastly recommend app unless issue solve asap	1	2025-01-03	NEGATIVE	0.995945155620575	Google Play
1267	com.boa.boaMobileBanking	good app helpful	5	2025-01-03	POSITIVE	0.9997825026512146	Google Play
1268	com.boa.boaMobileBanking	assess tell abyssinia bank idea mobile banking	1	2025-01-02	NEGATIVE	0.9676716327667236	Google Play
1269	com.boa.boaMobileBanking	doesnt work	2	2025-01-02	NEGATIVE	0.9989099502563475	Google Play
1270	com.boa.boaMobileBanking	app available	1	2025-01-02	POSITIVE	0.9953263998031616	Google Play
1271	com.boa.boaMobileBanking	wow amaze	5	2024-12-30	POSITIVE	0.99978107213974	Google Play
1272	com.boa.boaMobileBanking	love	5	2024-12-30	POSITIVE	0.9998735189437866	Google Play
1273	com.boa.boaMobileBanking	lemn embi yilal	5	2024-12-30	NEGATIVE	0.860925555229187	Google Play
1274	com.boa.boaMobileBanking	useless app downgrade	1	2024-12-29	NEGATIVE	0.9997854828834534	Google Play
1275	com.boa.boaMobileBanking	let access account whole point app gey access account without physically bank would give zero one suffice get point accross	1	2024-12-27	NEGATIVE	0.9929018616676332	Google Play
1276	com.boa.boaMobileBanking	nice	5	2024-12-26	POSITIVE	0.9998552799224854	Google Play
1277	com.boa.boaMobileBanking	go get rid real app work far bad mobile banking app	1	2024-12-24	NEGATIVE	0.9997615218162536	Google Play
1278	com.boa.boaMobileBanking	much bad	3	2024-12-22	NEGATIVE	0.9998047947883606	Google Play
1279	com.boa.boaMobileBanking	fine	5	2024-12-21	POSITIVE	0.9998335838317872	Google Play
1280	com.boa.boaMobileBanking	dirty application ever see	1	2024-12-20	NEGATIVE	0.9984246492385864	Google Play
1281	com.boa.boaMobileBanking	nic ap	5	2024-12-19	POSITIVE	0.9873362183570862	Google Play
1282	com.boa.boaMobileBanking	forest app ever	1	2024-12-19	POSITIVE	0.973909318447113	Google Play
1283	com.boa.boaMobileBanking	bank abissena	1	2024-12-17	POSITIVE	0.825855016708374	Google Play
1284	com.boa.boaMobileBanking	easy sooo simple use also easy stole someone money use app	3	2024-12-16	NEGATIVE	0.9970692992210388	Google Play
1285	com.boa.boaMobileBanking	good	5	2024-12-15	POSITIVE	0.999816119670868	Google Play
1286	com.boa.boaMobileBanking	worst banking app ever never work	1	2024-12-14	NEGATIVE	0.9997935891151428	Google Play
1287	com.boa.boaMobileBanking	poorly function app	3	2024-12-13	NEGATIVE	0.9997844099998474	Google Play
1288	com.boa.boaMobileBanking	nice	5	2024-12-13	POSITIVE	0.9998552799224854	Google Play
1289	com.boa.boaMobileBanking	since guy start give mobile app service still couldnt get work im sure know doesnt work already sure youre lazy incompetent fix lose business complacency consequence	1	2024-12-10	NEGATIVE	0.9988706707954408	Google Play
1290	com.boa.boaMobileBanking	best app many feature awesome work without need turn developer option im tire constantly switch developer option ive express struggle precious setting enable developer option open app boa app turn please help u abyssinia bank hope provide update soon	4	2024-12-08	POSITIVE	0.999117076396942	Google Play
1291	com.boa.boaMobileBanking	unprofessional mischievous bank opinion several occasion recently use abyssinia card withdraw money deduct account despite report several time say processing learn yesterday since 3 month bank decide include income absurd avoid bank	1	2024-12-06	NEGATIVE	0.9836766123771667	Google Play
1292	com.boa.boaMobileBanking	attention important difficult time	5	2024-11-30	NEGATIVE	0.9522916078567504	Google Play
1293	com.boa.boaMobileBanking	application lose major faction daily basis count many time use app completely useless disappoint go use time need dont see point	1	2024-11-28	NEGATIVE	0.9985477328300476	Google Play
1294	com.boa.boaMobileBanking	exellent digital transaction money	5	2024-11-27	NEGATIVE	0.9978858828544616	Google Play
1295	com.boa.boaMobileBanking	late update stop android 9 phone open app never work properly since start use	1	2024-11-26	NEGATIVE	0.9996695518493652	Google Play
1296	com.boa.boaMobileBanking	need improvment	2	2024-11-24	NEGATIVE	0.9674727320671082	Google Play
1297	com.boa.boaMobileBanking	money	5	2024-11-24	POSITIVE	0.9659327268600464	Google Play
1298	com.boa.boaMobileBanking	ab	3	2024-11-20	POSITIVE	0.960319757461548	Google Play
1299	com.boa.boaMobileBanking	ademtahir	5	2024-11-20	POSITIVE	0.9930111765861512	Google Play
1300	com.boa.boaMobileBanking	please app android phone	3	2024-11-20	POSITIVE	0.9795334339141846	Google Play
1301	com.boa.boaMobileBanking	app doesnt match bank app disaster super slow please learn something tele birr app	1	2024-11-19	NEGATIVE	0.9984715580940248	Google Play
1302	com.boa.boaMobileBanking	fast reliable	5	2024-11-18	POSITIVE	0.9998382329940796	Google Play
1303	com.boa.boaMobileBanking	bad app update ever would include developer option thing care phone money right reason switch bank either turn everyone discontinue business one one	1	2024-11-17	NEGATIVE	0.99968159198761	Google Play
1304	com.boa.boaMobileBanking	good	5	2024-11-14	POSITIVE	0.999816119670868	Google Play
1305	com.boa.boaMobileBanking	one poor mobile banking system	1	2024-11-13	NEGATIVE	0.9995442032814026	Google Play
1306	com.boa.boaMobileBanking	need support app work	5	2024-11-12	NEGATIVE	0.9134041666984558	Google Play
1307	com.boa.boaMobileBanking	great service	5	2024-11-12	POSITIVE	0.9998434782028198	Google Play
1308	com.boa.boaMobileBanking	oene	5	2024-11-12	POSITIVE	0.8278881907463074	Google Play
1309	com.boa.boaMobileBanking	find interesting specially reciept download	1	2024-11-12	POSITIVE	0.9957301020622252	Google Play
1310	com.boa.boaMobileBanking	good	5	2024-11-12	POSITIVE	0.999816119670868	Google Play
1311	com.boa.boaMobileBanking	app crash everytime please fix	1	2024-11-12	NEGATIVE	0.997086226940155	Google Play
1312	com.boa.boaMobileBanking	bast bank ethiopia	5	2024-11-12	POSITIVE	0.9939870834350586	Google Play
1313	com.boa.boaMobileBanking	thank social service like vertual banking non touch atm cadrless withdrwal passbook	5	2024-11-12	POSITIVE	0.990255892276764	Google Play
1314	com.boa.boaMobileBanking	bad app never see like	1	2024-11-12	NEGATIVE	0.9975146055221558	Google Play
1315	com.boa.boaMobileBanking	wweeeer	4	2024-11-12	NEGATIVE	0.8910732269287109	Google Play
1316	com.boa.boaMobileBanking	infinx	5	2024-11-12	NEGATIVE	0.904255986213684	Google Play
1317	com.boa.boaMobileBanking	app available android version time functional	1	2024-11-08	NEUTRAL	0.5150758624076843	Google Play
1318	com.boa.boaMobileBanking	senayt mesfin	4	2024-11-08	POSITIVE	0.8874824047088623	Google Play
1319	com.boa.boaMobileBanking	bad app vety bad	1	2024-11-07	NEGATIVE	0.9998015761375428	Google Play
1320	com.boa.boaMobileBanking	abessnya banke	5	2024-11-05	NEGATIVE	0.9873653054237366	Google Play
1321	com.boa.boaMobileBanking	useless app never expect irrelevant app boa big shame	1	2024-11-04	NEGATIVE	0.9966918230056764	Google Play
1322	com.boa.boaMobileBanking	professional banking app	5	2024-11-01	POSITIVE	0.8753944039344788	Google Play
1323	com.boa.boaMobileBanking	nice interface always freeze slow load app developer please fix issue	3	2024-10-27	NEGATIVE	0.9412674903869628	Google Play
1324	com.boa.boaMobileBanking	please try another app doesnt foot need generation	1	2024-10-25	NEGATIVE	0.9888930916786194	Google Play
1325	com.boa.boaMobileBanking	fast transfer	5	2024-10-24	POSITIVE	0.9989985823631288	Google Play
1326	com.boa.boaMobileBanking	whats cant log whats wrong	5	2024-10-22	NEGATIVE	0.9991726279258728	Google Play
1327	com.boa.boaMobileBanking	amrumehamed	1	2024-10-21	POSITIVE	0.6924058198928833	Google Play
1328	com.boa.boaMobileBanking	painfully slow banking app service please dont make choice	1	2024-10-13	NEGATIVE	0.9996687173843384	Google Play
1329	com.boa.boaMobileBanking	good app	4	2024-10-12	POSITIVE	0.9998493194580078	Google Play
1330	com.boa.boaMobileBanking	best app	5	2024-10-11	POSITIVE	0.999686598777771	Google Play
1331	com.boa.boaMobileBanking	boa	5	2024-10-11	NEGATIVE	0.7410527467727661	Google Play
1332	com.boa.boaMobileBanking	abdulkadir	5	2024-10-11	POSITIVE	0.981449544429779	Google Play
1333	com.boa.boaMobileBanking	bad	1	2024-10-10	NEGATIVE	0.999782383441925	Google Play
1334	com.boa.boaMobileBanking	possible would gove0 star	1	2024-10-08	NEGATIVE	0.8787208199501038	Google Play
1335	com.boa.boaMobileBanking	nise mobile bankig	4	2024-10-05	NEGATIVE	0.9858755469322203	Google Play
1336	com.boa.boaMobileBanking	ok	5	2024-10-04	POSITIVE	0.9997851252555848	Google Play
1337	com.boa.boaMobileBanking	update simple way require developer option	5	2024-10-04	POSITIVE	0.6956104040145874	Google Play
1338	com.boa.boaMobileBanking	im live country may download use mobile banking asks ethiopia phone number cant receive text confirm im side country please lete know use im outside country thanks	1	2024-10-04	NEGATIVE	0.7733229398727417	Google Play
1339	com.boa.boaMobileBanking	overall good app performance need improvement also sometimes use instant bank transfer refuse cause repeat several time transfer	4	2024-10-04	NEGATIVE	0.968645453453064	Google Play
1340	com.boa.boaMobileBanking	worest app ever	1	2024-10-03	POSITIVE	0.9283795356750488	Google Play
1341	com.boa.boaMobileBanking	worest app	1	2024-10-03	NEGATIVE	0.7789772152900696	Google Play
1342	com.boa.boaMobileBanking	wwwerrr	5	2024-10-02	NEGATIVE	0.850250244140625	Google Play
1343	com.boa.boaMobileBanking	great financial company	5	2024-09-30	POSITIVE	0.99987530708313	Google Play
1344	com.boa.boaMobileBanking	easy use	5	2024-09-30	POSITIVE	0.9884273409843444	Google Play
1345	com.boa.boaMobileBanking	apps crash always error	3	2024-09-27	NEGATIVE	0.9993090629577636	Google Play
1346	com.boa.boaMobileBanking	great ui seamless ux love	5	2024-09-25	POSITIVE	0.9994181394577026	Google Play
1347	com.boa.boaMobileBanking	thats good application try add alternative future possibilitys customer	3	2024-09-25	POSITIVE	0.9947691559791564	Google Play
1348	com.boa.boaMobileBanking	buy mobile card app didnt receive take money didnt get money back	1	2024-09-21	NEGATIVE	0.992202877998352	Google Play
1349	com.boa.boaMobileBanking	great app great service	5	2024-09-19	POSITIVE	0.999742329120636	Google Play
1350	com.boa.boaMobileBanking	amaze	5	2024-09-19	POSITIVE	0.9996262788772584	Google Play
1351	com.boa.boaMobileBanking	yes active user	5	2024-09-17	POSITIVE	0.9983929991722108	Google Play
1352	com.boa.boaMobileBanking	shameful	1	2024-09-17	NEGATIVE	0.998016357421875	Google Play
1353	com.boa.boaMobileBanking	worest app ever make would recommende one	1	2024-09-16	POSITIVE	0.6630571484565735	Google Play
1354	com.boa.boaMobileBanking	good application	5	2024-09-16	POSITIVE	0.999854564666748	Google Play
1355	com.boa.boaMobileBanking	many hour wait transfer money telebirr please something transfer delay issue need money ever	1	2024-09-15	NEGATIVE	0.992901086807251	Google Play
1356	com.boa.boaMobileBanking	work need big update cant update app quickly	1	2024-09-14	NEGATIVE	0.9878798127174376	Google Play
1357	com.boa.boaMobileBanking	be freindly app	5	2024-09-13	NEGATIVE	0.947900891304016	Google Play
1358	com.boa.boaMobileBanking	well app mobile apps turn developer option every time wanna use app annoy	1	2024-09-13	POSITIVE	0.8189544081687927	Google Play
1359	com.boa.boaMobileBanking	doesnt work	1	2024-09-12	NEGATIVE	0.9989099502563475	Google Play
1360	com.boa.boaMobileBanking	say request successful please check device connectivity try one bank manager tell phone android version 91 ridiculous disappoint	1	2024-09-11	NEGATIVE	0.9989782571792604	Google Play
1361	com.boa.boaMobileBanking	smart technology	5	2024-09-10	POSITIVE	0.9998468160629272	Google Play
1362	com.boa.boaMobileBanking	appropriate app dont know boa develop app dont expect much crazy un confortable app form boa im soory	1	2024-09-07	NEGATIVE	0.9861798882484436	Google Play
1363	com.boa.boaMobileBanking	shockingly bad even decide work painfully slow frustrating shame become stain extraordinary bank	1	2024-09-06	NEGATIVE	0.9997403025627136	Google Play
1364	com.boa.boaMobileBanking	crash frequently launch android 81 dont think actually work version less 10 shouldnt available download device begin like many finance apps much good three month ago upgrade well	1	2024-09-06	NEGATIVE	0.9935376048088074	Google Play
1365	com.boa.boaMobileBanking	awesome application lately crash everytime open	4	2024-09-05	POSITIVE	0.8949391841888428	Google Play
1366	com.boa.boaMobileBanking	fast one	3	2024-09-04	POSITIVE	0.9994491934776306	Google Play
1367	com.boa.boaMobileBanking	nice look app terrible user experience	1	2024-09-03	NEGATIVE	0.9584583044052124	Google Play
1368	com.boa.boaMobileBanking	ok	5	2024-09-01	POSITIVE	0.9997851252555848	Google Play
1369	com.boa.boaMobileBanking	hussenaliumar	5	2024-08-29	NEGATIVE	0.6654512286186218	Google Play
1370	com.boa.boaMobileBanking	bad experience ever	1	2024-08-29	NEGATIVE	0.9996572732925416	Google Play
1371	com.boa.boaMobileBanking	apollo	1	2024-08-29	POSITIVE	0.9962450861930848	Google Play
1372	com.boa.boaMobileBanking	hi problem app boa mobile dont know wrong app many time download sam doesnt work sam like app way customer know account check save book enough alone	1	2024-08-28	NEGATIVE	0.9972213506698608	Google Play
1373	com.boa.boaMobileBanking	work device	5	2024-08-27	POSITIVE	0.9735199213027954	Google Play
1374	com.boa.boaMobileBanking	im sick tiered enable disable developer option everytime use app maybe know maybe dont fix please anoying	1	2024-08-26	NEGATIVE	0.9997597336769104	Google Play
1375	com.boa.boaMobileBanking	bad app ever	1	2024-08-26	NEGATIVE	0.9996838569641112	Google Play
1376	com.boa.boaMobileBanking	betanya gebre	3	2024-08-23	POSITIVE	0.8911887407302856	Google Play
1377	com.boa.boaMobileBanking	dont recommand one	1	2024-08-23	NEGATIVE	0.9899094104766846	Google Play
1378	com.boa.boaMobileBanking	excellent app	5	2024-08-21	POSITIVE	0.9998356103897096	Google Play
1379	com.boa.boaMobileBanking	application use work well update im able use forget password feature block access whole	1	2024-08-20	NEGATIVE	0.9952470660209656	Google Play
1380	com.boa.boaMobileBanking	gio	4	2024-08-19	POSITIVE	0.9969680905342102	Google Play
1381	com.boa.boaMobileBanking	app isnt work	1	2024-08-18	NEGATIVE	0.9585778713226318	Google Play
1382	com.boa.boaMobileBanking	far good always lug	3	2024-08-17	POSITIVE	0.9997459053993224	Google Play
1383	com.boa.boaMobileBanking	dont trust bank service	1	2024-08-16	NEGATIVE	0.98405522108078	Google Play
1384	com.boa.boaMobileBanking	open use applicationplease help	5	2024-08-15	POSITIVE	0.9933786392211914	Google Play
1385	com.boa.boaMobileBanking	horrible	1	2024-08-14	NEGATIVE	0.9997841715812684	Google Play
1386	com.boa.boaMobileBanking	despite enhanced technology application doesnt work properly ask developer option turn fix	3	2024-08-12	NEGATIVE	0.9996620416641236	Google Play
1387	com.boa.boaMobileBanking	poor app bc highly slow open app	1	2024-08-12	NEGATIVE	0.9997876286506652	Google Play
1388	com.boa.boaMobileBanking	dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf	5	2024-08-11	NEGATIVE	0.991762638092041	Google Play
1389	com.boa.boaMobileBanking	nice appp	5	2024-08-11	POSITIVE	0.9997910857200624	Google Play
1390	com.boa.boaMobileBanking	wedi tekle	5	2024-08-11	NEGATIVE	0.6245822310447693	Google Play
1391	com.boa.boaMobileBanking	gooood app dear	5	2024-08-10	NEGATIVE	0.9270800948143004	Google Play
1392	com.boa.boaMobileBanking	harun tamam galanaa	3	2024-08-09	NEGATIVE	0.9410600066184998	Google Play
1393	com.boa.boaMobileBanking	poor app use cant start open app	1	2024-08-08	NEGATIVE	0.9997345805168152	Google Play
1394	com.boa.boaMobileBanking	gamebela	1	2024-08-08	POSITIVE	0.8994190692901611	Google Play
1395	com.boa.boaMobileBanking	total disaster app always offline never work embarassing ive lose hope take business competitor	1	2024-08-08	NEGATIVE	0.9995094537734984	Google Play
1396	com.boa.boaMobileBanking	app take long time open even work simply bank application app give digital invoice even able find screeshot kept transaction please developer fix	1	2024-08-07	NEGATIVE	0.9889665246009828	Google Play
1397	com.boa.boaMobileBanking	good job	5	2024-08-07	POSITIVE	0.999835729598999	Google Play
1398	com.boa.boaMobileBanking	bad app ever user friendly even doesnt serve basic functionality correctly take much time login navigate app expect bank	1	2024-08-07	NEGATIVE	0.9997500777244568	Google Play
1399	com.boa.boaMobileBanking	bad app	1	2024-08-06	NEGATIVE	0.9997212290763856	Google Play
1400	com.boa.boaMobileBanking	mean could big financial company like much irresponsible release app ashamed	1	2024-08-06	NEGATIVE	0.9990673661231996	Google Play
1401	com.boa.boaMobileBanking	review	5	2024-08-06	POSITIVE	0.9946893453598022	Google Play
1402	com.boa.boaMobileBanking	goood	4	2024-08-06	NEGATIVE	0.9943867921829224	Google Play
1403	com.boa.boaMobileBanking	previous version well doesnt work	1	2024-08-04	NEGATIVE	0.9987648725509644	Google Play
1404	com.boa.boaMobileBanking	ok	5	2024-08-03	POSITIVE	0.9997851252555848	Google Play
1405	com.boa.boaMobileBanking	dont know wrong boa bank general go backwards since last year app disaster use every possible way stable log slow perform transaction couldnt take screenshot cant even find picture even use save screenshot option time fail perform transaction simply worst	1	2024-08-03	NEGATIVE	0.999733030796051	Google Play
1406	com.boa.boaMobileBanking	useless app	1	2024-08-02	NEGATIVE	0.9997797608375548	Google Play
1407	com.boa.boaMobileBanking	work much need improve best anymore	2	2024-08-01	NEGATIVE	0.9678298234939576	Google Play
1408	com.boa.boaMobileBanking	poor network	1	2024-08-01	NEGATIVE	0.9997891783714294	Google Play
1409	com.boa.boaMobileBanking	yet completely work app dont know work properly sad	1	2024-07-31	NEGATIVE	0.9088425636291504	Google Play
1410	com.boa.boaMobileBanking	app open sometimes say coonection issue dont open bug use smooth work please improve	1	2024-07-31	NEGATIVE	0.965213656425476	Google Play
1411	com.boa.boaMobileBanking	work totally useless app	1	2024-07-31	NEGATIVE	0.9997528195381165	Google Play
1412	com.boa.boaMobileBanking	app become troubling every day doesnt work love bank hate app	1	2024-07-31	NEGATIVE	0.9985235333442688	Google Play
1413	com.boa.boaMobileBanking	bad app	1	2024-07-28	NEGATIVE	0.9997212290763856	Google Play
1414	com.boa.boaMobileBanking	nay	5	2024-07-28	NEGATIVE	0.996103048324585	Google Play
1415	com.boa.boaMobileBanking	active	1	2024-07-27	POSITIVE	0.9998134970664978	Google Play
1416	com.boa.boaMobileBanking	get good quality	5	2024-07-27	POSITIVE	0.9998713731765748	Google Play
1417	com.boa.boaMobileBanking	cant even open display error message	1	2024-07-27	NEGATIVE	0.986965537071228	Google Play
1418	com.boa.boaMobileBanking	uselss app dont download	1	2024-07-26	NEGATIVE	0.9977203011512756	Google Play
1419	com.boa.boaMobileBanking	app fake try work say please try later unable make transaction purpose app work delete	1	2024-07-25	NEGATIVE	0.9994000196456908	Google Play
1420	com.boa.boaMobileBanking	corrupt poor app	1	2024-07-24	NEGATIVE	0.9997352957725524	Google Play
1421	com.boa.boaMobileBanking	try use application say developer set set play still doesnt work	3	2024-07-24	NEGATIVE	0.999738872051239	Google Play
1422	com.boa.boaMobileBanking	usually crash reason give problem internet connection although internet fine	1	2024-07-23	NEGATIVE	0.9911578297615052	Google Play
1423	com.boa.boaMobileBanking	always slow doesnt work weekend rush merchant app	1	2024-07-23	NEGATIVE	0.9984501600265504	Google Play
1424	com.boa.boaMobileBanking	difficult use user appones dawenload user cant operate well one help	1	2024-07-23	NEGATIVE	0.9969578981399536	Google Play
1425	com.boa.boaMobileBanking	poor application turn	1	2024-07-23	NEGATIVE	0.9998030066490172	Google Play
1426	com.boa.boaMobileBanking	screenshot isnt work please modify	2	2024-07-22	NEGATIVE	0.9957817792892456	Google Play
1427	com.boa.boaMobileBanking	naziriet measho 89160437	1	2024-07-22	NEGATIVE	0.9862651228904724	Google Play
1428	com.boa.boaMobileBanking	want international mobile banking	1	2024-07-22	POSITIVE	0.9411050081253052	Google Play
1429	com.boa.boaMobileBanking	ahmed mohammed husen	3	2024-07-21	POSITIVE	0.912415325641632	Google Play
1430	com.boa.boaMobileBanking	work one apollo u make good pls gonne stop use bank mobile banking	1	2024-07-19	NEGATIVE	0.9867051243782043	Google Play
1431	com.boa.boaMobileBanking	experiance	5	2024-07-19	NEUTRAL	0.5539559721946716	Google Play
1432	com.boa.boaMobileBanking	app work android 91 show error notification forcefully close app must fix asap	1	2024-07-19	NEGATIVE	0.9987860321998596	Google Play
1433	com.boa.boaMobileBanking	crash frequently stable overall need improvement huge bank need well app current one	1	2024-07-19	NEGATIVE	0.9685265421867372	Google Play
1434	com.boa.boaMobileBanking	previous application much well one	1	2024-07-18	POSITIVE	0.9997925162315368	Google Play
1435	com.boa.boaMobileBanking	bad app wise invest money make like cbe app even incon image app well ui please invest hire professional developer company improve	1	2024-07-18	NEGATIVE	0.9982313513755798	Google Play
1436	com.boa.boaMobileBanking	mal	5	2024-07-16	NEGATIVE	0.9996137022972108	Google Play
1437	com.boa.boaMobileBanking	poor mobile banking survice ever error report frequently	1	2024-07-16	NEGATIVE	0.9993817806243896	Google Play
1438	com.boa.boaMobileBanking	work	1	2024-07-16	POSITIVE	0.9994449019432068	Google Play
1439	com.boa.boaMobileBanking	app constantly crash freeze send boa customer account	1	2024-07-15	NEGATIVE	0.9979956150054932	Google Play
1440	com.boa.boaMobileBanking	worst banking app	1	2024-07-15	NEGATIVE	0.9997982382774352	Google Play
1441	com.boa.boaMobileBanking	work app	5	2024-07-15	POSITIVE	0.9781266450881958	Google Play
1442	com.boa.boaMobileBanking	ok stop sundenly	5	2024-07-15	NEGATIVE	0.9962334036827089	Google Play
1443	com.boa.boaMobileBanking	experienced	5	2024-07-14	POSITIVE	0.9950610995292664	Google Play
1444	com.boa.boaMobileBanking	poor app always cresh compatible	2	2024-07-13	NEGATIVE	0.99956876039505	Google Play
1445	com.boa.boaMobileBanking	functional keep say error unable activate	1	2024-07-13	NEGATIVE	0.999415159225464	Google Play
1446	com.boa.boaMobileBanking	new app good	5	2024-07-13	POSITIVE	0.9998195767402648	Google Play
1447	com.boa.boaMobileBanking	good sometimes isnt work probably	5	2024-07-12	POSITIVE	0.9990386962890624	Google Play
1448	com.boa.boaMobileBanking	doesnt work	1	2024-07-12	NEGATIVE	0.9989099502563475	Google Play
1449	com.boa.boaMobileBanking	stupid app ive see would turn developer mode cant make app secure clearly indicate app poor implementation unskilled developer lot people need developer option different reason please sake bank fix thing even secure international banking apps dont require mention lag crash	1	2024-07-12	NEGATIVE	0.9996058344841005	Google Play
1450	com.boa.boaMobileBanking	useless	1	2024-07-11	NEGATIVE	0.9997991919517516	Google Play
1451	com.boa.boaMobileBanking	app keep crash stop respond im use try open app go bank person bank activity short worst mobile bank system ethiopia	1	2024-07-11	NEGATIVE	0.9989140033721924	Google Play
1452	com.boa.boaMobileBanking	fast	3	2024-07-11	POSITIVE	0.9989494681358336	Google Play
1453	com.boa.boaMobileBanking	worst mobile banking app	1	2024-07-11	NEGATIVE	0.9997854828834534	Google Play
1454	com.boa.boaMobileBanking	late	1	2024-07-10	NEGATIVE	0.9938137531280518	Google Play
1455	com.boa.boaMobileBanking	work	5	2024-07-10	POSITIVE	0.9994449019432068	Google Play
1456	com.boa.boaMobileBanking	update doesnt work well	2	2024-07-09	NEGATIVE	0.9995583891868592	Google Play
1457	com.boa.boaMobileBanking	good slow	1	2024-07-08	POSITIVE	0.9998106360435486	Google Play
1458	com.boa.boaMobileBanking	good app	5	2024-07-07	POSITIVE	0.9998493194580078	Google Play
1459	com.boa.boaMobileBanking	bad apps doesnt work	1	2024-07-06	NEGATIVE	0.9996638298034668	Google Play
1460	com.boa.boaMobileBanking	never go use appit trash appno one care app bank rate 05	1	2024-07-06	NEGATIVE	0.9957707524299622	Google Play
1461	com.boa.boaMobileBanking	usually crash unable process also request developer option	1	2024-07-05	NEGATIVE	0.9953879714012146	Google Play
1462	com.boa.boaMobileBanking	miliyone	5	2024-07-05	NEGATIVE	0.7075749039649963	Google Play
1463	com.boa.boaMobileBanking	even work day please check	1	2024-07-04	POSITIVE	0.9988197684288024	Google Play
1464	com.boa.boaMobileBanking	app essentially unusable asks disable developer mode even already disabled crash sometimes work wifi sometimes data crash	1	2024-07-04	NEGATIVE	0.9983371496200562	Google Play
1465	com.boa.boaMobileBanking	please make functional	5	2024-07-03	POSITIVE	0.9997352957725524	Google Play
1466	com.boa.boaMobileBanking	best app dont work poor connection area	5	2024-07-03	NEGATIVE	0.9833801984786988	Google Play
1467	com.boa.boaMobileBanking	please recover thank	5	2024-07-02	POSITIVE	0.9996065497398376	Google Play
1468	com.boa.boaMobileBanking	app doesnt work	1	2024-06-30	NEGATIVE	0.999457061290741	Google Play
1469	com.boa.boaMobileBanking	app use run fine take like forever even open main dashboard sometimes crash guys gotta step need app way faster	1	2024-06-27	NEGATIVE	0.99139142036438	Google Play
1470	com.boa.boaMobileBanking	underrated app ive ever see ur banking system soo idiocracy	1	2024-06-27	NEGATIVE	0.9880991578102112	Google Play
1471	com.boa.boaMobileBanking	demand disable developer option	1	2024-06-27	NEGATIVE	0.9986151456832886	Google Play
1472	com.boa.boaMobileBanking	open open service	5	2024-06-26	POSITIVE	0.9997770190238952	Google Play
1473	com.boa.boaMobileBanking	two month cannot transaction use app really disappoint use bank abyssinia currently near bank work place bank turn bad bank country day day always respond customer update system year long think thats train customer service operator	1	2024-06-26	NEGATIVE	0.997220516204834	Google Play
1474	com.boa.boaMobileBanking	work	1	2024-06-24	POSITIVE	0.9994449019432068	Google Play
1475	com.boa.boaMobileBanking	riddled crash cant use anymore frustrating	1	2024-06-20	NEGATIVE	0.9979643821716307	Google Play
1476	com.boa.boaMobileBanking	always error occur bad app ever	1	2024-06-20	NEGATIVE	0.9994999170303344	Google Play
1477	com.boa.boaMobileBanking	excellent service	5	2024-06-19	POSITIVE	0.9998576641082764	Google Play
1478	com.boa.boaMobileBanking	convenient	1	2024-06-17	POSITIVE	0.999121367931366	Google Play
1479	com.boa.boaMobileBanking	meskelu metku	5	2024-06-17	POSITIVE	0.8474327325820923	Google Play
1480	com.boa.boaMobileBanking	verry nice	5	2024-06-17	POSITIVE	0.9997273087501526	Google Play
1481	com.boa.boaMobileBanking	become unreliable mibile banking app ever	1	2024-06-16	NEGATIVE	0.9992069602012634	Google Play
1482	com.boa.boaMobileBanking	poor mobile banking see industry stable login post transaction attractive error report frequently	5	2024-06-13	NEGATIVE	0.9996339082717896	Google Play
1483	com.boa.boaMobileBanking	really bank	5	2024-06-12	POSITIVE	0.9820581078529358	Google Play
1484	com.boa.boaMobileBanking	app good need work	3	2024-06-11	POSITIVE	0.9956809282302856	Google Play
1485	com.boa.boaMobileBanking	bad mob app ever see slow uncomfortable stupid good learn best app tele birr release update even worst	1	2024-06-11	NEGATIVE	0.999381422996521	Google Play
1486	com.boa.boaMobileBanking	like bank abyssinia best first bank ethiopia	1	2024-06-11	POSITIVE	0.997333288192749	Google Play
1487	com.boa.boaMobileBanking	unreliable expensive service time work sometimes take day complete transaction charge unworthy service recommend bank app anyone	1	2024-06-10	NEGATIVE	0.9987165927886964	Google Play
1488	com.boa.boaMobileBanking	excellent service	5	2024-06-10	POSITIVE	0.9998576641082764	Google Play
1489	com.boa.boaMobileBanking	beutiful	5	2024-06-09	NEGATIVE	0.9156551361083984	Google Play
1490	com.boa.boaMobileBanking	best app	5	2024-06-06	POSITIVE	0.999686598777771	Google Play
1491	com.boa.boaMobileBanking	awful	1	2024-06-06	NEGATIVE	0.9997954964637756	Google Play
1492	com.boa.boaMobileBanking	developer option really	1	2024-06-06	POSITIVE	0.996408998966217	Google Play
1493	com.boa.boaMobileBanking	good app boa	5	2024-06-06	POSITIVE	0.999842882156372	Google Play
1494	com.boa.boaMobileBanking	im disappoint recent change app disable developer option functionality seem unnecessary previous version offer userfriendly experience	1	2024-06-06	NEGATIVE	0.9956926703453064	Google Play
1495	com.boa.boaMobileBanking	slow time wey veary nice app	5	2024-06-05	POSITIVE	0.9959511756896972	Google Play
1496	com.boa.boaMobileBanking	worest app cannot download	2	2024-06-05	NEGATIVE	0.993779957294464	Google Play
1497	com.boa.boaMobileBanking	ok yes	5	2024-06-04	POSITIVE	0.9997628331184388	Google Play
1498	com.boa.boaMobileBanking	nice apps	1	2024-06-04	POSITIVE	0.999850869178772	Google Play
1499	com.boa.boaMobileBanking	wow disgrace boa app barely work slow always return error	1	2024-06-03	NEGATIVE	0.9974114298820496	Google Play
1500	com.boa.boaMobileBanking	excited service	5	2024-06-02	POSITIVE	0.9997441172599792	Google Play
1501	com.boa.boaMobileBanking	kerfafa new	1	2024-06-01	POSITIVE	0.8148759007453918	Google Play
1502	com.boa.boaMobileBanking	abdu mudesr	2	2024-06-01	POSITIVE	0.7394680380821228	Google Play
1503	com.boa.boaMobileBanking	worst mobile banking app doesnt load seem like perfect wifi data connection still manage network issue finally get app make hard send money	1	2024-05-31	NEGATIVE	0.9993114471435548	Google Play
1504	com.boa.boaMobileBanking	im sorry kind stupid developer think app faster disable developer mode ive never see degeneracy entire life please get rid feature	1	2024-05-30	NEGATIVE	0.9996033310890198	Google Play
1505	com.boa.boaMobileBanking	purpose point allow take screenshot recipe transfer	1	2024-05-29	POSITIVE	0.9233296513557434	Google Play
1506	com.boa.boaMobileBanking	worst banking app ever	1	2024-05-28	NEGATIVE	0.9997898936271667	Google Play
1507	com.boa.boaMobileBanking	ayseram	1	2024-05-28	NEGATIVE	0.6560907363891602	Google Play
1508	com.boa.boaMobileBanking	bad	1	2024-05-26	NEGATIVE	0.999782383441925	Google Play
1509	com.boa.boaMobileBanking	cant use app unless turn developer mode kind stupid rule bad experience banking app	1	2024-05-26	NEGATIVE	0.9982591271400452	Google Play
1510	com.boa.boaMobileBanking	disappoint	1	2024-05-25	NEGATIVE	0.9995203018188475	Google Play
1511	com.boa.boaMobileBanking	sorry say compare bank mobile app worest need improvement app doesnt match bank standard need update slow plus keep say stop develop option phone develop set enable plus come recent transaction nothing display	1	2024-05-24	NEGATIVE	0.9992166757583618	Google Play
1512	com.boa.boaMobileBanking	cool	4	2024-05-22	POSITIVE	0.9998509883880616	Google Play
1513	com.boa.boaMobileBanking	disable developer option never see app command	3	2024-05-22	NEGATIVE	0.9970176219940186	Google Play
1514	com.boa.boaMobileBanking	please fix app doesnt belongs abbssinya bank name	1	2024-05-22	NEGATIVE	0.9985173344612122	Google Play
1515	com.boa.boaMobileBanking	playstore need option give 0 star application right deserve exactly imagine one big bank country cant manage good mobile application era mobile money guy brink collapse well make right real quick gonna 10 meter grave dont use app waste time	1	2024-05-21	NEGATIVE	0.9939802885055542	Google Play
1516	com.boa.boaMobileBanking	poor	1	2024-05-21	NEGATIVE	0.9997912049293518	Google Play
1517	com.boa.boaMobileBanking	NaN	5	2024-05-21	POSITIVE	0.7481212019920349	Google Play
1518	com.boa.boaMobileBanking	good ive download first doesnt work well	2	2024-05-20	NEGATIVE	0.8536377549171448	Google Play
1519	com.boa.boaMobileBanking	terrible keep crash middle transaction hell sometimes wont open phone stock android pixel 8 dont even know happen fix	1	2024-05-20	NEGATIVE	0.9984173774719238	Google Play
1520	com.boa.boaMobileBanking	good work top	5	2024-05-20	POSITIVE	0.9998592138290404	Google Play
1521	com.boa.boaMobileBanking	good	5	2024-05-19	POSITIVE	0.999816119670868	Google Play
1522	com.boa.boaMobileBanking	great app	3	2024-05-18	POSITIVE	0.999821126461029	Google Play
1523	com.boa.boaMobileBanking	app bad app use ethiopia belive know live ethiopia fincial app doesnt work want make wait cash code immediately debit amount send code get say abysinia bank didnt expect use cbe mobile banking	1	2024-05-18	NEGATIVE	0.9984063506126404	Google Play
1524	com.boa.boaMobileBanking	poor mobile banking alwayes work alwayes	1	2024-05-18	NEGATIVE	0.999647617340088	Google Play
1525	com.boa.boaMobileBanking	fails occasionally	4	2024-05-17	NEGATIVE	0.9993472695350648	Google Play
1526	com.boa.boaMobileBanking	absolutely bad mobile banking appit crash every timeproblem log cut balance top without even recharge	1	2024-05-17	NEGATIVE	0.9997584223747252	Google Play
1527	com.boa.boaMobileBanking	open	5	2024-05-16	POSITIVE	0.9997945427894592	Google Play
1528	com.boa.boaMobileBanking	easy cool app	5	2024-05-16	POSITIVE	0.9997947812080384	Google Play
1529	com.boa.boaMobileBanking	bad app ever	1	2024-05-16	NEGATIVE	0.9996838569641112	Google Play
1530	com.boa.boaMobileBanking	app bad network	1	2024-05-16	NEGATIVE	0.999733865261078	Google Play
1531	com.boa.boaMobileBanking	work 3days come big bank ethiopia unprofessionallism boa	1	2024-05-15	NEGATIVE	0.990520715713501	Google Play
1532	com.boa.boaMobileBanking	worst mobile banking app doesnt even work week properly	1	2024-05-15	NEGATIVE	0.9998036026954652	Google Play
1533	com.boa.boaMobileBanking	77867748 cant update mobile banking	1	2024-05-14	NEGATIVE	0.9343796372413636	Google Play
1534	com.boa.boaMobileBanking	hate expect disable developer option everytime open app unnecessary point friction thats put place guise security	2	2024-05-14	NEGATIVE	0.998815894126892	Google Play
1535	com.boa.boaMobileBanking	secretary	5	2024-05-14	POSITIVE	0.9963318705558776	Google Play
1536	com.boa.boaMobileBanking	exilent service	5	2024-05-13	NEGATIVE	0.9688149094581604	Google Play
1537	com.boa.boaMobileBanking	build new app	1	2024-05-13	POSITIVE	0.989403486251831	Google Play
1538	com.boa.boaMobileBanking	exceptional service	5	2024-05-13	POSITIVE	0.9998124241828918	Google Play
1539	com.boa.boaMobileBanking	improve	3	2024-05-12	POSITIVE	0.9997562766075134	Google Play
1540	com.boa.boaMobileBanking	app trash	1	2024-05-12	NEGATIVE	0.9995087385177612	Google Play
1541	com.boa.boaMobileBanking	really make life much easy	5	2024-05-12	POSITIVE	0.9993534684181212	Google Play
1542	com.boa.boaMobileBanking	good good	3	2024-05-12	POSITIVE	0.9998282194137572	Google Play
1543	com.boa.boaMobileBanking	dont get app develop functional	1	2024-05-12	NEGATIVE	0.9950974583625792	Google Play
1544	com.boa.boaMobileBanking	good appp	1	2024-05-11	POSITIVE	0.9998493194580078	Google Play
1545	com.boa.boaMobileBanking	advice whoever read go look bankawash bank great example bank wont even allow access money want bad server dont workrespond time	1	2024-05-11	NEGATIVE	0.9976235032081604	Google Play
1546	com.boa.boaMobileBanking	satisfay	2	2024-05-11	POSITIVE	0.998461365699768	Google Play
1547	com.boa.boaMobileBanking	prevent login developer option security move money somewhere else didnt wanna deal	1	2024-05-11	NEGATIVE	0.9982709884643556	Google Play
1548	com.boa.boaMobileBanking	app bug sign still challenge transfer another bank impossible app slow bland	3	2024-05-11	NEGATIVE	0.9992576241493224	Google Play
1549	com.boa.boaMobileBanking	recent update app keep ask disable developer option wont let use unless	2	2024-05-10	POSITIVE	0.857622504234314	Google Play
1550	com.boa.boaMobileBanking	app simpl use	4	2024-05-10	NEGATIVE	0.9794180393218994	Google Play
1551	com.boa.boaMobileBanking	wow amaze	5	2024-05-10	POSITIVE	0.99978107213974	Google Play
1552	com.boa.boaMobileBanking	laggy un able make transaction fix	1	2024-05-10	NEGATIVE	0.99981290102005	Google Play
1553	com.boa.boaMobileBanking	good harmony bank	5	2024-05-10	POSITIVE	0.9997896552085876	Google Play
1554	com.boa.boaMobileBanking	u force turn developer option use app fair use ur app anymore	1	2024-05-10	NEGATIVE	0.9890068769454956	Google Play
1555	com.boa.boaMobileBanking	poor app crash every time doesnt load properly cant even buy airtime programming subpar please take lesson online banking apps would give zero could	1	2024-05-10	NEGATIVE	0.9997933506965636	Google Play
1556	com.boa.boaMobileBanking	ethiopia	5	2024-05-09	POSITIVE	0.9780409336090088	Google Play
1557	com.boa.boaMobileBanking	great ui ux design	5	2024-05-09	POSITIVE	0.99943608045578	Google Play
1558	com.boa.boaMobileBanking	rubbish	1	2024-05-09	NEGATIVE	0.9997988343238832	Google Play
1559	com.boa.boaMobileBanking	app update	5	2024-05-09	NEUTRAL	0.5778818726539612	Google Play
1560	com.boa.boaMobileBanking	app developer need keep developer option ask turn developer option abyssinia damn bank ethiopia cant seem buld app work hard people look cbe simply terrible borderline unusable	1	2024-05-09	NEGATIVE	0.9997500777244568	Google Play
1561	com.boa.boaMobileBanking	slow every time	2	2024-05-08	NEGATIVE	0.999620795249939	Google Play
1562	com.boa.boaMobileBanking	take long time log please fix	1	2024-05-08	NEGATIVE	0.9887664914131165	Google Play
1563	com.boa.boaMobileBanking	functional	1	2024-05-08	POSITIVE	0.9993332028388976	Google Play
1564	com.boa.boaMobileBanking	eri	5	2024-05-08	POSITIVE	0.924249827861786	Google Play
1565	com.boa.boaMobileBanking	disgrace app	1	2024-05-08	NEGATIVE	0.9997820258140564	Google Play
1566	com.boa.boaMobileBanking	two week require update	5	2024-05-07	NEGATIVE	0.873416006565094	Google Play
1567	com.boa.boaMobileBanking	excellence	5	2024-05-07	POSITIVE	0.999836564064026	Google Play
1568	com.boa.boaMobileBanking	application full bug annoy	1	2024-05-07	NEGATIVE	0.9988877177238464	Google Play
1569	com.boa.boaMobileBanking	crash repeatedly try make stable customer need meet	2	2024-05-07	NEGATIVE	0.9968975782394408	Google Play
1570	com.boa.boaMobileBanking	keep crash hasnt fix	1	2024-05-07	NEGATIVE	0.998306155204773	Google Play
1571	com.boa.boaMobileBanking	lag	1	2024-05-06	NEGATIVE	0.9996507167816162	Google Play
1572	com.boa.boaMobileBanking	extremely disappointed poor service receive unacceptable cannot make transaction 30000 birr sometimes money get stick air result incompetence force change bank account level service completely unacceptable need rectify immediately	1	2024-05-06	NEGATIVE	0.9991809725761414	Google Play
1573	com.boa.boaMobileBanking	app ask remove developer option matter phone unacceptable fix	3	2024-05-06	NEGATIVE	0.9991536140441896	Google Play
1574	com.boa.boaMobileBanking	bad application relative ethiopia mobile banking app	1	2024-05-06	NEGATIVE	0.9996892213821412	Google Play
1575	com.boa.boaMobileBanking	great app	5	2024-05-05	POSITIVE	0.999821126461029	Google Play
1576	com.boa.boaMobileBanking	doesnt work properly keep closing wont activate account wouldnt recommend downloading	1	2024-05-05	NEGATIVE	0.9986881613731384	Google Play
1577	com.boa.boaMobileBanking	pls improve mobile banking app doesnt work constantly update new version app try improve	1	2024-05-05	NEGATIVE	0.9966753721237184	Google Play
1578	com.boa.boaMobileBanking	dont even try	1	2024-05-05	NEGATIVE	0.9920748472213744	Google Play
1579	com.boa.boaMobileBanking	ayseram yastelal	3	2024-05-04	POSITIVE	0.9675766229629515	Google Play
1580	com.boa.boaMobileBanking	best app mobilebanking	5	2024-05-04	POSITIVE	0.9996153116226196	Google Play
1581	com.boa.boaMobileBanking	like app boa	4	2024-05-04	NEGATIVE	0.9560123682022096	Google Play
1582	com.boa.boaMobileBanking	betam yedadab app	1	2024-05-04	NEGATIVE	0.7780928611755371	Google Play
1583	com.boa.boaMobileBanking	app work whypleas tell	2	2024-05-04	NEGATIVE	0.9812791347503662	Google Play
1584	com.boa.boaMobileBanking	comfortable good service	5	2024-05-04	POSITIVE	0.9998677968978882	Google Play
1585	com.boa.boaMobileBanking	app work	1	2024-05-04	POSITIVE	0.9826902151107788	Google Play
1586	com.boa.boaMobileBanking	good service	5	2024-05-04	POSITIVE	0.9998499155044556	Google Play
1587	com.boa.boaMobileBanking	good app	5	2024-05-04	POSITIVE	0.9998493194580078	Google Play
1588	com.boa.boaMobileBanking	version 240426 opening device notice issue friend android 9 phone also samsung android 12 phone even weekly update new version work properly please provide stable version update prefer old version app new one	1	2024-05-04	NEGATIVE	0.909398078918457	Google Play
1589	com.boa.boaMobileBanking	app keep crashign didnt even get sign bad update	1	2024-05-03	NEGATIVE	0.944929301738739	Google Play
1590	com.boa.boaMobileBanking	slow	1	2024-05-03	NEGATIVE	0.9997313618659972	Google Play
1591	com.boa.boaMobileBanking	sorie	1	2024-05-03	POSITIVE	0.99139142036438	Google Play
1592	com.boa.boaMobileBanking	keep clash crass stupid app force update transfer money cant open	1	2024-05-03	NEGATIVE	0.9994968175888062	Google Play
1593	com.boa.boaMobileBanking	doesnt work crash	1	2024-05-03	NEGATIVE	0.993568241596222	Google Play
1594	com.boa.boaMobileBanking	nice one thanks abisiniya	5	2024-05-03	POSITIVE	0.9998387098312378	Google Play
1595	com.boa.boaMobileBanking	dear boa sure upgrading application become bad bad please fix bug quickly possible	1	2024-05-03	NEGATIVE	0.9996227025985718	Google Play
1596	com.boa.boaMobileBanking	work okbut start display bank list choose need update every couple day annoy	3	2024-05-03	NEGATIVE	0.986341655254364	Google Play
1597	com.boa.boaMobileBanking	yleiall	1	2024-05-03	POSITIVE	0.9845319390296936	Google Play
1598	com.boa.boaMobileBanking	developer company take long update app throughout process app basically useless cant send money even able check account even take play store whole process usually take 3 5 day disappointing improvement previous version app still long way go compete like cbe transfer bank sometimes doesnt work	2	2024-05-03	NEGATIVE	0.9995075464248656	Google Play
1599	com.boa.boaMobileBanking	ok true	1	2024-05-03	POSITIVE	0.9998169541358948	Google Play
1600	com.boa.boaMobileBanking	cool app tnxes	5	2024-05-03	POSITIVE	0.9994244575500488	Google Play
1601	com.boa.boaMobileBanking	poorer previous app	1	2024-05-03	NEGATIVE	0.9991382360458374	Google Play
1602	com.boa.boaMobileBanking	application isnt work properly	1	2024-05-03	NEGATIVE	0.99962055683136	Google Play
1603	com.boa.boaMobileBanking	soo many bug app havent able use since instal bad	1	2024-05-03	NEGATIVE	0.9989390969276428	Google Play
1604	com.boa.boaMobileBanking	prefer earlier version update app crush login say bug please fix bug issue	4	2024-05-03	NEGATIVE	0.9980931878089904	Google Play
1605	com.boa.boaMobileBanking	actually faster	4	2024-05-03	POSITIVE	0.9996544122695924	Google Play
1606	com.boa.boaMobileBanking	bad app always bother transaction process	1	2024-05-03	NEGATIVE	0.9996106028556824	Google Play
1607	com.boa.boaMobileBanking	crush repeatedly	1	2024-05-03	NEGATIVE	0.9993765950202942	Google Play
1608	com.boa.boaMobileBanking	last update app keep crash work pls fix mobile transaction become impossible	1	2024-05-02	NEGATIVE	0.9989023208618164	Google Play
1609	com.boa.boaMobileBanking	bad app ever barely work	1	2024-05-02	NEGATIVE	0.9985098242759703	Google Play
1610	com.boa.boaMobileBanking	keep make crash open app work properly	1	2024-05-02	POSITIVE	0.9970280528068542	Google Play
1611	com.boa.boaMobileBanking	fix bug	1	2024-05-02	NEGATIVE	0.9980489015579224	Google Play
1612	com.boa.boaMobileBanking	bad app	2	2024-05-02	NEGATIVE	0.9997212290763856	Google Play
1613	com.boa.boaMobileBanking	dont know every time come new update app get bad old take time load load money telebirr cant pay awach please try fix	1	2024-05-02	NEGATIVE	0.9991211295127868	Google Play
1614	com.boa.boaMobileBanking	always crash	1	2024-05-02	NEGATIVE	0.9976930022239684	Google Play
1615	com.boa.boaMobileBanking	worest mobile banking app	1	2024-05-02	NEGATIVE	0.9497162103652954	Google Play
1616	com.boa.boaMobileBanking	app never work properly specially android 14 better	1	2024-05-02	NEGATIVE	0.9997612833976746	Google Play
1617	com.boa.boaMobileBanking	think remember work upon time	2	2024-05-02	POSITIVE	0.9861853718757628	Google Play
1618	com.boa.boaMobileBanking	omg like bad mobile banking app ever many different mobile banking app different bank worst far say connection issue wifi data connection im use social medium apps keep ask update like every week take forever load like wait least 10 minute login another 10 min see balance	1	2024-05-02	NEGATIVE	0.9991264939308168	Google Play
1619	com.boa.boaMobileBanking	great app others	5	2024-05-02	POSITIVE	0.9997296929359436	Google Play
1620	com.boa.boaMobileBanking	unreliable send money asap app either laggs doesnt work lazy work look efficient tele birr even bank	1	2024-05-02	NEGATIVE	0.9992222785949708	Google Play
1621	com.boa.boaMobileBanking	crash glitch crash blame connection crash crash please fix	1	2024-05-02	NEGATIVE	0.9971938133239746	Google Play
1622	com.boa.boaMobileBanking	play	5	2024-05-02	POSITIVE	0.9905951023101808	Google Play
1623	com.boa.boaMobileBanking	work good last update update asks disable developer option mean developer developer option enable cant access account crush lot time	2	2024-05-01	NEGATIVE	0.9549145102500916	Google Play
\.


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1623, true);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (bank_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(bank_id);


--
-- PostgreSQL database dump complete
--

\unrestrict nL0k4M2ImRLh9MEv5v9laQud3dMMON01iTJVVRGyxLdpymtssaiJJ7P9delCVrT

