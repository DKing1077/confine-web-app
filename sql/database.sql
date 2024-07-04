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
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

COPY public.songs (id, name, lyrics, artist_id) FROM stdin;
3315890	god’s plan	663 ContributorsTranslationsРусскийTürkçeEspañolPolskiItalianoDeutschFrançaisAzərbaycanca / آذربايجانGod’s Plan Lyrics\nAnd they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah\n\nI been movin' calm, don't start no trouble with me\nTryna keep it peaceful is a struggle for me\nDon't pull up at 6 AM to cuddle with me\nYou know how I like it when you lovin' on me\nI don't wanna die for them to miss me\nYes, I see the things that they wishin' on me\nHope I got some brothers that outlive me\nThey gon' tell the story, shit was different with me\n\nGod's plan, God's plan\nI hold back, sometimes I won't, yeah\nI feel good, sometimes I don't (Ayy, don't)\nI finessed down Weston Road (Ayy, 'nessed)\nMight go down a G-O-D (Yeah, wait)\nI go hard on Southside G (Yeah, wait)\nI make sure that north-side eat\nAnd still\n\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah, ayy, ayy\nYou might also like\nShe say, "Do you love me?" I tell her, "Only partly\nI only love my bed and my mama, I'm sorry"\nFifty Dub, I even got it tatted on me\nEighty-one, they'll bring the crashers to the party\nAnd you know me\nTurn the O2 into the O3, dog\nWithout 40, Oli, there'd be no me\n'Magine if I never met the broskies\n\nGod's plan, God's plan\nI can't do this on my own, ayy (No, ayy)\nSomeone watchin' this shit close (Yep, close)\nI've been me since Scarlett Road, ayy (Road, ayy)\nMight go down as G-O-D (Yeah, wait, yeah)\nI go hard on Southside G (Ayy, wait, ayy)\nI make sure that north-side eat, yeah\nAnd still\n\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah, yeah\nBad things\nIt's a lot of bad things that they wishin' and wishin'\nAnd wishin' and wishin', they wishin' on me\nYeah942Embed	130
3807759	in my feelings	377 ContributorsTranslationsไทย / Phasa ThaiPortuguêsEspañolDeutschIn My Feelings Lyrics\nTrap, TrapMoneyBenny\nThis shit got me in my feelings\nGotta be real with it, yeah\n\nKiki, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nKB, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\n\nLook, the new me is really still the real me\nI swear you gotta feel me before they try and kill me\nThey gotta make some choices, they runnin' out of options\n'Cause I've been goin' off and they don't know when it's stoppin'\nAnd when you get to toppin', I see that you've been learnin'\nAnd when I take you shoppin', you spend it like you earned it\nAnd when you popped off on your ex he deserved it\nI thought you were the one from the jump, that confirmed it\nTrapMoneyBenny, ayy\nI buy you Champagne but you love some Henny\nFrom the block like you Jenny\nI know you special, girl, 'cause I know too many\nYou might also like\n'Resha, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nJT, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I need ya\nAnd I'm down for you always\n\nTwo bad bitches and we kissin' in the Wraith\nKissin'-kissin' in the Wraith, kiss-kissin' in the Wraith\nI need that black card and the code to the safe\nCode to the safe, code-code to the safe-safe\nI show him how that neck work\nFuck that Netflix and chill, what's your net-net-net worth?\n'Cause I want ya, and I need ya\nAnd I'm down for you always\nYeah, yeah, yeah, yeah, he bad\nAnd I'm down for you always\nYeah, yeah, yeah, guess who's back\nAnd I'm down for you always\nD-down for you al–\nBlack biggy biggy black biggy black blake\nD-d-down for you always\nI got a new boy, and that nigga trade\nKiki, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want you, and I need you\nAnd I'm down for you always\nKB, do you love me? Are you riding?\nSay you'll never ever leave from beside me\n'Cause I want ya, and I–\n\nSkate and Smoke and Rap\nNow let me see you\nBring that ass, bring that ass, bring that ass back\nB-bring that ass, bring that ass, bring that ass back\nShawty say the nigga that she with can't hit\nBut shawty, I'ma hit it, hit it like I can't miss\nNow let me see you\nClap that ass, you're the only one I love\nClap that ass, clap-clap that ass\nBring that ass back\nClap-clap-clap that ass, you're the only one I love\nLet's go, let's go, let's go\nBring that ass back\n\nTrap, TrapMoneyBenny\nThis shit got me in my feelings\nGotta be real with it, ayy, yup\n(BlaqNmilD, you a genius, you diggin' me?)\nYou know what, I don't even care, I need a photo with Drake\nBecause my Instagram is weak as fuck\nI'm just being real, my shit, look—217Embed	130
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

