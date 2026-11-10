# Luminosity Demonstration Live Stream Recording March 25 2018 — Full Transcript
> Auto-generated English YouTube transcript preserved verbatim with chapter markers and timestamps (March 25, 2018 live stream by Keith Lostracco / IntentDev).
- **URL: https://www.youtube.com/watch?v=2PGyi3eD54s**
- **Duration: 03:49:08 (13748s)**
- **Snippets: 3987**

**Description:**
Demonstration of Luminosity, the media server system built in TouchDesigner. Dialog begins at 8:44
Topics will include:
- System overview
- channels
- clips
- modulation
- presets
- animation
- output configuration
- internal structure
Link to video download:
https://drive.google.com/open?id=1veI7PhX2tHHobbdBp0nrLvV20mcLrSFI

## Table of Contents (YouTube Chapters)

- [00:00:00 - 00:08:45] Intro
- [00:08:45 - 00:09:58] Welcome
- [00:09:58 - 00:12:35] Purpose of Luminosity
- [00:12:35 - 00:17:15] User Interface Overview
- [00:17:15 - 00:19:05] Clips Overview
- [00:19:05 - 00:23:45] Clip Controls
- [00:23:45 - 00:36:50] Clip Modes
- [00:36:50 - 00:38:20] Auxillary Channels
- [00:38:20 - 00:45:40] Routing
- [00:45:40 - 00:47:45] Effects
- [00:47:45 - 00:49:35] Levels
- [00:49:35 - 00:53:20] Parameters Presets
- [00:53:20 - 03:49:08] Modulation

---

## Complete Timestamped Transcript

### [00:00:00] CHAPTER: Intro

**[00:00:29]** hello everyone can you hear me can someone check a text back on the chat that you can hear me perfect how's that is that a little bit better still about Sheila is it quiet over there Greg yeah yeah great

**[00:01:57]** okay I'll wait till two o'clock to start you you [Music] you [Music] [Music] [Music]

**[00:05:58]** [Music] [Music] [Music] [Music] [Music] [Music] [Music] [Music]

**[00:08:10]** [Music] [Music]

### [00:08:45] CHAPTER: Welcome

**[00:08:46]** hello everyone thanks for coming to this demonstration of luminosity that's been a long time coming been pretty pretty happy to finally finally be able to give it away and give the opportunity to other people to use it there's a lot of work put into it and it doesn't actually get used that

**[00:09:11]** much so you're pretty awesome that it saw that it can get used now today I wanted to kind of go over kind of as much as as much as I could as possible but not too too long but we'll see how it goes anyways so yeah let's start with I was going to go over the mean mean sections I just want to actually load up

**[00:09:42]** some notes I had here

### [00:09:58] CHAPTER: Purpose of Luminosity

**[00:09:58]** okay so yeah so the the purpose of luminosity was basically to build a system that may would make a show that might way easier than just running touch designer because as most people who use touch know you have to do quite a bit of work just did you a show basically so the idea was to be able to easily do

**[00:10:25]** shows and still have all the tools of touch designer basically and have have all the have all the abilities so so that's what I built and at least intended to build another question was is why would I want to share it or why not sell it basically I don't really see see selling it as aa as a path that I

**[00:10:56]** really want to go down myself so I'd rather share it and then hopefully other people will be able to build on it and we can all end up with it with a tool that that is that could be way better than if I were to just keep to myself and try and sell it and then a third point though at the introduction I just

**[00:11:17]** wanted to say was anybody who did plan on using luminosity at least in this initial time period where where there is pretty much there's only a couple other people really that know how to use it besides myself I really highly recommend that you involve me in some way if you're doing some sort of job that's

**[00:11:38]** relatively large I just don't want you to be in a position where something is not working and you can't get a hold of me or I cannot help you in any way for whatever reason and it becomes a complete catastrophe so that I just want to put that out there that if you're gonna be investing a lot

**[00:12:04]** of time and money or whatever in luminosity it might be a good idea to somehow relate to me before doing that so um so yeah all that aside that's uh that's that's basically one given away it's totally there for everybody to use and and make better basically yeah so to get started there's a few different main

### [00:12:35] CHAPTER: User Interface Overview

**[00:12:39]** sections of luminosity I'll just go over them quickly and then I'll go into each one a little bit deeper you have clips in the clip layer which is this area here and in this in this one yeah so I'm just actually just gonna talk about I'm just gonna talk about the categories first and then I'll go into the

**[00:12:58]** categories so this this is the clip zone then you have channels channels over here in the bottom right corner you also have scenes if you select that tab you now are viewing different scenes that are in the system you have uh there's a cue player and a key player basically triggers cues and controls

**[00:13:25]** clips and parameters throughout the system channels Rev audio and video clips playback content or where you can trigger them you have some Global's Global's or sources of global values of something whether it's a texture modulation sores or it could be a camera or lights or a saw you won't really see

**[00:13:55]** Global's on them some of those other Global's on that on the user interface they would be in internal you have controllers which are external controllers where you can map to parameters in luminosity there's another section called project setup which is which is basically where we're gonna set

**[00:14:15]** up the whole project well not completely set up a little project but a number of settings pertinent to the project and then there's another major section called server setup and that's where we would set up off all our outputs some projection mapping and everything that would have to do with multiple servers

**[00:14:38]** and yeah so outputs servers yeah outputs and servers basically okay so then if I was to go next first section I will talk about his clips because that's a that's kind of an important one and clips you can load clips easily from the file browser there's two ways the local clips

**[00:15:06]** actually you can load them from the internal file or the windows file browser or you can load them from the internal file file browser here I'm going to load them from windows for now so you can just simply drag clips in oh no there's a bug in touch designer where I have to actually start touch designer

**[00:15:35]** this is an issue this drag-and-drop issue that is a bummer so at least I could load them from here because we won't have that issue this is a nice little file browser that Matthew watched her actually built it's pretty pretty kick-ass you can actually review you can actually preview movies in the

**[00:16:04]** file browser super-nice you can't load multiple movies through this browser right now which is why I wanted to use the regular browser but you can definitely load single movies at least last time I've tried I know so this I haven't used that in a long time so that's a bummer here I

**[00:16:24]** don't have to quit luminosity yeah that drag-and-drop issues one that I can't really seem to stop from Happiny and the only thing I can do is really start over again it's usually for a show you've already loaded all your media so it's not an issue but it's kind of a pain

**[00:17:09]** there we go okay so yeah so so for clips

### [00:17:15] CHAPTER: Clips Overview

**[00:17:15]** we have banks we have lanes we have columns and we have clips in the clip layer you can trigger a column all at once you can stop a lane and clip in a lane you can drag clips in from the file browser you can drag folders and from the file browser and then you can choose to load those folders either one

**[00:17:47]** folder per bank or fill all clips in every bank in series so I'll do this so now it's going to load all the folders I had inside of test clips and you can see it's doing folder per Bank so that's pretty useful you can oh so that's red when you see this red this means a bank is pre loading so and I

**[00:18:12]** just switched a lot of banks there so it was pre loading and unloading a number of banks but um that's an option you can turn off and on but basically if your touch designer user you know what pre loading is and it will pre load an entire Bank when you choose it and it will unload the previously selected Bank

**[00:18:34]** when you choose a new Bank you can still play a movie when a bank is being pre loaded whether it plays and triggers on time is or causes frame drop that's that's unknown but you can still trigger a movie it's unlike other applications where when you change banks you can't but it's read to tell you that basically

**[00:18:56]** your pre loading and you shouldn't trigger movie yet especially if you're running a multi server system what else can you do with clips okay so

### [00:19:05] CHAPTER: Clip Controls

**[00:19:06]** you have a right-click menu our contacts menu you can delete them you can rename them you can unselect them which means there's two modes you can trigger a clip and triggering a clip you'll you'll select its icon to trigger it up here there we go so you can trigger it by triggering by clicking on its icon but

**[00:19:35]** you can also select a clip and depending what the the Preferences its controls are going to change depending on what clip is selected right now I'm selecting movie so you don't really see many controls change here but you can see the movie name change then these clips are all they're not all the same length but

**[00:19:57]** and you can see its end length and frame change so we just make sure I understand make sure on the chat everything's working good okay okay so you can select let you you can trigger clips and you can select them and depending on what the trigger mode is in project setup clip tray clip trigger selects clip

**[00:20:23]** controls so if that's on when you trigger the clip the controls are going to change when that's off when you trigger the clip the controls aren't going to change and now that what now what that lets you do is trigger different clips and then preview a different clip change its cue

**[00:20:41]** point or whatever and now trigger that clip so that's what that's how that works and you can turn off and on that preference there or I guess that's a project setting not a preference then oh yeah I wouldn't continue with the context menu so you can rename them you can unselect them so if you don't want

**[00:21:06]** for whatever reason to be previewing a clip and then and you and all your banks are completely full clips are full you can unselect it so you're not previewing anything here and there should probably be a third option read yeah I know that no I don't know I don't think there

**[00:21:23]** needs to be a third option but no this is fine so for now at least you can cut a clip so you can move it from one spot to another and paste it you can copy it and there's one other way thing before I go to open Network you can drag control drag and move it to so you can quickly duplicate clips that way you can't

**[00:21:54]** control it or across banks um you can preview banks quickly so if you hit shift and you hover above the the bank radio button you can just go above it and quickly look at your bank and look at your clips and you're not actually selecting the bank uh yeah you actually have to click on it and preload it now

**[00:22:18]** I've got this Bank select it after quickly previewing the bank and then finally there's one more option here open Network this one brings you to the clips Network where the media is being created or played back oh typically either there's a method I used to get to a lot of places in luminosity

**[00:22:46]** by just pressing f10 or f9 on any gadget and that won't work on on clips because this brings you to a location in the UI which is not where the know the actual network is so so so that's why you have that open network okay so clean ups call them stop button oh so yeah you have a stop button on each lane you also have a

**[00:23:18]** global stop button in the top right corner stop all clips it's not stopping the preview though oh actually it doesn't need to be another almost option to unselect all because I don't know what I have selected and I can't talk unselected okay so select

### [00:23:45] CHAPTER: Clip Modes

**[00:23:45]** versus Clannad ok so there's some clip modes as well so right now we're in active project setup here we're in channel mode so every lane corresponds to a channel so when I trigger a clip it's going to be its lane three is gonna be the clips gonna playback on channel three if I play back clip on channel one

**[00:24:22]** it's lame one it's gonna playback on channel one that's channel mode then you have selected mode that's where you would trigger a clip and it will playback on the selected channel so I can trigger a clip anywhere it's more like a bin now I can anywhere in the system and we're bank and it's gonna

**[00:24:50]** play on that selected channel for you if I select clip 2 it's gonna play and clip 2 and if I want to stop channel 2 an hour's Channel 3 I have to select it and then stop it somewhere the UI for this mode doesn't you update 100% properly for this red selection box I've chosen not to update that on purpose because I

**[00:25:13]** at one point this entire clip grid should be ported and should be a list comp like it's a it's a bunch of buttons right now and it's it's it's not nearly as good as it could be this it was built way before this comp existed so this one mode which I've never used doesn't update these properly so if one still is

**[00:25:40]** comp is it's used for this that not then that mode will and that won't be a problem so that's selected mode and so and then there's two more modes next we have single mode this is the mode I I do i uploaded luminosity with so single mode shouldn't hurt anything and single mode

**[00:26:03]** what it's going to do is make one channel so now every clip in the entire Bank is just gonna be on that one channel it's kind of standard now it's just a bin ideally there could be a third mode or a fourth mode fifth mode actually cuz there's still one more but there could

**[00:26:26]** be another mode where you have two channels and you can assign it you can link banks or somehow quickly view two banks at the same time or preload two banks I guess would be ideal preload two banks one bank per channel a bit of a different interface and then it would be kind of a standard you can already do

**[00:26:45]** the two channel crossfade mixed situation with this by being in multi mode having two channels and then assigning a to one channel B to the other other channel and then cross-fading them I'll talk about that one in channels but to start with though or if you really want that dual setup

**[00:27:07]** but eventually there should be an a/b mix or kind of break I think okay another next oh and then there's multi channel mode uh I don't want to go in that mode yeah I gotta go back I don't want to lose my I don't want to lose my lanes so I'm gonna go to selected put this back to five

**[00:27:36]** so this is where he would actually set the number of lanes for clips this is where you set the number of columns the number of banks and I'm gonna talk about other channels in a bit but for now just these three settings pertain to clips from the clip lanes number clip columns number of click

**[00:27:56]** banks you can ignore channels you can't really a hundred percent ignore but depending what your mode you're in but for now lanes is important in this mode okay yeah so the fourth mode I'm gonna go to multi and now what multi is is there's not much it's not really gonna work that well in this situation but

**[00:28:27]** well multi mode will do is if you have some sort of clip custom clip that you've made where you've got multiple outputs out of the clip you can trigger that clip and then this will automatically route those outputs to these channels and then those channels could be maybe those outputs could be

**[00:28:43]** different scales or whatever and then be routed or routed in all whatever different ways and then then mixed at some point or not mixed and routed directly out whatever outputs still that's that mode and right now since this sense of this clip this is a movie player clip this clip does not have four

**[00:29:07]** output outputs it only has one output it's just replicating each output so rather than returning some sort of air or whatever it just it just replicates the single oh but when it can't find before and the number is hard-coded so if somebody were to actually want to use this we'd have to kind of bring it to to

**[00:29:27]** work for your case or whatever multi-channel clips okay so so yeah next one off channels so channels are like layers for video people and channels are like channels for audio people if this is kind of going towards more of the audio end of things the way things are set up I'm just gonna review my notes

**[00:29:52]** here too okay so so yeah so the basic idea of a channels is you have sources and destinations so a channel in an in of itself is a source because a channel can output video I'm only talking about video right now audios kind of simplified and doesn't really

**[00:30:15]** pertain to this so much so but for video you have sources and destinations and a channel is a source clip is a source a seen as a source video input is a source connect could be a source or whatever those would be sources so in a channel you can select a source for from where to receive video from so in this

**[00:30:48]** auxilary channel I could choose a source whoops they can't have a source because what they do they have a locked source you can't change their source their source is bound to a clip based on whatever clip trigger mode it's in so you can't change this menu item here it's just it

**[00:31:12]** should be actually grayed out but it's just mean so it doesn't it doesn't roll over but what you can change is where a clip channel is being sent to and that's where the idea of channels comes in and the audio concept of sending in retrospect it could have been more it could have been built in more of a

**[00:31:39]** traditional way but in another way this is this is kind of more of a performance oriented way so once it was what's the idea what's the idea of somebody texted me about the Sanitary is the second [Music] okay so Matt just said if I go really

**[00:32:04]** quiet nobody can understand me so I'll try and keep my voice up okay so um oh yeah channels and destinies sources and destinations so yeah so once you get used to this idea it is it does work well and it's quite simple actually really in the end but um

**[00:32:31]** so you have sources but clip channels you can't select a source because it's bound to a clip but you can send things and you have destinations so a channel is actually a destination in touch in luminosity there is really only one thing that can be a destination right now and it's a channel any of these

**[00:32:51]** three types of channels there's no weather nothing else set up to be a destination so so I can send video now out of its output of the channel which is along the bottom to whatever other channel I'm going to [Music] that nothing's routed anywhere I'm gonna

**[00:33:22]** change clip trigger modes back to channel stop all okay so now we're simplified here so now I've got clip channel one selected I can select channels by clicking on them you can see the green outline you have controls above you have a window above corresponding to each channel group so

**[00:33:50]** clips and green auxilary channels in blue and then master channel there's only one you can't change I can't select anything different so now what I'll do is I'll wrote clip channel one two auxilary channel one actually for simplicity sake and I wrote it to master so now I can trigger a clip on channel 1

**[00:34:20]** and it's routed to the master and if I turn down the level the level is gonna go down you can see in the master sources list right here that clip channel 1 is routed to it I could not route it now I could row clip channel 2 to master as well so now I've

**[00:34:48]** routed both clip channel 1 and cliff channel to you and you can see in the list that clip channel 2 is on top of clip channel 1 in the list so if I click trigger a clip on clip channel 2 you can see that the video is on top of the video coming from channel one clip channel 1

**[00:35:08]** and now since click channel two is on top I'm gonna actually reverse it because typically I like one to be on top of two three or four it's a little bit easier to understand so I'm gonna just drag one on top of two and now one is on top of you as you have more it's just ordered this

**[00:35:29]** just change the order so now I've got clip channel one on top of clip channel two if I turn down the level you can seat you maybe if I have a little bit more of a difference of content whatever okay so you some great clearly there we go two totally different videos and now I'm going to change the blend

**[00:35:57]** mode of clip channel one to dodge and now we can see that I'm blending one with two so that will work all the way across and you can keep going I could wrote put just a clip channel three to the master a clip Channel four to the master clip Channel five and now they're in this order but I don't want

**[00:36:24]** that order I want this order if you're doing this like once you get going you you end up routing things in the order some lot of times if you're just thinking ahead and now I can trigger this and I can change the blend mode of this to hard light or something or whatever and now I'm blending

**[00:36:45]** three layers

### [00:36:50] CHAPTER: Auxillary Channels

**[00:36:50]** next so--that's routing out the output and blending the output setting the setting the outputs blend mode which is set right here you also have the opacity maybe I'm not gonna talk about those for a second and so now okay so we've routed out the output but what we can also do now so we have two

**[00:37:17]** two auxilary channels the difference between auxilary channel and a clip channel is is that a clip channel is bound to clips and auxilary channel is not bound to anything and in effect is really a mixer master channel is pretty much the same as an auxilary channel except there's there's only one of

**[00:37:34]** there's only one master channel or at least one UI master channel you can have more than one master Channel but I'm talking about that just yet so now we have axillary channel so they they can receive they can have an input you can select an input but they can they're also a destination so a channel can it's

**[00:37:59]** it's like another audio app or many audio apps that you would see where you have you can select the input to to the channel or track but you can also send to that track and then the input will be mixed with whatever is sent to it so in this case if I was to select a source

### [00:38:20] CHAPTER: Routing

**[00:38:22]** such as myself I was actually supposed to route myself and introduce myself and I forgot to actually so everybody ah I can select a source here but then I can also send to that channel and because of the routing and the layers that clip is going to be on top of this source that I've just selected and that video will

**[00:38:46]** be on top and then if I change the blend mode I'll be blending with video a video source video input one was already connected already hooked up to the black magic card on my computer and I have a camera connected the black magic card but now okay so now we're routing I just get rid of this video one

**[00:39:13]** here just because it's gonna confuse things a bit now we're routing clip one to auxilary one now you don't see I've made it I've done this on purpose you don't see the level go down on a channels own monitor you'll see it go down on whatever it's going to ideal either be a toggle here

**[00:39:37]** for pre or post monitoring they're just as in so right now right now we're mono we're monitoring free level um okay so we're routing click to auxiliary one but now what I'm gonna do is is I'm gonna route clip channel one to auxilary to at the same time the section called sends up at the

**[00:40:03]** top you select the sent you select this you select the destination you select the blend mode you set the level you can see auxilary - if I select auxilary - you can see these controls change the video is not changing cuz it's this exact same video but the levels changing and now this little

**[00:40:30]** piece tans for Prix and if I hit free that means this level the video source though sorry the destinations level are the level of the video being sent to the destination probably the same is not being scaled by its output level so now if I were to turn this down now the sand is going

**[00:40:58]** down as well if I turn this on the send doesn't go down and I have to use the send itself only that's standard audio send send stuff pre post it's not pre effect is there's no options if you really want to go off and you pre post effect on top of that okay so next okay so now I'm sending to auxilary clip

**[00:41:26]** channel 1 - auxilary channel 1 and auxilary channel 2 now i can put an effect on axillary channel to this effect is barely being mixed and seems to be not happy for some reason I'll do this one so this is an effect it's not the best settings at the moment but uh now I can see if I was to route

**[00:41:56]** both these two channels now to the master now I can see that I can have about auxilary one on top of auxilary two so I've got clean right now let's just look at the full master up whatever got clean and then I've got affected those two channels and then you can use the a B now if you wanted to you can

**[00:42:23]** assign this to the a side of the crossfade and assign this to the B side of the crossfade and then you can a B those two channels and you can do that for all these channels and ok so inserts I don't want to delve too long into channels because there's still a lot to go through

**[00:42:54]** auto auto is uh is uh auto levels thing I built it's pretty cool for vjing or for maybe if you have some sort of conference or something where you've got to have you just got to change the video automatically by itself slowly so about four vjing it's all based on time and beats so basically you can be setting

**[00:43:19]** the levels of any channels sequentially I don't think Auto is functioning right now let's just get rid of yeah so I think Otto's gonna have to you ah I think I've disabled it because of it's not really useful for the role for a lot of jobs and stuff but um but I find it extremely useful for me Jane

**[00:43:48]** and have used it before when you just had to not make up a big sequence or anything you just wanted to slowly change between textures or something and just maybe there's a break or hour break or something you've got to walk away um okay so there's that there's a little preset so I'm not yeah oh god no I don't

**[00:44:10]** want to get into that tell you need to presets just review my list here okay so yeah that covers most of most of that now we have chant effects though on channels so oh one I'm gonna just step back for one quick second just be just one thing I didn't talk about with clips you basically have two types of clips

**[00:44:47]** you have players and you have generators players play video or audio or some sort of file and generators generate video I'll talk about how to build generators later you can simply drag generators into a clip from the file browser they might take a little longer the lobe depending what they are but ah but

**[00:45:17]** basically this is generating video and selected and later on I'll get into this and we'll go over we'll go over that a little bit I'm gonna get any controls and animation so that's just generators before I go into Clips BR effects because uh effects kind of relate similar stuff so I'm gonna monitor on

### [00:45:40] CHAPTER: Effects

**[00:45:42]** this side and I'm gonna pull up the browser floating browser window here and then I'm gonna go to the effects tab and I'm going to where are we were going to choose channel one okay so there is one bug before I go too far with this because it'll probably get everybody at one point I'm not gonna fix

**[00:46:12]** it because it's a it's a it's a drawing bug there's a workaround for it but I just it's gonna get fixed in touch designer eventually so I don't want to fix it so um until there's no point so I'm just gonna drop an effect let's see levels on the slot here an insert slot so the same terminologies

**[00:46:35]** audio again inserts you have an insert effect you drop it every channels got up to 6 insert effects like at one point I was you were able to arbitrary at least have any number of effects but right now it's hard-coded so up to six maximum you drop it on the on the slot the bug is is if you drop it on a selected slot it

**[00:47:01]** draws it right here and I'll do it so if you if you drop the effect on a selected slot the interface is gonna get screwed up there's nothing you can do except hit escape so you don't want to be dry either way you don't wanna be dropping effects during a performance because your framerate it just totally hangs so

**[00:47:23]** you can't but right now if you do that the only way to get out of it is to hit escape and dock reinitialize the whole the whole draw of the screen so I try not to do that I'm I think an experimental build might have fixed it I'm not sure but I but yeah you drop the effect on and then

### [00:47:45] CHAPTER: Levels

**[00:47:46]** I'm gonna trigger something on this so we have some video and then you turn on the effect here that Oh button or that oh symbol and so now it's on it just so happens that levels has toggles to turn on different sections inside of it because I want to is least costly as possible like I

**[00:48:10]** didn't want to have chromakey nan if we're not using it so you just turn on a section in this particular effect and then you can set levels of whatever and then you can turn now entire effect off or on right there one quick thing with parameter I'm gonna get into parameters a little bit we'll get into that in a

**[00:48:33]** second but that's the basic deal with loading effects and turning them off and on you can delete them you can cut them copy them and paste them there's no effects right now on clips there's only effects on channels that saw would be nice if there was clip

**[00:49:00]** effects but there isn't what else in the channels okay so yeah so now I'm going to get into the parameters and presets so let's kill

### [00:49:35] CHAPTER: Parameters Presets

**[00:49:36]** so okay so now I've got this generator selected I'm just gonna check the chap make sure there's no questions or anything yeah well I see the people comments there yeah these I don't know these are all packs these are all packs there

**[00:50:09]** these are and then few these ones are people's and then this is Tripta this is us I was just finding whatever movies I could find too quickly yesterday just uh just a load up okay so parameters and presets so this is a whole parameter system that I built the entirety of touch designer uses

**[00:50:39]** pretty much there's a few spots where you get some a few different gadgets like this guy's not one of these guys but not too much mostly everything's part of this whole control panel paradigm I'll talk about I'll talk about bit now but I'll talk a little bit more later okay so so you have a control

**[00:51:03]** panel and inside of a control panel you have parameters most most types of parameters you have drop lists radio button and sliders you don't really have knobs in these horizontal or vertical depending on you want to think about it control panels they we were meant to horizontally stack or vertically stack

**[00:51:26]** sorry whereas on the sliders and our gadgets and I never built up a knob but basically you have most of the parameters going to see are these sliders and you'll see this em on the side and your slider you can just drag drag it but every slider like this you

**[00:51:49]** can also control click and drag which is finer than just clicking on it then you can alt click and drag which is even finer than the control and then you can control alt click and drag which is even finer than that so it's quite useful in something like this where big big settings are a lot so

**[00:52:16]** you need to and you don't want and typing in is just too slow so just about every slider you've seen in luminosities got that ability including these these scrub sliders I was playing with that or they I thought was pretty good something like you can totally scrub nicely and so right now I've got alt I'm

**[00:52:50]** holding alt down let go so yeah for the people people ask more clips that's a trip the clip not a people clip so anyways back to parameters so yeah ctrl alt and ctrl alt

### [00:53:20] CHAPTER: Modulation

**[00:53:21]** for fine finer finest parameters you also have you also have this M button for a certain for for Val slider ends so you'll see that later on but for this particular type of slider and it's the only type of modulation parameter we have it's a float slider and you press this M and basically you can it expands

**[00:53:47]** the slider you can turn the mod on for the slider you can select it source you can say how much it's going to modulate it and this is where these these fine tune adjustments come in and then you can turn it on and now we're modulating the parameter with this global LFO 1 which you'll find here and I'll talk

**[00:54:10]** about that and then you have an offset to so it depending on you can also modulate with audio or whatever other mod sources that are on the system there's a difference now between modulation and map controller mapping a lot of people or applications kind of merge the two into one to me and I think

**[00:54:37]** to most audio people they're completely separate things controller mapping is when you map a device whether it's a software or hardware device to a parameter and you directly set that parameters value to me that's what mapping is modulation is when you modulate a

**[00:54:59]** parameter you might set that value with a controller you might set that value with the with the UI gadget but modulating is going to modulate or modify that value then in this case there will be an LFO or whatever and that LFO is going to add plus or minus 0.49 to 1.07 and then if I was supposed

**[00:55:23]** to sit 0 and I put this at point five now it's gonna modulate between zero between zero and one it's gonna modulate and it think yes yeah this offset yeah so that offset only the reason there's a difference between the offset and the actual parameter is the offset it's only active when the modulation is on so that

**[00:55:48]** way you can have a different offset for your modulation than you have for your parameter setting for live performance so that's a modulation and okay yeah so ever so that's on a parameter yeah I think that's about it for actual gadgets I call parameters gather these I call I call these gadgets another paradigm is

**[00:56:22]** to call them widgets maybe I should over whatever but they're gadgets now and touch the designer I mean sorry luminosity or since we're on this and it's just a quick thing I'm just gonna go on the controller mapping quick and then going to presets an animation cuz that's a little bit deeper

**[00:56:42]** um so at all these parameters and some other UI elements as well they they are all exposed to a mapping system so controller mapping system so you can enter let's say MIDI mapping you can map MIDI OSC DMX or Ableton Live which is kind of old and not necessarily updated so probably

**[00:57:13]** you would want to create that with new Ableton setup and whole deal but it's kind of there I'm ready to be there at least again but these three do work you can select map MIDI controller it turns the whole every gadget that you can map will turn green in Middies case if it's osce I think it turns blue DMX is yellow

**[00:57:37]** and every the highlights you don't see so well but you can see everywhere where you highlight you can come a map so there's a few cases where buttons kind of butt up against each other and you might not know it like in clips so in clips you can map the trigger and you can map the selector in Bank selection

**[00:58:02]** you can map change Bank change view select view I think is what it is we have to double check and that button I didn't get updated when I change the size at one point but um but yeah basically that's one of them's change Bank one of them's change view of the bank and one of them's select the

**[00:58:23]** currently viewed Bank oh here your same thing you're gonna have this this this works yeah you change which effect you're looking at this will turn off and on effects for a lot of buttons you may need to map your MIDI or controller in some way there's no all these gadgets are single

**[00:58:53]** value mappings so if you want to map let's say like a radio button to have multiple buttons on a controller that are sending out notes you would need to use something like bones MIDI translator or touch designer itself to convert your notes to a single controller with different values and then you can use

**[00:59:16]** then you can use buttons to change radio buttons and either this like spear instance this preset right here right now you can map a knob to this preset but to get to five with a knob from one you're gonna go through two three and four so if you want to have five buttons for those 5 presets you're gonna have to

**[00:59:36]** remap those buttons to one single controller those five buttons so that's how you do that and then if you want to actually map MIDI you just select one of these watch it and you have a controller set up here I'm just gonna hit escape quick well technically anybody using

**[00:59:53]** luminosity should know touch designer if you don't then it's cool if you still use it and perfect if you want to use it and hopefully you but if you don't want to learn touch designer or and you just want to use luminosity because you think it's gonna be a good projection mapping tool or something I don't think that's a

**[01:00:15]** wise move you it's not a standalone application it's a touch designer project and if you don't know touch it's not something that I think that you'd want to use and uh in any type of professional kind of way um yeah we got some errors here I'm not sure what's going on there but Tom okay so I'm just

**[01:00:40]** gonna check that MIDI device so touch designer people would know or if you know touch you know your map or you know you'd have to have your device here and it would have right now everything's connected so your ID one device ID one is going to it's gonna be connected just in case

**[01:01:04]** you're setting up MIDI since we're here I'm gonna go deeper into some of the stuff later but control maps so we're in luminosity database control maps MIDI MIDI m1 this is your actual MIDI in so if you're trying to get your MIDI sorted and you can't figure it out that's the path to device today to the

**[01:01:30]** chop and now I just select channels and map to frog on a PC or two here and I can trigger select these and then I can just learn those or any parameter and then I can turn off map gain so that's controllers and oh there's a few other things actually so right um you can um yeah map MIDI OSC DMX lives not really

**[01:02:07]** there these OSC and DMX are gonna have to actually go in to that same location excuse me and set those guys up because I'm not sure what that OSC port is on right now and DMX maybe whatever so okay so you can save your controller can you met so you can map everything in luminosity one thing

**[01:02:31]** to know though when you're mapping is this that basically everything is dynamic so you can have five auxilary channels so you can have one auxilary channels you can have four effects loaded or you can have no effects loaded so all those parameters can come and go and the mapping systems relatively

**[01:02:52]** separate from the gadget system so what can happen is and I think there's some automated cleaning going on but there's still potential for some like old data to be in some lists of all this mappings so there's still a there's a manual function here to clear controller mapping there's right not clear sorry my

**[01:03:17]** bad clean cleanup map data so that would clean up any old stuff so if you're starting a fresh project and you want to use an old project because you built some stuff and you don't want to lose it and you clean up the whole project you get rid of all the media and get rid of everything then one of the things you

**[01:03:34]** might want to do is clean up map data so you just get rid of all all mappings that firt devices that aren't even there in case that's still the case it's still there um you can save the map file you can load it off somebody if you have an APC or a different controller or whatever and you can't merge them or

**[01:03:55]** anything like that you only have one controller and then you can clear all mappings if actually clears medio SC and IAM access it probably should be three buttons there are three functions okay so yeah so that's mapping and now presets right click on these all gadgets

**[01:04:25]** you can right click on most things you can right click on i'm not those gadgets but these guys you can set defaults or a clear map so you can actually clear a single controller map right there yeah so four presets now you have a little shortcut radio button four presets at the top of every control

**[01:04:46]** panel have presets right here so if you select a channel you can see that this is preset for the channel and that will change a channel and in itself as a control panel so it has presets so that preset will change these levels um I think if I have one that will probably

**[01:05:08]** go up this change those levels with the preset every control so it so I'll just stick to a normal control panel up here for for a minute so you have these presets up at the top they're all the exact same preset if I change some settings and I right-click on that radio button now I have a new preset if I

**[01:05:37]** right-click or there's space in this radio button it will make a new preset I'll put this to monitor so you can see you can drag across these so now there's an extended preset control panel you can also use this number box right here to change presets to if you want to select them a number for whatever reason but

**[01:06:12]** here's the extended preset settings now or the full preset control panel so this little window is within the luminosity main window you can't get it out um that's for performance reasons so you if you're running a live show or whatever you can open this and you know you're not opening a window a separate window

**[01:06:34]** which could be cos frame drop or whatever crash so so this opens in that window if you do want it floating for whatever reason you have more than one monitor you could press that F and now it's a floating window cannot both the same time I chose you can only have one preset window open his time I think you

**[01:06:57]** have more than one floating at a time no there's only one preset window open at a given time just to keep the confusion down so next okay so now this is the bigger preset window so with even with these this radio button here and just move this right here you can change those presets just by dragging across

**[01:07:24]** but if I change this blend time which is global to all presets this doesn't get recalled with presets you can recall that but not with presets talk about after change that blend time not to preset morph time so now when I change parameters or change preset sorry it's

**[01:07:43]** gonna morph from one value to the next depending on whatever those values were too far with this guy then so you can do some pretty cool live stuff just by playing presets with buttons like maybe I don't really have the best one there but there we go so you can see the

**[01:08:24]** three-dimensionality of that one with this one now okay so and then this list is the same this this radio button is a short version of this radio button you can name your presets before you name them you can rename them you can update them you can duplicate them you can copy them you can paste them you can append

**[01:08:53]** copied which means if you make a new bank and you want to copy one preset to another one and there's no presets in the other Bank you can do that you can delete them and you can delete all of them you can have more than one bank preset so you can have another Bank and then you can say you preset to save that

**[01:09:17]** and then you can do that and now I have all those presets and they're morphine and I could switch between banks and I could copy this one and switch that bag and the pen copy nice yeah so this is pretty huge and then okay so you have all that one time now

**[01:09:56]** you have edit parameters so this chooses what parameter in the control panel will be well two things what parameter will be recalled and what parameter will be morphed right now this particular control panel wasn't set up with default values proper ones because morph has been set two iterations well

**[01:10:20]** I'll see thing is you still might want to morph an integer and step through values but sir you may not so you can turn off morphine on alarm whatever parameters you want so if you turn off morphine if I still just so you can easily see if I turn off morphine if I go like this now only certain parameters

**[01:10:40]** are morphine see that rotate Z is the only one the rest are just snapping if I go like this they'll just snap back on more although and then this this this preset column this just enables or disables it so now let's say if I want to just reduce the number of iterations and I don't want any of the presets to

**[01:11:06]** recall the iterations again now ideally to me I was going through this yesterday and I was like ideally this would be expanded further so you could like copy active or diss active parameters from whole groups of presets so you could be like oh yeah I want this like that would be ideal for a fast

**[01:11:32]** workflow but ah for now you can just disable them or just disable on this whole can't talk you can't like group them all together and just volume down this is actually a shader from shader toy from Cali when I first started learning how to do fractals this is one of the first first

**[01:12:02]** fractals I learned how to do well well first copy and then understand or whatever and start building building my own afterwards but this is his his volumetric rendering of his fractal called the Cali set which is an iterative function kaleidoscopic iterated function system and it's

**[01:12:23]** basically folding space and this is an actual volumetric renderer that's pretty fast it's uh I I made a different one because this one is it's cool and it's fast but it all the problem is is I need to uh its grow really slow but if you look as I move in space the the density of the different objects comes in and

**[01:12:53]** out so it's like they they wake in and out of existence which is cool it's a look but it's not like a solid volumetric space that doesn't move but this one is so back to the presets okay so we're morphine and now and we're able to filter the presets themselves and filter the morphine itself and

**[01:13:21]** change the blend time but you can also recall animation so all parameters all control panels now including channels which are control panels have animation as well and that animation is also recallable store storable and recallable buy the preset device so now I'm going to hit animate and it brings up a

**[01:13:51]** modified version of touch animation or keyframe editor and now this is a little bit different I left some of the controls because I didn't want to really rebuild the whole thing but Tom there's a few new ones you can depending on what mode you're in the the timing system will either be in

**[01:14:16]** seconds or it will be in beats so you can can run timecode a timecode based system in seconds or you can run a beat based system a tempo based system in beats if locking to frame lock and stuff can still be all timecode in beats but as far as as far as uh a few things go the animation system especially anyways

**[01:14:44]** yummy and beats so that's one of the big things about this animation editor now is that you have a time frame in beats not frames or if you're in seconds it's not in frames as well it's in seconds technically I think I don't think I changed this gadget but at one point we just go back to you well go back to you

**[01:15:07]** um seconds here for a minute yeah so this is in seconds there's a new gadget now it's a timecode gadget and that's got to be put in here so we can set this in proper timecode have to be a future thing I'm gonna go back to peace but as you can see the the frame the the grid is in seconds for the animation come

**[01:15:33]** back to beats okay so now so now this is a modified version of the original one so you can't go and like make channels or anything because you can only add channels that are pertinent to the control panel that you're actually working with so to add a parameter you can select this drop-down list and now

**[01:15:58]** you can add any parameter in this parameter list ideally there should be a button here to keyframe but that will require like rebuilding all the UI gadgets so and I didn't really want to do that when I built this so you have that parameter here so I can add that parameter I can

**[01:16:19]** add all parameters all at once if I wanted to if I have a small comp and I want to animate everything you just hit that button and it will populate all parameters and then you could clear all I guess I could do that so that's got all parameters in here now I'm ready to animate and then I can clear them all

**[01:16:38]** nice so I had this one and I got a keyframe it and now that's way too way too much here we go these about this range is a very small range okay so I just made a keyframe animation and you're like this it comes up busy a as default and now it should look perfectly yes no I'm gonna save a new preset and I

**[01:17:16]** recall that other preset and I recall the moth animation if you have the animation editor open it's going to be a little slower recalling it's not really meant to be open during performance or anything so now I can morph between animation and morpheme parameters or not even more morph between animation and

**[01:17:36]** parameters but I can also uh morph between animations it's not really the best one I'm doing here ah here we go actually just get rid of this whatever good enough so you preset I'm not naming them here or anything because uh I don't really care about the name

**[01:18:31]** although I've found that names are extremely important but now yeah now I can morph between presets mostly you're not gonna get jumps between things unless you go from a preset with no animation to a preset with animation where the value there's a certain case where you can get a jump by most cases

**[01:18:57]** or pretty much take care of but if you want to guarantee you're not going to get a jump in a show from going from animation to no animation you should have a preset with no animation with the same values as the initial state of the next preset with animation and that's gonna guarantee you won't have any

**[01:19:16]** issues with values jumping but for the most part not gonna really get it anyways [Music] just check the chat here make sure there's no law issues sweet okay so um yeah I think that's the that's the gist of presets and animation oh there's one

**[01:19:57]** other little thing you can oh yeah we can set the number of bars here this is all in beats right so so now this is a four bar deal so if I wanted to do a loop oh there's an there there's a new bug I found yesterday and the animation editors there it is they're gonna have to select a parameter

**[01:20:29]** again the animation editors a little got some issues still it's a bit of a bummer it's it's always got its it's not something that people really can see this this is this keyframe jumping around thing yeah so mostly so I might need to track down that that a little bit it's not it's not really to

**[01:21:09]** luminosity itself this is like a drawing I could link because this is all automatic where I should say automatic but it's it's sending values the graph comp and sending values to the animation comm itself it's all internal so I can't do anything about it pretty much Rob's kind of got a look into that one but um

**[01:21:29]** but basically yeah so I could keep frame on these bars all these divisions this is the bar this is the beat and I keep see frame along and then my animations will be in time with whatever tempo is set up here which I never talked about but you can manually input that tempo you can tap that tempo tapping it does

**[01:21:53]** not set the tempo though tapping it just figures out the tempo to actually set it you have to hit reset sync and the reason I've done that is is because typically most VJ programs they just have a tap tempo and as far as the musician goes that gives you like half the deal like yeah you're in time or

**[01:22:12]** you're at the right tempo but you're not in time you're not on the beat so if you want to actually be in time with music you've got to tap the tempo and then you've got to tell you got to say when the 1 is so you've got to hit the beat on the one and so reset sync sets the tempo on the one so now all your clocks

**[01:22:32]** all your beat chops everything is on the one not just some random point in the beat at the right speed so that's that's without that ones about you can set that to spots you can set that also in Global's right here as well although you can't type it in and Global's but but yeah so that's the deal with the

**[01:22:59]** animation and tempo you can change speed of clip here a few other settings it's still this is kind of its initial it's an initial beta kind of realm this guy I've used it but it's it's still it could still use some more work for sure okay so next cue players a big one scenes I'm gonna talk about scenes and

**[01:23:35]** Global's first I'm just to talk about Global's just quick and then scenes quickly on the cue player and then I'm gonna go inside and go around the network a little bit and then after that some questions and answers or teach you too long but ah I want to cover as much as I can

**[01:24:00]** okay so Global's Lobos are global sources inside the network you're gonna find some other global it's like cameras and textures and stuff but um on the surface there's a couple global ramps two different ones a lot of control panels you can make floating by clicking on their title you have two colour ramps

**[01:24:29]** one is like a standard kind of touch designer ramp with as many keys as you want has its own little key frame ramp editor here and you can um you have thirty ramps you can choose from in this drop-down list and edit ideally you would be able to make new ones and everything else but top it's set to

**[01:24:53]** thirty and you can change the 30 different ramps it's kind of a special little ramp deal though you got vertical here I can monitor the ramp here you've got vertical and just say that preset horizontal all the standard kind of stuff has its own internal modulation so you don't have to

**[01:25:15]** depend on any other sources so you can modulate it the fades I should say you can modulate the phase with it looks like we only have saw right now for some reason and you can change it based on tempo you can so rather than hard values for interpolation and stepping I did I need

**[01:25:42]** to figure out find out what the actual math was for all that so to do that to for a ramp so in the process of doing that I realized you didn't really need to have toggles so so now you have an interpolation of interpolation and you have an interpolation between stepping as well so how much are you stepping and

**[01:26:04]** how much are you interpolating obviously full step completely negates interpolation but on tribulation from linear to Gaussian distribution or whatever zero to one but you can go beyond 1 which is pretty cool and you get these different kinds of patterns and then you can have power in there too

**[01:26:26]** so you can end up with these different patterns quite easily that would take a lot of keyframes to get that so well I find that quite useful and then on top of that then there's a secondary ramp I don't know I was just going off and uh and that one you can displace the first ramp but the second ramp and depending

**[01:26:56]** on what mode you set it to and then there's a few other settings here for the resolution and that's part of a preset has presets as well so and so and then the difference is between this ramp and not ramp is this ramp has keyframes and this ramp has two colors set with RGB so you can use this ramp with like a

**[01:27:19]** DMX a couple outputs two outputs from a DMX port or something and they could be setting the channels colors of this second ramp here which is a two color ramp and then just with these colors right here you can know RGB you can you can change those colors and then now in a

**[01:27:42]** global era sorry and um global mods yeah so we're in Global's inside of global mods you've got four different LFOs that are available throughout the system to anywhere where there's a mod list um an LFO is low frequency oscillator you can turn it on you can set its type sine ramp triangle hold envelope a whole this

**[01:28:08]** kind of like a triangle that kind of steps at the top and holds an envelope is exactly what it says an envelope that gets triggered and then here are the attack sustain and release values of that envelope and then there's a phase for that as well and then gain so you can have a gain on it so you have four

**[01:28:27]** of those and then in main you can change the speed of all those LFOs with this with this radio button here that's not labeled because there's no room for the label or whatever but this is a one time speed so everything is one times right now but you can double times four times eight times 16 times every modulated

**[01:28:51]** parameter with just this guy or half or quarter sixteen which is pretty useful for vjing styles and then you have a global mod gain which multiplies all these values so you can turn down all your mods all at once so you can speed up or slow down all your mods and you can turn down or gain all your mods you

**[01:29:15]** have an audio input gain audio mod is modulation is relatively rudimentary in here so you just have single single source and you have a gain here and and then if you want to change the envelope parameters or any frequency stuff it's it's inside in the devices we'll go into that later um okay so you've got these

**[01:29:39]** two monitors so depending what you're doing you can monitor whatever on either side the same and you can monitor whatever source is available to the system plus one extra one which is called render monitor which I have nothing routed to right now but that's a 3d render that

**[01:29:56]** selects the master actually that should be yeah I don't know what's going on there oh look in a second but um but yeah you can you can monitor anything you want here it's gonna be monitoring two different things video inin there's me and monitoring that on the other side and browser we've gone through that okay

**[01:30:19]** so keep layering in a leaper second still and Steen's so scenes this is just a default scene with some noise scenes are different than effects and they're different than clips but there's still a plug-in and there's still got a control panel and the difference is is that a scene is what a normal touch person

**[01:30:42]** would kind of think of as a container where they've got a system and seeing you don't necessarily trigger you could trigger it if you're seeing as some sort of triggering thing inside of it but you don't trigger it and you it could process some sort of source you can select a source with a scene but you're

**[01:31:05]** it doesn't have to you it could just generate video a scene can do anything pretty much and it can but one thing that is common to a scene is that scenes have outputs and so if a scenes got an output it's selected it's one of the it would be in the sources list so I can now select oh sorry I got the wrong menu

**[01:31:28]** I can now select a scene in a channel and now I'm gonna select I'm on scenes scenes tab and I'm on default scene a select default scene on auxilary channel one oh sorry wrong one and so now I can see I've got auxilary channel one selected I've got default seen selected there I

**[01:31:51]** can select dog dynamics scene I'll just go back to default scene for a second let's just monitor up here kill that and a scenes got a control panel it's got a little monitor it's its own monitor but you probably noticed before I started routing it these controls are just kind of example controls right now although I

**[01:32:16]** think this one is hooked up so I could hook up Meeny and input level so I've got this little basic scene where I'm mixing noise with me and not seen is basically the starter scene that particular one I'll show you where that is in a minute but on the surface

**[01:32:41]** that's how scenes basically work you're gonna have some controls there's room for another little control panel here when you make a scene it will automatically get put in this in this space if you make it properly and it will have its own tab and then it will automatically populate its outputs will

**[01:33:01]** automatically populate this list so you can build whatever and then scenes can be well scenes or they can be part of this cue system or whatever so you can do all kinds of things and you can even I think I might have made a clip the generator Yassine clip so I even made a clip so

**[01:33:23]** you can choose a scene I have to select the clip settings so this clip is selecting the default scene I can select any scene I can select projection scene in there like it's like default scene and now I can trigger the clip which selects the scene it doesn't so it doesn't trigger anything in the scene

**[01:33:49]** that actually has to be built in some sort of framework to trigger or to at least cue scenes in some way from clips but that's not the only way to trigger scenes you can use the cue player to use so it's questionable whether you'd even want to do that or not or just use the cue

**[01:34:11]** player itself so it just depends there could be a reason you'd want yes the clip could trigger a cute life so anyways you can select scenes there as well and right now I've got a couple default scenes I got one projection scene which is set up with the projection system and the mapping system

**[01:34:37]** so that way it's another starter scene that would be used if you're setting up some sort of projection mapping output okay just one second somebody's messaging me here okay just more messages more messages not to speak quietly okay so next so we've covered the externals of scenes

**[01:35:13]** and there's nothing left but server setup and the cue player on the surface oh wow okay so explanatory but um okay so the cue player the cue player is it's it's it's it's usable and it's and it works it's um not necessarily perfect and nothing's necessarily perfect but I mean it could be a lot better I've used

**[01:35:55]** it and I've realized why why what needs to be done to make it better because the workflow itself when using it in actual production is a little bit difficult it's kind of hard to deal with but I've Tom it's extremely powerful and it's so so it's quite it's quite good but it needs it does need work so basically the

**[01:36:24]** cue player is built off of the preset system it's basically a modified giant preset device that is recalling all the other preset devices but it's but it's not just recalling them all it's it actually uses all the preset devices to grab a preset for each one that it's chosen like that you've chosen for it to

**[01:36:48]** store and it stores that preset within itself and then it can also at the same time store a preset within the preset device so I don't want to confuse things too much I'll just get into how to use it but the cool thing about that is is you can make all these cues and then every individual device that got put in

**[01:37:10]** the queues you actually have it's setting storage so if you want to mix those settings with something else or whatever you have all that like that hierarchy if you choose but yeah I won't go too deep into doing that but I'll just show the basic use of the of the key player so everything in the system

**[01:37:36]** that's a control panel besides control panels and server setup are exposed to the cue player including scenes so what will end up happening is if you make a new scene or you make a new plug-in or you drop off a new effect or or drop a new clip actually clips are a little bit different but if you drop a new effect

**[01:38:03]** on a channel it's gonna this list right here is gonna be it's gonna get added to this list whatever it is so on this list it's a little small but you've got clipped channel one so this is the preset control control panel to clip channel one through five auxiliary channel one we have an effect called

**[01:38:28]** levels in slot 1 on auxilary channel 1 so that that has been registered by the cue player we have an effect called fracked and slot 2 on auxilary channel one that's been registered another one called fluid another one called displace channel 2 it's been registered but also the effects on channel 2 have been

**[01:38:53]** registered 3 master channel 1 global color ramp is there LFO 1 2 & 3 & 4 they're all their global mods default scenes that scene that that we were just out a minute ago dynamics that's a new scene I just made projects projection surface and tracers which happens to be inside the scene you

**[01:39:20]** can have more than one control panel inside of a scene go back to that later but um yeah so so those are all the control panels that are exposed to the cue player right now if I were to select well I don't have to select it but any control panel that has been technically I'm calling these control panels these

**[01:39:45]** are actually linking to preset devices within control panels or within plugins but in either case if you want to recall the and store the settings in a particular control panel this has to be active for that control panel so right now clip channel one is selected auxilary channel one auxilary fracked

**[01:40:11]** fluid fluid and displace on channel two they're all selected so they'll all be recalled and stored clips work a little bit differently but they do get recalled and stored as well so if I want to recall a clip I have to hit play so the cue player has got to be playing there's a few different modes for now or a

**[01:40:33]** manual mode for every cue they're just gonna be as well and this mode depends which mode we're in we can set both settings in both modes because you need to be able to go back between modes I found if you're actually working so we're in right now just one second here I think I might

**[01:41:08]** have removed I think I did that on purpose okay so there's one mode no there isn't okay no I didn't okay but technically I don't really use time line anyways yeah but it does work and there's two modes there's manual mode and timeline mode when you're a manual mode depending on

**[01:41:31]** the follow action of the next cue you're going to the duration of a cue is going to be the time you say in the duration so if you're a manual mode and you set their duration to four bars for q1 and it's the follow option to set the play next after four bars when this when this arrow here gets the end it's going to

**[01:41:56]** play the next cue and then same with the same width or the next one cuz I have set to play next so four bars later it's gonna trigger the next cue which happens to be the exact same movie and now it's gonna trigger another cue four bars later this edge attract so video and these are all on Bank one so we're not

**[01:42:19]** even seeing it happen right now okay so and then and now it's going to edge attract to set the cycle so nothing's gonna happen at the end so this is a manual mode if we were in timeline mode duration would have no effect and start time would be how we are defining when a cue gets triggered and cycle uh yeah I

**[01:42:44]** think I removed cycle it just got too confusing yeah you need a better you idea to have cycling inside of queues and timelines so it just it's just too much so so anyways we're just to stick to manual for now and you can set the number of cycles you can make a new cue just go

**[01:43:06]** this just by saying typing in the name of the qq3 or whatever if you thirteen and I'm going to I'm gonna make a movie 1 now I'm just gonna set this this opacity so we know we have click channel 1 active all those guys are still active I'm gonna leave them active so it will still

**[01:43:32]** work and then um I'm just gonna say new cute or actually no I'm gonna go like this no here I'm going to new cute that level and then I'm gonna say cue 14 I'm gonna set this level your cue and now you can see that that level change now that's like obviously not much different than a

**[01:43:53]** preset but I could be doing that with all these levels which are all different preset devices and at the same time as whatever else so so so the power is there for that but the easiest way to deal with a clip you can you can make a cue like we just did and you can drag a clip into the cue which works but

**[01:44:19]** another way to do it is also to just drag the clip into the playlist and there's another list comp bug right there I can't tell find why do you have a workaround for it which is drag on top of and if there's nothing in the list drag to the top of the list on top of something else in the list and now you

**[01:44:41]** can drag outside the list all you want it's just a small touch designer bug that's all if you don't know the workaround it's kind of a bummer so yeah now I'm just literally just triggering movies I just had but I'm also able to do because I think I did some stuff here last night

**[01:45:09]** but the routings changed I didn't call oh well okay so I had some cues of some fluid dynamics and stuff last night that I built that I thought were pretty good but but I changed some routings and those routings weren't part of the queue so now it's gone so that's the basic deal with that but like like I said you

**[01:45:36]** are recalling all these preset devices so not only are you for calling parameters but you're actually recalling animation as well so you're you can be queuing everything like an animating although so so ended up happening once is this list is very limited and what you can see and and what it's connected

**[01:46:01]** to especially along with this list and so you really got to keep track of what you're doing because in essence this this cue list here is similar to all multi-layered sequence timeline like the this is not that it is sequential in the sense that one thing happens after

**[01:46:22]** another but this thing can have nothing to do with this thing so you can have two queues right after another at the same time they would be in order in the list but they could have the same start time or whatever I'm not Manuel mo but in um in timeline mode and they could be toad doing

**[01:46:43]** totally parallel things on totally different things and then to stop those things you might need another queue so it gets really confusing so that it is very powerful but I think it doesn't need to be improved the workflow just to be able to to deal with that much information okay so um

**[01:47:13]** okay so we have the cue player next let me just see oh yeah I just saw the thing about the night dynamics tab yeah nobody's gonna have the dynamics tab I just made that scene this morning so to test the procedure of going to make make a scene so there's no dynamics tab okay server setup so that's pretty much the

**[01:47:49]** the gist of the performance and media programming aspect of the user interface they're still probably a few more details I've missed in there but for the most part that's pretty much most of it there are some options up here that I've removed because I don't know if they're working properly or they're not working

**[01:48:20]** properly so rather than have something that's not working and Confused people I just removed it temporarily but there's a whole concept that I built needs some work it's called a session so technically it's kind of like a luminosity project file right now the workflow is to start off with the

**[01:48:39]** default project build a bunch of stuff if you're gonna do a new show use the either the original default project again or clean up the last project because you've made a bunch of improvements it's just kind of how it has to work right now but at the same time there is a session deal session

**[01:49:00]** concept and it does work or it did work and it still I think it actually did work when I loaded it but didn't work perfectly so so it's disabled for now but it basically allows you to load and save entire sessions or projects okay so a server setup I'm gonna go through this pretty quick we'll probably want to go

**[01:49:26]** through this deeper and it is it is relatively limited other than for projection mappings so if you're gonna be doing LED mapping or any type of mapping other than basic perspective projection mapping then you might need to break out of what's been built here but I'll go over it anyways and the

**[01:49:54]** whole server setup is kind of separate from mapping anyways oh oh that's actually an important one we'll go back to this I want you I don't want to jump around too much okay servers set up just one second here I think yeah I've seen a lot of errors just want to fix up my camera here

**[01:50:42]** perfect okay so you can load up server setup by selecting the server setup menu tab and that brings you to this page that gets completely disabled when it's not being viewed and by default you should be viewing the pre previz render and I've got some geometry in there as a

**[01:51:08]** placeholder there's a camera most people probably don't have a space Navigator so I think the default project was already set to Ark ball and so you can you can use an art ball camera to navigate in this zone oh I see what's going on something is disabling my camera okay so I might not be able to do this

**[01:51:49]** with this this guy anyways but anyway so um so you have this 3d zone that's the previous area that's just one part of things this area right here this all nodes setup is kind of a crucial area it doesn't really have anything to do with this previous zone you can kind of not really think about the bottom

**[01:52:11]** half of this first second if because it depends on what you're actually doing so some of this might be not relevant at all but if you are mapping in this way where you have a single thing you're mapping and it's gonna have some sort of perspective map then this will be the way you kind of set things up you would

**[01:52:35]** first say how many servers you're gonna be running and well actually wouldn't say that you talked about that second first you would say okay well what am i rendering you figured all that out so you'd say okay I've got a render size of whatever 8k by 3k or whatever it is so that's my render actual render size my

**[01:53:00]** source content if I'm getting content from people or if I'm just rendering real-time that's gonna be my render dimensions resolution then I'm gonna choose whether or not I'm gonna be mapping orthographic or I'm gonna be mapping content orthographically or with perspective and if I'm gonna do

**[01:53:21]** orthographic I'm gonna turn that button on if not I'm gonna leave it off and I'm gonna set the field of view if it's gonna be perspective and I'm gonna set the ortho width if it's gonna be orthographic in pixels then you'll set the full map full of and your clip plane for that camera on the far clip plane

**[01:53:42]** depending what mode you're in you can change those numbers quite a bit and then you're gonna set the position of that camera so I've set that can't typically when I'm doing a projection map setup like this there's gonna be multiple people involved or whatever and workflow so and there's constraints

**[01:54:04]** of the place of the set or whatever many things so you've got to kind of figure out those camera positions that might be a whole process you might do in another program you might do it in this program it's not really within the scope of luminosity and it's really figure out where that camera is but top you figure

**[01:54:23]** out where it is and then once you do you set those values here its position and its rotations and you've already set its field of view so in this case for this projection mapping setup I've set the field of view be 78 degrees the camera position to be 5 the position of the Y position I should say should be

**[01:54:50]** 5 translate 5 and then Zed is 35 and then rotate a little bit on X 4 so in this system you're the the projection surface somewhere in the middle of the projection surface the middle of the projection service is 0 in the scene that's how I've set things up so pretty much right here at the front of these

**[01:55:15]** letters is 0 or should be 0 and so now I'm gonna make I made this camera would we say 35 and 5 so if I move the camera I'm on you can see these letters I'm using you can see these numbers down here so 40 so 36 4.75 so that's like that's almost the exact position of our render

**[01:55:54]** perspective and that's why I chose that position it's kind of a if I thought of these letters beam I think I made the letters like 10 units tall or 20 units tall I think I made a 10 units tall so the idea is you're kind of you're 6 feet or 5 feet tall or whatever a person so this one would kind of be the

**[01:56:14]** perspective if those letters were 10 feet tall and so now my renders in the system are all using those numbers all going to that after cuz we're right now we're talking about output not necessarily input so so these numbers have set up some renders in the system to use those values now in this case

**[01:56:40]** this is a 2 projector setup so I figured it was only going to take 2 projectors to cover the surface and so I only really need one computer if I wanted more than one computer I would type in 4 there actually I'm gonna do that because I don't care I'm I might reload the project if I break something so I'm

**[01:57:07]** gonna type in 4 so just in case we have more servers so now I got four servers here and now this server could have like three GPUs if I had three GPUs so now I've got three GPUs and now each GPU might have four outputs and this this whole deal might need a little bit further stuff to go on but for

**[01:57:34]** simplicity I'm gonna go back to just what we were actually working on there we go so now we're back down to one server one GPU two outputs our render resolution is 1920 by 1080 our like our full map resolution is 1920 by 1080 our GPU rendering is 1920 by 1080 because we

**[01:58:11]** only have one GPU and that GPU is gonna do the whole render so if I was gonna have two GPUs and split this across then I would set those crop settings here of what this GPU is gonna render and what the next GPU is gonna render then okay so now I've got the GPUs render setting so in a simple set up these numbers are

**[01:58:36]** gonna match you're gonna have one GPU and the GPU is gonna render the exact full map and this this is a nap right here you can't click on it but this will be if I was to set 20 here that'd be 1900 there zero so this is what our GPU is gonna render and now on our GPU we've said we have two outputs

**[01:59:03]** so I can select each output here and now that I when I'm selecting outputs this control panel in this control panel both switch to whatever I have selected they should say what output they have selected at the top but they don't so we just have to remember future we can change that quite easily take five

**[01:59:29]** minutes so now I'm changing output so when I change settings here you'll see the settings change when I change outlets but one of the things I was going to say about that is is I'm setting my output resolution here so this is the actual render the actual resolution of the

**[01:59:51]** display connected to the output on the video card and of the resolution of the container and we don't use more than one container to output because we only want one window when we're rendering live but there's three containers within that window or 2 or 4 or whatever and this is the resolution of that container inside

**[02:00:14]** the full output window but most importantly if that's your output resolution see if you got 1920 by 1080 projectors that's 1920 by 1080 if you have 1920 by 1200 then that's 1920 by 1200 completely separate from your GPU resolution which can be completely separate from your full map resolution

**[02:00:34]** this can be a portion of this and this can be a portion of this ok so next so we've got two outputs set up each outputs 1920 by 1080 we're gonna choose to map these with 3d mapping there's 2d mapping as well it's super rudimentary there's an internal warper I'm not sure of the state of it right now I think

**[02:01:04]** it's working all right but I'm not even gonna I don't I'm not gonna try it right now or display it typically ever you're gonna be doing some sort of 2d setup this is you might need to expand on what's there anyways it's pretty limited so but if you are doing a 2d set up and projectionists or mapping and also you

**[02:01:28]** have to do is to just have to output then all then you only need to set this to 2d mapping make sure that warp is off it will be off by default already initially just set that to 2d mapping and you're just outputting exactly whatever that resolution is that's it no more no

**[02:01:47]** warping nothing and that's what I'll typically do now if there's any type of 2d mapping scenario I personally don't really want to have much to do with it so it's just too hard and it's just you hard and doesn't doesn't work very well so so leave that sub projectionists ok so we've done that and now I'm selecting

**[02:02:13]** outputs I've selected texture input for output 0 I'm going to select texture input 4 output 1 as well so now output 0 has a texture input output 1 has texture input and what that means is is it's not getting its video input from the video source sources list it's getting its output from this list

**[02:02:40]** right here whatever's chosen in this list is whatever's being applied and easy the nice thing about that is is you can have some test patterns and textures loaded here that aren't part of your media performance rig and the other page and so and then this list here you can drop you should let me just find a

**[02:03:03]** something to drop in here you should be able to drop just about anything in that list and whether video or texture from the file browser but you should also be able to just go like this should be able to do this nice so you can drop tops or files in that list and the list the scroll bar for the list

**[02:03:46]** isn't too happy but whatever I'll leave it okay so now so you can select a texture there and you can test if your mapping is good or not or whatever you can also select your video you select the video input and that video input can come from any source in the system right now for

**[02:04:26]** output 0 I've got master selected I could select clip 1 or auxilary 1 or video 1 or whatever will all work yeah so so I'm in there so right now I've got master I'll leave that for now and that's pretty much it there and then run mappers to actually run the mapper and we'll go

**[02:04:52]** through that in a second go back to text your input for both these ok so that's how puts there and then you have some edge blend settings for your output here and I'll go over that in one second when I actually map as well now for the previous you've got Global's and this sets what's being

**[02:05:13]** output to the projectors know right here up top we're working on our outputs this has nothing to do with previz in a sense that its outputs the previous gets its information from the outputs but really you're working with outputs up top so the outputs are all deterrent that they're their sources are determined

**[02:05:37]** here but in the previous settings we can override whatever is being set sent to the previous lights or / projectors and I could just output a solid I could output a grid I could set that grid size to one pixel if I want to figure out what my pixel density how many feet what it's gonna look like if a client wants a

**[02:06:02]** make sure they're not gonna see pixels then you can figure that out relatively decently here if you just said it's solid you can quickly distinguish what projectors are which by selecting the projector and changing its color so we've just got a solid color there now

**[02:06:22]** and now we can see our blend nice I'm on grid and now if I go back to texture the color is still actually working it's multiplying the texture by the color I'd set for the projector one thing I just noticed here if you are mapping and you get this kind of thing this is because this is map this saw has texture

**[02:06:50]** coordinates from this perspective right now so technically there should be no geometry here at all because there's no content to put on that geometry so since I didn't want to edit the model and just hack the back out of the model that geometry is still there and it's choosing texture coordinates from

**[02:07:07]** completely the wrong spot well it's not actually it's choosing the right texture coordinates from this perspective but from our perspective it looks wrong but technically if we were mapping properly you wouldn't have geometry there and that wouldn't happen okay so we've got the texture output and I'm gonna now

**[02:07:36]** okay so we've set that so you can also set the brightness of the projectors grid size you can change the resolution of the projectors themselves which is kind of important we're not seeing it in this texture or it's not working it's not working it may need to be fixed at one point but if you've got like 30

**[02:07:59]** projectors or something that's 30 1920 by 1080 renders plus whatever else so your memory can start to you all go down pretty fast so you might need to reduce your resolution of your projectors I could display the projector IDs so you can see them shadows if you want to see shadows if you have some maybe objects

**[02:08:25]** in your scene to see how light is going to the projectors are gonna get shadowed you can do you can turn that on and then you can have stage like gain which is just if you're not projecting onto the stage just as a bit of light so it's not completely black okay so that's Global's just go down here camera you can choose

**[02:08:55]** between the space navigator or iqbal camera and you can manually set those settings there is the thing where this was built in OAD and you couldn't set the me transform matrix of the arc ball camera so or arc ball function I should say so these cue cameras aren't synced like

**[02:09:14]** if I switch between them there it's gonna jump which is a bummer but now about we have o99 super easy thing to just get the transform matrix from the space navigator camera and set it to the arc ball camera every time we transform and then that way they're both be linked and

**[02:09:32]** we can not even need this button just get rid of it altogether okay so that's that no controls will go into that and a second I should have done that before but we're we're in mapping right now so oh yeah okay so well projection map next just fix this guy quick unlock okay so I need

**[02:10:14]** to open a floating previous window because I need to look at the map view as well and I'm gonna leave this window in here even though it's small so you could see it usually I would keep this second window on another screen and I'm gonna change this so this is our actual texture output we're looking at here

**[02:10:36]** right here no I'm just gonna leave that to the side for a minute okay so we've got projectors output zero and we have our previous window right here make this a little smaller and a run mapper so now we're running camp snapper through the projector onto the surface and oh I kind of skipped a couple steps

**[02:11:10]** here you have to place your camera you have to place your projector so you've got your throw of your projector you've got your position of your projector and you've got your look at position of your projector and I've placed these two projectors at these locations relative to the center of the surface to map onto

**[02:11:34]** and I typically these all these values are typically feet most of the jobs all the drawings and everybody's working in feet so these values are all in feet you could just save these values or meters you could just be like oh that's meters and now will we find the only problem with that is is these projectors in

**[02:11:59]** relation to whatever other objects you have in your scene if you have some staging or chairs or desks or whatever we're gonna be huge so you just either ignore them and not care or party could edit them easily enough for people working in NOAA non-us areas so yeah so okay so now if I'm gonna map but

**[02:12:27]** typically what I would do is if I'm gonna map a show like this I would do all this beforehand I'd have this all mapped and blended beforehand and then I would tell all right we set up all these projectors beforehand and set up all these values it all be map perfectly or as perfectly as

**[02:12:48]** possible and I would see all these values here you can't edit these these are all the outcome of this and then I would hit save projector info and then in the project directory or above the project and luminosity directory you'll get this text file that you can give to a projectionist that will be all your

**[02:13:12]** projectors positions in feet and their lens shifts as well and the lens shifts are full landships they don't take into account like rotating the print the projector but the projection is could typically figure that out and you have to have the projector pointed at that much of an angle will sort that out but

**[02:13:32]** the position is quite important and that's the position from the center of the tip of the lens and then so yeah you can have a nice big list and put that right into a Excel spreadsheet or Google sheets or whatever and nice and easy just done that's all you and then you would have all set up and then if you do

**[02:13:54]** do that that way you still and they place the projectors if they place the projectors relatively close to what you what you intend it or what you specified and you then output out of your projectors like that original texture like I was outputting in mid ago and you just move the projectors so that texture

**[02:14:15]** fits properly as closely as possible you're like 90% there it tastes like five minutes per jet per projector to snap it camp snap it the blends are done in a perfect world you'd be done usually the the surface is not perfect so you would have to go back and DAW get some warping in there or get some start

**[02:14:39]** modifying the points of the model or whatever but for the most part a huge part of your job is like done also though I don't I haven't used the new camp snapper yet I don't know the new like I new know there's some new has some new functions so I don't know what those new functions are or if it makes

**[02:15:02]** this one completely obsolete or not but I have a feeling the idea of maybe possibly merging them might be a good idea because this camp snapper is not the same one you get that Marcus built anymore it is Marcus's it's modified but this one is different it can communicate across between camp snappers basically

**[02:15:24]** so you can so this this way you don't have to do anything you just run the Manasa T but this camp snapper will communicate with the ones on the other nodes and now that's the big thing and then the other kind of big thing is is this one can take thousands and thousands of points so if you have like

**[02:15:40]** a thirty thousand point model it's not gonna just freeze the whole system it will just the mine won't be as fast still 2,000 points it's no big deal for five thousand but thirty thousand might slow things down but it still functions but it doesn't have some of the new features so I don't know well I'm sure

**[02:15:59]** I'll find out or we'll hear about its limitations so if you're gonna map in here to for a test map you know I'm not gonna remap this whole thing because I will take I don't want to I don't want to take too much time but basically you select a point same as usual and the mouse has to stay in this view for the

**[02:16:21]** key commands to work because you can't drag around the crosshair like you can in normal caption a per because you don't have a screen beside you and you could maybe do some render pick deal to figure out where that is but whatever I didn't do that so for now all's you do is you select the point and

**[02:16:39]** you've got your arrow keys and you can zoom in on your point and then you can use the arrow keys to adjust your point and you can use ctrl + shift for a coarse and coarser adjustments it's kind of opposite than the sliders I think it I don't know if was built in the camp sniper originally but whatever it's it's

**[02:17:08]** shift and control for course of course or so you you um you move your points and you calibrate your model maybe I would have this second projector I'm kind of skimming through this will probably go through a little bit more of a actual projection tutorial but I do want to go through this a bit because in

**[02:17:38]** case it's a little while I want people to know at least the gist of this yeah so you move your points around you'd select the next one zoom in make sure the point is good okay great perfect okay I've got seven points all my lines are nicely lined up maybe I'm gonna so now I'm gonna turn off run mapper and

**[02:18:09]** now our texture has been output and I turn off the models or turn off out when I should have turned off the other projector the first time so I've got output one selected which means I have the second projector selected same thing I'm gonna run mapper there we are again so so I've got these points selected I'm

**[02:18:33]** going to select this one ah there's a toggle every time we click on that window but anyways here we go so yeah so now I would then adjust these points and I got the second projector all calibrated great that's done turn off from mapper blend was on well

**[02:19:03]** pretend it was off all time so blend was off so that projectors calibrated turn it off turn on this one that projectors calibrated perfect okay next turn on blending for projector zero or output one sorry my bad output zero blending is on on the right-hand side you have four sides

**[02:19:33]** blending is on on the right edge I'm gonna say display edge so I can see where my edge is I might offset okay so this is a whole I don't know exactly how the new cam snapper works but I do you know oh yeah I just saw the full screen full screen message there yeah it's full screens off by default I'll show you

**[02:20:00]** where that is okay so yeah this is a little bit different of a blending deal the blending for 3d mapping is not on the output the blending is on the input of the tech it's on the texture being applied to the model not on the render of the model the difference is is that the blend on the on the render would be

**[02:20:30]** the output and that's going to be in projection space that's cool that will work but that's like a lot of work to get like a nice blend because you got like these projectors on different angles projecting onto a surface that's on different angles and then you've got to blend across those angles and it's

**[02:20:49]** like yeah you can do it be extremely difficult but it can be done or you can apply your blends your blender I should say you can multiply your blend texture by the content texture before it's applied to the geometry and now your blender blending and texture space not

**[02:21:13]** projection space so now you can move your blend over along the texture for one projector and then you can move your blend along the texture for the other projector and they're lined up perfectly on the texture because it's just straight lines and then once it gets transformed rendered and transforms a

**[02:21:34]** projection space you got those blend on all these weird angles but it's perfect so that's how this works here and that's why you need this this thing called display edge so you have your blend width which is a typical setting but you also have edge offset because your texture is gonna be the width of your

**[02:21:55]** entire model or well depending whatever it is your entire thing and your projectors are only split across it so you're only rendering a part of the texture so you need to specify those coordinates for the for the blend so this offset basically is gonna offset right now 784 pixels from the right hand

**[02:22:20]** side of the texture so it's in the middle of the texture now so when I turn on the other projector I can line up its blend with it as well these two values are gonna be totally different per projector or maybe close if things are kind of symmetrical but they don't have to be the same

**[02:22:40]** typically the blend width is gonna be identical because that's your overlap and your overlap should be identical the whole kind of point to edge that number should be the same and you could do this all around like all four sides and then you can also get into some complicated stuff you can rotate your edges as well

**[02:22:59]** you can't rotate each edge separately but you can rotate all the edges so if that's there if you're gonna rotate but if you're gonna have another projector lined up that rotations got to be identical to the other rotation okay so now we got that projector we're shown its edge and you

**[02:23:19]** can't it's a bit of a bummer you can't show edge and have project blend off so blend is on when you're showing the edge kind of nice to have both options but what we don't have it so next I'll turn on the other projector so you can kind of see them overlapping there or I got that blend off or I'll turn it back on

**[02:23:47]** so now you can see both edges I had moved around that offset so you can see they're no longer lined up and that was on output one I move that offset so now I'm gonna move the offset back oh I'm moving my bad I just change the blend with there we go okay so so in this line these lines are

**[02:24:14]** like measured from I'm not exactly sure but they're like a pixel off so if you said it the one pixel wide it's not but soon as you go we're the one you can see an extra pixel but but for all intensive purposes it's lined up and now if I turn off blends on both projectors you should see nothing another deal though quickly

**[02:24:39]** here is is that if you're projecting and blending in reality the power signal of the light I'm saying it kind of wrong but the gap is different so in in the computer the gamma needs to be 1 in reality the camera needs to be gamma needs to be 2.2 so here the setting says 2.2 so this is the correct setting for

**[02:25:05]** reality that setting gets modified in this previous render to 1 so it look correct in the previous so because if you had this to point to in the previous you'd see those blends clear as a bell okay think I think that's just about it for that I just want to take a two minute break and then come back and go

**[02:25:38]** and delve into the inside for maybe 20 minutes and then maybe do some do some questions for a half an hour or so great I'll be back in three minutes you all right I'm back everybody okay so we've gone over most of everything on the surface there was some things I kind

**[02:29:19]** of want to show you about scenes maybe we'll go we'll be able to do that with we'll be able to do that with as we go through the network okay so to start typically what I'll do when I'm trying to troubleshoot something or I want to know where something is oh sorry I just got distracted I gotta keep the text out

**[02:29:56]** of my view so I don't look or the chat view I should say okay um okay so typically what I'll do is when I'm looking for something or I'm trying to troubleshoot something or I want to edit something in the network most of the time I'll just hit f2 I'll just hover above a gap a gadget um hopefully it's

**[02:30:18]** gonna be I'm kind of going to where I want to get to let's say if I want to edit this fracked plugin so I would I would basically hit f10 on top of any gadget in that plugin and I think I hit it twice there by accident and so now I'm inside that slider and I know the sliders inside of a control

**[02:30:38]** panel and I know the control panel is beside a plug-in so I haven't talked about that much yet but right now we're talking about that so so I would go up to just above that control panel and now I know that I'm that I'm looking at fractal I can see it but but I got there just by hitting f10 and going up a

**[02:31:02]** couple levels and now I'm beside that plugin and if I want I can edit that plugin no plugins got a whole system I have to decide whether or not to talk about plugins heavily right now or if we want to talk about the whole framework okay so I'm just gonna just talk about

**[02:31:27]** briefly getting into the network and then I'm gonna go full deep into the network so just to feel a more systematic about what we're talking about okay so to get inside of anywhere so this could be good for troubleshooting this is just a good troubleshooting tip or I want to change

**[02:31:45]** something hit f10 on a gadget and go up a couple levels and find what you're looking for if something's not working and you should be seeing something hit f10 sometimes it will bring you completely the wrong area you'll kind of get to know where you're gonna go over time for the most part mostly where

**[02:32:11]** you're going to do is in plugin so most of its gonna be somewhere in here yeah okay I'm just gonna start from the top down because if I start talking about plugins then then you won't you won't necessarily have a concept of a few of the other things within the patch just brutal I don't know I've never seen a

**[02:32:42]** lot of errors like that a long time but but it is what it is okay so luminosity you have six kind of main sections really you've got like kind of three kind of core sections master or processor in database these guys they're all needed but they're not as

**[02:33:08]** you're not as crucial yeah I thought so like this one bug just red disappears yeah so okay so um so these three guys right here are kind of your main and then these three guys they're needed but they're not quite as big master is where everything is that has to do with controlling all the nodes so inside a

**[02:33:55]** master you're gonna get the user interface or at least the main user interface items things like affects certain clips there's gonna be user interface items that are in the database because they're part of that thing but big use big main user interface items are all within you a UI such as clips

**[02:34:18]** and channels and all these these tabs that whole server said well server setups just below UI right here so that's inside of there there's not really a lot to do in here unless you're gonna start to customize it but for the most part yeah that's most of it's been pretty cleaned up luminosity has been up

**[02:34:46]** it's been an evolution of understanding so so in the beginning there is certain levels of understanding and now there's new levels of understanding so excuse me over time so there's different sections of luminosity that are kind of slightly different because I I found I improved or try to improve basically styles and

**[02:35:14]** method and everything so this is kind of an older area and it's slowly becoming less old but like I said earlier these are all pointless this should all be this entire its entire component its entire thing right here except for maybe that Bank slider the whole thing should

**[02:35:38]** almost be a list Kompany ways Oh for the most part mostly one less comp okay so we know what I got you deep in there though but there are there's a few things in here a lot of selectors to then server setup same kind of thing but it's all UI there's no real data in there at all no real data master at all

**[02:36:03]** you a little view be editor I didn't really talk about that but there's a UV editor and server setup it's kind of limited right now and it does work but it it doesn't do too much at the moment or provide much of a service or use two nodes this is kind of a huge one this is where all data gets funneled through to

**[02:36:29]** go to all the nodes whether it's some sort of networking type of data or shared memory style data so that all gets funneled through here there's a little bit of logic mostly everything's going through these UDT this UDT top now or are sorry dat or yeah mostly this one there's this whole kind of paradigm of

**[02:36:54]** pickling functions and objects and then sending them over the network to other instances and then execute not executing sorry evaluating those objects on the other side so you can just send Python stuff without having the function on the other side necessarily but it needs to be improved and it needs to be updated

**[02:37:24]** at one point because UDT is now no longer being maintained which is a bummer so we gotta move it to tcp/ip and I started to do that but it required some different Terminator stuff and it wasn't working right away and then I want to spend not much time at that time dealing with that so I didn't

**[02:37:47]** so it's still gotta be done at one point it does work as it is right now but you DT should be replaced most of these are just functions going back to you DT now but there might be still some or not might be there is still some direct kind of outs and a lot of these switch automatically depending which mode

**[02:38:09]** you're in I haven't talked about any of that yet I kind of should I'll just talk about it quickly you've got four modes you've got internal local remote and pro mode internal means all processing is happening within this patch or within this instance I should say within this process of touch designer local well

**[02:38:40]** actually that I'm not even that's actually not even 100% correct because this those settings are correspond and are linked to preview node so first we have to talk about nodes and I'm kind of going off-track here but we kind of have to so because I forgot to talk about it before you have nodes a

**[02:39:06]** node is an instance of touch designer running on a computer so you can have four nodes running on one server typically a node is gonna be bound to one GPU but doesn't even have to be but it is usually the master is a special node that runs the interface the master can or it cannot be the preview node the

**[02:39:33]** node that you view the preview node doesn't necessarily have to be the node that you like a preview node could be just a preview or it could be an actual node that is outputting as well but you have to know what the preview node is to at least view something so typically on a simple setup the master is the preview

**[02:39:57]** node and all processing is happening in the master whatever you do you'll see the video happen inside the master the preview node resolution might be full res or it might be fit to 1080p depending like if you have an 8k project or something or 20k project you might be running you might be one of you you

**[02:40:22]** might want to work at 1080p when you're actually just developing the project and then it's everything's of course it's all the aspect ratios are all correct but it's fit to 1920 pixels wide or 1080i fit best or whatever and then you could work that way and then let's say if you had a setup where you had the

**[02:40:44]** master is the preview node and then it is the output node as well and you're ready maybe like QK video or something so there's a lot of combinations hmm maybe this again will be another topic to go into deeper but at least to give you a sense the deal is and how to also start to

**[02:41:08]** decipher it on your own so all that being said then you have a preview node and different nodes so now you've got internal local remote or pro mode for the whole thing and what that means is is when its internal mode preview moods preview modes got to be the master there's no communication outside there's

**[02:41:40]** no network communication there's no shared memory there's nothing so internal is simple one program stand alone done local mode means you are running on one computer so you might have two or three instances lumenocity running on the same computer there might be one GPU there could be three GPUs

**[02:42:02]** it's one computer you can use shared memory and your network address is looking that network address is localhost remote mode means you're going to use multiple computers and you're gonna have multiple instances of luminosity Rani Pro Mode means you're gonna have

**[02:42:27]** multiple computers or one doesn't matter but you're using the sync chops and we're using sync to sync those nodes so if you're using remote mode across multiple computers that's totally fine you could do that like in all kinds of situations if you're running like a projection mapping setup blended across

**[02:42:45]** those nodes well you're probably gonna have to run Pro Mode like you gotta have everything in sync a hundred percent so so that's the differences there Oh real-time toggles turned off real time and a lot of these other ones are pretty self-explanatory this is kind of old I don't even know if that works um

**[02:43:10]** you can set the number of channels we kind of went over that a bit in the frame rate so yeah that's most of that and there's one other little thing here since we're here channel settings you can also find channel settings here this and this is kind of a port to everything this sets the resolution of the channel

**[02:43:30]** and whether audio is on or off so if full map if this button is on this is a rate this is an exclusive button slightly confusing probably should be a better UI but until then this is a these two buttons are an exclusive button so full map res on means this channels resolution is this source res means this

**[02:44:00]** channels resolution is this that off no buttons on means this channels resolution is custom 1920 by 1080 that's for every channel so tech tech this probably a lot clearer to understand it if this button simply grade this out and made it made it none active deactivated these fields and then

**[02:44:30]** audio on and off simply enables and disables audio a lot of shows or whatever of our kind of our work doesn't have audio so typically these would be off you also have this link button on the on a channel so I don't know if the schedule out but now you can link the audio the opacity with the volume and

**[02:45:06]** then you have an output volume [Music] [Music] okay so back to the network so I got a little sidetracked there but we kind of missed that okay so so master so that was two nodes so that's why we went off there but actually this type of learning

**[02:45:35]** actually I've been learning quite a bit recently I've been on this pretty big myrn at learning mission and I've kind of went off on this kind of it's like learning it's like hierarchical learning like learning not by categorizing and stepping through things all one at a

**[02:45:54]** time but by like like going down like the chain of whatever so if you if you read a sentence or a paragraph and it's like you don't understand a word then you like look up the word and then that leads to a whole nother and you keep doing that down the chain and then but never forgetting where you started so

**[02:46:12]** going back up the chain to where you were initially where you went off and continuing and that's been it actually works quite well and you can I found you could Doha ingest quite a bit of information quickly okay so next two nodes so that's sending out to the nodes that's the master sending out to the

**[02:46:34]** master Oh when we're in all those modes just quickly since we're talking master and everything when we're in all those modes if master is if the node is the master when you start up an instance which which set some environment variables when you start things when you if the node is the master this is going

**[02:46:58]** to be cooking for sure if the node is the master and it is set to preview then this is gonna be cooking for sure this is the processor this is where all the video happens if the node is not the master this is not cooking period if the note is not the master this is cooking 100%

**[02:47:26]** so that's that's how that's the way that works or that concept and so now you have two nodes and that's talking to all the nodes the master talks to all the nodes and the master also needs to get some information back from the nodes such as some texture data depending who your preview node is and then also some

**[02:47:54]** you have some preview node stuff there and then this guy here this is all nodes in this is kind of a manual deal right now it saw it has to be kind of reconfigured every time you set up a new system right now because I kind of hacked it apart in a previous build and never be built it so so if you want some

**[02:48:19]** information back you need to kind of handle most of that except for the first nodes the preview notes you get that information automatically okay so that's that then I'm gonna just put this up here for now and then processor you've got a command processor which is the complement to two nodes this receives

**[02:48:50]** all the information from two nodes which was a master back here and now you've got it seems to be called from nodes but I and I start come up with this concept of the central command processor that doesn't matter if your master or a node a slave node and this is really how things well I don't know I can't say

**[02:49:14]** should be but there's a whole discussion about centralized commands but that could take place but anyways so this is where most of that information comes in someone has to get split out for various reasons and some of its comes in in different ways for various reasons then here's another this

**[02:49:42]** is a pretty core part this is video routing so this is so this whole channel rig we see here this is basically happening here the actual the actual here let me go back for a second the actual processing of that let me run a couple so then yes I'll do that and fluid or fractal or something going on

**[02:50:19]** there okay so ah there we go so I'd do this that's the one I really wanted oh ah whatever um turn this while I'm down okay so we have some stuff in there so so these are the channels the UI channels and these are located in UI / channels say it got clip auxilary master

**[02:51:04]** channels mostly you don't want to be touching these this is dangerous zones to be messing with but they're here anyways if there's something that you need to kind of sort out or figure out or whatever so that's where they are but their corresponding processors are here or processes so clip channels now you've

**[02:51:29]** got a replicator with five clip channels now this clip channel is so what happens is I'll go through the logic a bit so when you click this button this button says to this clip channel to play this video that was specified that was you had this Bank selected in Lane and whatever so this button tells a function

**[02:51:59]** in this extension right here should be loaded in this extension that Pullip check that that UI trigger button calls a function to run a load of clip there and so what happens is is this receives that that trigger and this then says okay am i playing anything and if so what side am I playing it on okay I'm

**[02:52:26]** playing nothing or I'm playing on the right hand side okay I got to load something on the left hand side okay I'm loading this clip over wherever on the left hand side so it calls a function in the clip and says okay I'm you need to you need to load unloading you and so it says that to the clip that's that the

**[02:52:48]** clip loads itself when it's done loading it this channel again it's done loading and now this channel selects the clip loads it and crossfades it so that's like kind of crucial signal flow of how the whole system works basically the channel tells the clip to load itself and the trigger

**[02:53:13]** tells the client tells the channel to do that and then that basically makes it so you got this system or you can tell it to load new things and it will only load new things if they're ready to load because they load themselves and so there's some extension stuff in there and there's a few things that you have

**[02:53:33]** to be aware of if you want to modify some of that stuff but mostly not to modify it but you may need to use the trigger stuff if you make some special clips and then there's a little bit of stuff here I noticed yesterday I kind of forgot I put it in here and this is a thing I did for a job a little while ago

**[02:53:53]** to drive the index of all the slave nodes of all their movies because the client wanted I told them how the system worked and they didn't trust that the touch designer process themselves would sync up perfectly even though I knew they would and he wanted the movies there there are frames to be synced

**[02:54:18]** directly so I built that in so you now you have option you can you can sync your movies a hundred percent like frame by frame which works fine or you cannot sync your movies on a percent frame by frame but if but if you're running touch think you don't need you it the processes are in sync

**[02:54:39]** and if one stalls the other stalls so technically there's less room for error with the frame because maybe you can get some sort of out of sync nests happening somehow but I have never seen the issue but either way both options are there so yeah so this part selects it and then you have some effects I'm going to talk

**[02:55:02]** about the effects in my axillary channel because I want to talk about the auxiliary Channel next first so that was clip channel a little bit different than the auxiliary Channel because it selects a clip auxilary channels they don't select the clip they select a source and so depending on how many sources here

**[02:55:31]** I'm going to open us in a floating window for a second actually I think I could do this nice perfect start depending on all that just to get me there my bad okay here we go so we're looking at auxilary channel zero which on the interface shows us exhilaration of one

**[02:56:00]** so there's their differentiation between labeling and names within touch designer all usually start at index 0 while labels start at index 1 mostly I try to be really consistent as much as possible about naming I'm quite particular about naming conventions so you'll notice in touch - in luminosity almost everything

**[02:56:27]** is lower camelcase for operators unless it's a big operator like a cue player or something all storage is all caps with underscores if it's global storage if it's local storage for a component it's upper camelcase and if it's local storage within within the operator itself like

**[02:56:56]** in a DAT like you're gonna just like store within itself in its lower camelcase so for myself I can tell what's a path or what's storage or whatever or at least I know for paths that things start with like I know the name and I know about it starts with a lowercase that's my own convention I've

**[02:57:16]** kind of steered clear or veered off the Python underscore lowercase off and underscores and now I'm starting to adapt because that's standard Python convention so I'm starting to adapt to that within Python okay so um marina axillary channel zero and we've got one thing routed to auxilary channel zero

**[02:57:40]** and so in essence channels or mixers so we've got clipped channel one routed auxilary channel zero and now I'm gonna okay well I'm getting confused between the interface and internally and I'm gonna stick to interface now yeah let's stick interface so our channel one I'm gonna route that too so

**[02:58:02]** the replicator just made a new select it should be the right path it is huh it's got a expression that shouldn't be there that should be a hard-coded paths and scripts should be doing that but whatever it's an expression and nothing's playing on that channel now there is and you can see it's plain

**[02:58:27]** because it was selected and now if I turn down the level now here's another thing to to save resources and same speed this level like you know I didn't want this level to be turning down the level of a top like why would I want to turn down the level of a top and insert a new top and the chain when there's

**[02:58:47]** already somewhere in that chain I just have to change the value of a number so this whole system of sins and everything the complication gets a little further but the performance gets a lot better by know I've got some bad performance going on here I'm running like three fluid sims and this capture and I got three

**[02:59:12]** windows open so it's not the best what I'm doing but this does save a lot of resources by having this whole convention so basically whenever you route something to something it's not only are you ready in the video but you're routing its levels and its attributes so it's blend mode and it's

**[02:59:34]** it's sorry wrong channel it's blend mode and its opacity all get routed to this channel so you can see the clip 0 1 2 & 3 have all been routed to auxilary gonna stick to the inside convention now 0 channel 0 I guess an easy way this to understand the difference if I say auxilary one that's I'm on the surface

**[02:59:58]** if I say auxiliary channel 0 well yeah it's it's kind of a kind of a thing to sort out it's always something but well no so that's how that works so now you've got four things being mixed in this little GLSL mixer and I think I proved that no this is an old one how about so so that's that and now yeah so

**[03:00:25]** then that that mixes all those channels down to an output then that output gets selected by this channel effects system which is really doesn't need to be much when I was looking at this last night I was like this entire thing could be one function or maybe a couple functions but in an extension that's but it's doing

**[03:00:55]** its job and what this does is makes it so there's another resource performance helper basically you have six inserts on a channel so you can load six effects but if I have them all off like I don't want them running through a bunch of selects or anything I just want I don't want anything extra so what all this

**[03:01:24]** network up here does is makes it so basically all the selects only select what is needed so every one of these effects in another location which I'll go to right now every one of these effects has to select this all gets copied and pasted on its own when you when you load

**[03:01:54]** up an effect all these effects on there have a select so and our weeks I don't get where in zero and we're on slot three okay that's fine yes so right now that's going to select whatever can get a little confusing how to to to program it never hope just put this below whatever was below whatever was the

**[03:02:26]** other one that is on so if nothing is on it's just the input but if one of them is on then it's gonna select whatever was on so this is this is the output so nothing is on so it's selecting the input right there but if I turn on fracked and it's mixes over so I've got fracked on so now this guy is selecting

**[03:02:50]** slot one plug in channel zero effects slot one plug in one so I turned it off and now it's back to the input so but now if I go like this and I turn on displace now this guy's selecting slot three and if I was to go look at slot three it's going to be selecting slot 1 and

**[03:03:25]** then if I turn it all off it sets them all to their defaults so it's like hard dynamic hard coded or dynamic whatever it turned things off and on that don't need to be on unless you want the mom the downside of that is is when you turn on that you could be if you already loaded the effect you probably not gonna

**[03:03:51]** see a stall but it's gonna be a hard snap and if that level is is in the wrong spot and there's an activation situation also that happens when you turn off and on that buy in the plug-in itself so if your plug-in is of a type that cooks when it's not being selected then you should use this activation

**[03:04:13]** function in the extension to turn off and on those components so that plug-in is not just cooking randomly on its own when it's not being selected if you don't want it like unless you want it to be for whatever reason so for a few plugins I have that built in because like you don't want that thing taking up

**[03:04:33]** resources so so that's there um okay so that's channel facts in video routing master channels are similar auxilary channels there's only one master channel on the UI there can be more than one master channel that can be routed to the only thing is if there is more than one

**[03:05:02]** they'll all have the same effects and they'll all have the same level so that gives you the ability to route a bunch of different stuff to a bunch of different outputs and all the same effects and I'll have them on one fader that's the point of that okay and next okay i'm gonna actually just do this

**[03:05:30]** floating mr. house okay so that's pro yeah so there's one more thing in processor just quick audio routing audio super limited it's just basically it's disabled you can't there is no audio on auxilary channels it's only the clip channels and they get mixed down to one master Channel and

**[03:05:49]** there's no routing it's just clips to mix that's it so here they all are there if they're activated they're on it's a little bit of a network in there and so now that will get mixed in the mixer and then output selected by divided the audio there is a selection spot in the output devices zone I'm just gonna check

**[03:06:23]** the chat make sure there's no problems or issues here quick okay so I'll get that output going since there's a question there yeah super I just use I have this one toggle in here I'm gonna put these positions back for development mode because I don't want to have outputs on my side screens because

**[03:06:57]** of whatever reasons so right here on this perform call there you go so just turn that on and now you'll have outputs yeah okay I'm gonna go back into this perform well since since we're kind of here on outputs so we've gone through master we've gone through processor I'm

**[03:07:30]** gonna turn down this audio okay so we'll just go over outputs right now because it's kind of a port okay so the output system there's a bunch of other connections there no I'm not gonna go through outputs yet because there's there's a few other things just if you want to see output

**[03:08:08]** right now just turn on that a couple other things to talk about before talking about output so you have a better understanding of what I'm talking about okay so utilities not much to talk about they're just it's where Camp snapper lives whereas it's where the animation

**[03:08:26]** editor lives Video Converter Peter Walker's plug-in designer which is pretty awesome I'm not gonna show how to use it he's going to do tutorial on how to use it it's how it's a tool to quickly and easily make plugins so it's pretty it's pretty sick pretty sweet and but it may or may not be working in this

**[03:08:48]** build so I'll just let it be for now perform not much to do in there at this moment other than toggle that switch off and on most logic is most of this is just all automated and if you want to switch your output stuff you could just hack this completely away but if you don't want to then there's another spot

**[03:09:22]** to do it so I'm just going to leave that off off for a minute local I'm just gonna go over this quick because it's it's not quite as big as database local there's some storage stuff here if you want to make some new global storage values you can just enter

**[03:09:40]** them into this table and it will automatically store whatever you type in this table like I said earlier all uppercase underscores for all Global's and global variables as well this is a global storage but you could have variables I don't think there's variables in here

**[03:09:59]** but if you did this quickly there's some notes here spot where I store a few notes start up some startup scripts and functions if you want to make some new startup stuff I don't recommend messing with too much of this unless you really want to well figure it out but if you do want to add up some startup stuff I like

**[03:10:25]** to try and keep stuff consolidated so you don't have 20 startup scripts into 20 different places so pretty much all you need to do is add a function to in it and then add a call to your function in the init function in the init module so just add a function here define my start function whatever pass and then

**[03:10:58]** call it here my start function and then it will call three frames I think after startup it's important the timing of this I noticed this order should be like this but either way this gets called three frames which is important because it gets framed after it finds out what know what it is so this order of

**[03:11:26]** operations is kind of a port and I put this guy in recently because just I'm still getting this this saw it's not switching before going in before loading deal when I perform mode so so it has to flick in and out of perform mode afterwards just which is a bummer because really you don't want to exit

**[03:11:48]** perform oh ever for a performance so if we could get this sorted with derivative this would be nice there's a few other scripts here you don't really have to do too much there this gets loaded a preferences file on your hard drive in the luminosity folder

**[03:12:07]** in assets if you're running multiple nodes this should be moved to like a C Drive one that doesn't change because when you load multiple nodes they all get loaded off the the drive of the master so there's no copies of project files across nodes there's one project file on the master and that's it you

**[03:12:29]** might want to back it up of course but so preferences if you want different preferences per computer they need to be not in the project folder but for now they're there and until they wouldn't need to be and that won't get updated doesn't get updated on startup unless you pulse it yourself only gets updated

**[03:12:51]** on startup I should say okay load Clips don't really need you much here it's some functionality and scripts to little clips and it's more than just a function because you have to make thumbnails and stuff and scripts there's not a lot of scripts left but there's a couple and they kind of need to be there for

**[03:13:09]** whatever reasons so they're still there modules this is all module not all modules because some some modules are local to their components but the main ones are here I noticed these to you these are pretty much garbage I think delete them on the next build or update these are some functions they're used in

**[03:13:36]** a lot of places a lot a bunch of useful functions in there the left-hand side it kind of goes from older to newer from left to right and you can also see from the name you know I started changing my naming convention here and so this clearly differentiates that these are not extensions and these are extensions

**[03:14:05]** so these are modules that have a class that are inherited by somebody or imported or whatever so so that's that's why I like this new naming convention some of the stall it's there and it is what it is I'll go over there's not too much to talk about in there right now but

**[03:14:29]** there's one kind of handy feature here and it modules loads every module in the sublime if you change your review turn tabs off and sidebar on then you can actually see their names and select them all and edit them all I try to be as clean as I can be with with conventions and code and clear I'm not I don't I

**[03:14:55]** don't know I read from a Google supervisor once some lecture that he doesn't like comments because code you should be able to read the code and why would you need to comment if code is a language and it says what it's doing so I have almost no comments luminosity I'm sorry there should still be some

**[03:15:18]** comments I took his suggestion a little too far probably but I'm starting to do a little bit more commenting now but I do try to name my name's very clearly and have long names so the names themselves City what they're doing but so I think there should be compromise you should say what this something is

**[03:15:39]** doing or maybe kind of clarify but at the same time commenting every other line is so those are all their modules scripts done that master comps this is a new thing when I first started building luminosity I did some tests or none II I don't think I did tests I just decided I'm not using clones because clones or

**[03:16:08]** can just be a nightmare if you get into a bad spot so I don't want any of the UI gadgets to be clones but I recently decided to give clones another shot so all like this is cloned everywhere now all control panels are cloned all preset controls are cloned I think even this guy this little radio

**[03:16:28]** button is cloned not these gadgets not this just the panel itself and not plug in plug ins not cloned but these three guys are and there's pretty much zero for anybody to do in these unless you want to change them and change what they do but I'll go over how that works well there's not really much to go over but

**[03:17:00]** this is that blender this is the MA deal and these are all meant to be as efficient as possibly possible or at least I could possibly do so if you're not animating if you're not modulating if you're not setting a preset nothing is being used hopefully one thing about presets so quick is for performance if

**[03:17:24]** you okay right now I have to make this floating right now if I were to recall this preset for whatever this is and let's say it was this table here I don't think it is or maybe it is but whatever if I was to recall this preset I had to get the numbers you have to get the numbers somehow out of out of Python

**[03:17:56]** into touch so I end up doing a lot of tasks and ended up being like them it's not the best method but it is the best method given though given the limitations and everything else but it's and it's the fastest method is to go to put all your numbers values in a dot and then convert them to use like an examine

**[03:18:16]** or a script chop like everything else is slower so or at least was so but right now though when you recall a preset if nothing is disabled here in this column this entire text gets replaced all at once it's the fastest way to recall a preset all you're doing is saying

**[03:18:37]** whatever you stored some text in it in your preset and you stored that text and you're gonna recall it and you're gonna set dot text equals whatever your text is and then BAM one shot so for for control panels that have more than ten parameters it's significantly faster tap all these on then for control panels

**[03:19:04]** with five or less parameters or whatever lesson 10 it doesn't really matter if these are on or off but as soon as you turn one of these off you'll lose that performance gain because you can't set text and you got to set each of these values one at a time and it's got to iterate through the whole list and since

**[03:19:22]** all those values so faster if everything is on or only a couple are on so there's that that choice and these this corresponds to cues as well okay so we are a master plugin we're not gonna go too deep because we're gonna talk about plugins later time not much going on there it's a time component luminosities

**[03:19:51]** following this time there is an extension that uses the tap tempo stuff for how early it is the tap tempo deal and it's works quite well so yeah it's their UI gadgets this is where all your master UI gadgets are later when we talk about building plugins you'll want to know what the

**[03:20:16]** names of all these are so you know what Kansas are available to you although if you make plugins you probably use the examples in the plugins so it doesn't matter but this is where they are almost all these you can use except for these three are meant for a different type of control panel and

**[03:20:33]** this is a channel you can't load a channel into your control path so there's a few things but for the most part all these in those all that's there all good together little right context menu or the right-click menu or go that's a drop less sorry that's very quick copies

**[03:20:53]** whenever you sit hit copy or cut they get put here typically if I'm saving out a project like a master copy you just want to go like this copy and copy something blank and so these get loaded with blank default plugins all right so that's local and database ok so this is pretty uh pretty huge save outputs for

**[03:21:30]** the end devices yes the device is pretty good one to start with as well all your hardware devices come in this is me or video input top another video input I got the camera controller in here or there's a connect ability in here I got to find out these things they're getting created by a script for some reason

**[03:21:57]** audio device in audio device I have this labeled because I want to do some processing before the rest of the system selects the audio device in so this is what you would select um there's an audio device out a little LTC two frames deal for slating the cue player so there's a whole kind of rig kind of

**[03:22:26]** under the hood if somebody wants to use it I can tell you how at one point globals this is where all Global's get stored including global mod sources so those LFOs or those ramps we talked about earlier so these are actual plugins with control panels sometimes you won't see them because I have this

**[03:22:50]** automatic hiding thing to help resources and not get framedrops when changing views so if you can't see your controls you can say display controls and if you're getting a plugin we'll go ahead and plug it later but a little snippet there so colors lights I don't think I have any global lights right now

**[03:23:17]** textures there's a couple that's where that one texture list sits geo this is where all global geo lives so that texture surface or mapping surface gets loaded here from disk or wherever and gets processed possibly for whatever reasons and then gets ingested into this comp and then you may have more than one

**[03:23:46]** piece of global geo so you might have so you would connect different ones to all these different outputs basically your selection of ways to select you don't have to use a system this is just some global paths to select these so that way when you're building a plug-in or a scene or whatever and you want the

**[03:24:05]** plug-in to use some of the same geometry that a scenes got you would have all that geometry here and be able to select it by the plug-in and the scene and if you deleted the plug-in or the scene or the name or whatever you wouldn't have to change all your paths and everything so

**[03:24:20]** so that's why that's there yeah you might be doing some sort of spatial mapping deal so you have that previous geo ends up inside there's really not much to do in here except maybe you might want to change the materials a little bit but this is the actual material in the previous of the

**[03:24:42]** projection surface and then there's the previous environment which is right now just a plain but you might populate this with bleachers or scaffolding or whatever people give reference whatever you you'll put that in this zone and then as long as it's set to render it will appear in the previous render and

**[03:25:08]** there's a test render here to help you set up your projection your projection perspective when you're setting up your render texture your full map render and what I'll typically do is use this shader right here and it will make wherever that shader is it's a custom shader so oh no it's not even no it's

**[03:25:32]** not even a shader it's just noise applied to faces probably the point sob so so yeah I use this so I can differentiate clearly between faces and edges and you should I save this out and then I'll load it inside that's right there and I think actually this time I loaded null too directly I didn't even

**[03:25:54]** save at this time which was pretty cool and I loaded melting directly pretty cool because I don't have to save a file anymore okay and so Geo cameras there is one global camera that's not being used but it is does have the proper setup so when you change those settings I should keep

**[03:26:20]** that window open sorry I should do this a global of cameras so if I was to move these settings here it's got some projection matrix so I would have to look at it here but if I have to change this it's gonna change those so you don't have to touch you don't touch cameras unless you're gonna

**[03:26:53]** have your own rig for whatever reasons but if you're gonna use this system you don't touch the cameras they automatically set themselves up just make this bigger that Auto levels comp is here for some reason it wasn't selected I'll make it work on another build global mod sources we're gonna go

**[03:27:22]** through that that's done okay so that's Global's plugins this is where you would create and modify plugins there's a new paradigm for plugins now where plugins get loaded from disk and less of their a player because players are just replicants of the same so you don't the

**[03:27:40]** UI doesn't there's only one UI and it's always the same copy so there's no reason to have this on disk but now all generators and effects are on disk if you want to edit a plug-in this is where you could do it there's a couple of workflows for editing a plug-in now so we'll talk about that when we talk about

**[03:28:03]** any plugins but this is where players are at least are right now like the master version scenes this is where you would build and load a scene it's getting kind of late and I don't want to yeah it's three and a half hours now so yeah I don't want to go too deep on how to make a scene basically copy the scene

**[03:28:31]** I'm gonna go through fast copy the scene give it a new name already has a new name this one give it a new label go in the scene Oh tell it how many outputs are gonna want one go inside the scene make sure the output has a new label and now oh and also you're gonna have to

**[03:28:57]** recreate the control panel because all the paths would have been wrong because you just copied it from another location so that should be all fine and this should all work should all be working here and let me make sure the control panel is gonna work first so the high speed scene creation and let's go

**[03:29:21]** level that's not working or maybe it doesn't my ass nobody's working-level just wasn't hooked up to anything so ah because this is just the default thing I just kind of slammed it together so you can see that controls are working for

**[03:29:48]** this a new scene and the new scene should if everything's working up here in this tab so now the list the scene is here and you can control those settings there and you can select let's see here perfect so yeah there's that's how you make any scene so that seems I'm starting to go into high-speed mode

**[03:30:21]** because I'm kind of getting tired server data this is where all server data gets stored for every server you're gonna have a comp call and with a server and for every GPU on the server you're gonna have a GPU and for every output on the GPU you're gonna have an output can for every output you're gonna have some

**[03:30:41]** geometry and some settings this is where you would edit your outputs geometry right there because you can't edit it in outputs because you're unless you're running a simple system but if you're running a big system with multiple nodes you can't edit in outputs because outputs changes

**[03:31:05]** every time you load a new node so you've got to edit it here in the data base so GPU 0 server 0 GPU 0 output 0 edit geo you can model it do whatever that's where you edit it so that's that channels this is where all channel data is so inside you've got some other types of channels video channels shouldn't I

**[03:31:34]** have the kind of column because of their sources and routing but really the only concern here is these three clip channels goes auxilary channels master channels so inside of each of these is another container and in each of those in each container is the spot where you've got all that's routing and all

**[03:31:56]** the logic for that and that and then it's got this is actually a plugin now we're actually inside of plugin so it's got some presets and some animation because don't forget that a channel is a control panel so the control panel is way over here in UI but the plug-in link to that control panel is right here and

**[03:32:16]** because it's a plug-in it's got a presets comp and it's got an animation comp inside of it and there's some things here so I'll go too deep into that clips this is where all clips live one that are here so you've got banks so we've got whatever how many banks you've got created I've got eight banks Bank

**[03:32:36]** zero you've got five lanes and Bank zero you've got eight Clips because there's eight columns in and Lane zero and then clip zero I've got an audio plug-in loaded I think yeah and it's not planean but if I play it you'll see you play there

**[03:32:57]** and now that went through that whole selection system of the actually this one went through that well the this one told the video channel to switch which then told the clip to play which then told the video channel that it has audio and it needs to tell the audio so that's that I would did plan on doing kinda

**[03:33:27]** like a little VJ sesh to get all this stuff set up but but there's a lot of stuff to go through okay so we're in clips we're done their channels Clips previz that's where the previous deal is the whole render thing don't need to do much there a cue player not much to do here unless you plan on doing some

**[03:33:52]** custom stuff which you can there's some callbacks and there's a preset oh all presets Oh presets have so for any plugin that you're gonna make and this is kind of actually more relates to plugins for later on but whatever all presets have custom callbacks so you can call back you can make your own

**[03:34:20]** functions and store whatever data and recall whatever data and do whatever you want with that data in a preset device but that was a little tangent there but you same with us because the cue player is in in effect a giant preset device you can do the same with the key player control maps not a lot to do here but

**[03:34:46]** there could be once in a while of maybe fixing something or somehow processing your MIDI before it gets processed and dealt with by the system so if you're going to do anything the MIDI you do it you'll need to do it right here if you need to turn the controller into notes or notes

**[03:35:07]** into a controller or whatever oh and source test tables not much to do in here this is just kind of a lookup table calculation zone so calculate some well actually calculates the video sources that we keep seeing everywhere all the paths and all the labels and you can add any source to that list here scenes

**[03:35:33]** automatically sources get created channels automatically gets created but let's say if you added a real sense or some sort of other video input device or some sort of other color ramp you want it completely global to the system just add a new row or a copy that one of those rows first copy one of those

**[03:35:54]** append copied sorry pen copied and then change column zero one and three unless you have a unique label unique name and every source is actually a path to a component that hasn't out one inside of it you don't specify the up one but you yeah you don't specify the out one you just specify the component the reason

**[03:36:24]** for that is is that sources could have more than one output so although right now we're not really dealing with that but that was the logic that they could be in the future oh there's a little note there too I think to tell you about that so that's I think that's it at least for

**[03:36:48]** the quick deep run-through of luminosity there's obviously a lot more but for the most part I think that give you a good good perspective maybe there might be some spots that we need to well obviously be nice to rip a lot of what I just said out of this video into a more cohesive and logical structured kind of

**[03:37:16]** documentation and/or videos but I myself am NOT gonna be doing that I'm kind of on a whole different path right now of what I'm working on so I might my my enthusiasm for luminosity goes up and down it's kind of like waves so right now I'm like in the trough although yesterday when I loaded it up I got

**[03:37:37]** pretty excited and I made some pretty cool looks I was pretty stoked so I'm gonna sighs soak the show off a few of those looks I haven't yeah but saw but I was pretty stoked and I was pretty fun but I'm not gonna be working on luminosity full-time unless somebody hires me to work on it basically if they

**[03:37:55]** want some sort of function but ah but I will provide tons of advice or whatever and I will fix the odd little thing if it needs fixing but for now I'm not I'm not gonna be doing a lot on this but I'm happy to answer whatever questions and partake and you never know I don't know like six weeks or I well yeah after let

**[03:38:21]** yesterday basically I'm really stoked to and to incorporate what I'm gonna be what I am learning and what I'm going to be learning in the next few months into new systems and there's gonna be some crazy graphics but for now I just kind of let it all go and and then see what you guys build and see what can really

**[03:38:46]** happen because really this has been barely used it's been barely like I'm the only person who's used it Peter Walker's used a few times Peter sistrums uses a few times Julie's Easton Harden's used in a number of times

**[03:39:01]** max Chang money used to once or twice but not that much for other people using it and if we can get a little community going where there's people using it regularly then that makes me extremely stoked because now all that time and effort that I put into it is not wasted it's being used so yeah thanks everyone

**[03:39:28]** and Wow stick around for a little while and answer a few questions if you guys have some questions you want to send through the chat if there's anybody left and yeah not perfect and in the meantime I'll probably just start tweaking some parameters yeah that's a great idea Pete with the

**[03:39:51]** wiki github wiki for for for documentation awesome that'd be great Ted thanks shoot me a message with your email or or some sort of contact and we'll law will get now we're gonna contact a hooked up okay I'll do a quick demonstration of editing an effect and making a new

**[03:41:14]** effect and generator it's pretty much the same process solution multiple servers running I kind of went through a quick that one is a tough one like there's not gonna be a lot of extra help with the multiple servers if you're running multiple servers it means you probably have a pretty big budget it

**[03:41:33]** means you could probably hire me to help you sorry but that's kind of the way it's gonna go but for the most part if you want more than one server hit for select more servers select more GPUs select your outputs I will we will document more but when you start and ask about the extended abilities for a

**[03:41:55]** particular job or whatever then I will draw the line of what I will do basically because this is a pretty heavy-duty system that could basically save companies unbelievable amounts of money if you are chosen you should be able to get it going just by oh but if you're running multiple machine if

**[03:42:24]** you're trying to get it working across multiple machines right now yeah that's a tough one that you're you would really probably need me to help you maybe not maybe not but at the same time if you're actually trying to get other machines to work at this moment there's a number of things that we would have to make sure

**[03:42:48]** are working for one you definitely need this to be on local or remote my dad sorry remote for one you definitely need to be a remote to be controlling another machine last time I did check though everything did work it was my turn thing I turned off at your local or remote on and

**[03:43:09]** I said tell oh yeah and then there's one other part too I didn't tell you guys about no controls and then I would say start all nodes and everything's last time I checked but like I said I haven't checked in a while [Music] [Laughter]

**[03:43:48]** [Music] [Laughter] [Music] dressed in the trough of a waiver in several nobody ever saw breasts without troughs or crops without breasts just as you don't encounter in life you don't

**[03:44:23]** encounter a coin that has the heads and their tails and although the heads of the tables there at the same time one and one has to stop [Music] things can be inseparable that what is explicitly you know the same time be implicitly one

**[03:44:53]** [Music] [Music] [Music] [Music] [Music] [Music] [Music] [Music]

**[03:47:00]** [Music] [Music] [Music] [Music] [Laughter] [Music] well I think that's it everyone for everybody stuck around the whole time

**[03:48:56]** thanks that was a long haul
