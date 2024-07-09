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
INSERT INTO public.artists (id, name) VALUES (492, 'Big Sean');
INSERT INTO public.artists (id, name) VALUES (7922, 'Logic');
INSERT INTO public.artists (id, name) VALUES (68, 'Kid Cudi');
INSERT INTO public.artists (id, name) VALUES (1177, 'Taylor Swift');
INSERT INTO public.artists (id, name) VALUES (357, 'Justin Bieber');
INSERT INTO public.artists (id, name) VALUES (8351, 'Coldplay');
INSERT INTO public.artists (id, name) VALUES (2300, 'Adele');
INSERT INTO public.artists (id, name) VALUES (72, 'Kanye West');
INSERT INTO public.artists (id, name) VALUES (1167, 'Johnny Cash');
INSERT INTO public.artists (id, name) VALUES (110, 'Pharrell Williams');
INSERT INTO public.artists (id, name) VALUES (32137, 'Bring Me The Horizon');
INSERT INTO public.artists (id, name) VALUES (615550, 'Billie Eilish');
INSERT INTO public.artists (id, name) VALUES (396565, 'XXXTENTACION');
INSERT INTO public.artists (id, name) VALUES (1581, 'Linkin Park');
INSERT INTO public.artists (id, name) VALUES (569922, 'Lil Peep');


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
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7076626, 'All Too Well (10 Minute Version) (Taylor’s Version) [From The Vault]', '
I walked through the door with you, the air was cold
But somethin'' ''bout it felt like home somehow
And I left my scarf there at your sister''s house
And you''ve still got it in your drawer, even now

Oh, your sweet disposition and my wide-eyed gaze
We''re singin'' in the car, getting lost upstate
Autumn leaves fallin'' down like pieces into place
And I can picture it after all these days

And I know it''s long gone and
That magic''s not here no more
And I might be okay, but I''m not fine at all
Oh, oh, oh

''Causе there we arе again on that little town street
You almost ran the red ''cause you were lookin'' over at me
Wind in my hair, I was there
I remember it all too well

Photo album on the counter, your cheeks were turnin'' red
You used to be a little kid with glasses in a twin-sized bed
And your mother''s tellin'' stories ''bout you on the tee-ball team
You taught me ''bout your past, thinkin'' your future was me
And you were tossing me the car keys, "Fuck the patriarchy"
Keychain on the ground, we were always skippin'' town
And I was thinkin'' on the drive down, "Any time now
He''s gonna say it''s love," you never called it what it was
''Til we were dead and gone and buried
Check the pulse and come back swearin'' it''s the same
After three months in the grave
And then you wondered where it went to as I reached for you
But all I felt was shame and you held my lifeless frame
See Taylor Swift LiveGet tickets as low as $334You might also like
And I know it''s long gone and
There was nothing else I could do
And I forget about you long enough
To forget why I needed to

''Cause there we are again in the middle of the night
We''re dancin'' ''round the kitchen in the refrigerator light
Down the stairs, I was there
I remember it all too well
And there we are again when nobody had to know
You kept me like a secret, but I kept you like an oath
Sacred prayer and we''d swear
To remember it all too well, yeah

Well, maybe we got lost in translation, maybe I asked for too much
But maybe this thing was a masterpiece ''til you tore it all up
Runnin'' scared, I was there
I remember it all too well
And you call me up again just to break me like a promise
So casually cruel in the name of bein'' honest
I''m a crumpled-up piece of paper lyin'' here
''Cause I remember it all, all, all
They say all''s well that ends well, but I''m in a new hell
Every time you double-cross my mind
You said if we had been closer in age, maybe it would''ve been fine
And that made me want to die
The idea you had of me, who was she?
A never-needy, ever-lovely jewel whose shine reflects on you
Not weepin'' in a party bathroom
Some actress askin'' me what happened, you
That''s what happened, you
You who charmed my dad with self-effacing jokes
Sippin'' coffee like you''re on a late-night show
But then he watched me watch the front door all night, willin'' you to come
And he said, "It''s supposed to be fun turning twenty-one"

Time won''t fly, it''s like I''m paralyzed by it
I''d like to be my old self again, but I''m still tryin'' to find it
After plaid shirt days and nights when you made me your own
Now you mail back my things and I walk home alone
But you keep my old scarf from that very first week
''Cause it reminds you of innocence and it smells like me
You can''t get rid of it
''Cause you remember it all too well, yeah

''Cause there we are again when I loved you so
Back before you lost the one real thing you''ve ever known
It was rare, I was there
I remember it all too well
Wind in my hair, you were there
You remember it all
Down the stairs, you were there
You remember it all
It was rare, I was there
I remember it all too well
And I was never good at tellin'' jokes, but the punch line goes
"I''ll get older, but your lovers stay my age"
From when your Brooklyn broke my skin and bones
I''m a soldier who''s returning half her weight
And did the twin flame bruise paint you blue?
Just between us, did the love affair maim you too?
''Cause in this city''s barren cold
I still remember the first fall of snow
And how it glistened as it fell
I remember it all too well

Just between us, did the love affair maim you all too well?
Just between us, do you remember it all too well?
Just between us, I remember it (Just between us) all too well
Wind in my hair, I was there, I was there (I was there)
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it all too well
Wind in my hair, I was there, I was there (Oh)
Down the stairs, I was there, I was there (I was there)
Sacred prayer, I was there, I was there
It was rare, you remember it (All too well)
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7394358, 'All Too Well (10 Minute Version) (Taylor’s Version) [Live Acoustic]', '
I walked through the door with you, the air was cold
But something ''bout it felt like home somehow
And I left my scarf there at your sister''s house
And you''ve still got it in your drawer, even now

Oh, your sweet disposition and my wide-eyed gaze
We''re singing in the car, getting lost upstate
Autumn leaves falling down like pieces into place
And I can picture it after all these days

And I know it''s long gone and
That magic''s not here no more
And I might be okay, but I''m not fine at all
Oh, oh, oh

''Cause there we are again on that little town street
You almost ran the red ''cause you were lookin'' over at me
Wind in my hair, I was there
I remember it all too well

Photo album on the counter, your cheeks were turning red
You used to be a little kid with glasses in a twin-sized bed
And your mother''s telling stories ''bout you on the tee-ball team
You told me ''bout your past, thinking your future was me
And you were tossing me the car keys, "Fuck the patriarchy"
Key chain on the ground, we were always skipping town
And I was thinking on the drive down, any time now
He''s gonna say it''s love, you never called it what it was
''Til we were dead and gone and buried
Check the pulse and come back swearing it''s the same
After three months in the grave
And then you wondered where it went to as I reached for you
But all I felt was shame and you held my lifeless frame
See Taylor Swift LiveGet tickets as low as $334You might also like
And I know it''s long gone and
There was nothing else I could do
And I forget about you long enough
To forget why I needed to

''Cause there we are again in the middle of the night
We''re dancing ''round the kitchen in the refrigerator light
Down the stairs, I was there
I remember it all too well
And there we are again when nobody had to know
You kept me like a secret, but I kept you like an oath
Sacred prayer and we''d swear
To remember it all too well, yeah

Well, maybe we got lost in translation
Maybe I asked for too much
But maybe this thing was a masterpiece
''Til you tore it all up
Running scared, I was there
I remember it all too well
And you call me up again just to break me like a promise
So casually cruel in the name of being honest
I''m a crumpled up piece of paper lying here
''Cause I remember it all, all, all
They say all''s well that ends well, but I''m in a new Hell
Every time you double-cross my mind
You said if we had been closer in age maybe it would have been fine
And that made me want to die
The idea you had of me, who was she?
A never-needy, ever-lovely jewel whose shine reflects on you
Not weeping in a party bathroom
Some actress asking me what happened, you
That''s what happened, you
You who charmed my dad with self-effacing jokes
Sipping coffee like you''re on a late-night show
But then he watched me watch the front door all night, willing you to come
And he said, "It''s supposed to be fun turning twenty-one"

Time won''t fly, it''s like I''m paralyzed by it
I''d like to be my old self again, but I''m still trying to find it
After plaid shirt days and nights when you made me your own
Now you mail back my things and I walk home alone
But you keep my old scarf from that very first week
''Cause it reminds you of innocence and it smells like me
You can''t get rid of it
''Cause you remember it all too well, yeah

''Cause there we are again when I loved you so
Back before you lost the one real thing you''ve ever known
It was rare, I was there
I remember it all too well
Wind in my hair, you were there
You remember it all
Down the stairs, you were there
You remember it all
It was rare, I was there
I remember it all too well
And I was never good at telling jokes, but the punch line goes
"I''ll get older, but your lovers stay my age"
From when your Brooklyn broke my skin and bones
I''m a soldier who''s returning half her weight
And did the twin flame bruise paint you blue?
Just between us, did the love affair maim you, too?
''Cause in this city''s barren cold
I still remember the first fall of snow
And how it glistened as it fell
I remember it all too well

Just between us, did the love affair maim you all too well?
Just between us, do you remember it all too well?
Just between us, I remember it (Just between us), all too well
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it all too well
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it
Wind in my hair, I was there, I was there
Down the stairs, I was there, I was there
Sacred prayer, I was there, I was there
It was rare, you remember it all too well

I love you guys so much', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10024009, 'Fortnight', '
I was supposed to be sent away
But they forgot to come and get me
I was a functioning alcoholic
''Til nobody noticed my new aesthetic
All of this to say I hope you''re okay
But you''re the reason
And no one here''s to blame
But what about your quiet treason?

And for a fortnight there, we were forever
Run into you sometimes, ask about the weather
Now you''re in my backyard, turned into good neighbors
Your wife waters flowers, I wanna kill her

All my mornings are Mondays stuck in an endless February
I took the miracle move-on drug, the effects were temporary
And I love you, it''s ruining my life
I love you, it''s ruining my life
I touched you for only a fortnight
I touched you, but I touched you

And for a fortnight there, we were forever
Run into you sometimes, ask about the weather
Now you''re in my backyard, turned into good neighbors
Your wife waters flowers, I wanna kill her
And for a fortnight there, we were together
Run into you sometimes, comment on my sweater
Now you''re at the mailbox, turned into good neighbors
My husband is cheating, I wanna kill him
See Taylor Swift LiveGet tickets as low as $334You might also like
I love you, it''s ruining my life
I love you, it''s ruining my life
I touched you for only a fortnight
I touched you, I touched you
I love you, it''s ruining my life
I love you, it''s ruining my life
I touched you for only a fortnight
I touched you, I touched you

Thought of callin'' ya, but you won''t pick up
''Nother fortnight lost in America
Move to Florida, buy the car you want
But it won''t start up ''til you touch, touch, touch me
Thought of calling ya, but you won''t pick up
''Nother fortnight lost in America
Move to Florida, buy the car you want
But it won''t start up ''til I touch, touch, touch you', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5793984, '​cardigan', '
Vintage tee, brand new phone
High heels on cobblestones
When you are young, they assume you know nothing
Sequin smile, black lipstick
Sensual politics
When you are young, they assume you know nothing

But I knew you
Dancin'' in your Levi''s
Drunk under a streetlight, I
I knew you
Hand under my sweatshirt
Baby, kiss it better, I

And when I felt like I was an old cardigan
Under someone''s bed
You put me on and said I was your favorite

A friend to all is a friend to none
Chase two girls, lose the one
When you are young, they assume you know nothing
See Taylor Swift LiveGet tickets as low as $334You might also like
But I knew you
Playing hide-and-seek and
Giving me your weekends, I
I knew you
Your heartbeat on the High Line
Once in twenty lifetimes, I

And when I felt like I was an old cardigan
Under someone''s bed
You put me on and said I was your favorite

To kiss in cars and downtown bars
Was all we needed
You drew stars around my scars
But now I''m bleedin''

''Cause I knew you
Steppin'' on the last train
Marked me like a bloodstain, I
I knew you
Tried to change the ending
Peter losing Wendy, I
I knew you
Leavin'' like a father
Running like water, I
And when you are young, they assume you know nothing
But I knew you''d linger like a tattoo kiss
I knew you''d haunt all of my what-ifs
The smell of smoke would hang around this long
''Cause I knew everything when I was young
I knew I''d curse you for the longest time
Chasin'' shadows in the grocery line
I knew you''d miss me once the thrill expired
And you''d be standin'' in my front porch light
And I knew you''d come back to me
You''d come back to me
And you''d come back to me
And you''d come back

And when I felt like I was an old cardigan
Under someone''s bed
You put me on and said I was your favorite', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10024536, 'So Long, London', '
So (So) long (Long), London (London)
So (So) long (Long), London (London)
So (So) long (Long), London (London)
I saw in my mind fairy lights through the mist
I kept calm and carried the weight of the rift
Pulled him in tighter each time he was driftin'' away
My spine split from carrying us up the hill
Wet through my clothes, weary bones caught the chill
I stopped tryna make him laugh, stopped tryna drill the safe

Thinkin'', "How much sad did you think I had
Did you think I had in me?"
Oh, the tragedy
So long, London
You''ll find someone

I didn''t opt in to be your odd man out
I founded the club she''s heard great things about
I left all I knew, you left me at the house by the Heath
I stoppеd CPR, after all, it''s no use
The spirit was gonе, we would never come to
And I''m pissed off you let me give you all that youth for free
See Taylor Swift LiveGet tickets as low as $334You might also like
For so long, London
Stitches undone
Two graves, one gun
I''ll find someone

And you say I abandoned the ship
But I was going down with it
My white-knuckle dying grip
Holding tight to your quiet resentment
And my friends said it isn''t right to be scared
Every day of a love affair
Every breath feels like rarest air
When you''re not sure if he wants to be there

So how much sad did you think I had
Did you think I had in me?
How much tragedy?
Just how low did you
Think I''d go ''fore I''d self-implode?
''Fore I''d have to go be free?

You swore that you loved me, but where were the clues?
I died on the altar waitin'' for the proof
You sacrificed us to the gods of your bluest days
And I''m just getting color back into my face
I''m just mad as hell ''cause I loved this place for
So (So) long (Long), London (London)
Had (Had) a (A) good (Good) run (Run)
A moment (Moment) of warm sun (Sun)
But I''m (I''m) not (Not) the (The) one (One)
So (So) long (Long), London (London)
Stitches (Stitches) undone (Undone)
Two (Two) graves (Graves) one gun (Gun)
You''ll (You''ll) find (Find) someone', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (5793983, '​exile', '
I can see you standing, honey
With his arms around your body
Laughin'', but the joke''s not funny at all
And it took you five whole minutes
To pack us up and leave me with it
Holdin'' all this love out here in the hall

I think I''ve seen this film before
And I didn''t like the ending
You''re not my homeland anymore
So what am I defending now?
You were my town, now I''m in exile, seein'' you out
I think I''ve seen this film before

Ooh, ooh, ooh

I can see you starin'', honey
Like he''s just your understudy
Like you''d get your knuckles bloody for me
Second, third, and hundredth chances
Balancin'' on breaking branches
Those eyes add insult to injury
See Taylor Swift LiveGet tickets as low as $334You might also like
I think I''ve seen this film before
And I didn''t like the ending
I''m not your problem anymore
So who am I offending now?
You were my crown, now I''m in exile, seein'' you out
I think I''ve seen this film before
So I''m leaving out the side door
So step right out, there is no amount
Of crying I can do for you
All this time
We always walked a very thin line
You didn''t even hear me out (You didn''t even hear me out)
You never gave a warning sign (I gave so many signs)
All this time
I never learned to read your mind (Never learned to read my mind)
I couldn''t turn things around (You never turned things around)
''Cause you never gave a warning sign (I gave so many signs)
So many signs, so many signs
You didn''t even see the signs

I think I''ve seen this film before
And I didn''t like the ending
You''re not my homeland anymore
So what am I defending now?
You were my town, now I''m in exile, seein'' you out
I think I''ve seen this film before
So I''m leavin'' out the side door
So step right out, there is no amount
Of crying I can do for you
All this time
We always walked a very thin line
You didn''t even hear me out (Didn''t even hear me out)
You never gave a warning sign (I gave so many signs)
All this time
I never learned to read your mind (Never learned to read my mind)
I couldn''t turn things around (You never turned things around)
''Cause you never gave a warning sign (I gave so many signs)
You never gave a warning sign (All this time)
(So many times) I never learned to read your mind
(So many signs) I couldn''t turn things around (I couldn''t turn things around)
''Cause you never gave a warning sign (You never gave a warning sign)
You never gave a warning sign
Ah, ah', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10024578, 'The Tortured Poets Department', '
You left your typewriter at my apartment
Straight from the tortured poets department
I think some things I never say
Like, "Who uses typewriters anyway?"
But you''re in self-sabotage mode
Throwing spikes down on the road
But I''ve seen this episode and still loved the show
Who else decodes you?

And who''s gonna hold you like me?
And who''s gonna know you, if not me?
I laughed in your face and said
"You''re not Dylan Thomas, I''m not Patti Smith
This ain''t the Chelsea Hotel, we''rе modern idiots"
And who''s gonna hold you like me?

Nobody
No-fucking-body
Nobody

You smokеd, then ate seven bars of chocolate
We declared Charlie Puth should be a bigger artist
I scratch your head, you fall asleep
Like a tattooed golden retriever
But you awaken with dread
Pounding nails in your head
But I''ve read this one where you come undone
I chose this cyclone with you
See Taylor Swift LiveGet tickets as low as $334You might also like
And who''s gonna hold you like me?
(Who''s gonna hold you? Who''s gonna hold you?)
And who''s gonna know you like me?
(Who''s gonna know you?)
I laughed in your face and said
"You''re not Dylan Thomas, I''m not Patti Smith
This ain''t the Chelsea Hotel, we''re modern idiots"
And who''s gonna hold you like me?
(Who''s gonna hold you? Who''s gonna hold you?)

No-fucking-body
(Who''s gonna hold you? Who''s gonna hold you?)
Nobody
(Who''s gonna hold you? Gonna know you? Gonna troll you?)
Nobody

Sometimes, I wonder if you''re gonna screw this up with me
But you told Lucy you''d kill yourself if I ever leave
And I had said that to Jack about you, so I felt seen
Everyone we know understands why it''s meant to be
''Cause we''re crazy
So tell me, who else is gonna know me?
At dinner, you take my ring off my middle finger
And put it on the one people put wedding rings on
And that''s the closest I''ve come to my heart exploding
Who''s gonna hold you? (Who?)
Me
Who''s gonna know you? (Who?)
Me
And you''re not Dylan Thomas, I''m not Patti Smith
This ain''t the Chelsea Hotel, we''re two idiots
Who''s gonna hold you?

Who''s gonna hold you?
Who''s gonna hold you?
Who''s gonna hold you?
Who''s gonna hold you?
Who''s gonna hold you?
Who''s gonna hold you?
Who''s gonna hold you?
Gonna know you? Gonna troll you?

You left your typewriter at my apartment
Straight from the tortured poets department
Who else decodes you?', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4508914, 'Lover', '
We could leave the Christmas lights up ''til January
And this is our place, we make the rules
And there''s a dazzling haze, a mysterious way about you, dear
Have I known you twenty seconds or twenty years?
Can I go where you go?
Can we always be this close?
Forever and ever, ah
Take me out and take me home
You''re my, my, my, my lover

We could let our friends crash in the living room
This is our place, we make the call
And I''m highly suspicious that everyone who sees you wants you
I''ve loved you three summers now, honey, but I want ''em all
Can I go where you go?
Can we always be this close?
Forever and ever, ah
Take me out and take me home (Forever and ever)
You''re my, my, my, my lover
See Taylor Swift LiveGet tickets as low as $334You might also like
Ladies and gentlemen, will you please stand?
With every guitar string scar on my hand
I take this magnetic force of a man to be my lover
My heart''s been borrowed and yours has been blue
All''s well that ends well to end up with you
Swear to be overdramatic and true to my lover
And you''ll save all your dirtiest jokes for me
And at every table, I''ll save you a seat, lover
Can I go where you go?
Can we always be this close?
Forever and ever, ah
Take me out and take me home (Forever and ever)
You''re my, my, my, my
Oh, you''re my, my, my, my
Darling, you''re my, my, my, my lover', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (10024535, 'Down Bad', '
Did you really beam me up
In a cloud of sparkling dust
Just to do experiments on?
Tell me I was the chosen one
Showed me that this world is bigger than us
Then sent me back where I came from

For a moment, I knew cosmic love

Now I''m down bad, cryin'' at the gym
Everything comes out teenage petulance
"Fuck it if I can''t have him"
"I might just die, it would make no difference"
Down bad, wakin'' up in blood
Starin'' at the sky, come back and pick me up
Fuck it if I can''t have us
I might just not get up, I might stay

Down bad
Fuck it if I can''t have him
Down bad
Fuck it if I can''t have him
See Taylor Swift LiveGet tickets as low as $334You might also like
Did you take all my old clothes
Just to leave me here, naked and alone
In a field in my same old town
That somehow seems so hollow now?
They''ll say I''m nuts if I talk about
The existence of you

For a moment, I was heavenstruck

Now I''m down bad, cryin'' at the gym (Cryin'' at the gym)
Everything comes out teenage petulance
"Fuck it if I can''t have him" (Fuck it if I can''t have him)
"I might just die, it would make no difference"
Down bad, wakin'' up in blood (Wakin'' up in blood)
Starin'' at the sky, come back and pick me up
Fuck it if I can''t have us
I might just not get up, I might stay

Down bad (Like I lost my twin)
Fuck it if I can''t have him (Down bad)
Down bad (Wavin'' at the ship)
Fuck it if I can''t have him
I loved your hostile takeovers
Encounters closer and closer
All your indecent exposures
How dare you say that it''s—
I''ll build you a fort on some planet
Where they can all understand it
How dare you think it''s romantic
Leaving me safe and stranded
''Cause fuck it, I was in love
So fuck you if I can''t have us
''Cause fuck it, I was in love

Now I''m down bad, cryin'' at the gym (Cryin'' at the gym)
Everything comes out teenage petulance
"Fuck it if I can''t have him" (Can''t have him)
"I might just die, it would make no difference"
Down bad, wakin'' up in blood (Wakin'' up in blood)
Starin'' at the sky, come back and pick me up
Fuck it if I can''t have us
I might just not get up, I might stay

Down bad (Like I lost my twin)
Fuck it if I can''t have him (I''m down bad)
Down bad (Wavin'' at the ship)
Fuck it if I can''t have him
Like I lost my twin
Fuck it if I can''t have him
Down bad (Wavin'' at the ship)
Fuck it if I can''t have him', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (9538404, 'Is It Over Now? (Taylor’s Version) [From The Vault]', '
(Is it? Is it? Is it? Is it? Is it?)

Once the flight had flown (Uh-huh)
With the wilt of the rose (Uh-huh)
I slept all alone (Uh-huh)
You still wouldn''t go

Let''s fast forward to three hundred takeout coffees later
I see your profile and your smile on unsuspecting waiters
You dream of my mouth before it called you a lying traitor
You search in every maiden''s bed for somethin'' greater, baby

Was it over when she laid down on your couch?
Was it over when he unbuttoned my blouse?
"Come here," I whispered in your ear
In your dream as you passеd out, baby
Was it over then? And is it over now?

(Is it? Is it? Is it?)

Whеn you lost control (Uh-huh)
Red blood, white snow (Uh-huh)
Blue dress on a boat (Uh-huh)
Your new girl is my clone
See Taylor Swift LiveGet tickets as low as $334You might also like
And did you think I didn''t see you?
There were flashin'' lights
At least I had the decency
To keep my nights out of sight
Only rumors ''bout my hips and thighs
And my whispered sighs
Oh, Lord, I think about jumpin''
Off of very tall somethings
Just to see you come runnin''
And say the one thing I''ve been wanting, but no

Let''s fast forward to three hundred awkward blind dates later (Oh)
If she''s got blue eyes, I will surmise that you''ll probably date her (Oh, no)
You dream of my mouth before it called you a lying traitor (Oh)
You search in every model''s bed for somethin'' greater, baby

Was it over when she laid down on your couch?
Was it over when he unbuttoned my blouse?
"Come here," I whispered in your ear
In your dream as you passed out, baby
Was it over then? And is it over now?
Uh-huh
(Is it? Is it? Is it?)
Uh-huh
(Is it? Is it?)
Think I didn''t see you?
There were flashin'' lights
At least I had the decency
To keep my nights out of sight
Only rumors ''bout my hips and thighs
And my whispered sighs
Oh, Lord, I think about jumpin''
Off of very tall somethings
Just to see you come runnin'' (Runnin'')
And say the one thing I''ve been wanting, but no

(Flashin'' lights; Oh, Lord; Oh)
Let''s fast forward to three hundred takeout coffees later (Oh)
(Flashin'' lights) I was hoping you''d be there
And say the one thing (Oh, Lord)
I''ve been wanting (Oh, Lord)
But no
(Was it? Was it? Was it? Was it? Was it? Was it?)', 1177);
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
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2332455, 'Hello', '
Hello, it''s me
I was wondering if, after all these years, you''d like to meet
To go over everything
They say that time''s supposed to heal ya
But I ain''t done much healin''
Hello, can you hear me?
I''m in California dreaming about who we used to be
When we were younger and free
I''ve forgotten how it felt before the world fell at our feet

There''s such a difference between us
And a million miles
Hello from the other side
I must''ve called a thousand times
To tell you I''m sorry for everything that I''ve done
But when I call, you never seem to be home
Hello from the outside
At least, I can say that I''ve tried
To tell you I''m sorry for breaking your heart
But it don''t matter, it clearly doesn''t tear you apart anymore

Hello, how are you?
It''s so typical of me to talk about myself, I''m sorry
I hope that you''re well
Did you ever make it out of that town
Where nothing ever happened?
See Adele LiveGet tickets as low as $96You might also like
It''s no secret that the both of us
Are running out of time
So hello from the other side (Other side)
I must''ve called a thousand times (Thousand times)
To tell you I''m sorry for everything that I''ve done
But when I call, you never seem to be home
Hello from the outside (Outside)
At least, I can say that I''ve tried (I''ve tried)
To tell you I''m sorry for breaking your heart
But it don''t matter, it clearly doesn''t tear you apart anymore

(Highs, highs, highs, highs, lows, lows, lows, lows) Ooh, anymore
(Highs, highs, highs, highs, lows, lows, lows, lows) Ooh, anymore
(Highs, highs, highs, highs, lows, lows, lows, lows) Ooh, anymore
(Highs, highs, highs, highs, lows, lows, lows, lows) Anymore
Hello from the other side (Other side)
I must''ve called a thousand times (Thousand times)
To tell you I''m sorry for everything that I''ve done
But when I call, you never seem to be home
Hello from the outside (Outside)
At least, I can say that I''ve tried (I''ve tried)
To tell you I''m sorry for breaking your heart
But it don''t matter, it clearly doesn''t tear you apart anymore
', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7260084, 'Easy On Me', '
There ain''t no gold in this river
That I''ve been washin'' my hands in forever
I know there is hope in these waters
But I can''t bring myself to swim
When I am drowning in this silence
Baby, let me in
Go easy on me, baby
I was still a child
Didn''t get the chance to
Feel the world around me
I had no time to choose what I chose to do
So go easy on me

There ain''t no room for things to change
When we are both so deeply stuck in our ways
You can''t deny how hard I''ve tried
I changed who I was to put you both first
But now I give up
Go easy on mе, baby
I was still a child
Didn''t get the chance to
Feel thе world around me
Had no time to choose what I chose to do
So go easy on me
See Adele LiveGet tickets as low as $96You might also like
I had good intentions
And the highest hopes
But I know right now
It probably doesn''t even show
Go easy on me, baby
I was still a child
I didn''t get the chance to
Feel the world around me
I had no time to choose what I chose to do
So go easy on me', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (51294, 'Someone Like You', '
I heard that you''re settled down
That you found a girl and you''re married now
I heard that your dreams came true
Guess she gave you things I didn''t give to you
Old friend, why are you so shy?
Ain''t like you to hold back or hide from the light

I hate to turn up out of the blue, uninvited
But I couldn''t stay away, I couldn''t fight it
I had hoped you''d see my face
And that you''d be reminded that for me, it isn''t over

Never mind, I''ll find someone like you
I wish nothing but the best for you, too
Don''t forget me, I beg
I remember you said
Sometimes it lasts in love, but sometimes it hurts instead
Sometimes it lasts in love, but sometimes it hurts instead

You know how the time flies
Only yesterday was the time of our lives
We were born and raised in a summer haze
Bound by the surprise of our glory days
See Adele LiveGet tickets as low as $96You might also like
I hate to turn up out of the blue, uninvited
But I couldn''t stay away, I couldn''t fight it
I had hoped you''d see my face
And that you''d be reminded that for me, it isn''t over

Never mind, I''ll find someone like you
I wish nothing but the best for you, too
Don''t forget me, I beg
I remember you said
Sometimes it lasts in love, but sometimes it hurts instead

Nothing compares, no worries or cares
Regrets and mistakes, they''re memories made
Who would have known how bittersweet this would taste?

Never mind, I''ll find someone like you
I wish nothing but the best for you
Don''t forget me, I beg
I remember you said
Sometimes it lasts in love, but sometimes it hurts instead
Never mind, I''ll find someone like you
I wish nothing but the best for you, too
Don''t forget me, I beg
I remember you said
Sometimes it lasts in love, but sometimes it hurts instead
Sometimes it lasts in love, but sometimes it hurts instead', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (62493, 'Set Fire to the Rain', '

I let it fall, my heart
And as it fell, you rose to claim it
It was dark, and I was over
Until you kissed my lips and you saved me
My hands, they were strong
But my knees were far too weak
To stand in your arms
Without falling to your feet

But there''s a side to you
That I never knew, never knew
All the things you''d say
They were never true, never true
And the games you''d play
You would always win, always win

But I set fire to the rain
Watched it pour as I touched your face
Well, it burned while I cried
''Cause I heard it screamin'' out your name
Your name
See Adele LiveGet tickets as low as $96You might also like
When I lay with you
I could stay there, close my eyes
Feel you here forever
You and me together, nothing is better

''Cause there''s a side to you
That I never knew, never knew
All the things you''d say
They were never true, never true
And the games you''d play
You would always win, always win

But I set fire to the rain
Watched it pour as I touched your face
Well, it burned while I cried
''Cause I heard it screamin'' out your name
Your name
I set fire to the rain
And I threw us into the flames
When we fell, somethin'' died
''Cause I knew that that was the last time
The last time
Sometimes, I wake up by the door
That heart you caught must be waitin'' for you
Even now, when we''re already over
I can''t help myself from lookin'' for you

I set fire to the rain
Watched it pour as I touched your face
Well, it burned while I cried
''Cause I heard it screamin'' out your name
Your name
I set fire to the rain
And I threw us into the flames
When we fell, somethin'' died
''Cause I knew that that was the last time
The last time

Oh
Oh, no
Let it burn
Oh
Let it burn
Let it burn', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (61289, 'Rolling in the Deep', '
There''s a fire starting in my heart
Reaching a fever pitch and it''s bringing me out the dark
Finally, I can see you crystal clear
Go ahead and sell me out and I''ll lay your shit bare
See how I''ll leave with every piece of you
Don''t underestimate the things that I will do
There''s a fire starting in my heart
Reaching a fever pitch, and it''s bringing me out the dark

The scars of your love remind me of us
They keep me thinkin'' that we almost had it all
The scars of your love, they leave me breathless
I can''t help feeling

We could''ve had it all (You''re gonna wish you never had met me)
Rolling in the deep (Tears are gonna fall, rolling in the deep)
You had my heart inside of your hand (You''re gonna wish you never had met me)
And you played it to the beat (Tears are gonna fall, rolling in the deep)

Baby, I have no story to be told
But I''ve heard one on you, now I''m gonna make your head burn
Think of me in the depths of your despair
Make a home down there, as mine sure won''t be shared
See Adele LiveGet tickets as low as $96You might also like
(You''re gonna wish you never had met me) The scars of your love remind me of us
(Tears are gonna fall, rolling in the deep) They keep me thinkin'' that we almost had it all
(You''re gonna wish you never had met me) The scars of your love, they leave me breathless
(Tears are gonna fall, rolling in the deep) I can''t help feeling

We could''ve had it all (You''re gonna wish you never had met me)
Rolling in the deep (Tears are gonna fall, rolling in the deep)
You had my heart inside of your hand (You''re gonna wish you never had met me)
And you played it to the beat (Tears are gonna fall, rolling in the deep)
Could''ve had it all
Rolling in the deep
You had my heart inside of your hand
But you played it with a beating

Throw your soul through every open door (Ooh woah, oh)
Count your blessings to find what you look for (Woah)
Turn my sorrow into treasured gold (Ooh woah, oh)
You''ll pay me back in kind and reap just what you sow

(You''re gonna wish you never had met me)
We could''ve had it all (Tears are gonna fall, rolling in the deep)
We could''ve had it all, yeah (You''re gonna wish you never had met me)
It all, it all, it all (Tears are gonna fall, rolling in the deep)
We could''ve had it all (You''re gonna wish you never had met me)
Rolling in the deep (Tears are gonna fall, rolling in the deep)
You had my heart inside of your hand (You''re gonna wish you never had met me)
And you played it to the beat (Tears are gonna fall, rolling in the deep)
Could''ve had it all (You''re gonna wish you never had met me)
Rolling in the deep (Tears are gonna fall, rolling in the deep)
You had my heart inside of your hand (You''re gonna wish you never had met me)
But you played it, you played it, you played it
You played it to the beat', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2336628, 'When We Were Young', '
Everybody loves the things you do
From the way you talk to the way you move
Everybody here is watching you
''Cause you feel like home, you''re like a dream come true
But, if by chance, you''re here alone
Can I have a moment before I go?
''Cause I''ve been by myself all night long
Hoping you''re someone I used to know

You look like a movie, you sound like a song
My God, this reminds me of when we were young

Let me photograph you in this light in case it is the last time
That we might be exactly like we were before we realised
We were sad of getting old, it made us restless
It was just like a movie, it was just like a song

I was so scared to face my fears
Nobody told me that you''d be here
And I swear you''d moved overseas
That''s what you said when you left me
See Adele LiveGet tickets as low as $96You might also like
You still look like a movie, you still sound like a song
My God, this reminds me of when we were young

Let me photograph you in this light in case it is the last time
That we might be exactly like we were before we realised
We were sad of getting old, it made us restless
It was just like a movie, it was just like a song

(When we were young)
(When we were young)
(When we were young)
(When we were young)

It''s hard to admit that (When we were young)
Everything just takes me back (When we were young)
To when you were there (When we were young)
To when you were there
And a part of me keeps holding on (When we were young)
Just in case it hasn''t gone (When we were young)
I guess I still care (When we were young)
Do you still care?
It was just like a movie, it was just like a song
My God, this reminds me of when we were young
(When we were young)
(When we were young)
(When we were young)
(When we were young)

Let me photograph you in this light in case it is the last time
(When we were young, when we were young)
That we might be exactly like we were before we realised
(When we were young, when we were young)
We were sad of getting old, it made us restless
(When we were young, when we were young)
Oh, I''m so mad I''m getting old, it makes me reckless
(When we were young, when we were young)
It was just like a movie, it was just like a song
When we were young', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2336647, 'All I Ask', '
I will leave my heart at the door
I won''t say a word
They''ve all been said before, you know
So why don''t we just play pretend
Like we''re not scared of what is coming next
Or scared of having nothing left?

Look, don''t get me wrong
I know there is no tomorrow
All I ask is

If this is my last night with you
Hold me like I''m more than just a friend
Give me a memory I can use
Take me by the hand while we do
What lovers do
It matters how this ends
''Cause what if I never love again?

I don''t need your honesty
It''s already in your eyes
And I''m sure my eyes, they speak for me
No one knows me like you do
And since you''re the only one that mattered
Tell me, who do I run to?
See Adele LiveGet tickets as low as $96You might also like
Look, don''t get me wrong
I know there is no tomorrow
All I ask is

If this is my last night with you
Hold me like I''m more than just a friend
Give me a memory I can use
Take me by the hand while we do
What lovers do
It matters how this ends
''Cause what if I never love again?

Let this be our lesson in love
Let this be the way we remember us
I don''t want to be cruel or vicious
And I ain''t asking for forgiveness
All I ask is

If this is my last night with you
Hold me like I''m more than just a friend
Give me a memory I can use
Take me by the hand while we do
What lovers do
It matters how this ends
''Cause what if I never love again?', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2336620, 'Send My Love (To Your New Lover)', '
Just the guitar
Okay, cool

This was all you, none of it me
You put your hands on, on my body and told me, mmm
You told me you were ready
For the big one, for the big jump
I''d be your last love, everlasting, you and me, mmm
That was what you told me

I''m giving you up
I''ve forgiven it all
You set me free

Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more
Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more
See Adele LiveGet tickets as low as $96You might also like
I was too strong, you were trembling
You couldn''t handle the hot heat rising (Rising), mmm
Baby, I''m still rising
I was running, you were walking
You couldn''t keep up, you were falling down (Down), mmm
There''s only one way down

I''m giving you up
I''ve forgiven it all
You set me free, oh

Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more
Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more

If you''re ready, if you''re ready
If you''re ready, I am ready
If you''re ready, if you''re ready
We both know we ain''t kids no more
No, we ain''t kids no more
I''m giving you up
I''ve forgiven it all
You set me free

Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more
Send my love to your new lover
Treat her better
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more

If you''re ready, if you''re ready
(Send my love to your new lover)
If you''re ready, are you ready?
(Treat her better)
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more
If you''re ready, if you''re ready
(Send my love to your new lover)
If you''re ready, are you ready?
(Treat her better)
We''ve gotta let go of all of our ghosts
We both know we ain''t kids no more', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (7392788, 'To Be Loved', '
I built a house for a love to grow
I was so young that it was hard to know
I''m as lost now as I was back then
Always make a mess of everything
It''s about time that I face myself
All I do is bleed into someone else
Painting walls with all my secret tears
Filling rooms with all my hopes and fears

But, oh, my
Oh, my
I''ll never learn if I never leap
I''ll always yearn if I never speak

To be loved and love at the highest count
Means to lose all the things I can''t live without
Let it be known that I will choose to lose
It''s a sacrifice, but I can''t live a lie
Let it be known, let it be known that I tried

I''m so afraid, but I''m open wide
I''ll be the one to catch myself this time
Tryna learn to lean into it all
Ain''t it funny how the mighty fall?
Looking back, I don''t regret a thing
Yeah, I took some bad turns that I am owning
I''ll stand still and let the storm pass by
Keep my heart safe till the time feels right
See Adele LiveGet tickets as low as $96You might also like
But, oh, my
Oh, my
I''ll never learn if I never leap
I''ll always yearn if I never speak

To be loved and love at the highest count
Means to lose all the things I can''t live without
Let it be known that I will choose to lose
It''s a sacrifice, but I can''t live a lie
Let it be known

Let it be known that I cried for you
Even started lying to you
What a thing to do
All because I wanted

To be loved and love at the highest count
Means to lose all the things I can''t live without
Let it be known, known, known
That I will choose, I will lose
It''s a sacrifice, but I can''t live a lie
Let it be known
Let it be known that I tried, that I tried
Let it be known that I tried', 2300);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (90986, 'Skyfall', '
This is the end
Hold your breath and count to ten
Feel the Earth move, and then
Hear my heart burst again
For this is the end
I''ve drowned and dreamt this moment
So overdue, I owe them
Swept away, I''m stolen

Let the sky fall
When it crumbles
We will stand tall
Face it all together
Let the sky fall
When it crumbles
We will stand tall
Face it all together at Skyfall
At Skyfall

Skyfall is where we start
A thousand miles and poles apart
Where worlds collide and days are dark
You may have my number, you can take my name
But you''ll never have my heart
See Adele LiveGet tickets as low as $96You might also like
Let the sky fall (Let the sky fall)
When it crumbles (When it crumbles)
We will stand tall (We will stand tall)
Face it all together
Let the sky fall (Let the sky fall)
When it crumbles (When it crumbles)
We will stand tall (We will stand tall)
Face it all together at Skyfall

Let the sky fall
When it crumbles
We will stand tall
Let the sky fall
When it crumbles
We will stand tall

Where you go I go
What you see I see
I know I''d never be me without the security
Of your loving arms keeping me from harm
Put your hand in my hand and we''ll stand

Let the sky fall (Let the sky fall)
When it crumbles (When it crumbles)
We will stand tall (We will stand tall)
Face it all together
Let the sky fall (Let the sky fall)
When it crumbles (When it crumbles)
We will stand tall (We will stand tall)
Face it all together at Skyfall
Let the sky fall
We will stand tall
At Skyfall
Ooh', 2300);
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
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (525, 'Stronger', '

Work it, make it, do it, makes us
Harder, better, faster, stronger
N-Now-Now that, that don''t kill me
Can only make me stronger
I need you to hurry up now
''Cause I can''t wait much longer
I know I got to be right now
''Cause I can''t get much wronger
Man, I''ve been waitin'' all night now
That''s how long I been on ya
Work it harder, make it better
Do it faster, makes us stronger
(I need you right now, right now)
More than ever, hour after hour
Work—
(I need you right now, right now)

Let''s get lost tonight
You could be my black Kate Moss tonight
Play secretary, I''m the boss tonight
And you don''t give a fuck what they all say, right?
Awesome, the Christian in Christian Dior
Damn, they don''t make ''em like this anymore
I ask, ''cause I''m not sure
Do anybody make real shit anymore?
Bow in the presence of greatness
''Cause right now, thou hast forsaken us
You should be honored by my lateness
That I would even show up to this fake shit
So go ahead, go nuts, go apeshit
''Specially in my Pastellé, on my Bape shit
Act like you can''t tell who made this
New Gospel, homie, take six
And take this, haters
You might also like
N-Now-Now that, that don''t kill me
Can only make me stronger
I need you to hurry up now
''Cause I can''t wait much longer
I know I got to be right now
''Cause I can''t get much wronger
Man, I''ve been waitin'' all night now
That''s how long I been on ya
Work it harder, make it better
Do it faster, makes us stronger
(I need you right now, now)
More than ever, hour after hour
Work—
(I need you right now, right now)
Me likey

I don''t know if you got a man or not
If you made plans or not
If God put me in your plans or not
I''m trippin'', this drink got me sayin'' a lot
But I know that God put you in front of me
So how the hell could you front on me?
There''s a thousand you''s, there''s only one of me
I''m trippin'', I''m caught up in the moment, right?
''Cause it''s Louis Vuitton Don night
So we gon'' do everything that Kan'' like
Heard they''d do anything for a Klondike
Well, I''d do anything for a blonde dyke
And she''ll do anything for the limelight
And we''ll do anything when the time''s right
Uh, baby, you''re makin'' it
Harder, better, faster, stronger (Oh)
N-Now th-that, that don''t kill me (Oh)
Can only make me stronger (Oh)
I need you to hurry up now (Oh)
''Cause I can''t wait much longer (Oh)
I know I got to be right now (Oh)
''Cause I can''t get much wronger (Oh)
Man, I''ve been waitin'' all night now
That''s how long I been on ya
Work it harder, make it better
Do it faster, makes us stronger
(I need you right now, now)
More than ever, hour after hour
Work is never over
(I need you right now, right now)

You know how long I''ve been on ya
Since Prince was on Apollonia
Since O.J. had Isotoners
Don''t act like I never told ya
Work it, work is never over
Don''t act like I never told ya
Harder, work is never over
Uh, don''t act like I never told ya
Don''t act like I never told ya
Don''t act like I never told ya
Uh, baby, you''re makin'' it
Harder, better, faster, stronger
N-Now-Now that, that don''t kill me
Can only make me stronger
I need you to hurry up now
''Cause I can''t wait much longer
I know I got to be right now
''Cause I can''t get much wronger
Man, I''ve been waitin'' all night now
That''s how long I been on ya
Work it harder, make it better
Do it faster, makes us stronger
(I need you right now, now)
More than ever, hour after hour
Work is never over
(I need you right now, right now)
Work it harder, make it better
Do it faster, makes us stronger
(I need you right now, now)
More than ever, hour after hour
Work is never over
(I need you right now, right now)

You know how long I''ve been on ya
Since Prince was on Apollonia
Since O.J. had Isotoners
Don''t act like I never told ya
You know how long I''ve been on ya
Since Prince was on Apollonia
Since O.J. had Isotoners
Don''t act like I never told ya

Told ya, told ya
Never told ya, told ya, told ya
Never told ya, told ya, told ya
Never told ya, told ya, told ya
Never told ya
Never over (W—), never over (Ha—)
Never over (Fa—), never over (St—)
Never over, never over
Never over
Harder, better, faster, stronger
Work it harder, make it better
Do it faster, makes us stronger
More than ever, hour after hour
Work is never over
Work it harder, make it better
Do it faster, makes us stronger
More than ever, hour after hour
Work is never over
Work it harder, make it better
Do it faster, makes us stronger
More than ever, hour after hour
Work is never over
Work it harder, make it better
Do it faster, makes us stronger
More than ever, hour after hour
Work is never over', 72);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (1139320, 'You Are My Sunshine', '
The other night dear, as I lay sleeping
I dreamed I held you in my arms
When I awoke, dear, I was mistaken
So I bowed my head and I cried

You are my sunshine, my only sunshine
You make me happy when skies are gray
You''ll never know, dear, how much I love you
Please don''t take my sunshine away


I''ve always loved you and made you happy
And nothing else could come between
But now you''ve left me to love another
You have shattered all of my dreams

You are my sunshine, my only sunshine
You make me happy when skies are gray
You''ll never know, dear, how much I love you
Please don''t take my sunshine away
You might also like
(I always hated that third verse)
*Laughter*
It was a nice short version
Do you wanna- uh, pick it up?
I''t''s alright (It''s good)
(We got a short version)
It might have that other verse on it in another take
Well, I''ll tell you what... Let''s... uhm...
Well, if I feel like my song''s a song... *Laughter*
It don''t care... (There you go!)
I don''t care if it''s short
And I feel like my song''s a song
A pleasure! Two minutes... I''ve recorded songs two minutes
(They were huge hits!)
Have you got, uh, time on that?', 1167);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (85072, 'Hurt', '

I hurt myself today
To see if I still feel
I focus on the pain
The only thing that''s real
The needle tears a hole
The old familiar sting
Try to kill it all away
But I remember everything

What have I become
My sweetest friend?
Everyone I know
Goes away in the end
And you could have it all
My empire of dirt
I will let you down
I will make you hurt

I wear this crown of thorns
Upon my liar''s chair
Full of broken thoughts
I cannot repair
Beneath the stains of time
The feelings disappear
You are someone else
I am still right here
You might also like
What have I become
My sweetest friend?
Everyone I know
Goes away in the end
And you could have it all
My empire of dirt
I will let you down
I will make you hurt

If I could start again
A million miles away
I would keep myself
I would find a way', 1167);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (154031, 'Happy', '

It might seem crazy what I''m ''bout to say
Sunshine she''s here, you can take a break
I''m a hot air balloon that could go to space
With the air, like I don''t care, baby, by the way, huh

(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do

Here come bad news, talking this and that (Yeah!)
Well, give me all you got, don''t hold it back (Yeah!)
Well, I should probably warn ya, I''ll be just fine (Yeah!)
No offense to you, don’t waste your time, here''s why

(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do (Hey Come On Uh,)
You might also like
(Happy), Bring me down
Can''t nothing (Happy), bring me down
My level''s too high to (Happy), bring me down
Can''t nothing (Happy), bring me down, I said
(Let me tell you now)
(Happy, Happy, Happy, Happy,) Bring me down
Can''t nothing (Happy, Happy, Happy, Happy,) bring me down
My level''s too high to (Happy, Happy, Happy, Happy,) bring me down
Can''t nothing (Happy, Happy, Happy,) bring me down, I said

(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do
(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do (Hey Come On Uh,)
(Happy, Happy, Happy, Happy,) Bring me down
Can''t nothing (Happy, Happy, Happy, Happy,) bring me down
My level''s too high to (Happy, Happy, Happy, Happy,) bring me down
Can''t nothing (Happy, Happy, Happy,) bring me down, I said...
(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do
(Because I''m happy)
Clap along if you feel like a room without a roof
(Because I''m happy)
Clap along if you feel like happiness is the truth
(Because I''m happy)
Clap along if you know what happiness is to you
(Because I''m happy)
Clap along if you feel like that''s what you wanna do (Come on)', 110);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (548384, 'Drown', '
What doesn''t kill you makes you wish you were dead
Got a hole in my soul growing deeper and deeper, and I can''t take
One more moment of this silence, the loneliness is haunting me
And the weight of the world''s getting harder to hold up

It comes in waves, I close my eyes
Hold my breath and let it bury me
I''m not okay and it''s not alright
Won''t you drag the lake and bring me home again?

Who will fix me now? Dive in when I''m down?
Save me from myself, don''t let me drown
Who will make me fight? Drag me out alive?
Save me from myself, don''t let me drown

What doesn''t destroy you, leaves you broken instead
Got a hole in my soul growing deeper and deeper, and I can''t take
One more moment of this silence, the loneliness is haunting me
And the weight of the world''s getting harder to hold up

It comes in waves, I close my eyes
Hold my breath and let it bury me
I''m not okay and it''s not alright
Won''t you drag the lake and bring me home again?
You might also like
Who will fix me now? Dive in when I''m down?
Save me from myself, don''t let me drown
Who will make me fight? Drag me out alive?
Save me from myself, don''t let me drown

''Cause you know that I can''t do this on my own
''Cause you know that I can''t do this on my own
''Cause you know that I can''t do this on my own
(''Cause you know that I can''t do this on my)

Who will fix me now?
Who will fix me now?
Who will fix me now? Dive in when I''m down?
Save me from myself, don''t let me drown', 32137);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (123830, 'The House of Wolves', '
Show me a sign, show me a reason to give
A solitary fuck about your goddamn beliefs
I''m going blind, but one thing''s clear
Death is the only salvation you''ll feel
Brick by brick, by brick
Brick by brick, by brick

What you call faith, I call a sorry excuse
Cloak and daggers murder the truth
The bitter taste, there''s nothing else
I''ll bow for your king when he shows himself

Brick by brick, by brick
These walls begin to cave in
The house of wolves you built
Whispers in a thousand tongues

Show me your face, show me a reason to think
My soul can be saved if I sell you my sins
I''m going blind, but one thing''s clear
Death is the only salvation for me
You might also like
Brick by brick, by brick
These walls begin to cave in
The house of wolves you built
Whispers in a thousand tongues

The house of wolves you built
The house of wolves you built
The house of wolves you built
Will burn just like a thousand suns

Yeah
And when you die, the only kingdom you''ll see
Is two foot wide and six foot deep
Yeah
And when you die, the only kingdom you''ll see
Is two foot wide and six foot deep
Oh, when you die, the only kingdom you''ll see
Is two foot wide and six foot deep
Oh

Brick by brick, by brick
Brick by brick, by brick
Brick by brick, by brick
These walls begin to cave in
The house of wolves you built
Whispers in a thousand tongues
Brick by brick, by brick
These walls begin to cave in
The house of wolves you built
Will burn just like a thousand suns

You said you want me
Now I''m here, now I''m here, now I''m here
You said you want me
Now I''m here, now I''m here, now I''m here', 32137);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (98867, 'Love Story', '
We were both young when I first saw you
I close my eyes and the flashback starts
I''m standing there
On a balcony in summer air
See the lights, see the party, the ball gowns
See you make your way through the crowd
And say, "Hello"
Little did I know

That you were Romeo, you were throwing pebbles
And my daddy said, "Stay away from Juliet"
And I was crying on the staircase
Begging you, "Please don''t go," and I said

Romeo, take me somewhere we can be alone
I''ll be waiting, all there''s left to do is run
You''ll be the prince and I''ll be the princess
It''s a love story, baby, just say, "Yes"

So I sneak out to the garden to see you
We keep quiet ''cause we''re dead if they knew
So close your eyes
Escape this town for a little while, oh, oh
See Taylor Swift LiveGet tickets as low as $206You might also like
''Cause you were Romeo, I was a scarlet letter
And my daddy said, "Stay away from Juliet"
But you were everything to me
I was begging you, "Please don''t go," and I said

Romeo, take me somewhere we can be alone
I''ll be waiting, all there''s left to do is run
You''ll be the prince and I''ll be the princess
It''s a love story, baby, just say, "Yes"
Romeo, save me, they''re trying to tell me how to feel
This love is difficult, but it''s real
Don''t be afraid, we''ll make it out of this mess
It''s a love story, baby, just say, "Yes"

Oh, oh

But I got tired of waiting
Wondering if you were ever coming around
My faith in you was fading
When I met you on the outskirts of town and I said

"Romeo, save me, I''ve been feeling so alone
I keep waiting for you, but you never come
Is this in my head? I don''t know what to think"
He knelt to the ground and pulled out a ring, and said
"Marry me, Juliet, you''ll never have to be alone
I love you and that''s all I really know
I talked to your dad, go pick out a white dress
It''s a love story, baby, just say ''Yes''"
Oh, oh, oh
Oh, oh, oh
''Cause we were both young when I first saw you', 1177);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3484874, '​when the party’s over', '
Don''t you know I''m no good for you?
I''ve learned to lose you, can''t afford to
Tore my shirt to stop you bleedin''
But nothin'' ever stops you leavin''

Quiet when I''m coming home and I''m on my own
I could lie, say I like it like that, like it like that
I could lie, say I like it like that, like it like that

Don''t you know too much already?
I''ll only hurt you if you let me
Call me friend, but keep me closer (Call me back)
And I''ll call you when the party''s over

Quiet when I''m coming home and I''m on my own
And I could lie, say I like it like that, like it like that
Yeah, I could lie, say I like it like that, like it like that

But nothin'' is better sometimes
Once we''ve both said our goodbyes
Let''s just let it go
Let me let you go
See Billie Eilish LiveGet tickets as low as $120You might also like
Quiet when I''m coming home and I''m on my own
I could lie, say I like it like that, like it like that
I could lie, say I like it like that, like it like that', 615550);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (4271772, '​bad guy', '
White shirt now red, my bloody nose
Sleepin'', you''re on your tippy toes
Creepin'' around like no one knows
Think you''re so criminal
Bruises on both my knees for you
Don''t say thank you or please
I do what I want when I''m wanting to
My soul? So cynical

So you''re a tough guy
Like it really rough guy
Just can''t get enough guy
Chest always so puffed guy
I''m that bad type
Make your mama sad type
Make your girlfriend mad tight
Might seduce your dad type
I''m the bad guy
Duh

I''m the bad guy

I like it when you take control
Even if you know that you don''t
Own me, I''ll let you play the role
I''ll be your animal
My mommy likes to sing along with me
But she won''t sing this song
If she reads all the lyrics
She''ll pity the men I know
See Billie Eilish LiveGet tickets as low as $120You might also like
So you''re a tough guy
Like it really rough guy
Just can''t get enough guy
Chest always so puffed guy
I''m that bad type
Make your mama sad type
Make your girlfriend mad tight
Might seduce your dad type
I''m the bad guy
Duh

I''m the bad guy, duh
I''m only good at bein'' bad, bad
I like when you get mad
I guess I''m pretty glad that you''re alone
You said she''s scared of me?
I mean, I don''t see what she sees
But maybe it''s ''cause I''m wearing your cologne

I''m a bad guy
I''m, I''m a bad guy
Bad guy, bad guy
I''m a bad', 615550);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3430186, 'SAD!', '
Yeah

Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah
Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah

I gave her everything
She took my heart and left me lonely
I think broken heart''s contagious
I won''t fix, I''d rather weep
I''m lost then I''m found
But it''s torture bein'' in love
I love when you''re around
But I fuckin'' hate when you leave

Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah
Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah
You might also like

Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah
Who am I? Someone that''s afraid to let go, uh
You decide if you''re ever gonna let me know (Yeah)
Suicide if you ever try to let go, uh
I''m sad, I know, yeah, I''m sad, I know, yeah', 396565);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3453573, 'Moonlight', '
Yeah

Spotlight, uh, moonlight, uh
Nigga, why you trippin''? Get your mood right, uh
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, moonlight
Nigga, why you trippin''? Get your mood right
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, uh, moonlight
Nigga, why you trippin''? Get your mood right, uh
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, moonlight
Nigga, why you trippin''? Get your mood right
Shawty look good in the moonlight
All these pussy niggas so bad mind

Feel like I''m destined
I don''t need no Smith & Wesson, no
Boy, who you testin''?
Fuck a Scantron, here''s your lesson, oh
Knife in intestine
Takin'' shots at all your brethren, no
Feel like I''m damaged
Girl I know you fucking planned this
You might also like
All alone, call my phone, make me feel right
Girl you know when you call, make me feel right
All alone, call my phone, make me feel right
Girl you know when you call, make me feel right

Spotlight, uh, moonlight, uh
Nigga, why you trippin''? Get your mood right, uh
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, moonlight
Nigga, why you trippin''? Get your mood right
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, uh, moonlight
Nigga, why you trippin''? Get your mood right, uh
Shawty look good in the moonlight
All these pussy niggas so bad mind
Spotlight, moonlight
Nigga, why you trippin''? Get your mood right
Shawty look good in the moonlight
All these pussy niggas so bad mind', 396565);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3206881, 'Everybody Dies in Their Nightmares', '
Ooh, ahh, ahh, ahh
Don''t go, don''t go to sleep
Don''t go, stay up and
Don''t—

Tired of feelin'' like I''m trapped in my damn mind
Tired of feelin'' like I''m wrapped in a damn lie
Tired of feelin'' like my life is a damn game
Nigga really wanna die in the nighttime

Only time I feel pain, when I''m feelin'' love
That''s why it''s tatted on my face that I''m damn numb
Only tell you ''bout my mind when I''m all alone
That''s why I''m never really ''lone in the nighttime
Change hoes like clothes, I can''t get attached
''Cause these hoes fire starters like lit matches
I''ve been feelin'' really lost, duckin'' all attachments
I don''t really go outside ''cause I hate traffic
I don''t wanna go outside, get caught in traffic, traffic

Ooh, ahh, ahh, ahh
Don''t go, don''t go to sleep
Don''t go, stay up and
You might also like
Tired of feelin'' like I''m trapped in my damn mind
Tired of feelin'' like I''m wrapped in a damn lie
Tired of feelin'' like my life is a damn game
Nigga really wanna die in the nighttime
Tired of feelin'' like I''m trapped in my damn mind
Tired of feelin'' like I''m wrapped in a damn lie
Tired of feelin'' like my life is a damn game
Nigga really wanna die in the nighttime
Tired of feelin'' like I''m trapped in my damn mind
Tired of feelin'' like I''m wrapped in a damn lie
Tired of feelin'' like my life is a damn game
Nigga really wanna die in the nighttime
Nigga really wanna die in the nighttime
Nigga really wanna die in the nighttime
Nigga really wanna die in the nighttime, uh
Nigga really wanna die in the nighttime, uh
Nigga really wanna die in the nighttime

Don''t go to sleep
Don''t go, stay up and
Don''t go, don''t go to sleep
Don''t go, stay up and don''t
Ooh, ahh, ahh, ahh
Don''t go, don''t go to sleep
Don''t go, stay up and
Don''t', 396565);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3539284, 'Hope', '
Yeah
Rest in peace to all the kids that lost their lives in the Parkland shooting, this song is dedicated to you

Okay, she keep cryin'', she keep cryin'' every single night
Day and night, on my mind, please don''t kill the vibe
Oh no, I swear to God, I be in my mind
Swear I wanna die, yeah, when you cross my—
Said I wanna die, yuh, no, I''m not alright, yuh
I might start a riot, yuh, I''m so fuckin'' tired, yuh
So what''s up? What you say? Feelin'' good, I''m feelin'' great
Tired of the fuckin'' hate, stackin'' cheese all on my plate

So outside my misery, I think I''ll find
A way of envisioning a better life
For the rest of us, the rest of us
There''s hope for the rest of us, the rest of us

Okay, she keep cryin'', she keep cryin'' every single night
Day and night, on my mind, please don''t kill the vibe
Oh no, I swear to God, I be in my mind
Swear I wanna die, yeah, when you cross my—
Said I wanna die, yuh, no, I''m not alright, yuh
I might start a riot, yuh, I''m so fuckin'' tired, yuh
So what''s up? What you say? Feelin'' good, I''m feelin'' great
Tired of the fuckin'' hate, stackin'' cheese all on my plateYou might also like', 396565);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3577656, 'ALONE, PART 3', '
I can''t seem to find someone''s shoulder
Who will I rely on when it''s over?
Took a chance with you, it made me colder
Better on my own when it''s all over

So when I''m weak, who do I call?
My God, it hurts, I can''t be calm
What do I do? Where do I run?
I''m tired of hate, I''m tired of love
I dug my nails into my arms
She turned and laughed at all my scars
What is my worth?
What is my worth?

Gave my love a piece of me
She put my heart beneath her feet
She turned and left I question, "What''s my worth?"
Gave my love a piece of me
She put my heart beneath her feet
She turned and left I question, "What''s my worth?"
My worth, my worthYou might also like', 396565);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (49719, 'In the End', '
It starts with one

One thing, I don''t know why
It doesn''t even matter how hard you try
Keep that in mind, I designed this rhyme
To explain in due time, all I know
Time is a valuable thing
Watch it fly by as the pendulum swings
Watch it count down to the end of the day
The clock ticks life away, it''s so unreal
Didn''t look out below
Watch the time go right out the window
Tryin'' to hold on, d-didn''t even know
I wasted it all just to watch you go

I kept everything inside
And even though I tried, it all fell apart
What it meant to me will eventually be
A memory of a time when I tried so hard

I tried so hard and got so far
But in the end, it doesn''t even matter
I had to fall to lose it all
But in the end, it doesn''t even matter
You might also like
One thing, I don''t know why
It doesn''t even matter how hard you try
Keep that in mind, I designed this rhyme
To remind myself how I tried so hard
In spite of the way you were mockin'' me
Actin'' like I was part of your property
Remembering all the times you fought with me
I''m surprised it got so far
Things aren''t the way they were before
You wouldn''t even recognize me anymore
Not that you knew me back then
But it all comes back to me in the end

You kept everything inside
And even though I tried, it all fell apart
What it meant to me will eventually be
A memory of a time when I tried so hard

I tried so hard and got so far
But in the end, it doesn''t even matter
I had to fall to lose it all
But in the end, it doesn''t even matter
I''ve put my trust in you
Pushed as far as I can go
For all this, there''s only one thing you should know
I''ve put my trust in you
Pushed as far as I can go
For all this, there''s only one thing you should know

I tried so hard and got so far
But in the end, it doesn''t even matter
I had to fall to lose it all
But in the end, it doesn''t even matter', 1581);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (74998, 'Numb', '
I''m tired of being what you want me to be
Feeling so faithless, lost under the surface
I don''t know what you''re expecting of me
Put under the pressure of walking in your shoes

Caught in the undertow, just caught in the undertow
Every step that I take is another mistake to you
Caught in the undertow, just caught in the undertow

I''ve become so numb, I can''t feel you there
Become so tired, so much more aware
I''m becoming this, all I want to do
Is be more like me and be less like you

Can''t you see that you''re smothering me?
Holding too tightly, afraid to lose control
''Cause everything that you thought I would be
Has fallen apart, right in front of you

Caught in the undertow, just caught in the undertow
Every step that I take is another mistake to you
Caught in the undertow, just caught in the undertow
And every second I waste is more than I can take
You might also like
I''ve become so numb, I can''t feel you there
Become so tired, so much more aware
I''m becoming this, all I want to do
Is be more like me and be less like you

And I know
I may end up failing too
But I know
You were just like me with someone disappointed in you

I''ve become so numb, I can''t feel you there
Become so tired, so much more aware
I''m becoming this, all I want to do
Is be more like me and be less like you

I''ve become so numb, I can''t feel you there
I''m tired of being what you want me to be
I''ve become so numb, I can''t feel you there
I''m tired of being what you want me to be', 1581);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (2353006, 'Star Shopping', '
Wait right here
I''ll be back in the mornin''
I know that I''m not that important to you
But to me, girl, you''re so much more than gorgeous (Yeah)
So much more than perfect (Yeah)
Right now I know that I''m not really worth it
If you give me time, I could work on it
Give me some time while I work on it
Losin'' your patience, and, girl, I don''t blame you
The Earth''s in rotation, you''re waitin'' for me (Yeah)
Look at my face when I fuck on your waist
''Cause we only have one conversation a week
That''s why your friends always hatin'' on me
Fuck ''em though, I did this all by myself
Matter fact, I ain''t never asked no one for help
And that''s why I don''t pick up my phone when it rings
None of my exes is over Lil Peep
Nobody flexin'' as much as I be
That''s why she text me and tell me she love me
She know that someday I''ll be over the sea
Makin'' my money and smokin'' my weed
I think it''s funny, she open up to me, get comfortable with me
Once I got it comin'', I love her, she love me
I know that I''m nothing like someone her family want me to be
If I find a way, would you walk it with me?
Look at my face while you talkin'' to me
''Cause we only have one conversation a week
Can I get one conversation at least?
Shout out to everyone makin'' my beats, you helpin'' me preach
This music''s the only thing keepin'' the peace when I''m fallin'' to pieces
You might also like
Look at the sky tonight, all of the stars have a reason
A reason to shine, a reason like mine and I''m fallin'' to pieces
Look at the sky tonight, all of the stars have a reason', 569922);
INSERT INTO public.songs (id, name, lyrics, artist_id) VALUES (3175124, 'Save That Shit', '
(Yeah)

Fuck my life, can''t save that, girl
Don''t tell me you could save that shit
All she want is payback for the way I always play that shit
You ain''t gettin'' nothin'' that I''m sayin''
Don''t tell me you is
Nothin'' like them other motherfuckers
I can make you rich (I can make you rich)
I can make you this, baby, I can make you that
I can take you there, but baby, you won''t make it back
Growin'' sick of this and I don''t wanna make you sad
Do I make you scared? Baby, won''t you take me back?

Nothin'' like them other motherfuckers
I can make you rich (I can make you rich)
Nothin'' like them other motherfuckers
I can make you rich

Fuck my life, can''t save that, girl
Don''t tell me you could save that shit
All she want is payback for the way I always play that shit
You ain''t gettin'' nothin'' that I''m sayin''
Don''t tell me you is
Nothin'' like them other motherfuckers
I can (Make you rich), make you rich
I can make you this, baby, I can make you that
I can take you there, but baby, you won''t make it back
Growin'' sick of this and I don''t wanna make you sad
Do I make you scared? Baby, won''t you take me back?
You might also like
Down another lonely road, I go
Just another lonely road to home
I just wanna know, I just gotta know
Do you wanna glo? Baby, we could glo

Fuck my life, can''t save that, girl
Don''t tell me you could save that shit
All she want is payback for the way I always play that shit
You ain''t gettin'' nothin'' that I''m sayin''
Don''t tell me you is
Nothin'' like them other motherfuckers
I can make you rich (I can make you rich)
I can make you this, baby, I can make you that
I can take you there, but baby, you won''t make it back
Growin'' sick of this and I don''t wanna make you sad
Do I make you scared? Baby, won''t you take me back?

Do I make you scared? Baby, won''t you take me back?
Nothin'' like them other motherfuckers
I can make you rich (I can make you rich)', 569922);


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

