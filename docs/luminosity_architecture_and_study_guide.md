# Luminosity — Comprehensive Architecture & Study Guide (2015–2026)

> Synthesized directly from:
> 1. Derivative Community Post (Feb 24, 2015): *Luminosity - Keith Lostracco's TouchDesigner Media Server* (`https://derivative.ca/community-post/luminosity-keith-lostraccos-touchdesigner-media-server/60720`)
> 2. Presentation Slides: `docs/Luminosity Presentation.pdf`
> 3. Live Stream Walkthrough (Mar 25, 2018, 03:49:08): `2PGyi3eD54s` (`docs/tutorial_2PGyi3eD54s_full_transcript.md`)
> 4. Quick Gen and Effect Tutorial (Mar 26, 2018, 00:34:13): `8oJbAK8lkBo` (`docs/tutorial_8oJbAK8lkBo_full_transcript.md`)
> 5. Codebase (`source/`) & Live Project (`project/Luminosity_0_9.toe` on TouchDesigner `2025.32460`, TDMCP port `13317`)

---

## 1. Purpose, Origins & Core Design Philosophy (2015 Derivative Post)

- **Creators & Contributors**: Created by **Keith Lostracco** (`IntentDev.io`), with contributions from **Peter Walker** (notably `PluginDesigner`) and **Matthew Wachter** (notably the previewing File Browser). Licensed under GNU GPLv3.
- **Core Idea**: Bridge the gap between a **high-end media server**, a **live VJ performance tool** (Ableton-Live-style clip triggering), and the **open-ended node-based programmability of TouchDesigner**.
- **Production Debut**:
  - **BlizzCon (StarCraft II stage)** with V Squared Labs: 12 projectors 3D-mapped onto a complex stage with full PreVis.
  - **ESPN Super Bowl event**: 24-projector setup managed by Luminosity.
- **Architectural Influences**:
  - **Audio Production / DAW Mixing Paradigm**: Video routing, bussing, insert FX, pre/post fader sends, auxiliary channels, and master channels mirror large-format audio consoles and DAWs.
  - **UI vs. Media Processing Separation**: Early on, Keith decoupled UI processes (mostly CPU-bound gadgets/controls) from media processing (GPU-bound `/Luminosity/processor`) so single-GPU machines don't drop media frames when navigating UI, and multi-server scaling (`master` controlling headless/slave `node*` instances) works naturally.
  - **Performance Discipline**:
    - Avoid continuous parameter exports where event-driven Python scripts + storage can drive values only when changed.
    - Split CHOP networks into cooking vs. non-cooking networks.
    - Use custom GLSL shaders (e.g. `mixWithBlend` multi-input GLSL mixer) instead of stacking redundant `levelTOP` / `compositeTOP` chains.
    - Heavy reliance on TouchDesigner **Storage** (`store` / `fetch`) and **Extensions**.

---

## 2. Live Project Anatomy (`Luminosity_0_9.toe`)

Verified against TouchDesigner `2025.32460` via TDMCP on port `13317` (`project/Luminosity_0_9.toe`):

```text
/Luminosity                     (containerCOMP, op.LM, 1920x1079)
├── local/                      (baseCOMP — core modules, scripts, startup, uiGadgets, masterComps)
│   ├── modules/                (Python modules & extensions: lm, Plugin, Clip, Scene, CompUI, PresetsExt, ...)
│   ├── scripts/                (dropEffect, effectSlotRC, routingScript, InitAllExtensions, reBuildAllControls, ...)
│   ├── startup/                (init, setPreferences, setPreview, setServerGPU, setupCmdProc, storeFullMapCropData, ...)
│   ├── uiGadgets/              (Master UI gadget templates: valSlider, valSliderM, button, field, droplist, multiButton, ...)
│   ├── masterComps/            (Master cloned templates: masterPlugin, controlPanel, presetControls)
│   ├── copies/                 (copiedClip, copiedEffect clipboard staging)
│   ├── storePaths              (tableDAT mapping 86 global storage keys → expressions)
│   ├── blendModes              (tableDAT listing 18 GLSL blend modes)
│   ├── preferences             (tableDAT: ENABLE_DELAYED_DISPLAY, ENABLE_DELAYED_DISPLAY_HARD_SWITCH)
│   └── time/                   (timeCOMP — master BPM / TimeExt)
├── master/                     (containerCOMP — active ONLY on master / UI node)
│   ├── ui/                     (clipLanes, clipControls, channels, channelCtrls, scenes, cuePlayer, globals, browser, monitors, topBar, mainCtrls, projectSetup, serverSetup, ...)
│   ├── setup/                  (projectSetup & serverSetup logic)
│   ├── uvEdit/                 (UV Editor container)
│   ├── toNodes/                (controlOut via framed TCP/IP + TouchOut, settings, mapping, syncOut)
│   └── fromNodes/              (preview & status return from slave nodes)
├── database/                   (baseCOMP — all persistent project state & Session `.tox` unit)
│   ├── clips/                  (bank0..bank7, masterBank, masterClipLane1, masterClip1, preloader/unloader)
│   ├── channels/               (clipChannels, auxChannels, masterChannels, altChannels, sceneChannels)
│   ├── plugins/                (players/{singleMoviePlayer,audioPlayer,noClip}, effects/, gens/)
│   ├── scenes/                 (Scenes ext + tagged `scenePlugin` COMPs: defaultScene, projectionScene)
│   ├── cuePlayer/              (CuePlayerExt, timer CHOP, segments DAT, cueList plugin, ui/)
│   ├── globals/                (colors/colorRamp0..1, globalModSources/LFOs, geo, cameras, lights, textures)
│   ├── outputs/                (output0, output1, map2d, map3d, edgeBlend, warp)
│   ├── preVis/                 (3D stage/projector PreVis lights, camera, window, controls)
│   ├── ctrlMaps/               (MIDI, OSC, DMX, Live, allParmMaps storage)
│   ├── devices/                (video inputs, audio dev in/out, kinect, cameraControl, LTC)
│   ├── serverData/             (server0..N -> gpu0..M -> output0..K settings & custom geo, fullMapCam)
│   └── sourceDestTables/       (videoSources, videoSourcePaths, videoDest, videoDestPaths, customPaths)
├── processor/                  (baseCOMP — active ONLY on render/preview nodes, cooks video & audio)
│   ├── commandProcessor/       (receives control packets from master/toNodes)
│   ├── videoRouting/           (clipChannels, auxChannels, masterChannels GLSL mixers & 6-slot channelFX, outToUI)
│   ├── audioRouting/           (clipChannels audio + master mixer; no aux audio routing)
│   └── perform1                (performCHOP)
├── perform/                    (windowCOMP — production multi-output render window + masterPerform)
└── utilities/                  (camSchnappr, warp, gridMaker, PluginDesigner, animationEditor, videoConverter, saveLoadWindow)
```

### Verified Global `op.*` Shortcuts
`op.LM`, `op.DATABASE`, `op.UI`, `op.MASTER_CONTROLS`, `op.PROCESSOR` (via `PROC` storage), `op.COMMAND_PROC`, `op.TO_NODES`, `op.CONTROL_OUT`, `op.CLIP_DATA`, `op.CLIP_LANES_UI`, `op.CLIP_CHAN_VID`, `op.CLIP_CROSSFADE_TIME`, `op.CLIP_TRIGGER_MASTER`, `op.CHAN_DATA`, `op.CHAN_CLIP_UI`, `op.CHAN_AUX_UI`, `op.CHAN_MASTER_UI`, `op.AUX_CHAN_VID`, `op.MASTER_CHAN_VID`, `op.PLUGINS`, `op.GENS`, `op.SYNTHS`, `op.NO_CLIP`, `op.SCENES`, `op.CUE_PLAYER`, `op.GLOBALS`, `op.GLOBAL_MODS`, `op.COLORS`, `op.OUTPUTS`, `op.SERVER_DATA`, `op.SERVER_SETUP`, `op.PROJECT_SETUP`, `op.LOAD_CLIPS`, `op.BROWSER`, `op.ANIM_EDITOR`, `op.PRESET_CONTROLS_VIEW`, `op.PLUGIN_DESIGNER`, `op.RC_MENU`, `op.SOURCE_DEST_TABLES`, `op.STOP_ALL`, `op.TIME`, `op.COPIED_CLIP`, `op.COPIED_EFFECT`.

---

## 3. Naming & Storage Conventions (From Keith's 2018 Walkthrough)

- **UI Labels vs. Internal Operator Names**:
  - **Internal names are 0-indexed** (`channel0`, `bank0`, `clipLane0`, `slot0`, `output0`).
  - **UI labels are 1-indexed** (`Clip Channel 1`, `Aux 1`, `Bank 1`, `FX 1`).
- **Operator & Storage Casing**:
  - Operators: `lowerCamelCase` (except major components like `PluginDesigner`).
  - Global storage keys (in `/Luminosity/local/storePaths`): `UPPER_SNAKE_CASE` (`CUR_BANK`, `CLIP_TRIG_MODE`, `REMOTE_MODE`, `NUM_CLIP_LANES`).
  - Component-level storage keys: `UpperCamelCase` (`CompAttr`, `CompPar`, `CompPresets`, `CurTrigClip`).
  - Local DAT/gadget storage keys: `lowerCamelCase` (`attr`, `uiPath`).
- **Extension Naming**:
  - Newer Python class extensions end in `*Ext` (e.g., `ChannelsExt`, `PresetsExt`, `CuePlayerExt`, `ManagePluginsExt`, `TempoExt`), whereas older helper modules do not (`lm.py`, `dataHandler.py`, `uiSetup.py`, `extUI.py`).
  - `source/modules/setTextDATPaths.py` links `textDAT`s inside TD to `../source/<parentName>/<datName>.py` with `loadonstart = True` and `write = True`.

---

## 4. Operational Workflows & Key Mechanics (`2PGyi3eD54s`)

### A. Clip Player (`00:17:15 – 00:36:50`)
- **Structure**: **Banks** (`bank0..N`) → **Lanes** (rows) × **Columns** (vertical scene triggers) → **Clips** (Players: movies/audio, or Generators: realtime `.lmGEN.tox`).
- **Select vs. Trigger**:
  - Clicking a clip's **thumbnail** triggers playback.
  - Clicking a clip's **name** selects it for preview + parameter editing (`Clip Controls`) without firing it live.
  - Project setting `Clip Trigger Selects Clip Controls` links both actions.
- **Shortcuts & Navigation**:
  - `Shift + Hover` over a Bank radio button previews that bank's thumbnails **without unloading/preloading** the active bank!
  - `Ctrl + Drag` duplicates a clip within the active bank (cannot `Ctrl+Drag` across banks; use right-click `Copy`/`Paste`).
  - Right-click context menu: `Copy`, `Cut`, `Paste`, `Delete`, `Rename`, `Un-select`, `Open Network` (`F10` on clips lands in the UI grid, so use `Open Network` to jump to `/Luminosity/database/clips/bankX/...`).
  - **Pre-Read Movies**: Red indicator on a bank means movies are actively preloading; wait until red clears before triggering on multi-server rigs.
- **4 Clip Trigger Modes** (`CLIP_TRIG_MODE`):
  - `0` **Channel Mode**: Lane `N` always plays on Clip Channel `N`.
  - `1` **Selected Mode**: Triggered clip plays on whichever Clip Channel is currently selected (note: Keith intentionally skipped red selection border updates in legacy button grid until ported to `listCOMP`).
  - `2` **Single Mode**: All clips across all banks trigger on Clip Channel 0 (classic single-bin mode; default loaded state).
  - `3` **Multi Mode**: Multi-output clips (`outputs > 1`, e.g., `multiOut.lmGEN.tox`) route Output `0..3` sequentially to Channels `0..3` (hardcoded to 4; falls back to replicating Output 0 if single-output).

### B. Channels, Routing, Sends & GLSL Mixer (`00:29:30 – 00:49:35`)
- **Sources vs. Destinations**:
  - **Sources** (selectable video TOPs with `out1` inside): Clip Channels, Aux Channels, Master Channels, Scenes, Video Inputs, Global Ramps/Kinect (`customPaths`).
  - **Destinations** (channels with a `mix` container): Aux Channels and Master Channels only. **Clip Channels cannot receive inputs/sends** — their sole source is their triggered clip.
- **Signal Flow**:
  - Each Aux/Master channel blends its `Input` + all incoming `Output`s/`Send`s inside `mix/mix` (`glslmultiTOP` running `mixWithBlend`, supporting 18 blend modes across up to 16 layers).
  - **Zero-extra-TOP opacity**: Turning down a channel fader scales `modeOpacity[i].y` inside the destination channel's GLSL mixer rather than inserting extra `levelTOP`s. Consequence: a channel's own monitor shows **pre-fader** output, while the destination monitor shows **post-fader** mix!
  - **Sends**: 3 sends per Clip/Aux channel, each with destination, blend mode, opacity, and **`P` (Pre-fader)** toggle (`/channelFX/input` vs post-fader `/out1`).
  - **Master Channels**: UI shows one Master control strip (`channel0`), yet multiple Master channels can exist in database/routing sharing identical FX and fader level while taking different inputs — ideal for feeding multiple projectors/outputs with unified master FX and blackout fader.
  - **Audio**: Limited strictly to Clip Channels → single Master Audio Mixer (no Aux audio routing). `Link` button ties video opacity to audio gain.
- **Insert FX (`ChannelFXExt`)**:
  - 6 insert slots per channel.
  - `ChannelFXExt.RouteFX()` dynamically rewires `selectTOP`s so bypassed slots cost **zero** TOP cooking, and sets `plugin.Active` so internal feedback/particle networks pause cooking when bypassed.

### C. Gadgets, Precision Modifiers, Modulation & Mapping (`00:49:35 – 01:04:19`)
- **Slider Precision Modifiers**:
  - Drag = normal; **`Ctrl + Drag`** = fine; **`Alt + Drag`** = finer; **`Ctrl + Alt + Drag`** = finest.
  - Note: in `camSchnappr`, `Shift` and `Ctrl` act as coarse/coarser on arrow keys (inverted relative to sliders!).
- **Modulation (`valSliderM` — `M` button)**:
  - Separate from Controller Mapping: `value` (or controller-mapped value) is summed/offset with the modulation source (`LFO1..4`, Audio Mod) scaled by mod amount. The mod `Offset` field is active **only while modulation is enabled**, allowing separate performance vs. modulated resting values.
- **Controller Mapping (`CtrlMapsExt`)**:
  - Supports **MIDI** (green highlight), **OSC** (blue), **DMX** (yellow), and legacy **Live**.
  - Single-value mapping per gadget; multi-button hardware inputs for radio buttons require external/MIDI pre-mapping (e.g., Bome MIDI Translator or custom logic in `/Luminosity/database/ctrlMaps/MIDI`).
  - `Clean Up Map Data` prunes stale mappings for deleted channels/FX slots. Save/Load `.cmap` pickle files.

### D. Presets, Text-Replace Optimization & Animation Editor (`01:04:19 – 01:23:30`)
- **Fast Recall Optimization (`PresetsExt`)**:
  - **All parameters enabled** → replaces `parameters.text` in **one single string assignment** (dramatically faster on control panels with 10+ parameters).
  - **Any parameter disabled** (`editPars`) → falls back to iterating row-by-row via `ParsOP[parName, key] = value`.
  - Morphing uses a `filterCHOP` driven by `Blendtime` (`F` button opens floating `PresetControls`).
- **Animation Editor (`AnimateExt`)**:
  - Supports **Beats** (`TIME_UNITS = 0`, bar/beat grid) and **Seconds** (`TIME_UNITS = 1`).
  - **Tap + Reset Sync (`TempoExt`)**: `Tap` calculates BPM (`TempoSet = False`) without shifting phase; **`Reset Sync`** commits the tempo and resets beat phase to beat `1`.
  - Dual `animation0`/`animation1` comps allow crossfading between animated presets (`switchCross`). To guarantee zero value jumps when morphing from static preset → animated preset, make the static preset match the initial keyframe of the animated preset.

### E. Global Ramps, Global Mods & Scenes (`01:23:30 – 01:36:55`)
- **Globals**: 2 Color Ramps (`colorRamp0` 30-slot keyframed ramp with continuous linear↔Gaussian interpolation + step interpolation + self-modulation + ramp2 displacement; `colorRamp1` 2-color RGB ramp suitable for DMX/channel driving), 4 Global LFOs (`sine`, `ramp`, `triangle`, `hold`, `envelope` with ASR + global speed multiplier `1/16x..16x` + global mod gain), and 1 Audio Envelope mod.
- **Scenes (`scenePlugin` tag)**:
  - Persistent networks inside `/Luminosity/database/scenes/` tagged `scenePlugin` with `Label` + `Numoutputs` custom pars.
  - Exposes `channel0..N` outputs into `sourceDestTables/sceneSourceTable` (selectable anywhere as Video Sources) and gets its own tab in `Scenes` UI.
  - **Scenes vs. Generators (`8oJbAK8lkBo`)**: Keith recommends **Scenes** for heavy/custom real-time TD networks (1 canonical editable location, multi-output, clean control panel), whereas **Generators** (`.lmGEN.tox`) shine when you need bank-level dynamic loading/unloading or reusable drop-in clips.

### F. Cue Player (`01:36:55 – 01:50:00`)
- Implemented as a giant `presets`-backed master controller (`CuePlayerExt`) storing snapshots of every active channel, FX, global, and scene preset (`PresetsDict`) plus triggered clips (`CueClips`).
- **Modes**: `Manual` (`CueMode = 0` — uses `Duration`/`DurationBars` and `FollowAction`: Hold, Play Next, Cycle, Cycle Hold, Cycle Next, Stop) vs. `Timeline` (`CueMode = 1` — drives `timerCHOP` from `segments` DAT using `StartTime`).
- Supports dragging clips directly onto cues or onto the Cue List (note the `listCOMP` drag workaround: drag onto an existing row first, then outside/below).
- **Important**: Channel routing (`input`/`output`/`sends`) is **not** stored by cues — changing routing breaks cue looks unless routing stays fixed.

### G. Server Setup, PreVis, 3D/2D Mapping & Multi-Node Modes (`01:49:20 – 03:43:00`)
- **4 Execution Modes (`REMOTE_MODE`)**:
  - `0` **Internal**: Single TD process; `master` is also `preview` and renders everything.
  - `1` **Local**: Multiple TD processes on one machine (`NODE=node0`, `SERVER=0`, `GPU=0..N`) communicating via shared memory + `localhost`.
  - `2` **Remote**: Multiple machines launched via `PsExec` (`nodeSetup.py`), media drives mapped to matching drive letters, shared project path on master.
  - `3` **Pro**: Multi-machine + TouchDesigner `Sync CHOP` (`project.realTime = False` on slave nodes) + Quadro Sync cards for genlocked multi-projector edge blends.
- **Resolution Separation**:
  1. `Full Map Res` (total artistic canvas + `fullMapCam` FOV/OrthoWidth/Position/Rotation/Clips).
  2. `GPU Crop` (slice of Full Map rendered by a given GPU node; computed by `storeFullMapCropData.py` + `kMath.MatMath`).
  3. `Output Res` (physical projector/display resolution inside `perform` container).
- **Texture-Space Edge Blending**:
  - Instead of blending in projector output space (which breaks across angled 3D geometry), Luminosity multiplies the 4-sided edge-blend ramp (`Blend Width`, `Edge Offset`, `Rotate`, `Display Edge`) **into the source texture before 3D projection** (`map3d`).
  - Gamma defaults to **`2.2`** for real projectors, while the **PreVis render** forces **`1.0`** so seams appear linear on monitor.
- **PreVis & Mapping Tips**:
  - `Save Projector Info` exports projector positions (in feet) and lens shifts to a text file for projectionists.
  - `utilities/camSchnappr` is a customized multi-node version capable of syncing calibration across nodes and handling 2,000–30,000 vertices; keep cursor inside the output window and use Arrow keys (`Ctrl` / `Shift` for coarse).
  - Edit output geometry at `/Luminosity/database/serverData/serverX/gpuY/outputZ/geo`, **not** inside `/Luminosity/database/outputs/`.

---

## 5. Known Caveats & TD `2025.32460` Audit (`Luminosity_0_9.toe`)

### Operational Caveats (From Keith's 2018 Streams & `Luminosity Presentation.pdf`)
1. **Selected FX Slot Drop Bug**: Dropping an effect from Browser onto an *already selected* slot corrupts panel drawing — press `Esc` (exit Perform Mode) to force redraw.
2. **Drag-and-Drop Windows Bug**: Occasionally TD drops external file drag-and-drop; restart TD or use the internal Browser.
3. **Channel Animation Activation**: Must manually toggle `Animactive` on channels when needed.
4. **Browser Refresh for New `.tox` Plugins**: Adding a `.lmFX.tox` or `.lmGEN.tox` on disk requires cycling Perform Mode or calling `op.BROWSER.op('contents/initialize').run()`.
5. **`listCOMP` Drag-and-Drop Workaround**: When dragging clips into Cue Player's `clipList` or `cueList`, hover over an existing list row first before dropping.
6. **TDMCP Safety Note**: Never run unbounded deep scans (`depth >= 5` or `findChildren()` from `/Luminosity`) — `/Luminosity` contains thousands of clip/UI nodes across 8 banks and will exceed the 3-minute MCP timeout. Always scope calls to specific sub-COMPs (e.g., `/Luminosity/database/scenes`, `/Luminosity/local/modules`).

### TD `2025.32460` Modernization Status (`Luminosity_0_9.toe` — Upgraded)
Previously observed 57 items on `Luminosity_0_9.toe` in TouchDesigner `2025.32460` have been resolved (remaining `get_errors('/Luminosity')` items: 4 idle hardware/unloaded warnings only — zero compile/runtime errors):

1. **UDT → Length-Prefixed TCP/IP (`controlOut`, `controlIn`, `mapping`)**:
   - Replaced all deprecated `udtoutDAT` / `udtinDAT` operators (`reliableUDT`, `setAttrUDT`, `getAttrUDT` on ports `2000`/`2001`/`2002`, and `nodeDataOut`/`nodeDataIn` on port `1700`) with `tcpipDAT`.
   - Upgraded `ControlOutExt`, `ControlInExt`, `LoadClipsExt.py`, `dataHandler.py`, `PresetsExt.py`, and `CuePlayerExt.py` to use 4-byte length-prefixed framing (`format='all'`) for command/pickle transport and newline framing (`format='perline'`) for `mapping`.
2. **`parent.Gadget` & Legacy UI Fixes (`camSchnappr`, `animationEditor`, `PluginDesigner`)**:
   - Set `par.parentshortcut = 'Gadget'` on `camSchnappr/controls/openWindow` and 13 `local/define`-owning `animationEditor` widget roots (`gridres`, `value_{a,s,v,x}`, `gridsnap/*`, `extend*`).
   - Unbound 38 dead `ParMode.EXPORT` parameters across `animationEditor` (plus `setParNav1` and `singleMoviePlayer/controls/label/text`), fixed `camSchnappr/labelsConnectors/transform3` Scale expression when `null2` lacks `sx`, replaced `camSchnappr/.../lookup2` to drop legacy `usesourceluminance`, and cleared idle `Plugin1` paths on `PluginDesigner/UI`.
3. **Browser Virtual Path Guard (`browser/contents/external/folder{2..5}`)**:
   - Guarded `rootfolder` and `active` expressions when `workpath` begins with `'/Luminosity'` (internal Effects/Gens browsing), eliminating `"Folder not accessible"` warnings while preserving disk browsing.
4. **GLSL 4.30 Upgrades Inside `.toe` & `colorRamp0/1` Fix**:
   - Upgraded 17 in-project GLSL DATs (`texture2D(` → `texture(`) across `defaultScenePlugin`, `projectionScene/surface`, `outToUI`, `auxChannels`, and `masterChannels`, removed dead uniform declarations in `defaultScenePlugin/mixWithBlend` and `spherical/Kalistars`, assigned missing uniform names on `projectionScene/geo1/mat`, and switched `colorRamp0/1/plugin/ramp` from `texture2darray` to `texture2d` so `antialias1` cooks cleanly.
   - Resolved `PresetsExt` `Animationcomp` sibling lookup (`parent().op('animation')` fallback + valid `'animation'` vs `''` parameter assignment across 34 `presets` COMPs) and cleared 5 broken `../src/*.txt` paths on `database/clips/*` and `perform/getOutputs/setOutput`.
5. **External `.lmFX.tox` & `.lmGEN.tox` Plugin Upgrades (`assets/components/`)**:
   - Upgraded 9 effects (`audioGLSL`, `audioGLSL2`, `feedback`, `fluid`, `geoKalide`, `kalide`, `mix1`, `strobe`, `stutter`) and 6 generators (`audioCurves`, `audioGLSL`, `AudioSphere`, `cardioidCircles`, `reactionDiffusion`, `spherical`, `TruchetTiles` — 7 `.lmGEN.tox` files total) from `glsl120`/`texture2D`/`texelFetchBuffer`/reserved-`input`/legacy menu names to valid TD `2025.32460` GLSL `glsl430` and expressions.
6. **Python 3.11+ & Launcher Updates (`source/` & `assets/batScripts/`)**:
   - Fixed `source/modules/CompUI.py:202` (`rows.append[...]`), `source/modules/Clip.py:50` (`ControlsSeleced` typo), all 4 `SyntaxWarning` escape sequences (`LoadClipsExt.py`, `PresetsExt.py`, `nodeSetup.py`), dynamic `TouchDesigner.exe` detection in `nodeSetup.py`, and added TD 2025 batch launchers (`start LM 2025.bat`, `start LM GPU0 2025.bat`, `start Sync 2025.bat`, `killNodes 2025.bat`).
7. **Remaining Expected Idle/Hardware Warnings (4 items in `/Luminosity/database`)**:
   - `preVis/camera/plugin/camera/panel1` (source panel cooking off when PreVis viewer is closed), `singleMoviePlayer/plugin/audiofilein` (no movie loaded), and `ctrlMaps/MIDI/midiin{1,5}` (`APC40 mkII` / unmapped MIDI hardware).
