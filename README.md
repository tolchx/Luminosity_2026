# Luminosity

Front-end and modular media server for TouchDesigner aimed at providing operators with an efficient interface to perform, control, and distribute realtime media while retaining the open-ended programmability of TouchDesigner.

---

## Luminosity 2026 — TouchDesigner `2025.32460` Compatibility Update (`Luminosity_0_9.toe`)

This fork (`tolchx/Luminosity_2026`) modernizes Keith Lostracco's **Luminosity v0.9** (`project/Luminosity_0_9.toe`), its synced Python codebase (`source/`), Windows launchers (`assets/batScripts/`), and plugin library (`assets/components/`) for **TouchDesigner 2025.32460**:

- **Multi-Node Transport Migrated from UDT to TCP/IP**:
  - Replaced abandoned Windows 10 `udtoutDAT` / `udtinDAT` operators (`reliableUDT`, `setAttrUDT`, `getAttrUDT` on ports `2000`–`2002`, plus `nodeDataOut` / `nodeDataIn` on port `1700`) with `tcpipDAT`.
  - Added 4-byte length-prefixed framing (`ControlOutExt` / `ControlInExt`) for reliable binary pickle and command delivery alongside updated callers in `dataHandler.py`, `LoadClipsExt.py`, `PresetsExt.py`, and `CuePlayerExt.py`.
- **GLSL 4.30 Upgrades (In-Project & External Plugins)**:
  - Upgraded 17 in-project GLSL shaders (`texture2D()` → `texture()`, removed/assigned dead uniforms) across `defaultScenePlugin`, `projectionScene`, `outToUI`, `auxChannels`, `masterChannels`, and `spherical`.
  - Switched `colorRamp0` / `colorRamp1` `ramp` TOPs to `texture2d` so downstream `antialias1` cooks cleanly.
  - Upgraded **16 external plugin `.tox` files** (`assets/components/effects/` & `assets/components/gens/`) from `glsl120` / `texture2D` / `texelFetchBuffer` / reserved `input` / legacy menus / broken expressions (`audioGLSL`, `audioGLSL2`, `feedback`, `fluid`, `geoKalide`, `kalide`, `mix1`, `strobe`, `stutter`, `audioCurves`, `audioGLSL`, `AudioSphere`, `cardioidCircles`, `reactionDiffusion`, `spherical`, `TruchetTiles`) to valid TD `2025.32460` GLSL `glsl430`.
- **UI, Browser, PluginDesigner & Presets Fixes**:
  - Restored `parent.Gadget` parent shortcuts across legacy `camSchnappr` and `animationEditor` UI widgets and unbound 38 dead exports, plus `camSchnappr` `transform3` and `lookup2` fixes.
  - Added **File → About** dialog (`aboutDialog` / `aboutWindow`) with original author credits (**Keith Lostracco**), collaborator & TD 2025 restoration info (**Tolch.x**), and direct web/repository buttons.
  - Guarded `browser/contents/external/folder{2..5}` against virtual `/Luminosity/...` paths during internal Effects/Generators browsing.
  - Added `parent().op('animation')` fallback and cleaned `Animationcomp` references in `PresetsExt.py` so preset banks initialize reliably.
- **Python 3.11+ Bugfixes & TD 2025 Launchers**:
  - Fixed `CompUI.py:202` (`rows.append[...]`), `Clip.py:50` (`ControlsSeleced` typo), all Python 3.11+ `SyntaxWarning` escape sequences (`LoadClipsExt.py`, `PresetsExt.py`, `nodeSetup.py`), and executable auto-detection (`TouchDesigner.exe`) in `nodeSetup.py`.
  - Added TD 2025 launcher batch files in `assets/batScripts/` (`start LM 2025.bat`, `start LM GPU0 2025.bat`, `start Sync 2025.bat`, `killNodes 2025.bat`).

---

## Getting Started

### Prerequisites

- **For `Luminosity_0_9.toe` (Recommended)**: **TouchDesigner 2025.32460** or newer
- **For legacy `Luminosity_0_8.toe`**: TouchDesigner 2020.22080 or newer

### Launch

1. Open [project/Luminosity_0_9.toe](project/Luminosity_0_9.toe) directly in TouchDesigner 2025, or run `assets/batScripts/start LM 2025.bat`.
2. See [docs/](docs/) for documentation, architecture notes, and complete tutorial transcripts:
   - [Architecture & TD 2025 Modernization Study Guide](docs/luminosity_architecture_and_study_guide.md)
   - [Presentation PDF](docs/Luminosity%20Presentation.pdf)
   - [In-Depth Tutorial Transcript (`2PGyi3eD54s`)](docs/tutorial_2PGyi3eD54s_full_transcript.md)
   - [Luminosity Update Tutorial Transcript (`8oJbAK8lkBo`)](docs/tutorial_8oJbAK8lkBo_full_transcript.md)

### Original Community Links

- Derivative Forum Thread: http://derivative.ca/Forum/viewtopic.php?f=22&t=11692
- Derivative Community Post: https://derivative.ca/community-post/luminosity-keith-lostraccos-touchdesigner-media-server/60720
- Original YouTube Channel: https://www.youtube.com/channel/UCAz7z2-F_VW_u7_qLPHwk8A

---

## Contributors

* **Keith Lostracco** — Original Author (http://www.IntentDev.io)
* **Peter Walker** — Original Contributor
* **Matthew Wachter** — Original Contributor
* **Tolch.x** — Collaborator & TouchDesigner `2025.32460` Restoration
  - [![Tolch.x Web](https://img.shields.io/badge/Web-tolchx.com-1f6feb?style=for-the-badge)](https://tolchx.com) [![GitHub Repo](https://img.shields.io/badge/GitHub-tolchx%2FLuminosity__2026-24292e?style=for-the-badge)](https://github.com/tolchx/Luminosity_2026)
  - Website: https://tolchx.com
  - Repository: https://github.com/tolchx/Luminosity_2026

## License

This project is licensed under the GNU GPLv3 License - see the [LICENSE.md](LICENSE.md) file for details.
