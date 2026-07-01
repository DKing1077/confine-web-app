from openai import OpenAI
import json
import re


track_lyrics = [
"""I stay out too late
Got nothing in my brain
That's what people say, mm-mm
That's what people say, mm-mm

I go on too many dates
But I can't make 'em stay
At least that's what people say, mm-mm
That's what people say, mm-mm

But I keep cruisin'
Can't stop, won't stop movin'
It's like I got this music in my mind
Sayin', "It's gonna be alright"

'Cause the players gonna play, play, play, play, play
And the haters gonna hate, hate, hate, hate, hate
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

Heartbreakers gonna break, break, break, break, break
And the fakers gonna fake, fake, fake, fake, fake
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

I never miss a beat
I'm lightnin' on my feet
And that's what they don't see, mm-mm
That's what they don't see, mm-mm

I'm dancin' on my own (dancin' on my own)
I make the moves up as I go (moves up as I go)
And that's what they don't know, mm-mm
That's what they don't know, mm-mm

But I keep cruisin'
Can't stop, won't stop groovin'
It's like I got this music in my mind
Sayin', "It's gonna be alright"

'Cause the players gonna play, play, play, play, play
And the haters gonna hate, hate, hate, hate, hate
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

Heartbreakers gonna break, break, break, break, break
And the fakers gonna fake, fake, fake, fake, fake
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

Shake it off, I shake it off
I, I, I shake it off, I shake it off
I, I, I shake it off, I shake it off
I, I, I shake it off, I shake it off (whoo-hoo-hoo)

Hey, hey, hey
Just think, while you've been gettin' down and out about the liars
And the dirty, dirty cheats of the world
You could've been gettin' down to this sick beat

My ex-man brought his new girlfriend
She's like, "Oh my God!" but I'm just gonna shake
And to the fella over there with the hella good hair
Won't you come on over, baby? We can shake, shake, shake (yeah)
Yeah, oh, oh

'Cause the players gonna play, play, play, play, play
And the haters gonna hate, hate, hate, hate, hate (haters gonna hate)
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

Heartbreakers gonna break, break, break, break, break (mm)
And the fakers gonna fake, fake, fake, fake, fake (and fake and fake and fake)
Baby, I'm just gonna shake, shake, shake, shake, shake
I shake it off, I shake it off (whoo-hoo-hoo)

Shake it off, I shake it off
I, I, I shake it off, I shake it off
I, I, I shake it off, I shake it off
I, I, I shake it off (yeah), I shake it off (whoo-hoo-hoo)

Shake it off, I shake it off
I, I, I shake it off, I shake it off (you got to)
I, I, I shake it off, I shake it off
I, I, I shake it off, I shake it off""",

"""For all the times that you rained on my parade
And all the clubs you get in using my name
You think you broke my heart, oh girl, for goodness' sake
You think I'm crying on my own, well, I ain't

And I didn't wanna write a song
'Cause I didn't want anyone thinkin' I still care, I don't, but
You still hit my phone up
And baby, I'll be movin' on
And I think you should be somethin' I don't wanna hold back
Maybe you should know that

My mama don't like you and she likes everyone
And I never like to admit that I was wrong
And I've been so caught up in my job
Didn't see what's going on, but now I know
I'm better sleeping on my own

'Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I'm still holdin' on to somethin'
You should go and love yourself

But when you told me that you hated my friends
The only problem was with you and not them
And every time you told me my opinion was wrong
And tried to make me forget where I came from

And I didn't wanna write a song
'Cause I didn't want anyone thinkin' I still care, I don't, but
You still hit my phone up
And baby, I'll be movin' on
And I think you should be somethin' I don't wanna hold back
Maybe you should know that

My mama don't like you and she likes everyone
And I never like to admit that I was wrong
And I've been so caught up in my job
Didn't see what's going on, but now I know
I'm better sleeping on my own

'Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I'm still holdin' on to somethin'
You should go and love yourself

For all the times that you made me feel small
I fell in love, now I feel nothin' at all
I never felt so low and I was vulnerable
Was I a fool to let you break down my walls?

'Cause if you like the way you look that much
Oh baby, you should go and love yourself
And if you think that I'm still holdin' on to somethin'
You should go and love yourself

'Cause if you like the way you look that much
Oh baby, you should go and love yourself (yeah)
And if you think (you think) that I'm (that I'm)
Still holdin' on to somethin' (holdin' on, no)
You should go and love yourself""",

"""Yeah
Hey, hey
Yeah

Ashes to ashes, dust to dust
The dustiest niggas been fuckin' with us
Am I a GOAT? Well, probably not
I probably was, but you probably forgot
My white label had to go white label shit
When he stepped out his body and finally got hot
Hand me the tools like I'm pickin' a lock
Me and white bitches been kissin' a lot

My honor comes from the shit that I do for the ones that I love
It's between 'em and I
Your honor comes to the court, and he offers a plea deal
So that you could cut off some time
Nowadays, y'all don't wan' put in no work
Y'all just wan' jump to the front of the line
And hurry and run out the nine

Baby boy, plеase
I heard what you said to lil' bro about me
Yеah, and when you run into the Iceman
What you gon' do except freeze?
You not 'bout to squeeze, you not in the streets
I'm cuttin' niggas off at the knees
They ain't on standin' on business with me

If I'm lyin', I'm flyin' economy, give me a motherfuckin' seat
If I'm lyin', I'm flyin' economy, I bet I know who I see
You know how I fly 'cause I land at the beach
When you land, you can see me
You whisper my name 'cause the way that it carry, you can't even speak
Yeah, you can't even speak

Whisper my name and don't say it too loud
'Cause you gotta come here and you know I pop out
We turnt up Coachella, had boys backin' down
And we might do the same if we touch Rolling Loud
If you my nigga, then say that, my nigga
Like, "What's up, my crodie? Come hug me right now"
Come up to me and get one of them out
'Cause you know all these niggas been countin' me out

Okay, okay
You gotta whisper my name
Yeah, hey
You gotta whisper my name
Yeah, hey

Yeah (whisper my name like the ghost of me)
Yeah
Ay, ay

I'm doing my big one, you doin' a little one
What kinda man are you? A middle one
Yeah, my brother said he want a blue Bim', I'ma get him one (counted me out)
My new ting don't know how I live, she shoppin' at Erewhon
My brother got no fuck to give, he poppin' at everyone

This ain't fixable smoke when you see us, I'll sit in with Farrakhan, nigga
This shit like the bag that you bring on the plane, it's gon' carry on (counted me out)
These boys dress up and think that they somebody, shit is like Comic-Con
My YGs are fastin' and prayin', you lucky it's Ramadan
Otherwise, they would be posted outside like the Pentagon
You niggas be hittin' the 'net for some love, you a tennis ball (counted me out)
I take 500K down to dinner, I never could learn shit from none of y'all

Whisper my name and don't say it too loud
'Cause you gotta come here and you know I pop out
We turned up Coachella, had boys backin' down
And we might do the same if we touch Rolling Loud
If you my nigga, then say that, my nigga
Like, "What's up, my crodie? Come hug me right now" (counted me out)
Come up to me and get one of them out
'Cause you know all these niggas been countin' me out

Okay, okay (whisper my name like the ghost of me)
(Counted me out)
Okay, you gotta whisper my name
Yeah, hey (counted me out)
Okay, you gotta whisper my name
(Counted me out)
(Thought I was gone)
(Counted me out)"""
]


def classify_search_messages(search):
    return [
        {
            "role": "system",
            "content": (
                "Classify the search input into the correct artist and track names:\n\n"
                "Schema:\n"
                "{\n"
                '  "artist": string\n'
                '  "track": string, None\n'
                "}\n\n"
                "Rules:\n"
                "- Return the artist and track name exactly the same as its stored on spotify, search and check its the same\n"
                "- Return JSON ONLY\n"
                "- Do NOT include markdown.\n"
                "- Do NOT wrap output in ``` or ```json.\n\n"
                "Make sure you carefully check and search for an artists name in the input\n"
                "E.G logic - everyday should not be returned as track : logic everyday\n"
                "Make sure to place apostrophes exactly the same as its stored on spotify, search and check its the same\n"
                "E.G drake - gods plan should return the track name : God's Plan\n"
                "Make sure to capitalize the letters exactly the same as its stored on spotify, search and check its the same\n"
                "E.G \"NOKIA\" not \"nokia\" \"thank u, next\" not \"Thank you next\"\n"
                "Make sure you carefully check and search for the name of a track in the input\n"
                "E.G \"drake\" is just the name of an artist and the track should be returned as None"
            )
        },
        {"role": "user", "content": search},
    ]


def classify_concepts_message(track_lyrics):
    return [
        {
            "role": "user", "content": track_lyrics,
        }
    ]


def classify_semantics_message(track_lyrics):
    return [
        {
            "role": "user", "content": track_lyrics,
        }
    ]


class AIService:
    def __init__(self, api_key, model):
        self.api_key = api_key
        self.model = model
        self.base_url = "https://openrouter.ai/api/v1"
        self.client = OpenAI(
            base_url=self.base_url,
            api_key=self.api_key,
        )

    def parse_search(self, search):
        messages = classify_search_messages(search)
        response = self.client.chat.completions.create(
            model=self.model,
            messages=messages,
            temperature=0
        )
        res = response.choices[0].message.content
        res = re.sub(r"^```(?:json)?\s*", "", res.strip())
        res = re.sub(r"\s*```$", "", res.strip())

        try:
            search_params = json.loads(res)
        except json.JSONDecodeError:
            return None

        artist_input = search_params['artist']
        track_input = search_params['track']

        if track_input == 'None':
            track_input = None

        return artist_input, track_input


    def get_concepts(self, track_lyrics):
        messages = classify_concepts_message(track_lyrics)
        response = self.client.chat.completions.create(
            model=self.model,
            messages=messages,
            temperature=0
        )
        print(response)
        return response


    def get_semantics(self, track_lyrics):
        messages = classify_semantics_message(track_lyrics)
        response = self.client.chat.completions.create(
            model=self.model,
            messages=messages,
            temperature=0
        )
        print(response)
        return response


print(len(track_lyrics))
ai_client = AIService(api_key='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', model='deepseek/deepseek-chat')

concepts = ai_client.get_concepts(track_lyrics)
semantics = ai_client.get_semantics(track_lyrics)






