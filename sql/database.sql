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



--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

INSERT INTO public.artists (id, name) VALUES (130, 'Drake');
INSERT INTO public.artists (id, name) VALUES (72, 'Kanye West');


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: genius_admin
--

INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3315890, 'God’s Plan', '
And they wishin'' and wishin''
And wishin'' and wishin'', they wishin'' on me
Yeah

I been movin'' calm, don''t start no trouble with me
Tryna keep it peaceful is a struggle for me
Don''t pull up at 6 AM to cuddle with me
You know how I like it when you lovin'' on me
I don''t wanna die for them to miss me
Yes, I see the things that they wishin'' on me
Hope I got some brothers that outlive me
They gon'' tell the story, shit was different with me

God''s plan, God''s plan
I hold back, sometimes I won''t, yeah
I feel good, sometimes I don''t (Ayy, don''t)
I finessed down Weston Road (Ayy, ''nessed)
Might go down a G-O-D (Yeah, wait)
I go hard on Southside G (Yeah, wait)
I make sure that north-side eat
And still

Bad things
It''s a lot of bad things that they wishin'' and wishin''
And wishin'' and wishin'', they wishin'' on me
Bad things
It''s a lot of bad things that they wishin'' and wishin''
And wishin'' and wishin'', they wishin'' on me
Yeah, ayy, ayy
You might also like
She say, "Do you love me?" I tell her, "Only partly
I only love my bed and my mama, I''m sorry"
Fifty Dub, I even got it tatted on me
Eighty-one, they''ll bring the crashers to the party
And you know me
Turn the O2 into the O3, dog
Without 40, Oli, there''d be no me
''Magine if I never met the broskies

God''s plan, God''s plan
I can''t do this on my own, ayy (No, ayy)
Someone watchin'' this shit close (Yep, close)
I''ve been me since Scarlett Road, ayy (Road, ayy)
Might go down as G-O-D (Yeah, wait, yeah)
I go hard on Southside G (Ayy, wait, ayy)
I make sure that north-side eat, yeah
And still

Bad things
It''s a lot of bad things that they wishin'' and wishin''
And wishin'' and wishin'', they wishin'' on me
Yeah, yeah
Bad things
It''s a lot of bad things that they wishin'' and wishin''
And wishin'' and wishin'', they wishin'' on me
Yeah', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (70324, 'Mercy', '
Well, it is a weepin'' and a moanin'' and a gnashin'' of teeth
It is a weepin'' and a moanin'' and a gnashin'' of teeth
It is a—when it comes to my sound which is the champion sound
Believe, believe
O-o-o-o-o-okay, Lamborghini Mercy
Your chick, she so thirsty
I-I-I-I-I''m in that two-seat Lambo
With your girl, she tryna jerk me (Believe)
O-o-o-o-o-okay, Lamborghini Mercy
Your chick, she so thirsty
I-I-I-I-I''m in that two-seat Lambo
With your girl, she tryna jerk me
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo
With your girl, she tryna jerk me (Woah, believe)
O-o-o-o-o-okay, Lamborghini Mercy
Your chick, she so thirsty (Boy)
I-I-I-I-I''m in that two-seat Lambo (Boy)
With your girl, she tryna jerk me

Okay, drop it to the floor, make that ass shake (Shake, shake)
Woah, make the ground move: that''s an ass quake
Built a house up on that ass: that''s an ass-state
Roll–roll–roll my weed on it: that''s an ass tray
Say, Ye, say, Ye, don''t we do this every day–day? (Huh?)
I work them long nights, long nights to get a payday (Huh?)
Finally got paid, now I need shade and a vacay
And niggas still hatin''
So much hate, I need a AK (AK)
Now we out in Paris, yeah, I''m Perrierin''
White girls politickin'' and that''s that Sarah Palin
Get–get–get–get–get–gettin'' hot, Californicatin''
I give her that D, ''cause that''s where I was born and raised in
You might also like
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve)
With your girl, she tryna jerk me (Swerve, believe)
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve)
With your girl, she tryna jerk me (Swerve)
Well, it is a weepin'' and a moanin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a weepin'' and a mournin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a—when it comes to my sound (Swerve)
Which is the champion sound (Swerve)
Believe, believe (Swerve)
Believe, believe (Swerve)
Yuugh! It''s prime time, my top back, this pimp game, ho
I''m red leather, this cocaine, I''m Rick James, ho
I''m bill-droppin'', Ms. Pac-Man, this pill-poppin'' ass ho
I''m poppin'' too, these blue dolphins need two coffins
All she want is some heel money
All she need is some bill money
He take his time, he counts it out
I weighs it up, that''s real money
Check the neck, check the wrist
Them heads turnin'': that''s exorcist
My Audemars like Mardi Gras
That''s Swiss time, and that''s excellence
Two-door preference
Roof gone, George Jefferson
That white frost on that pound cake
So your Duncan Hines is irrelevant, woo
Lambo Murciélago
She go wherever I go
Wherever we go, we do it pronto, it''s like—
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve)
With your girl, she tryna jerk me (Swerve, believe)
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve)
With your girl, she tryna jerk me (Swerve)
Well, it is a weepin'' and a moanin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a weepin'' and a mournin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a—when it comes to my sound (Swerve)
Which is the champion sound (Swerve)
Believe, believe (Swerve)
Believe (Swerve)

Well, it is a weepin'' and a moanin''
And a gnashin'' of teeth in the dancehall
And who no have teeth gwan rub pon dem gums
Cuh when time it comes to my sound
Which is the champion sound
The bugle has blown fi many times
And it still have one more time left
Cuh the amount of stripe weh deh pon our shoulder
Let the suicide doors up
I threw suicides on the tour bus
I threw suicides on the private jet
You know what that mean, I''m fly to death
I step in Def Jam buildin'' like I''m the shit
Tell ''em gimme fifty million or I''ma quit
Most rappers'' taste level ain''t at my waist level
Turn up the bass ''til it''s up-in-yo-face level
Don''t do no press but I get the most press, kid
Plus, yo, my bitch make your bitch look like Precious
Somethin'' ''bout Mary, she gone off that molly
Now the whole party is melting like Dalí
Now everybody is movin'' they body
Don''t sell me apartment, I''ll move in the lobby (Yah)
Niggas is loiterin'' just to feel important
You gon'' see lawyers and niggas in Jordans (2 Chainz)
Okay, now catch up to my campaign
Coupe the color of mayonnaise
I''m drunk and high at the same time
Drinkin'' champagne on the airplane (Tell ''em)
Spit rounds like a gun range (Baow)
Beat it up like Rampage
Hundred bands, cut your girl
Now your girl need a Band-Aid (Damn)
Grade A, A1
Chain the color of Akon
Black diamonds, backpack rhymin''
Co-signed by Louis Vuitton (Yep)
Horsepower, horsepower
All this Polo on, I got horsepower
Pound of this cost four thousand
Now I make it rain, she want more showers
Rain (Rain) pourin'' (Pourin'')
All my cars is foreign (Foreign)
All my broads is foreign (Foreign)
Money tall like Jordan
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve)
With your girl, she tryna jerk me (Swerve)
O-o-o-o-o-okay, Lamborghini Mercy (Swerve)
Your chick, she so thirsty (Swerve)
I-I-I-I-I''m in that two-seat Lambo (Swerve, believe)
With your girl, she tryna jerk me (Swerve, believe)
Well, it is a weepin'' and a moanin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a weepin'' and a moanin'' (Swerve)
And a gnashin'' of teeth (Swerve)
It is a—when it comes to my sound (Swerve)
Which is the champion sound (Swerve)
Believe, believe (Swerve)
Believe, believe (Swerve)
Well, it is a weepin'' and a moanin'' and a gnashin'' of teeth
It is a weepin'' and a moanin'' and a gnashin'' of teeth
It is a—when it comes to my sound which is the champion sound
Believe, believe, believe, believe', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1149, 'Monster', '
I shoot the lights out
Hide ''til it''s bright out
Oh, just another lonely night
Are you willing to sacrifice your life?

Bitch, I''m a monster, no-good bloodsucker
Fat motherfucker, now look who''s in trouble
As you run through my jungles, all you hear is rumbles
Kanye West samples, here''s one for example

Gossip, gossip, nigga, just stop it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands at the concert
Profit, profit, nigga, I got it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands
Uh, the best living or dead hands down, huh
Less talk, more head right now, huh
And my eyes more red than the devil is
And I''m ''bout to take it to another level, bitch
Matter who you go and get, ain''t nobody cold as this
Do the rap and the track, triple-double, no assists
And my only focus is stayin'' on some bogus shit
Arguin'' with my older bitch, actin'' like I owe her shit
I heard the beat, the same raps that gave the track pain
Bought the chain that always give me back pain
Fucking up my money so, yeah, I had to act sane
Chi nigga, but these hoes love my accent
Chick came up to me and said, "This the number to dial
If you wanna make your number one your number two now"
Mix that Goose and Malibu, I call it "Malibooyah"
Goddamn, Yeezy always hit ''em with a new style
Know that motherfucker, well, what you gon'' do now?
Whatever I wanna do, gosh, it''s cool now
Know I''m gonna do, ah, it''s the new now
Think you motherfuckers really really need to cool out
''Cause you''ll never get on top of this
So, mami, best advice is just to get on top of this
Have you ever had sex with a pharaoh?
Ah, put the pussy in a sarcophagus
Now she claiming that I bruised her esophagus
Head of the class and she just won a swallowship
I''m livin'' in the future so the present is my past
My presence is a present, kiss my ass
You might also like
Gossip, gossip, nigga, just stop it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands at the concert (Yeah)
Profit, profit, nigga, I got it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands
Sasquatch, Godzilla, King Kong, Loch Ness
Goblin, ghoul, a zombie with no conscience
Question, what do these things all have in common?
Everybody knows I''m a motherfuckin'' monster
Conquer, stomp ya, stop your silly nonsense
Nonsense, none of you niggas know where the swamp is
None of you niggas have seen the carnage that I''ve seen
I still hear fiends scream in my dreams
Murder, murder in black convertibles, I
Kill a block, I murder the avenues, I
Rape and pillage your village, women and children
Everybody want to know what my Achilles heel is
Love, I don''t get enough of it
All I get is these vampires and bloodsuckers
All I see is these niggas I made millionaires
Millin'' about, spillin'' they feelings in the air
All I see is these fake fucks with no fangs
Tryna draw blood from my ice-cold veins
I smell a massacre
Seems to be the only way to back you bastards up
Gossip, gossip, nigga, just stop it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands at the concert
Profit, profit, nigga, I got it
Everybody know I''m a motherfuckin'' monster
I''ma need to see your fuckin'' hands at the concert
I''ma need to see your fuckin'' hands
Pull up in the monster, automobile gangsta
With a bad bitch that came from Sri Lanka
Yeah, I''m in that Tonka, color of Willy Wonka
You could be the king, but watch the queen conquer
Okay, first things first, I''ll eat your brains
Then I''ma start rocking gold teeth and fangs
''Cause that''s what a motherfuckin'' monster do
Hair dresser from Milan, that''s the monster ''do
Monster Giuseppe heel, that''s the monster shoe
Young Money is the roster and a monster crew
And I''m all up, all up, all up in the bank with the funny face
And if I''m fake, I ain''t notice ''cause my money ain''t
So let me get this straight, wait, I''m the rookie?
But my features and my shows ten times your pay?
50K for a verse, no album out
Yeah, my money''s so tall that my Barbies got to climb it
Hotter than a Middle Eastern climate, violent
Tony Matterhorn, dutty wine it, wine it
Nicki on them titties when I sign it
That''s how these niggas so one-track-minded
But really, really I don''t give an F-U-C-K
"Forget Barbie, fuck Nicki, sh-she''s fake"
"She on a diet," but my pockets eatin'' cheesecake
And I''ll say, bride of Chucky, it''s child''s play
Just killed another career, it''s a mild day
Besides, Ye, they can''t stand besides me
I think me, you, and Am'' should ménage Friday
Pink wig, thick ass, give ''em whiplash
I think big, get cash, make ''em blink fast
Now look at what you just saw, this is what you live for
Ah, I''m a motherfuckin'' monster
I, I crossed the limelight
And I''ll, I''ll let God decide
And I, I wouldn''t last these shows
So I, I am headed home (Headed home)
I, I crossed the limelight
And I''ll, I''ll let God decide, ''cide (No)
And I, I wouldn''t last these shows
So I, I am headed home (Head home)
I, I crossed the limelight (No, the limelight)
And I''ll, I''ll let God decide, ''cide
And I, I wouldn''t last these shows
So I, I am headed home
', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2412669, 'Father Stretch My Hands Pt. 1', '
You''re the only power (Power)
You''re the only power that can
You''re the only power (Power)
You''re the only power that can
Oh, oh, oh, Father
(If Young Metro don''t trust you, I''m gon'' shoot you)

Beautiful mornin'', you''re the sun in my mornin'', babe (Who can I turn to?)
Nothin'' unwanted (After all, who can I turn to?)
Beautiful mornin'', you''re the sun in my mornin'', babe (If I don''t turn to you)
Nothin'' unwanted (No other help I know, I stretch my hands)

I just wanna feel liberated, I-I, na-na-na (Who can I turn to?)
I just wanna feel liberated, I-I, na-na-na (After all, who can I turn to?)
If I ever instigated, I am sorry (If I don''t turn to you)
Tell me who in here could relate, I-I-I (No other help I know, I stretch my hands)

Now, if I fuck this model
And she just bleached her asshole
And I get bleach on my T-shirt
I''ma feel like an asshole
I was high when I met her
We was down in Tribeca
She''ll get under your skin if you let her
She''ll get under your skin if you— (Uh)
I don''t even wanna talk about it
I don''t even wanna talk about it
I don''t even wanna say nothin''
Everybody gon'' say somethin''
I''d be worried if they said nothin''
Remind me where I know you from
She lookin'' like she owe you somethin''
You know just what we want
I wanna wake up with you in my—
You might also like
Beautiful mornin'', you''re the sun in my mornin'', babe (Who can I turn to?)
Beautiful mornin''
Nothin'' unwanted (After all, who can I turn to?)
Beautiful mornin'', you''re the sun in my mornin'', babe (If I don''t turn to you)
Nothin'' unwanted (No other help I know)

I just wanna feel liberated, I-I, na-na-na (Who can I turn to?)
I just wanna feel liberated, I-I, na-na-na (After all, who can I turn to?)
If I ever instigated, I am sorry (If I don''t turn to you)
Tell me who in here could relate, I-I-I (No other help I know, I stretch my hands)', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2413549, 'Ultralight Beam', '
(Yes, God)
We don''t want no devils in the house, God (Yes, Lord)
We want the lord (Yes, Jesus)
And that''s it (Yes, God)
Hallej— hand over Satan (Yes, Jesus)
Jesus praise the Lord (Yes, God)
Hallelujah, God (Yes, God)
We don''t want no devils in the house, God (Yes, Lord)
We want the lord (Yes, Jesus)
And that''s it (Yes, God)
Hallej— hand over Satan (Yes, Jesus)
Jesus praise the Lord (Yes, God)
I''m tryna keep my faith
We on an ultralight beam
We on an ultralight beam
This is a God dream
This is a God dream
This is everything
This is everything

Deliver us serenity
Deliver us peace
Deliver us loving
We know we need it
You know we need it
You know we need it
That''s why we need You now, oh
Pray for Paris
Pray for the parents
This is a God dream
This is a God dream
This is a God dream
You might also like
We on an ultralight beam
We on an ultralight beam
This is a God dream
This is a God dream
This is everything
Everything (Thing, thing, thing)

I''m tryna keep my faith
But I''m looking for more
Somewhere I can feel safe
And end my holy war
I''m tryna keep my faith
So why send oppression, not blessings?
Why, oh, why''d You do me wrong? (More)
You persecute the weak
Because it makes You feel so strong (Safe)
Don''t have much strength to fight
So I look to the light (War)
To make these wrongs turn right
Head up high, I look to the light
Hey, ''cause I know that You''ll make everything alright
And I know that You''ll take good care of Your child
Oh, no longer am afraid of the night
''Cause I, I look to the light
When they come for You, I will shield Your name
I will field their questions, I will feel Your pain
No one can judge
They don''t, they don''t know
They don''t know

Foot on the Devil''s neck ''til it drifted, Pangaea
I''m moving all my family from Chatham to Zambia
Treat the demons just like Pam
I mean, I fuck with your friends, but damn, Gina
I been this way since Arthur was anteater
Now they wanna hit me with the woo wap, the bam
Tryna snap photos of familia
My daughter look just like Sia, you can''t see her
You can feel the lyrics, the spirit coming in braille
Tubman of the underground, come and follow the trail
I made “Sunday Candy,” I''m never going to hell
I met Kanye West, I''m never going to fail
He said, "Let''s do a good ass job with ''Chance 3''"
I hear you gotta sell it to snatch the Grammy
Let''s make it so free and the bars so hard
That there ain''t one gosh darn part you can''t tweet
This is my part, nobody else speak
This is my part, nobody else speak
This little light of mine
Glory be to God, yeah
I''ma make sure that they go where they can''t go
If they don''t wanna ride, I''ma still give ''em raincoats
Know what God said when He made the first rainbow
Just throw this at the end if I''m too late for the intro
Ugh, I''m just having fun with it
You know that a nigga was lost
I laugh in my head
''Cause I bet that my ex looking back like a pillar of salt
Ugh, ''cause they''ll flip the script on your ass like Wesley and Spike
You cannot mess with the light
Look at lil'' Chano from 79th
We on an ultralight beam
We on an ultralight beam
This is a God dream
This is a God dream
This is everything
Everything

(Yes, God)
(Hallelujah)
I''m tryna keep my faith
(Yes, Jesus)
But I''m looking for more
Somewhere I can feel safe
And end my holy war
Father, this prayer is for everyone that feels they''re not good enough
This prayer''s for everybody that feel that they''re too messed up
For everyone that feels they''ve said "I''m sorry" too many times
You can never go too far when you can''t come back home again
That''s why I need...
Faith, more, safe, war', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (158615, 'Bound 2', '
B-B-B-B-Bound to fall in love
Bound to fall in love
Uh-huh, honey
All them other niggas lame, and you know it now
When a real nigga hold you down, you s''posed to drown
(Bound to fall in love)
Bound
(B-B-B-B-Bound to fall in love)
Bound
Uh-huh, honey

What you doin'' in the club on a Thursday?
She say she only here for her girl birthday
They ordered champagne but still look thirsty
Rock Forever 21, but just turned thirty
I know I got a bad reputation
Walk-around-always-mad reputation
Leave-a-pretty-girl-sad reputation
Start a Fight Club, Brad reputation
I turnt the nightclub out of the basement
I''ll turn the plane around, your ass keep complainin''
How you gon'' be mad on vacation?
Dutty wining ''round all these Jamaicans
Uh, this that prom shit
This that what-we-do-don''t-tell-your-mom shit
This that red-cup-all-on-the-lawn shit
Got a fresh cut, straight out the salon, bitch
You might also like
I know you''re tired of lovin'', of lovin'' (Oh)
With nobody to love, nobody, no—
Uh-huh, honey
Close your eyes and let the word paint a thousand pictures
One good girl is worth a thousand bitches
(Bound to fall in love)
Bound
(Bound to fall in love)
Bound
Uh-huh, honey

I wanna fuck you hard on the sink
After that, give you somethin'' to drink
Step back, can''t get spunk on the mink
I mean damn, what would Jeromey Romey Romey Rome think?
Hey, you remember where we first met?
Okay, I don''t remember where we first met
But hey, admittin'' is the first step
And hey, you know ain''t nobody perfect
And I know, with the hoes I got the worst rep
But hey, their backstroke I''m tryna perfect
And hey, ayo, we made it: Thanksgivin''
So hey, maybe we can make it to Christmas
She asked me what I wished for on my wishlist
Have you ever asked your bitch for other bitches?
Maybe we could still make it to the church steps
But first, you gon'' remember how to forget
After all these long-ass verses
I''m tired, you tired, Jesus wept
I know you''re tired (Tired) of lovin'', of lovin''
With nobody to love, nobody, nobody
So just grab somebody, no leavin'' this party
With nobody to love, nobody, nobody
Uh-huh, honey

Jerome''s in the house, watch your mouth
Jerome''s in the house, watch your mouth
(Bound to fall in love)
Bound
(Bound to fall in love)
Bound
Uh-huh, honey
', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (152640, 'New Slaves', '
Chill, chill, chill, chill, chill, chill
Chill, chill, chill, chill, chill, chill
Chill, chill, chill, chill, chill, chill
Chill, chill, chill, chill, chill, chill
My mama was raised in the era when
Clean water was only served to the fairer skin
Doin'' clothes, you would''ve thought I had help
But they wasn''t satisfied unless I picked the cotton myself
You see it''s broke nigga racism
That''s that, "Don''t touch anything in the store"
And it''s rich nigga racism
That''s that, "Come in, please buy more"
"What you want, a Bentley? Fur coat? A diamond chain?
All you blacks want all the same things"
Used to only be niggas, now everybody playin''
Spendin'' everything on Alexander Wang
New slaves

You see it''s leaders and it''s followers
But I''d rather be a dick than a swallower
You see it''s leaders and it''s followers
But I''d rather be a dick than a swallower
You might also like
I throw these Maybach keys
I wear my heart on the sleeve
I know that we the new slaves
I see the blood on the leaves
I see the blood on the leaves
I see the blood on the leaves
I know that we the new slaves
I see the blood on the leaves
They throwin'' hate at me
Want me to stay at ease
Fuck you and your corporation
Y''all niggas can''t control me
I know that we the new slaves
I know that we the new slaves
I''m ''bout to wild the fuck out
I''m goin'' Bobby Boucher
I know that pussy ain''t free
You niggas pussy, ain''t me
Y''all throwin'' contracts at me
You know that niggas can''t read
Throw on some Maybach keys
Fuck it, c''est la vie
I know that we the new slaves
Y''all niggas can''t fuck with me
Y''all niggas can''t fuck with Ye
Y''all niggas can''t fuck with Ye
I''ll move my family out the country
So you can''t see where I stay
So go and grab the reporters
So I can smash their recorders
See, they''ll confuse us with some bullshit
Like the New World Order
Meanwhile the DEA
Teamed up with the CCA
They tryna lock niggas up
They tryna make new slaves
See, that''s that privately owned prison
Get your peace today
They prolly all in the Hamptons
Braggin'' ''bout what they made
Fuck you and your Hampton house
I''ll fuck your Hampton spouse
Came on her Hampton blouse
And in her Hampton mouth
Y''all ''bout to turn shit up
I''m ''bout to tear shit down
I''m ''bout to air shit out
Now what the fuck they gon'' say now?
Nothing bad, nothing bad, noth—
Noth-Noth—, —ing bad, noth— (Noth-Noth—)
Bad, nothing bad, nothing bad
Nothing—

I won''t end this fight, not this time again
So long, so long, so long, you cannot survive
And I''m not dyin'', and I can''t lose
I can''t lose, no, I can''t lose
''Cause I can''t leave it to you
So let''s get too high, get too high again
Too high again, too high, ooh hoo-hoo-hooh, woo
Yeah, h-h-h-high, h-high-high, high-high high-igh-high-high
H-high-igh, yeah, high, high-igh
Egyszer a Nap úgy elfáradt (Yeah, mhm-igh)
Elaludt mély zöld tó ölén
Az embereknek fájt a sötét
Ő megsajnált, eljött közénk
', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1295, 'Runaway', '
Look at ya, look at ya, look at ya, look at ya
Look at ya, look at ya, look at ya, look at ya
Look at ya, look at ya, look at ya, look at ya
Look at ya, look at ya, look at ya, look at ya (Ladies and gentlemen, ladies, ladies and gentlemen)

And I always find, yeah, I always find something wrong
You been puttin'' up with my shit just way too long
I''m so gifted at finding what I don''t like the most
So I think it''s time for us to have a toast

Let''s have a toast for the douchebags
Let''s have a toast for the assholes
Let''s have a toast for the scumbags
Every one of them that I know
Let''s have a toast for the jerk-offs
That''ll never take work off
Baby, I got a plan
Run away fast as you can

She find pictures in my email
I sent this bitch a picture of my dick
I don''t know what it is with females
But I''m not too good at that shit
See, I could have me a good girl
And still be addicted to them hoodrats
And I just blame everything on you
At least you know that''s what I''m good at
You might also like
And I always find, yeah, I always find
Yeah, I always find something wrong
You been puttin'' up with my shit just way too long
I''m so gifted at finding what I don''t like the most
So I think it''s time for us to have a toast

Let''s have a toast for the douchebags
Let''s have a toast for the assholes
Let''s have a toast for the scumbags
Every one of them that I know
Let''s have a toast for the jerk-offs
That''ll never take work off
Baby, I got a plan
Run away fast as you can

Run away from me, baby
Ah, run away
Run away from me, baby (Look at ya, look at ya, look at ya)
Run away
When it starts to get crazy (Look at ya, look at ya, look at ya)
Then run away
Babe, I got a plan, run away as fast as you can
Run away from me, baby
Run away
Run away from me, baby (Look at, look at, look at, look at, look at, look at, look at ya)
Run away
When it starts to get crazy (Look at ya, look at ya, look at ya, look at ya)
Why can''t she just run away?
Baby, I got a plan
Run away as fast as you can (Look at ya, look at ya, look at ya)
Twenty-four seven, three sixty-five, pussy stays on my mind
I-I-I-I did it, alright, alright, I admit it
Now pick your next move, you could leave or live with it
Ichabod Crane with that motherfuckin'' top off
Split and go where? Back to wearing knockoffs?
Haha, knock it off, Neimans, shop it off
Let''s talk over mai tais, waitress, top it off
Hoes like vultures, wanna fly in your Freddy loafers
You can''t blame ''em, they ain''t never seen Versace sofas
Every bag, every blouse, every bracelet
Comes with a price tag, baby, face it
You should leave if you can''t accept the basics
Plenty hoes in the baller-nigga matrix
Invisibly set, the Rolex is faceless
I''m just young, rich, and tasteless, P

Never was much of a romantic
I could never take the intimacy
And I know I did damage
''Cause the look in your eyes is killing me
I guess you knew of that advantage
''Cause you could blame me for everything
And I don''t know how I''ma manage
If one day, you just up and leave
And I always find, yeah, I always find something wrong
You been puttin'' up with my shit just way too long
I''m so gifted at finding what I don''t like the most
So I think it''s time for us to have a toast

Let''s have a toast for the douchebags
Let''s have a toast for the assholes
Let''s have a toast for the scumbags
Every one of them that I know
Let''s have a toast for the jerk-offs
That''ll never take work off
Baby, I got a plan
Run away fast as you can

', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (167180, 'Blood On the Leaves', '
Strange fruit hangin'' from the poplar trees
Blood on the leaves

I just need to clear my mind now
It''s been racin'' since the summertime
Now I''m holdin'' down the summer now
And all I want is what I can''t buy now
''Cause I ain''t got the money on me right now
And I told you to wait
Yeah, I told you to wait
So I''ma need a little more time now
''Cause I ain''t got the money on me right now
And I thought you could wait
Yeah, I thought you could wait
These bitches surroundin'' me (Black bodies)
All want something out me
Then they talk about me
Would be lost without me
We could''ve been somebody
Thought you''d be different ''bout it
Now I know you naughty
So let''s get on with it
You might also like
We could''ve been somebody
''Stead, you had to tell somebody
Let''s take it back to the first party
When you tried your first molly
And came out of your body
And came out of your body
Running naked down the lobby
And you were screamin'' that you love me
Before the limelight tore ya
Before the limelight stole ya
Remember we were so young
When I would hold you
Before the blood on the leaves
I know there ain''t wrong with me
Something strange is happenin''

You could''ve been somebody
We could''ve, ugh, we could''ve been somebody
Or was it on the first party
When we tried our first molly
And came out of our body
And came out of our body
Before they call lawyers
Before you tried to destroy us
How you gon'' lie to the lawyer?
It''s like I don''t even know ya
I gotta bring it back to the ''nolia
Fuck them other niggas ''cause I''m down with my niggas
Fuck them other niggas ''cause I''m down with my niggas
Fuck them other niggas ''cause I''m down with my niggas
I ride with my niggas, I''d die for my...

To all my second-string bitches, tryin'' get a baby
Tryin'' get a baby, now you talkin'' crazy
I don''t give a damn if you used to talk to JAY-Z
He ain''t with you, he with Beyoncé, you need to stop actin'' lazy
She Instagram herself like #BadBitchAlert
He Instagram his watch like #MadRichAlert
He only wanna see that ass in reverse
Two-thousand-dollar bag with no cash in your purse
Now you sittin'' courtside, wifey on the other side
Gotta keep ''em separated, I call that apartheid
Then she said she pregnant-ated, that''s the night your heart died
Then you gotta go into your girl and report that
Main reason ''cause your pastor said you can''t abort that
Now your driver say that new Benz, you can''t afford that
All that cocaine on the table, you can''t snort that
That go into that, all that money that the court got
All in on that alimony, uh
Yeah-yeah, she got you, homie, yeah
''Til death, but do your part, uh
Unholy matrimony
That summer night holdin'' long and long, ''din long
No waiting for the summer rose and (Breeze)
And breathe and breathe
And breathe and breathe
And breathe and breathe
And live and learn
And live and learn
And livin'' and livin'' like I’m lonely
Lonely, lonely
And livin'' all I have
And livin'' all
And live
And live', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (152933, 'Black Skinhead', '

For my theme song (Black)
My leather black jeans on (Black)
My by-any-means on
Pardon, I''m getting my scream on (Black)
Enter the kingdom (Black)
But watch who you bring home
They see a black man with a white woman
At the top floor they gone come to kill King Kong
Middle America packed in (Black)
Came to see me in my black skin (Black)
Number one question they''re askin''
Fuck every question you askin'' (Black)
If I don''t get ran out by Catholics (Black)
Here come some conservative Baptists
Claiming I''m overreactin''
Like them black kids in Chiraq, bitch

Four in the mornin'', and I''m zonin''
They say I''m possessed, it''s an omen
I keep it 300, like the Romans
300 bitches, where the Trojans?
Baby, we livin'' in the moment
I''ve been a menace for the longest
But I ain''t finished, I''m devoted
And you know it, and you know it
You might also like
So follow me up ''cause this shit ''bout to go (Down)
I''m doing 500, I''m outta control (Now)
But there''s nowhere to go (Now)
And there''s no way to slow (Down)
If I knew what I knew in the past
I would''ve been blacked out on your ass

Four in the mornin'', and I''m zonin''
They say I''m possessed, it''s an omen
I keep it 300, like the Romans
300 bitches, where the Trojans?
Baby, we livin'' in the moment
I''ve been a menace for the longest
But I ain''t finished, I''m devoted
And you know it, and you know it

Stop all that coon shit (Black)
Early morning cartoon shit (Black)
This is that goon shit
Fuck up your whole afternoon shit
I''m aware I''m a wolf
Soon as the moon hit
I''m aware I''m a king
Back out the tomb, bitch (Black)
Black out the room, bitch (Black)
Stop all that coon shit (Black)
These niggas ain''t doin'' shit (Black)
Them niggas ain''t doin'' shit
Come on, homie, what happened?
You niggas ain''t breathin'', you gaspin''
These niggas ain''t ready for action
Ready—ready for action—action
Four in the mornin'', and I''m zonin''
I think I''m possessed, it''s an omen
I keep it 300 like the Romans
300 bitches, where the Trojans?
Baby, we livin'' in the moment
I''ve been a menace for the longest
But I ain''t finished, I''m devoted
And you know it, and you know it

So follow me up ''cause this shit ''bout to go (Down)
I''m doing 500, I''m outta control (Now)
But there''s nowhere to go (Now)
And there''s no way to slow (Down)
If I knew what I knew in the past
I would''ve been blacked out on your ass

God! God! God! God!
God! God! God! God!
God! God! God!', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2403856, 'No More Parties in LA', '
La-di-da-da-a, da-a (I like this flavor)
La-da-da-da-di-da-da-a, la-a (La-a, la-a, la-a)
Let me tell you, I''m out here
From a very far away place
All for a chance to be a star
Nowhere seems to be too far

No more parties in L.A.
Please, baby, no more parties in L.A., uh
No more parties in L.A.
Please, baby, no more parties in L.A., uh
No more (Los Angeles)
Please (Shake that body, party that bod—)
Please (Shake that body, party that bod—)
Please (Shake that body, party that body)

Hey, baby, you forgot your Ray Bans
And my sheets still orange from your spray-tan
It was more than soft porn for the K-Man
She remember my Sprinter, said "I was in the grape van"
Um—well, cutie, I like your bougie booty
Come, Erykah Badu-me—well, let''s make a movie
Hell, you know my repertoire is like a wrestler
I show you the ropes, connect the dots
A country girl in North Hollywood
Mama used to cook red beans and rice
Now it''s Denny''s, 4 in the morning, spoil your appetite
Liquor pouring and niggas swarming your section with erection
Smoke in every direction, middle finger pedestrians
R&B singers and lesbians, rappers and managers
Music and iPhone cameras
This shit unanimous for you, it''s damaging for you, I think
That pussy should only be holding exclusive rights to me, I mean
He flew you in this motherfucker on first class
Even went out his way so you could check in an extra bag
Now you wanna divide the yam like it equate the math?
That shit don''t add up, you''re making him mad as fuck
She said she came out here to find an A-list rapper
I said, "Baby, spin that ''round and say the alphabet backwards"
You''re dealing with malpractice, don''t kill a good nigga''s confidence
Just ''cause he a nerd and you don''t know what a condom is
The head still good, though; the head still good, though
Make me say "Nam Myoho Renge Kyo"
Make a nigga say big words and act lyrical
Make me get spiritual, make me believe in miracles
Buddhist monks and Cap''n Crunch cereal
Lord have mercy, thou will not hurt me
Five buddies all herded up on a Thursday
Bottle service, head service, I came in first place
The opportunity, the proper top of breast and booty cheek
The pop community, I mean these bitches come with union fee
And I want two of these, moving units through consumer streets
Then my shoe released, she was kickin'' in gratuity
And yeah, G, I was all for it
She said, "K-Lamar, you kinda dumb to be a poet
I''ma put you on game for the lames that don''t know they a rookie
Instagram is the best way to promote some pussy"
You might also like
Scary, scary
No more parties in L.A.
Please, baby, no more parties in L.A.
Friday night, tryna make it into the city
Breakneck speeds, passenger seat—somethin'' pretty
Thinking back to how I got here in the first place
Second-class bitches wouldn''t let me on first base
A backpack nigga with luxury tastebuds
And the Louis Vuitton store got all of my pay stubs
Got pussy from beats I did for niggas more famous
When did I become A-list? I wasn''t even on a list
Strippers get invited to where they only got hired
When I get on my Steve Jobs, somebody gon'' get fired
I was uninspired since Lauryn Hill retired
And 3 Stacks, man, you preaching to the choir
Any rumor you ever heard about me was true and legendary
I done got Lewinsky''d and paid secretaries
For all my niggas with babies by bitches
That use they kids as meal tickets
Not knowin'' the disconnect from the father
The next generation will be the real victims
I can''t fault ''em, really
I ''member Amber told my boy
No matter what happens, she ain''t goin'' back to Philly
Back to our regularly scheduled programmin''
Of weak content and slow jammin''
But don''t worry, this one''s so jammin''
You know it, L.A., it''s so jammin''
I be thinkin'' every day
Mulholland Drive need to put up some goddamn barricades
I be paranoid every time, the pressure
The problem ain''t I be drivin'', the problem is I be textin''
My psychiatrist got kids that I inspired
First song they played for me was ''bout their friend that just died
Textin'' and drivin'' down Mulholland Drive
That''s why I''d rather take the 405
I be worried ''bout my daughter, I be worried ''bout Kim
But Saint is baby Ye, I ain''t worried ''bout him
Had my life threatened by best friends with selfish intents
What I''m supposed to do?
Ride around with a bulletproof car and some tints?
Every agent I know know I hate agents
I''m too black, I''m too vocal, I''m too flagrant
Something smellin'' like shit, that''s the new fragrance
It just mean, I do it my way, bitch
Some days I''m in my Yeezys, some days I''m in my Vans
If I knew y''all made plans, I wouldn''t have popped the Xans
I know some fans thought I wouldn''t rap like this again
But the writer''s block is over; emcees, cancel your plans
A thirty-eight-year-old eight-year-old with rich nigga problems
Tell my wife that I hate the Rolls so I don''t never drive it
It took six months to get the Maybach all matted out
And my assistant crashed it soon as they backed it out
Goddamn! Got a bald fade, I might slam
Pink fur, got Nori dressin'' like Cam
Thank God for me (Los Angeles)
Whole family gettin'' money, thank God for E
I love rockin'' jewelry, a whole neckful
Bitches say he funny and disrespectful
I feel like Pablo when I''m workin'' on my shoes
I feel like Pablo when I see me on the news
I feel like Pablo when I''m workin'' on my house
Tell ''em party''s in here, we don''t need to go out
We need the turbo thots, high speed, turbo thots
Drop-dro-dro-dro-drop, like Robocop
She brace herself and hold my stomach, good dick''ll do that
She keep pushin'' me back, good dick''ll do that
She push me back when the dick go too deep
This good dick''ll put your ass to sleep
Get money (Money, money, money)
Big, big money (Money, money, money)
And as far as real friends, tell all my cousins I love ''em
Even the one that stole the laptop, you dirty motherfucker
I just keep on lovin'' you, baby
And there''s no one else I know can take your pla—, pla—, pla—
Please, no more parties in L.A. (Shake that body, party that body)
Please, baby, no more parties in L.A., uh (Shake that body, party that body)
No more parties in L.A. (Los Angeles)
Please, baby, no more parties in L.A., uh
No more parties in L.A.
Please, baby, no more parties in L.A., uh

Let me tell you, I''m out here from a very far away place
All for a chance to be a star
Nowhere seems to be too far
Swish
', 72);


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

