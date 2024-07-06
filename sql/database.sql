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
INSERT INTO public.artists (id, name) VALUES (68, 'Kid Cudi');
INSERT INTO public.artists (id, name) VALUES (492, 'Big Sean');
INSERT INTO public.artists (id, name) VALUES (26507, 'Ariana Grande');
INSERT INTO public.artists (id, name) VALUES (8351, 'Coldplay');
INSERT INTO public.artists (id, name) VALUES (357, 'Justin Bieber');
INSERT INTO public.artists (id, name) VALUES (20185, 'Travis Scott');
INSERT INTO public.artists (id, name) VALUES (1479967, 'Fontaines D.C.');
INSERT INTO public.artists (id, name) VALUES (72, 'Kanye West');
INSERT INTO public.artists (id, name) VALUES (69, 'J. Cole');
INSERT INTO public.artists (id, name) VALUES (75841, 'The Wombats');
INSERT INTO public.artists (id, name) VALUES (1174, 'Kings of Leon');
INSERT INTO public.artists (id, name) VALUES (7922, 'Logic');
INSERT INTO public.artists (id, name) VALUES (89, 'Rihanna');


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
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3807759, 'In My Feelings', '
Trap, TrapMoneyBenny
This shit got me in my feelings
Gotta be real with it, yeah

Kiki, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want ya, and I need ya
And I''m down for you always
KB, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want ya, and I need ya
And I''m down for you always

Look, the new me is really still the real me
I swear you gotta feel me before they try and kill me
They gotta make some choices, they runnin'' out of options
''Cause I''ve been goin'' off and they don''t know when it''s stoppin''
And when you get to toppin'', I see that you''ve been learnin''
And when I take you shoppin'', you spend it like you earned it
And when you popped off on your ex he deserved it
I thought you were the one from the jump, that confirmed it
TrapMoneyBenny, ayy
I buy you Champagne but you love some Henny
From the block like you Jenny
I know you special, girl, ''cause I know too many
You might also like
''Resha, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want ya, and I need ya
And I''m down for you always
JT, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want ya, and I need ya
And I''m down for you always

Two bad bitches and we kissin'' in the Wraith
Kissin''-kissin'' in the Wraith, kiss-kissin'' in the Wraith
I need that black card and the code to the safe
Code to the safe, code-code to the safe-safe
I show him how that neck work
Fuck that Netflix and chill, what''s your net-net-net worth?
''Cause I want ya, and I need ya
And I''m down for you always
Yeah, yeah, yeah, yeah, he bad
And I''m down for you always
Yeah, yeah, yeah, guess who''s back
And I''m down for you always
D-down for you al–
Black biggy biggy black biggy black blake
D-d-down for you always
I got a new boy, and that nigga trade
Kiki, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want you, and I need you
And I''m down for you always
KB, do you love me? Are you riding?
Say you''ll never ever leave from beside me
''Cause I want ya, and I–

Skate and Smoke and Rap
Now let me see you
Bring that ass, bring that ass, bring that ass back
B-bring that ass, bring that ass, bring that ass back
Shawty say the nigga that she with can''t hit
But shawty, I''ma hit it, hit it like I can''t miss
Now let me see you
Clap that ass, you''re the only one I love
Clap that ass, clap-clap that ass
Bring that ass back
Clap-clap-clap that ass, you''re the only one I love
Let''s go, let''s go, let''s go
Bring that ass back

Trap, TrapMoneyBenny
This shit got me in my feelings
Gotta be real with it, ayy, yup
(BlaqNmilD, you a genius, you diggin'' me?)
You know what, I don''t even care, I need a photo with Drake
Because my Instagram is weak as fuck
I''m just being real, my shit, look—', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2263723, 'Hotline Bling', '
You used to call me on my
You used to, you used to
Yeah

You used to call me on my cell phone
Late-night when you need my love
Call me on my cell phone
Late-night when you need, my love
And I know when that hotline bling
That can only mean one thing
I know when that hotline bling
That can only mean one thing

Ever since I left the city, you
Got a reputation for yourself now
Everybody knows and I feel left out
Girl, you got me down, you got me stressed out
''Cause ever since I left the city, you
Started wearin'' less and goin'' out more
Glasses of champagne out on the dance floor
Hangin'' with some girls I never seen before

You used to call me on my cell phone
Late-night when you need my love
Call me on my cell phone
Late-night when you need, my love
I know when that hotline bling
That can only mean one thing
I know when that hotline bling
That can only mean one thing
You might also like
Ever since I left the city, you, you, you
You and me, we just don''t get along
You make me feel like I did you wrong
Goin'' places where you don''t belong
Ever since I left the city, you
You got exactly what you asked for
Runnin'' out of pages in your passport
Hangin'' with some girls I''ve never seen before

You used to call me on my cell phone
Late-night when you need my love
Call me on my cell phone
Late-night when you need, my love
And I know when that hotline bling
That can only mean one thing
I know when that hotline bling
That can only mean one thing

These days, all I do is
Wonder if you''re bendin'' over backwards for someone else
Wonder if you''re rollin'' up a Backwoods for someone else
Doing things I taught you, gettin'' nasty for someone else
You don''t need no one else
You don''t need nobody else, no
Why you never alone?
Why you always touchin'' road?
Used to always stay at home
Be a good girl, you was in the zone
Yeah, you should just be yourself
Right now, you''re someone else
You used to call me on my cell phone
Late-night when you need my love
Call me on my cell phone
Late-night when you need my, love
And I know when that hotline bling
That can only mean one thing
I know when that hotline bling
That can only mean one thing

Ever since I left the city—
', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2450584, 'One Dance', '
Baby, I like your style

Grips on your waist, front way, back way
You know that I don''t play
Streets not safe but I never run away
Even when I''m away
Oti, oti
There''s never much love when we go OT
I pray to make it back in one piece
I pray, I pray

That''s why I need a one dance
Got a Hennessy in my hand
One more time ''fore I go
Higher powers taking a hold on me
I need a one dance
Got a Hennessy in my hand
One more time ''fore I go
Higher powers taking a hold on me
Baby, I like your style
You might also like
Strength and guidance
All that I''m wishing for my friends
Nobody makes it from my ends
I had to bust up the silence
You know you gotta stick by me
Soon as you see the text, reply me
I don''t wanna spend time fighting
We''ve got no time, and that''s why

I need a one dance
Got a Hennessy in my hand
One more time ''fore I go
Higher powers taking a hold on me
I need a one dance
Got a Hennessy in my hand
One more time ''fore I go
Higher powers taking a hold on me

Got a pretty girl and she love me long time
Fine like a wine, she love me long time
Oh, yeah, very long time
Back up, back up, back up, and whine it
Back up, back up, and whine it
Girl, just back up, back up, back up, and whine girl
Oh, yes, steady and fine
Back, up, back up and whine it, mm
Oh, tell me, I need to know
Where do you wanna go?
''Cause if you''re down, I''ll take it slow
Make you lose control

Where, where, where
Where, where, where, where (Oh, yeah, very long time)
Where, where, where (Back up, back up, and wine am, girl)
Where, where, where, where
''Cause if you''re down (Back up, back up, and–)
''Cause if you''re down (Back up, back up, and–)
''Cause if you''re down (Back up, back up, and–)

I need a one dance (Where, where, where)
Got a Hennessy in my hand (Where, where, where, where)
One more time ''fore I go (Where)
Higher powers taking a hold on me (Where, where, where, where)
I need a one dance
Got a Hennessy in my hand
One more time ''fore I go
Higher powers taking a hold on me
How do you spell "Hennessy?"
I put two "N"s and two "S"es, is it like that? Hen... Henn... Henn...
It''s definitely not showing up
I know "Hennessy" has two "S"es for sure, so I''m gonna take out one of the "N"s', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (200546, 'Hold On, We’re Going Home', '
I got my eyes on you
You''re everything that I see
I want your hot love and emotion endlessly
I can''t get over you
You left your mark on me
I want your hot love and emotion endlessly

''Cause you''re a good girl and you know it
You act so different around me
''Cause you''re a good girl and you know it
I know exactly who you could be

Just hold on, we''re going home
Just hold on, we''re going home
It''s hard to do these things alone
Just hold on, we''re going home
Home

I got my eyes on you
You''re everything that I see
I want your hot love and emotion endlessly
I can''t get over you
You left your mark on me
I want your hot love and emotion endlessly
You might also like
''Cause you''re a good girl and you know it (Oh yeah)
You act so different around me (Ah-ah, da-da)
''Cause you''re a good girl and you know it (Ah-ah-ah)
I know exactly who you could be

So just hold on, we''re going home (Going home)
Just hold on, we''re going home (Going home)
It''s hard to do these things alone (Things alone)
Just hold on, we''re going home (Going home)
Home (Going home)

You''re the girl, you''re the one
Gave you everything I loved
I think there''s something, baby
I think there''s something, baby
You''re the girl, you''re the one
Gave you everything I loved (Oh)
I think there''s something, baby
I think there''s something, baby

''Cause you''re a good girl and you know it
You act so different around me
''Cause you''re a good girl and you know it
I know exactly who you could be
Oh, just hold on, we''re going home (Going home)
Just hold on, we''re going home (Going home)
It''s hard to do these things alone (Things alone)
Just hold on, we''re going home (Going home)
Home (Going home)

(Hold on)
(Oh, oh)
', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (77594, 'The Scientist', '
Come up to meet you, tell you I''m sorry
You don''t know how lovely you are
I had to find you, tell you I need you
And tell you I set you apart
Tell me your secrets and ask me your questions
No, let''s go back to the start
Runnin'' in circles, comin'' up tails
Heads on a science apart

Nobody said it was easy
It''s such a shame for us to part
Nobody said it was easy
No one ever said it would be this hard
Oh, take me back to the start
I was just guessin'' at numbers and figures
Pullin'' your puzzles apart
Questions of science, science and progress
Do not speak as loud as my heart
And tell me you love me, come back and haunt me
Oh, and I rush to the start
Runnin'' in circles, chasin'' our tails
Comin'' back as we are
See Coldplay LiveGet tickets as low as $68You might also like
Nobody said it was easy
Oh, it''s such a shame for us to part
Nobody said it was easy
No one ever said it would be so hard
I''m goin'' back to the start


Oh-ooh, ooh-ooh-ooh-ooh
Ah-ooh, ooh-ooh-ooh-ooh
Oh-ooh, ooh-ooh-ooh-ooh
Oh-ooh, ooh-ooh-ooh-ooh', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (703654, 'Know Yourself', '

Hol'' it yute, hol'' it, hol'' it, hol'' it, hol'' it, hol'' it
No sleepin'' in the streets!
Shaky warrior
Yeah, this that Oliver, 40, Niko shit man
15 Fort York shit, y''know?
Boi-1da, what''s poppin''?
Yeah, yeah

Runnin'' through the 6 with my woes
Countin'' money, you know how it goes
Pray the real live forever, man
Pray the fakes get exposed
I want that Ferrari, then I swerve
I want that Bugatti, just to hurt
I ain''t rockin'' my jewelry, that''s on purpose
Niggas want my spot and don''t deserve it
I don''t like how serious they take themselves
I''ve always been me, I guess I know myself
Shakiness, man, I don''t have no time for that
My city too turned up, I''ll take the fine for that
This been where you find me at
That''s been where you find me at
I know a nigga named Johnny Bling
He put me on to the finer things
Had a job sellin'' Girbaud jeans
I had a yellow TechnoMarine
Then Kanye dropped, it was polos and backpacks
Man, that was when Ethan was pushin'' a Subaru hatchback
Man, I''m talkin'' way before hashtags
I was runnin'' through the 6 with my woes
(Yeah!)
You might also like

I was runnin'' through the 6 with my woes
You know how that shit go
You know how that shit go
You know how that shit go
Runnin'' through the 6 with my woes
You know how that shit go
You know how that shit go
You know how that shit go
Don''t fuck with them niggas, they too irrational, woah

This is that nasty flow
Top boy in this shit, I''m so international
Reps up is in here
Got P Reign and Chubby and TJ and Winnie and woah
Yeah, and you know how that shit go
I might declare it a holiday as soon as Baka get back on the road
Yeah, but you know how that shit go
They so irrational, they don''t wanna patch it up
They wanna mash it up, woah
My nigga Jibba, he whip it, I ride in the passenger
I''m way up, I stay up, I''m two up, I''m three up
I had to get back to you, woah
I''m turnin'' into a nigga that thinks about money and women
Like 24/7, that''s where my life took me
That''s just how shit happened to go
And you know
Runnin'' through the 6 with my, with my
I was running through the 6 with my woes
And you know how that shit go
You know how that shit go
You know how that shit go
Runnin'' through the 6 with my woes
You know how that shit go
You know how that shit go
You know how that shit go
Runnin'' through the 6 with my woes
You know how that shit go
...Shell out, all if yuh eye nuh big
Always haffi look out, yuh no know if yuh head book out
Dun know, a de Unruly boss, dis man
No bomboclat, otha
And if a boy nuh like OVO or Chromatic
Yuh can jus suck yuh mada!!
With no apology, if you nuh like we, we nuh like you neither youth
Your girl a say we cute, if you diss you will get execute
That''s the truth, OVO Unruly
(Machine gun shots)
With my woes', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2266961, 'Back To Back', '
Oh man
Oh man, oh man
Not again

Yeah
I learned the game from William Wesley, you can never check me
Back to back for the niggas that didn''t get the message
Back to back, like I''m on the cover of Lethal Weapon
Back to back, like I''m Jordan ''96, ''97
Woah—very important and very pretentious
When I look back, I might be mad that I gave this attention
Yeah, but it''s weighin'' heavy on my conscience
Yeah, and fuck, you left The Boy no options
I wanna see my niggas go insane
You gon'' make me step out of my fuckin'' frame
You gon'' make me buy bottles for Charlamagne
You gon'' make me go out of my fuckin'' way
I waited four days, nigga, where y''all at?
I drove here in the Wraith, playin'' AR-AB
I''m not sure what it was that really made y''all mad
But I guess this is what I gotta do to make y''all rap
I mean woah, can''t fool the city, man, they know what''s up
Second floor at Tootsies, gettin'' shoulder rubs
This for y''all that think that I don''t write enough
They just mad ''cause I got the Midas touch
You love her, then you gotta give the world to her
Is that a world tour or your girl''s tour?
I know that you gotta be a thug for her
This ain''t what she meant when she told you to open up more
Yeah, trigger fingers turn to Twitter fingers
Yeah, you gettin'' bodied by a singin'' nigga
I''m not the type of nigga that''ll type to niggas
And shout to all my boss bitches wifin'' niggas
Make sure you hit him with the prenup
Then tell that man to ease up
I did another one, I did another one
You still ain''t did shit about the other one
You might also like
I got the drink in me, going back to back
Yeah, going back to back
I got the drink in me, going back to back
Yeah, I''m going back to back

I don''t wanna hear about this ever again
Not even when she tell him that they better as friends
Not even when you saying, "Drizzy, tell ''em again!"
I been puttin'' on a show, it was a sell-out event
Oh, you need better seatin''
I didn''t wanna do it, gave me every reason
The point I''m tryin'' to make is I don''t ever need ''em
Seen what you''d do for fame, what would you do for freedom?
Please, check ''em for a wire or a earpiece
Please, please do not let these niggas near me
Please, think before you come for the great one
Please, who''s a real nigga and who ain''t one?
Please, somebody stop me
I''m talkin'' boasy and gwanin wassy
I got the fest in five days and it''s my shit
Soon as a nigga hit the stage, they gon''

They gon'' ask if I can play this shit back to back
Yeah, they want it back to back
They gon'' ask if I can play this shit back to back
I took a break from Views, now it''s back to that, nigga (Six)', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (196551, 'All Me', '
I''m really stepping up my game
These bitches gotta start paying me for this
Can''t get no more free, Randy

Got everything, I got everything
I cannot complain, I cannot
I don''t even know how much I really made, I forgot, it''s a lot
Fuck that, never mind what I got
Nigga don''t watch that ''cause I—
Came up, that''s all me, stay true, that''s all me (yeah)
No help, that''s all me, all me for real
Came up, that''s all me, stay true, that''s all me (2 Chainz)
No help, that''s all me, all me for real

Money on my mind, you should think the same
J''s on, pinky ring, dogging these hoes, I need quarantine
In the same league, but we don''t ball the same
(Ah) She want all the fame, I hear that shit all the time
She said she love me, I said, "Baby girl, fall in line"
Okay, made a million off a dinner fork, watch me switch it up
Walked in, "Ill nigga alert! Ill nigga alert!"
You need that work, I got that work, got bitches in my condo
Just bought a shirt that cost a Mercedes-Benz car note
From the A to Toronto, we let the metal go off
And my dick so hard it make the metal detector go off
This that sauce, this that dressing
Givenchy, nigga, God bless you
If having a bad bitch was a crime, I''d be arrested (Tru)
You might also like
Got everything, I got everything
I cannot complain, I cannot
I don''t even know how much I really made, I forgot, it''s a lot
Fuck that, never mind what I got
Nigga don''t watch that ''cause I—
Came up, that''s all me, stay true, that''s all me
No help, that''s all me, all me for real
Came up, that''s all me, stay true, that''s all me
No help, that''s all me, all me for real

I touched down in ''86, knew I was the man by the age of 6
I even fucked the girl that used to babysit
But that was years later on some crazy shit
I heard your new shit, nigga hated it
Damon Wayans, homie don''t play that shit
I get paid a lot, you get paid a bit
And my latest shit is like a greatest hits
Goddamn, ain''t no wishing over on this side
Y''all don''t fuck with us, then we don''t fuck with y''all
It''s no different over on this side
Goddamn, should I listen to everybody or myself?
''Cause myself just told myself:
"You''re the motherfucking man, you don''t need no help"
Cashing checks and I’m bigging up my chest
Y''all keep talking ‘bout who next, but I’m about as big as it gets
I swear y''all just wasting y''all breath
I’m the light skinned Keith Sweat, I''ma make it last forever
It’s not your turn ''cause I ain''t done yet
Look, just understand that I''m on a roll like Cottonelle
I was made for all of this shit
And I’m on the road box office sales
I’m getting paid for all of this shit
Ask you to please excuse my table manners
I was making room for the table dancers
''Cause if we judging off your advances
Then I just got paid like eight advances, goddamn!
Got everything, I got everything
I cannot complain, I cannot
I don''t even know how much I really made, I forgot, it''s a lot
Fuck that, never mind what I got
Nigga don''t watch that ''cause I—
Came up, that''s all me, stay true, that''s all me
No help, that''s all me, all me for real
Came up, that''s all me, stay true, that''s all me—

Ho, shut the fuck up!
I got way too much on my mental
I learn from what I''ve been through
I''m finna do what I didn''t do
And still waking up like the rent''s due
Not complicated, it''s simple
I got sexy ladies, a whole Benz-full
And to them hoes I''m everything—everything but gentle
But I still take my time (Time)
Man, I guess I''m just old fashioned
Wearing retro sh—, that''s old fashion
Nigga, see what I''m saying, no closed caption
I paint pics, see the shit, good sex, need to hit
Keep a broad on the floor year ''round like season tickets
I plead the fifth, drink a fifth, load the nine
Leave you split, in the half, smoke a half, need a zip
My new girl is on Glee and shit
Probably making more money than me and shit
I swear to God I got 99 problems but a bitch ain''t one
I got 99 problems, getting rich ain''t one
Like I got trust issues
I''m sorry for the people I''ve pushed out
I''m the type to have a bullet-proof condom
And still gotta pull out
But that''s just me and I ain''t perfect
I ain''t a saint but I am worth it
If it''s one thing, I am worth it
Niggas still hating but it ain''t working
Lil'' bitch...
Oh me, oh me, oh my
I think I done fucked too many women from the 305
''Fore the end of this year
I''ll do King of Diamonds 3 more times
Smoking on that kush all in our section
Like it''s legalized
Girl, you can''t always have your way
Sometimes it be like that
They don''t really fuck with you like that
They ain''t never did me like that
I just took my time, you got the shine
I let you eat like that
I been taught to never loan somebody
What you need right back
And I need that shit right back
(No more free Randy) I’m blessed than a muhfucka
Niggas been stressed than a muhfucka
Niggas getting nervous
Clutching they chests like a muhfucka
Damn that’s a motherfucker
Tell the truth, I don’t listen to you
''Cause I don’t like being lied to
And that ship won’t sail
And that wind won’t guide you
Daddy was in jail, we was talking through the window
Like a motherfucking drive-thru
That was back then, man
Now my niggas rich enough to do whatever I do', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10356318, 'Family Matters', '

Maybe in this song, you shouldn''t start by saying
Nigga, I said it, I know that you mad
I''ve emptied the clip over friendlier jabs
You mentioned my seed, now deal with his dad
I gotta go bad, I gotta go bad
Mm, mm, yeah
Drop, drop, drop, drop
Drop a fifty bag for the mob in the spot
Drop a fifty bag, 29 for the thot
Uh, I was really, really tryna keep it PG
I was really, really tryna keep it PG
If you had a set, they''d give your ass a DP
But you civilian gang, in real life, you PC

You know who really bang a set? My nigga YG
You know who really bang a set? My nigga Chuck T
You know who even bang a set out there is CB
And, nigga, Cole losin'' sleep on this, it ain''t me
You better have some paperwork or that shit fake tea
Can''t bе rappin'' ''bout no rattin'' that we can''t read
I mean it''s truе a nigga slimed me for my AP
Just like how Metro nigga slimed him for his main squeeze
Out here beggin'' for attention, nigga, say please
Always rappin'' like you ''bout to get the slaves freed
You just actin'' like an activist, it''s make-believe
Don''t even go back to your hood and plant no money trees
Say you hate the girls I fuck, but what you really mean?
I been with Black and white and everything that''s in between
You the Black messiah wifin'' up a mixed queen
And hit vanilla cream to help out with your self-esteem
On some Bobby shit, I wanna know what Whitney need
All that puppy love was over in y''all late teens
Why you never hold your son and tell him, "Say cheese"?
We could''ve left the kids out of this, don''t blame me
You a dog and you know it, you just play sweet
Your baby mama captions always screamin'', "Save me"
You did her dirty all your life, you tryna make peace
I heard that one of ''em little kids might be Dave Free
Don''t make it Dave Free''s
''Cause if your GM is your BM secret BD
Then this is all makin'' plenty fuckin'' sense to me
Ayy, let that shorty breathe
Shake that ass, bitch, hands on your knees
Hands on your knees, hands on your knees
Shake that ass for Drake, now shake that ass for free
Yeah, yeah
Well, not that kind of free, I''m talkin'' ''bout my nigga Dave
Your man a lil'' K, we call that shit a mini Drac''
He always said I overlooked him, I was starin'' straight
These bars go over Kenny head no matter what I say
I know you like to keep it short, so let me paraphrase
Knew it was smoke when Abel hit us with the serenade
Nigga said, "Uh, uh"
Almost started reachin'' for my waist
You might also like
Drop, drop, drop, drop
Drop a fifty bag for the mob in the spot
Drop a fifty bag, 29 for the thot
Uh, I was really, really tryna keep it—

Yeah
Let me stop playin'' around, let me take this shit serious, like
Niggas is a joke, I take it serious, though
Yeah, look

If Drake shooters doing TikToks, nigga
Realest shooter in your gang, that''s P''s brother, y''all ain''t getting shit shot, nigga
Can''t listen to the stick talk in falsetto, save it for a hip-hop nigga
You don''t even be at home, dog, you a souvenir-out-the-gift-shop nigga
Still mad about that one ho, we ain''t even fuck, I just lip-locked with her
I get active when it''s war time, I ain''t even really let my dick drop, nigga
What the fuck I heard Rick drop, nigga? Talkin'' somethin'' ''bout a nose job, nigga
Ozempic got a side effect of jealousy and doctor never told y''all niggas
Put a nigga in the bars, let a nigga rot, kind of like your old job, nigga
House sittin'' on some land, but it''s out where no one even really know y''all niggas
Bitches gotta drive two hours ''fore you pay ''em just to give a blowjob, nigga
Must''ve snorted up a snowball
''Cause my last record deal was four hundred M''s, these days, that''s a low ball, nigga
Ayy
Who''s next on the list?
Which one of my so-called niggas
Which one of my so-called niggas
Which one of my so-called niggas need a shell from the clip?
Always knew I had to smoke y''all niggas
​good kid, m.A.A.d city van, we''ll pop the latch and let the door slide
Tears runnin'' down my cheek, laughin'' at you pussies dyin'', it''s a war cry
Weeknd music gettin'' played in all the spots where boys got a little more pride
That''s why all your friends dippin'' to Atlanta, payin'' just to find a tour guide
Abel, run your fuckin'' bread, need to buy some more chains for some more guys
Let me find another street nigga I can take to the game courtside
Let me get a used Ferrari for a rapper, take the nigga on a horse ride
Anything to take the spotlight off the fact the boss is a drugged-out lil'' punk sissy from the Northside
Rakim talkin'' shit again
Gassed ''cause you hit my BM first, nigga, do the math, who I was hittin'' then?
I ain''t even know you rapped still ''cause they only talkin'' ''bout your ''fit again
Probably gotta have a kid again ''fore you think of droppin'' any shit again
Even when you do drop, they gon'' say you should''ve modeled ''cause it''s mid again
Smokin'' Fenty ''bout it, should''ve put you on the first one, tryna get it in
Ask Fring if this a good idea the next time you cuddled in that bed again
She''ll even tell you leave the boy alone ''fore you get your head split again
Pluto shit make me sick to my stomach, we ain''t never really been through it
Leland Wayne, he a fuckin'' lame, so I know he had to be an influence
These niggas had a plan and they finally found a way to rope you into it
Two separate albums dissin'', I just did a Kim to it, nigga, skim through it
Me and Savage had the hoes drippin'' wet at shows, almost had to swim to it
K-Dot shit is only hittin'' hard when Baby Keem put his pen to it
Ross callin'' me the white boy and the shit kind of got a ring to it
''Cause all these rappers wavin'' white flags while the whole fuckin'' club sing to it
Murder scene on your man tonight, then come to the vigil with the candlelight
Body after fuckin'' body and you know Rick readin'' my Miranda rights
I''m goin'' on vacation now, hope next time y''all plan it right
''Cause you gotta pay for sayin'' my name, guess now niggas understand the price
Nigga, what? (6ix)

Ayy
Kendrick just opened his mouth, someone go hand him a Grammy right now
Where is your uncle at? ''Cause I wanna talk to the man of the house
West Coast niggas do fades, right? Come get this ass whoopin'', I''m handin'' ''em out
You wanna take up for Pharrell? Then come get his legacy out of my house
A cease and desist is for hoes, can''t listen to lies that come out of your mouth
You called the Tupac estate and begged ''em to sue me and get that shit down
I''m losin'' perspective on beef, Boi-1da send beat and I''ll kill you for fun
Your daddy got robbed by Top, you Stunna and Wayne, like father, like son
Anthony set up the plays, Kojo be chargin'' you double for nothin''
They shook about what I''ma say, but textin'' your phone like, "We already won"
You tell me what I shouldn''t say, but fuck it, my nigga, it''s already done
We already know it''s a twenty-v-one, we already know why you went number one
It''s clearly because of The Boy, the honorable thing is to give me the loot
You right about "Fuck the big three," it''s only Big D, and there''s video proof
Our sons should go play at the park, two lightskin kids, that shit would be cute
Unless you don''t want to be seen with anyone that isn''t Blacker than you
We get it, we got it
The blacker the berry, the sweeter the juice
We get that you like to put gin in your juice
We get that you think that you Bishop in Juice
When you put your hands on your girl, is it self-defense ''cause she bigger than you?
Your back is up against the curb, you diggin'' for dirt, should be diggin'' for proof
Why did you move to New York? Is it ''cause you livin'' that bachelor life?
Proposed in 2015, but don''t wanna make her your actual wife
I''m guessin'' this wedding ain''t happenin'', right?
''Cause we know the girls that you actually like
Your darkest secrets are comin'' to light
It''s all on your face like what happened to Mike
Oh shit, it''s all makin'' sense, maybe I''m Prince and you actually Mike
Michael was prayin'' his features would change so people believe that he''s actually white
Top would make you do features for change, get on pop records and rap for the whites
And wait, you say your brother Jermaine, but you wanted him to stay out of the light
Oh shit, just follow me, right? ''Cause nothin'' you sayin'' could bother me, right?
I get off the plane and nothing has changed, I head to Delilah with all of my ice
Head to Delilah with all of my ice, head to Delilah with all of my ice
This shit gotta be over by now for anyone out here that''s calling it, right?
You''re dead
You''re dead, you''re dead
There''s nowhere to hide, there''s nowhere to hide, you know what I mean
They hired a crisis management team to clean up the fact that you beat on your queen
The picture you painted ain''t what it seem, you''re dead', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (217270, 'From Time', '
What''s up?
Been a minute since we kicked it, you''ve been caught up
With them bitches, I don''t get it, you''re a star, love
You shouldn''t have to deal with that
I''d never make you feel like that
''Cause

I love me
I love me enough for the both of us
That''s why you trust me
I know you been through more than most of us
So what are you
What are you, what are you so afraid of?
Darling, you
You give, but you cannot take love

Yeah, I needed to hear that shit, I hate when you''re submissive
Passive aggressive when we''re texting, I feel the distance
I look around the peers that surround me, these niggas tripping
I like when money makes a difference but don''t make you different
Started realizing a couple places I could take it
I want to get back to when I was that kid in the basement
I want to take it deeper than money, pussy, vacation
And influence a generation that''s lacking in patience
I''ve been dealing with my dad, speaking of lack of patience
Just me and my old man getting back to basics
We''ve been talking ''bout the future and time that we wasted
When he put that bottle down, girl, that nigga''s amazing
Well, fuck it, we had a couple Coronas
We might have rolled a white paper, just something to hold us
We even talked about you and our couple of moments
He said we should hash it out like a couple of grown-ups
You a flower child, beautiful child, I''m in your zone
Looking like you came from the seventies on your own
My mother is sixty-six and her favorite line to hit me with is
"Who the fuck wants to be seventy and alone?"
You don''t even know what you want from love anymore
I search for something I''m missing and disappear when I''m bored
But girl, what qualities was I looking for before?
Who you settling for? Who better for you than the boy, huh?
You might also like
I love me
I love me enough for the both of us
That''s why you trust me
I know you been through more than most of us
So what are you
What are you, what are you so afraid of?
Darling, you
You give, but you cannot take love
Uh, thinking ''bout Texas, back when Porscha used to work at Treasures
Or further back than that, before I had the Houston leverage
When I got Summer a Michael Kors with my momma''s debit
A weak attempt at flexing, I''ll never forget it
''Cause that night I played her three songs
Then we got to talking ''bout something we disagreed on
Then she start telling me how I''ll never be as big as Trey Songz
Boy, was she wrong
That was just negative energy for me to feed off
Now it''s therapeutic blowing money in the Galleria
Or Beverly Center Macy''s where I discovered Bria
Landmarks of the muses that inspired the music
When I could tell it was sincere without tryna prove it
The one that I needed was Courtney from Hooters on Peachtree
I''ve always been feeling like she was the piece to complete me
Now she engaged to be married, what''s the rush on commitment?
Know we were going through some shit, name a couple that isn''t?
Remember our talk in the parking lot at the Ritz
Girl, I felt like we had it all planned out
I guess I fucked up the vision
Learning the true consequences of my selfish decisions
When you find out how I''m living, I just hope I''m forgiven
It seem like you don''t want this love anymore
I''m acting out in the open, it''s hard for you to ignore
But girl, what qualities was I looking for before?
Who you settling for? Who better for you than the boy, huh?
I love me
I love me enough for the both of us
That''s why you trust me
I know you been through more than most of us
So what are you
What are you, what are you so afraid of?
Darling, you
You give, but you cannot take love

Been Baka aka Not Nice from time, G
Been a East Side ting
Scarborough ting from time, G
Been have up di ting dem from time, G
So I don''t know what''s wrong with these
Little wasteman out here, eh?
Y''all need to know yourself', 130);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (84641, 'Just What I Am', '
I''m just what you made, God, not many I trust
I''ma go my own way, God, take my fate to wherever you want
I''m out here, on my son, won''t stop ''til I get me some
Club-hoppin'', tryna get me some, bad bitches wanna get me sprung
Early in the morning, I''m wakin'', bakin'', drinkin'', contemplatin''
Ain''t no such thing as Satan, evil is what you make it
Thank the Lord for that burning bush
That big body Benz I was born to push
On my way I''m burning kush, nigga, don''t be worried ''bout us
Neighbors knockin'' on the door, asking can we turn it down
I say, "Ain''t no music on", she said, "No, that weed is loud"
Nigga, we ballin'', straight swaggin'', lost Hawk, but I''m maintainin''
I''ve been told that I''m amazing, make sure keep that fire blazin'', we livin''

I (I need) need smoke (Oh, oh, oh, I need)
I (I need) need to smoke
Who gon'' hold me down now?
I-I wanna get high y''all (Woah)
I-I wanna get high y''all
Nee-need it, need it to get by y''all (Woah, yeah)
Can you get me high y''all? (Hey)
I-I wanna get high y''all
I-I-I wanna get high y''all
Nee-need it, need it to get by y''all
Can you get me high y''all? (Hey)
You might also like
I''m just what you made, God, just what you made, God (Nee-need it)
I''m just what you made, God, I''m just what you made
(Nee-nee-need it) I''m just what you made, God
I''m just what you made, God, I''m just what you made, (Mmm)

Let me tell you ''bout my month y''all
Endless shopping, I had a ball
I had to ball for therapy, my shrink don''t think that helps at all
Whatever, that man ain''t wearing these leather pants
I diagnose my damn self, these damn pills ain''t working fam
In-In my spare time, punching walls, fucking up my hand
I know that shit sound super cray, but if you had my life you''d understand
But, I can''t fold, some poor soul got it way worse
We''re all troubled in a world of trouble
It''s scary to have a kid walk this Earth
I''m what you made, God, fuck yes, I''m so odd
Thinking ''bout all my old friends who weren''t my friends all along
Hm, when it rains it pours, whiskey bottles on the sinks and floors
Every day to find sane''s a chore, amidst a dream with no exit doors

I (I need) need smoke (Oh, oh, oh, I need)
I (I need) need to smoke
Who gon'' hold me down now?
I-I wanna get high y''all (Woah)
I-I wanna get high y''all
Nee-need it, need it to get by y''all (Woah, yeah)
Can you get me high y''all? (Hey)
I-I wanna get high y''all
I-I-I wanna get high y''all
Nee-need it, need it to get by y''all
Can you get me high y''all? (Hey)
I''m just what you made, God, just what you made, God (Nee-need it)
I''m just what you made, God, I''m just what you made
(Nee-nee-need it) I''m just what you made, God
I''m just what you made, God, I''m just what you made (Mmm)

Nee-need it to get by, yeah
Willy', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (401, 'Pursuit of Happiness (Nightmare)', '
Mm, ayy-oh
Hey, Ratatat, yeah
Na-na-na-na
Na-na-na-na

Crush a bit, little bit, roll it up, take a hit
Feelin'' lit, feelin'' right, 2 a.m., summer night
I don''t care, hand on the wheel
Driving drunk, I''m doing my thing
Rolling the Midwest side and out
Living my life, getting our dreams
People told me slow my roll, I''m screaming out "Fuck that"
I''ma do just what I want, looking ahead, no turnin'' back
If I fall, if I die, know I lived it to the fullest
If I fall, if I die, know I lived and missed some bullets

I''m on the pursuit of happiness, and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good
I''m on the pursuit of happiness and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good
You might also like
Tell me, what you know about dreamin'', dreamin''?
You don''t really know about nothin'', nothin''
Tell me, what you know about the night terrors every night?
5 a.m., cold sweats, waking up to the sky
Tell me, what you know about dreams, dreams?
Tell me, what you know about night terrors? Nothing
You don''t really care about the trials of tomorrow
Rather lay awake in the bed full of sorrow

I''m on the pursuit of happiness, and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good
I''m on the pursuit of happiness, and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good

I''m on the pursuit of happiness
I know everything that shine ain''t always gold
I''ll be fine once I get it
I''ll be good

I''m on the pursuit of happiness, and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good
I''m on the pursuit of happiness, and I know
Everything that shine ain''t always gonna be gold, hey
I''ll be fine once I get it
I''ll be good

Pursuit of happiness, yeah
I gon'' get it, I''ll be good
Oh, oh, man, oh, ugh
Room''s spinning, room''s spinning
Pat, Zuli, oh, fuck
Oh my God, why''d I drink so much and smoke so much? Oh
Oh, fuck', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (131, 'Day ‘N’ Nite (Nightmare)', '
Uh, uh
Uh, uh
Uh, uh

Day and night
I toss and turn, I keep stress in my mind, mind
I look for peace, but see, I don''t attain
What I need for keeps, this silly game we play, play
Now look at this
Madness, the magnet keeps attracting me, me
I try to run, but see, I''m not that fast
I think I''m first but surely finish last, last
''Cause day and night
The lonely stoner seems to free his mind at night
He''s all alone through the day and night
The lonely loner seems to free his mind at night, at, at, at night
Day and night
The lonely stoner seems to free his mind at night
He''s all alone, some things will never change
The lonely loner seems to free his mind at night, at, at, at night

Hold the phone
The lonely stoner, Mr. Solo Dolo
He''s on the move, can''t seem to shake the shade
Within his dreams he sees the life he made, made
The pain is deep
A silent sleeper, you won''t hear a peep, peep
The girl he wants don''t seem to want him too
It seems the feelings that she had are through, through
You might also like
''Cause day and night
The lonely stoner seems to free his mind at night
He''s all alone through the day and night
The lonely loner seems to free his mind at night, at, at, at night
Day and night
The lonely stoner seems to free his mind at night
He''s all alone, some things will never change (Yeah)
The lonely loner seems to free his mind at night, at, at, at night
(Yeah, yeah)

Slow mo''
When the tempo slows up and creates that new, new
He seems alive though he is feeling blue
The sun is shining, man, he''s super cool, cool
The lonely nights
They fade away, he slips into his white Nikes
He smokes a clip and then he''s on the way
To free his mind in search of, to free his mind in search of
To free his mind in search of
Day and night
The lonely stoner seems to free his mind at night
He''s all alone through the day and night
The lonely loner seems to free his mind at night, at, at, at night
Day and night
The lonely stoner seems to free his mind at night
He''s all alone, some things will never change
The lonely loner seems to free his mind at night, at, at, at night
At, at, at night, night
Na-na-na-na-na-na, Kid Cudi
Cleveland status, grind all day
Cleveland status, grind all night
Cleveland status, grind all day
Cleveland status, grind all night', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (402, 'Soundtrack 2 My Life', '
I got 99 problems and they all bitches
Wish I was Jigga man, carefree livin''
But I''m not Shawn or Martin Louis
I''m that Cleveland nigga rollin'' with them Brooklyn boys
You knowin'' how it be when you start living large
I control my own life, Charles was never in charge
No sitcom could teach Scott about the dram
Or even explain the troubles that haunted my mom
On Christmas time, my mom Christmas grind
Got me most of what I wanted, how''d you do it, Mom, huh?
She copped the toys I would play with in my room by myself
"Why he by himself?"
He got two older brothers; one hood, one good
An independent older sister kept me fly when she could
But they all didn''t see
The little bit of sadness in me
Scotty

I''ve got some issues that nobody can see
And all of these emotions are pouring out of me
I bring them to the light for you, it''s only right
This is the soundtrack to my life, the soundtrack to my life

I''m super paranoid, like a sixth sense
Since my father died, I ain''t been right since
And I tried to piece the puzzle of the universe
Split an eighth of shrooms just so I could see the universe
I try and think about myself as a sacrifice
Just to show the kids they ain''t the only ones who up at night
The moon will illuminate my room
And soon I''m consumed by my doom
Once upon a time, nobody gave a fuck
It''s all said and done and my cock''s been sucked
So now I''m in the cut, alcohol in the wound
My heart''s an open sore that I hope heals soon
I live in a cocoon opposite of Cancún
Where it is never sunny, the dark side of the moon
So it''s more than right I try and shed some light on a man
Not many people of this planet understand, fam
You might also like
I''ve got some issues that nobody can see
And all of these emotions are pouring out of me
I bring ''em to the light for you, it''s only right
This is the soundtrack to my life, the soundtrack to my life

I''m this close to go and trying some coke
And a happy ending would be slittin'' my throat
Ignorance to cope, man, ignorance is bliss
Ignorance is love and I need that shit
If I never did shows then I''d prolly be a myth
If I cared about the blogs then I''d prolly be a jackass
Don''t give a shit what people talkin'' ''bout, fam
Haters shake my hand but I keep the sanitizer on deck
Hope I really get to see 30
Wanna settle down, stop being so flirty
Most of the clean faces be the most dirty
I just need a thoroughbred, cook when I''m hungry
Ass all chunky, brain is insanity
Only things that calm me down; pussy, and some Cali tree
And I get both, never truly satisfied
I am happy, that''s just the saddest lie

I''ve got some issues that nobody can see
And all of these emotions are pouring out of me
I bring ''em to the light for you, it''s only right
This is the soundtrack to my life, the soundtrack to my life
To my life, to my life, to my life...
Uh
Yeah, uh-huh
Yeah, uh-huh
Yeah, uh-huh
Yeah, uh-huh
Yeah
Yeah
Yeah', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5748123, 'The Adventures of Moon Man & Slim Shady', '
Yep (Aww)
Yep (Mmm-aww)
Uh-huh
Yeah, nigga

Yeah, it''s been a minute, but I''m back in it (Uh)
Y''all ain''t dealing with the same boy (No)
Got a little trippy, then I transitioned (Yeah)
New attitude mixed with that pure raw (Aw)
The night game, your girl called
She like, "Do me, baby, down to get busy, busy?" (Yes)
No dice, chill, whoadie (No)
In life, feeling dizzy
Oh, having visions of the city and I go to war
See me in the day through the late night (Night)
Tell ''em it''s the charm, I''m in freeze mode
To the gods, can''t stop a hero when he in flight (Flight)
I''m swimming in the light right
Go and get you some, go and show ''em something, this a new thang
Yeah, I let my nuts hang (Yeah)
Knock your top off with LeBron or Dwyane Wade (Yeah)
Aww, lift off
Can''t stunt a nigga growth, better get gone, move along (Uh)
You don''t wanna trip, wanna get it on (Uh)
You don''t wanna act, don''t get me wrong (Nah)
They don''t listen to the words in the song (Uh-huh)
We ain''t gotta tell ''em, we just getting ready (Yeah)
See ''em fronting, we ain''t kidding
If you want it, you can get it
Members of the rage, come and get you some
Next step''s out the jet from the lean back
Running ''round the world and we ain''t packed
Hit ''em, vroom, vroom, leave ''em stuck, oh, you seen that?
I''m chillin'' where the team at
See a black Benz pull up with some jawns, yeah, I need that
So crazy, can''t believe it
No cams, damn, no filming at all, real nigga facts (Come on)
Years ago, rehab
All good, helped me figure out another plan
It got bad, so bad
Nah, I ain''t fucking love that, man
Then I hopped out in a new zone with my Louis bag
True story, take you through the dark and the light (Yeah)
Godson, got through new
Back up in the world, it''s the day in the life (Cud)
Hit the blunt and get it (Dude)
Raised bars (Uh), same song, we did it (Yeah)
Hot sauce, pour it on all jams, explicit
Carry on, smoke strong, got your mama down with it (Come on)
And the game fuckin'' needed something dirty raw
Tell them this the law and we weeded (Uh)
You might also like
So if it''s God you believe in (Yeah)
Bob your head and just nod in agreement (Yeah)
They say time''s undefeated
I''ma be the first one who can beat it (Yeah)
I had hoop dreams, now I shoot threes (What?)
Got a lil'' green (Yeah), but I don''t do weed (Nope)
Purp nor lean (Nah), that''s Tunechi (Yeah)
That''s New Orleans (What?), fuck Drew Brees (Yeah)
Snoop D-O-double (Uh), that''s two G''s (Yup)
I probably spent on paper, ooh-wee
Since Tuesday, probably killed a few trees (Yeah)
But the only ones I smoke are the loose leaf
Not high, but I''m your highness (What?)
And secretly, you''re on my dick (Hah)
But you haters are butthurt (Ow), bunch of sore hind-ends (Ow)
I was just a poor white kid (Yeah)
Now if rap was B-ball, I''d be Jordan-like, bitch (What?)
You wish you could score like this (Nah), yeah
Not even at half court, I''d miss (Nah)
I''m mouthwash, ''cause if I was on the floor, I''d swish (Fluoride, fluoride, swish)
But I cannot lie (Nah)
I got you in my top five
Worst rappers of all time (Hah)
I lost my spot, y''all got Alzheim'' (Uh)
King of rap? Nah, their words, not mine (Yeah)
King of swear words and not lying (Yeah)
You should never compare yours (Nope)
A toll-free number (Yeah), only way you''ll ever have a hot line
Fuck''s going on, man? (Yeah)
Bunch of half-wits up in office (What?)
Half of us walking around like a zombie apocalypse
Other half are just pissed off and (Yeah)
Don''t wanna wear a mask and they''re just scoffing
And that''s how you end up catching the shit off ''em
I just used the same basket as you shopping
Now I''m in a fuckin'' casket from you coughin'' (Damn)
Always stay ahead of haters, let ''em hate
But never let a traitor penetrate your circle
Separate yourself from those who try to pull you down
The real ones never stray, it''s sort of like Medusa (Yeah)
That''s how you stay ahead of snakes (Woo)
Emcees pull out gats, I don''t give a fuck how strapped
You''re gonna out-rap me? I doubt that
Please, bitch, I''m a house rat
These raps are ''bout that cheese like mousetraps
Earthlings, I adapt to ''em
Certain things, I don''t want to do, but have to in
Order to just act human
Like using a bathroom and vacuuming (Yeah)
Rapping in the booth in a triple fat goose hazmat suit
Bubble wrap and a mask too and
I don''t think that''s what they meant by trap music (Nah)
Running through ink like I''m tattooing (Yeah)
This is music to be murdered by, you love
Turn the volume up, I am fired up like a blunt
Bread is long like an Italian sub, I am drugs
That is probably why your opinion of me''s high as fuck
And it''s nonstop fury (Yeah)
''Cause I ain''t holding ''em up like an armed robbery (Nah)
And God''s my jury, so when I die, I''m not worried (Nah)
Prayers to George Floyd and Ahmaud Arbery (Yeah)
How the fuck is it that so many cops are dirty? (Huh?)
Stop, man, please, officer, I''m sorry
But I can''t breathe when I got you on top of me
Your goddamn knee''s on my carotid artery (Fuck)
The adventures of Moon Man & Slim (Ah)
Yes, who want it with them?
The trilogy continues
Serving niggas, yes, see what''s on the menu (Yeah)
Watch ''em panic, hot damnit (Let''s get it, baby)
Hope you fuckers understand it
The realer for you niggas
Come and get these scriptures (Yeah)
Rap God (Uh)
Rager', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1687, 'Mr. Rager', '
Inhale and I want you to exhale
And I want you to follow your breath
10... 9... 8... 7... 6... 5... 4... 3... 2... 1...

I''m off on a (Yeah) adventure (We''re good)
(This here is dedicated to all of the kids like me)
I''m on my way to heaven (Wherever you are, yep, now)
(We''re good)

Birds sing, flying around
You never see them too long on the ground
You want to be one of them (Yeah)
You want to be one of them (Yeah)
You might hear the birds singing, flying around
You never see them too long on the ground
You want to be one of them (Yeah)
You want to be one of them (Yeah)

Woah now, hey
Mr. Rager, Mr. Rager
Tell me where you''re going, tell us where you''re headed
(I''m off on a adventure) Mr. Rager
Tell me some of your stories, tell us of your travels
Hey, Mr. Rager, Mr. Rager
Tell me where you''re going, tell us where you''re headed
(I''m on my way to heaven) Mr. Rager
Can we tag along? Can we take the journey?
You might also like
Knocked down, round for round
You''re feeling like you''re shot down on the ground
When will the fantasy end?
When will the heaven begin? (Yeah)
You might be knocked down, round for round
You''re feeling like you''re shot down on the ground
When will the fantasy end? (Yeah)
When will the heaven begin? (Yeah)

Woah now, hey
Mr. Rager, Mr. Rager
Tell me where you''re going, tell us where you''re headed
(I''m off on a adventure) Mr. Rager
Tell us some of your stories, tell us of your travels
Hey, Mr. Rager, Mr. Rager
Tell me where you''re going, tell us where you''re headed
(I''m on my way to heaven) Mr. Rager
Can we tag along? Can we take the journey?

Oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh (Can we take the journey?)
Oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh, oh
Oh, oh, oh, oh, oh
Hey, Mr. Rager, Mr. Rager
Tell me where you''re going, tell me where you''re headed
(I''m off on a adventure) Mr. Rager
Tell me some of your stories, tell us of your travels
Mr. Rager-er-er-er-er
Tell me where you''re going, tell us where you''re headed
(I''m on my way to heaven)  Mr. Rager
Can we tag along? Can we take that journey?

Can we take that journey?
(I''m off on the adventure)

Hey, Mr. Rager
Hey, Mr. Rager
Hey, Mr. Rager (I''m on my way to heaven)
Hey, Mr. Rager
Hey

3... 2... 1...
Scott. Scott. Scott. Scott!
That''s good. You alright?', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1822, 'The Prayer', '
Ah, da-da, da-da, da-da-nah
Ba-ba, ba-ba, ba-ba-da-ba-da
La-la, la-la, la-la, la-la, la-la, la-la-la
La-la, la-la, la-la, la-la-la
Plain Pat, what up?

My heart thump, not from being nervous
Sometimes I''m thinking God made me special here on purpose
So all the while, ''til I''m gone make my words important
So if I slip away, if I die today
The last thing you remember won''t be
About some apple bottom jeans with the boots with the fur
Maybe how I dream of being free since my birth
Cursed, but the demons I confronted would disperse
Have you ever heard of some shit so real?
Beyond, from the heart, from the soul, you can feel

And if I die before I wake
I pray the Lord, my soul, to take
But please don''t cry
Just know that I have made these songs for you
And if I die before I wake
I pray the Lord, my soul, to take
''Cause I''m ready for the funeral
Uh-oh, uh-oh, uh-oh
You might also like
My mind runs, I could never catch it
Even if I got a head start, God, please help me
I am feeling so alone, wait
I don''t need to worry ''cause I know the world''ll feel this nigga
Blessing in disguise, but I am not hiding who I am, open your eyes, bruh
If I ever met you, I appreciate the love, yo
Girls that I dated, it''s okay, I am not mad, yo
Unless you stabbed me in the heart, no love ho
This shit is so ill
Play it back from the top if you recognize real

And if I die before I wake
I pray the Lord, my soul, to take
But please don''t cry
Just know that I have made these songs for you
And if I die before I wake
I pray the Lord, my soul, to take
''Cause I''m ready for the funeral
And if I die before I wake
I pray the Lord, my soul, to take
But please don''t cry
Just know that I have made these songs for you
And if I die before I wake
I pray the Lord, my soul, to take
''Cause I''m ready for the funeral
I''m ready for that
I''m ready for the funeral, hey-hey
I''m ready for the funeral, hey
I''m ready for the funeral
Hey, I''m ready for it
I''m ready for it
I''m ready for the funeral', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (621, 'Erase Me', '
She said I don''t spend time like I really should
She said she don''t know me anymore
I think she hates me deep down, I know she does
She wants to erase me, hmm
A couple days, no talking, I see my baby
And this what she tells me

She said I keep on running, keep on running
And nothing works, I can''t get away from you, no
I keep on ducking, keep on ducking you, nothing helps
I can''t stop missing you (Yeah)

It''s like I''m her new nightmare, she ain''t escaping
It makes me feel a bit complete (Yeah)
Knowing someone you love don''t feel the same way about ya
Memories they soon delete (Hmm)
A couple weeks, no talking, I see my baby
I missed you so damn much
Hey, I wish we could start over, I told my baby
This what this bitch tells me

She said I keep on running, keep on running, and nothing works
I can''t get away from you, no
I keep on ducking, keep on ducking you, nothing helps
I can''t stop missing you
You might also like
Yeah, ''cause I''m in the magazines, on the TV
No matter where you are, you might hear me (Uh)
I''m in the magazines (Yeah), on the TV
No matter where you go, you might see me (Hello, haha)

Uh, I''m Yeezy, she say "Hi, I''m Aria"
No, you a angel, you wave "Hi" to Aaliyah
I got a show in Korea, they built a new arena
Why don''t you come and watch a nigga tear the whole scene up
I know I seen you before, but don''t know where I seen ya
Oh I remember now, you something that I dreamed of
Don C says she cool, but don''t let her fuck your cream up
Monica Lewinsky on the dress, she''ll take you to the cleaners
Sure enough, a week later, I''m in extra love
And everybody know she''s mine so she extra plugged
Every bouncer, every club show her extra love
We just praying the new fame don''t get the best of us
But all good things gotta come to a en-a
She let it go to her head, "No, not my Aria"
The height of her shopping was writer''s blocking me
I couldn''t get my shit out anyway, I hope you die, Aria

She said I keep on running, keep on running
And nothing works, I can''t get away from you, no
I keep on ducking, keep on ducking you, nothing helps
I can''t stop missing you', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (716442, '​love.', '

I am happy to be alive
''Cause I know I could not be in a place that''s filled with lies
Can''t stand no quiet nights, while I fill up my glass with pride
Hopeful is all I know, how to keep me from silent cries
Nothing I can say, facing all this pain in my way

I fight it every day
Why am I this way?
A nigga tryna maintain
I sit and tell myself, "Okay"
We gotta find another way
You gotta find another way
You gotta find another way

Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
You might also like
Now is the time to show what you''re made of

I am happy to be alive
''Cause I know I could not be in a place so filled with lies
Can''t stand no quiet nights, while I fill up my glass with pride
Hopeful is all I know, how to keep me from silent cries
Nothing I can say, done running from this pain in my way

I''m fighting every day
Why am I this way?
A nigga tryna maintain
I sit and tell myself, "Okay"
We gotta find another way
You gotta find another way
You gotta find another way

Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Now is the time to show what you''re made of

Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of
Don''t be so down, c''mon, young homie
You''ll be okay, you''ll find real love
All of the stories, the hero gets lonely
Now is the time to show what you''re made of', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (77782, 'Yellow', '
Look at the stars
Look how they shine for you
And everything you do
Yeah, they were all yellow
I came along
I wrote a song for you
And all the things you do
And it was called "Yellow"
So then I took my turn
Oh, what a thing to have done
And it was all yellow

(Aah) Your skin, oh, yeah, your skin and bones
(Ooh) Turn into something beautiful
(Aah) And you know, you know I love you so
You know I love you so

I swam across
I jumped across for you
Oh, what a thing to do
''Cause you were all yellow
I drew a line
I drew a line for you
Oh, what a thing to do
And it was all yellow
See Coldplay LiveGet tickets as low as $68You might also like
(Aah) And your skin, oh, yeah, your skin and bones
(Ooh) Turn into something beautiful
(Aah) And you know, for you, I''d bleed myself dry
For you, I''d bleed myself dry

It''s true
Look how they shine for you
Look how they shine for you
Look how they shine for
Look how they shine for you
Look how they shine for you
Look how they shine

Look at the stars
Look how they shine for you
And all the things that you do', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1652, 'Man on the Moon (The Anthem)', '
(Yawn)
Alright, run it
I never gave a fuck
I never gave a fuck about what niggas thought about me
I mean, I did, but like, fuck it, you know what I''m saying?
You gon'' love me, man
You gon'' love me, man

They can''t comprehend
Or even come close to understanding him
I guess if I was boring they would love me more
Guess if I was simple in the mind, everything would be fine
Maybe if I was a jerk to girls
Instead of being nice and speaking kind words
Then maybe it would be okay to say then
I wasn''t a good guy to begin with

But my mind is all crazy, crazy, crazy, crazy
They got me thinking I ain''t human
Like I came in from above, above, above, above
Feeling like an airplane in the sky
But then they say I''m crazy, crazy, crazy, crazy
They got me thinking I ain''t human
Like I came in from above, above, above, above
Feeling like a bird sitting high, high
You might also like
I be that man on the moon, I''m that man on the moon
And I''mma do what I do, so do you, hey-hey
I be posted with my blunt and a brew, my dude
I''m that man on the moon, I''m up-up on the moon

It''s like, I''mma play all my stuff for everybody
And you know, and all my people, they give me feedback
You know, and they''ll be like
"Yo, yo, why, why your shit sound so different?"
You know what I''m saying?
"Why yo- why yo- why your shit- like on another level- Why''s-
Why''s it sound so different?"
Like that''s a bad thing
And I be like, "Why not, nigga?"

Close my eyes, high in the dark
It''s a curtain call; come one, come all
All I do is try to make it simple
The ones that make it complicated
Never get congratulated
I''m something different, all aspects
Don''t want a woman just to love her assets
I''ll still wife her up, even with her flat chest
The type to get hurt, but that''s the past tense
My mind is all hazy, hazy, hazy, hazy
I be thinkin'' that I''m wrong
''Cause they used to call me lame, lame, lame, lame
My swag was a little different
But then my mind is hazy, hazy, hazy, hazy
I be thinkin'' that I''m wrong
But they the ones who lame, lame, lame, lame
I got the last laugh, nigga

I be that man on the moon, I''m that man on the moon
And I''mma do what I do, so do you, hey-hey
I be posted with my blunt and a brew, my dude
I''m that man on the moon, I''m up-up on the moon', 68);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (203961, 'Control', '

Mhm, I look up
Yeah, and I take my time, nigga
I''ma take my time, woah
Mhm, power moves only, nigga

Boy, I''m ''bout my business on business, I drink liquor on liquor
I had women on women: yeah, that''s bunk-bed bitches
I''ve done lived more than an 80-year-old man still kickin''
‘Cause they live for some moments, and I live for a livin''
But this for the girls who barely let me get to first base
On some ground ball shit
‘Cause now I run my city on some town hall shit
They prayin'' on my motherfuckin'' downfall, bitch
Like a drought, but you gon'' get this rain like it''s May weather
G.O.O.D. Music, ''Ye weather
Champagne just tastes better
They told me I never, boy, never say never
Swear flow special like an infant''s first steps
I got paid then reversed debts
Then I finally found a girl that reverse stress
So now I''m talkin'' to the reaper to reverse death
Yep, so I can kick it with my granddad, take him for a ride
Show him I made somethin'' out myself and not just tried
Show him the house I bought the fam, let him tour inside
No matter how far ahead I get, I always feel behind in my mind
But fuck tryin'' and not doin''
‘Cause not doin'' is somethin'' a nigga not doin''
I said fuck tryin'' and not doin''
‘Cause not doin'' is somethin'' a nigga not doin''
I grew up to Em, B.I.G., and Pac, bitch, and got ruined
So until I got the same crib B.I.G. had in that "Juicy" vid
Bitch, I can''t motherfuckin'' stop movin''
Go against me, you won''t stop losin''
From the city where every month is May-Day at home, spray your dome
Niggas get sprayed up like A.K. was cologne for a paycheck or loan
Yeah, I know that shit ain''t fair
They say Detroit ain''t got a chance, we ain''t even got a mayor
You write your name with a Sharpie, I write mine in stone
I knew the world was for the taking and wouldn''t take long
We on, tryna be better than everybody that''s better than everybody
Rep Detroit, everybody, Detroit vers'' everybody
I''m so fuckin'' first class I could spit up on every pilot
The city''s my Metropolis, feel it, it''s metabolic
And I''m over niggas sayin'' they''re the hottest niggas
Then run to the hottest niggas just to stay hot
I''m one of the hottest because I flame drop
Drop fire, and not because I''m namedroppin'', Hall of Fame droppin''
And I ain''t takin'' shit from nobody unless they''re OGs
‘Cause that ain''t the way of a OG
So I G-O collect mo'' Gs, every dollar
Never changed though, I''m just the new version of old me
Forever hot-headed but never got cold feet
Got up in the game, won''t look back at my old seats
Clique so deep we take up the whole street
I need a bitch so bad that she take up my whole week
Sean Don
You might also like
Miscellaneous minds are never explainin'' their minds
Devilish grin for my alias aliens to respond
Peddlin'' sin, thinkin'' maybe when you get old you realize
I''m not gonna fold or demise
I don''t smoke crack, motherfucker, I sell it!
Bitch, everything I rap is a quarter piece to your melon
So if you have a relapse, just relax and pop in my disc
Don''t you pop me no fuckin'' pill
I''ma pop you, then give you this

Tell Flex to drop a bomb on this shit
So many bombs, ring the alarm, like Vietnam on this shit
So many bombs, make Farrakhan think that Saddam in this bitch
One at a time, I line them up
And bomb on they mom while she watchin'' the kids
I''m in a destruction mode if the gold exists
I''m important like the Pope, I''m a Muslim on pork
I''m Makaveli''s offspring, I''m the King of New York
King of the Coast; one hand, I juggle ''em both
The juggernaut''s all in your jugular, you take me for jokes
Live in the basement, church pews, and funeral faces
Cartier bracelets for my women friends, I''m in Vegas
Who the fuck y''all thought it''s supposed to be?
If Phil Jackson came back, still no coachin'' me
I''m uncoachable, I''m unsociable, fuck y''all clubs!
Fuck y''all pictures! Your Instagram can gobble these nuts!
Gobble dick up ''til you hiccup, my big homie Kurupt
This the same flow that put the rap game on a crutch
(West, West, West, West, West, West)
I''ve seen niggas transform like villain Decepticons
Mollies probably turn these niggas to fuckin'' Lindsay Lohan
A bunch of rich-ass white girls lookin'' for parties
Playin'' with Barbies
Wreck the Porsche before you give them the car key
Judgement to the monarchy, blessings to Paul McCartney
You called me a black Beatle, I''m either that or a Marley
I don''t smoke crack, motherfucker, I sell it!
I''m dressed in all black, this is not for the fan of Elvis
I''m aimin'' straight for your pelvis
You can''t stomach me? You plan on stumpin'' me?
Bitch, I’ve been jumped before you put a gun on me
Bitch, I put one on yours, I''m Sean Connery
James Bonding with none of you niggas
Climbin'' 100 mil in front of me
And I''m gonna get it even if you''re in the way
And if you''re in it, better run for Pete''s sake
I heard the barbershops be in great debates all the time
''Bout who''s the best MC: Kendrick, Jigga, and Nas
Eminem, André 3000; the rest of y''all
New niggas just new niggas, don''t get involved
And I ain''t rockin'' no more designer shit
White T’s and Nike Cortez, this red Corvette''s anonymous
I''m usually homeboys with the same niggas I''m rhymin'' with
But this is hip-hop, and them niggas should know what time it is
And that goes for Jermaine Cole, Big K.R.I.T., Wale
Pusha T, Meek Millz, A$AP Rocky, Drake
Big Sean, Jay Electron'', Tyler, Mac Miller
I got love for you all, but I''m tryna murder you niggas
Tryna make sure your core fans never heard of you niggas
They don''t wanna hear not one more noun or verb from you niggas
What is competition? I''m tryna raise the bar high
Who tryna jump and get it? You''re better off tryna skydive
Out the exit window of five G5''s with five grand
With your granddad as the pilot, he drunk as fuck, tryna land
With the hand full of arthritis and poppin'' prosthetic leg
Bumpin'' Pac in the cockpit so the shit that pops in his head
Is an option of violence, someone heard the stewardess said
That your parachute is a latex condom hooked to a dread
West Coast
You could check my name on the books
I Earth Wind & Fire’d the verse, then reigned on the hook
The legend of Dorothy Flowers proclaimed from the roof
The tale of a magnificent king who came from the nooks
Of the wild magnolia, mother of many soldiers
We live by every single word she ever told us
Watch over your shoulders
And keep a tin of beans for when the weather turn the coldest
The Lord is our shepherd, so our cup runneth over
Put your trust in the Lord, but tether your Chevy Nova
I’m spittin'' this shit for closure
And God is my witness, so you could get it from Hova
To all you magicians that’s fidgetin'' with the cobra
I’m solid as a rock, ‘cause I came from a rock
That’s why I came with the rock
Then signed my name on the Roc
Draw a line around some Earth, then put my name on the plot
‘Cause I endured a lot of pain for everythang that I got
The eyelashes like umbrellas when it rain from the heart
And the tissue is like an angel kissin'' you in the dark
You go from blind sight to hindsight
Passion of the Christ, right, to baskin'' in the limelight
It take time to get your mind right
Jay Electricity, PBS Mysteries
In a lofty place tanglin'' with Satan over history
You can’t say shit to me, الحمد لله‎
It’s strictly by faith that we made it this far', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (517618, 'I Don’t Fuck with You', '
Uh-huh
Fuck

(Mustard on the beat, ho) I don''t fuck wit'' you
You lil'' stupid ass bitch, I ain''t fuckin'' wit''chu
You lil'', you lil'' dumb ass bitch, I ain''t fuckin'' wit''chu
I got a million trillion things I''d rather fuckin'' do
Than to be fuckin'' with you (You,) lil'' stupid ass

I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
I don''t give a fuck, bitch, I don''t give a
Fuck about you, or anything that you do
I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
Don''t give a fuck about you, or anything that you do
I don''t give a fuck, uh

I heard you got a new man, I see you takin'' a pic (Woah)
Then you post it up, thinkin'' that it''s makin'' me sick
Brr brr, I see you callin'', I be makin'' it quick
I''ma answer that shit like, "I don''t fuck wit''-
Chu, bitch, I got no feelings to go
I swear I had it up to here, I got no ceilings to go
I mean, for real, fuck how you feel
Fuck your two cents if it ain''t goin'' towards the bill, yeah
And every day I wake up celebratin'' shit, why?
‘Cause I just dodged a bullet from a crazy bitch, I
Stuck to my guns (Woah,) that''s what made me rich
That''s what put me on, that''s what got me here, that''s what made me this (This)
And everything that I do is my first name (B-I-G)
These hoes chase bread, aw damn, she got a bird brain
Ain''t nothin'' but trill in me, aw man, silly me
I just bought a crib, three stories; that bitch a trilogy
And you know I''m rollin'' weed that''s fuckin'' up the ozone
I got a bitch that text me she ain''t got no clothes on (Swerve)
And then another one text (Swerve, swerve,) then your ass next
And I''ma text your ass back, like—
You might also like
I don''t fuck wit'' you
You lil'' stupid ass bitch, I ain''t fuckin'' wit''chu
You lil'', you lil'' dumb ass bitch, I ain''t fuckin'' wit''chu
I got a million trillion things I''d rather fuckin'' do
Than to be fuckin'' with you, lil'' stupid ass

I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
I don''t give a fuck, bitch, I don''t give a (E-40)
Fuck about you, or anything that you do
I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
Don''t give a fuck about you, or anything that you do (Hawoo)
I don''t give a fuck, uh

Got a million things on my mind, executive deals online, limited amount of time
Chasin'' these dollar signs and you ain''t on your grind
You liable to find me up in the MGM casino in the D
Fuckin'' off fetti I could''ve put on property
From the Bay to the Murder Mitten, my niggas put murder missions
She choosin'', that''s her decision, free my niggas in prison
On the phone with a bitch who can''t do shit
For a pimp but make a nigga hella rich (Hella rich)
Got a blunt in my dental, blowin'' hemp in a rental
On my way to Sacramento, late night; Arsenio (Arsenio)
I''m never sentimental, go hard or go homeless
Barely Harley, I''m chromeless (Uh,) you might end up domeless (Uh)
I bet you she into me, her cheddar, she givin'' me
I''ll make a bitch stand outside forever, like the Statue of Liberty (Mmm)
Rest in pimp, Pimp C, underground king of the South
I raise my styrofoam up, and pour some drink in my mouth (Pour up)
Why you always comin'' around with bad news? (Bad news)
Say you want me to win, but hope I lose (Hope I lose)
Askin'' if I rock with other niggas in the crew (Crew,) but them niggas cool (Cool)
It''s just that—
I don''t fuck wit'' you (Lil'' biatch)
You lil'' stupid ass bitch, I ain''t fuckin'' wit''chu (Uh-uh)
You lil'', you lil'' dumb ass bitch, I ain''t fuckin'' wit''chu
I got a million trillion things I''d rather fuckin'' do
Than to be fuckin'' with you, lil'' stupid ass

I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
I don''t give a fuck, bitch, I don''t give a
Fuck about you, or anything that you do
Don''t give a fuck about you, or anything that you do (You)
I don''t give a fuck, I don''t give a fuck, I don''t, I don''t
I don''t give a fuck, bitch, I don''t give a
Fuck about you, or anything that you do
Don''t give a fuck about you, or anything that you do
I got a new chick that I gotta thank God for (God)
I got a new whip that I gotta thank the lot for (Swerve, swerve, swerve)
Yeah, I got a lot, but want a lot more
Yeah, we in the buildin'', but I''m tryna take it to the top floor (Floor)
I swear I hear some new bullshit every day I''m wakin'' up (Uh)
It seem like nowadays everybody breakin'' up (Uh)
That shit can break ya down, if you lose a good girl
I guess you need a bad bitch to come around and make it up (Yup)
I guess drama makes for the best content
Everything got a bad side, even a conscience
Now you''re drinkin'' ''til you''re unconscious (Woah,) feel me
When you get a fine bitch, just don''t forget to read the fine print
Life got me meditatin'' like I''m in the Himalayas
Keep it G with the L lit on me like the elevator
Yeah, I know that karma too real, so I hope you doin'' cool
But still—
Stupid ass bitch, I ain''t fuckin'' wit''chu
No, no, no, no
Little stupid ass, I ain''t fuckin'' wit'' (Woah)
I ain''t fuckin'', I ain''t, I ain''t fuckin'' wit''chu (Woah)
I ain''t fuckin'' wit''chu, ha
Straight up, yeah, yeah
Woah
', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (693878, 'Blessings', '
Look
I feel blessed
Way up, I feel blessed
Way up, I feel blessed
(Straight up)
I live the life I deserve, blessed
Fuck a vacay, I feel better at work
I mean, whatever it''s worth, I give whatever I''m worth
For my niggas who gon'' go to Hell and back for me
I''ma give ''em Heaven on Earth
Or a hell of a check, yeah, whichever come first
Blessings on blessings on blessings
Look at my life, man, that''s lessons on lessons on lessons
I treat the beat like it''s a reverend
I tell the truth like, "Father, forgive me, these are all my confessions"
Man, this wasn''t luck, it was destined
I done lost homies who been with me since Ed, Edd n Eddy
Who flip like confetti
And then when you back, they back to call you "dog"
That shit get-get petty
Bitch, don''t give no dap to me, nigga
Funny thing about talking behind my back
Is that it just keep coming back to me, nigga
Was off for a sec, now it''s back to me, nigga, you mad at me
This ain''t what I want, man, this what it had to be
This is that late night working after three, man
This is why my old girl was mad at me
This why I''m your majesty, man
The clique is the tightest, the pussy the tightest
The drinks are the coldest, the future the brightest
The feat not divided, the love is divided
And I just gotta thank God that we got it
Blessed
I don''t know what I would do without it
Crew look like we robbed a bank, but all we make is deposits
Your prophet will profit, oh God
You might also like
I''m here for a good time, not a long time, you know I
I haven''t had a good time in a long time, you know I
I''m way up, I feel blessed
Way up, I feel blessed (Straight up)
I''m way up, I feel blessed (Straight up, straight up)
Way up, I feel blessed

Look, I ain''t gon'' say that we back or nothing
‘Cause that implies that we''re back from something
If we''re back from somethin'' there''s some checks you owe us
I expect that payment, nothing less or over
I don''t need them favors that you ask me for
I could give two fucks ''bout where the Grammys go
I just gave out Grammys on my Instagram
Them OVO boys, the business man
It is what it is, trust me, you get what you give, yeah
You gotta come to my side and see how we live, yeah
I cannot see Heaven being much better than this, yeah
Blessings on blessings for me and my niggas from the 6
Look at what we did, yeah
Be quiet, I''m doing a toast
For niggas that don''t really do shit, I swear, y''all be doing the most
Stop worrying ''bout whoever''s next
I am just worried ''bout my mama worrying less
I think I''m famous enough
I don''t need any more press
I am convinced I''m the only one left that''s still doing this shit, man
I''m here for a good time, not a long time, you know I
I haven''t had a good time in a long time, you know I
I''m way up, I feel blessed
Way up, I feel blessed (Straight up)
I''m way up, I feel blessed (Straight up, straight up)
Way up, I feel blessed

My grandma just died, I''m the man of the house
So every morning I''m up ''cause I can''t let them down, down
Always down for the cause, never down for the count
I guess when your stars align
You do like the solar system and plan it out
So I''m going over time, on the overtime
Yeah, I''m that invested, but you can''t attest it
Million dollar goals, managed to manifest it
The family never going anorexic
I pay my own mortgage and electric
Never going under even with anesthetics
At the top of the rap game and progressin''
Check after check, checking off my check list
Try and blow my cake, just know that''s a death wish
No mistakes in life ever, it''s only lessons
Shit feel like Shaq and Penny got back together
You tore the game apart, who put it back together? I
I''m here for a good time, not a long time, you know I
I haven''t had a good time in a long time, you know I
I''m way up, I feel blessed
Way up, I feel blessed (Straight up)
I''m way up, I feel blessed (Straight up, straight up)
I''m way up, I feel blessed
Since the truth keep niggas traumatized
They tryna compromise my condom size
So I Snapchat that whole shit
Tryna see titties, tryna show dick
And I swear to God, I hope they post it, I''m blessed
Even though I get slammed with lawsuits like car doors
See three P.O.''s like Star Wars
They want me by the road holding up cardboard
So I go extra hard on the hard floor
Right now, I''m calling you from my home gym
Right after that, nigga, I''m gon'' swim
Just did a couple laps in my home pool
And my daughter right there getting home-schooled, I''m blessed
And I was thinking ''bout starting up my own school, a Montessori
And the hallway looking like a monastery, oh, yes
I''m way up, I feel blessed', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2893922, 'Bounce Back', '
Hitmaka
If Young Metro don''t trust you, I''m gon'' shoot you

Last night took a L, but tonight I bounce back
Wake up every morning, by the night, I count stacks
Knew that ass was real when I hit, it bounce back
(You ain’t getting checks)
Last night took a L, but tonight I bounce back
Boy, I been broke as hell, cashed a check and bounced back
D town LAX, every week I bounce back
If you a real one, then you know how to bounce back

Don’t owe nobody, owe nobody
Always on the fuckin'' job, I got no hobbies
Got the city fuckin'' with me ''cause I''m homegrown
Vibin'' out more than my phone though
Leave me ‘lone, me on my own though
Look, I cut that bitch off like a edit
My daddy a G, it''s genetics (Straight up)
I heard ya new shit, it''s pathetic
Ya contract should be shredded
Took my dogs on a private jet from the public housing
I kept it G, yeah, one thousand
Clique star-studded like the Paramount mountain
Everything I do is righteous
Betting on me is the right risk
Even in a fucking crisis
I’m never on some switching sides shit
I switch gears to the night shift
Blacking out ''cause I’m enlightened
God talk to me in silence
But I hear him every time, mane
(Thank you, God, God bless you, thank you so much)
You might also like
Last night took a L, but tonight I bounce back
Wake up every morning, by the night, I count stacks
Knew that ass was real when I hit, it bounce back
(You ain’t getting checks)
Last night took a L, but tonight I bounce back
Boy, I been broke as hell, cashed a check and bounced back
D town LAX, every week I bounce back
If you a real one, then you know how to bounce back

Look, I woke up in beast mode
With my girl, that''s beauty and the beast though
Been top 5, these niggas sleep though
Only thing that sold out is the seats though
(Never sold my soul, never will never have)
Nigga how dare you stand before me and not respect my authority
If you fuck with my glory, I''ma drop the L and get gory
I done did everything except worry
Hella drama, my life story
Faith of a mustard seed, I kept growing
I knew that this life was meant for me
Niggas change up more than wishin'' wells
Karma come around I''ll wish ''em well
Livin'' like I’m on a limitless pill
I kill the scene like I’m Denzel
Crazy like my jacket strapped up
Nigga, I don’t act but I''ll act up
Brown paper bag like the lunch packed up
Back, back, back, back up
Nigga, I''ma need like 10 feet
Or get stomped out with ten feet
I''ma always lose my temper
You cannot “count to ten” me
If I lose 1, I bounce back like 2, 3 did with 4, 5
Seen courtrooms and court sides, ain’t too many seen both sides
Nigga, fuck what you know
Nigga, I’m takin'' back control
The underdog just turned into the wolf and the hunger steady grows
Yeah, I call shots while you call off
Never takin'' summer or fall off
When you stay that committed to it, you just fall down and never fall off, so
Last night took a L, but tonight I bounce back
Wake up every morning, by the night, I count stacks
Knew that ass was real when I hit, it bounce back
(You ain’t getting checks)
Last night took a L, but tonight I bounce back
Boy, I been broke as hell, cashed a check and bounced back
D town LAX, every week I bounce back
If you a real one, then you know how to bounce back

Bounce back, bounce, bounce
Bounce back, bounce, bounce
Bounce, bounce, bitch, bounce (Yeah)
Is you a real one?
Is you a real one?
Real one
Real one
Is you a real one?
Real one
Real one
Don', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (178511, 'Beware', '
When you said it was over, you shot right through my heart
Why you let these hoes tear what we had right apart?
Ooh, I was so mad, I should''ve seen this coming right from the start
You should beware, beware, beware of a woman with a broken heart

Yeah, praying to a sky all black
Looking at the stars like they finna talk back
Looking at my phone like she finna call back
But last night I feel like probably ended all that
''Cause by now, she woulda sent a text in all caps
Then another one tryna take it all back
Saying "Fuck you," "I miss you," or "I hate you so much"
''Cause girls only say "hate you" to the guys that they love
I know, I know, I know
The highs, the lows it comes, it goes
You say "Be real," I try, I don''t
''Cause you take anything and just make it everything (God)
Kept my phone on silent ever since you got a ring, funny, right?
And I never cheated; I mean, maybe once or twice
But one time don''t change everything
She ask why I don''t feel the same, I''m still the same
She''s still insane and now she''s saying

When you said it was over, you shot right through my heart
Why you let these hoes tear what we had right apart?
Ooh, I was so mad, I should''ve seen this coming right from the start
You should beware, beware, beware of a woman with a broken heart
You might also like
Okay, skeet, smoke, sleep, call, miss, text, woke, spoke
Lie, feel, Lisa, ew, time, kill, months, still

I got somebody baby mama calling me daddy (Yup)
I drank too much, please call me a cabby (Swerve)
Penthouse afterparty, hoes want the addy (Swerve)
Fuck, they can ride with us, crawl in the Caddy
Third row, that''s when you call, I hit cancel
Really, I hit answer, fuck, I hate when that happens
Phone in my pocket for the whole night
And you heard bitches screaming ''til my phone died
Then she text me like, "Why you still talk to my mama?
How the fuck you run around with condoms?
Why you make me get this tattoo? Man, fuck this tattoo
You the reason I wasn''t single in college
What, all because I had you?
Nigga, I don''t even have you
How I''m supposed to get past you?"
Then she called the next guy, spillin'' some real shit
Now they problems that he got to deal with

When you said it was over, you shot right through my heart
Why you let these hoes tear what we had right apart?
Ooh, I was so mad, I should''ve seen this coming right from the start
You should beware, beware, beware of a woman with a broken heart
Girl, don''t believe them hoes
''Cause they don''t wanna see us together
And you already know you''re too fly
But baby, don''t get your hair caught in the propellers
I be tryna tell her these hoes is jealous
You know they never like it when you never say never
Long hair, red bone, but her pussy is hairless
Mwah, I french kiss it like we in Paris
I be screaming out, "Ain''t no woman like the one I got!"
But she be always worrying about the one I fucked
She said it''s gonna be me, myself and I
Damn, that''d make me a one-eyed fuck
I was so mad
Damn, you used to ride a nigga like a moped
But players fuck up, my bad
And just to keep from crying, I laughed

When you said it was over, you shot right through my heart (Tunechi)
Why you let these hoes tear what we had right apart
Ooh, I was so mad, I should''ve seen this coming right from the start (Damn)
You should beware, beware, beware of a woman with a broken heart

Baby, last time calling me baby
Last time calling me crazy, crazy, crazy
Baby, last time calling me baby
Last time calling me crazy, crazy, crazy', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (56737, 'Dance (A$$) (Remix)', '
Ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Stop! Now make that motherfucker hammer time like
Go stupid, go stupid, go stupid

Wobble-dy wobble-dy wa wobble wobble
I’m st-stacking my paper my wallet look like a bible
I got girlies half naked that shit look like the grotto
How your waist anorexic and then your ass is colossal
Drop that ass make it boomerang
Take my belt off, bitch I’m Pootie Tang
Tippy tow tippy tay you gon'' get a tip today
Fuck that you gonna get some dick today
I walk in with my crew and I’m breaking they necks
I’m looking all good I’m making her wet
They pay me respect they pay me in checks
And if she look good she pay me in sex (do it)
Bounce that ass (ass) it’s the roundest
You the best, you deserve a crown bitch, right on that ass

Ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Stop! Now make that motherfucker hammer time like
Go stupid, go stupid, go stupid
You might also like
Wobbledy wobble, wo-wo-wobble, wobbin’
Ass so fat, all these bitches’ pussies is throbbin’
Bad bitches, I’m your leader, Phantom by the meter
Somebody point me to the best ass eater
Tell ''em "Pussy clean" I tell them "Pussy squeaky"
Niggas give me brain ’cause all of them niggas geeky
If he got a Mandingo, then I buy him a dashiki
And bust this pussy open in the islands of Waikiki
Kiss my ass and my anus, ’cause it’s finally famous
And it’s finally soft, yeah, it’s finally solved
I don’t know, man, guess them ass shots wore off
Bitches ain’t poppin’, Google, my ass
Only time you on the net is when you Google my ass
Y-y-you fuckin’ little whores, fu-fuckin’ up my decors
Couldn’t get Michael Kors if you was fuckin’ Michael Kors
B-B-Big Sean, b-boy, how big is you
Give me all your money and give me all your residuals
Then slap it on my ass, ass, ass

Ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Stop! Now make that motherfucker hammer time like
Go stupid, go stupid, go stupid
H-h-h-h-h-hammer time
Woah, white girls, black girls, tall girls, fat girls
Shake that ass shake that ass, shake that ass
Shake that ass, shake that ass, shake that ass
Go, go
Short girls, small girls, skinny girls, all girls
Shake that ass shake that ass, shake that ass
Shake that ass, shake that ass, shake that ass
And I want all of that

Ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Ass ass ass ass ass ass ass ass
Stop! Now make that motherfucker hammer time like
Go stupid, go stupid, go stupid
Go stupid!', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2973484, 'No Favors', '
Uh huh

Make it, make it, make it, boy, we gotta make it (Make it)
You can save your hand, I ain''t gotta shake it
Everything lined up for the takin'' (For the takin'')
And what I need from ''em? No favors
Clique too big, bread gotta break it
''Cause these others lowkey with the snakin'', fakin''
Everything lined up for the takin''
And what I need from ''em? No favors, no favors (No)
What I need? No favors
Everything lined up for the takin'' (Yeah-yeah)
And what I need from ''em? No favors (Look)

I''m about gettin'' the job done, boy, up every night
I''m about rollin'' a seven when I toss up the dice (Dice)
I''m about gettin'' my logo all flooded with ice
I''m about takin'' a risk that might fuck up your life (Woah)
Tell ''em point and shoot like camera crews
In front of cameras too (Brrr)
Damn, Sean, what happened to the humble attitude?
I''m like, "Niggas took the flow, but I''m still standin'' too"
Thought I had the Midas touch, and then I went platinum too
Motherfuck all your comparisons (Fuck ''em)
I''ve been talkin'' to God like that''s my therapist
I''m African-American in America, I ain''t inherit shit
But a millionaire under 30 so He must be hearin'' shit
Don, don, don life (Don), I do this for the crib, the D to Flint (Woah)
Kids who get sick with lead, others get hit with the lead
From where they need a handout, but they tell you put hands up (No)
Only deals I had was from the Sam''s Club
Now it''s blue blood in my veins, though you know what I came for
Born in a world goin'' where they told me I can''t go
In my lane though, I''m in the same boat as Usain Bolt
Get ahead by any means so the head''s what I aim for
When my grandma died I realized I got an angel
Show me everything''s a blessing dependin'' on the angles
Look, I am the anomaly, never needed favors or apologies
That''s my new lifetime policy
Woodgrain steering wheel, this bitch feel like a pirate ship (Swerve, swerve)
How many hot verses ''til you bitches start acknowledgin''
The pictures we been paintin''? My nigga
Connected to a higher power—how I know?
''Cause I don''t write this shit, I think it, my nigga (Goddamn)
Look, all I ever did was beat the odds
''Cause when you try to get even it just don''t even out
Never stoppin'' like we hypnotized
Watch what we visualize on the rise (Woah)
Be the G.O.A.T. while we alive, when we die, we gon'' be the Gods
You might also like
Make it, make it, make it, boy, we gotta make it
You can save your hand, I ain''t gotta shake it
Everything lined up for the takin''
And what I need from ''em? No favors
Clique too big, bread gotta break it
''Cause these others lowkey with the snakin'', fakin''
Everything lined up for the takin''
And what I need from ''em? No favors, no favors

If she was flavor, I won''t save her
No taste buds, ho, later
Fuck you lookin'' at, hater?
I saw them eyes like an ass raper
Try to copy my swag like a cheating classmate
I''ll be the last face you see ''fore you pass
When you get your fuckin'' ass graded like a math paper
So ahead of my time, "late" means I''m early
My age is reversing, I''m basically thirty
Amazingly sturdy, zany and wordy
Brainy and nerdy, blatantly dirty
Insanely perverted, rapey and scurvy
They blame me for murdering Jamie Lee Curtis
Said I put her face in the furnace, beat her with a space heater
A piece of furniture, egg beater, thermos
It may be disturbing, what I''m saying''s cringeworthy
But I''m urinating on Fergie, call Shady number 81
Surely I''m turning into the Aaron Hernandez of rap
State of emergency, the planet''s having panic attacks
Brady''s returning, matter of fact I may be deserving
Of a pat on the back like a Patriots jersey
Inexplicable stomach growl from the pit of it
Like a fuckin'' Terrier hid in it
Despicable, dumb it down, ridiculous
Tongue is foul, shoot off at the fuckin'' mouth
Like a missile, a thunder cloud
Hundred pound pistol, pull the trigger, this gun will sound
And you''ll get a round like Digital Underground
And fuck Ann Coulter with a Klan poster
With a lamp post, door handle, shutter
A damn bolt cutter, a sandal, a can opener
A candle, rubber, piano, a flannel, sucker
Some hand soap, butter, a banjo and manhole cover
Hand over the mouth and nose smother
Trample ran over the tramp with the Land Rover
The band, the Lambo, Hummer and Road Runner
Go ham donut, or go Rambo, gut her, make an example of her
That''s for Sandra Bland, ho, and Philando
Hannibal on the lam, no wonder I am so stubborn
I''m anti, can''t no government handle a commando
Your man don''t want it
Trump''s a bitch, I''ll make his whole brand go under (Yeah)
And tell Dre I''m meeting him in L.A.​
White Bronco like Elway, speeding
I''m ''bout to run over a chick, Del Rey CD in?
Females stay beating ''em
Bet you they''ll lay bleeding, and yell, "wait," pleading
But screaming is pointless like feeding Michel''le helium
Leaving ''em pale-faced, medium-sized welt
Straight treating ''em like a cellmate
Seedy, I''m climbing hell''s gate
Bitch, I''m like your problems: self-made
Meaning someone else''s help ain''t needed, ''cause I''ma—
Make it, make it, make it, boy, we gotta make it
You can save your hand, I ain''t gotta shake it
Everything lined up for the takin''
And what I need from ''em? No favors
Clique too big, bread gotta break it
''Cause these others lowkey with the snakin'', fakin''
Everything lined up for the takin''
And what I need from ''em? No favors, no favors
What I need? No favors
Everything lined up for the takin''
And what I need from ''em? No favors

I know you feeling yourself right now
But I''m not sure she''s the one
I wouldn''t call her, man
Hey, I''m outside
What are you doing here?
', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (79647, 'Fix You', '
When you try your best, but you don''t succeed
When you get what you want, but not what you need
When you feel so tired, but you can''t sleep
Stuck in reverse
And the tears come streamin'' down your face
When you lose somethin'' you can''t replace
When you love someone, but it goes to waste
Could it be worse?

Lights will guide you home
And ignite your bones
And I will try to fix you

And high up above or down below
When you''re too in love to let it go
But if you never try, you''ll never know
Just what you''re worth

Lights will guide you home
And ignite your bones
And I will try to fix you
See Coldplay LiveGet tickets as low as $68You might also like

Tears stream down your face
When you lose somethin'' you cannot replace
Tears stream down your face, and I...
Tears stream down your face
I promise you I will learn from my mistakes
Tears stream down your face, and I...

Lights will guide you home
And ignite your bones
And I will try to fix you', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (703531, 'I Know', '

Mustard on the beat, ho

I know you''ve been goin'' through some things, uh-huh
I know you don''t even love the same, do you, do you?
I know you''ve been runnin'' on empty, runnin'' on empty
The way you move it''s like you could use a vacation
Drink in your hand and the harder you dance
I swear right now it look like you on a vacation
Gotta get away, make it happen
Whatever happened just had to happen
On vacation, yeah
I know you''ve been, I know you''ve been

Dancin'', dancin'', dancin'' like you fucking got a reason
Dancing like it''s something to believe in
Dancing like it''s fuckin'' dancing season
Blame it on the alcohol or blame it on sativa
The harder your heart keep beating
Only feel bad while you''re thinkin''
Pop, pop, pop like Pepsi Co. the best we smoke
Plus the tan look like you flew in from Mexico
Go go, let me see how wild it get, bust it wide as it get
You need to be taken care of and pampered
But just like a pamper, he on that childish shit
Yeah, I know you''ve been silencing your phone
(Silencing your phone, ignoring calls from home)
Uh-huh, I know you''ve been tryna get along
What''s up, it''s on, no games, we grown
I know you feel like sometimes
That y''all don''t speak the same language
Uh-huh, I know that you just wanna let it go
With all the bitches that you came with
You might also like
I know you''ve been going through some thangs
Wanna get away, baby, let me be your vacation
That other trick you''ve been fuckin'' with is a trip
You know she be playin'', baby I am just saying
I know you know I am down for whatever, yeah
You know I''m just here to make you feel better, yeah
Take a load off on my private island
Come inside and go into hiding
I know that you''ve been sacrificing your time
And need time to unwind and let go
So let go and let''s go and let''s roll and we roll

Excited, activated get ignited
So many charges on my card, oh God I think it got indicted
Get a, get a night, get a day, get a room, get a place
Get a drink, pop a bottle, maybe we can get away
You a star, you need space, we can shoot up out of town
Have you ever been to Texas? South By Southwestern
Where we can smoke a zip like we can''t get arrested
Where they might know us off any intersection
I mean baby I know you''ve been, wanna be the baddest
Wanna be with somebody who ain''t never had it
No status, just all cinematics, you just gotta cast it
I know you''ve been crying and poutin''
Know you''re tired of arguing but no screaming and shouting
And you know we on a roll like we did good in college
Throwin'' hundreds and thousands
Like they not hundreds and thousands

Why? Cause I know you''ve been going through some things
I know you''ve been going through some things you can''t explain
With your main thing that shit insane
I know you just tryna maintain, that shit is lame, you can''t complain
I know you don''t even love the same, do you, do you?
Don''t love the same, I know you''ve been diving through pain
I know you goin'' so crazy, I know you runnin'' on empty
That shit can fuck with your mente
I know this shit, don''t you tempt me, I know you...
I know you''ve been runnin'' on empty, runnin'' on empty
The way you move it''s like you could use a vacation
I know you, I know you
Drink in your hand and the harder you dance
I swear right now it look like you want a vacation
Gotta get away, make it happen
Whatever happened just had to happen
On vacation, yeah
I know you''ve been, I know you''ve been
I know it look like like you need a vacation
How ''bout Hawaii, maybe Jamaica, maybe Asia
Take you places other niggas can''t take ya
Don''t forget the makeup, yeah', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (701664, 'One Man Can Change the World', '

They used to tell me, used to tell me

I hope you learn to make it on your own
And if you love yourself, just know you''ll never be alone
I hope that you get everything you want and that you chose
I hope that it''s the realest thing that you ever know
Hope you get the pretty girls that''s pretty at everything
Million-dollar cribs, havin'' million dollar dreams
And when you get it all, just remember one thing
Remember one thing, that one man could change the world
That one man could change the world

All I, all I wanted was a hundred million dollars and a bad chick
Imagined this so much, some nights it felt like that I had it
Back on the mattress, starin'' at the ceilin'' tryna connect the dots
But it''s hard makin'' those attachments
I''m talkin'' dreamin'' so hard, some nights it felt like draft day
You know? My - my stepbrother used to flip them bags
Outside the crib like it was trash day
No Kim K, but he bagged yay (Ye)
But when you''re gettin'' fast money, slow down, don''t crash
With all the drive in the world, swear you still need gas
Look, think about it, close your eyes, dream about it
Tell your team about it, go make million-dollar schemes about it
Success is on the way, I feel it in the distance
Used to look up at the stars
And be like, "Ain''t too much that''s different"
I be shinin'', they be shinin'', get your one shot, don''t you miss it
What you know bout'' wakin'' up every day like you on a mission?
You might also like
And I hope you learn to make it on your own
And if you love yourself, just know you''ll never be alone
I hope that you get everything you want and that you chose
I hope that it''s the realest thing that you ever know
Hope you get the pretty girls, that''s pretty and everything
Million-dollar cribs, havin'' million dollar dreams
And when you get it all, just remember one thing
Remember one thing, one man could change the world
One man could change the world

My grandma told me, "If you write your name in stone
You''ll never get the white-out"
I grinded out that black hole then performed up at the White House
Standin'' next to Jim Carrey, we traded stories, then laughed
I said you not the only one I know got rich wearin'' masks
Where I''m from, I swear they broke
They need way more than the cast
We need more than what you have
And then we need more than that
But how am I supposed to say I''m tired
If that girl from West Virginia came up in conditions
That I couldn''t survive?
Went to war, came back alive
On top of that became a female black captain
When being black, you had to extra-extra try
Way before James Brown made us proud
She bought a crib on the same street as Marvin Gaye
Right there on Outer Drive, and she taught me how to drive
And she raised the kids, then the kids'' kids, and she did it right
Taught me how to love, taught me not to cry
When I die, I hope you teach me how to fly
All my life you''ve been that angel in disguise, sayin''...
I hope you learn to make it on your own
And if you love yourself, just know you''ll never be alone
I hope that you get everything you want and that you chose
I hope that it''s the realest thing that you ever know
Hope you get the pretty girls, that''s pretty and everything
Million-dollar cribs, havin'' million dollar dreams
And when you get it all, just remember one thing
Remember one thing, that one man can change the world
That one man can change the world

Thank you for callin'' me, been thinkin'' about you
It''s all good, I love you grandma
Bye', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (94434, 'Guap', '
God, oh, God
Boi, boi
I''ve been workin'' all god damn year, I just got my check
I''m ''bout to spend it all on me, I''m worth it, yeah

Hol'' up, hol'' up, tell me what you see (What you see)
Pull up (Swerve), watch these mothafuckas freak (Watch ''em freak)
S-say what up though when you see me in the streets
G.O.O.D. Music in this bitch, now drop that mothafuckin'' beat, woah
Okay, this to all of my enemies that see me gettin'' guap right now
See me gettin'' guap right now, see me gettin'' guap right now (Yeah)
This to all of my hatin'' hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now (Haan?)
This to all my old hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now (Yeah)
See me gettin'' guap right now, hell nah, I won''t stop right now (Big Sean)
Hell nah, I won''t stop right now, see me gettin'' guap right now

Okay, I need 50k large (Right now)
My mama need a new crib (Right now)
My daddy need a new car (Right now)
So I be goin'' so hard (Right now)
Detroit is my yard (Right now)
I need a 17 car garage (Right now)
I need a 17 broad menage (Right now)
I need a jail house to free my dogs (Right now)
I done paid taxes, paid dues, paid bills my whole life
So I''ma throw money in the air, like I''m tryin'' to pay the sky
Told myself that man if I can''t live like this, I''d rather die
I give it up to God, and he always replies:
"Control yo'' hoes, you let her talk ''til you crazy
You got baby mama drama, you ain''t even got you no baby!
You fugazi, b-boss up, boss up with your time dog
You ain''t got time for no hoes, I ain''t even got time for no time off!"
I''m on
You might also like
Okay, this to all of my enemies that see me gettin'' guap right now
See me gettin'' guap right now, see me gettin'' guap right now
This to all of my hatin'' hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now
This to all my old hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now (Oh God)
See me gettin'' guap right now, hell nah, I won''t stop right now (Oh God, boi, boi, boi)
Hell nah, I won''t stop right now, see me gettin'' guap right now

Okay, I need 50k large (Right now)
My homie just beat the charge (Right now)
My brother need a new job (Right now)
So I be goin'' so hard (Right now)
I need my face on a black card (Right now)
My iPhone need a charge (Right now)
My fish tank need sharks (right now)
I need a blimp to say the worlds ours (Right now)
So these niggas can know I do what they can''t
I''m stuntin'' for all the people who ain''t
You still hatin''? You should be fuckin'' ashamed
Far as I came, guess when you''re running the game they want you to sprain
Yeah, I know, I know, but I don''t get my stress on
Takin'' shots, swear it''s like my stomachs made of Teflon
They like, "Boy, won''t you get your rest on?"
Bitch, cause I''m up for every hour I was slept on
And last night I dreamed about two girls, bisexual
They was tryin'' things, trisexual
Then I woke up in a city where the population match the death toll
Drew my blueprint, got it illustrated, F.F. affiliated
Millions chasin'' go to sleep wake up continuated
Life of a Don, Chandon sippin'', never had a palm readin''
Always had my palms itchin'' time to get it
Boy, I was taught to get it ''til it''s gone
Even when I got it, watch me get it like I don''t
Hol'' up, hol'' up, tell me what you see (What you see)
Pull up (Swerve), watch these mothafuckas freak (Watch ''em freak)
S-say what up though when you see me in the streets
G.O.O.D. Music in this bitch, now drop that mothafuckin'' beat, woah
Okay, this to all of my enemies that see me gettin'' guap right now (D-Town)
See me gettin'' guap right now, see me gettin'' guap right now
This to all of my hatin'' hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now
This to all my old hoes that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, I won''t stop right now
See me gettin'' guap right now, hell nah, I won''t stop right now
Hell nah, I won''t stop right now, see me gettin'' guap right now

Right now, woah
Right now, woah
Right now, woah
Right now, woah
Right now, woah
Right now, woah, woah
Four, three, two, one
This to all my enemies that see me gettin'' guap right now
See me gettin'' guap right now, hell yeah, won''t stop right now
Four, three, two, one
See me gettin'' guap right now, hell nah, won''t stop right now
Hell nah, won''t stop right now, see me gettin'' guap right now
Four, three, two, one', 492);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4063065, '​thank u, next', '
Thought I''d end up with Sean
But he wasn''t a match
Wrote some songs about Ricky
Now I listen and laugh
Even almost got married
And for Pete, I''m so thankful
Wish I could say, "Thank you" to Malcolm
''Cause he was an angel

One taught me love
One taught me patience
And one taught me pain
Now, I''m so amazing
Say I''ve loved and I''ve lost
But that''s not what I see
So, look what I got
Look what you taught me
And for that, I say

Thank you, next (Next)
Thank you, next (Next)
Thank you, next
I''m so fuckin'' grateful for my ex
Thank you, next (Next)
Thank you, next (Next)
Thank you, next (Next)
I''m so fuckin''—
You might also like
Spend more time with my friends
I ain''t worried ''bout nothin''
Plus, I met someone else
We havin'' better discussions
I know they say I move on too fast
But this one gon'' last
''Cause her name is Ari
And I''m so good with that (So good with that)

She taught me love (Love)
She taught me patience (Patience)
How she handles pain (Pain)
That shit''s amazing (Yeah, she''s amazing)
I''ve loved and I''ve lost (Yeah, yeah)
But that''s not what I see (Yeah, yeah)
''Cause look what I''ve found (Yeah, yeah, I''ve found)
Ain''t no need for searching, and for that, I say

Thank you, next (Thank you, next)
Thank you, next (Thank you, next)
Thank you, next (Thank you)
I''m so fuckin'' grateful for my ex
Thank you, next (Thank you, next)
Thank you, next (Said thank you, next)
Thank you, next (Next)
I''m so fuckin'' grateful for my ex
Thank you, next
Thank you, next
Thank you, next
I''m so fuckin''—

One day I''ll walk down the aisle
Holding hands with my mama
I''ll be thanking my dad
''Cause she grew from the drama
Only wanna do it once, real bad
Gon'' make that shit last
God forbid something happens
Least this song is a smash (Song is a smash)

I''ve got so much love (Love)
Got so much patience (Patience)
And I''ve learned from the pain (Pain)
I turned out amazing (Turned out amazing)
Say I''ve loved and I''ve lost (Yeah, yeah)
But that''s not what I see (Yeah, yeah)
''Cause look what I''ve found (Yeah, yeah)
Ain''t no need for searching
And for that, I say
Thank you, next (Thank you, next)
Thank you, next (Thank you, next)
Thank you, next
I''m so fuckin'' grateful for my ex
Thank you, next (Thank you, next)
Thank you, next (Said thank you, next)
Thank you, next (Next)
I''m so fuckin'' grateful for my ex

Thank you, next
Thank you, next
Thank you, next
Yeah, yee
Thank you, next
Thank you, next
Thank you, next
Yeah, yee', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (566, 'Baby', '

Oh, woah
Oh, woah
Oh, woah

You know you love me (Yo), I know you care (Uh-huh)
Just shout whenever (Yo), and I''ll be there (Uh-huh)
You are my love (Yo), you are my heart (Uh-huh)
And we will never, ever, ever be apart (Yo, uh-huh)
Are we an item? (Yo) Girl, quit playin'' (Uh-huh)
We''re just friends (Yo), what are you sayin''? (Uh-huh)
Said, "There''s another" (Yo), and looked right in my eyes (Uh-huh)
My first love broke my heart for the first time, and I was like (Yo, uh-huh)

Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine
Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine
You might also like
Oh, for you, I would''ve done whatever (Uh-huh)
And I just can''t believe we ain''t together (Yo, uh-huh)
And I wanna play it cool (Yo), but I''m losin'' you (Uh-huh)
I''ll buy you anything (Yo), I''ll buy you any ring (Uh-huh)
And I''m in pieces (Yo), baby, fix me (Uh-huh)
And just shake me till you wake me from this bad dream (Yo, uh-huh)
I''m goin'' down (Yo), down, down, down (Uh-huh)
And I just can''t believe my first love won''t be around, and I''m like

Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine
Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine (Luda!)

When I was thirteen, I had my first love
There was nobody that compared to my baby, and nobody came between us nor could ever come above
She had me goin'' crazy, oh, I was starstruck
She woke me up daily, don''t need no Starbucks (Woo)
She made my heart pound, and skip a beat when I see her in the street and
At school on the playground, but I really wanna see her on the weekend
She knows she got me dazing ''cause she was so amazing
And now my heart is breakin'', but I just keep on sayin''
Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine
Baby, baby, baby, oh
Like baby, baby, baby, no
Like baby, baby, baby, oh
I thought you''d always be mine, mine

I''m gone (Yeah-yeah-yeah, yeah-yeah-yeah)
Now I''m all gone (Yeah-yeah-yeah, yeah-yeah-yeah)
Now I''m all gone (Yeah-yeah-yeah, yeah-yeah-yeah)
Now I''m all gone (Gone, gone, gone, gone), I''m gone', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4067762, '7 rings', '
Yeah, breakfast at Tiffany''s and bottles of bubbles
Girls with tattoos who like getting in trouble
Lashes and diamonds, ATM machines
Buy myself all of my favorite things (Yeah)
Been through some bad shit, I should be a sad bitch
Who woulda thought it''d turn me to a savage?
Rather be tied up with calls and not strings
Write my own checks like I write what I sing, yeah (Yeah)

My wrist, stop watchin'', my neck is flossy
Make big deposits, my gloss is poppin''
You like my hair? Gee, thanks, just bought it
I see it, I like it, I want it, I got it (Yeah)

I want it, I got it, I want it, I got it
I want it, I got it, I want it, I got it
You like my hair? Gee, thanks, just bought it
I see it, I like it, I want it, I got it (Yep)
Wearing a ring, but ain''t gon'' be no "Mrs."
Bought matching diamonds for six of my bitches
I''d rather spoil all my friends with my riches
Think retail therapy my new addiction
Whoever said money can''t solve your problems
Must not have had enough money to solve ''em
They say, "Which one?" I say, "Nah, I want all of ''em"
Happiness is the same price as red-bottoms
You might also like
My smile is beamin'' (Yeah), my skin is gleamin'' (Is gleamin'')
The way it shine, I know you''ve seen it (You''ve seen it)
I bought a crib just for (Just for) the closet (Closet)
Both his and hers, I want it, I got it, yeah

I want it, I got it, I want it, I got it
I want it, I got it, I want it, I got it (Baby)
You like my hair? Gee, thanks, just bought it (Oh yeah)
I see it, I like it, I want it, I got it (Yep)

Yeah, my receipts be lookin'' like phone numbers
If it ain''t money, then wrong number
Black card is my business card
The way it be settin'' the tone for me
I don''t mean to brag, but I be like, "Put it in the bag," yeah
When you see them racks, they stacked up like my ass, yeah
Shoot, go from the store to the booth
Make it all back in one loop, gimme the loot
Never mind, I got the juice
Nothing but net when we shoot
Look at my neck, look at my jet
Ain''t got enough money to pay me respect
Ain''t no budget when I''m on the set
If I like it, then that''s what I get, yeah
I want it, I got it, I want it, I got it (Oh yeah)
I want it, I got it, I want it, I got it (Oh yeah, yeah)
You like my hair? Gee, thanks, just bought it
I see it, I like it, I want it, I got it (I see, yep)', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3681280, '​God is a woman', '
You, you love it how I move you
You love it how I touch you, my one
When all is said and done
You''ll believe God is a woman
And I, I feel it after midnight
A feelin'' that you can''t fight, my one
It lingers when we''re done
You''ll believe God is a woman

I don''t wanna waste no time, yeah
You ain''t got a one-track mind, yeah
Have it any way you like, yeah
And I can tell that you know I know how I want it
Ain''t nobody else can relate
Boy, I like that you ain''t afraid
Baby, lay me down and let''s pray
I''m tellin'' you the way I like it, how I want it

(Yeah) And I can be all the things you told me not to be
(Yeah) When you try to come for me, I keep on flourishing (Yeah)
(Yeah) And he see the universe when I''m the company (Yeah)
It''s all in me
You might also like
You, you love it how I move you
You love it how I touch you, my one
When all is said and done
You''ll believe God is a woman
And I, I feel it after midnight
A feelin'' that you can''t fight, my one
It lingers when we''re done
You''ll believe God is a woman

(Yeah)
I tell you all the things you should know
So, baby, take my hands, save your soul
We can make it last, take it slow, mm
And I can tell that you know I know how I want it, yeah
But you''re different from the rest
And, boy, if you confess, you might get blessed (Yeah)
See if you deserve what comes next
I''m tellin'' you the way I like it, how I want it (Yeah)

(Yeah) And I can be all the things you told me not to be (Ooh)
(Yeah) When you try to come for me, I keep on flourishing (Yeah)
(Yeah) And he see the universe when I''m the company (Yeah)
It''s all in me (Ooh)
You, you love it how I move you (Ooh)
You love it how I touch you, my one
When all is said and done
You''ll believe God is a woman
And I, I feel it after midnight
A feelin'' that you can''t fight, my one
It lingers when we''re done
You''ll believe God is a woman

Yeah, yeah (God is a woman)
Yeah, yeah (God is a woman, yeah)
My one (One)
When all is said and done
You''ll believe God is a woman
You''ll believe God (God is a woman)
Oh yeah (God is a woman, yeah)
Ooh (One)
It lingers when we''re done
You''ll believe God is a woman', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2457495, 'Side To Side', '
I''ve been here all night (Ariana)
I''ve been here all day (Nicki Minaj)
And, boy, got me walkin'' side to side (Let them hoes know)

I''m talkin'' to ya
See you standing over there with your body
Feeling like I wanna rock with your body
And we don''t gotta think ''bout nothin'' (''Bout nothin'')
I''m comin'' at ya
''Cause I know you got a bad reputation
Doesn''t matter, ''cause you give me temptation
And we don''t gotta think ''bout nothin'' (''Bout nothin'')

These friends keep talkin'' way too much
Say I should give you up
Can''t hear them, no, ''cause I—

I''ve been here all night
I''ve been here all day
And, boy, got me walkin'' side to side
I''ve been here all night
I''ve been here all day
And, boy, got me walkin'' side to side (Side to side)
You might also like
Been tryna hide it
Baby, what''s it gonna hurt if they don''t know?
Makin'' everybody think that we solo
Just as long as you know you got me (You got me)
And, boy, I got ya
''Cause tonight I''m making deals with the devil
And I know it''s gonna get me in trouble
Just as long as you know you got me

These friends keep talkin'' way too much
Say I should give you up
Can''t hear them, no, ''cause I—

I''ve been here all night
I''ve been here all day
And, boy, got me walkin'' side to side (Side to side)
I''ve been here all night (Been here all night, baby)
I''ve been here all day (Been here all day, baby, yeah)
And, boy, got me walkin'' side to side (Side to side, boy)

Uh, yo
This the new style with the fresh type of flow
Wrist icicle, ride dick bicycle
Come through, yo, get you this type of blow
If you wanna ménage, I got a tricycle
All these bitches'' flows is my mini-me
Body smoking, so they call me Young Nicki Chimney
Rappers in they feelings ''cause they feelin'' me (Murder)
Uh, I-I give zero fucks and I got zero chill in me
Kissing me, copped the blue box that say Tiffany
Curry with the shot, just tell ''em to call me Stephanie
Gun pop, then I make my gum pop
I''m the queen of rap, young Ariana run pop, uh
These friends keep talkin'' way too much (Way too much)
Say I should give him up (Give him up)
Can''t hear them, no, ''cause I—

I''ve been here all night (Been here all night, baby)
I''ve been here all day (Been here all night, baby, yeah)
And, boy (Boy), got me walkin'' side to side (Side to side)
I''ve been here all night (Been here all night, babe)
I''ve been here all day (Been here all day, baby, yeah; Ooh, baby)
And, boy (No), got me walkin'' side to side (Side to side)
(Yeah, yeah-yeah-yeah)

Uh, yo
This the new style with the fresh type of flow (Been here all night, baby)
Wrist icicle, ride dick bicycle (Been here all day, baby; Ayy)
Come through, yo, get you this type of blow (No)
If you want a ménage, I got a tricycle (Side to side, yeah)', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3649172, '​​no tears left to cry', '
Right now, I''m in a state of mind
I wanna be in like all the time
Ain''t got no tears left to cry
So, I''m pickin'' it up, pickin'' it up
I''m lovin'', I''m livin'' (Oh, ayy), I''m pickin'' it up
I''m pickin'' it up, pickin'' it up (Yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up (Oh, yeah)

I''m pickin'' it up (Yeah), pickin'' it up (Yeah, ayy)
Lovin'', I''m livin'', so we turnin'' up (We turnin'' it up)
Yeah, we turnin'' it up

Ain''t got no tears in my body
I ran out, but, boy, I like it
I like it, I like it
Don''t matter how, what, where, who tries it
We out here vibin''
We vibin'', we vibin''

Comin'' out
Even when it''s rainin'' down
Can''t stop now
Can''t stop so shut your mouth
Shut your mouth
And if you don''t know, then now you know it, babe
Know it, babe, yeah
You might also like
Right now, I''m in a state of mind
I wanna be in like all the time
Ain''t got no tears left to cry
So, I''m pickin'' it up, pickin'' it up (Oh, yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up
Oh, I just want you to come with me (Ooh)
We on another mentality
Ain''t got no tears left to cry (To cry)
So, I''m pickin'' it up, pickin'' it up (Oh, yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up (Oh)

Pickin'' it up (Yeah), pickin'' it up (Yeah, ayy)
Lovin'', I''m livin'', so we turnin'' up (We turnin'' it up)
Yeah (Yeah), we turnin'' it up

They point out the colors in you, I see ''em too
And, boy, I like ''em
I like ''em, I like ''em
We way too fly to partake in all this hate
We out here vibin''
We vibin'', we vibin''

Comin'' out
Even when it''s rainin'' down
Can''t stop now
Can''t stop, so shut your mouth
Shut your mouth
And if you don''t know, then now you know it, babe
Know it, babe, yeah
Right now, I''m in a state of mind
I wanna be in like all the time
Ain''t got no tears left to cry
So, I''m pickin'' it up, pickin'' it up (Oh, yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up
Oh, I just want you to come with me (Ooh)
We on another mentality (Oh)
Ain''t got no tears left to cry (To cry)
So, I''m pickin'' it up, pickin'' it up (Oh, yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up

Comin'' out
Even when it''s rainin'' down
Can''t stop now (Mm-oh)
Shut your mouth
Ain''t got no tears left to cry
Oh, yeah, oh, yeah

Oh, I just want you to come with me (Me)
We on another mentality
Ain''t got no tears left to cry (Cry)
So, I''m pickin'' it up (Yeah), pickin'' it up (Oh, yeah)
I''m lovin'', I''m livin'', I''m pickin'' it up (Pickin'' it up)
Pickin'' it up (Mm), pickin'' it up (Mm)
Lovin'', I''m livin'', so we turnin'' up (Mm-hm)
Yeah, we turnin'' it up', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (6071429, '34+35', '
Hmm

You might think I''m crazy
The way I''ve been cravin''
If I put it quite plainly
Just gimme them babies
So what you doin'' tonight?
Better say, "Doin'' you right" (Yeah)
Watchin'' movies, but we ain''t seen a thing tonight (Yeah)

I don''t wanna keep you up (You up)
But show me, can you keep it up? (It up)
''Cause then I''ll have to keep you up
Shit, maybe I''ma keep you up, boy
I''ve been drinkin'' coffee (I''ve been drinkin'' coffee; coffee)
And I''ve been eatin'' healthy (I''ve been eatin'' healthy; healthy)
You know I keep it squeaky, yeah (You know I keep it squeaky; squeaky)
Savin'' up my energy (Yeah, yeah, savin'' up my energy)

Can you stay up all night?
Fuck me ''til the daylight
Thirty-four, thirty-five (Ah)
Can you stay up all night? (All night)
Fuck me ''til the daylight
Thirty-four, thirty-five (Ah)
You might also like
You drink it just likе water (Water)
You say it tastes likе candy
So what you doin'' tonight? (Tonight)
Better say, "Doin'' you right" (Alright)
Watchin'' movies, but we ain''t seen a thing tonight (Yeah)

I don''t wanna keep you up (You up)
But show me, can you keep it up? (It up)
''Cause then I''ll have to keep you up
Shit, maybe I''ma keep you up, boy
I''ve been drinkin'' coffee (Said I''ve been drinkin'' coffee; coffee)
And I''ve been eatin'' healthy (And I''ve been eatin'' healthy; healthy)
You know I keep it squeaky, yeah (Except this wine though; squeaky)
Savin'' up my energy (Yeah, yeah, yeah)

Can you stay up all night? (All night)
Fuck me ''til the daylight (Daylight)
Thirty-four, thirty-five (Ah; thirty-five)
Can you stay up all night? (Can you stay?)
Fuck me ''til the daylight (Can you stay?)
Thirty-four, thirty-five (Ah)

Oh yeah, yeah
Baby, you might need a seat belt when I ride it
I''ma leave it open like a door, come inside it
Even though I''m wifey, you can hit it like a side chick
Don''t need no side dick, no
Got the neighbors yellin'', "Earthquake!" (Earthquake)
4.5 when I make the bed shake (Bed shake)
Put it down heavy even though it''s lightweight (It''s lightweight, yeah, yeah, yeah, ayy)
We started at midnight
Go ''til the sunrise (Sunrise)
Done at the same time (Yeah)
But who''s countin'' the time when we got it for life? (Got it for life)
I know all your favorite spots (Favorite spots)
We can take it from the top (From the top)
You''re such a dream come true, true
Make a bitch wanna hit snooze, ooh
Can you stay up all night?
Fuck me ''til the daylight (Yeah, yeah)
Thirty-four, thirty-five (Ah; thirty-four, thirty-five)
Can you stay up all night? (Do you know what that means?)
Fuck me ''til the daylight (Do you know what that means?)
Thirty-four, thirty-five (Ah)

Means I wanna "69" with you
No shit
Math class
Never was good', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4226433, '​break up with your girlfriend, i’m bored', '
You got me some type of way (Hmm)
Ain''t used to feelin'' this way (Mmm-mmm)
I do not know what to say (Yeah, yeah)
But I know I shouldn''t think about it
Took one fuckin'' look at your face (Hmm)
Now I wanna know how you taste (Mmm-mmm)
Usually don''t give it away (Yeah, yeah)
But you know I''m out here thinkin'' ''bout it

Then I realize she''s right there
And I''m at home like, "Damn, this ain''t fair"

Break up with your girlfriend (Girlfriend)
Yeah, yeah, ''cause I''m bored
You could hit it in the mornin'' (Mornin'')
Yeah, yeah, like it''s yours
I know it ain''t right
But I don''t care (Care)
Break up with your girlfriend (Girlfriend)
Yeah, yeah, ''cause I''m bored

This shit always happen to me (Yeah)
Why can''t we just play for keeps? (Mmm-mmm)
Practically on my knees (Yeah, yeah)
But I know I shouldn''t think about it
You know what you''re doin'' to me
You''re singin'' my songs in the streets, yeah, yeah
Actin'' all innocent, please
When I know you out here thinkin'' ''bout it
You might also like
Then you realize she''s right there (Yeah)
And you''re at home like, "Damn, she can''t compare"

Break up with your girlfriend (Girlfriend)
Yeah, yeah, ''cause I''m bored
You could hit it in the mornin'' (In the mornin'')
Yeah, yeah, like it''s yours
I know it ain''t right
But I don''t care (I don''t care, yee)
Break up with your girlfriend (With your girlfriend)
Yeah, yeah, ''cause I''m bored

With your girlfriend, girlfriend, girlfriend, girlfriend
With your girlfriend
With your girlfriend, girlfriend, girlfriend, girlfriend

You could say I''m hatin'' if you want to
But I only hate on her ''cause I want you
Say I''m trippin'' if you feel like
But you without me ain''t right (Ain''t right)
You could call me crazy ''cause I want you
And I never even ever fuckin'' met you
Say I''m trippin'' and it ain''t right
But you without me ain''t nice (Ain''t nice, yeah)
Break up with your girlfriend (With your girlfriend)
Yeah, yeah, ''cause I''m bored
You could hit it in the mornin'' (Hit in the mornin'', yeah, yeah, yeah)
Yeah, yeah, like it''s yours
I know it ain''t right
But I don''t care (Care, yeah)
Break up with your girlfriend (With your girlfriend)
Yeah, yeah, ''cause I''m bored

With your girlfriend, girlfriend, girlfriend, baby, girlfriend
With your girlfriend
With your girlfriend, girlfriend, girlfriend, girlfriend
With your girlfriend', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5168488, 'Intentions', '
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

Shout-out to your mom and dad for makin'' you
Standin'' ovation, they did a great job raisin'' you
When I create, you''re my muse
That kind of smile that makes the news
Can''t nobody throw shade on your name in these streets
Triple threat, you a boss, you a bae, you a beast
You make it easy to choose
You got a mean touch, I can''t refuse (No, I can''t refuse it)

Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions
You might also like
Already passed, you don''t need no approval
Good everywhere, don''t worry ''bout no refusal
Second to none, you got the upper hand now
Don''t need a sponsor, nope, you''re the brand now
You''re my rock, my Colorado
Got that ring, just like Toronto
Love you now, a little more tomorrow
This how I feel, act like you know that you are

Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread (Whip it)
Heart full of equity, you''re an asset (Asset)
Make sure that you don''t need no mentions (Yeah, yeah)
Yeah, these are my only intentions (Quavo)

No cap, no pretendin'', you don''t need mentions (No cap)
Got ''em sayin'' "goals," they don''t wanna be independent (''Pendent)
Tell them to mind your business (Woo), we in our feelings
It''s fifty-fifty percentage (Fifty), attention, we need commitment (Oh)
We gotta both admit it (Both), it''s funny, we both listen (Both)
It''s a blessing (Blessing) ''cause we both get it (Both)
You the best thing (Woo), and I don''t need a witness (Best thing)
I''ma find me a ring and pray it''s perfect fitted (Perfect, perfect, perfect)
Picture perfect, you don''t need no filter (No filter)
Gorgeous, make ''em drop dead, you a killer (Oh-oh)
Shower you with all my attention (I will)
Yeah, these are my only intentions (Yeah)
Stay in the kitchen cookin'' up, got your own bread (You do)
Heart full of equity, you''re an asset (Uh-huh)
Make sure that you don''t need no mentions (No mentions)
Yeah, these are my only intentions

Only intentions
That''s all I plan to do', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3681287, '​​breathin', '
​​lacigam gnihtemos od oT
​​thgin laiceps ruoy s''thginot tuB

Some days, things just take
Way too much of my energy
I look up and the whole room''s spinning
You take my cares away
I can so over-complicate, people tell me to medicate

Feel my blood runnin'', swear the sky''s fallin''
I know that all this shit''s fabricated, mmm
Time goes by and I can''t control my mind
Don''t know what else to try, but you tell me every time

Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, keep on breathin''
Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, keep on breathin'', mmm-mmm

Sometimes, it''s hard to find
Find my way up into the clouds
Tune it out, they can be so loud
You remind me of a time
When things weren''t so complicated
All I need is to see your face
You might also like
Feel my blood runnin'', swear the sky''s fallin''
I know that all this shit''s fabricated, mmm
Time goes by and I can''t control my mind
Don''t know what else to try, but you tell me every time

Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, I keep on breathin''
Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, I keep on breathin'', mmm, yeah

My, my air, my, my air
My, my air, my air
My, my air, my, my air
My, my air, yeah

Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, I keep on breathin''
Just keep breathin'' and breathin'' and breathin'' and breathin''
And oh, I gotta keep, I keep on breathin'', mmm, yeah

Feel my blood runnin'', swear the sky''s fallin'', oh, woah
I keep on breathin'', oh yeah
Time goes by and I can''t control my mind
I keep on breathin'', mmm, yeah', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (6068618, '​positions', '
Heaven sent you to me
I''m just hopin’ I don''t repeat history

Boy, I''m tryna meet your mama on a Sunday
Then make a lotta love on a Monday (Ah, ah)
Never need no (No), no one else, babe
’Cause I''ll be

Switchin'' them positions for you
Cookin'' in the kitchen and I''m in the bedroom
I''m in the Olympics, way I''m jumpin'' through hoops
Know my love infinite, nothin’ I wouldn’t do
That I won''t do, switchin’ for you

Perfect, perfect
You''re too good to be true (You''re too good to be true)
But I get tired of runnin'', fuck it
Now, I’m runnin'' with you (With you)

Said, boy, I''m tryna meet your mama on a Sunday
Then make a lotta love on a Monday (Ah, ah)
Never need no (No), no onе else, babe
''Causе I''ll be
You might also like
Switchin'' them positions for you
Cookin'' in the kitchen and I''m in the bedroom
I''m in the Olympics, way I''m jumpin'' through hoops
Know my love infinite, nothin'' I wouldn''t do
That I won''t do, switchin'' for you
Cookin'' in the kitchen and I''m in the bedroom
I''m in the Olympics, way I''m jumpin'' through hoops
Know my love infinite, nothin'' I wouldn''t do (Nothin'')
That I won''t do, switchin'' for you

This some shit that I usually don''t do (Yeah)
But for you, I kinda, kinda want to (Mmm)
''Cause you''re down for me and I''m down too (And I''m down too)
Yeah, I''m down too
Switchin'' the positions for you
This some shit that I (Yeah) usually don''t do (Don''t do)
But for you, I kinda, kinda want to (Mmm)
''Cause you''re down for me and I''m down too (''Cause you''re down for me)

Switchin'' them positions for you
Cookin'' in the kitchen and I''m in the bedroom
I''m in the Olympics, way I''m jumpin'' through hoops (Jumpin'', jumpin'')
Know my love infinite, nothin'' I wouldn''t do
That I won''t do, switchin'' for you (Ooh woah)
Cookin'' in the kitchen and I''m in the bedroom
I''m in the Olympics, way I''m jumpin'' through hoops
Know my love infinite, nothin'' I wouldn''t do (I wouldn''t do)
That I won''t do, switchin'' for you
Yeah
Ah, yeah
Ah (Ah), yeah', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (9888882, '​yes, and?', '
In case you haven''t noticed
Well, everybody''s tired
And healin'' from somebody
Or somethin'' we don''t see just right

Boy, come on, put your lipstick on (No one can tell you nothin'')
Come on and walk this way through the fire (Don''t care what''s on their mind)
And if you find yourself in a dark situation
Just turn on your light and be like

"Yes, and?"
Say that shit with your chest, and
Be your own fuckin'' best friend
Say that shit with your chest
Keep moving like, "What''s next?"
"Yes, and?"

Now, I''m so done with caring
What you think, no, I won''t hide
Underneath your own projections
Or change my most authentic life
You might also like
Boy, come on, put your lipstick on (No one can tell you nothin'')
Come on and walk this way through the fire (Don''t care what''s on their mind)
And if you find yourself in a dark situation
Just turn on your light and be like

"Yes, and?"
Say that shit with your chest, and
Be your own fuckin'' best friend
Say that shit with your chest
Keep moving like, "What''s next?"
"Yes, and?" (Yeah)

My tongue is sacred, I speak upon what I like
Protected, sexy, discerning with my time (My time)
Your energy is yours and mine is mine (It''s mine, it''s mine)
What''s mine is mine
My face is sitting, I don''t need no disguise (I don''t need no disguise)
Don''t comment on my body, do not reply
Your business is yours and mine is mine
Why do you care so much whose **** I ride?
Why?

"Yes, and?" (Yes, and?)
Say that shit with your chest, and (Say that shit with your chest)
Be your own fuckin'' best friend (Oh, be your own, be your own)
Say that shit with your chest (Say that shit with your chest, baby)
Keep moving like, "What''s next?"
"Yes, and?"
"Yes (Ooh), and?"
Say that shit with your chest (Ooh), and
Be your own fuckin'' best (Be your own) friend
Say that shit with your chest
Keep moving like, "What''s next?"
"Yes, and?" (Yeah)', 26507);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (49192, 'Viva La Vida', '
I used to rule the world
Seas would rise when I gave the word
Now in the morning, I sleep alone
Sweep the streets I used to own


I used to roll the dice
Feel the fear in my enemy''s eyes
Listen as the crowd would sing
"Now the old king is dead, long live the king"
One minute, I held the key
Next, the walls were closed on me
And I discovered that my castles stand
Upon pillars of salt and pillars of sand

I hear Jerusalem bells a-ringin''
Roman cavalry choirs are singin''
Be my mirror, my sword and shield
My missionaries in a foreign field
For some reason, I can''t explain
Once you''d gone, there was never
Never an honest word
And that was when I ruled the world
See Coldplay LiveGet tickets as low as $68You might also like

It was a wicked and wild wind
Blew down the doors to let me in
Shattered windows and the sound of drums
People couldn''t believe what I''d become
Revolutionaries wait
For my head on a silver plate
Just a puppet on a lonely string (Mmm, mmm)
Aw, who would ever wanna be king?

I hear Jerusalem bells a-ringin''
Roman cavalry choirs are singin''
Be my mirror, my sword and shield
My missionaries in a foreign field
For some reason, I can''t explain
I know Saint Peter won''t call my name
Never an honest word
But that was when I ruled the world

Oh-oh-oh, oh-oh, oh
Oh-oh-oh, oh-oh, oh
Oh-oh-oh, oh-oh, oh
Oh-oh-oh, oh-oh, oh
(Oh-oh-oh, oh-oh, oh)
Hear Jerusalem bells a-ringin''
(Oh-oh-oh, oh-oh, oh)
Roman cavalry choirs are singin''
(Oh-oh-oh, oh-oh, oh)
Be my mirror, my sword and shield
(Oh-oh-oh, oh-oh, oh)
My missionaries in a foreign field
(Oh-oh-oh, oh-oh, oh)
For some reason, I can''t explain
(Oh-oh-oh, oh-oh, oh)
I know Saint Peter won''t call my name
Never an honest word
But that was when I ruled the world

Mmm, mmm, mmm, mmm
Mmm, mmm, mmm, mmm
Mmm, mmm', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2353271, 'Hymn for the Weekend', '
And said drink from me, drink from me
(I, oh, I, oh, I)
That we shoot across the sky
Got me feeling drunk and high
Poured on a symphony
So high, so high
That we shoot across the sky
Poured on a symphony
Drink from me, drink from me
(I, oh, I, oh, I)
That we shoot across the sky
Got me feelin'' drunk and high
Poured on a symphony
So high, so high
That we shoot across the sky

Oh, angel sent from up above
You know you make my world light up
When I was down, when I was hurt
You came to lift me up
Life is a drink and love''s a drug
Oh, now I think I must be miles up
When I was a river dried up
You came to rain a flood
See Coldplay LiveGet tickets as low as $68You might also like
I said, drink from me, drink from me
When I was so thirsty
Poured on a symphony
Now I just can''t get enough
Put your wings on me, wings on me
When I was so heavy
Poured on a symphony
When I''m low, low, low, low

I, oh, I, oh, I
Got me feeling drunk and high, so high, so high
Oh, I, oh, I, oh, I
Now I''m feeling drunk and high, so high, so high (Woo)
(Ooh, ooh, ooh)

Oh, angel sent from up above
I feel you coursing through my blood
Life is a drink and your love''s about
To make the stars (Stars) come out

Put your wings on me, wings on me
When I was so heavy
Poured on a symphony
When I''m low, low, low, low
I, oh, I, oh, I
Got me feeling drunk and high, so high, so high
Oh, I, oh, I, oh, I
Now I''m feeling drunk and high, so high, so high

I, oh, I, oh, I
La, la, la, la, la, la, la, so high, so high
I, oh, I, oh, I
Now I''m feeling drunk and high, so high, so high
That we shoot across the sky
That we shoot across the
That we shoot across the sky
That we shoot across the (That we shoot)
That we shoot across the sky
That we shoot across the
That we shoot across the sky
That we shoot across the', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (77781, 'Sparks', '
Did I drive you away?
I know what you''ll say
You say, "Oh, sing one we know"
But I promise you this
I''ll always look out for you
Yeah, that''s what I''ll do

I say, oh
I say, oh

My heart is yours
It''s you that I hold onto
Yeah, that''s what I do
And I know I was wrong
But I won''t let you down
Oh yeah I will, yeah I will, yes I will

I said, oh
I cry, oh

Yeah, I saw sparks
Yeah, I saw sparks
And I saw sparks
Yeah, I saw sparks
See Coldplay LiveGet tickets as low as $68You might also like
Sing it out
La-la-la-la, oh-oh
La-la-la-la, oh-oh
La-la-la-la, oh-oh
La-la-la-la, oh-oh', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (387508, 'A Sky Full of Stars', '
''Cause you''re a sky, ''cause you''re a sky full of stars
I''m gonna give you my heart
''Cause you''re a sky, ''cause you''re a sky full of stars
''Cause you light up the path

I don''t care, go on and tear me apart
I don''t care if you do, ooh-ooh, ooh
''Cause in a sky, ''cause in a sky full of stars
I think I saw you ooh-ooh-ooh, ooh-ooh-ooh

''Cause you''re a sky, ''cause you''re a sky full of stars
I wanna die in your arms, oh-oh-oh, oh-oh
''Cause you get lighter the more it gets dark
I''m gonna give you my heart, oh

I don''t care, go on and tear me apart
I don''t care if you do, ooh-ooh, ooh
''Cause in a sky, ''cause in a sky full of stars
I think I see you ooh-ooh-ooh, ooh-ooh-ooh
I think I see you ooh-ooh-ooh, ooh-ooh-ooh

''Cause you''re a sky, you''re a sky full of stars
Such a heavenly view
You''re such a heavenly view
(Yeah, yeah, yeah, ooh)See Coldplay LiveGet tickets as low as $68You might also like', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2349494, 'Adventure of a Lifetime', '

"Turn your magic on," Umi, she''d say
"Everythin'' you want''s a dream away
We are legends, every day"
That''s what she told me
"Turn your magic on," to me, she''d say
"Everythin'' you want''s a dream away
Under this pressure, under this weight
We are diamonds"

Now, I feel my heart beatin''
I feel my heart underneath my skin
Now, I feel my heart beatin''
Oh, you make me feel

Like I''m alive again
(Alive again)
Oh, you make me feel
Like I''m alive again

Said, "I can''t go on, not in this way
I''m a dream that died by light of day
Gonna hold up half the sky and say
Only I own me"
See Coldplay LiveGet tickets as low as $68You might also like
Now, I feel my heart beatin''
I feel my heart underneath my skin
Oh, I can I feel my heart beatin''
''Cause you make me feel

Like I''m alive again
(Alive again)
Oh, you make me feel
Like I''m alive again

"Turn your magic on," Umi, she''d say
"Everythin'' you want''s a dream away
Under this pressure, under this weight
We are diamonds takin'' shape
We are diamonds takin'' shape"

(Woo, woo-hoo)
(Woo, woo-hoo)
If we''ve only got this life, this adventure, oh, then I
And if we''ve only got this life, you''ll get me through alive
And if we''ve only got this life, in this adventure, oh, then I
Want to share it with you, with you, with you
Oh, see, yeah, see, yeah, I
Do-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)
Woo-hoo (Woo-hoo)', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2378782, 'Everglow', '
Oh, they say people come, say people go
This particular diamond was extra special
And though you might be gone, and the world may not know
Still I see you celestial

Like a lion you ran, a goddess you rolled
Like an eagle you circled in perfect purple
So how come things move on? How come cars don''t slow?
When it feels like the end of my world
When I should but I can''t let you go

But when I''m cold, cold
Yeah, when I''m cold, cold
There''s a light that you give me when I''m in shadow
There''s a feelin'' within me, everglow

Like brothers in blood, sisters who ride
And we swore on that night we''d be friends ''til we die
But the changin'' of winds and the way waters flow
Life is short as the fallin'' of snow
And now I''m gonna miss you, I know
See Coldplay LiveGet tickets as low as $68You might also like
But when I''m cold, cold
In water rolled, salt
And I know that you''re with me and the way you will show
And you''re with me wherever I go
And you give me this feelin'', this everglow

Oh, what I wouldn''t give for just a moment to hold
Yeah, I live for this feelin'', this everglow

So if you love someone, you should let them know
Oh, the light that you left me will everglow', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (53753, 'Clocks', '
The lights go out, and I can''t be saved
Tides that I tried to swim against
Have brought me down upon my knees
Oh, I beg, I beg and plead, singin''
Come out of things unsaid
Shoot an apple off my head, and a
Trouble that can''t be named
A tiger''s waitin'' to be tamed, singin''

You are
You are

Confusion never stops
Closin'' walls and tickin'' clocks, gonna
Come back and take you home
I could not stop, that you now know, singin''
Come out upon my seas
Cursed missed opportunities, am I
A part of the cure?
Or am I part of the disease? Singin''

You are
You are
You are
You are
See Coldplay LiveGet tickets as low as $68You might also like
You are
You are

And nothin'' else compares
Oh, nothin'' else compares
And nothin'' else compares

You are
You are

Home, home, where I wanted to go
Home, home, where I wanted to go
Home (You are) home, where I wanted to go
Home (You are) home, where I wanted to go', 8351);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2342329, 'Love Yourself', '

For all the times that you rained on my parade
And all the clubs you get in using my name
You think you broke my heart, oh girl, for goodness'' sake
You think I''m cryin'' on my own, well, I ain''t

And I didn''t wanna write a song
''Cause I didn''t want anyone thinking I still care
I don''t, but you still hit my phone up
And baby, I''ll be movin'' on
And I think you should be somethin'' I don''t wanna hold back
Maybe you should know that

My mama don''t like you and she likes everyone
And I never like to admit that I was wrong
And I''ve been so caught up in my job, didn''t see what''s going on
But now I know, I''m better sleeping on my own

''Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I''m still holdin'' on to somethin''
You should go and love yourself
You might also like
But when you told me that you hated my friends
The only problem was with you and not them
And every time you told me my opinion was wrong
And tried to make me forget where I came from

And I didn''t wanna write a song
''Cause I didn''t want anyone thinking I still care
I don''t, but you still hit my phone up
And baby, I''ll be movin'' on
And I think you should be somethin'' I don''t wanna hold back
Maybe you should know that

My mama don''t like you and she likes everyone
And I never like to admit that I was wrong
And I''ve been so caught up in my job, didn''t see what''s going on
But now I know, I''m better sleeping on my own

''Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I''m still holdin'' on to somethin''
You should go and love yourself
For all the times that you made me feel small
I fell in love, now I feel nothin'' at all
I never felt so low and I was vulnerable
Was I a fool to let you break down my walls?

''Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I''m still holdin'' on to somethin''
You should go and love yourself
''Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I''m still holdin'' on to somethin''
You should go and love yourself', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2323822, 'Sorry', '

You gotta go and get angry at all of my honesty
You know I try, but I don''t do too well with apologies
I hope I don''t run out of time, could someone call a referee?
''Cause I just need one more shot at forgiveness
I know you know that I made those mistakes maybe once or twice
And by once or twice, I mean maybe a couple of hundred times
So let me, oh, let me redeem, oh, redeem, oh, myself tonight
''Cause I just need one more shot at second chances

Yeah, is it too late now to say sorry?
''Cause I''m missing more than just your body
Oh, is it too late now to say sorry?
Yeah, I know that I let you down
Is it too late to say I''m sorry now?

I''m sorry, yeah
Sorry, yeah
Sorry
Yeah, I know that I let you down
Is it too late to say I''m sorry now?
You might also like
I''ll take every single piece of the blame if you want me to
But you know that there is no innocent one in this game for two
I''ll go, I''ll go and then you go, you go out and spill the truth
Can we both say the words and forget this?

Yeah, is it too late now to say sorry?
''Cause I''m missing more than just your body
Oh, is it too late now to say sorry?
Yeah, I know that I let you down
Is it too late to say I''m sorry now?
I''m not just tryna get you back on me (Oh, no, no)
''Cause I''m missing more than just your body (Your body)
Oh, is it too late now to say sorry?
Yeah, I know that I let you down
Is it too late to say I''m sorry now?

I''m sorry, yeah
Sorry, oh
Sorry
Yeah, I know that I let you down (I know I let you down)
Is it too late to say I''m sorry now?
I''m sorry, yeah
Sorry, oh
Sorry
Yeah, I know that I let you down (I know I let you down)
Is it too late to say I''m sorry now?', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5124449, 'Yummy', '
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
Any night, any day
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
In the mornin'' or the late
Say the word, on my way

Bona fide stallion
Ain''t in no stable, no, you stay on the run
Ain''t on the side, you''re number one
Yeah, every time I come around, you get it done

Fifty-fifty, love the way you split it
Hundred racks, help me spend it, babe
Light a match, get litty, babe
That jet set, watch the sunset kinda, yeah, yeah
Rollin'' eyes back in my head, make my toes curl, yeah, yeah
You might also like
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
Any night, any day
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
In the mornin'' or the late
Say the word, on my way

Standin'' up, keep me on the rise
Lost control of myself, I''m compromised
You''re incriminating, no disguise
And you ain''t never runnin'' low on supplies

Fifty-fifty, love the way you split it
Hundred racks, help me spend it, babe
Light a match, get litty, babe
That jet set, watch the sunset kinda, yeah, yeah
Rollin'' eyes back in my head, make my toes curl, yeah, yeah
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy (You stay flexin'' on me)
Yeah, you got that yummy-yum (Yeah, yeah)
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
Any night, any day
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
In the mornin'' or the late
Say the word, on my way

Hop in the Lambo'', I''m on my way
Drew House slippers on with a smile on my face
I''m elated that you are my lady
You got the yum, yum, yum, yum
You got the yum, yum-yum, woah
Woah-ooh

Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
Any night, any day
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
In the mornin'' or the late
Say the word, on my way', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (77547, 'As Long As You Love Me', '
As long as you love me
(Love me, love me, love me, love me, love me, love me)
As long as you love me
(Love me, love me, love me, love me)
As long as you love me

We''re under pressure (We''re under pressure)
Seven billion people in the world tryna fit in (Tryna fit in)
Keep it together (Keep it together)
Smile on your face, even though your heart is frowning (Frowning)
But hey now (Hey now), you know, girl (You know, girl)
We both know, it''s a cruel world (Cruel world)
But I will (But I will) take my chances

As long as you love me
We could be starving, we could be homeless, we could be broke
As long as you love me
I''ll be your platinum, I''ll be your silver, I''ll be your gold
As long as you love me, love me
As long as you love me, love me

I''ll be your soldier (I''ll be your soldier)
Fighting every second of the day for your dreams, girl
(For your dreams, girl)
I''ll be your Hova (I''ll be your Hova)
You could be my Destiny''s Child on the scene, girl
So don''t stress (Don''t stress), and don''t cry (And don''t cry)
Oh, we don''t need no wings to fly (Wings to fly)
Just take (Take), my hand
You might also like
As long as you love me
We could be starving, we could be homeless, we could be broke
As long as you love me
I''ll be your platinum, I''ll be your silver, I''ll be your gold
As long as you love me, love me
As long as you love me, love me

Woah, woah, B-I-G
I don''t know if this makes sense, but, you''re my hallelujah
Give me a time and place, I''ll rendezvous it
I''ll fly you to it, I''ll beat you there
Girl, you know I got you
Us, trust, a couple things I can''t spell without ''U''
Now we on top of the world (World) ''cause that''s just how we do
Used to tell me sky''s the limit, now the sky''s our point of view
Man, we stepping out, like woah (Oh God)
Cameras point and shoot (Shoot)
Ask me, "What''s my best side?"
I stand back and point at you, you, you
The one that I argue with, feel like I need a new girl to be bothered with
But the grass ain''t always greener on the other side
It''s green where you water it
So I know, we got issues baby, true, true, true
But I''d rather work on this with you
Than to go ahead and start with someone new
As long as you love me
As long as you love me (Yeah, yeah, baby)
We could be starving, we could be homeless, we could be broke
As long as you love me
I''ll be your platinum (Platinum), I''ll be your silver, I''ll be your gold

As long as you love me
As long as you love me
As long as you love me (I''ll be your silver, I''ll be your gold)
As long as you love me, you love me, you love me, yeah
(It''s all I want, baby)
As long as you love me, you love me (Please don''t go)
As long as you love me, as long as you love me
As long as you love me, yeah
As long as you love me (Love me, love me, love me, love me)', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2286779, 'What Do You Mean?', '

What do you mean?  Oh, oh
When you nod your head yes, but you wanna  say no
What do you mean?  Hey, yeah
When you don''t want me to move, but you tell me to go
What do  you mean? Oh,  what do you mean?
Said you''re runnin'' outta time,  what do you mean?
Oh, oh, oh, what do you mean?
Better make up your mind, what do you mean?

You''re so indecisive of what I''m sayin''
Tryna catch the beat, make up your heart
Don''t know if you''re happy or complainin''
Don''t want for us to end, where do I start?

First you wanna go to the left, then you wanna turn right (Right)
Wanna argue all day, makin'' love all night (All night)
First you''re up, then you’re down, and then  between (''Tween)
Oh, I really wanna know

What do you mean? Oh, oh
When you nod your head yes, but you wanna say no
What do you mean? Hey, yeah
When you don''t want me to move, but you tell me to go
What do you mean? Oh, what do you mean?
Said you''re runnin'' outta time, what do you mean?
Oh, oh, oh, what do you mean? Better make up your mind
What do you mean?
You might also like
You''re overprotective when I''m leavin''
Tryna compromise, but I can’t win
You wanna make a point, but you keep preachin''
You had me from the start, won''t let this end

First you wanna go to the left, then you wanna turn right
(Turn right)
Wanna argue all day, makin'' love all night (All night)
First you''re up, then you’re down, and then between (''Tween)
Oh, I really wanna know

What do you mean? Oh, oh (Yeah, yeah, yeah, yeah)
When you nod your head yes, but you wanna say no
What do you mean? (Oh, what do you mean?) Hey, yeah
When you don''t want me to move, but you tell me to go
What do you mean? (I wanna know, ooh)
Oh, what do you mean? (Ooh)
Said you''re runnin'' outta time, what do you mean? (Oh, baby)
Oh, oh, oh, what do you mean? Better make up your mind
What do you mean? (Don''t be so selfish, baby, yeah, yeah) Oh, oh
When you nod your head yes, but you wanna say no
What do you mean? (You''re so confusin'', baby) Hey, yeah
When you don''t want me to move (Hey), but you tell me to go
What do you mean? (Be more straightforward)
Oh, what do you mean? (Hey, ah, ah, ah)
Said you''re runnin'' outta time, what do you mean? (Hey, ah, ah, ah)
Oh, oh, oh, what do you mean?
Better make up your mind, what do you mean?', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (6326342, 'Peaches', '
I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that’s it)

And I say, oh (Oh)
The way I breathe you in (In)
It''s the texture of your skin
I wanna wrap my arms around you, baby
Never let you go, oh
And I say, oh
There''s nothing like your touch
It’s the way you lift me up, yeah
And I''ll be right here with you ''til the end of time

I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that''s it)

You ain''t sure yet
But I''m for ya
All I can want, all I can wish for
Nights alone that we miss more
And days we save as souvenirs
There''s no time, I wanna make more time
And give you my whole life
I left my girl, I’m in Mallorca
Hate to leave her, call it torture
Remember when I couldn’t hold her
Left her baggage for Rimowa
You might also like
I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that’s it)

I get the feeling, so I''m sure (Sure)
Hand in my hand because I''m yours, I can''t
I can’t pretend, I can''t ignore, you''re right for me
Don''t think you wanna know just where I''ve been, oh
Done bein'' distracted
The one I need is right in my arms (Oh)
Your kisses taste the sweetest with mine
And I''ll be right here with you ''til the end of time

I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that''s it)
I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
(I get my light right from the source, yeah, yeah, that''s it)
I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that''s it)
I got my peaches out in Georgia (Oh, yeah, shit)
I get my weed from California (That''s that shit)
I took my chick up to the North, yeah (Badass bitch)
I get my light right from the source, yeah (Yeah, that''s it)', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5956102, 'Holy', '
I hear a lot about sinners
Don''t think that I''ll be a saint
But I might go down to the river
''Cause the way that the sky opens up when we touch
Yeah, it''s makin'' me say

That the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy

I don''t do well with the drama
And, no, I can''t stand it being fake
(No, no, no, no, no, no, no, no)
I don''t believe in nirvana
But the way that we love in the night gave me life
Baby, I can''t explain

That the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy
You might also like
They say we''re too young and
The pimps and the players say, "Don''t go crushin''"
Wise men say fools rush in
But I don''t know (Ah-ah-ah-ah)
They say we''re too young and
The pimps and the players say, "Don''t go crushin''"
Wise men say fools rush in
But I don''t know (Chance the Rapper)

The first step pleases the Father
Might be the hardest to take
But when you come out of the water
I''m a believer, my heart is fleshy
Life is short with a temper like Joe Pesci
They always come and sing your praises, your name is catchy
But they don''t see you how I see you, Parlay and Desi
Cross, Tween, Tween, Hesi'' hit the jet speed
When they get messy, go lefty like Lionel Messi
Let''s take a trip and get the Vespas or rent a Jet Ski
I know the spots that got the best weed, we goin'' next week
I wanna honor, wanna honor you, bride''s groom, I''m my father''s child
I know when the son takes the first steps, the Father''s proud (Yes)
If you make it to the water, He''ll part the clouds (Uh)
I know He made you a snack like Oscar Proud (Mwah)
Suffer it to be so now gotta clean it up (Ooh)
Formalize the union in communion, He can trust (Woo)
I know I ain''t leavin'' you like I know He ain''t leavin'' us (Ah)
I know we believe in God, and I know God believes in us
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second, on God
Runnin'' to the altar like a track star
Can''t wait another second, on God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me
Feels so ho-ho-ho-holy', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2854045, 'Waste a Moment', '
All the way from Waco to WeHo with a rabbit on her chain
Drove a little slick car to tend bar with the static on her brain
She''s a little burner, burner, gonna throw you to the flame
Little ticking time bomb, time bomb, gonna blow us all away

Oh, take the time to waste a moment
Oh, never ask to be forgiven

Tex, he was her boyfriend with no kin always running from the law
Every other weekend, the week ends with his back in her claw
He''s a livewire, wired, shooting sparks in the night
He’s a gun for a hire, hired with a bead in his sights

Oh, take the time to waste a moment
Oh, facing where the lines are broken
Oh, name your price to all this living
Oh, never ask to be forgiven


Oh, take the time to waste a moment
Oh, face it where the lines are broken
Oh, name a price to all that''s living
Oh, never ask to be forgivenSee Kings of Leon LiveGet tickets as low as $26You might also like', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (77735, 'Beauty and a Beat', '
Yeah
Young Money
Nicki Minaj
Justin, rrr

Show you off
Tonight, I wanna show you off (Ayy-ayy-ayy)
What you got
A billion could''ve never bought (Ayy-ayy-ayy)

We gonna party like it''s 3012 tonight
I wanna show you all the finer things in life
So just forget about the world, we young tonight
I''m coming for ya, I''m coming for ya

''Cause all I need
Is a beauty and a beat
Who can make my life complete
It''s all ''bout you
When the music makes you move
Baby, do it like you do
Cause all-
You might also like

Body rock
Girl, I can feel your body rock (Ayy-ayy-ayy)
Take a bow
You''re on the hottest ticket now, ooh (Ayy-ayy-ayy)

We gonna party like it''s 3012 tonight
I want to show you all the finer things in life
So just forget about the world, we young tonight
I''m coming for ya, I''m coming for ya

''Cause all I need
Is a beauty and a beat
Who can make my life complete
It''s all ''bout you
When the music makes you move
Baby, do it like you do (Uh, uh)
Cause all-

I-I-I-I-In time, ink lines
B-B-Bitches couldn''t get on my incline
World tours, i-i-it''s mine
Ten little letters on a big sign
Justin Bieber
You know I''ma hit ''em with the ether
Buns out, wiener
But I gotta keep an eye out for Selener
B-B-Beauty, beauty and the beast
Beauty from the East
Beautiful confessions of the priest
Beast, beauty from the streets
Beat will get deceased
Every time Beauty on the beat eats
Body rock (Yeah, yeah)
Oh (Yeah, yeah)
I wanna feel your body rock (Let''s go, let''s go)
(Frrrrr, yeah)
''Cause all I need (All I need is love)
Is a beauty and a beat (A beat)
Who can make my life complete (Complete, oh-oh-oh, oh woah)
It''s all ''bout you (All I need is you)
When the music makes you move
Baby, do it like you do (Do)
Cause all-
', 357);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3876994, 'SICKO MODE', '

Astro, yeah

Sun is down, freezin'' cold
That''s how we already know, winter''s here
My dawg would probably do it for a Louis belt
That''s just all he know, he don''t know nothin'' else
I tried to show ''em, yeah
I tried to show ''em, yeah, yeah
Yeah, yeah, yeah
Goin'' on you with the pick and roll
Young La Flame, he in sicko mode

(Woo) Made this here with all the ice on in the booth
At the gate outside, when they pull up, they get me loose
Yeah, Jump Out boys, that''s Nike boys, hoppin'' out coupes
This shit way too big, when we pull up, give me the loot (Gimme the loot!)
Was off the Remy, had a Papoose
Had to hit my old town to duck the news
Two-four hour lockdown, we made no moves
Now it''s 4 AM and I''m back up poppin'' with the crew
I just landed in, Chase B mixes pop like Jamba Juice
Different colored chains, think my jeweler really sellin'' fruits
And they chokin'', man, know the crackers wish it was a noose
See Travis Scott LiveGet tickets as low as $20You might also like
Some-some-some-someone said
To win the retreat, we all in too deep
Play-play-playin'' for keeps, don''t play us for weak (Someone said)
To win the retreat, we all in too deep
Play-play-playin'' for keeps, don''t play us for weak

Yeah, this shit way too formal, y''all know I don''t follow suit
Stacey Dash, most of these girls ain''t got a clue
All of these hoes I made off records I produced
I might take all my exes and put ''em all in a group
Hit my eses, I need the bootch
''Bout to turn this function to Bonnaroo
Told her, "Hop in, you comin'' too"
In the 305, bitches treat me like I''m Uncle Luke
(Don''t stop, pop that pussy!)
Had to slop the top off, it''s just a roof, uh
She said, "Where we goin''?" I said, "The moon"
We ain''t even make it to the room
She thought it was the ocean, it''s just the pool
Now I got her open, it''s just the Goose
Who put this shit together? I''m the glue

Someone said
Shorty FaceTimed me out the blue
Someone said
Play-playin'' for keeps
Someone said, mother****, someone said
Don''t play us for weak

Yeah!
Astro, yeah, yeah
(Tay Keith, fuck these niggas up!)
Ayy, ayy

She''s in love with who I am
Back in high school, I used to bus it to the dance (Yeah)
Now I hit the FBO with duffels in my hands
I did half a Xan, thirteen hours ''til I land
Had me out like a light, ayy, yeah
Like a light, ayy, yeah

Like a light, ayy, slept through the flight, ayy
Knocked for the night, ayy
767, man, this shit got double bedroom, man
I still got scores to settle, man
I crept down the block (Down the block)
Made a right (Yeah, right)
Cut the lights (Yeah, what?), paid the price (Yeah)
Niggas think it''s sweet (Nah, never), it''s on sight (Yeah, what?)
Nothin'' nice (Yeah), baguettes in my ice (Aw, man)
Jesus Christ (Yeah), checks over stripes (Yeah)
That''s what I like (Yeah), that''s what we like (Yeah)
Lost my respect, you not a threat
When I shoot my shot, that shit wetty like I''m Sheck (Bitch)
See the shots that I took (Ayy), wet like I''m Book (Ayy)
Wet like I''m Lizzie
I be spinnin'' Valley, circle blocks ''til I''m dizzy (Yeah, what?)
Like where is he? (Yeah, what?)
No one seen him (Yeah, yeah)
I''m tryna clean ''em (Yeah)
She''s in love with who I am
Back in high school, I used to bus it to the dance
Now I hit the FBO with duffels in my hands (Woo)
I did half a Xan, thirteen hours ''til I land
Had me out like a light (Like a light)
Like a light (Like a light)
Like a light (Like a light)
Like a light

Yeah, passed the dawgs a celly
Sendin'' texts, ain''t sendin'' kites, yeah
He said, "Keep that on lock"
I say, "You know this shit, it''s stife," yeah
It''s absolute, yeah (Yeah), I''m back, reboot (It''s lit)
LaFerrari to Jamba Juice, yeah (Skrrt, skrrt)
We back on the road, they jumpin'' off, no parachute, yeah
Shorty in the back
She said she workin'' on her glutes, yeah (Oh my God)
Ain''t by the book, yeah, this how it look, yeah
''Bout a check, yeah (Check), just check the foots, yeah
Pass this to my daughter, I''ma show her what it took (Yeah)
Baby mama cover Forbes, got these other bitches shook
Yeah', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2849767, '​goosebumps', '
Yeah
7:30 in the night, yeah
Ooh, ooh

I get those goosebumps every time, yeah, you come around, yeah
You ease my mind, you make everything feel fine
Worried ''bout those comments
I''m way too numb, yeah, it''s way too dumb, yeah
I get those goosebumps every time, I need the Heimlich
Throw that to the side, yeah
I get those goosebumps every time, yeah
When you''re not around (Straight up)
When you throw that to the side, yeah (It''s lit)
I get those goosebumps every time, yeah

7-1-3
Through the 2-8-1, yeah, I''m ridin'', why they on me?
Why they on me? I''m flyin'', sippin'' low-key
I''m sippin'' low-key in Onyx, rider, rider
When I''m pullin'' up right beside ya
Pop star, lil'' Mariah
When I text a cute game, wildness
Throw a stack on the Bible
Never Snapchat or took molly
She fall through plenty, her and all her ginnies, yeah
We at the top floor, right there off Doheny, yeah
Oh no, I can''t fuck with y''all
Yeah, when I''m with my squad, I cannot do no wrong
Yeah, saucin'' in the city, don''t get misinformed
Yeah, they gon'' pull up on you (Brr, brr, brr)
Yeah, we gon'' do some things, some things you can''t relate
Yeah, ''cause we from a place, a place you cannot stay
Oh, you can''t go, oh, I don''t know
Oh, back the fuck up off me (Brr, brr, brr)
See Travis Scott LiveGet tickets as low as $20You might also like
I get those goosebumps every time, yeah, you come around, yeah
You ease my mind, you make everything feel fine
Worried ''bout those comments
I''m way too numb, yeah, it''s way too dumb, yeah
I get those goosebumps every time, I need the Heimlich
Throw that to the side, yeah
I get those goosebumps every time, yeah
When you''re not around
When you throw that to the side, yeah
I get those goosebumps every time

Uh, I want to press my like, yeah, I wanna press my
I want a green light, I wanna be like
I wanna press my line, yeah
I wanna take that ride, yeah
I''m gonna press my line
I want a green light, I wanna be like, I wanna press my—
Mama dearest, spare your feelings
I''m relivin'' moments, peelin'' more residual
I can buy the buildin'', burn the buildin''
Take your bitch, rebuild the buildin'' just to fuck some more
I can justify my love for ya
And touch the sky for God to stop debating war
Put the pussy on a pedestal (Ayy)
Put the pussy on a high horse
That pussy to die for
That pussy to die for
Peter Piper picked a pepper
So I could pick your brain and put your heart together
We depart the shady parts and party hard
The diamonds yours, the coupe forever
My best shot just might shoot forever like (Brr)
I get those goosebumps every time, yeah, you come around, yeah
You ease my mind, you make everything feel fine
Worried ''bout those comments
I''m way too numb, yeah, it''s way too dumb, yeah
I get those goosebumps every time, I need the Heimlich
Throw that to the side, yeah
I get those goosebumps every time, yeah
When you''re not around
When you throw that to the side, yeah
I get those goosebumps every time', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3089187, 'BUTTERFLY EFFECT', '
(All the commas)
(Murda on the beat, so it''s not nice)
Ooh, hmm

For this life, I cannot change (Change)
Hidden Hills, deep off in the main (Main)
M&M''s, sweet like candy cane (Cane)
Drop the top, pop it, let it bang (Pop it, pop it)
For this life, I cannot change
In the hills, deep off in the main
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (Pop it, pop it)

Drop the top, play hide and seek (Yeah)
Jump inside, jump straight to the league (League)
Take a sip, feel just how I be (It''s lit)
On Freeway, but no, ain''t nothin'' free (Straight up)
Bend laws, bend lanes (Skrrt, skrrt)
Been bustin'' bills, but still, ain''t nothin'' change (Skrrt, skrrt, skrrt, skrrt)
You in the mob soon as you rock the chain (Skrrt, skrrt, mob)
She caught the waves, just thumbin'' through my braids (Alright)
Heatin'' up, baby, I''m just heatin'' up (It''s lit)
Need your love, not a need, it is a must (Yeah)
Feelin'' stuck, you know how to keep me up (Yeah, yeah)
Icy love, icy like a hockey puck (Alright)
See Travis Scott LiveGet tickets as low as $20You might also like
For this life, I cannot change (Change)
Hidden Hills, deep off in the main (Main)
M&M''s, sweet like candy cane (Cane)
Drop the top, pop it, let it bang (Pop it, pop it)
For this life, I cannot change
Hidden Hills, deep off in the main (Yeah, yeah)
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang

All the ones, all the chains piled on the mantle (Yeah)
All the dawgs, all the dawgs low creep right behind me in the Phantom (It''s lit)
Yeah, never go, never go dip on the set, stayed Santana
Yeah, run it back, turn the lights on when I hit up Green Lantern (It''s lit, alright)
Yeah, fly the broads, fly the dawgs down to Atlanta
Yeah, in the cut in Medusa, lay low, yeah, I might be
Yeah, roll up, help me calm down when I''m movin'' high speed
Yeah, if I send one, need to text back ''cause you know what I need (Straight up)
Oh, please, oh, me, oh, my
We been movin'', we been movin'' for some time (Alright)
Flexin'', flexin'', try to exercise
Exercise (Exercise), exercise (Exercise), exercise (Exercise), exercise (Exercise)
(Yeah, yeah)

(For this life)
For this life, I cannot change (Change)
Hidden Hills, deep off in the main (Main)
M&M''s, sweet like candy cane (Cane)
Drop the top, pop it, let it bang (Pop it, pop it)
For this life, I cannot change
Hidden Hills, deep off in the main
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (Bang, yeah)', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4497172, 'HIGHEST IN THE ROOM', '
I got room in my fumes (Yeah)
She fill my mind up with ideas
I''m the highest in the room (It’s lit)
Hope I make it outta here (Let''s go)

She saw my eyes, she know I''m gone (Ah)
I see some things that you might fear
I’m doin'' a show, I''ll be back soon (Soon)
That ain''t what she wanna hear (Nah)
Now I got her in my room (Ah)
Legs wrapped around my beard
Got the fastest car, it zoom (Skrrt)
Hope we make it outta here (Ah)
When I''m with you, I feel alive
You say you love me, don''t you lie (Yeah)
Won''t cross my heart, don''t wanna die
Keep the pistol on my side (Yeah)

Case it’s fumes (Smoke)
She fill my mind up with ideas (Straight up)
I’m the highest in the room (It''s lit)
Hope I make it outta here (Let’s go, yeah)
See Travis Scott LiveGet tickets as low as $20You might also like
We ain''t stressin'' ''bout the loot (Yeah)
My block made of quesería
This not the molly, this the boot
Ain’t no comin'' back from here
Live the life of La Familia
It''s so much gang that I can''t see ya (Yeah)
Turn it up ''til they can''t hear (We can''t)
Runnin'', runnin'' ''round for the thrill
Yeah, dawg, dawg, ''round my real (Gang)
Raw, raw, I been pourin'' to the real (Drank)
Nah, nah, nah, they not back of the VIP (In the VIP)
Gorgeous, baby, keep me hard as steel
Ah, this my life, I did not choose
Uh, been on this since we was kids
We gon'' stay on top and break the rules
Uh, I fill my mind up with ideas

Case it''s fumes
She fill my mind up with ideas (Straight up)
I''m the highest in the room (I''m the highest, it''s lit)
Hope I make it outta here
', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2145913, 'Antidote', '
Don''t you open up that window
Don''t you let out that antidote (Yeah)
Poppin'' pills is all we know (Ooh)
In the hills is all we know (Hollywood)
Don''t go through the front door (Through the back)
It''s lowkey at the night show (Ooh)
So, don''t you open up that window (Ooh)
Don''t you let out that antidote, yeah
Party on a Sunday (That was fun)
Do it all again on Monday (One more time)
Spent a check on a weekend (Oh my God)
I might do it all again (That''s boss shit)
I just hit a three peat (Ooh)
Fucked three hoes I met this week (Robert Horry)
I don''t do no old hoes (Oh, no, no)
My nigga, that''s a no-no (Straight up)
She just want the coco (Cocaína)
I just want dinero (Paper hunt, wait)
Who that at the front door? (Who that is?)
If it''s the feds, oh, no, no, no (Don''t let ''em in, shh)

Don''t you open up that window (Yeah, yeah, yeah, yeah)
Don''t you let out that antidote (Yeah, yeah, yeah, ooh, yeah)
Poppin'' pills is all we know (Yeah)
In the hills is all we know (Hollywood)
Don''t go through the front door (In the back)
It''s lowkey at the night show (Ooh)
See Travis Scott LiveGet tickets as low as $20You might also like
Yeah, ooh, ooh, at the night show (Ooh-ooh-ooh, ah)
At the night show (Higher)
At the night show (Ooh-ooh-ooh, ah)
Ooh, at the night show (Get lit, my nigga)
Ooh, at the night show (Yeah)
Anything can happen at the night show (Ooh-ooh-ooh, ah)
Everything can happen at the night show
Ooh, at the night show
Anything can happen at the night show
Ooh, at the night show
Ooh, your bitch not at home, she at the night show
Ooh (Straight up), fuckin'' right, ho
Ooh, had to catch a flight for the night show
Ooh (Let''s go), let''s get piped though
Bottles got us right though, we ain''t sippin'' light, no (Rrr, La Flame)
I ain''t got no type though
Only got one night though
We can do it twice though (Rrr, it''s lit)

At the night show, ooh
At the night show (Ooh, ooh)
At the night show
Ooh, at the night show
Yeah, at the night show
Everything can happen at the night show
Ooh, at the night show
Anything can happen at the night show, ooh
Stackin'' up day to day, young nigga
You know you gotta go get it, go get it, my nigga
They hatin'', they stankin'', they waitin''
Don''t be mistaken, we dyin'', they stayin''
Lord, I''m on fire, they think that I''m Satan
Callin'' me crazy on different occasions
Kickin'' the cameraman off of my stages
''Cause I don''t like how he snappin'' my angles
I''m overboard and I''m over-impatient
Over my niggas and these kids my ages
Dealin'' with Mo'' shit that''s more complicated
Like these two bitches that might be related
H-Town, you got one, and you Bun B like a number-one
It''s late night, got a late show
If you wanna roll, I got a place where, ah

Poppin'' pills is all we know (Ooh)
In the hills is all we know (Hollywood)
Don''t go through the front door (Through the back)
It''s lowkey at the night show (Ooh)

So don''t you open up that window (Ooh)
(Don''t you let out that antidote)', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3648112, 'STARGAZING', '

(Ah)

Rollin'', rollin'', rollin'', got me stargazin'' (Yeah)
Sippin'' on purp, feelin'' like the Barre Baby (It''s lit)
Whatever I downed, it got me goin'' crazy (Yeah)
Psychedelics got me goin'' crazy (Alright)

I was hot as hell out in the heat (Yeah, yeah)
Then a storm came in and saved my life
Head up to the sky, down on my knees (Straight up)
Out of nowhere, you came here to save the night
In the nighttime (Woo, yeah)

Rollin'', rollin'', rollin'', got me stargazin'' (Roll)
Psychedelics got me goin'' crazy (Oh, no)
Niggas femalin'', they excellin'' (Yeah)
Are they intellin''? (What you tellin''?)
We propellin'', up top with Ellen, uh (With the choppers)
Kill the jealous with propane repellent
Got me goin'' crazy (It''s lit)
On tour, we''ll tell ''em, we brought the section (Gang)
They keep on callin'' up, it''s getting hectic (Brrt)
Like we projected
So we cut the plug, he''s interjected (Got me goin'' crazy)
See Travis Scott LiveGet tickets as low as $20You might also like
Rollin'', rollin'', rollin'', got me stargazin'' (Yeah)
Sippin'' on purp, feelin'' like the Barre Baby (It''s lit)
Whatever I downed, it got me goin'' crazy (Yah)
Psychedelics got me goin'' crazy (Alright)

I was hot as hell out in the heat (Yeah, yeah)
Then the storm came in and saved my life
Head up to the sky, down on my knees (Straight up)
Out of nowhere, you came here to save the night
In the nighttime (Woo, yeah)
Got me goin'' crazy

Okay, I been up for some days, I ain''t got time to lay
Just to drown out all these thoughts, I tried all kind of things
If I take you to my past, you will be traumatized
Got a thousand kids outside that''s tryna come alive
''99, took AstroWorld, it had to relocate
Told the dawgs I''d bring it back, it was a seal of faith
Before no car notes, baby girl, she played the tourist guide
Got the keys into my city, now she know the rides
Got new money, got new problems, got new enemies
When you make it to the top, that''s the amenities
Packin'' out Toyota like I''m in the league
And it ain''t a mosh pit if ain''t no injuries
I got ''em stage divin'' out the nosebleeds (Alright, alright, alright)
And she hit that booger sugar ''til her nose bleed (Alright, alright, alright)
Bounce that shit forever, she on both knees
She was talkin'' ''bout forever, got a whole week (Alright, alright, alright)
Plus, she know my baby mama is a trophy
She be throwin'' up them B''s, feel like we both bleed
She keep my dick jumpin'' up, feel like I''m Moby
I''m way too gold for this beef, feel like I''m Kobe, yeah
This right here is astronomical
I see you picked up all my ways, I feel responsible
They tryna say that all my problems is improbable
They keep itchin'' at my spirit, I''m diabolical, you feel me?', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2849762, '​beibs in the trap', '
That coca

I just poured an eight in a liter
Throw some Jolly Rancher in, make it sweeter
Versace my clothes, I''m with a white ho
And she snortin'' three lines like Adidas
Got a black girl rollin'' off molly
Got a white bitch snortin'' up snow
Say she want real niggas in the party
Parents gon'' leave the keys to the condo

Bitch, close the door, there''s shit on your nose (That coca)
She said she want more, she said she want more
So I''ma get more, yeah, I''ma get more
Bitch, close the door, there''s shit on your nose
She said she want more, she said she want more
So I''ma get more, yeah, I''ma get more
I just poured an eight in a liter
With a white bitch sniffin'' on Bieber
Are you sure you wanna party with the demons?
Bitch, lookin'' for her phone, I ain''t seen it
Told Frost, "Bring the water," no Fiji
Free Stix, I''m poured up and I''m leanin''
I got a couple pussy niggas in they feelings
''Cause the main bitch wanna come see me
She said she want more, your girl is a ho
You need to let go, she fucked all my bros
She snortin'' the snow (That coca), now she touchin'' her toes
She got Anna Nicole all in her nose
If they kick down the door, we gon'' get locked for sure
She said she want more, fuck it, I''ma get more (I''ma get more)
See Travis Scott LiveGet tickets as low as $20You might also like
Nightmare, high-life, sleepy, night-night (Yeah)
Flashes, spotlight, pull up, night sky (Yeah, yeah)
Help it, peace, peace, peaced it (Yeah)
Bite me, ride me (Yeah), strike me, indict me (Yeah, yeah)
Snipe it, swipe it, rapper, trapper (Ooh, yeah)
I''m lit, light–(Yeah)—nin'' (Lit)
White bitch (Bitch), she thick (Thick)
Pulled out of the hood, Toyota
Drove back to the hood, Lambo'' (Ooh)
Crushed Xans, crushed Xans in my soda
Ridin'' ''round the city with my eyes closed (Yeah, yeah)
Crazy Girls got it poppin'', AOD got it poppin'' (Yeah, yeah)
Tryna text my accountant, ain''t no service in the mountains (Straight up)
Won''t you come to the bottom? Know you heard a lot about ''em (Yeah)
Heard they take that, then they change like a mood ring (Yeah, yeah)
I watch ''em take that, then they change like a mood ring
Pulled out of the hood, Toyota
Drove back to the hood, Lambo'' (Ooh)
Crushed Xans, crushed Xans in my soda
Ridin'' ''round the city with my eyes closed (Ooh)

I just poured an eight in a liter
Throw some Jolly Rancher in, make it sweeter
Versace my clothes, I''m with a white ho
And she snortin'' three lines like Adidas
Got a black girl rollin'' off molly (Molly)
Got a white bitch snortin'' up snow
Say she want real niggas in the party
Parents gon'' leave the keys to the condo
Bitch, close the door, there''s shit on your nose (That coca)
She said she want more, she said she want more
So I''ma get more (Ooh), yeah, I''ma get more (Ooh)
Bitch, close the door (Ooh), there''s shit on your nose (Ooh)
She said she want more (Ooh), she said she want more (Ooh)
So I''ma get more (Ooh), yeah, I''ma get more

Mmm-mmm, mmm-mmm, mmm-mmm, mmm-mmm
Mmm-mmm-mmm, mmm-mmm-mmm
Mmm-mmm-mmm, mmm-mmm-mmm', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2290813, '90210', '

(Dean, what''s poppin''? Hahahahaha. Yo, Travis)
Mhm, ooh-ooh-ooh-ooh-ooh-ooh-ooh-ooh-ooh
Mama''s mailin'' out that blow, cravin'' 9021—
Ooh-ooh-ooh-ooh-ooh

She a porn star girl, ah, from the valley
(Honestly, God bless)
Who left her hometown world all for that alley
Ooh, created Lake Tahoe all from her panties
(I hope it was wet like my jumper, though)
Ooh, used to take the long way home
Long way home, all for that candy (Hahahahaha, mhm)

Baby''s hooked on feeling low-ow
Do, do, do
Do, do

Jacques turned La Flame, now he rollin'' on an Addy
Fifty on a chain, ''nother fifty on a Caddy
Ooh, he might pop him a pill, pop him a seal
Pop anyone, pop anything
Pop anything to find that alley
Mhm, yeah, to find that alley (Mhm)
See Travis Scott LiveGet tickets as low as $20You might also like
Baby''s hooked on feeling low-ow
Do, do, do
Do, do

In the 90210, 90210, lookin'' for that alley
In the 90210, 90210, lookin'' for that alley, ooh
It''s the superstar girl, superstar girl, roamin'' in that alley
(Baby''s hooked on feeling low-ow)
Ooh, in the 90210, 90210, somewhere in that alley
(Do, do, do)
(Do, do)
Ooh, ahh
(I gotta tell ya)

(Ooh-ooh-ooh-ooh)
(Ooh-ooh-ooh-ooh)
(Ooh-ooh-ooh-ooh)
Ooh-ooh
(All, all, all thang, thang)
(All, all, all thang, thang)
Ooh-ooh-ooh-ooh-ooh
(All, all, all thang, thang)
(All, all, all thang, thang)
Yeah
My granny called, she said, "Travvy, you work too hard
I''m worried you forget about me"
(All, all, all)
I''m fallin'' in and out of clouds
Don''t worry, I''ma get it, Granny, uh
What happened? Now my daddy happy
Mama called me up, that money comin'' and she love me
(All, all, all thang, thang)
I done made it now, I done found life''s meanin'' now
(All, all, all thang, thang)
All them days her heart''d break, her heart not in pieces now
Friends turnin'' into fraud niggas
Practicin'' half the passion, you niggas packaged different
(All, all, all thang, thang)
All you niggas, you niggas want the swag, you can''t have it
(All, all, all thang, thang)
I''ma sell it, your niggas salary, we ''bout to cap, bitch
Youngest nigga out of Houston at the Grammys
Smilin'' at ''em laughin'' at me
I passed the rock to Ye, he pump faked, then passed it back, bitch
(All, all, all thang, thang)
All of this off of rappin'', should''ve wrote this in Latin, yeah-yeah
(All, all, all thang, thang)
Mmm, I know, I know, I know, I know, I know
I know, I know, I know, I know, I know
Cuzzo said we hit the store, yeah, we ''bout to drop a four
He passed the cigarette, I choke, woo
Told my auntie, "Put them ''Ports down, them ''Ports down"
Now you know you love your own now
Hit the stage, they got their hands up, don''t put your nose down
I ain''t knockin'', nigga, I knocked the door down, for sure now
Whole crew, I swear they countin'' on me
Gold chains, gold rings, I got an island on me
Houses on me, he got them ounces on him
Holy Father, come save these niggas, I''m stylin'' on ''em
Good Lord, I see my good fortune in all these horses
I''m drivin'' too fast to stop, so all these signs, I ignore them
Just this guy from north of the border, my chips is in order
My mom''s biggest supporter, so now a nigga support a nigga
(Ooh-ooh-ooh-ooh-ooh-ooh-ooh)
(Ooh-ooh-ooh-ooh-ooh-ooh-ooh)', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3876940, 'YOSEMITE', '
Ice on my neck, flawless baguettes
Hop off a jet, barely get rest
Cash through the month, I get a check (Check)
Yves Saint Laurent on my pants and my chest (Drip)
Chanel, her dress, clean up her mess
I eat her flesh, you know the rest
Count up a hun'', cop a Rolex (Checks)
Shine like the sun, you truly blessed (Shine)
Two-tone Patek (Mmm-mmm-mmm)
In The Clearport like I Uber these jets (Jets)
VVS''s on me, got my Gucci shirt wet
Put an M in my bag (Mmm), gon'' get used to these racks (Used)
I went to school where they teach you finesse (Mmm)
Five hundred shoes for the drip, I invest (''Vest, mmm)
I''m the bossman, I keep cash in the desk (Mmm-mmm-mmm)
Know the coupe fast (Yeah), when it end with an "S"

Now that I''m home, back off the road
We shut it down where it ain''t so
With checks in the streets, Jay number 4s
Saint Laurent feet, put it on toes
Take it with me, double your dose
Covered with angels that''s watchin'' my soul
Jet got a bed, it''s bigger windows
Said, "I''ll be there in ten," but I got there in four
See Travis Scott LiveGet tickets as low as $20You might also like
I feel like I''m chosen, I''m covered in gold (Gold, gold, gold)
Mmm-hmm-mmm-hmm-mmm-hmm-mmm
Mmm-hmm-mmm-hmm-mmm-hmm-mmm
I left her wide open, no self control (''Trol, ''trol, ''trol)
Mmm-hmm-mmm-hmm-mmm-hmm-mmm
Mmm-hmm-mmm-hmm-mmm-hmm-mmm
Took nothin'' but five minutes, she hopped in and drove (Drove, drove, drove)
Mmm-hmm-mmm-hmm-mmm-hmm-mmm

Ice on my neck, flawless baguettes (Flawless baguettes)
Hop off a jet, barely get rest
Cash through the month, I get a check (Check)
Yves Saint Laurent on my pants and my chest (Drip)
Chanel, her dress, clean up her mess
I eat her flesh, you know the rest
Count up a hun'', cop a Rolex (Checks)
Shine like the sun, you truly blessed (Shine, yeah)
Two-tone Pateks (Mmm-mmm-mmm)
In The Clearport like I Uber the jets (Jets)
VVS''s on me, got my Louis shirt wet
It''s an M in my bag (Mmm), gon'' get used to these racks (Used)
I went to school where they teach you finesse (Mmm)
Five hundred shoes for the drip, I invest (''Vest, mmm)
I''m the bossman, I keep cash in the desk (Mmm-mmm-mmm)
Know the coupe fast (Yeah), when it end with an "S"
La Flame on an island, me and Cash, Gunna hopped on a Learjet
Got Pradas every color and I got CCs you ain''t seen yet
Said I''d kick the cup and now I''m askin'', "Where the codeine at?"
Thirty pointers and up, Eliantte, drippin'', my whole team wet', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3876999, 'CAN’T SAY', '
No, you can''t say if I''m mad or not
Smokin'' hella weed, I''m on that alcohol
And shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turnin'' out
What would you do if you heard I got it goin'' on?
I had to burn, I left skrrt marks, I had to dip (I had to)
Gotta watch for 12 ''round my town, you might get killed (Better watch for 12)
I''m out my mind, yeah, I''m high above the rim (I''m out my mind)
You cop it live, boy, I got it all on film

You gotta watch out where you rock ''cause shit get real
Drink too real, I can''t be fake, don''t know the feel
Gotta take a long drive up the hill
Gang too wavy, move like Navy Seals
I''m too wavy, think I need a Lyft
Chicago baby, she just wanna drill
The vibe''s too wavy, it''s too hard to kill
Gotta watch out where you go ''cause shit get real

Uh-huh, yeah
Swang, when I swang, when I swang to the left
Oh, yeah
Po—pop my trunk, dip—dip—dip—dip
Oh my
See Travis Scott LiveGet tickets as low as $20You might also like
You can''t say if I''m mad or nah
Smokin'' hella weed, I''m on that alcohol
And shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turnin'' out
What would you do if you heard I got it burnin'' out?
I let it burn, skrrt that mark, I had to dip (I had to)
Better watch for 12 ''round my town, you might get killed (Better watch for 12)
I''m out my mind, yeah, I''m high above the rim (I''m out my mind)
You cop it live, boy, I got it all on film

You must be cautious, told the lil'' hoes, "I''m all in"
Play this ballers offense, I left ol'' girl, she callin''
You know I hit in the mornin'', oh, yeah, she yawnin''
I met you in the club, bitch, you know this shit mean nothin''
Oh, didn''t I hit your cousin? Mmm, no, no discussion
Sippin'' on lean, no Robitussin, oh, yeah, I know you love me
I beat it, ain''t no cuddlin'', you down bad, you sufferin''
I don''t give a fuck how hard it get, that lil'' bitch know I started this
Uh-huh, oh, yeah, get to the cash, no layup
Spend a big bag, Rodeo, some may ride for the fresh cut
Hoes come through just to touch us, I''ma tell the truth like Usher
You already know how I bust her, slang my chop'' from Russia

Swang, when I swang, when I swang to the left
Pop, pop my trunk, dip, dip, dip, dip
Swang—swang, when I swang, when I swang to the left
Pop, pop my trunk, dip
No, you can''t say if I''m mad or not
Smokin'' hella weed, I''m on that alcohol
Shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turnin'' out
What would you do if you heard I got it goin'' on?
I had to burn, I left skrrt marks, I had to dip
Gotta watch for 12 ''round my town, you might get killed
I''m out my mind, yeah, I''m high above the rim
You cop it live, boy, I got it all on film', 20185);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7713201, 'I Love You', '
I love you, I love you, I told you I do
It''s all I''ve ever felt, I''ve never felt so well
And if you don''t know it, I wrote you this tune
To be here loving you when I''m in the tomb
I''ve eddied the heart now, from Dublin to Paris
And if there was sunshine, it was never on me
So close, the rain, so pronounced is the pain
Yeah

Well, I love you, imagine a world without you
It''s only ever you, I only think of you
And if it''s a blessing, I want it for you
If I must have a future, I want it with you
Systеm in our hearts, you only had it before
You only opеn the window, never open up the door
And I love you, I love you, told you I do

Selling genocide and half-cut pride, I understand
I had to be there from the start, I had to be the fucking man
It was a clamber of the life, I sucked the ring off every hand
Had ''em plying me with drink, even met with their demands
When the cherries lined up, I kept the spoilings for myself
''Til I had thirty ways of dying looking at me from the shelf
Cloud-parting smile I had, a real good child I was
But this island''s run by sharks with children''s bones stuck in their jaws
Now the morning''s filled with cokeys tryna talk you through it all
Is their mammy Fine Gael and is their daddy Fianna Fáil?
And they say they love the land, but they don''t feel it go to waste
Hold a mirror to the youth and they will only see their face
Makes flowers read like broadsheets, every young man wants to die
Say it to the man who profits, and the bastard walks by
And the bastard walks by, and the bastard walks by
Say it to him fifty times and still the bastard won''t cry
Would I lie?
You might also like
I love you, I love you, I told you I do
It''s all I''ve ever felt, I''ve never felt so well
And if you don''t know it, I wrote you this tune
To be here loving you when I''m in the tomb
System in our hearts, you only had it before
Echo, echo, echo, the lights, they go
The lights, they go, the lights, they go
Echo, echo

Selling genocide and half-cut pride, I understand
I had to be there from the start, I had to be the fucking man
It was a clamber of the life, I sucked the ring off every hand
Had ''em plying me with drink, even met with their demands
And I loved you like a penny loves the pocket of a priest
And I''ll love you ''til the grass around my gravestone is deceased
And I''m heading for the cokeys, I will tell them ''bout it all
About the gall of Fine Gael and the fail of Fianna Fáil
And now the flowers read like broadsheets, every young man wants to die
Say it to the man who profits, and the bastard walks by
And the bastard walks by, and the bastard walks by
Say it to him fifty times and still the bastard won''t cry
Would I lie?', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10288606, 'Starburster', '
It may feel bad
It may feel bad
It may feel bad

I wanna see you alone, I wanna sharp the stone
I wanna bounce the bone, I wanna mess with it
I wanna lay the deville, the whole crew on the sill
I want the preacher and pill, I wanna bless with it
I wanna head to a mass and get cast in it
That shit''s funnier than any A-class, in'' it?
I wanna talk with the clown who has apologies down
Pay him 300 pound to take a class in it
I wanna bite the phone, I wanna bleed the tone
I wanna see you alone, alone, alone-lone
I wanna strait the shark and find me somewhere to park
Like the light when it''s dark, it''s dark, it''s dark-dark
A few stars about make it feel like peace in a way
A complimentary round
Constellation got a twist in it
For a GPO and all the hits in it

I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary—
(It may feel bad)
You might also like
I wanna talk with a gag if it''s a bottle or bag
I wanna strike with the SAG, I need the friends from it
I want a shot in the dark, I wanna make the mark
I want to live the arc, I call the ends on it
I wanna take the truth without a lens on it
My God given insanity, it depends on it
How I feel? How I feel? How I feel? I wanna keel
Over harder than a turned up challenger
I wanna keep all of your charm in a canister
Do you inspire like the same did Salinger?
I''m the pig on the Chinese calendar
I got a shadow like a .58 Caliber
I wanna move like a new Salamander
I love the carrion who''s a real Scavenger
It''s moral tyranny keeping me from thee


Hit me for the day
For the light
That you suffered
To come by
Take to my sky
Never wanting
Only wonder
To live out of reach
Sloping family
Short to tall
One to three
Swallow the key
In their footprints
I will follow
I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary blissness
I''m gon'' hit your business if it''s momentary blissness', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4071418, 'Boys in the Better Land', '

You''re not alive until you start kicking
When the room is spinning and the words aren''t sticking
And the radio is all about a runaway model with a face like sin and a heart like a James Joyce novel

Saying "Sister, sister, how I missed ya, missed ya
Let''s go wrist to wrist and take the skin off of the blister"
If you''re a rockstar, pornstar, superstar, doesn''t matter what you are
Get yourself a good car, get outta here

Well
But the boys in the better land
You''re always talking ''bout the boys in the better land
The boys in the better land
But the boys in the better land
You''re always talking ''bout the boys in the better land
The boys in the better land

Driver''s got names to fill two double barrels
He spits out "Brits out", only smokes Carrolls
And he''s refreshing the world in mind, body and spirit
Mind body and spirit, you better hear it and fear it
Oh, that''s the spirit
You might also like
Saying "Sister, sister, how I missed ya, missed ya
Let''s go wrist to wrist and take the skin off of the blister"
If you''re a rockstar, pornstar, superstar, doesn''t matter what you are
Get yourself a good car, get outta here

Yeah
But the boys in the better land
You''re always talking ''bout the boys in the better land
The boys in the better land
But the boys in the better land
You''re always talkin'' about the boys in the better land
The boys in the better land

Driver''s got names to fill two double barrels
He spits out "Brits out", only smokes Carrolls
And he''s refreshing the world in mind, body and spirit
Mind body and spirit, you better hear it and fear it
Oh, that''s the spirit

Saying "Sister, sister, how I missed ya, missed ya
Let''s go wrist to wrist and take the skin off of the blister"
If you''re a rockstar, pornstar, superstar, doesn''t matter what you are
Get yourself a good car, get outta here
Yeah
But the boys in the better land
You''re always talking ''bout the boys in the better land
The boys in the better land
But the boys in the better land
You''re always talkin'' about the boys in the better land
The boys in the better land
', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7582582, 'Jackie Down the Line', '
Do-do-do
La-la-la

My friend Sally says she knows ya
Got a funny point of view
Says you''ve got away with murder
Maybe one time, maybe two
Something happens in the morning
When I can''t see those failing eyes
I can''t find a good word for ya
Does it come as a surprise?

I don''t think we rhyme
I will wear you down in time
I will hurt you, I''ll desert you
I am Jackie down the line

Said did Sally ''bout a future
Before you bored of her as well
If all you want is entertainment
If you can''t have it you make hell
You might also like
Don''t make no odds for ye
To be told, yeah
Don''t make no odds for ye
To be told, yeah

I don''t think we rhyme
I will wear you down in time
I will hurt you, I''ll desert you
I am Jackie down the line
I don''t think we rhyme
I will make your secrets mine
I will hate ye, I''ll debase ye
I am Jackie down the line
Do-do-do
La-la-la

So come on down to Sally''s boneyard
See her spirit in decline
See the handsome mourners crying
They hawked a beating heart for a sturdy spine, yeah
What good is happiness to me
If I''ve to wield it carefully?
For care I''ll always come up short
It''s only right
I don''t think we rhyme
I will wear you down in time
I will hurt ye, I''ll desert ye
I''m one Jackeen of a line
I don’t think we rhyme
I will take up all your time
I will chew ye, I''ll go through ye
I am Jackie down the line
I don''t think we rhyme
I will make your secrets mine
I will hate ye, I''ll debase ye
I am Jackie down the line
And I will stone ye, I''ll alone ye
I am Jackie down the line
If I can make you, I can break you
I am Jackie down the line
I am Jackie down the line

Do-do-do
La-la-la', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5536773, 'A Hero’s Death', '
Ooh-ooh
Ooh-ooh
Ooh-ooh
Ooh-ooh

Life ain’t always empty
Life ain’t always empty
Life ain’t always empty
Life ain’t always empty
Life ain’t always empty
Life ain’t always empty

Don’t get stuck in the past
Say your favourite things at mass
Tell your mother that you love her
And go out of your way for others
Sit beneath a light that suits ya
And look forward to a brighter future

(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
You might also like
Ooh-ooh

Sink as far down as you can be pulled up
Happiness really ain’t all about luck
Let your demeanour be your deep down self
And don’t sacrifice your life for your health
When you speak, speak sincere
And believe me friend, everyone will hear

(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty

Ooh-ooh

Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bring your own two cents
Never borrow them from someone else
Buy yourself a flower every hundredth hour
Throw your hair down from your lonely tower
And if, and if you find yourself in the family way
Give the kid more than what you got in your day

(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty

Ooh-ooh

Ah, never let a clock tell you what you got time for
It only goes around, goes around, goes around
Take your family name for your own great sins
''Cause each day is where it all begins
And don’t give up too quick
You only get one line, you better make it stick
If we give ourselves to every breath
Then we’re all in the running for a hero’s death
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty
(Ooh) Life ain’t always empty

Ooh-ooh

Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
Bap, bap, bap, bap, bap
That was the year of the sneer
Now the real thing''s here', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10290610, 'Favourite', '
(Pa-pa-pa-pa-pa)
(Pa-pa-pa-pa-pa) All the pieces last forever

Did you know
I could claim the dreamer from the dream?
Make you feel
Everything you''ve never even seen
Yeah, it''s been
A long, a long, a long, a long, a long-long
You were my
Favourite for a long time

Stitch and fall
The faces rearranged
You will see
Beauty give the way to something strange
Yeah, it''s been
A long, a long, a long, a long, a long-long
You were my
Favourite for a long time

Well, look who''s just the newest clown
Thirty-five hours coming down
How the sun shines on new pavement
And you don''t even feel it
It''s a cry far from bed radios
And days spent playing football indoors
When they painted town with Thatcher
And they never even wanted to know ya
You might also like
Feel alone?
I can split the sunshine to the day
Yeah and
Stick your heart to everything you say
Yeah
To be gone, be gone, be gone, be gone, be gone
You were my favourite for a long time
You were my favourite for a long time

Favourite for a long time
Favourite for a long time
Favourite for a long time
(Pa-pa-pa-pa-pa) All the pieces last forever
(Pa-pa-pa-pa-pa) All the pieces last forever
(Pa-pa-pa-pa-pa) And all the pieces
Dara-dara-dara-dara-dara
(Pa-pa-pa-pa-pa) And all the pieces
Dara-da, dara-da

Did you know
Cities on return are often strange?
Yeah, and now
Every time you blink, you feel it change
And it''s been
A long, a long, a long, a long, long-long
You''ve been my
Favourite for a while
Ah, it makes sense when you understand
The misery made me another marked man
And I''m always looking over my shoulder
And each new day, I get another year older
Shoulder bounce through the frame of a door
Chewed into shape like a stone on the shore
But if there was lightning in me
You''d know who it was for

Did you know
I could claim the dreamer from the dream?
Make you feel
Everything you''ve never even seen
Yeah, it''s been
A long, a long, a long, a long, long-long
You were my
Favourite for a long time
(Favourite for a long time)
You were my favourite for a long time
(Favourite for a long time)
You were my favourite for a long time
(Favourite for a long time)
You were my favourite for a long time (All the pieces last forever)', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7582597, 'In ár gCroíthe go deo', '
(In ár gCroíthe)
(In ár gCroíthe)
Gone is the day, gone is the night, gone is the day
(In ár gCroíthe)
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
(In ár gCroíthe)
Gone is the day, gone is the night, gone is the day

She defines the only answer
And I never had the time
She defines the only reason
For feeling
All in all is all we tailor
And they always have the best
And she defines the only reason
For feeling

Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
You might also like
She defines the only answer
And I never had the time
She defines the only reason
For feeling
All in all is all we tailor
And they always have the best
And she defines the only reason
For feeling, ah, ah

Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night
It''s gone, it''s gone, it''s gone, it''s gone, it''s gone
(In ár gCroíthe)
(In ár gCroíthe)

She defines the only answer
And I never had the time
She defines the only answer
To feeling
All in all is all we tailor
And they always had the best
She defines the only reason
For feeling, ah, ah, ah
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
Gone is the day, gone is the night, gone is the day
It''s gone, it''s gone, it''s gone, it''s gone, it''s gone, it''s gone, it''s gone, it''s gone

(In ár gCroíthe)
(In ár gCroíthe)Embed', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7582601, 'Roman Holiday', '
Baby, come on, get stoned, get stoned
Get inside it, inside it, inside it, inside
Get along, get along, get alone, get alone, get
Heard about the week on the Dalymount seat, yeah
Baby, come on, before the going gets gone
Heard you lied to the Major, won''t be long
Well, I wish upon a wedding for a picture in the star
When they knock for ya don''t forget who you are
Skinty Fia

Baby, come on, whose sidе are you on?
I don''t wanna see the queen
I already sing hеr song
While they''re snuffing out hopes, and they''re blotting out suns
They claim to know the form in which genius comes, yeah
Baby, come on, get your high heels on
It’s the body is cold, it''s the course is run
What artless living all this soft pain thrills
What calamities usher all our brilliance to the hills!
Can you feel it?

Baby, come on, get stoned, get stoned
Get inside it, inside it, inside it, inside
Get along, get along, get alone, get alone, get
Was it the weed or the moment that stoned ye?
You might also likeBaby, come on, get the hourglass on
I will dart into town, no, I won’t be long
If the talk''s getting cold, we''ll be chancing none
Well, you know what I’m saying, our day will come
Can you feel it?
Won''t be long
Can you feel it?Embed', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4294578, 'Big', '
Dublin in the rain is mine
A pregnant city with a catholic mind
Starch those sheets for the birdhouse jail
All mescalined when the past is stale, pale
Dublin in the rain is mine
A pregnant city with a catholic mind
Slick little boy with a mind of Ritz
Pulling that thread for the next big fix, this

My childhood was small
My childhood was small
But I''m gonna be big
But I''m gonna be big
My childhood was small
My childhood was small
But I''m gonna be big
But I''m gonna be big
But I''m gonna be big

Well, Dublin in the rain is mine
A pregnant city with a catholic mind
Starch those sheets for the birdhouse jail
All mescalined when the past is stale, pale
Dublin in the rain is mine
A loose ambassador for all that crime
Slick little boy with a mind of Ritz
Pulling that thread for the next big fix, this
You might also like
My childhood was small
My childhood was small
But I''m gonna be big
But I''m gonna be big
My childhood was small, oh yeah, yeah, yeah
My childhood, it was small
But I''m gonna be big
But I''m gonna be big
But I''m gonna be big
I''m gonna be big', 1479967);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4190001, 'Too Real', '
Ah

None can pull the passion loose from youth''s ungrateful hands
As it stands, I''m about to make a lot of money
Gold harps in the pan
None can revolution lead with selfish needs aside
As I cried, I''m about to make a lot of money
Gold harps on the side

Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real?

The winter evening settles down
The bruised and beat up open sky, six o''clock
The city in its final dress
And now a gusty shower wraps the grimy scraps
Of withered leaves all about your feet
And then the ringing of a twitching hand
Six o''clock, six o''clock
You might also like
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?

None can pull the passion loose from youth''s ungrateful hands
As it stands, I''m about to make a lot of money
Gold harps in the pan
None can revolution lead with selfish needs aside
As I climbed, I''m about to make a lot of money
Goes around and around and around
Oh yeah, boya

Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?
Is it too real for ya?', 1479967);
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
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (599427, 'No Role Modelz', '
First things first: rest in peace, Uncle Phil
For real
You the only father that I ever knew
I get my bitch pregnant, I''ma be a better you
Prophecies that I made way back in the Ville
Fulfilled
Listen, even back when we was broke, my team ill
Martin Luther King woulda been on Dreamville, talk to a nigga

One time for my L.A. sisters
One time for my L.A. ho
Lame niggas can''t tell the difference
One time for a nigga who know

Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved

No role models, and I''m here right now
No role models to speak of
Searchin'' through my memory, my memory, I couldn''t find one
Last night, I was gettin'' my feet rubbed by the baddest bitch
Not Trina, but I swear to God, this bitch''ll make you call your girl up
And tell her, "Hey, what''s good?
Sorry, I''m never comin'' home, I''ma stay for good"
Then hang the phone up and proceed to lay the wood
I came fast like 9-1-1 in White neighborhoods
Ain''t got no shame ''bout it
She think I''m spoiled and I''m rich ''cause I can have any bitch
I got defensive and said, "Nah, I was the same without it"
But then I thought back, back to a better me
Before I was a B-list celebrity
''Fore I started callin'' bitches "bitches" so heavily
Back when you could get a platinum plaque without no melody, you wadn''t sweatin'' me
You might also like
One time for my L.A. sisters
One time for my L.A. ho
Lame niggas can''t tell the difference
One time for a nigga who know

Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved

I want a real love, dark-skinned Aunt Viv love
That Jada and that Will love
That leave a toothbrush at your crib love
And you ain''t gotta wonder whether that''s your kid love
Nigga, I don''t want no bitch from reality shows
Out-of-touch-with-reality hoes
Out in Hollywood bringin'' back five or six hoes
Fuck ''em then we kick ''em to the do'', nigga, you know how it go
She deserved that, she a bird, it''s a bird trap
You think if I didn''t rap she would flirt back?
Takin'' off her skirt, let her wear my shirt ''fore she leave
"I''ma need my shirt back" (Nigga, you know how it go)
One time for my L.A. sisters
One time for my L.A. ho
Lame niggas can''t tell the difference
One time for a nigga who know

Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
There''s an old saying in Tennessee—I know it''s in Texas, probably in Tennessee—that says, fool me once... shame on... shame on you
Fool me—can''t get fooled again

Fool me one time, shame on you (Ayy)
Fool me twice, can''t put the blame on you (Ayy)
Fool me three times, fuck the peace sign
Load the chopper, let it rain on you (Bop, bop, bop)
Fool me one time, shame on you (Ayy)
Fool me twice, can''t put the blame on you (Ayy)
Fool me three times, fuck the peace sign
Load the chopper, let it rain on you (Bop, bop, bop)
My only regret was too young for Lisa Bonet
My only regret was too young for Nia Long
Now all I''m left with is hoes from reality shows
Hand her a script, the bitch prolly couldn''t read along
My only regret was too young for Sade Adu
My only regret, could never take Aaliyah home
Now all I''m left with is hoes up in Greystone
With the stale face ''cause they know it''s they song

She shallow but the pussy deep (She shallow, she shallow)
She shallow but the pussy deep (She shallow), yeah, ayy
(She shallow)
She shallow but the pussy deep (She shallow), haha
(She shallow)
She shallow but the pussy deep (She shallow, she shallow)

Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
Don''t save her, she don''t wanna be saved
', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (118063, 'Power Trip', '
Got me up all night
All I''m singin'' is love songs
She got me up all night
Constant drinkin'' and love songs
She got me up all night
Down-and-out with these love songs
She got me up all night
Drownin'' out with these love songs
She got me up all night (Yeah)
All I''m singin'' is love songs
She got me up all night (Yeah)
Constant drinkin'' and love songs
She got me up all night (Yeah)
Down-and-out with these love songs
She got me open all night (Uh-huh)
Got me open all night, hey

Okay, back when I was sleeping in my mama crib
Or even back when I was up there in Mohammed crib
Paying seventeen hundred for the rent, money well spent
No heater, but a nigga made heat, may I vent?
Had a thing for ya, even wrote the song "Dreams" for ya
‘Cause I had dreams for ya, thoughts of a ring for ya
Childish shit, you know child and shit
Anonymous flowers sent, you know coward shit
Now a nigga signed to Hov, took a power trip
Back home, I''m grown now, and the city''s my throne now, huh
The same clubs that I used to get tossed out
Life got Kriss Kross''d: totally crossed out
‘Cause now I''m in this bitch and I''m totally bossed out
Old chicks crying ‘cause they know that they lost out
But I''m still on you, I''m still on you
My drink spill on me, while I feel on you, I''m sayin''—
You might also like
Would you believe me if I said I''m in love?
Baby, I want you to want me
Would you believe me if I said I''m in love?
Baby, I want ya

And we are, we are, we are
Got me up all night
And we are, we are, we are
All I''m singin'' is love songs
And we are, we are, we are
Got me up all night
And we are, we are, we are (She got me)
And we are, we are, we are (She got me)

Well, this has got to be the longest crush ever
If I ever get to fuck it''d be the longest bust ever
Love is a drug, like the strongest stuff ever and
Fuck it, I''m on one, you feel me?
She on a power trip, she got me where she want a nigga
Wife''ing in the club, man, my homies gon'' disown a nigga
Like, "Give me twenty dollars, dollars!"
Ass stupid, how you get to college, college?
I''m in your city and I''m wonderin'' if you''re home now
Went and found a man, but I''m hopin'' you''re alone now
Can''t help but feeling like I dropped the ball, cliché
I used to pop up on you at the mall each day
Now, typically I kick game like Eastbay
But you got a nigga freeze-framed yelling: "Please play!"
For Pete''s sake, homie, pull it together
Just fuck her one time and be through with forever, but—
Would you believe me if I said I''m in love?
Baby, I want you to want me
Would you believe me if I said I''m in love?
Baby, I want ya, yeah

And we are, we are, we are
Got me up all night
And we are, we are, we are
All I''m singin'' is love songs
And we are, we are, we are
Got me up all night
And we are, we are, we are (She got me)
And we are, we are, we are (She got me)

Got me up all night (All night)
All I''m singin'' is love songs
She got me up all night (All night)
Constant drinkin'' and love songs
She got me up all night (All night)
Down-and-out with these love songs
She got me up all night (All night)
Drownin'' out with these love songs
She got me up all night (Yeah)
All I''m singin'' is love songs
She got me up all night (Yeah)
Constant drinkin'' and love songs
She got me up all night (Yeah)
Down-and-out with these love songs
She got me open all night (Uh-huh)
Got me open all night, hey
Back when I was sleeping in my mama crib
*Space Bar Tap*
', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (599388, 'Wet Dreamz', '
Cole
Cole world
Yeah
Let me take y''all back, man
As I do so well
Wadn''t nuttin'' like that
Man, it wadn''t nuttin'' like that
First time, she was in my math class (Uh-huh)
Long hair, brown skin with the fat ass
Sat beside me, used to laugh, had mad jokes
The teacher always got mad, so we passed notes
It started off so innocent
She had a vibe and a nigga started diggin'' it, uh
I was a youngin, straight crushin'', tryna play the shit cool
But a nigga couldn''t wait to get to school, ‘cause when I seen
Them thighs on her and them hips on her and them lips on her
Got me daydreamin'', man, what
I''m thinkin'' how she rides on it, if she sits on it, if she licks on it
Make it hard for me to stand up, as time goes by
Attractions gettin'' deep and
Wet dreamin'', thinkin'' that I''m smashin'' but I''m sleepin'', I want it bad
And I ain''t never been obsessed before
She wrote a note that said, "You ever had sex before?" Damn…
You might also like
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
I wrote back and said
"Of course I had sex before," knowin'' I was frontin''
I said, "I''m like a pro, baby," knowin'' I was stuntin''
But if I told the truth, I knew that I''d get played out, son
Hadn''t been in pussy since the day I came out one, but
She don''t know that, so she done wrote back and told me
"Oh, you a pro, homie? Well, I want you to show me
My mama gone for the weekend
So Saturday, baby, we can get to freakin''."
That''s when my heart start racin'' and my body start sweatin''
Baby, you done woke my lil'' man up
I''m thinkin'' how that body look naked when you layin'' on the bed
Teacher, please, don''t make me stand up, I wrote back like
"Yeah, baby, sound like a plan."
Still tryna play it cool, sound like the man
But I was scared to death, my nigga, my stomach turnin''
Talkin'' shit, knowin'' damn well I was a virgin, fuck
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
Yeah, you know that feelin'' when you
Know you finna bone for the first time?
I''m hopin'' that she won''t notice it''s my first time
I''m hopin'' that my shit is big enough to fuck wit''
And most of all I''m prayin'', "God, don''t let me bust quick"
I''m watchin'' pornos, tryna see just how to stroke right
Practice puttin'' condoms on—how it go? Right
I''m in her crib, now a nigga palm sweatin''
With a pocket full of rubbers and an erection
That''s when my hands start touchin'' and her face start blushin''
And a nigga roll over on top and then she
Get my pants unbuckled and her hands start rubbin''
On me, ooh girl, don''t stop, it''s time for action
Pull out the condoms real smooth, yeah, just how I practiced
But right before I put it in, she flinched and grabbed it and said
"I wanna get somethin'' off my mental
I can tell you''re a pro, but baby, be gentle, ‘cause—"
‘Cause I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
I ain''t never did this before, no
And I ain''t never did this before, no
And I ain''t never did this before, no
', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (93987, 'Crooked Smile', '
Even though I—
On my way, on my way, on my way down
On my way, on my way, on my way down
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round
They tell me I should fix my grill ‘cause I got money now
I ain''t gon'' sit around and front like I ain''t thought about it
A perfect smile is more appealing, but it''s funny how
My shit is crooked—look at how far I done got without it!
I keep my twisted grill, just to show the kids it''s real
We ain''t picture perfect, but we worth the picture still
I got smart, I got rich and I got bitches still
And they all look like my eyebrows: thick as hell
Love yourself, girl, or nobody will
Though you a woman I don''t know how you deal
With all the pressure to look impressive and go out in heels
I feel for you, killin'' yourself to find a man that''ll kill for you
You wake up, put makeup on
Stare in the mirror, but it''s clear that you can’t face what’s wrong
No need to fix what God already put his paintbrush on
Your roommate yelling, "Why you gotta take so long?!"
What it''s like to have a crooked smile
You might also like
Even though I—
On my way, on my way, on my way down
On my way, on my way, on my way down (This crooked smile)
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round (Yeah)

To all the women with the flaws, know it''s hard, my darling
You wonder why you''re lonely and your man''s not calling
You keep falling victim ‘cause you''re insecure
And when I tell you that you''re beautiful you can''t be sure
‘Cause he don''t seem to want you back and it''s got you askin''
So all you see is what you lackin'', not what you packin''
Take it from a man that loves what you got
And baby girl, you a star, don''t let ''em tell you you''re not
Now is it real? Eyebrows, fingernails, hair
Is it real? If it''s not, girl, you don''t care
‘Cause what''s real is somethin'' that the eyes can''t see
That the hands can’t touch, that them broads can’t be
And that’s you, never let ''em see your frown
And if you need a friend to pick you up, I’ll be around
And we can ride with the windows down, the music loud
I can tell you ain’t laughed in a while
But I wanna see that crooked smile
Even though I—
On my way, on my way, on my way down
On my way, on my way, on my way down
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round

We got the crooked smile, we can style on ''em
Back round, crooked smile, we can style on ''em
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round
We don''t look nothin'' like the people on the screen
You know, the movie stars, picture perfect beauty queens
But we got dreams and we got the right to chase ‘em
Look at the nation
That’s a crooked smile braces couldn’t even straighten
Seem like half the race is either on probation or in jail
Wonder why we inhale, ‘cause we in Hell already
I ask: If my skin pale, would I then sell like Eminem or Adele?
But one more time for the ''Ville
And fuck all of that beef shit, nigga, let’s make a mil
Hey officer man, we don’t want nobody gettin'' killed
Just open up that cell, let my brother outta jail
I got money for the bail now, and well now
If you askin'' will I tell now—ayy, hell nah
I ain’t snitchin'' ''cause, man, they get them niggas stitches now
If you was around then you wouldn’t need a witness now
How you like this crooked smile?
Even though I—
On my way, on my way, on my way down
On my way, on my way, on my way down (That crooked smile)
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round

We got the crooked smile, we can style on ''em
Back round, crooked smile, we can style on ''em
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round


La la la, la la la, la-la—la—la
La la la, la la la, la-la—la—la
La la la, la la la, la-la—la—la
La la la, la la la, la-la—la—la
On my way, on my way, on my way down
On my way, on my way, on my way down
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round
Back round
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round
Back round
You were the one that was tryna keep me way down
But like the sun, know you know I find my way back round
Round
', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4248426, 'MIDDLE CHILD', '
You good, T-Minus?

Niggas been countin'' me out
I’m countin'' my bullets, I''m loadin’ my clips
I''m writin'' down names, I''m makin'' a list
I''m checkin'' it twice and I''m gettin’ ’em hit
The real ones been dyin'', the fake ones is lit
The game is off balance, I’m back on my shit
The Bentley is dirty, my sneakers is dirty
But that''s how I like it, you all on my dick

I''m all in my bag, this hard as it get
I do not snort powder, I might take a sip
I might hit the blunt, but I''m liable to trip
I ain’t poppin'' no pill, but you do as you wish
I roll with some fiends, I love ''em to death
I got a few mil'' but not all of them rich
What good is the bread if my niggas is broke?
What good is first class if my niggas can''t sit?
That''s my next mission, that''s why I can''t quit
Just like LeBron, get my niggas more chips
Just put the Rollie right back on my wrist
This watch came from Drizzy, he gave me a gift
Back when the rap game was prayin'' I''d diss
They act like two legends cannot coexist
But I''d never beef with a nigga for nothin''
If I smoke a rapper, it''s gon'' be legit
It won''t be for clout, it won''t be for fame
It won''t be ''cause my shit ain''t sellin'' the same
It won''t be to sell you my latest lil'' sneakers
It won''t be ''cause some nigga slid in my lane
Everything grows, it''s destined to change
I love you lil'' niggas, I''m glad that you came
I hope that you scrape every dollar you can
I hope you know money won''t erase the pain
To the OGs, I''m thankin'' you now
Was watchin'' you when you was pavin'' the ground
I copied your cadence, I mirrored your style
I studied the greats, I''m the greatest right now
Fuck if you feel me, you ain''t got a choice
I ain''t do no promo, still made all that noise
This year gon'' be different, I set my intentions
I promise to slap all that hate out your voice
You might also like
Niggas been countin'' me out
I''m countin'' my bullets, I''m loadin'' my clips
I''m writin'' down names, I''m makin'' a list
I''m checkin'' it twice and I''m gettin'' ''em hit
The real ones been dyin'', the fake ones is lit
The game is off balance, I''m back on my shit
The Bentley is dirty, my sneakers is dirty
But that''s how I like it, you all on my dick

I just poured somethin'' in my cup
I''ve been wantin'' somethin'' I can feel
Promise I am never lettin'' up
Money in your palm don''t make you real
Foot is on they neck, I got ''em stuck
I''ma give ''em somethin'' they can feel
If it ain''t ''bout the squad, don''t give a fuck
Pistol in your hand don''t make you real

I''m dead in the middle of two generations
I''m little bro and big bro all at once
Just left the lab with young 21 Savage
I''m ''bout to go and meet Jigga for lunch
Had a long talk with the young nigga Kodak
Reminded me of young niggas from ''Ville
Straight out the projects, no fakin'', just honest
I wish that he had more guidance, for real
Too many niggas in cycle of jail
Spending they birthdays inside of a cell
We coming from a long bloodline of trauma
We raised by our mamas, Lord, we gotta heal
We hurting our sisters, the babies as well
We killing our brothers, they poisoned the well
Distorted self-image, we set up to fail
I''ma make sure that the real gon'' prevail, nigga
I just poured somethin'' in my cup
I''ve been wantin'' somethin'' I can feel
Promise I am never lettin'' up
Money in your palm don''t make you real
Foot is on they neck, I got ''em stuck
I''ma give ''em somethin'' they can feel
If it ain''t ''bout the squad, don''t give a fuck
Pistol in your hand don''t make you real

Money in your palm don''t make you real
Pistol in your hand don''t make you real
Money in your palm don''t make you real', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (164574, 'She Knows', '
She knows
She knows, ayy
Bad things happen to the people you love
And you find yourself praying up to heaven above
But honestly, I''ve never had much sympathy
''Cause those bad things, I always saw them coming for me
I''m gonna run, run away (Oh, I), run run away, run away (Oh, I-I-I)
Run away and never come back (Well, alright)
Run run away, run run away (Oh, I), run away (Oh, I-I-I)
Show ''em that your color is black (Well, alright)

Damned if I do, damned if I don''t
You know I got a girl back home
You got a man, what you want, what you want?
What these bitches want from a nigga?
On some DMX shit, huh
I know them other niggas love tricking
On some BMX shit, but not me
Now I''m sure you done heard about me
A black star, Mos Def, Kweli
Good so them bad hoes try me, they try me
This is Martin Luther King in the club, getting dubs
With a bad bitch in his ear, sayin'' that she down for whatever
In the back of his mind is Coretta
You might also like
And she knows, she knows
And I know she knows, and I know she knows
And deep down, she knows, she knows
And I know she knows, and I know she knows

Well, alright, oh, I, oh, I-I-I
I can''t be what you want from me, well, alright
Oh, I, oh, I-I-I
I can''t be what you want from me, well, alright

Damned if I do, shit, damned if I don''t
I''m passing up on bad hoes
Trying to be the man that she want, what she want?
What she—What she want from a nigga?
To put a ring on it
Got a bitch on my dick right now
And she just want to sing on it
Got me up so high, try and get a piece of that apple pie
I be up so high, try and get a piece of that apple pie
Dancehall vibes with my pants on fire
''Cause I told her I was sleep
''Cause I creep with this pretty young thing that I chose
She could be doing the same thing, I suppose
And she knows, she knows
And I know she knows, and I know she knows
And deep down, she knows, she knows
And I know she knows, and I know she knows

Well, alright, oh, I, oh, I-I-I
I can''t be what you want from me, well, alright
Oh, I, oh, I-I-I
I can''t be what you want from me, well, alright

Niggas say, "Turn up," hoes say, "Turn up"
Only bad thing ''bout a star is they burn up
Niggas say, "Turn up," hoes say, "Turn up"
Only bad thing ''bout a star is they burn up
Rest in peace to Aaliyah
Rest in peace to Left Eye (Left Eye)
Michael Jackson, I''ll see ya
Just as soon as I die (I die)

Got me up so high, try and get a piece of that apple pie, uh
I be up so high, try and get a piece of that apple pie
Got me up so high, try and get a piece of that apple pie, uh
I be up so high, try and get a piece of that apple pie
Well, alright, oh, I, oh, I-I-I
I can''t be what you want from me, well, alright
Oh, I, oh, I-I-I
I can''t be what you want from me, well, alright

Run away, run away— Back
Run away, run away— Back
Run away, run away— Back
Run away, run away— Back', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2516, 'Pyro', '
Single book of matches, gonna burn what''s standing in the way
Roaring down the mountain, now they''re calling on the fire brigade
Bury all the pictures and tell the kids that I''m okay
If''n I''m forgotten, they''ll remember me for today

I, I won''t ever be your cornerstone
I, I

All the black inside me is slowly seeping from the bone
Everything I cherish is slowly dying or it''s gone
Little shaken babies and drunkards seem to all agree
Once the show gets started, it''s bound to be a sight to see

I, I won''t ever be your cornerstone
I, I don''t wanna be here holdin'' on
I, I won''t ever be your cornerstone
I, I

Watch her roll
Can you feel it?
Watch her roll
Can you feel it?
Watch her roll
Can you feel it?
Watch her roll
Can you feel it?
See Kings of Leon LiveGet tickets as low as $26You might also like
I, I won''t ever be your cornerstone
I, I don''t wanna be here holdin'' on (Watch her roll, can you feel it?)
I, I won''t ever be your cornerstone (Watch her roll)
I, I', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (599451, 'Love Yourz', '
Hm, love yours
Hm, love yours
No such thing
No such thing as a life that''s better than yours
No such thing as a life that''s better than yours (Love yours)
No such thing as a life that''s better than yours
No such thing, no such thing

Heart beatin'' fast, let a nigga know that he alive (''Live, live, live)
Fake niggas mad, snakes
Snakes in the grass let a nigga know that he arrived (''Rived, rived, rived)
Don''t be sleepin'' on your level
''Cause it''s beauty in the struggle, nigga (Beauty, beauty)
Goes for all y''all
It''s beauty in the struggle, nigga (Beauty, beauty)
Let me explain, yeah

It''s beauty in the struggle, ugliness in the success
Hear my words and listen to my signal of distress
I grew up in the city and know sometimes we had less
Compared to some my niggas down the block, man, we were blessed
And life can''t be no fairy tale, no once upon a time
But I be goddamned if a nigga don''t be tryin''
So tell me, Momma please, why you be drinking all the time?
Does all the pain he brought you still linger in your mind?
''Cause pain still lingers on mine
On the road to riches, listen, this is what you''ll find
The good news is, nigga, you came a long way
The bad news is, nigga, you went the wrong way
Think being broke was better
You might also like
No such thing as a life that''s better than yours (Hah)
No such thing as a life that''s better than yours (Think being broke was better)
No such thing as a life that''s better than yours
(Think being broke was better, yeah) No such thing, no such thing
For what''s money without happiness?
Or hard times without the people you love?
Though I''m not sure what''s ''bout to happen next
I ask for strength from the Lord (Man) up above
''Cause I been strong so far, but I can feel my grip loosenin''
Quick, do somethin'' before you lose it for good, get it back and use it for good
And touch the people how you did like before
I''m tired of livin'' with demons ''cause they always invitin'' more
Think being broke was better, now I don''t mean that phrase with no disrespect
To all my niggas out there livin'' in debt
Cashin'' minimal checks, turn on the TV, see a nigga Rolex
And fantasize about a life with no stress
I mean this shit sincerely, and as a nigga who was once in your shoes
Livin'' with nothin'' to lose, I hope one day you hear me
Always gon'' be a bigger house somewhere, but nigga, feel me
Long as the people in that motherfucker love you dearly
Always gon'' be a whip that''s better than the one you got
Always gon'' be some clothes that''s fresher than the ones you rock
Always gon'' be a bitch that''s badder out there on the tours
But you ain''t never gon'' be happy ''til you love yours
No such thing as a life that''s better than yours (Love yours)
No such thing as a life that''s better than yours (Love yours)
No such thing as a life that''s better than yours (Love yours)
No such thing, no such thing
Heart beatin'' fast, let a nigga know that he alive (''Live, live, live)
Fake niggas mad, snakes
Snakes in the grass let a nigga know that he arrived (''Rived, rived, rived)', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2924188, 'Deja Vu', '
Huh, ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her

Sometimes you worry ''bout the things he can provide for ya
Whenever you around I seem to come alive for ya
I finally recognize the feelings that''s inside for ya
Although I know your man and trust me he would die for ya
These quiet thoughts of you been going on for years now
I saw you in the party, soft lips, soft-spoken
I came to talk to you but homie interfered now
He introduced you as his girl and I was heartbroken
Some people talk about that love at first sight shit
To keep it real I don''t know whether I believe it''s true
But if it is then tell me if I''m wrong or right if
I fell in love with you before I ever even knew
I catch your eye then look away as if it never happened
At times I feel as though I''m caught up in a strange dream
If eyes could talk then mines would tell ya that I''m feeling you (Feeling you)
Sometimes I swear your eyes be telling me the same thing
You might also like
She fuck with small-town niggas, I got bigger dreams (Bigger dream), hm
She fuck with small-town niggas, I got bigger dream (Bigger dreams), hm, listen
She fuck with small-town niggas, I got bigger dreams (Bigger dream)
She fuck with small-town niggas, I got bigger dream, bigger dreams, listen

Club jumping, don''t stop, off top
But you know we only go ''til 2 o''clock
Put yo'' motherfuckin'' hood up, it''s the weekend
Drop that, back that ass up and bitches get to freaking
Last call at the bar, ladies get a drink, nigga get some balls
Ain''t no telling you gon'' see that bitch tomorrow
Stop holding up the wall waiting for the right song
Better holla ''cause you know they ''bout to cut the lights on

And put my number in it—
Huh, I''m staring at you from afar
I''m wondering ''bout you, like where you from and who you are
''Cause you a star, no, not the type that snort the white lines
I mean the type that light the night time
I heard you got a man, but who in their right mind letting you out the house alone?
Tell me is your house a home?
Why you in the club looking like you out to zone?
Now be discreet and pull out your phone and put my number in it
Text a nigga when your man leave you unattended
On a scale from 1 to 10 that girl''s a hundred and I want it
No question, I know destiny well
And though I sin the Lord blessing me still
Every saint got a past, every sinner got a future
Every loser gotta win and every winner gotta lose someday
They say it''s just a matter of time
And if I had my way then you would be mine, huh
She fuck with small-town niggas, I got bigger dreams (Bigger dream), yeah
She fuck with small-town niggas, I got bigger dream (Bigger dreams), hm, listen
She fuck with small-town niggas, I got bigger dreams (Bigger dream)
She fuck with small-town niggas, I got bigger dream, bigger dreams

Club jumping, don''t stop, off top
But you know we only go ''til 2 o''clock
Put yo'' motherfuckin'' hood up, it''s the weekend
Drop that, back that ass up and bitches get to freaking
Last call at the bar, ladies get a drink, nigga get some balls
Ain''t no telling you gon'' see that bitch tomorrow
Stop holding up the wall waiting for the right song
Better holla ''cause you know they ''bout to cut the lights on

I know you were made for me but
Darling don''t you wait for me ''cause
I can see the promised land but
I can''t do no promising and
I know you were made for me but
Darling don''t you wait for me ''cause
I can see the promised land but
I can''t do no promising
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her
Ayy, put a finger in the sky if you want it, nigga
Ayy, put two fingers in the sky if you want her', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (599424, 'G.O.M.D.', '
Hollywood Cole, go
Ayy, Hollywood, ayy, Hollywood Cole, go
My nigga done went Hollywood

You wanna know just where I''m at?
Well, let me tell you ''bout it
I put my city on the map
But let me tell you ''bout it
They tryna say I can''t come back
Ayy, let me tell you ''bout it
Man, fuck them niggas, I come back
Ayy, let me tell you ''bout it
I wanna tell you ''bout it:
Heads up, e''rybody run
Cole outside and he say he got a gun
Niggas like, "Man, that''s what e''rybody said" (Uh-huh)
Go and pop the trunk and now e''rybody dead
E''rybody scared of the nigga, aware that the nigga is better (Better)
All my bitches the pick of the litter (Yeah,) never bitter
Niggas is fake, they anime
Me, I never hate, get cake like Anna Mae, woah
Eat the cake bitch, eat the damn cake (Cake), uh
Fuck good, nigga, we demand great (Great)
Order Domino then she take off all her cloth''
Nigga, you know how it go, make the pizza man wait (Hol'' up! Hol'' up! Hol'' up!)
The best-kept secret
Even Hov tried to keep it then I leaked the damn tape, uh
Rest in peace any nigga want beef
Secret service couldn''t keep the man safe
You might also like
I said, to the window, to the wall (To the wall)
My nigga ride when I call (I call)
Got bitches all on my mind (My mind)
Fuck nigga blockin'' my shine (My shine)
I know the reason you feel a lil'' way
I know just who you wan'' be
So every day I thank the Man upstairs
That I ain''t you and you ain''t me

Get off my dick
Woah (Get the fuck off my dick)
Get off my dick
Woah (Get the fuck off my dick, nigga)
Get off my dick (Bitch)
Woah (Get the fuck off my dick)
Get off my dick
Woah

Man, fuck them niggas, I come home
And I don''t tell nobody
They gettin'' temporary dough
And I don''t tell nobody
Lord, will you tell me if I changed?
I won''t tell nobody
I wanna go back to Jermaine
And I won''t tell nobody
This is the part that the thugs skip!

Young nigga never had love, you know
Foot massage, back rub shit
Blowin'' bubbles in the bathtub shit
That is until I met you
Together we done watched years go by
Seen a river of your tears go by
Got me thinkin'' ''bout some kids, still I
Tell them hoes come through, the break-up
Get to know somebody and you really learn
A lot about ''em, won''t be long ''fore you start to doubt ''em
Tell yourself you''re better off without ''em
Then in time, you will find can''t walk without ''em
Can''t talk without ''em, can''t breathe without ''em
Came here together, you can''t leave without ''em
So you walk back in, make a scene about ''em
On your Amerie, it''s just 1 Thing about ''em, it''s called love
Niggas don''t sing about it no more
Don''t nobody sing about it no more
(No more), no more
It''s called love
Niggas don''t sing about it no more
Don''t nobody sing about it no more
(Nigga, don''t sing about this shit, nigga)
But e''ry nigga in the club singin''
To the window, to the wall (To the wall)
My nigga ride when I call (I call)
Got bitches all on my mind (My mind)
Fuck nigga blockin'' my shine (My shine)
I know the reason you feel a lil'' way
I know just who you wan'' be
So every day I thank the Man upstairs
That I ain''t you and you ain''t me

Get off my dick
But e''ry nigga in the club singin''
Singin'' this song, yeah
Got all the bitches in the club singin''
Singin'' this song, yeah
And all the mamas let their kids sing it
Sing this song, yeah
The baby mamas and the mistresses
This song, yeah, song, yeah
Song, yeah, song-song, yeah

The make up
This shit is retarded
Goddamn
Why every rich Black nigga gotta be famous?
Why every broke Black nigga gotta be brainless?
Uh, that''s a stereotype
Driven by some people up in Aerial Heights, here''s a scenario:
Young Cole pockets is fat like Lil Terrio
Dreamville, give us a year, we''ll be on every show
Yeah, fuck nigga, I''m very sure
Heh
Fuck the rest, I''m the best nigga out
When I''m back home, I''m the best in the South
When I''m in L.A., I''m the best in the West
You contest? You can test, I''ma stretch niggas out
Ooh, I''ma stretch niggas out
That go for all y''all if I left niggas out
This shit for e''rybody on my testicle
Please make sure you put the rest in your mouth, ho
', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (599442, 'Apparently', '
Oh, right, oh
Oh, why, na-da-da-da, da, ah

I keep my head high, uh
I got my wings to carry me
I don''t know freedom, uh
I want my dreams to rescue me
I keep my faith strong, uh
I ask the Lord to follow me
I''ve been unfaithful, uh
I don''t know why you call on me
This is my canvas (Yeah, my canvas)
I''ma paint it how I want it baby, oh I (Paint it)
This is my canvas
I''ma paint it, paint it, paint it, how I want it nigga
Fuck you ''cause there, there is no right or wrong, only a song
I like to write alone, be in my zone
Think back to Forest Hills, no perfect home
But the only thing like home I''ve ever known
Until they snatched it from my mama
And foreclosed her on the loan
I''m so sorry that I left you there to deal with that alone
I was up in New York City chasing panties, getting dome
Had no clue what you was going through
How could you be so strong?
And how could I be so selfish? I know I can be so selfish
I could tell by how I treat you with my girl, damn, she so selfless
But she put up with my ways because she loves me like you do
And though it don''t always show, I love her just like I love you, and
I need to treat you better
Wish you could live forever
So we could spend more time together, uh
I love you mama, uh
You might also like
I keep my head high, uh
I got my wings to carry me
I don''t know freedom, uh
I want my dreams to rescue me
I keep my faith strong, uh
I ask the Lord to follow me
I''ve been unfaithful, uh
I don''t know why you call on me

E-e-eee, e-e, apparently (Uh)
You believe in me, huh, you believe in me
E-e-eee, e-e, apparently
You believe in me, and I thank you for it, oh, I

Another day, another rhyme, ho
Another day, another time zone
Today, I woke up feeling horny so it''s only right, I got two bitches playing on my trombone
Keep up, never sure where the words would take me
Niggas eat ''em up and regurgitate me
Shit trump tight never slurred it lazy
Give a virgin the urge to rape me, nigga please
Best friends really make great for enemies
My watch came, niggas can''t wait for one of these
I see you, nigga, this ain''t no Rolex, it''s an AP, nigga
I''m hot, dog, catch up to me, nigga— huh, couldn''t resist
Aim for the stars and I shouldn''t have missed
But I was riding on fumes, so I stopped by the moon
Now I''m sitting on the hood of this bitch
Like, "Thanks for the view," waiting on thanks from a few
''Cause without me you wouldn''t exist
You know that shit, gave you the blueprint, don''t forget
Cole is your phone on zero percent
Going off, now niggas showing off
Niggas swear they hard, but they flowing soft
I''m taking off like "boing!" on a big ass Boeing, and getting head like a coin toss, too easy
I keep my head high, uh
I got my wings to carry me
I don''t know freedom, uh
I want my dreams to rescue me
I keep my faith strong, uh
I ask the Lord to follow me
I''ve been unfaithful, uh
I don''t know why you call on me

E-e-eee, e-e, apparently (Huh)
You believe in me, you believe in me, huh
E-e-eee, e-e, apparently
You believe in me, and I thank you for it, oh I', 69);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (673932, 'Greek Tragedy', '
We''re smashing mics in karaoke bars
You''re running late with half your make-up on
This method acting might pay our bills
But soon enough there''ll be a different role to fill

I love this feeling, but I hate this part
I wanted this to work so much, I drew up our plans on a chart
Cars are flipping; I''m in hot pursuit
My character''s strong, but my head is loose

She hits like ecstasy
Comes up and bangs the sense out of me

The tarot cards say it''s not so bad
And the blades rotate; there''s just no landing pad
And better have said it but, darling, you''re the best
I''m just tired of falling up the Penrose steps

I hate this feeling, but I love this part
She really wants to make it work and I clearly want to let it start
We''ll build a water slide as soon as I get home…
You might also like
Oh, and she hits like ecstasy
Comes up and bangs the sense out of me
It''s wrong, but surely worse to leave
She hits like ecstasy

So free up the cheaper seats
Here comes a Greek Tragedy', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (584765, 'Kill The Director', '
I''ve met someone that makes me feel seasick
Oh, what a skill to have, oh, what a skill
To have so many skills that make her distinctive
But they''re not mine to have, no, they''re not mine

Whenever she looks, I read the nearest paper
Though I don''t care about the soaps;
No, I don''t care about the soaps...
Though I''m acting like I''m in an EastEnders episode!

(Ooh, ooh, ooh, ooh)
If this is a rom-com, kill the director!
(Ooh, ooh, ooh, ooh)
If this is a rom-com, kill the director, please!

Carrots help us see much better in the dark
Don''t talk to girls; they''ll break your heart
And this is my head and this is my spout
But they work together; they can''t figure anything out

So with the angst of a teenage band
Here''s another song about a gender I''ll never understand
Here''s another song about a gender I''ll never understand
You might also like
(Ooh, ooh, ooh, ooh)
If this is a rom-com, kill the director!
(Ooh, ooh, ooh, ooh)
If this is a rom-com, kill the director!
(Ooh, ooh, ooh, ooh)
If this is a rom-com, kill the director, please!

This is no Bridget Jones
This is no Bridget, Bridget (Kill the director!)
This is no Bridget Jones
This is no Bridget, Bridget (Kill the director!)
This is no (Kill!) Bridget Jones (Kill!)
This is no Bridget, Bridget (Kill the director!)
This is no (Kill!) Bridget Jones (Kill!)
This is no Bridget, Bridget (Well, double kill the director)
(Ooh, ooh, ooh, ooh) This is no Bridget Jones
This is no Bridget, Bridget (Kill the director!)
(Ooh, ooh, ooh, ooh) This is no Bridget Jones
This is no Bridget, Bridget (Kill the director!)
(Ooh, ooh, ooh, ooh) This is no Bridget Jones
This is no Bridget, Bridget Jones...', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3307578, 'Turn', '
I jump from thought to thought like a flea jumps to a light
You could give an aspirin the headache of its life
Maybe it''s the crazy that I''d miss
Watering plastic plants in the hope that they''ll grow
Seeing a message flash and then smashing up my phone
Maybe it''s the crazy that I''d miss
It won''t get better than this

I like the way your brain works, I like the way you try
To run with the wolf pack when your legs are tied
I like the way you turn me inside and out
I like the way you turn
(Woo, ooh-ooh, ooh-ooh
Ooh-ooh, ooh-ooh, ooh-ooh, ooh-ooh)
I like the way your brain works
(Woo, ooh-ooh, ooh-ooh
Ooh-ooh, ooh-ooh, ooh-ooh, ooh-ooh)
I like the way your brain works

I want to get college girl drunk tonight
No morning fears, no mountains to climb
They say the best memories are the ones that we forget
Like listening to Drake at your best friend''s swimming pool
Floating anti-clockwise in a red mushroom
Maybe it''s the crazy that I''d miss
It won''t get better than this
You might also like
I like the way your brain works, I like the way you try
To run with the wolf pack when your legs are tied
I like the way you turn me inside and out
I like the way you turn
(Woo, ooh-ooh, ooh-ooh
Ooh-ooh, ooh-ooh, ooh-ooh, ooh-ooh)
I like the way your brain works
(Woo, ooh-ooh, ooh-ooh
Ooh-ooh, ooh-ooh, ooh-ooh, ooh-ooh)
I like the way your brain works

Baby, it''s the crazy I like
I think I saw the world turn in your eyes
Baby, it''s the crazy I like (ah-ah, ah)
And maybe it''s the bullshit I''d miss
Screaming at the moon in black lipstick
Maybe it''s the bullshit I''d miss
It won''t get better than this', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3307441, 'Lemon to a Knife Fight', '
Hero to zero, I pick up the bill
The brake lights cast a red light
And the road twists ''round the hill
Lipstick on the backseat, saliva on the dash
I''ve clawed my way out of here before
But I keep on coming back

I push and you tend to shove
I give in and you don''t give up
I''m not getting out of here this time
I brought a lemon to a knife fight
I kick and you like to punch
I''m unhinged and you''re undone
I''m not getting out of here alive
I brought a lemon to a knife fight
I brought a lemon to a knife fight

Hero to zero at 60mph
My eyes are getting wider with
Every word you say
Intoxicated, higher than the ISS
I''ve clawed my way out of here before
But tonight, I''m turning left
You might also like
I push and you tend to shove
I give in and you don''t give up
I''m not getting out of here this time
I brought a lemon to a knife fight
I kick and you like to punch
I''m unhinged and you''re undone
I''m not getting out of here alive
I brought a lemon to a knife fight
I brought a lemon to a knife fight


I push and you tend to shove
I give in and you don''t give up
I''m not getting out of here this time
I brought a lemon to a knife fight
I kick and you like to punch
I''m unhinged and you''re undone
I''m not getting out of here alive
I brought a lemon to a knife fight
I brought a lemon to a knife fight
I brought a lemon to a knife fight', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (584674, 'Let’s Dance to Joy Division', '
I''m back in Liverpool and everything seems the same
But I worked something out last night
That changed this little boy''s brain
A small piece of advice that took twenty-two years in the make
And I will break it for you now, please learn from my mistakes
Please learn from my mistakes

Let''s dance to Joy Division and celebrate the irony
Everything is going wrong, but we''re so happy
Let''s dance to Joy Division and raise our glass to the ceiling
''Cause this could all go so wrong, but we''re so happy
Yeah, we''re so happy

So if you''re ever feeling down, grab your purse and take a taxi
To the darker side of town, that''s where we''ll be
And we will wait for you and lead you through the dance floor
Up to the DJ booth, you know what to ask for
You know what to ask for

Go ask for Joy Division and celebrate the irony
Everything is going wrong, but we''re so happy
Let''s dance to Joy Division and raise our glass to the ceiling
''Cause this could all go so wrong, but we''re so happy
Yeah, we''re so happy
You might also like
Let the love tear us apart, I''ve found the cure for a broken heart
Let it tear us apart
Let the love tear us apart, I''ve found the cure for a broken heart
Let it tear us apart (Let it tear us apart)
So let the love tear us apart, I''ve found the cure for a broken heart
Let it tear us apart (Let it tear us apart)
So let the love tear us apart, I''ve found the cure for a broken heart
Let it tear us apart, let it tear us apart
Let it tear us apart

Let''s dance to Joy Division and celebrate the irony
Everything is going wrong, but we''re so happy
Let''s dance to Joy Division and raise our glass to the ceiling
''Cause this could all go so wrong, but we''re so happy
Yeah, we''re so happy

So happy, yeah, we''re so happy
So happy, yeah, we''re so happy', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (232934, 'Tokyo (Vampires & Wolves)', '
We''re self-imploding
Under the weight of your advice
I wear a suitcase
Under each one of my eyes

Finally, I know now what it takes
It takes money and aeroplanes

If you love me, let me go back to that bar in Tokyo
Where the demons from my past leave me in peace
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''ll be animated every night
The grass''ll be greener on the other side
And the vampires and wolves won''t sink their teeth
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''m sick of dancing with the beast

Astrophysics
You''ll never be my closest friend
I find no comfort
In what my mind can''t comprehend
You might also like
Finally, I work out what it takes
It takes money and aeroplanes

If you love me, let me go back to that bar in Tokyo
Where the demons from my past leave me in peace
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''ll be animated every night
The grass''ll be greener on the other side
And the vampires and wolves won''t sink their teeth
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''m sick of dancing with the beast

No matter how much it needs me
Go and follow someone else''s lead
(Ah, ah, ah, ah, ah)

If you love me, let me go back to that bar in Tokyo
Where the demons from my past leave me in peace
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''ll be animated every night
The grass''ll be greener on the other side
And the vampires and wolves won''t sink their teeth
(Ah, ah-ah, ah-ah, ah, ah-ah, ah-ah-ah)
I''m sick of dancing with the beast
Ah-ah, ah-ah', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (740583, 'Pink Lemonade', '
Another magical Friday night
I think I''ll sit this one at home
Unusual for me, I know
But please go ahead
I don''t wanna be
The blinking rabbit to your wildebeest
The jaded lover to his sex machine
You should go ahead

And please give those recycled house tracks my warmest regards
And lock the door if you''re home before the sun, oh

Pink, pink lemonade
And does he kiss you ''til your lips explode?
Pink, pink lemonade
And does he take you places I can''t afford to go?
Pink lemonade, you know I
Know behind that sugar there''s only lies
Lies, lies, lies

Another magical Friday night
I wonder what state you''re in
In the powder or in the gin?
This one''s ending bad
You might also like
So please give those recycled house tracks my warmest regards
And, if you bring him home, can you use the spare bedroom? Oh

Pink, pink lemonade
And does he kiss you ''til your lips explode?
Pink, pink lemonade
And does he take you places I can''t afford to go?
Pink lemonade, you know I
Know behind that sugar there''s only lies
Lies, lies, lies

And that''s alright and that''s okay
If I can write this song I can play that game
And it''s all good with me if I know it''s all good with you
''Cause getting lost in the middle of the in-between
Is only half as frightening as it first may seem
So do whatever you must and I''ll do whatever it must take

Pink lemonade
Pink lemonade
Pink lemonade
Pink lemonade', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3307577, 'Cheetah Tongue', '
I cut off my head and my cheetah tongue
I can''t think straight and my mouth is numb
Don''t shut your eyes till we fade to black
Cause maybe this time the good stuff could last

You won me over
My orange cola got black flamingos crying for ya
Well I''ll see you later
I could be your faker
My hands shake like jellyfish when you''re near

I cut off my head and my cheetah tongue
I can''t think straight and my mouth is numb
Don''t shut your eyes till we fade to black
Cause maybe this time the good stuff could last

You''re a hammer, sweet firecracker
Stumbling through Chinatown
Liar, liar, my house is on fire
Somewhere between Chinatown and here

I cut off my head and my cheetah tongue
I can''t think straight and my mouth is numb
Don''t shut your eyes till we fade to black
Cause maybe this time the good stuff could last
You might also like
Come a little closer, it''s alright
I''ll be your character with flaws tonight
Come a little closer, my firefly
You''re not the only one who doesn''t want to be alone tonight

I cut off my head and my cheetah tongue
I can''t think straight and my mouth is numb
Don''t shut your eyes till we fade to black
Cause maybe this time the good stuff could last', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (740560, 'Be Your Shadow', '
Tonight we''ll both go M.I.A
In different towns but in similar ways
I''ve tried my best, best to forget
But I can''t, I can''t, I can''t
Tonight we''ll scratch each other''s face
If it''s in the moment no one complains
I''ve tried my best to move along
But I can''t, I can''t, I can''t

Kiss me with your fist; it''s alright
Wrap your hands around my throat; I won''t mind
I''m permanent, now I won''t go
I just want to be your shadow

Just one more up-tempo tune
The suits don''t care if their feet aren''t blue
Are you aware of what''s going on
In my heart, my heart, my heart?
Those machine gun eyes
Have fired crystals into me
You''re such a violent high
And I''m such a loose cannon, can''t you see?
You might also like
Kiss me with your fist; it''s alright
Wrap your hands around my throat; I won''t mind
I''m permanent, now I won''t go
I just wanna be your shadow
Hire a bus, drive it over my rib cage
Snap my bank cards and throw them at my face
I''m permanent, now I won''t go
I just want to be your shadow

And I just want to be
The sum of your broken parts
And I just want to be
Your creature of the dark (I just want, I just want)
And I just want to be (I just want, I just want)
The sum of your broken parts (I just want, I just want)
And I just want to be (I just want, I just want)
Your creature of, your creature of the dark
I just want to be your shadow...

Kiss me with your fist; it''s alright
Wrap your hands around my throat; I won''t mind
I''m permanent, now I won''t go
I just want to be your shadow
I just want to be your shadow
I just want to be your shadow', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (401718, 'Moving To New York', '
I''ve just had the craziest week
Like a party bag of lies, booze, and then deceit
And I don''t know why I want to voice this out loud
It''s therapeutic somehow

So I''m moving to New York, ''cause I''ve got problems with my sleep
And we''re not the same and I will wear that on my sleeve
So I''m moving to New York, ''cause I''ve got issues with my sleep
Looks like Christmas came early, Christmas came early for me

I put one foot forward and ended up thirty yards back
And am I losing touch or am I just completely off the track?
And I don''t know why I want to voice this out loud
It''s therapeutic somehow

So I''m moving to New York, ''cause I''ve got problems with my sleep
And we''re not the same and I will wear that on my sleeve
So I''m moving to New York, ''cause I''ve got issues with my sleep
Looks like Christmas came early, Christmas came early for me

You might also like
So I''m moving to New York, ''cause I''ve got problems with my sleep
And we''re not the same and I will wear that on my sleeve
So I''m moving to New York, ''cause I''ve got issues with my sleep
Looks ', 75841);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (108833, 'Sex on Fire', '
Lay where you''re layin''
Don''t make a sound
I know they''re watchin''
They''re watchin''
All the commotion
The kiddie-like play
It has people talkin''
Talkin''

You
Your sex is on fire

The dark of the alley
The breakin'' of day
Head while I''m drivin''
I''m drivin''
Soft lips are open
Them knuckles are pale
Feels like you''re dyin''
You''re dyin''

You
Your sex is on fire
Consumed
With what''s to transpire
See Kings of Leon LiveGet tickets as low as $26You might also like
Hot as a fever
Rattlin'' bones
I could just taste it
Taste it
If it''s not forever
If it''s just tonight
Oh, we''re still the greatest
The greatest, the greatest

You
Your sex is on fire
You
Your sex is on fire, ah
Consumed
With what''s to transpire
And you
Your sex is on fire
Consume
With what''s to transpire', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (51003, 'Use Somebody', '
I''ve been roamin'' around, always lookin'' down at all I see
Painted faces fill the places I can''t reach
You know that I could use somebody
You know that I could use somebody
Someone like you and all you know and how you speak
Countless lovers under cover of the street
You know that I could use somebody
You know that I could use somebody

Someone like you

Off in the night, while you live it up, I''m off to sleep
Wagin'' wars to shape the poet and the beat
I hope it''s gonna make you notice
I hope it''s gonna make you notice

Someone like me
Someone like me
Someone like me
Somebody

Don''t let it out
Don''t let it out
Don''t let it out
Don''t let it out
Don''t let it out
Don''t let it out
Don''t let it out
See Kings of Leon LiveGet tickets as low as $26You might also like

Someone like you
Somebody
Someone like you
Somebody
Someone like you
Somebody

I''ve been roamin'' around, always lookin'' down at all I see', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2863016, 'WALLS', '
I can''t get there on my own
You can''t leave me here alone
I’m just trying to do what’s right
Oh a man ain''t a man ''less he''s fought the fight
I could never point you out
Waste of space in a faceless crowd
Tell me what I have to say
If you know what’s right, then you’ll walk away

When the walls come down
When the walls come down
When the walls come down
When the walls come down

One by one I''ve seen em fall
Some just don’t show up at all
I’m just here to fight the fire
Oh a man ain’t a man ''less he has desire

And the walls come down
And the walls come down
When the walls come down
When the walls come down
See Kings of Leon LiveGet tickets as low as $26You might also like
You tore out my heart
And you threw it away
The western girl with eastern eyes
Took a wrong turn and found surprise awaits
Now there’s nothing in the way
In the way
In the way
In the way

When the walls come down
When the walls come down
When the walls come down
When the walls come down

You tore out my heart
You threw it away
The western girl with eastern eyes
Took a wrong turn and found surprise awaits
Now there’s nothing in the way
In the way
In the way
In the way', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (281627, 'Closer', '
Stranded in this spooky town
Stop lights are swaying and the phone lines are down
Floor is crackling cold
She took my heart, I think she took my soul
With the moon I run
Far from the carnage of the fiery sun

Driven by the strangle of vein
Showing no mercy, I''d do it again
Open up your eyes
You keep on crying, baby, I''ll bleed you dry
Skies, they blink at me
I see a storm bubbling up from the sea

And it''s coming closer
And it''s coming closer

You shimmy shook my boat
Leaving me stranded all in love on my own
Do you think of me?
Where am I now? Baby, where do I sleep?
Feels so good, but I''m old
Two thousand years of chasing taking it''s toll
See Kings of Leon LiveGet tickets as low as $26You might also like
And it''s coming closer
And it''s coming closer
And it''s coming closer
And it''s coming closer', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3182, 'I Want You', '
Get back on track, pick me up some bottles of booze
Fickle freshman, probably thinks she''s cooler than you
A hay ride at 5, everybody''s coming around
So go press your skirt, word is there''s a new girl in town
I call shotgun, you can play your R&B tunes
The fellowship time, it always comes a little too soon
The land of the creeps, freshened up from baby-faced shave
Put your eyes on me and I know a place where we can get away

Just say, I want you
Just ''xactly like I used to
''Cause baby, this is only bringing me down

Homeboy''s so proud, he finally got the video proof
The night vision shows she was only ducking the truth
It''s heavy, I know, the black cat with the gift down below
A choke and a gag, she spit up and came back for more

She said, I want you
Just ''xactly like I used to
And baby, this is only bringing me down
She said, I want you
See Kings of Leon LiveGet tickets as low as $26You might also like

I want you
Just ''xactly like I used to
And baby, this is only bringing me down
I said, I want you
Just ''xactly like I used to
And baby, this is only bringing me down', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (201408, 'Wait for Me', '
Cut open my heart
Right at the scar and loosen up
Gonna do what I''m told
Go where I''m told and loosen up
Take a shot in the rain (Take a shot in the rain)
One for the pain and loosen up
I tried all the way

Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me

Goin'' to soften the blow
Soften the blow and give it up
I saw the surprise
The look in your eyes, I gave it up
Gonna be who I am
Be who I am and give it up
I tried all the way

Wait for me, wait for me
It''s all better now, it''s all better now
Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me
See Kings of Leon LiveGet tickets as low as $26You might also like
Woah

It''s all better now, it''s all better now
Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me
Oh, it''s all better now, it''s all better now
Wait for me, wait for me', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (226428, 'Beautiful War', '
Bite your tongue, don''t make a scene, dear
Everybody''s been here at least once before
But we''ve been here more
Your heartbreak rolls down the window
I''ve seen it all go and come back around
And I''ve heard the sound

The tip of your tongue, the top of your lungs
Is doing my head in

I said love don''t mean nothing
''Less there''s something worth fighting for
It''s a beautiful war

When I hold the warmth of your body
There is nobody that I''d rather hold
Shattered and cold

The tip of your tongue, the top of your lungs
Is making me crazy
See Kings of Leon LiveGet tickets as low as $26You might also like
I said love don''t mean nothing
''Less there''s something worth fighting for
It''s a beautiful war
I said love, it don''t mean nothing
Unless there''s something worth fighting for
It''s a beautiful war

Oh
It''s a beautiful war
Beautiful war

I said love
I said love don''t mean nothing
''Less there''s something worth fighting for
I said love don''t mean nothing
''Less there''s something worth fighting for
It''s a beautiful war

It''s a beautiful war
It''s a beautiful war
It''s a beautiful war', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (191353, 'Supersoaker', '
My motivation is gone too soon
The good vibrations all over you
Act like you mean it
You mean it
You''ve got a story you never tell
Down in the delta, you''re ringing bells
I''ve never seen it
Seen it
Back of my mind, I''m on my way
I see through smiles on every face
I don''t believe it
Believe it

''Cause I''m the super soaker, red, white and blew ''em all away
With a kiss as unclean as the words that you say

I don''t mind sentimental girls at times
Mr. Walker away, Walker away

Your flags are flying across the plains
I''ve got a secret picking in my brain
I wanna see you
See you
The exit sign is on my face
Don''t know my home, I don''t know my place
I just wanna be there
Be there
See Kings of Leon LiveGet tickets as low as $26You might also like
''Cause I''m the super soaker, red, white and blew ''em all away
With a kiss as unclean as the words that you say

I don''t mind sentimental girls at times
Mr. Walker away, Walker away
I don''t mind sentimental girls at times
Mr. Walker away, oh

I don''t mind sentimental girls at times
I just lay it on the line, on the line
(Away)

I don''t mind sentimental girls at times
Mr. Walker away, Walker away
I don''t mind sentimental girls at times
Mr. Walker away, oh', 1174);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3050777, '1-800-273-8255', '
I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine (Who can relate? Woo)
I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine

I don''t wanna be alive, I don''t wanna be alive
I just wanna die today, I just wanna die
I don''t wanna be alive, I don''t wanna be alive
I just wanna die
And let me tell you why

All this other shit I''m talkin'' ''bout, they think they know it
I''ve been praying for somebody to save me, no one''s heroic
And my life don''t even matter, I know it, I know it
I know I''m hurting deep down, but can''t show it
I never had a place to call my own
I never had a home, ain''t nobody callin'' my phone
Where you been? Where you at? What''s on your mind?
They say every life precious but nobody care about mine

I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine (Who can relate? Woo)
I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine
You might also like
I want you to be alive, I want you to be alive
You don''t gotta die today, you don''t gotta die
I want you to be alive, I want you to be alive
You don''t gotta die, now let me tell you why
It''s the very first breath when your head''s been drowning underwater
And it''s the lightness in the air when you''re there chest-to-chest with a lover
It''s holding on, though the road''s long, seeing light in the darkest things
And when you stare at your reflection, finally knowing who it is
I know that you''ll thank God you did

I know where you been, where you are, where you goin''
I know you''re the reason I believe in life
What''s the day without a little night?
I''m just tryna shed a little light
It can be hard
It can be so hard
But you gotta live right now
You got everything to give right now

I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine (Who can relate? Woo)
I''ve been on the low, I been taking my time
I feel like I''m out of my mind
It feel like my life ain''t mine
I finally wanna be alive, I finally wanna be alive
I don''t wanna die today, I don''t wanna die
I finally wanna be alive, I finally wanna be alive
I don''t wanna die, I don''t wanna die

Pain don''t hurt the same, I know
The lane I travel feels alone
But I''m moving ''til my legs give out
And I see my tears melt in the snow
But I don''t wanna cry, I don''t wanna cry anymore
I wanna feel alive, I don''t even wanna die anymore
Oh, I don''t wanna
I don''t wanna
I don''t even wanna die anymore', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4519154, 'Homicide', '
Son, you know why you the greatest alive?
Why, Dad?
Because you came out of my balls, nigga
Hahahahahaha
(Roof!)

Fuck rap
Bustin'' like an addict with a semi-automatic
Who done had it, and he ready for anybody to buck back
Hold up, catch a vibe, ain''t no way in hell we leavin'' nobody alive
Leave a suicide note, fuck that
Bobby feelin'' villainous, he killin'' this
I''m comin'' for your man and his lady and even the baby
I''m feelin'' like I''m, chika-chika-chika, Slim Shady with rabies

I''m foamin'' at the mouth, ain''t nobody takin'' me out
Every single rapper in the industry, yeah, they know what I''m about
And I dare you to test me
''Cause not a single one of you motherfuckers impress me
And maybe that''s a little bit of an exaggeration
But I''m full of innovation
And I''m tired of all of this high school "He''s cool, he''s not" rap shit
Can a single one of you motherfuckers even rap? Shit
No, this ain''t a diss to the game, this is gas to the flame
Nowadays, everybody sound the same, shit''s lame
Like a moth to the flame, I''ma reel ''em in and kill ''em
Know you feelin'' lyricism when I''m spillin'' it, I''m feelin'' myself
Yeah, yeah, Bobby Boy, he be feelin'' himself
Mass murder like this can''t be good for my health
When I rap like this, do I sound like shit?
Well, it don''t really matter, ''cause I''m killin'' this shit
Yeah, I''m killin'' this shit
Oh yeah, oh yeah, I''m killin'' this shit
Bobby, how many times you been killin'' this shit?
Find another rhyme, goddamn, nigga, shit
You might also like
Fuck rap
Bustin'' like an addict with a semi-automatic
Who done had it, and he ready for anybody to buck back
Hold up, catch a vibe, ain''t no way in hell we leavin'' nobody alive
Leave a suicide note, fuck that
Bobby feelin'' villainous, he killin'' this
I''m comin'' for your man and his lady and even the baby
I''m feelin'' like I''m, chika-chika-chika-chika
Chika-chika-chika-chika-chika, Slim Shady

There''s nowhere to hide, we call this shit genocide
Hit ''em with that (Do-do-do) and they die
We gon'' leave ''em crucified, we call this shit genocide
I got bitches, I got hoes, I got rare designer clothes
No, we ain''t fuckin'' with that
Yeah, there''s a time and a place
But if you ain''t comin'' with the illest of raps
Callin'' yourself the greatest alive
Then you don''t deserve to do that
No, no, oh no, no, please do not do that
You gon'' get smacked
You gon'' make Bobby attack
You gon'' make Bobby Boy snap
You gon'' make Bobby Boy snap (Bobby Boy!)
Fuck rap
Bustin'' like an addict with a semi-automatic
Who done had it, and he ready for anybody to buck back
Hold up, catch a vibe, ain''t no way in hell we leavin'' nobody alive
Leave a suicide note, fuck that
Bobby feelin'' villainous, he killin'' this
I''m comin'' for your man and his lady and even the baby
I''m feelin'' like I''m chika-chika-chika-chika
Chika-chika-chika-chika-chika, Slim Shady

Jigga-jigga-jigga-jigga-jigga like JAY-Z
Jig is up, you fuckers who didn''t write anything
Are getting washed, liga-liga-liga, like bathing
Young Hova, I know hitters like Yankees
Gun toters that pull triggers like crazy
Unloadin'', leave you shot up in your Rover
Your body goes limp and slumps over
Like A-Rod in a month lull, but he just homered
Hol'' up, I said "Rover" because now your Rover is red
Like Red Rover, so you know what I meant
But I roll over my opponents instead
Makin'' dog sounds ''cause I gotta keep breakin'' these bars down
I''ll go slow for the speds
But when I go (Roof!) like the Dobermann said
I still think the (Roof!) would go over your head (Ha-ha)
Beast mode, motherfuckers ''bout to get hit
With so many foul lines, you''ll think I''m a free throw
Figured it was about time for people to eat crow
You about to get out-rhymed, how could I be dethroned?
I stay on my toes like the repo, a behemoth in sheep''s clothes
From the East Coast to the West, I''m the ethos and I''m the G.O.A.T
Who the best, I don''t gotta say a fuckin'' thing, though
''Cause MCs know
But you don''t wanna hear me spit the facts
Your shit is ass like a tailbone
Or you''re trapped in your cell phone
Or my chicken scratch, or my self-loathe
I don''t wanna fuckin'' listen to you spit your raps someone else wrote
Used to get beat up by the big kids
Used to let the big kids steal my big wheel
And I wouldn''t do shit but just sit still
Now money''s not a big deal
I''m rich, I wipe my ass with six mill''
Big bills like a platypus
A caterpillar''s comin'' to get the cannabis
I''m lookin'' for the smoke but you motherfuckers are scatterin''
Batterin'' everything and I''ve had it with the inadequate
Man, I can see my dick is standin'' stiff as a mannequin
And I''m bringin'' the bandana back, and the fuckin'' headband again
A handkerchief and I''m thinkin'' of bringin'' the fuckin'' fingerless gloves back
And not giving a singular fuck, like fuck rap
I sound like a fuckin'' millionaire
With a Derringer with a hair trigger
''Bout to bear hug a fuckin'' terrier, the Ric Flair dripper
Y''all couldn''t hold a candle at a prayer vigil
When I vent, they compare me to a fuckin'' air duct
I''m ''bout to bare-knuckle it, nah, fuck it
I''m gonna go upside their head with a Nantucket
Abraca-fuckin''-dabra
The track is the blood, I''m attracted, I''m attackin'' it
What? Dracula, fuck that shit
I''m up, back with a thud
Man, stop
Look what I''m plannin'', plannin'', I''m plannin'' to
Do all this while ya panickin''
And you''re lookin'' and starin'' at mannequins
And I''m goin'' to Fanagans
Trying to get up a plan against
All of the blana-kazana-ka-fam-bam-bannigans
While of all the bana-kazanika Hanna in a cabana
You''re in a cab-
I''m in a cabana and a Janet
I''m in a cabana chantin'' all this standup banter
While you don''t got the stamina, you''re lackin'' the stamina
You''re lackin'' the stamina while you''re divorcin'' Harrison Ford
And I''m in a Porsche on the floorboards
While I''m world tourin''
You usin'' way too many napkins, papkins
Lapkins and chapki-
You using ChapStick and napkins while I''m bapkin''
Flappin'' around like a bapkin''
Flamminababbitapannitajampkin
Dammit, a can of pada-', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (523560, 'Gang Related', '
Yeah, uh (Sinatra), yeah

Livin'' life like this
Gotta paint a picture when I write like this
Tales from my hood, not a sight like this
Where they up to no good on a night like this
And they murder motherfuckers just ''cause
Type of shit I see, you probably wonder where I was
I was in the crib, just sittin'' on the rug
Baseheads comin'' through, lookin'' for the plug, now (Logic)
Born and raised in my area
Beautiful by day, by night, it''s hysteria
Fuck around and bury ya tonight
Ridin'' with my homies on sight
Momma tell me to come in at night
Now I really gotta go, but they never know
Livin'' life to the fullest, I gotta blow
Po-po finna bust in the door, we got blow in the crib
In the kitchen over there next to the baby with the bib
Goddamn, what it feel like, middle of the night
Wakin'' up, scared for my life, never had the heat
Just a knife, when the gat go blat like that
Guarantee you it''s a wrap, finna put you on your back like that
Just breathe while their mama grieve
Bullet to the dome like an Aleve
Gotta leave for the premises to murder my nemesis
No, no, uh, uh, just stop, stop, stop
''Fore they even call the cops
Do it for the money and the bitches and the drugs and the props
Tell me why another body even gotta drop
Get shot off top for some shit that was gang related
You might also like
Up first at five tonight, breaking news in Gaithersburg, where a massive manhunt is underway after a deadly shooting
It''s all unfolding in the 400 block of West Deer Park and 355
Our Montgomery County reporter joins us with the latest tonight
Livin'' life like this
Hope little Bobby never fight like this
Stab a motherfucker with a knife like this
All about the money on a night like this
Run up in the crib, put a bullet in your rib
Got a lot to give, but I never had the chance
Never had the chance, yeah
Stay strapped, but I hate it when I take it out
If you want it, I''ma lay it out
Hope my little brother make it out
Every night what I pray about
What I pray about, check it, uh, yeah
Got a son on the way
But I cling to the streets even though I wanna run away
I imagine a better life
Where I never had a debt in life
Hit you with the *gunshots* in the dead of night
Sellin'' crack to my own pops
Pushin'' this weight on my own block
If I sell a brick, I could buy a house
If they find the key, they might lock me up
But I take the chance ''cause I need that shit and don''t give a fuck
Take the chance ''cause I need that shit and don''t give a fuck
Get down and lay down
Hit ya with the Beretta, you better stay down
Stray shots on the playground
Livin'' how I''m livin'' with the life that I''m given
Anybody that''s ridin'' with me, I''m ridin'' with ''em
Show me the enemy, and I''ma hit ''em
The second I bit ''em, I get ''em and hit ''em with the venom
Ain''t no need to pretend I''ma never do it
I knew it, already been through it
I do it for the street, for the fam, for the life
Anybody that''s gang related', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3542151, '44 More', '
Ayy, bitch, I''ve been goin'' and goin'' like the Energizer
Yeah, I''m supplyin'' the wood like Elijah
In the cut, smokin'' on indica
Might fuck around and compartmentalize ya
They say, they say life is a bitch
And if that is the case then I''m finna surprise her
No, I am not an advisor, but I do advise ya
To pay attention, never need to mention
I''m that motherfucker bustin'' heads
Finna push it to the ledge
Yeah, I been smokin'' my meds
Ain''t got no love for the feds
Can''t let fame go to yo'' head
Fuck with me, watch where you tread
I''m finna kill it instead
I''m finna, I''m finna, I''m finna
I will, I will, do it like I never done it
And I wanna run it and I wanna keep it goin'' and goin''
Like infinity, be the only entity to ever rip it apart
From the start like this, from the heart like this
Finna murder it, a million miles a minute, no nitrous
Doin'' righteous
I-I been, I-I-I been down this road before
Everybody think that they do but they don''t
Swear to God that they would but they won''t
Spittin'' riddles in the middle of a past-time
Me in my mind, feelin'' divine, like yeah
Finna get it like yeah—yeah
Like yeah, like yeah (Woo, woo, woo, woo)
I done made 20 million dollars (Preach)
I don''t flex to be acknowledged (Preach)
At this point it''s common knowledge (Preach)
All you haters been abolished (Preach)
You in the club throwin'' dollars, but I''m savin'' mine so my kids go to college (Preach)
Or maybe whatever they wanna do (Preach)
Just as long as they never say (Preach)
"Daddy blew 20 million dollars (Ayy)
He had to flex to be acknowledged (Ayy)
He in the club throwin'' dollars
And now cannot afford to send me to college (Ayy)
Daddy just wanna be loved
Just like everybody wanna be accepted (Ayy)
But somehow he had neglected
Me and my momma for all of this rap shit" (Ayy)
No, I cannot fuck with that shit (Ayy)
No, I cannot fuck with that
You might also like
Who you know dropped an album
Back to back to back to back to back to back again?
I''m back again to snap again
And goddamnit, it ain''t no other way around it
Yeah, it''s happenin'', ''cause I''ve been livin'' in a world on my own
Leave me alone, I''m in the zone
Where I''ve been prone to destroy shit
You cannot avoid this, wack mothafuckas have annoyed this
Yes, you know I enjoy this
Preach, mothafuckin'' preach
Yeah, I''m tryna reach everybody in the streets
Writin'' words to the beats
Each one teach one, yeah, I''m tryna reach one
Who the beast one?
That be me, on the top to the East one
Tell me how you really wanna do it right now, time to murder this
Shout out everybody, no fuckin'' around, ain''t heard of this
Heard of us, we ain''t goin'' nowhere, it''s a herd of us
Hold up, roll up

Levitated like I''m David Blaine
Livin'' a dream like I''m David Aames
Talk all you want, we are not the same
Step in the spot, now they know the name
Sold more albums my first week than Harry Styles and Katy Perry
If that ain''t a sign of the times
Then I don''t know what is, man this shit is scary
''Cause bitch, I''ve been blowin'' up like C-4
And I''m 3 for 3 like a free throw
Anybody hatin'' on the boy, take a step back and then deep-throat
Now my phone blowin'' up like ring
Like ring, ring, ring, ring, ring, ring, ring, ring, ring, ring, ring!
That Kevin Durant, I''m a champion
Check the numbers, I''m a champion
Can''t sleep on the boy anymore
But the haters that love to hate gon'' pop an Ambien
Star Lord, champion
Know the name, now they know the alias, that''s for sure
Gave ''em 44, now here''s 44 more', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3039792, 'Everybody', '
Okay I was gone for a minute but I''m back now
Sit the fuck back down
Seem like everybody nowadays Hollywood
Oh, it’s like that now?
I''ma show you mothafuckas how to act now
I''ma show ''em how to act
I''ma show ''em how to act

Okay now picture little Bobby just a youngin'' runnin'' round
With his mans, hammer in his hands, feelin'' like the man
Run, mothafucka, run
Before the popo get the gun, put it to your brain like goddamn!
Everybody know you ain''t about it
Everything you talk about I know I can live without it
Red light, stop. Green light, go!
Everything ain''t what it seem like
Mothafucka I know!
Hold up, what you mean, where you been?
Bitch, I been in
This is merely the beginning again
What you been living in?
A box, under the bridge, like Anthony Kiedis?
Looking for something to complete us
And maybe lead us, fuck an elitist
Hell of a long way from equal is how they treat us
Body of a builder with the mind of a fetus
Turn on the television and see the vision they feed us
And I wish I could erase that, face facts
You might also like
Everybody people, everybody bleed, everybody need something
Everybody love, everybody know, how it go
Everybody people, everybody bleed, everybody need something
Everybody love, everybody know

I been knockin'' doors down like a Jehovah witness
God as my witness, I''m with this
But on the real, I think I need another witness!
If it was 1717, black daddy, white momma wouldn''t change a thing
Light skin mothafucka certified as a house nigga
Well I''ll be God damned, go figure
In my blood is the slave and the master
It''s like the devil playin'' spades with the pastor
But he was born with the white privilege!
Man, what the fuck is that?
White people told me as a child, as a little boy, playin'' with his toys
I should be ashamed to be black
And some black people look ashamed when I rap
Like my great granddaddy didn’t take a whip to the back
Not accepted by the black or the white
I don''t give a fuck, praise God, I could see the light
Everybody talkin'' ''bout race this, race that
I wish I could erase that, face facts
Everybody people, everybody bleed, everybody need something
Everybody love, everybody know, how it go
Everybody people, everybody bleed, everybody need something
Everybody love, everybody know

Okay I was gone for a minute but I''m back now
Sit the fuck back down
Seem like everybody nowadays Hollywood
Oh, it''s like that now?
I''ma show you mothafuckas how to act now
I''ma show ''em how to act
I''ma show ''em how to act', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (519316, 'Under Pressure', '

Dog ''round—from a—from a—dog ''round—once a
Dog ''round—from a—from a—dog ''round—once a
Dog ''round—from a—from a—dog ''round—once a
Dog ''round—from a—from a—dog ''round—

Work so fucking much, my greatest fear is I''ma die alone
Every diamond in my chain, yeah, that''s a milestone (I''m lovin'' it!)
People calling me, askin'' me for money, man (Uh)
The only thing I''ma give you motherfuckers is the dial tone (Yeah)

Flashbacks of a youngin'' sippin'' that purple Kool-Aid
Skippin'' school with my homies and chiefing reefer for two days
Running from the law, livin'' how I''m livin'', fuck ''em all
Bumping Triple Six
Hennessy in my cup, drivin'' through the sticks
Who the bitch ridin'' with me?
Man, the devil tryna get me
Motivated, under-educated, and hated
But finally gettin'' cake like a happy belated
Bitch I made it, we on
Buy it, break it, roll it, light it, smoke it, inhale it
Write it, record it, mix it, master it, press it up, unveil it
Feel like I''ve been waitin'' forever, forever to inherit
This is war, I declare it
Time is money, I can''t spare it
Futuristic, so simplistic
Please decipher my linguistics
Slow it down, Robitussin
I''m the king, ain''t no discussion
And now we blowin'' up like spontaneous human combustion
My consumption is the illest
Section eight, I know you feel this
On the come up,  where they run up on you for nothin'' at all
Brighter than eleven suns, this the first, where my funds?
EBT, that''s the card
I thank God, I thank God, but it''s hard
Uh, but it''s hard
You might also like
Uh, work so fuckin'' much, my greatest fear is I''ma die alone
Every diamond in my chain, yeah, that''s a milestone
People callin'' me, askin'' me for money, man
The only thing I''ma give you motherfuckers is the dial tone

God damn, god damn, we at it again
Me and my homies that know me blowing up like the Taliban
Yeah, my stress up, but I''m blessed up
Fuck around and get messed up
When I murder the rhyme, I''m livin'' divine
You know that I''m one of a kind
Lemme get it right now, ho
Draped up and I''m dripped out (And I''m dripped out)
Right now, ho
Caked up ''til I cash out and I got ''em all wonderin'', "How so?"
On the down low, haters drown slow
On the down low, haters drown slow
Oh God, my God, we got it all right
Oh God, my God, we gotta get it, right?
These fuckers facades, they just a mirage, right?
I said these fuckers facades, they just a mirage, right?
Uh, tell me that they love me
Know damn well that they don''t give a fuck
I be on that finger-flippin'' killin'' shit up in the cut
That''s what''s up
All these bitches out here tryna gas it up
This is everything I ever wanted, I can''t pass it up
Life changed in a year, couldn''t happen fast enough
"Can I do it like you do it?" That''s what they be askin'' us
White Benz, black card, bitch better get your plastic up
Man, this shit is hella hard, but we never actin'' up
Live it up, hold on to your dream, don''t ever give it up
Finally had my share of success, and shit, I can''t get enough
Now they know my name through the nation
''Cause my single like that good shit, man, always in rotation
Now they know Logic for Logic, not through my affiliations
Stackin'' profit on profit, from this music I''m makin''
Even Jesus had haters, so when you feelin'' forsaken
Tell ''em jealous Judases who this is, and man, that''ll break ''em
And bitch, I''m still the same
Dash of autotune so y''all can feel the pain
Broke as fuck, back in that basement, not a dollar to my name
Chasin'' fame, chasin'' glory, ''til the day we make a story
Positive that life ain''t mine, bitch you can take that shit to Maury
Work so fuckin'' much, my greatest fear is I''ma die alone
Every diamond in my chain, yeah, that''s a milestone
People callin'' me, askin'' me for money, man
The only thing I''ma give you motherfuckers is the dial tone
(Hello, no one is available to take your call)
I been workin'' hard, I been searchin'' for God
I been workin'' hard, I been searchin'' for God
(Please leave a message after the tone)
Little brother, this is yo'' sister, you''re busy, I get you
But I insist you call me back ''cause I miss you
I wish you well, well, I wish you would call
''Cause lately it feel like I’m just not yo'' sister at all—all
Uh, I’m sorry for callin'' and bawlin'', I’m all in
And I feel like I''m fallin'' lately, it feel like my children hate me
You tell me I''m beautiful and yet no man wanna date me
Haunted by vivid memories of that man who raped me
And lately I, I feel more and more like mommy, I know I’m me, but still
You always seemed to pick up the phone and somehow I feel
Better, but you been answerin'' me lesser and lesser
So I resorted to the pills in my dresser, I''m gone
And as for... oh no, he left and he ain’t comin'' back
I hate him and if I see him I swear I tell him that
No longer cookin'' crack in my kitchen, cuttin'' an'' sellin'' that
He broke my heart, that relationship been to hell and back
I been workin'' hard, I been searchin'' for God
I can feel the Devil around me as they all applaud
Promise you won''t forget me, that you''ll always be wit'' me
And even when you gone I can call whenever he hit me
Under pressure, I''ve been feeling under pressure
Hey, son, this is your father, don''t mean to bother
How are you? Heard you were in town, but I never saw ya
Tried to call ya, where are ya?
In Paris? What a beautiful destination
To perish right by the Eiffel, come now
Please don''t be spiteful of all my small talk
I think we''re overdue a long talk
When I see kids around the way, I say how I''m your dad
It gets me thinkin'' ''bout incredible moments we''ve had
And on the real, I''m tryin'' so hard not to bug you
But do you think you could stop rappin'' about my drug use?
I''m two years clean, no longer a fiend
Yeah, I''m 57, but I feel 19
And I love you I swear, Bobby, I know you''re there
And when the time is right I know that you gon'' take care
Of anything I need, of yo'' family
Can I have some tickets to your next show?
Would you stand wit'' me?
Can I have some money for my new honey that''s hella fine?
I forgot to mention I got divorced from yo'' step-mom
My mind goin'' crazy, but I still look hella calm
Maybe you could tell *beep*
I''ve been feelin'' under pressure
Hey, what''s up, bro? This Ralph, I didn''t want much, man, just calling to see what''s going on. I know you''re busy. Uh, Dad hit me up, it''s his birthday today, but I know you know that. Uh, yeah, he calling, he be tryna introduce me to his new chick and stuff, man, I don''t know how to handle that. I don''t wanna tell him like nah, I ain''t trying to meet her off top, you know? So what you think I should do? Text me, I know you''re busy, dawg. But he been callin'' me saying he wanna come down, he wanna bring his new chick and Brenda''s like "Damn, he really tryna rock out with his new chick" ''cause you know we all fuck with Debbie. But I don''t know, I don''t know how to tell him this shit so just hit me back whenever you got the time, man, I know there''s more shit on your plate. You ain''t—you ain''t gotta hit me, dawg, but if you do I''d appreciate it. When you back, love you, do your thing. Swag RattPack all day, boy. Alright, nigga, hit me
Uh, yeah, dear family, I''m so sorry that I''ve been distant
Everything changed in an instant, my time has been inconsistent
I know that you been insistin'', I know that birthday I missed it
I swore I told my assistant, but I guess my mind is in another place
Thoughts off in another world, I started seein'' another girl
It fell through, man, what a world
But I''m so focused on my craft, on employin'' my staff
Such a perfectionist, I can''t even finish this draft
This letter to the ones I love, the ones that I miss
Brothers and sisters that hit me up just to reminisce
Meanwhile, people outside of my blood askin'' for favors
I don''t owe you a fuckin'' thing, you best switch yo'' behavior
Truly remarkable how I barely know you, but somehow owe you When you don''t even know ''bout the shit I go through, uh
We ain''t spoken in a while, tell me sister, how yo'' child?
Come now, girl, give me a smile, come on, girl, don''t do me foul
Sorry I ain''t call before, but I''m callin'' you right now
I heard that you was poppin'' E, stop resortin'' to the vowel
How my mama, how she doin''? Does she know what I''m pursuin''?
I ain''t talk to her in years, that relationship she ruined
But sometimes I wake up and wonder just what the fuck I''m doin''
They say family is everything, I swear that shit the truth
I should spend it all with y''all, but I spend it in the booth
This is everything I love, this is everything I need
Never sacrifice this feelin'' even though my heart it bleed
This is everything I love, everything I need
Never sacrifice this feelin'' even though my heart bleed
Under pressure, I''ve been feelin'' under pressure

Hey, son, I''m sorry I missed your call today, but I was in an AA meeting. Um, a friend of mine was celebrating four years so I couldn''t get you right then. And then when I did call you, you weren''t able to answer or whatever. Just wonderin'' how things are going. Deb and I aren''t together anymore, um... Livin'' on my own, you know, um... Anyway, the whole family, even the family that you don’t know, my sisters and your aunts that you''ve never met are very proud of you. Your cousins just love you too. Anyway, son, I love you, I just want you to know that. And just keep grindin'', you know? And um, I don''t wanna hear you joinin'' the Illuminati ''cause then I gotta kill ya. Hm-hm, I love you, son, bye', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (544491, 'Nikki', '
I can feel you in my lungs, feel you in my veins
Bloodstream only way to make it to my brain
I tried some others but man they just not as good as you
Going crazy ''cause I only feel this good with you
Maybe I''m just not as strong as I once was
When we''re together lately I don''t even feel a buzz
I''m addicted to this shit like it was hard drugs (Drugs)
Nikki baby, I love you but now I gotta go
''Cause in the end what happens you already know
Probably wonder where I been at, I been laying low
But in my mind I''m wondering what I''m paying for (Paying for)
All these other bitches on my dick but I can''t fuck with that
You''re the only girl I need I gotta have you back
Even though you turn my lungs black (My lungs black)
Tell me where you been Jack (Been Jack)
Uh, I know this shorty that go by the name of Mary
I used to fuck her way back when I didn''t know a thing
Skipping school with all my homies on some truancy
But when I ended things with her it was just you and me
Doing me good, that''s what I thought at first
Me and you together, swear to God that''s all that worked
Away from you though man it''s just so hard to work (Hard to work)
Uh, my heart is hard at work
We been together like ten years
Goddamn, took me as a young man
Everyday I wonder who I am, who will I be, where will I go
What will they write upon my grave?
A free man born as a king, who died as a slave
But everything he gave her was for nothing though
Oh no I can''t fade that shit I gotta let you go
You got me tripping like a flight to Vegas
All this shit you got me doing man it''s outrageous
All I know is I''m living the life I never would
Finally let you go, I thought I never could
Don''t get me wrong, can''t forget the times shared
Seem like everywhere I go, I always know you''re there
Tried to run but my legs won''t
I look away but my head don''t
I love it when you''re fresh
I love it when I take your top off and we share the same breath
I hate it that I need you, Nikki
But I love it when I feed you, Nikki
I hate that I bleed for you
Uh, I long and I need for you
But I love it when I taste you (Taste you)
Nothing can replace you (Replace you)
I wish I could erase you, you’re everywhere I go
But you''re everywhere I long to be
And all these other people that don''t seem to understand
I''m just a man they always ask what’s wrong with me
Man you''re everything I crave
You''re the only thing I let in that would put me in the grave
I''m a king, you''re my Coretta
But lately, I been feeling like a slave for the nicotine (Nicotine, nicotine)
You might also like
Slave for the—
Said, I''m a slave for the nicotine (Nicotine, nicotine)
Been a slave for ya
I''m a muthafuckin'' slave for ya
Slave for the nicotine (Nicotine, nicotine)
Nikki, Nikki, slave for ya
I''m a slave for ya Nikki
I''m a muthafuckin'' slave for ya
All handwriting on the album''s artwork was done by Big Lenbo—', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3053927, 'Black SpiderMan', '
Jesus, Black Jesus
Jesus, Black Jesus

I been feeling so down
I think they should know now
I think they should know what''s up
That''s that road I been down
I know how it go down
I know how it go now, what''s up
I feel like I don’t belong
I feel like my life is wrong
I feel like I don’t know what''s up
What''s up, what''s up
Yeah, yeah
Ayy

I ain’t here to pick and choose
I ain''t here to sing the blues
I’m just here to spread the clues
I’m just here to spread the news
Everybody know I do
Listen
I ain’t ashamed to be white
I ain’t ashamed to be Black
I ain’t ashamed of my beautiful Mexican wife as a matter of fact
I know you fucking with that
And I’m not scared of the people who tell me I should be
Do what you love and don’t ever wonder what it could be
Everybody from my hood, everybody know I’m good
Sometimes I’m misunderstood
But that''s just the uneducated that never related and feel like I''m fading off
They feel like I''m fading
I''m right out my mind
Tell ''em!
Momma don''t love me
Daddy don''t love me
Wonder why I drown in the bubbly
You could be anything you wanna be
''Cept the person you don’t wanna be
Let him hate let em love
Wondering if everybody still like this up above
When that push come to shove
Make me wanna pull up with the, with the gat in the glove like
I just wanna be free
Not a slave to the stereotype
All alone in my room in the middle of the night
I don’t have the words but my stereo might
I don''t wanna be black, I don’t wanna be white, I just wanna be a man today
I don''t wanna be a Christian, Muslim, gay, straight, or bi, see you later, bye
Not perceived by the things I believe or the color of my skin
Or the fact I’m attracted to her, maybe him
Or the fact I’m a single mother living all alone
Looking for a man and a home to call my own
But I already have one
The only man I’ma ever need is my son, my son, my son, my son
Son, say:
Black is beautiful
Be black and proud
Fuck everybody hatin'' on me right now, I’m black and proud
I’m just as white as that Mona Lisa
I’m just as black as my cousin Keisha
I’m biracial so bye Felicia
Praise Black Jesus now call the preacher
Maybe Jesus was black
Maybe Jesus had dreads
Spiderman should be black
I vote for Glover instead
Glover instead
Like what''s up
I vote for more and more and more and more and more and more and more and more and more
I vote for so much more
You might also like
I been feeling so down
I think they should know now
I think they should know what''s up
That''s that road I been down
I know how it go down
I know how it go now, what''s up
I feel like I don’t belong
I feel like my life is wrong
I feel like I don’t know what''s up
What''s up, what''s up
Go on and let your soul glow
Let your soul glow
Glow
Shine and glow
Let it glow
Glow
Let, let it
Black Spiderman can he save a brother now
Black Spiderman can he save a brother now
Yeah
Let your soul glow
Let your soul glow
Glow
Yeah
Ayy man
What''s up, bro?
Spiderman should be Black
Yeah, I mean Spiderman should be Black
Fuck yeah
Yeah man
Black Spiderman
Black Superman
Black Santa Claus
Shit, Black Seinfeld
Black Seinfeld?
Nigga, that''s Martin!
Damn, you''re right...
Shit, I''m fuckin'' high', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (197351, 'Alright', '
Hold up
Let me get my mind, let me get my mind right, yeah
Let me get my mind, let me get my mind right
You know everything is alright
You know everything is al-

Just ride with a mothafucka
Keep it real, never lie to a mothafucka, hold me down
Chillin'', In-A-Gadda-Da-Vida, rockin'' Adidas
With a señorita when she sippin'' liquor by the liter
That''s royalty, like the homie Gambino
He know we be in the casino, lightin'' Cubans with a C-note
I''ma fuck the game, dare you to test my libido
Comin'' up shorter than Danny DeVito
Whenever I step on the beat, ho
Like a killer on the creep slow
Had my share of defeat, but we still gon'' eat, ho
While the fans bumpin'' Welcome To Forever on repeat though, uh
Wonderin'' if I''ma ever fall off
Feelin'' mad at the world, wanna hit it with a sawed-off
Blowin'' up like a Molotov
This is war, everybody, ain''t no reason I''ma call it off
Get it right, shout out to the homie Dizzy Wright
In the studio every day
So you know this shit about to be a busy night
Everything is al-, everything is alright
You might also like
It''s Finally Famous over everything
RattPack gang
What up though, Logic? Yeah
Day one shit right there

Hold up
Let me get my mind, let me get my mind right, yeah
Let me get my mind, let me get my mind right
You know everything is alright (Sean Don)
You know everything is al-

Oh my God, they plottin'' and schemin''
Fuckboys rather me not even breathin''
They tryna take my blessings away
They gotta be demons, I''m blessed every day
And not blessed like I''m sneezin'', I''m healthy and well
On top of my ship and I''m not even sinkin''
And I could just sit back and say that I''m happy
But can''t spend a day without smokin'' and drinkin''
Got Champagne problems, and I order more
My wardrobe is Aura Gold
I''m a young nigga with a older soul
But still young enough to know I gotta know some more
I made somethin'' out of nothin'', Sean Don the magician (Good, yeah)
She doin'' tricks with her pussy, I guess she''s a vagician (Good)
She tryna hold on to a nigga sta-sta-stackin'' up (Uh-huh)
Purell for these fake niggas tryna dap-dap me up
Hype nigga, back-back-back it up (Woah)
Claimin'' that we homies, boy stop (Stop)
That''s the type of shit I boycott
Yellin'' fuck the 5-0, state troops
Any nigga with a badge, I don''t even trust the boy scouts
I got these good girls hoin'' out
Tell me what the fuck you know about (What?)
Bein'' that nigga that these niggas don''t know about
Then they throw you in the game
And you mothafuckin'' blow it out
Now everything is alright
Hold up
Let me get my mind, let me get my mind right, yeah
Let me get my mind, let me get my mind right
You know everything is alright (Yeah)
You know everything is al- (Uh, yeah)

Whippin'' through Gotham
Hatin'' mothafuckas, I wanna off ''em
Hella endorphins, got me livin'' life to the coffin
I''m coughin'', wonderin'' if I''m goin'' insane
Nobody knowin'' my pain
But I be killin'' ''cause I''m into the game
Now lookin'' back, it''s like ain''t nothin'' the same
All these Spanish women watchin'' me like a novella
Hit you with a Beretta, get you wetter than a umbrella
Ain''t nobody better do it like me
I know a lot of mothafuckas don''t like me, prolly wanna fight me
But I just keep the peace, no need to keep a piece
I keep my enemies on a leash, capiche?
And keep it real for the people I reach', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2343415, 'Fade Away', '

Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah
Uh a-ah, yeah, uh, uh, yeah yeah

All day (All day), everyday (Everyday)
We was on that block until we made a way (We made a way)
Day to day, man that''s the only way (Only way)
They gon'' know my name until it fade away

Fade away, fade away, fade away, fade away, fade away
They gon'' know my name until it fade—
(Way, way, way), uh, fade away
Uh, they gon'' know my name until it fade away
(Okay, okay)

I been there, I done that, done that, this rap shit I run that
Motherfucker this far from a comeback, if one of us fall then we run back
Can''t let that social worker just snatch up my kin, gotta get my son back
''Cause when they coming through that system don''t give a fuck about you (You, you, you)
Everybody gonna die, gonna go one day, maybe it''ll happen on a Monday
Driving to work and get hit by a Hyundai, fuck it, let it all go one day
I know, I''ma get it like this, living that life while they all reminisce
Never regretted, the second I said it I feel like I''m smarter, I read it on Reddit
You''re fucking pathetic, my etiquette murder ya predicate, bitch I''m ahead of it, yeah
Yes I''ma die but I don’t wonder why in the hell I''ma ride in the dead of it, yeah
I know, know, life on Earth is so unpredictable
Okay-kay, hold up let me say yes I fade away
You might also like
Fade away, fade away, fade away, fade away, fade away
They gon'' know my name until it fade a— uh
(Way, way, way), fade away
They gon'' know my name until it fade away
(Yeah, yeah)

Tell me what I wouldn''t wanna give for a life like this, arm and a leg quite like this
Fuck around wanna fight like this, take a hike like this
I might just, might just, I don''t know
Reinvention, that''s my intention
Want so much more than this third-dimension
That''s not to mention my true ascension is a bigger picture
No metaphor, I’m being real with ya
But it will hit ya like, "goddamn!"
Going HAM, full of all of them
In a spaceship, I’m in another system
So futuristic, on another mission
But back on Earth everybody bitchin'', I been in the kitchen
Livin'' my life—no inhibition, life to death with no intermission
Now the good book said we all the same, and we kill each other but it''s all in vain
And we all to blame, can''t see the picture when it''s out the frame
Real talk, I wanna grip the grain and just ride with ya, build a family then die richer
When ya get to heaven I''ma come and get ya
Sit back and really get the picture
This life, yeah, it done ate away, hard times never stayed away
But one thing I know day to day, I''ma do somethin'' ''fore I fade away
Fade away, fade away, fade away, fade away, fade away
They gon'' know my name until it fade—
(Way, way, way), fade away
They gon'' know my name until it fade away
Fade away, fade away, fade away, fade away, fade away
They gon'' know my name until it fade—
(Way, way, way), fade away
They gon'' know my name until it fade away

THOMAS: Get the upgrade?
KAI: Nah, man. It’s the same shit with a different title!
THALIA: That’s not true, Kai
KAI: What the fuck?!
THOMAS: Yeah, man. They didn’t just upgrade features, they enhanced her A.I
KAI: So she can actually hold a conversation?
THOMAS: Yeah. Ask her yourself
KAI: Uh, what am I thinking, Thalia?
THALIA: Kai, I’m a program in the ship’s interface, not a psychic
KAI: Damn, girl!
THOMAS: Yeah, that’s another thing now. She’s unisex
KAI: What?!
THOMAS: Thalia, integrate Y chromosome feature
THALIA: Sure thing, Thomas. Would you like a standard accent or something a little more exotic?
KAI: Holy shit!
THOMAS: Told you, man. The upgrade’s crazy. Thalia, revert last command and run simulation
THALIA: Running simulation
KAI: Man, what the hell is that?
THOMAS: Well, you can pick anyone in history, and based off a collection of data, it allows you to personally speak with them
KAI: Anybody?
THOMAS: Anybody
KAI: Thalia, do Big Sean
THOMAS: All right, let me get this straight. You can speak with anyone in recorded history, like Jesus, Steve Jobs, Einstein, and you pick Big Sean?
KAI: Man, fuck yeah! That’s my dog!
THOMAS: *Laughs* Okay. Thalia, simulate Big Sean
THALIA: What up Kai, you lil'' bitch?
KAI: Yeah, I''ma have to upgrade my shit', 7922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2398213, 'Work', '
Work, work, work, work, work, work
He said me haffi
Work, work, work, work, work, work
He see me do mi
Dirt, dirt, dirt, dirt, dirt, dirt
So me put in
Work, work, work, work, work, work
When you ah guh
Learn, learn, learn, learn, learn?
Me nuh cyar if him
Hurt, hurt, hurt, hurt, hurting

Dry, me ah desert him
Nuh time to have you lurking
Him ah go act like he nuh like it
You know I dealt with you the nicest
Nuh body touch me, you nuh righteous
Nuh badda, text me in a crisis
I believed all of your dreams, adoration
You took my heart and my keys and my patience
You took my heart on my sleeve for decoration
You mistaken my love I brought for you for foundation
All that I wanted from you was to give me
Something that I never had
Something that you''ve never seen
Something that you''ve never been
Mmmmm
But I wake up and act like nothing''s wrong
Just get ready fi
You might also like
Work, work, work, work, work, work
He said me haffi
Work, work, work, work, work, work
He see me do mi
Dirt, dirt, dirt, dirt, dirt, dirt!
So me put in
Work, work, work, work, work, work
Ner, ner, ner, ner, ner, ner
When yuh ago learn, learn, learn, learn, learn, learn?
Before the tables turn, turn, turn, turn, turn, turn

Beg you something, please
Baby, don''t you leave
Don''t leave me stuck here in the streets, uh-huh
If I get another chance to
I will never, no, never neglect you
I mean, who am I to hold your past against you?
I just hope that it gets to you
I hope that you see this through
I hope that you see this true
What can I say?
Please recognize I''m tryin'', babe
I have to
Work, work, work, work, work, work
He said me haffi
Work, work, work, work, work, work
He see me do mi
Dirt, dirt, dirt, dirt, dirt, dirt
So me put in
Work, work, work, work, work, work
When you ah guh
Learn, learn, learn, learn, learn?
Me nuh cyar if him
Hurt, hurt, hurt, hurt, hurting

Yeah, okay
You need to get done, done, done, done at work, come over
We just need to slow the motion
Don''t give that away to no one
Long distance, I need you
When I see potential, I just gotta see it through
If you had a twin, I would still choose you
I don''t wanna rush into it if it''s too soon
But I know you need to get done, done, done, done
If you come over
Sorry if I''m way less friendly
I got niggas tryna end me, oh (Yeah)
I spilled all my emotions tonight, I''m sorry
Rollin'', rollin'', rollin'', rollin'', rollin''
How many more shots until you''re rollin''?
We just need a face-to-face
You could pick the time and the place
You spent some time away
Now you need to forward and give me all the
Work, work, work, work, work, work
He said me haffi
Work, work, work, work, work, work
He see me do mi
Dirt, dirt, dirt, dirt, dirt, dirt
So me put in
Work, work, work, work, work, work
When you ah guh
Learn, learn, learn, learn, learn?
Me nuh cyar if him
Hurt, hurt, hurt, hurt, hurting

Mm
Mm
Work, work, work, work, work, work
Mm
', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2378935, 'Love on the Brain', '
And you got me like, oh
What you want from me? (What you want from me?)
And I tried to buy your pretty heart, but the price too high
Baby, you got me like, oh, mmm
You love when I fall apart (Fall apart)
So you can put me together and throw me against the wall

Baby, you got me like, I, woo, I
Don''t you stop loving me (Loving me)
Don''t quit loving me (Loving me)
Just start loving me, oh (Loving me)

And, babe, I''m fist-fighting with fire
Just to get close to you
Can we burn something, babe?
And I''ll run for miles just to get a taste
Must be love on the brain
That''s got me feeling this way (Feeling this way)
It beats me black and blue, but it fucks me so good
And I can''t get enough
Must be love on the brain, yeah
And it keeps cursing my name (Cursing my name)
No matter what I do, I''m no good without you
And I can''t get enough
Must be love on the brain
You might also like
Baby, keep loving me
Just love me, yeah
Just love me
All you need to do is love me, yeah
Got me like, ow
I''m tired of being played like a violin
What do I gotta do to get in your motherfuckin'' heart?

Baby, like, I, woo I
Don''t you stop loving me (Loving me)
Don''t quit loving me (Loving me)
Just start loving me, ooh (Loving me)

And, babe, I''m fist-fighting with fire
Just to get close to you
Can we burn something, babe?
And I''ll run for miles just to get a taste
Must be love on the brain
That''s got me feeling this way (Feeling this way)
It beats me black and blue, but it fucks me so good
And I can''t get enough
Must be love on the brain, yeah
And it keeps cursing my name (Cursing my name)
No matter what I do, I''m no good without you
And I can''t get enough
Must be love on the brain
', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2413890, 'Needed Me', '
Mustard on the beat, ho!

I was good on my own, that''s the way it was
That''s the way it was
You was good on the low for a faded fuck
On some faded love
Shit, what the fuck you complaining for?
Feeling jaded, huh?
Used to trip off that shit I was kickin'' to you
Had some fun on the run though I''ll give it to you

But baby, don''t get it twisted
You was just another nigga on the hit list
Tryna fix your inner issues with a bad bitch
Didn''t they tell you that I was a savage?
Fuck ya white horse and ya carriage
Bet you never could imagine
Never told you you could have it

You needed me
Ooh, you needed me
To feel a little more, and give a little less
Know you hate to confess
But baby ooh, you needed me
You might also like
You been rollin'' around, shit I''m rollin'' up
Light and roll it up
Break it down, like a pound, shit was never us
Shit was never us
That''s the real, on the real, are you serious?
How you feel, how you feel?
Used to trip off that shit I was kickin'' to ya
Had some fun on the run though, I''ll give it to ya

But baby, don''t get it twisted
You was just another nigga on the hit list
Tryna fix your inner issues with a bad bitch
Didn''t they tell you that I was a savage?
Fuck ya white horse and ya carriage
Bet you never could imagine
Never told you you could have it

You needed me
Ooh, you needed me
To feel a little more, and give a little less
Know you hate to confess
But baby ooh, you needed me', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (97160, 'Stay', '
All along, it was a fever
A cold sweat, hot-headed believer
I threw my hands in the air, said, "Show me something"
He said, "If you dare, come a little closer"

''Round and around and around and around, we go
Oh, now, tell me now, tell me now, tell me now you know

Not really sure how to feel about it
Something in the way you move
Makes me feel like I can''t live without you
It takes me all the way
I want you to stay
It''s not much of a life you''re living
It''s not just something you take, it''s given

''Round and around and around and around, we go
Oh, now, tell me now, tell me now, tell me now you know

Not really sure how to feel about it
Something in the way you move
Makes me feel like I can''t live without you
It takes me all the way
And I want you to stay
You might also like
Ooh
The reason I hold on
Ooh
''Cause I need this hole gone
Well, funny you''re the broken one
But I''m the only one who needed saving
''Cause when you never see the light
It''s hard to know which one of us is caving

Not really sure how to feel about it
Something in the way you move
Makes me feel like I can''t live without you
It takes me all the way
I want you to stay
Stay

I want you to stay
Ooh', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2397579, 'Kiss It Better', '
Kiss it, kiss it better, baby
Kiss it, kiss it better, baby

Been waitin'' on that sunshine, boy
I think I need that back
Can''t do it like that
No one else gon'' get it like that
So why argue? You yell, but cha take me back
Who cares, when it feels like crack?
Boy, ya know that you always do it right

Man, fuck yo pride
Just take it on back, boy, take it on back, boy
Take it back all night
Just take it on back, take it on back
Mmm, do what cha gotta do, keep me up all night
Hurtin'' vibe, man, it hurts inside when I look you in yo eye

What are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
Oh, what are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
You might also like
Been waitin'' on that sunshine, boy
I think I need that back
Can''t do it like that
No one else gon'' get it like that
So why argue? You here, here to take me back
Who cares, when it feels like crack?
Boy, ya know that you always do it right

Man, fuck yo pride
Just take it on back, boy, take it on back, boy
Take it back all night
Just take it on back, take it on back
Mmm, do what cha gotta do, keep me up all night
Hurtin'' vibe, man, it hurts inside when I look you in yo eye

What are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
Oh, what are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)

I’ve been waitin'' up all night
Baby tell me what’s wrong?
You''re gonna make it right, make it all night long
I’ve been waiting up all night
Baby, tell me, what’s wrong?
Going to make it right, make it all night long
Man, fuck yo pride
Just take it on back, boy, take it on back, boy
Take it back all night
Just take it on back, take it on back
Mmm, do what cha gotta do, keep me up all night
Hurtin'' vibe, man, it hurts inside when I look you in yo eye

What are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
Oh, what are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
What are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)
Oh, what are you willing to do?
Oh, tell me what you’re willing to do
(Kiss it, kiss it better, baby)

Kiss it, kiss it better, baby
Kiss it, kiss it better, baby', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (89794, 'Diamonds', '
Shine bright like a diamond
Shine bright like a diamond

Find light in the beautiful sea, I choose to be happy
You and I, you and I
We''re like diamonds in the sky
You''re a shooting star I see, a vision of ecstasy
When you hold me, I''m alive
We''re like diamonds in the sky

I knew that we''d become one right away
Oh, right away
At first sight, I felt the energy of sun rays
I saw the life inside your eyes

So shine bright, tonight, you and I
We''re beautiful, like diamonds in the sky
Eye to eye, so alive
We''re beautiful, like diamonds in the sky

Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shinin'' bright like a diamond
We''re beautiful, like diamonds in the sky
Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shinin'' bright like a diamond
We''re beautiful, like diamonds in the sky
You might also like
Palms rise to the universe as we moonshine and molly
Feel the warmth, we''ll never die
We''re like diamonds in the sky
You''re a shooting star I see, a vision of ecstasy
When you hold me, I''m alive
We''re like diamonds in the sky

At first sight, I felt the energy of sun rays
I saw the life inside your eyes

So shine bright, tonight, you and I
We''re beautiful, like diamonds in the sky
Eye to eye, so alive
We''re beautiful, like diamonds in the sky

Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shinin'' bright like a diamond
We''re beautiful, like diamonds in the sky
Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shinin'' bright like a diamond
We''re beautiful, like diamonds in the sky
Shine bright like a diamond
Shine bright like a diamond
Shine bright like a diamond

So shine bright, tonight, you and I
We''re beautiful, like diamonds in the sky
Eye to eye, so alive
We''re beautiful, like diamonds in the sky

Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shine bright like a diamond
Woah-oh, yeah
Shine bright like a diamond (Woah)
Shine bright like a diamond (Woah)
Shine bright like a diamond
Shine bright like a diamond', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1629, 'Umbrella', '
Uh-huh, uh-huh (Yeah, Rihanna)
Uh-huh, uh-huh (Good Girl Gone Bad)
Uh-huh, uh-huh (Take three, action)
Uh-huh, uh-huh (Hov)

No clouds in my stones
Let it rain, I hydroplane in the bank
Comin'' down with the Dow Jones (Ayy, ayy, ayy)
When the clouds come, we go, we Roc-A-Fella (Ayy-ayy-ayy, ayy)
We fly higher than weather, in G5''s or better
You know me (You know me)
In anticipation for precipitation, stack chips for the rainy day
Jay, Rain Man is back (Ayy-ayy-ayy, ayy)
With Little Miss Sunshine, Rihanna, where you at?  (Ayy-ayy-ayy, ayy)

You have my heart, and we''ll never be worlds apart
May be in magazines but you''ll still be my star
Baby, ''cause in the dark, you can''t see shiny cars
And that''s when you need me there
With you, I''ll always share because

When the sun shine, we shine together
Told you I''ll be here forever
Said "I''ll always be your friend"
Took an oath, I''ma stick it out ''til the end
Now that it''s rainin'' more than ever
Know that we''ll still have each other
You can stand under my umbrella
You can stand under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy, ayy, ayy, ayy
You might also like
These fancy things
Will never come in between
You''re part of my entity
Here for infinity
When the war has took its part
When the world has dealt its cards
If the hand is hard
Together, we''ll mend your heart because

When the sun shine, we shine together
Told you I''ll be here forever
Said "I''ll always be your friend"
Took an oath, I''ma stick it out ''til the end
Now that it''s rainin'' more than ever
Know that we''ll still have each other
You can stand under my umbrella
You can stand under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy, ayy, ayy, ayy
You can run into my arms
It''s okay, don''t be alarmed
Come into me
There''s no distance in between our love
So, gonna let the rain pour
I''ll be all you need and more because

When the sun shine, we shine together
Told you I''ll be here forever
Said "I''ll always be your friend"
Took an oath, I''ma stick it out ''til the end
Now that it''s rainin'' more than ever
Know that we''ll still have each other
You can stand under my umbrella
You can stand under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy
Under my umbrella
Ella-ella, ayy, ayy, ayy, ayy, ayy, ayy

It''s rainin'', rainin''
Ooh, baby, it''s rainin'', rainin''
Baby, come into me
Come into me
It''s rainin'', rainin''
Ooh, baby, it''s rainin'', rainin''
You can always come into me
Come into me
It''s pourin'' rain
It''s pourin'' rain
Come into me
Come into me
It''s pourin'' rain
It''s pourin'' rain
Come into me', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2414113, 'Sex With Me', '
Sex with me, so amazing
All this all hard work, no vacation
Stay up off my Instagram, pure temptation
Hit a switch on a fake nigga, like a station
Sex with me, so amazing
Sex with me, so amazing

Vodka and water, and a lemon
And a few other things I cannot mention
Oh-na-na-na-na
Five fingers on it (Five fingers)
Hit it like you own it, I''ma hit it like I''m on it
Straight shots of the blue dot
(Shots, shots, shots, shots)
Baby, I''ma pick your poison
Oh-we, ah-yeah, you gon'' need it
I''m off that la-la
I''ma get it wet like jacuzzi, ah-yeah

And sex with me, so amazing
All this all hard work, no vacation
Stay up off my Instagram, pure temptation
Sex with me, sex with me, sex with me
So amazing, so amazing, mmmm
You might also like
You know I got the sauce (Sauce), you know I''m saucy
And it''s always wet, a bitch never ever had to use lip gloss on it
I''ma need you deeper than six, it''s not a coffin
We''re not making love, tryna get nasty
Wrap up your drugs, come make me happy
Sex with me is amazing, with her it''ll feel alright
The sex doesn''t get any better, make it long, let it be all night
I know, I know, I make it hard to let go
Tonight, all night, I''m Monroe
Even if I''m alone

Sex with me, so amazing
All this all hard work, no vacation
Stay up off my Instagram, pure temptation
Hit a switch on a fake nigga, like a station
Sex with me, sex with me, sex with me
So amazing, so amazing, mmmm

Sex with me, so amazing
Sex with me so amazing
(This is the best there is)', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (731783, 'Bitch Better Have My Money', '
Yayo, yayo
Mula-la
Yayo

Bitch better have my money
Y''all should know me well enough
Bitch better have my money
Please don''t call me on my bluff
Pay me what you owe me
Ballin'' bigger than LeBron
Bitch, give me your money
Who y''all think y''all frontin'' on?

Like bra, bra, bra
Louis XIII, and it''s all on me, nigga, you just bought a shot
Kamikaze, if you think that you gon'' knock me off the top
Shit, your wife in the backseat of my brand new foreign car
Don''t act like you forgot
I call the shots, shots, shots
Like bra, bra, bra
Pay me what you owe me, don''t act like you forgot

Bitch better have my money
Bitch better have my money
Pay me what you owe me
Bitch better have my (Bitch better have my)
Bitch better have my (Bitch better have my)
Bitch better have my money
You might also like
Turn up to Rihanna while the whole club fuckin'' wasted
Every time I drop by, I am the only thing y''all playin''
In a drop top, doin'' hundred, y''all in my rearview mirror racin''
Where y''all at? Where y''all at? Where y''all at? (Where y''all at?)

Like bra, bra, bra
Louis XIII, and it''s all on me, nigga, you just bought a shot
Kamikaze, if you think that you gon'' knock me off the top
Shit, your wife in the backseat of my brand new foreign car
Don''t act like you forgot
I call the shots, shots, shots
Like bra, bra, bra
Pay me what you owe me, don''t act like you forgot

Bitch better have my money
Bitch better have my money
Pay me what you owe me
Bitch better have my (Bitch better have my)
Bitch better have my (Bitch better have my)
Bitch better have my money
Bitch better have my money
Bitch better have my money
Pay me what you owe me
Bitch better have my (Bitch better have my)
Bitch better have my (Bitch better have my)
Bitch better have my money
Bitch better have my money
Bitch better have my money
Bitch, bitch, bitch better have my money
Yo, that bitch better have my money
Hold up
My money
Yo, my money
That bitch better have my money
Bitch better have my money', 89);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2413944, 'Consideration', '
I come flutterin'' in from Neverland
Time can never stop me, no, no, no, no
I know you tried to
I come ridin'' in on a pale white horse
Handin'' out highs to less fortunate
I do advise you
Run it back, run it on back
When you''re breakin'' it down for me
''Cause I can''t hear you
Two times, run it on back
Will it ever make sense to me?

I got to do things my own way, darlin''
Will you ever let me?
Will you ever respect me? No
Do things my own way, darlin''
You should just let me
Why you ain''t ever let me grow?
When I look outside my window
I can''t get no peace of mind
When I look outside my window
I can''t get no peace of mind, oh
You might also like
Let me cover your shit in glitter
I could make it gold, gold
Heard you tryna sell your soul, baby
Word on the street, you run it low lately
I needed you to please give my reflection a break
From the face it''s seein'' now
Ooh, darlin'', would you mind givin'' my reflection a break
From the pain it''s feelin'' now?

I got to do things my own way, darlin''
You should just let me
Will you ever respect me? No
Do things my own way, darlin''
You should just let me
Why you ain''t ever let me grow?
When I look outside my window
I can''t get no peace of mind
When I look outside my window
I can''t get no peace of mind, oh
Get no peace
Get no peace
Get, get, gettin'' no peace, oh
Get no peace
Get, g-get no peace, oh', 89);


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

