--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: albums; Type: TABLE; Schema: public; Owner: genius_admin
--

CREATE TABLE public.albums (
    id integer NOT NULL,
    name character varying NOT NULL,
    lyrics text,
    artist_id integer NOT NULL
);


ALTER TABLE public.albums OWNER TO genius_admin;

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: genius_admin
--

CREATE SEQUENCE public.albums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.albums_id_seq OWNER TO genius_admin;

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genius_admin
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: artists; Type: TABLE; Schema: public; Owner: genius_admin
--

CREATE TABLE public.artists (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.artists OWNER TO genius_admin;

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: genius_admin
--

CREATE SEQUENCE public.artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.artists_id_seq OWNER TO genius_admin;

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genius_admin
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: genius_admin
--

CREATE TABLE public.songs (
    id integer NOT NULL,
    name character varying NOT NULL,
    lyrics text,
    artist_id integer NOT NULL
);


ALTER TABLE public.songs OWNER TO genius_admin;

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: genius_admin
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.songs_id_seq OWNER TO genius_admin;

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: genius_admin
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

COPY public.albums (id, name, lyrics, artist_id) FROM stdin;
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

COPY public.artists (id, name) FROM stdin;
72	kanye west
1177	taylor swift
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

COPY public.songs (id, name, lyrics, artist_id) FROM stdin;
70324	mercy	502 ContributorsTranslationsItalianoFrançaisMercy Lyrics\nWell, it is a weepin' and a moanin' and a gnashin' of teeth\nIt is a weepin' and a moanin' and a gnashin' of teeth\nIt is a—when it comes to my sound which is the champion sound\nBelieve, believe\nO-o-o-o-o-okay, Lamborghini Mercy\nYour chick, she so thirsty\nI-I-I-I-I'm in that two-seat Lambo\nWith your girl, she tryna jerk me (Believe)\nO-o-o-o-o-okay, Lamborghini Mercy\nYour chick, she so thirsty\nI-I-I-I-I'm in that two-seat Lambo\nWith your girl, she tryna jerk me\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo\nWith your girl, she tryna jerk me (Woah, believe)\nO-o-o-o-o-okay, Lamborghini Mercy\nYour chick, she so thirsty (Boy)\nI-I-I-I-I'm in that two-seat Lambo (Boy)\nWith your girl, she tryna jerk me\n\nOkay, drop it to the floor, make that ass shake (Shake, shake)\nWoah, make the ground move: that's an ass quake\nBuilt a house up on that ass: that's an ass-state\nRoll–roll–roll my weed on it: that's an ass tray\nSay, Ye, say, Ye, don't we do this every day–day? (Huh?)\nI work them long nights, long nights to get a payday (Huh?)\nFinally got paid, now I need shade and a vacay\nAnd niggas still hatin'\nSo much hate, I need a AK (AK)\nNow we out in Paris, yeah, I'm Perrierin'\nWhite girls politickin' and that's that Sarah Palin\nGet–get–get–get–get–gettin' hot, Californicatin'\nI give her that D, 'cause that's where I was born and raised in\nYou might also like\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve)\nWith your girl, she tryna jerk me (Swerve, believe)\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve)\nWith your girl, she tryna jerk me (Swerve)\nWell, it is a weepin' and a moanin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a weepin' and a mournin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a—when it comes to my sound (Swerve)\nWhich is the champion sound (Swerve)\nBelieve, believe (Swerve)\nBelieve, believe (Swerve)\nYuugh! It's prime time, my top back, this pimp game, ho\nI'm red leather, this cocaine, I'm Rick James, ho\nI'm bill-droppin', Ms. Pac-Man, this pill-poppin' ass ho\nI'm poppin' too, these blue dolphins need two coffins\nAll she want is some heel money\nAll she need is some bill money\nHe take his time, he counts it out\nI weighs it up, that's real money\nCheck the neck, check the wrist\nThem heads turnin': that's exorcist\nMy Audemars like Mardi Gras\nThat's Swiss time, and that's excellence\nTwo-door preference\nRoof gone, George Jefferson\nThat white frost on that pound cake\nSo your Duncan Hines is irrelevant, woo\nLambo Murciélago\nShe go wherever I go\nWherever we go, we do it pronto, it's like—\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve)\nWith your girl, she tryna jerk me (Swerve, believe)\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve)\nWith your girl, she tryna jerk me (Swerve)\nWell, it is a weepin' and a moanin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a weepin' and a mournin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a—when it comes to my sound (Swerve)\nWhich is the champion sound (Swerve)\nBelieve, believe (Swerve)\nBelieve (Swerve)\n\nWell, it is a weepin' and a moanin'\nAnd a gnashin' of teeth in the dancehall\nAnd who no have teeth gwan rub pon dem gums\nCuh when time it comes to my sound\nWhich is the champion sound\nThe bugle has blown fi many times\nAnd it still have one more time left\nCuh the amount of stripe weh deh pon our shoulder\nLet the suicide doors up\nI threw suicides on the tour bus\nI threw suicides on the private jet\nYou know what that mean, I'm fly to death\nI step in Def Jam buildin' like I'm the shit\nTell 'em gimme fifty million or I'ma quit\nMost rappers' taste level ain't at my waist level\nTurn up the bass 'til it's up-in-yo-face level\nDon't do no press but I get the most press, kid\nPlus, yo, my bitch make your bitch look like Precious\nSomethin' 'bout Mary, she gone off that molly\nNow the whole party is melting like Dalí\nNow everybody is movin' they body\nDon't sell me apartment, I'll move in the lobby (Yah)\nNiggas is loiterin' just to feel important\nYou gon' see lawyers and niggas in Jordans (2 Chainz)\nOkay, now catch up to my campaign\nCoupe the color of mayonnaise\nI'm drunk and high at the same time\nDrinkin' champagne on the airplane (Tell 'em)\nSpit rounds like a gun range (Baow)\nBeat it up like Rampage\nHundred bands, cut your girl\nNow your girl need a Band-Aid (Damn)\nGrade A, A1\nChain the color of Akon\nBlack diamonds, backpack rhymin'\nCo-signed by Louis Vuitton (Yep)\nHorsepower, horsepower\nAll this Polo on, I got horsepower\nPound of this cost four thousand\nNow I make it rain, she want more showers\nRain (Rain) pourin' (Pourin')\nAll my cars is foreign (Foreign)\nAll my broads is foreign (Foreign)\nMoney tall like Jordan\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve)\nWith your girl, she tryna jerk me (Swerve)\nO-o-o-o-o-okay, Lamborghini Mercy (Swerve)\nYour chick, she so thirsty (Swerve)\nI-I-I-I-I'm in that two-seat Lambo (Swerve, believe)\nWith your girl, she tryna jerk me (Swerve, believe)\nWell, it is a weepin' and a moanin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a weepin' and a moanin' (Swerve)\nAnd a gnashin' of teeth (Swerve)\nIt is a—when it comes to my sound (Swerve)\nWhich is the champion sound (Swerve)\nBelieve, believe (Swerve)\nBelieve, believe (Swerve)\nWell, it is a weepin' and a moanin' and a gnashin' of teeth\nIt is a weepin' and a moanin' and a gnashin' of teeth\nIt is a—when it comes to my sound which is the champion sound\nBelieve, believe, believe, believe373Embed	72
525	stronger	226 ContributorsTranslationsРусскийPortuguêsEspañolفارسیStronger Lyrics\n\nWork it, make it, do it, makes us\nHarder, better, faster, stronger\nN-Now-Now that, that don't kill me\nCan only make me stronger\nI need you to hurry up now\n'Cause I can't wait much longer\nI know I got to be right now\n'Cause I can't get much wronger\nMan, I've been waitin' all night now\nThat's how long I been on ya\nWork it harder, make it better\nDo it faster, makes us stronger\n(I need you right now, right now)\nMore than ever, hour after hour\nWork—\n(I need you right now, right now)\n\nLet's get lost tonight\nYou could be my black Kate Moss tonight\nPlay secretary, I'm the boss tonight\nAnd you don't give a fuck what they all say, right?\nAwesome, the Christian in Christian Dior\nDamn, they don't make 'em like this anymore\nI ask, 'cause I'm not sure\nDo anybody make real shit anymore?\nBow in the presence of greatness\n'Cause right now, thou hast forsaken us\nYou should be honored by my lateness\nThat I would even show up to this fake shit\nSo go ahead, go nuts, go apeshit\n'Specially in my Pastellé, on my Bape shit\nAct like you can't tell who made this\nNew Gospel, homie, take six\nAnd take this, haters\nYou might also like\nN-Now-Now that, that don't kill me\nCan only make me stronger\nI need you to hurry up now\n'Cause I can't wait much longer\nI know I got to be right now\n'Cause I can't get much wronger\nMan, I've been waitin' all night now\nThat's how long I been on ya\nWork it harder, make it better\nDo it faster, makes us stronger\n(I need you right now, now)\nMore than ever, hour after hour\nWork—\n(I need you right now, right now)\nMe likey\n\nI don't know if you got a man or not\nIf you made plans or not\nIf God put me in your plans or not\nI'm trippin', this drink got me sayin' a lot\nBut I know that God put you in front of me\nSo how the hell could you front on me?\nThere's a thousand you's, there's only one of me\nI'm trippin', I'm caught up in the moment, right?\n'Cause it's Louis Vuitton Don night\nSo we gon' do everything that Kan' like\nHeard they'd do anything for a Klondike\nWell, I'd do anything for a blonde dyke\nAnd she'll do anything for the limelight\nAnd we'll do anything when the time's right\nUh, baby, you're makin' it\nHarder, better, faster, stronger (Oh)\nN-Now th-that, that don't kill me (Oh)\nCan only make me stronger (Oh)\nI need you to hurry up now (Oh)\n'Cause I can't wait much longer (Oh)\nI know I got to be right now (Oh)\n'Cause I can't get much wronger (Oh)\nMan, I've been waitin' all night now\nThat's how long I been on ya\nWork it harder, make it better\nDo it faster, makes us stronger\n(I need you right now, now)\nMore than ever, hour after hour\nWork is never over\n(I need you right now, right now)\n\nYou know how long I've been on ya\nSince Prince was on Apollonia\nSince O.J. had Isotoners\nDon't act like I never told ya\nWork it, work is never over\nDon't act like I never told ya\nHarder, work is never over\nUh, don't act like I never told ya\nDon't act like I never told ya\nDon't act like I never told ya\nUh, baby, you're makin' it\nHarder, better, faster, stronger\nN-Now-Now that, that don't kill me\nCan only make me stronger\nI need you to hurry up now\n'Cause I can't wait much longer\nI know I got to be right now\n'Cause I can't get much wronger\nMan, I've been waitin' all night now\nThat's how long I been on ya\nWork it harder, make it better\nDo it faster, makes us stronger\n(I need you right now, now)\nMore than ever, hour after hour\nWork is never over\n(I need you right now, right now)\nWork it harder, make it better\nDo it faster, makes us stronger\n(I need you right now, now)\nMore than ever, hour after hour\nWork is never over\n(I need you right now, right now)\n\nYou know how long I've been on ya\nSince Prince was on Apollonia\nSince O.J. had Isotoners\nDon't act like I never told ya\nYou know how long I've been on ya\nSince Prince was on Apollonia\nSince O.J. had Isotoners\nDon't act like I never told ya\n\nTold ya, told ya\nNever told ya, told ya, told ya\nNever told ya, told ya, told ya\nNever told ya, told ya, told ya\nNever told ya\nNever over (W—), never over (Ha—)\nNever over (Fa—), never over (St—)\nNever over, never over\nNever over\nHarder, better, faster, stronger\nWork it harder, make it better\nDo it faster, makes us stronger\nMore than ever, hour after hour\nWork is never over\nWork it harder, make it better\nDo it faster, makes us stronger\nMore than ever, hour after hour\nWork is never over\nWork it harder, make it better\nDo it faster, makes us stronger\nMore than ever, hour after hour\nWork is never over\nWork it harder, make it better\nDo it faster, makes us stronger\nMore than ever, hour after hour\nWork is never over174Embed	72
7076626	all too well (10 minute version) (taylor’s version) [from the vault]	363 ContributorsTranslationsРусскийفارسیEspañolPortuguêsFrançaisУкраїнськаHebrewNederlandsItalianoالعربيةPolskiMagyarTürkçeAfrikaansNorsk (bokmål / riksmål)DeutschSvenskaСрпскиSlovenščinaAll Too Well (10 Minute Version) (Taylor’s Version)  Lyrics\nI walked through the door with you, the air was cold\nBut somethin' 'bout it felt like home somehow\nAnd I left my scarf there at your sister's house\nAnd you've still got it in your drawer, even now\n\nOh, your sweet disposition and my wide-eyed gaze\nWe're singin' in the car, getting lost upstate\nAutumn leaves fallin' down like pieces into place\nAnd I can picture it after all these days\n\nAnd I know it's long gone and\nThat magic's not here no more\nAnd I might be okay, but I'm not fine at all\nOh, oh, oh\n\n'Causе there we arе again on that little town street\nYou almost ran the red 'cause you were lookin' over at me\nWind in my hair, I was there\nI remember it all too well\n\nPhoto album on the counter, your cheeks were turnin' red\nYou used to be a little kid with glasses in a twin-sized bed\nAnd your mother's tellin' stories 'bout you on the tee-ball team\nYou taught me 'bout your past, thinkin' your future was me\nAnd you were tossing me the car keys, "Fuck the patriarchy"\nKeychain on the ground, we were always skippin' town\nAnd I was thinkin' on the drive down, "Any time now\nHe's gonna say it's love," you never called it what it was\n'Til we were dead and gone and buried\nCheck the pulse and come back swearin' it's the same\nAfter three months in the grave\nAnd then you wondered where it went to as I reached for you\nBut all I felt was shame and you held my lifeless frame\nSee Taylor Swift LiveGet tickets as low as $250You might also like\nAnd I know it's long gone and\nThere was nothing else I could do\nAnd I forget about you long enough\nTo forget why I needed to\n\n'Cause there we are again in the middle of the night\nWe're dancin' 'round the kitchen in the refrigerator light\nDown the stairs, I was there\nI remember it all too well\nAnd there we are again when nobody had to know\nYou kept me like a secret, but I kept you like an oath\nSacred prayer and we'd swear\nTo remember it all too well, yeah\n\nWell, maybe we got lost in translation, maybe I asked for too much\nBut maybe this thing was a masterpiece 'til you tore it all up\nRunnin' scared, I was there\nI remember it all too well\nAnd you call me up again just to break me like a promise\nSo casually cruel in the name of bein' honest\nI'm a crumpled-up piece of paper lyin' here\n'Cause I remember it all, all, all\nThey say all's well that ends well, but I'm in a new hell\nEvery time you double-cross my mind\nYou said if we had been closer in age, maybe it would've been fine\nAnd that made me want to die\nThe idea you had of me, who was she?\nA never-needy, ever-lovely jewel whose shine reflects on you\nNot weepin' in a party bathroom\nSome actress askin' me what happened, you\nThat's what happened, you\nYou who charmed my dad with self-effacing jokes\nSippin' coffee like you're on a late-night show\nBut then he watched me watch the front door all night, willin' you to come\nAnd he said, "It's supposed to be fun turning twenty-one"\n\nTime won't fly, it's like I'm paralyzed by it\nI'd like to be my old self again, but I'm still tryin' to find it\nAfter plaid shirt days and nights when you made me your own\nNow you mail back my things and I walk home alone\nBut you keep my old scarf from that very first week\n'Cause it reminds you of innocence and it smells like me\nYou can't get rid of it\n'Cause you remember it all too well, yeah\n\n'Cause there we are again when I loved you so\nBack before you lost the one real thing you've ever known\nIt was rare, I was there\nI remember it all too well\nWind in my hair, you were there\nYou remember it all\nDown the stairs, you were there\nYou remember it all\nIt was rare, I was there\nI remember it all too well\nAnd I was never good at tellin' jokes, but the punch line goes\n"I'll get older, but your lovers stay my age"\nFrom when your Brooklyn broke my skin and bones\nI'm a soldier who's returning half her weight\nAnd did the twin flame bruise paint you blue?\nJust between us, did the love affair maim you too?\n'Cause in this city's barren cold\nI still remember the first fall of snow\nAnd how it glistened as it fell\nI remember it all too well\n\nJust between us, did the love affair maim you all too well?\nJust between us, do you remember it all too well?\nJust between us, I remember it (Just between us) all too well\nWind in my hair, I was there, I was there (I was there)\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it all too well\nWind in my hair, I was there, I was there (Oh)\nDown the stairs, I was there, I was there (I was there)\nSacred prayer, I was there, I was there\nIt was rare, you remember it (All too well)\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it223Embed	1177
7394358	all too well (10 minute version) (taylor’s version) [live acoustic]	81 ContributorsTranslationsEspañolAll Too Well (10 Minute Version) (Taylor’s Version)  Lyrics\nI walked through the door with you, the air was cold\nBut something 'bout it felt like home somehow\nAnd I left my scarf there at your sister's house\nAnd you've still got it in your drawer, even now\n\nOh, your sweet disposition and my wide-eyed gaze\nWe're singing in the car, getting lost upstate\nAutumn leaves falling down like pieces into place\nAnd I can picture it after all these days\n\nAnd I know it's long gone and\nThat magic's not here no more\nAnd I might be okay, but I'm not fine at all\nOh, oh, oh\n\n'Cause there we are again on that little town street\nYou almost ran the red 'cause you were lookin' over at me\nWind in my hair, I was there\nI remember it all too well\n\nPhoto album on the counter, your cheeks were turning red\nYou used to be a little kid with glasses in a twin-sized bed\nAnd your mother's telling stories 'bout you on the tee-ball team\nYou told me 'bout your past, thinking your future was me\nAnd you were tossing me the car keys, "Fuck the patriarchy"\nKey chain on the ground, we were always skipping town\nAnd I was thinking on the drive down, any time now\nHe's gonna say it's love, you never called it what it was\n'Til we were dead and gone and buried\nCheck the pulse and come back swearing it's the same\nAfter three months in the grave\nAnd then you wondered where it went to as I reached for you\nBut all I felt was shame and you held my lifeless frame\nSee Taylor Swift LiveGet tickets as low as $250You might also like\nAnd I know it's long gone and\nThere was nothing else I could do\nAnd I forget about you long enough\nTo forget why I needed to\n\n'Cause there we are again in the middle of the night\nWe're dancing 'round the kitchen in the refrigerator light\nDown the stairs, I was there\nI remember it all too well\nAnd there we are again when nobody had to know\nYou kept me like a secret, but I kept you like an oath\nSacred prayer and we'd swear\nTo remember it all too well, yeah\n\nWell, maybe we got lost in translation\nMaybe I asked for too much\nBut maybe this thing was a masterpiece\n'Til you tore it all up\nRunning scared, I was there\nI remember it all too well\nAnd you call me up again just to break me like a promise\nSo casually cruel in the name of being honest\nI'm a crumpled up piece of paper lying here\n'Cause I remember it all, all, all\nThey say all's well that ends well, but I'm in a new Hell\nEvery time you double-cross my mind\nYou said if we had been closer in age maybe it would have been fine\nAnd that made me want to die\nThe idea you had of me, who was she?\nA never-needy, ever-lovely jewel whose shine reflects on you\nNot weeping in a party bathroom\nSome actress asking me what happened, you\nThat's what happened, you\nYou who charmed my dad with self-effacing jokes\nSipping coffee like you're on a late-night show\nBut then he watched me watch the front door all night, willing you to come\nAnd he said, "It's supposed to be fun turning twenty-one"\n\nTime won't fly, it's like I'm paralyzed by it\nI'd like to be my old self again, but I'm still trying to find it\nAfter plaid shirt days and nights when you made me your own\nNow you mail back my things and I walk home alone\nBut you keep my old scarf from that very first week\n'Cause it reminds you of innocence and it smells like me\nYou can't get rid of it\n'Cause you remember it all too well, yeah\n\n'Cause there we are again when I loved you so\nBack before you lost the one real thing you've ever known\nIt was rare, I was there\nI remember it all too well\nWind in my hair, you were there\nYou remember it all\nDown the stairs, you were there\nYou remember it all\nIt was rare, I was there\nI remember it all too well\nAnd I was never good at telling jokes, but the punch line goes\n"I'll get older, but your lovers stay my age"\nFrom when your Brooklyn broke my skin and bones\nI'm a soldier who's returning half her weight\nAnd did the twin flame bruise paint you blue?\nJust between us, did the love affair maim you, too?\n'Cause in this city's barren cold\nI still remember the first fall of snow\nAnd how it glistened as it fell\nI remember it all too well\n\nJust between us, did the love affair maim you all too well?\nJust between us, do you remember it all too well?\nJust between us, I remember it (Just between us), all too well\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it all too well\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it\nWind in my hair, I was there, I was there\nDown the stairs, I was there, I was there\nSacred prayer, I was there, I was there\nIt was rare, you remember it all too well\n\nI love you guys so much52Embed	1177
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genius_admin
--

SELECT pg_catalog.setval('public.albums_id_seq', 1, false);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genius_admin
--

SELECT pg_catalog.setval('public.artists_id_seq', 1, false);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: genius_admin
--

SELECT pg_catalog.setval('public.songs_id_seq', 1, false);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: albums albums_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: songs songs_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: genius_admin
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- PostgreSQL database dump complete
--

