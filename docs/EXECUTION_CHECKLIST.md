# Execution Checklist — GitHub Reorganization

Do these steps on GitHub (and optionally update local clones). See [REPO_GUIDELINES.md](REPO_GUIDELINES.md) in this repo for full context.

---

## Current status

| Section | Status |
|---------|--------|
| §1 Rename repositories | Done (13 repos renamed on GitHub; local sync script available) |
| §2 Delete react-router-starter-template | Done |
| §3 Add GitHub Topics | Done (test-assignment, hobby, audio-automation-project, lwjgl-java-project; plus learning on 5 other repos) |
| §4 Portfolio links | No broken links; optional to add direct repo URLs to project cards |
| §5 Meta README repos | Done (audio-automation-project, lwjgl-java-project created) |
| QSystem consolidation | Done (QSystem2 and QSystem3 merged into QSystem as branches `qsystem2`, `qsystem3`; those two repos deleted) |

Repos that were not in the original guidelines (now documented in [REPO_GUIDELINES.md](REPO_GUIDELINES.md) under "Other / learning"): GardenStation, CSIT355, HabitTracker, Authorization, CrossPlatform. Categories and topics for them are in REPO_GUIDELINES.

---

## 1. Rename repositories

On each repo: **Settings → General → Repository name** → change → **Rename**.

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

### Using GitHub CLI (gh)

From CMD or PowerShell (any directory), run these to rename on GitHub without opening Settings:

```
gh repo rename audio-library-automation-bot -R KingEGame/Automatation -y
gh repo rename audio-preparation-pipeline -R KingEGame/audio_preperation -y
gh repo rename audio-silence-service -R KingEGame/audio_silence_service -y
gh repo rename json-request-xml-response -R KingEGame/jsonReaquest_XMlResponse -y
gh repo rename education-scheduler-api -R KingEGame/EducationSchedulerAPI -y
gh repo rename medicine-app -R KingEGame/Medicine_app -y
gh repo rename console-app -R KingEGame/Console_App -y
gh repo rename calculator-in-column -R KingEGame/calculator_in_column -y
gh repo rename 3d-gripper-opencv -R KingEGame/3D-Gripper_OpenCV -y
gh repo rename create-font-in-png-for-lwjgl -R KingEGame/Create-font-in-png-for-LWJGL -y
gh repo rename boosty-automation -R KingEGame/BoostyAutomation -y
gh repo rename health-notifier-backend -R KingEGame/health_notifier_backend -y
gh repo rename design-architecture -R KingEGame/DesignArhitecture -y
```

### Local clones: folder rename and remote URL

Base path: `E:\Projects\Githbu repositories`. After GitHub renames are done, rename each folder to the new name and set the remote. See the table below; a script is in `scripts/sync-renamed-repos.ps1` to do this automatically.

| Current folder name | New folder name | New remote URL |
|--------------------|-----------------|----------------|
| Automatation | audio-library-automation-bot | https://github.com/KingEGame/audio-library-automation-bot.git |
| audio_preperation | audio-preparation-pipeline | https://github.com/KingEGame/audio-preparation-pipeline.git |
| audio_silence_service | audio-silence-service | https://github.com/KingEGame/audio-silence-service.git |
| jsonReaquest_XMlResponse | json-request-xml-response | https://github.com/KingEGame/json-request-xml-response.git |
| EducationSchedulerAPI | education-scheduler-api | https://github.com/KingEGame/education-scheduler-api.git |
| Medicine_app | medicine-app | https://github.com/KingEGame/medicine-app.git |
| Console_App | console-app | https://github.com/KingEGame/console-app.git |
| calculator_in_column | calculator-in-column | https://github.com/KingEGame/calculator-in-column.git |
| 3D-Gripper_OpenCV | 3d-gripper-opencv | https://github.com/KingEGame/3d-gripper-opencv.git |
| Create-font-in-png-for-LWJGL | create-font-in-png-for-lwjgl | https://github.com/KingEGame/create-font-in-png-for-lwjgl.git |
| BoostyAutomation | boosty-automation | https://github.com/KingEGame/boosty-automation.git |
| health_notifier_backend | health-notifier-backend | https://github.com/KingEGame/health-notifier-backend.git |
| DesignArhitecture | design-architecture | https://github.com/KingEGame/design-architecture.git |

If a folder is missing (repo not cloned locally), skip that row. Then update any links in the portfolio (KingEGame.github.io) to use new repo URLs.

---

## 2. Delete one repository

- **react-router-starter-template**  
  **Settings → Danger zone → Delete this repository.** Confirm. (No archive.)

---

## 3. Add GitHub Topics

On each repo: open repo → **About** (right side) → click the gear next to "Topics" → add the topic(s) below.

### Topic: `test-assignment`

Add to:

- Makers  
- yandex  
- Beeline.kg  
- TimelySoft  

### Topic: `hobby` (or `learning`)

Add to:

- Console_App  
- calculator_in_column  
- EducationSchedulerAPI  
- 3D-Gripper_OpenCV  
- Budget  
- Medicine_app  
- WebScape  

### Topic: `audio-automation-project`

Add to:

- Automation  
- Automatation (or audio-library-automation-bot after rename)  
- audio_silence_service (or audio-silence-service after rename)  
- SV2TTS  
- BoostyAutomation (or boosty-automation after rename)  
- audio_preperation (or audio-preparation-pipeline after rename)  

### Topic: `lwjgl-java-project`

Add to:

- xlms  
- JavaGameLWJGL  
- Corbus  
- jsonReaquest_XMlResponse (or json-request-xml-response after rename)  
- projects-maven  
- lwjgl3  
- Create-font-in-png-for-LWJGL (or create-font-in-png-for-lwjgl after rename)  

---

## 4. After renames: update portfolio links

In **KingEGame.github.io**, update any project cards or links that point to renamed repos so they use the new URLs (e.g. `https://github.com/KingEGame/audio-preparation-pipeline`).

---

## 5. Optional: meta README repos

- Create repo **audio-automation-project** with only a README that lists and links the 6 repos above.  
- Create repo **lwjgl-java-project** with only a README that lists and links the 7 repos above.
