# Quick Gen and Effect — Full Transcript
> Auto-generated English YouTube transcript preserved verbatim with chapter markers and timestamps (Quick Gen and Effect tutorial by Keith Lostracco / IntentDev).
- **URL: https://www.youtube.com/watch?v=8oJbAK8lkBo**
- **Duration: 00:34:13 (2053s)**
- **Snippets: 548**

**Description:**
How to build a Generator and Effect in Luminosity
Link to video download:
https://drive.google.com/open?id=1jNxbsBKYk0SJRTgj75CbIqI0dcqojrVa

## Table of Contents (YouTube Chapters)

- [00:00:00 - 00:00:35] Intro
- [00:00:35 - 00:01:55] Creating an effect
- [00:01:55 - 00:03:20] Adding a new effect
- [00:03:20 - 00:04:50] Using the plugin
- [00:04:50 - 00:06:30] Updating the plugin
- [00:06:30 - 00:09:10] Fixing the plugin
- [00:09:10 - 00:12:10] Parameters
- [00:12:10 - 00:14:15] Create UI
- [00:14:15 - 00:15:40] Wipe Presets
- [00:15:40 - 00:29:20] Saving New Effect
- [00:29:20 - 00:34:13] Saving Gens

---

## Complete Timestamped Transcript

### [00:00:00] CHAPTER: Intro

**[00:00:15]** hi everyone I'm back I just thought I'd just do this last run-through of how to make a Jen and how to make an effect because I didn't do it at the end and I think Roo Gatto asked me or somebody did and I'll do this quick because it's kind of crucial okay so I think I'm gonna

### [00:00:35] CHAPTER: Creating an effect

**[00:00:38]** make a new method or I've never used this particular method but I think this is gonna be the easiest way for somebody to make an effect so you have the luminosity folder within that folder you have a folder called assets and within that you have a folder called components and in that you have effects Jen's and

**[00:01:00]** utilities utilities we don't care about so much but let's just start with effects effects so we have all the effects that appear in the browser in this folder so technically it shouldn't be a problem if I want to copy and paste that file and rename it my new effect and make sure that this

**[00:01:35]** extension or this fake double extension deal is still good so I basically made this secondary extension called LM effects so we know that this tox is an effect not generator so I've done that and this list

### [00:01:55] CHAPTER: Adding a new effect

**[00:01:57]** nothing's happened but if I do this my new effect should be there so it's right there and hopefully if everything's working like I said I've never done anything I never built an effect this way but I think this might be the well Peters got this new Peters got plugin designer but um and he built it and it's

**[00:02:22]** really nice and that probably will be the preferred way in the end but at the same time it's good to know what's under the hood and that might not be for a couple days so okay so we have this new effect in this list I got clipped channel 3 selected I'm just gonna unroot everything here just because it's kind

**[00:02:42]** of distracting and maybe this video or something um okay so I should do this clip channel to you I'm gonna drag mining effect on the clip channel to ah I had it selected so the name was a little long so that's something to note to make short names it's still called

### [00:03:20] CHAPTER: Using the plugin

**[00:03:20]** for acting it is frakked because we just literally copied it so now I'm gonna go in to the plug-in and hit f10 on the slider I'm gonna go up three levels or four levels and now I'm in I'm in the plug-in container called slot two and now I've I'm looking at the plug-in like right here this LM effects thought talks

**[00:03:47]** this has everything we see right here not to select but this we can actually save the select in there - it doesn't matter but for now that's basically what that is and so now what we could do is we can go inside a plug-in ah this was not the best plug-in to use because this plug-in system is beside I

**[00:04:12]** want to use some ponies a better plugin just a second maybe fractus cleaner or no that was frakked good okay so I'm gonna use this place so we delete both those two you know I did it's a bummer piloti plugins is pretty

### [00:04:50] CHAPTER: Updating the plugin

**[00:04:50]** slow it's slower than it was 208 eight was quite a bit faster there is a significant slowdown we need it on a nine for a number of things for other things that's faster but for some things and slower okay so we're back here delete this my new effect here this place is a good starter one and rename

**[00:05:16]** it and I gotta update this list just by toggling back and forth I think I might have made it huh yeah so you have to do more than just toggle the list you have to actually go in to perform mode to get that suckered update all right exit the

**[00:06:06]** forum oh so so you have to do that and drop the effect select it turn it on it's working and f10 go up a couple levels fix this up so we can see and now

### [00:06:30] CHAPTER: Fixing the plugin

**[00:06:31]** it's the wrong name for one because you're probably gonna want a different name and you're probably gonna want different parameters problem on different everything obviously so what you would do is first make sure it's on so you have an input because you're working with an effect right now so you

**[00:06:48]** need some sort of input to even see your effect and then everything you would do is gonna be inside this container called system so everything outside of this container called system should not be here in this particular case with this plug-in you're gonna need to do this

**[00:07:07]** this shouldn't be here this these effects I have to go through so this is a good note what has to be done these effects have not been all updated for the new like the totally clean system plug-in so every single one of these effects has got to get run through and delete this I think the mod router is

**[00:07:30]** fine yeah see the moderator has already got that in there and it's all automated within it so so this should not be there but oh it had to be for that one for or okay because I exported so I love so or some for some reason or so but in this case yeah it shouldn't be there we will fix

**[00:07:53]** up that export or should fix up that export from in here everything you do everything should be inside system or should being in there shouldn't even be like there should be that cross shouldn't be outside there should be nothing outside you do whatever you want obviously but as far as kind of sticking

**[00:08:15]** to the paradigm mmm it should look like this so system and whatever you do whatever you want here as long as you got an output it doesn't matter you do whatever and then you're gonna have a you don't even need an input but you could have one if you want to get parameters and if you want those

**[00:08:35]** parameters to be modded animated I have the ability to be preset you could grab parameters directly from here these would get recalled from a preset but they won't be my you don't know they would even be you know they would be blended they would even be blended in here no no no no no no no no they're not

**[00:08:59]** blending no this is this switches them so if you want you can no you can grab values directly from there which looks like I am for whatever reason um okay so

### [00:09:10] CHAPTER: Parameters

**[00:09:12]** you've done that so you're gonna build it whatever you want in there you're gonna need some parameters the new method really like this was all built before this was probably I think starting I was seven seven really so maybe Oh 18 but no I think I remember transferring the first version no seven

**[00:09:29]** seven zero eight eight so but now there was never custom parameters before but now there is so one method could be to just put all your parameters on this system just place whatever do whatever you're going to do inside and then export to those parameters that's one way

**[00:09:53]** yeah it's an extra level of processing potentially but if you're just importing some effect you've already built or whatever so that's one thing you could do but if in either case whichever method from here or direct or it's up to you but what you do need to do is going to config once you've made at least

**[00:10:27]** decided on some parameters or maybe decided on almost none and want at least all effects should have at least a mix pretty much maybe not some but typically you would think all effects have a mix because you wanna you wanna have a wet/dry between the effect and them and they're not affected Oh inputs so so

**[00:10:47]** technically you could just delete all these rows or maybe keep a couple because you want examples Peter Walker is gonna show you how to use plug-in designer so you don't use this table or anything but this is how it works inside so it's good to know so basically you just create a new row or edit a row for

**[00:11:06]** your name your label your range depending on the type of gadget it is whether it's a float or an integer and if it's a drop list or a radio button it needs a table with with an item list in the table so for proc modes I've got 16-bit and 32-bit for this one and for video sources it's the standard video

**[00:11:28]** source it's list that I'm just selecting from the global video sources dad and that list because I'm doing some sort of trickery somewhere else or whatever that list I'm looking up a path and that's it Oh know one other thing you're going to watch change here is that name my effect so that's done I'm

**[00:11:58]** not gonna change the parameters right now because uh we don't talk we don't need to necessarily and that's it okay so I've done that so the next step would

### [00:12:10] CHAPTER: Create UI

**[00:12:13]** be to go up to the control panel and hit create UI this is slow huh there's something else going on but something's really slow about that one but basically that just recreated the whole panel I'm going to I am gonna delete everything in this thing except for and I would don't want anything in here oh

**[00:12:59]** there and now I'm just gonna do this so then nom okay so we've got a new effect I'm going to get rid of these I'm just gonna do it right oh I this is an effect it's not a generator so uh second cross and in but I did it backwards [Music]

**[00:14:08]** as quickly as possible here and yeah whatever pretend it's in effect and and

### [00:14:15] CHAPTER: Wipe Presets

**[00:14:17]** we got config now presets burn off the touch so now I'm gonna hit create UI yeah something's going on there was I think it was maybe that that top or something was loading something's bigger than maybe there's particles oh yeah I think there was a big saw in there um okay so we got one parameter I don't

**[00:14:39]** have to touch anything here this should be all good but what you do need to do now is you got to wipe the presets because the presets still have the old parameters so just say setup select the presets comp it's setup selects Letta set up and it presets say yes oh okay so I saw that Ted no because

**[00:15:10]** it's the it's the channel mode you're in I'll I'll show I'll just review that quick but it's Adam it's near the beginning or it's that it's in the channel section of the previous video anyways but I'll tell you quick in a second well here I'll just tell you now because I'll forget um so change this

**[00:15:29]** setting right here to channel mode or multi right now you're in single mode probably okay so so we've needed two

### [00:15:40] CHAPTER: Saving New Effect

**[00:15:42]** presets we've recreated the control panel and we have a new effect should be working where are we here no effects like screwed up I probably have to do this too to get it to flow yeah it's just a drawing error and I don't see anything Oh probably because I didn't actually

**[00:16:13]** export anything there so now we have our new effect which should be totally recallable by presets and modular blending properly so that's working and now we just have to save it the only problem well actually that's what I'm gonna do I'm gonna save it with

**[00:16:51]** the Select inside of it may need to change proc mode offset to select it depth and on oh oh so I think I'm gonna have to do something in or 99 for for that displace effect but basically yeah I think um we're gonna make it so the Select is saved I'm not sure I can't remember if it should be right now but I

**[00:17:16]** know it doesn't matter if it slowly because it checks so now what just goes we know we we have to remember we were in slot 1 you can get confused or I can get confused quickly when you go up the list level because now you have 6 slots you don't even know what you were in potentially and I'm gonna say save

**[00:17:35]** component talks luminosity not project assets project assets is for assets for your project for your newness show or whatever like you've got got video or something I don't put video typically in the project file but textures or whatever you put it there but this is project assets so I mean luminosity

**[00:17:57]** assets now which is assets for them for lemon I'll see itself opponents effects and we called it new effects stun om effects yes and so now I'm gonna turn that one off and now I'm gonna reload it loaded nicely sweet there it is

**[00:18:27]** so that's how you make a new effect and I would say we'll do the exact same process with with generator let's just double-check the format of these generators I think Peter Walker's got some new ones there's something slow right here maybe I got two instances of a touch running

**[00:19:07]** okay sorry my bad um I'm looking at this okay so we're good there that looks good yeah so that's perfect so going to effects going to component store now we're doing a Jan and we're gonna copy spherical and we're gonna rename it and call it by Jen I already did this demo for somebody at

**[00:19:50]** one point okay so but it's my gen dotto I'm Jen dot of talks it shows up here this time oh there it is okay so we're gonna go and delete this one so we don't get confused and now we're gonna go my Jen now the one thing about Jen's is and since is that you can do a lot of what

**[00:20:28]** you can do with the Jen with a scene and it's one thing in one location the problem with Jen's is or clips is that you're it's it's in some arbitrary place and you may delete it it's not like if you're gonna be working on a system or whatever and you're like I'm gonna keep improving it

**[00:20:46]** and so because that's the thing is like when you're loading effects or Jen's like these are things that get destroyed so so I've kind of stopped using Jen's almost all together because scenes kind of replace them you don't really ever want more than one of them and you there it could be typically heavy maybe not

**[00:21:11]** like it just depends right so so it's just something to consider so I'm gonna right click on this and I'm gonna say open Network and the only one is that label that label it's gonna screw it up on this one yeah so that's what we'll do um okay so now we're in spherical so I'm gonna

**[00:21:43]** speed through this one cuz it's the exact same process you would modify whatever inside of here you would then modify this attribute stable and give it a new name so the the name of the control panel is different my Gen and actually I think that name will appear at the bottom too so I'm gonna keep it

**[00:22:02]** short um there should be a name and a label but whatever uh you would edit this you would change this copy this paste it here connect it unlock it lock it cut it put it back you have a new thumb needs a thumb to show down here and if

**[00:22:36]** you're okay so yeah effects as well have the same thing they all get turned off and on so if there's special things that you want to turn off and on in your plug-in you would do that here so in this function right here you would say op dot dot slash system slash some op dot cook equals true or something or is

**[00:23:08]** it allow cooking yeah so cookies allow cooking no cook equals true so yeah that would be that and that's why now I like to use the name system so you don't you don't always have to change these functions when you're making anything everything else you don't need to touch but this is

**[00:23:32]** and you could do whatever else on top of this in here you can make all kinds of functions for whatever reasons it's all ready to go but you but this gets called there's function you can't delete this or anything so so it's got to stay same with this that's got to stay everything here's got to stay except for you'll see

**[00:23:55]** some of those those item table dads and I saw this guy this has got to get fixed so these effects got to go through a little bit and row : and there should be this here so but okay so you've debt you've edited this and that's all good you're gonna do the same thing you're gonna say create UI

**[00:24:39]** slow something's I don't know maybe this capture deal then you would notice active is off if you're editing the effect and it's not selected active is gonna be off you might need to turn that on if you have some sort of function that turned something off so if I turn this it's gonna get turned on it's gonna

**[00:25:00]** get turned off after the crossfade over [Music] so you ohso we've recreated the control panel and now you've got to initialize the preset set up initialize presets initialize that's done now you've got to kind of remember what clip are on so

**[00:25:22]** we'll look at where clipper on now cuz it's even harder here so we're on clip 2 and we're gonna save it but I just realized now this is this method should probably be even well with Pete's plug-in designer you can skip on a pile of this and it's a little UI to do all this especially these gadgets so it

**[00:25:44]** won't matter but in the meantime I don't think we can have this label inside of here so I'm gonna do this temporarily and then I'm gonna we were in club to double check save stalks Jen's mai-chan I called it replace I didn't rip oh I didn't pop the extension so this is the good one

**[00:26:27]** okay so now we go there we go so this should be the same and now okay so we're looking let's just go ahead clip controls Oh oh that suckers not happy now I deleted that label I was supposed to hit undo right then before I left the network I forgot to you let's see if I can

**[00:27:09]** no shoot go like this yeah that's not the best maybe if you're doing this if you're making a new gen you might not want to stay to this version like that copy of an aussie you might you might break something so yeah you can call this or save it and then yeah I just don't want that label to you

**[00:27:36]** it won't actually window cause there we could have saved the label in there when it caused an error but it just loaded a new label and called it label one and then it would have only edited label and selected labels so we wouldn't probably gotten an error but whatever oh so that's the one we edited and now we're

**[00:27:59]** gonna drop it in the new one oh I broke something you know I just totally watch I don't even know for sure somebody can get an error okay so that is not the way to save a gin go back to the original way a little bit harder at least all the steps are the same

**[00:29:04]** except for where you're gonna

### [00:29:20] CHAPTER: Saving Gens

**[00:29:22]** okay so database plugins gens you could load them all all at once this was the method solo it all plugins now will load every single plug-in into this container our component and you could edit all of them but I'm going to just drag my Jen in see it wasn't even named properly by doing it that way this is not happy

**[00:30:02]** crazy UI and it presets good and now we're gonna hit save components mai-chan we're gonna name it if I just hit save it will be wrong I have to name it with that extension yes I could delete it although I shouldn't or wouldn't if I was actually editing or working on something

**[00:30:45]** and my gen okay so there it is so except I have this effect on it but so the only little only part about that there is you can edit effects right directly inside of a chain which is nice because then you can be reading video to them and it's part of the system and I find that kind of a lot nicer myself because

**[00:31:12]** typically you need an input for an effect and then you don't have to have some sort of fake input or anything but with Jenna with Jen's they're generating video so you don't need an input and obviously this system here is a little bit more finicky so you don't want to be messing around with deleting stuff so

**[00:31:29]** I'll simply go into the network go into somewhere in the network it doesn't matter where I just chose to use Jen's because that's where I used to make make them and load it in here edit it save it all properly and then drag it into your clip to test it that would be the process and then scenes I went through

**[00:31:54]** the scene how to make a scene quickly and like I said to me I in the scenes really for just about anything because like it's a pain working like unless you're gonna make something for someone that someone's gonna use or you like these are not very editable things I find like it's not a very easy spot to

**[00:32:20]** get to and da and like I said you could also have a rare browser a scene clip that can select a scene which is an effect could be ingest so if you've got big scenes or big become big comps I would really consider the scene route versus the the clip route they both can have the same end result but it just

**[00:32:53]** depends on your on your workflow the one the other good thing about Clips though is if you make clips or gens is that pre loading is already built in so if you were to build a clip and it needed to get unloaded when you switch banks because you're like you got serious scenes or switching through and you're

**[00:33:16]** gonna be unloading and loading stuff dynamically and unloading and loading movies isn't good enough which the movie players do automatically you could go this could be your scene I mean Jen sorry this would be your Jen and you would just go in here and edit this active

**[00:33:34]** function and turn stuff off and on right here sorry turn on here so or off okay I think that's it I'm gonna grab some food now have a great night everyone
