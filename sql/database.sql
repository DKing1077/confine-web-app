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
130	drake
7922	logic
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

COPY public.songs (id, name, lyrics, artist_id) FROM stdin;
3315890	god’s plan	660 ContributorsTranslationsРусскийTürkçeEspañolPolskiItalianoDeutschFrançaisAzərbaycanca / آذربايجانGod’s Plan Lyrics\nAnd they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah\n\nI been movin' calm, don't start no trouble with me\nTryna keep it peaceful is a struggle for me\nDon't pull up at 6 AM to cuddle with me\nYou know how I like it when you lovin' on me\nI don't wanna die for them to miss me\nYes, I see the things that they wishin' on me\nHope I got some brothers that outlive me\nThey gon' tell the story, shit was different with me\n\nGod's plan, God's plan\nI hold back, sometimes I won't, yeah\nI feel good, sometimes I don't (Ayy, don't)\nI finessed down Weston Road (Ayy, 'nessed)\nMight go down a G-O-D (Yeah, wait)\nI go hard on Southside G (Yeah, wait)\nI make sure that north-side eat\nAnd still\n\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah, ayy, ayy\nYou might also like\nShe say, "Do you love me?" I tell her, "Only partly\nI only love my bed and my mama, I'm sorry"\nFifty Dub, I even got it tatted on me\nEighty-one, they'll bring the crashers to the party\nAnd you know me\nTurn the O2 into the O3, dog\nWithout 40, Oli, there'd be no me\n'Magine if I never met the broskies\n\nGod's plan, God's plan\nI can't do this on my own, ayy (No, ayy)\nSomeone watchin' this shit close (Yep, close)\nI've been me since Scarlett Road, ayy (Road, ayy)\nMight go down as G-O-D (Yeah, wait, yeah)\nI go hard on Southside G (Ayy, wait, ayy)\nI make sure that north-side eat, yeah\nAnd still\n\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah, yeah\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah942Embed	130
3807759	in my feelings	377 ContributorsTranslationsไทย / Phasa ThaiPortuguêsEspañolDeutschIn My Feelings Lyrics\nTrap, TrapMoneyBenny\nThis shit got me in my feelings\nGotta be real with it, yeah\n\nKiki, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nKB, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\n\nLook, the new me is really still the real me\nI swear you gotta feel me before they try and kill me\nThey gotta make some choices, they runnin' out of options\n'Cause I've been goin' off and they don't know when it's stoppin'\nAnd when you get to toppin', I see that you've been learnin'\nAnd when I take you shoppin', you spend it like you earned it\nAnd when you popped off on your ex he deserved it\nI thought you were the one from the jump, that confirmed it\nTrapMoneyBenny, ayy\nI buy you Champagne but you love some Henny\nFrom the block like you Jenny\nI know you special, girl, 'cause I know too many\nYou might also like\n'Resha, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nJT, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\n\nTwo bad bitches and we kissin' in the Wraith\nKissin'-kissin' in the Wraith, kiss-kissin' in the Wraith\nI need that black card and the code to the safe\nCode to the safe, code-code to the safe-safe\nI show him how that neck work\nFuck that Netflix and chill, what's your net-net-net worth?\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nYeah, yeah, yeah, yeah, he bad\nAnd I'm down for you always\nYeah, yeah, yeah, guess who's back\nAnd I'm down for you always\nD-down for you al–\nBlack biggy biggy black biggy black blake\nD-d-down for you always\nI got a new boy, and that nigga trade\nKiki, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want you, and I need you\nAnd I'm down for you always\nKB, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I–\n\nSkate and Smoke and Rap\nNow let me see you\nBring that ass, bring that ass, bring that ass back\nB-bring that ass, bring that ass, bring that ass back\nShawty say the nigga that she with can't hit\nBut shawty, I'ma hit it, hit it like I can't miss\nNow let me see you\nClap that ass, you're the only one I love\nClap that ass, clap-clap that ass\nBring that ass back\nClap-clap-clap that ass, you're the only one I love\nLet's go, let's go, let's go\nBring that ass back\n\nTrap, TrapMoneyBenny\nThis shit got me in my feelings\nGotta be real with it, ayy, yup\n(BlaqNmilD, you a genius, you diggin' me?)\nYou know what, I don't even care, I need a photo with Drake\nBecause my Instagram is weak as fuck\nI'm just being real, my shit, look—217Embed	130
2263723	hotline bling	320 ContributorsTranslationsTürkçeEspañolPortuguêsFrançaisDeutschHotline Bling Lyrics\nYou used to call me on my\nYou used to, you used to\nYeah\n\nYou used to call me on my cell phone\nLate-night when you need my love\nCall me on my cell phone\nLate-night when you need, my love\nAnd I know when that hotline bling\nThat can only mean one thing\nI know when that hotline bling\nThat can only mean one thing\n\nEver since I left the city, you\nGot a reputation for yourself now\nEverybody knows and I feel left out\nGirl, you got me down, you got me stressed out\n'Cause ever since I left the city, you\nStarted wearin' less and goin' out more\nGlasses of champagne out on the dance floor\nHangin' with some girls I never seen before\n\nYou used to call me on my cell phone\nLate-night when you need my love\nCall me on my cell phone\nLate-night when you need, my love\nI know when that hotline bling\nThat can only mean one thing\nI know when that hotline bling\nThat can only mean one thing\nYou might also like\nEver since I left the city, you, you, you\nYou and me, we just don't get along\nYou make me feel like I did you wrong\nGoin' places where you don't belong\nEver since I left the city, you\nYou got exactly what you asked for\nRunnin' out of pages in your passport\nHangin' with some girls I've never seen before\n\nYou used to call me on my cell phone\nLate-night when you need my love\nCall me on my cell phone\nLate-night when you need, my love\nAnd I know when that hotline bling\nThat can only mean one thing\nI know when that hotline bling\nThat can only mean one thing\n\nThese days, all I do is\nWonder if you're bendin' over backwards for someone else\nWonder if you're rollin' up a Backwoods for someone else\nDoing things I taught you, gettin' nasty for someone else\nYou don't need no one else\nYou don't need nobody else, no\nWhy you never alone?\nWhy you always touchin' road?\nUsed to always stay at home\nBe a good girl, you was in the zone\nYeah, you should just be yourself\nRight now, you're someone else\nYou used to call me on my cell phone\nLate-night when you need my love\nCall me on my cell phone\nLate-night when you need my, love\nAnd I know when that hotline bling\nThat can only mean one thing\nI know when that hotline bling\nThat can only mean one thing\n\nEver since I left the city—\n648Embed	130
2450584	one dance	302 ContributorsTranslationsTürkçeEspañolPolskiDeutschFrançaisРусскийOne Dance Lyrics\nBaby, I like your style\n\nGrips on your waist, front way, back way\nYou know that I don't play\nStreets not safe but I never run away\nEven when I'm away\nOti, oti\nThere's never much love when we go OT\nI pray to make it back in one piece\nI pray, I pray\n\nThat's why I need a one dance\nGot a Hennessy in my hand\nOne more time 'fore I go\nHigher powers taking a hold on me\nI need a one dance\nGot a Hennessy in my hand\nOne more time 'fore I go\nHigher powers taking a hold on me\nBaby, I like your style\nYou might also like\nStrength and guidance\nAll that I'm wishing for my friends\nNobody makes it from my ends\nI had to bust up the silence\nYou know you gotta stick by me\nSoon as you see the text, reply me\nI don't wanna spend time fighting\nWe've got no time, and that's why\n\nI need a one dance\nGot a Hennessy in my hand\nOne more time 'fore I go\nHigher powers taking a hold on me\nI need a one dance\nGot a Hennessy in my hand\nOne more time 'fore I go\nHigher powers taking a hold on me\n\nGot a pretty girl and she love me long time\nFine like a wine, she love me long time\nOh, yeah, very long time\nBack up, back up, back up, and whine it\nBack up, back up, and whine it\nGirl, just back up, back up, back up, and whine girl\nOh, yes, steady and fine\nBack, up, back up and whine it, mm\nOh, tell me, I need to know\nWhere do you wanna go?\n'Cause if you're down, I'll take it slow\nMake you lose control\n\nWhere, where, where\nWhere, where, where, where (Oh, yeah, very long time)\nWhere, where, where (Back up, back up, and wine am, girl)\nWhere, where, where, where\n'Cause if you're down (Back up, back up, and–)\n'Cause if you're down (Back up, back up, and–)\n'Cause if you're down (Back up, back up, and–)\n\nI need a one dance (Where, where, where)\nGot a Hennessy in my hand (Where, where, where, where)\nOne more time 'fore I go (Where)\nHigher powers taking a hold on me (Where, where, where, where)\nI need a one dance\nGot a Hennessy in my hand\nOne more time 'fore I go\nHigher powers taking a hold on me\nHow do you spell "Hennessy?"\nI put two "N"s and two "S"es, is it like that? Hen... Henn... Henn...\nIt's definitely not showing up\nI know "Hennessy" has two "S"es for sure, so I'm gonna take out one of the "N"s235Embed	130
200546	hold on, we’re going home	221 ContributorsTranslationsEspañolFrançaisHold On, We’re Going Home Lyrics\nI got my eyes on you\nYou're everything that I see\nI want your hot love and emotion endlessly\nI can't get over you\nYou left your mark on me\nI want your hot love and emotion endlessly\n\n'Cause you're a good girl and you know it\nYou act so different around me\n'Cause you're a good girl and you know it\nI know exactly who you could be\n\nJust hold on, we're going home\nJust hold on, we're going home\nIt's hard to do these things alone\nJust hold on, we're going home\nHome\n\nI got my eyes on you\nYou're everything that I see\nI want your hot love and emotion endlessly\nI can't get over you\nYou left your mark on me\nI want your hot love and emotion endlessly\nYou might also like\n'Cause you're a good girl and you know it (Oh yeah)\nYou act so different around me (Ah-ah, da-da)\n'Cause you're a good girl and you know it (Ah-ah-ah)\nI know exactly who you could be\n\nSo just hold on, we're going home (Going home)\nJust hold on, we're going home (Going home)\nIt's hard to do these things alone (Things alone)\nJust hold on, we're going home (Going home)\nHome (Going home)\n\nYou're the girl, you're the one\nGave you everything I loved\nI think there's something, baby\nI think there's something, baby\nYou're the girl, you're the one\nGave you everything I loved (Oh)\nI think there's something, baby\nI think there's something, baby\n\n'Cause you're a good girl and you know it\nYou act so different around me\n'Cause you're a good girl and you know it\nI know exactly who you could be\nOh, just hold on, we're going home (Going home)\nJust hold on, we're going home (Going home)\nIt's hard to do these things alone (Things alone)\nJust hold on, we're going home (Going home)\nHome (Going home)\n\n(Hold on)\n(Oh, oh)\n507Embed	130
3050777	1-800-273-8255	444 ContributorsTranslationsDeutschEnglishفارسی1-800-273-8255 Lyrics\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine (Who can relate? Woo)\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine\n\nI don't wanna be alive, I don't wanna be alive\nI just wanna die today, I just wanna die\nI don't wanna be alive, I don't wanna be alive\nI just wanna die\nAnd let me tell you why\n\nAll this other shit I'm talkin' 'bout, they think they know it\nI've been praying for somebody to save me, no one's heroic\nAnd my life don't even matter, I know it, I know it\nI know I'm hurting deep down, but can't show it\nI never had a place to call my own\nI never had a home, ain't nobody callin' my phone\nWhere you been? Where you at? What's on your mind?\nThey say every life precious but nobody care about mine\n\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine (Who can relate? Woo)\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine\nYou might also like\nI want you to be alive, I want you to be alive\nYou don't gotta die today, you don't gotta die\nI want you to be alive, I want you to be alive\nYou don't gotta die, now let me tell you why\nIt's the very first breath when your head's been drowning underwater\nAnd it's the lightness in the air when you're there chest-to-chest with a lover\nIt's holding on, though the road's long, seeing light in the darkest things\nAnd when you stare at your reflection, finally knowing who it is\nI know that you'll thank God you did\n\nI know where you been, where you are, where you goin'\nI know you're the reason I believe in life\nWhat's the day without a little night?\nI'm just tryna shed a little light\nIt can be hard\nIt can be so hard\nBut you gotta live right now\nYou got everything to give right now\n\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine (Who can relate? Woo)\nI've been on the low, I been taking my time\nI feel like I'm out of my mind\nIt feel like my life ain't mine\nI finally wanna be alive, I finally wanna be alive\nI don't wanna die today, I don't wanna die\nI finally wanna be alive, I finally wanna be alive\nI don't wanna die, I don't wanna die\n\nPain don't hurt the same, I know\nThe lane I travel feels alone\nBut I'm moving 'til my legs give out\nAnd I see my tears melt in the snow\nBut I don't wanna cry, I don't wanna cry anymore\nI wanna feel alive, I don't even wanna die anymore\nOh, I don't wanna\nI don't wanna\nI don't even wanna die anymore826Embed	7922
4519154	homicide	555 ContributorsTranslationsTürkçePolskiItalianoEnglishHomicide Lyrics\nSon, you know why you the greatest alive?\nWhy, Dad?\nBecause you came out of my balls, nigga\nHahahahahaha\n(Roof!)\n\nFuck rap\nBustin' like an addict with a semi-automatic\nWho done had it, and he ready for anybody to buck back\nHold up, catch a vibe, ain't no way in hell we leavin' nobody alive\nLeave a suicide note, fuck that\nBobby feelin' villainous, he killin' this\nI'm comin' for your man and his lady and even the baby\nI'm feelin' like I'm, chika-chika-chika, Slim Shady with rabies\n\nI'm foamin' at the mouth, ain't nobody takin' me out\nEvery single rapper in the industry, yeah, they know what I'm about\nAnd I dare you to test me\n'Cause not a single one of you motherfuckers impress me\nAnd maybe that's a little bit of an exaggeration\nBut I'm full of innovation\nAnd I'm tired of all of this high school "He's cool, he's not" rap shit\nCan a single one of you motherfuckers even rap? Shit\nNo, this ain't a diss to the game, this is gas to the flame\nNowadays, everybody sound the same, shit's lame\nLike a moth to the flame, I'ma reel 'em in and kill 'em\nKnow you feelin' lyricism when I'm spillin' it, I'm feelin' myself\nYeah, yeah, Bobby Boy, he be feelin' himself\nMass murder like this can't be good for my health\nWhen I rap like this, do I sound like shit?\nWell, it don't really matter, 'cause I'm killin' this shit\nYeah, I'm killin' this shit\nOh yeah, oh yeah, I'm killin' this shit\nBobby, how many times you been killin' this shit?\nFind another rhyme, goddamn, nigga, shit\nYou might also like\nFuck rap\nBustin' like an addict with a semi-automatic\nWho done had it, and he ready for anybody to buck back\nHold up, catch a vibe, ain't no way in hell we leavin' nobody alive\nLeave a suicide note, fuck that\nBobby feelin' villainous, he killin' this\nI'm comin' for your man and his lady and even the baby\nI'm feelin' like I'm, chika-chika-chika-chika\nChika-chika-chika-chika-chika, Slim Shady\n\nThere's nowhere to hide, we call this shit genocide\nHit 'em with that (Do-do-do) and they die\nWe gon' leave 'em crucified, we call this shit genocide\nI got bitches, I got hoes, I got rare designer clothes\nNo, we ain't fuckin' with that\nYeah, there's a time and a place\nBut if you ain't comin' with the illest of raps\nCallin' yourself the greatest alive\nThen you don't deserve to do that\nNo, no, oh no, no, please do not do that\nYou gon' get smacked\nYou gon' make Bobby attack\nYou gon' make Bobby Boy snap\nYou gon' make Bobby Boy snap (Bobby Boy!)\nFuck rap\nBustin' like an addict with a semi-automatic\nWho done had it, and he ready for anybody to buck back\nHold up, catch a vibe, ain't no way in hell we leavin' nobody alive\nLeave a suicide note, fuck that\nBobby feelin' villainous, he killin' this\nI'm comin' for your man and his lady and even the baby\nI'm feelin' like I'm chika-chika-chika-chika\nChika-chika-chika-chika-chika, Slim Shady\n\nJigga-jigga-jigga-jigga-jigga like JAY-Z\nJig is up, you fuckers who didn't write anything\nAre getting washed, liga-liga-liga, like bathing\nYoung Hova, I know hitters like Yankees\nGun toters that pull triggers like crazy\nUnloadin', leave you shot up in your Rover\nYour body goes limp and slumps over\nLike A-Rod in a month lull, but he just homered\nHol' up, I said "Rover" because now your Rover is red\nLike Red Rover, so you know what I meant\nBut I roll over my opponents instead\nMakin' dog sounds 'cause I gotta keep breakin' these bars down\nI'll go slow for the speds\nBut when I go (Roof!) like the Dobermann said\nI still think the (Roof!) would go over your head (Ha-ha)\nBeast mode, motherfuckers 'bout to get hit\nWith so many foul lines, you'll think I'm a free throw\nFigured it was about time for people to eat crow\nYou about to get out-rhymed, how could I be dethroned?\nI stay on my toes like the repo, a behemoth in sheep's clothes\nFrom the East Coast to the West, I'm the ethos and I'm the G.O.A.T\nWho the best, I don't gotta say a fuckin' thing, though\n'Cause MCs know\nBut you don't wanna hear me spit the facts\nYour shit is ass like a tailbone\nOr you're trapped in your cell phone\nOr my chicken scratch, or my self-loathe\nI don't wanna fuckin' listen to you spit your raps someone else wrote\nUsed to get beat up by the big kids\nUsed to let the big kids steal my big wheel\nAnd I wouldn't do shit but just sit still\nNow money's not a big deal\nI'm rich, I wipe my ass with six mill'\nBig bills like a platypus\nA caterpillar's comin' to get the cannabis\nI'm lookin' for the smoke but you motherfuckers are scatterin'\nBatterin' everything and I've had it with the inadequate\nMan, I can see my dick is standin' stiff as a mannequin\nAnd I'm bringin' the bandana back, and the fuckin' headband again\nA handkerchief and I'm thinkin' of bringin' the fuckin' fingerless gloves back\nAnd not giving a singular fuck, like fuck rap\nI sound like a fuckin' millionaire\nWith a Derringer with a hair trigger\n'Bout to bear hug a fuckin' terrier, the Ric Flair dripper\nY'all couldn't hold a candle at a prayer vigil\nWhen I vent, they compare me to a fuckin' air duct\nI'm 'bout to bare-knuckle it, nah, fuck it\nI'm gonna go upside their head with a Nantucket\nAbraca-fuckin'-dabra\nThe track is the blood, I'm attracted, I'm attackin' it\nWhat? Dracula, fuck that shit\nI'm up, back with a thud\nMan, stop\nLook what I'm plannin', plannin', I'm plannin' to\nDo all this while ya panickin'\nAnd you're lookin' and starin' at mannequins\nAnd I'm goin' to Fanagans\nTrying to get up a plan against\nAll of the blana-kazana-ka-fam-bam-bannigans\nWhile of all the bana-kazanika Hanna in a cabana\nYou're in a cab-\nI'm in a cabana and a Janet\nI'm in a cabana chantin' all this standup banter\nWhile you don't got the stamina, you're lackin' the stamina\nYou're lackin' the stamina while you're divorcin' Harrison Ford\nAnd I'm in a Porsche on the floorboards\nWhile I'm world tourin'\nYou usin' way too many napkins, papkins\nLapkins and chapki-\nYou using ChapStick and napkins while I'm bapkin'\nFlappin' around like a bapkin'\nFlamminababbitapannitajampkin\nDammit, a can of pada-745Embed	7922
523560	gang related	172 ContributorsTranslationsItalianoGang Related Lyrics\nYeah, uh (Sinatra), yeah\n\nLivin' life like this\nGotta paint a picture when I write like this\nTales from my hood, not a sight like this\nWhere they up to no good on a night like this\nAnd they murder motherfuckers just 'cause\nType of shit I see, you probably wonder where I was\nI was in the crib, just sittin' on the rug\nBaseheads comin' through, lookin' for the plug, now (Logic)\nBorn and raised in my area\nBeautiful by day, by night, it's hysteria\nFuck around and bury ya tonight\nRidin' with my homies on sight\nMomma tell me to come in at night\nNow I really gotta go, but they never know\nLivin' life to the fullest, I gotta blow\nPo-po finna bust in the door, we got blow in the crib\nIn the kitchen over there next to the baby with the bib\nGoddamn, what it feel like, middle of the night\nWakin' up, scared for my life, never had the heat\nJust a knife, when the gat go blat like that\nGuarantee you it's a wrap, finna put you on your back like that\nJust breathe while their mama grieve\nBullet to the dome like an Aleve\nGotta leave for the premises to murder my nemesis\nNo, no, uh, uh, just stop, stop, stop\n'Fore they even call the cops\nDo it for the money and the bitches and the drugs and the props\nTell me why another body even gotta drop\nGet shot off top for some shit that was gang related\nYou might also like\nUp first at five tonight, breaking news in Gaithersburg, where a massive manhunt is underway after a deadly shooting\nIt's all unfolding in the 400 block of West Deer Park and 355\nOur Montgomery County reporter joins us with the latest tonight\nLivin' life like this\nHope little Bobby never fight like this\nStab a motherfucker with a knife like this\nAll about the money on a night like this\nRun up in the crib, put a bullet in your rib\nGot a lot to give, but I never had the chance\nNever had the chance, yeah\nStay strapped, but I hate it when I take it out\nIf you want it, I'ma lay it out\nHope my little brother make it out\nEvery night what I pray about\nWhat I pray about, check it, uh, yeah\nGot a son on the way\nBut I cling to the streets even though I wanna run away\nI imagine a better life\nWhere I never had a debt in life\nHit you with the *gunshots* in the dead of night\nSellin' crack to my own pops\nPushin' this weight on my own block\nIf I sell a brick, I could buy a house\nIf they find the key, they might lock me up\nBut I take the chance 'cause I need that shit and don't give a fuck\nTake the chance 'cause I need that shit and don't give a fuck\nGet down and lay down\nHit ya with the Beretta, you better stay down\nStray shots on the playground\nLivin' how I'm livin' with the life that I'm given\nAnybody that's ridin' with me, I'm ridin' with 'em\nShow me the enemy, and I'ma hit 'em\nThe second I bit 'em, I get 'em and hit 'em with the venom\nAin't no need to pretend I'ma never do it\nI knew it, already been through it\nI do it for the street, for the fam, for the life\nAnybody that's gang related654Embed	7922
3542151	44 more	265 ContributorsTranslationsItaliano44 More Lyrics\nAyy, bitch, I've been goin' and goin' like the Energizer\nYeah, I'm supplyin' the wood like Elijah\nIn the cut, smokin' on indica\nMight fuck around and compartmentalize ya\nThey say, they say life is a bitch\nAnd if that is the case then I'm finna surprise her\nNo, I am not an advisor, but I do advise ya\nTo pay attention, never need to mention\nI'm that motherfucker bustin' heads\nFinna push it to the ledge\nYeah, I been smokin' my meds\nAin't got no love for the feds\nCan't let fame go to yo' head\nFuck with me, watch where you tread\nI'm finna kill it instead\nI'm finna, I'm finna, I'm finna\nI will, I will, do it like I never done it\nAnd I wanna run it and I wanna keep it goin' and goin'\nLike infinity, be the only entity to ever rip it apart\nFrom the start like this, from the heart like this\nFinna murder it, a million miles a minute, no nitrous\nDoin' righteous\nI-I been, I-I-I been down this road before\nEverybody think that they do but they don't\nSwear to God that they would but they won't\nSpittin' riddles in the middle of a past-time\nMe in my mind, feelin' divine, like yeah\nFinna get it like yeah—yeah\nLike yeah, like yeah (Woo, woo, woo, woo)\nI done made 20 million dollars (Preach)\nI don't flex to be acknowledged (Preach)\nAt this point it's common knowledge (Preach)\nAll you haters been abolished (Preach)\nYou in the club throwin' dollars, but I'm savin' mine so my kids go to college (Preach)\nOr maybe whatever they wanna do (Preach)\nJust as long as they never say (Preach)\n"Daddy blew 20 million dollars (Ayy)\nHe had to flex to be acknowledged (Ayy)\nHe in the club throwin' dollars\nAnd now cannot afford to send me to college (Ayy)\nDaddy just wanna be loved\nJust like everybody wanna be accepted (Ayy)\nBut somehow he had neglected\nMe and my momma for all of this rap shit" (Ayy)\nNo, I cannot fuck with that shit (Ayy)\nNo, I cannot fuck with that\nYou might also like\nWho you know dropped an album\nBack to back to back to back to back to back again?\nI'm back again to snap again\nAnd goddamnit, it ain't no other way around it\nYeah, it's happenin', 'cause I've been livin' in a world on my own\nLeave me alone, I'm in the zone\nWhere I've been prone to destroy shit\nYou cannot avoid this, wack mothafuckas have annoyed this\nYes, you know I enjoy this\nPreach, mothafuckin' preach\nYeah, I'm tryna reach everybody in the streets\nWritin' words to the beats\nEach one teach one, yeah, I'm tryna reach one\nWho the beast one?\nThat be me, on the top to the East one\nTell me how you really wanna do it right now, time to murder this\nShout out everybody, no fuckin' around, ain't heard of this\nHeard of us, we ain't goin' nowhere, it's a herd of us\nHold up, roll up\n\nLevitated like I'm David Blaine\nLivin' a dream like I'm David Aames\nTalk all you want, we are not the same\nStep in the spot, now they know the name\nSold more albums my first week than Harry Styles and Katy Perry\nIf that ain't a sign of the times\nThen I don't know what is, man this shit is scary\n'Cause bitch, I've been blowin' up like C-4\nAnd I'm 3 for 3 like a free throw\nAnybody hatin' on the boy, take a step back and then deep-throat\nNow my phone blowin' up like ring\nLike ring, ring, ring, ring, ring, ring, ring, ring, ring, ring, ring!\nThat Kevin Durant, I'm a champion\nCheck the numbers, I'm a champion\nCan't sleep on the boy anymore\nBut the haters that love to hate gon' pop an Ambien\nStar Lord, champion\nKnow the name, now they know the alias, that's for sure\nGave 'em 44, now here's 44 more411Embed	7922
3039792	everybody	157 ContributorsEverybody Lyrics\nOkay I was gone for a minute but I'm back now\nSit the fuck back down\nSeem like everybody nowadays Hollywood\nOh, it’s like that now?\nI'ma show you mothafuckas how to act now\nI'ma show 'em how to act\nI'ma show 'em how to act\n\nOkay now picture little Bobby just a youngin' runnin' round\nWith his mans, hammer in his hands, feelin' like the man\nRun, mothafucka, run\nBefore the popo get the gun, put it to your brain like goddamn!\nEverybody know you ain't about it\nEverything you talk about I know I can live without it\nRed light, stop. Green light, go!\nEverything ain't what it seem like\nMothafucka I know!\nHold up, what you mean, where you been?\nBitch, I been in\nThis is merely the beginning again\nWhat you been living in?\nA box, under the bridge, like Anthony Kiedis?\nLooking for something to complete us\nAnd maybe lead us, fuck an elitist\nHell of a long way from equal is how they treat us\nBody of a builder with the mind of a fetus\nTurn on the television and see the vision they feed us\nAnd I wish I could erase that, face facts\nYou might also like\nEverybody people, everybody bleed, everybody need something\nEverybody love, everybody know, how it go\nEverybody people, everybody bleed, everybody need something\nEverybody love, everybody know\n\nI been knockin' doors down like a Jehovah witness\nGod as my witness, I'm with this\nBut on the real, I think I need another witness!\nIf it was 1717, black daddy, white momma wouldn't change a thing\nLight skin mothafucka certified as a house nigga\nWell I'll be God damned, go figure\nIn my blood is the slave and the master\nIt's like the devil playin' spades with the pastor\nBut he was born with the white privilege!\nMan, what the fuck is that?\nWhite people told me as a child, as a little boy, playin' with his toys\nI should be ashamed to be black\nAnd some black people look ashamed when I rap\nLike my great granddaddy didn’t take a whip to the back\nNot accepted by the black or the white\nI don't give a fuck, praise God, I could see the light\nEverybody talkin' 'bout race this, race that\nI wish I could erase that, face facts\nEverybody people, everybody bleed, everybody need something\nEverybody love, everybody know, how it go\nEverybody people, everybody bleed, everybody need something\nEverybody love, everybody know\n\nOkay I was gone for a minute but I'm back now\nSit the fuck back down\nSeem like everybody nowadays Hollywood\nOh, it's like that now?\nI'ma show you mothafuckas how to act now\nI'ma show 'em how to act\nI'ma show 'em how to act191Embed	7922
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

