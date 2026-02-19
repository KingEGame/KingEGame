# Repository Guidelines (KingEGame Account)

This document defines how repositories in the KingEGame GitHub account are organized and named. **These docs live in the KingEGame (profile) repo** so the public portfolio site (KingEGame.github.io) stays for visitors only. Do not store or edit this file in WebSiteORT.

---

## Roles

| Item | Role |
|------|------|
| **KingEGame.github.io** | Portfolio site (public). Keep it updated with projects and test assignments. |
| **KingEGame** (this repo) | Profile README — first view visitors see on GitHub. Also holds account docs (this folder). |
| **WebSiteORT** | Standalone project. Do not use for account docs or guidelines; do not modify for this reorganization. |
| **Company-named repos** | Interview test assignments (Makers, yandex, Beeline.kg, TimelySoft). Mark with topic `test-assignment`. |

---

## Naming Convention

- Use **kebab-case** (lowercase, hyphens).
- Use **descriptive names** (e.g. `audio-preparation-pipeline`, `education-scheduler-api`).
- **No archiving** as part of this plan; only renames and GitHub Topics.

---

## Categories and Topics

| Category | Repos | GitHub Topic |
|----------|--------|--------------|
| **Big project 1 – Audio/Automation** | Automation, Automatation, audio_silence_service, SV2TTS, BoostyAutomation, audio_preperation | `audio-automation-project` |
| **Big project 2 – LWJGL/Java** | xlms, JavaGameLWJGL, Corbus, jsonReaquest_XMlResponse, projects-maven, lwjgl3, Create-font-in-png-for-LWJGL | `lwjgl-java-project` |
| **Test assignments** | Makers, yandex, Beeline.kg, TimelySoft | `test-assignment` |
| **Hobby / learning** | Console_App, calculator_in_column, EducationSchedulerAPI, 3D-Gripper_OpenCV, Budget, Medicine_app, WebScape | `hobby` or `learning` |
| **Standalone** | axelor-erp, QSystem (single repo; branches: `main`, `qsystem2`, `qsystem3`), WebSiteORT | (no shared topic) |
| **Other / learning** | GardenStation, CSIT355, HabitTracker, Authorization, CrossPlatform | `learning` (optional) |

---

## Rename List

Apply these renames on GitHub (Settings → Repository name). GitHub will create redirects from old URLs.

| Current name | New name |
|--------------|----------|
| Automatation | audio-library-automation-bot |
| audio_preperation | audio-preparation-pipeline |
| audio_silence_service | audio-silence-service |
| jsonReaquest_XMlResponse | json-request-xml-response |
| EducationSchedulerAPI | education-scheduler-api |
| Medicine_app | medicine-app |
| Console_App | console-app |
| calculator_in_column | calculator-in-column |
| 3D-Gripper_OpenCV | 3d-gripper-opencv |
| Create-font-in-png-for-LWJGL | create-font-in-png-for-lwjgl |
| BoostyAutomation | boosty-automation |
| health_notifier_backend | health-notifier-backend |
| DesignArhitecture | design-architecture |
| classifier-service | *(already kebab; optional: keep as-is)* |
| Parsing-via-chromium | *(already kebab; keep as-is)* |
| my-frontend | *(already kebab; keep as-is)* |

**Do not rename:** KingEGame, KingEGame.github.io, WebSiteORT, Beeline.kg, Makers, yandex, TimelySoft, axelor-erp, QSystem, Automation, SV2TTS, Budget, WebScape, Corbus, xlms, JavaGameLWJGL, lwjgl3, projects-maven (unless you want them in kebab form; e.g. QSystem → q-system). **Note:** QSystem2 and QSystem3 were consolidated into QSystem as branches `qsystem2` and `qsystem3`; those repos were deleted.

**Delete (no archive):** react-router-starter-template

---

## Grouping (no cross-repo folders)

GitHub does not support folders across repositories. To group repos:

1. **GitHub Topics** — Add the same topic to all repos in a group (e.g. `audio-automation-project`) so they appear together when filtering.
2. **Optional meta repo** — Create one repo per big project (e.g. `audio-automation-project`, `lwjgl-java-project`) containing only a README that lists and links the related repos.

---

## Maintenance

- New repos: use kebab-case; add the appropriate topic if they belong to a category.
- When adding a project or test assignment: update KingEGame.github.io (Projects / Test assignments).
- Periodically check repo list vs this doc; no archiving.
