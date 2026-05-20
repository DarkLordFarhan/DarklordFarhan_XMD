<div align="center">

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

<h1>𓅓 𝐃𝐀𝐑𝐊 𝐋𝐎𝐑𝐃 𝐗𝐌𝐃 𓅣</h1>
<h3>VERSION 5.0.0 — WhatsApp Multi-Device Bot</h3>

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

[![GitHub Stars](https://img.shields.io/github/stars/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD)
[![GitHub Forks](https://img.shields.io/github/forks/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD/fork)
[![GitHub Watchers](https://img.shields.io/github/watchers/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD)

</div>

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## 📁 Project Structure

```
DARKLORD-XMD/
├── darklord/           ← Core library & engine
│   ├── connection/     ← Socket, serializer, command handler
│   ├── database/       ← Settings, notes, games, session DB
│   └── session/        ← WhatsApp session files
├── plugins/            ← All bot commands
│   ├── general.js      ← Menu, ping, uptime
│   ├── ai.js           ← AI & chatbot commands
│   ├── downloader.js   ← Media downloaders
│   ├── group.js        ← Group management
│   ├── owner.js        ← Owner-only commands
│   └── ...
├── index.js            ← Bot entry point
├── config.js           ← Environment config
└── package.json
```

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## ⚙️ Setup & Deployment

### 1. Get Your Session ID

> Scan the QR code or use a pairing code from your session generator to get your `SESSION_ID`.  
> Set it as an environment variable / secret before starting.

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

### 2. Choose a Deployment Platform

**(A) HEROKU**
<details>
<summary>▶ Tap to expand</summary>

<br>

[![Heroku Signup](https://img.shields.io/badge/HEROKU%20SIGNUP-white?style=for-the-badge&logo=heroku)](https://signup.heroku.com/login)
[![Deploy on Heroku](https://img.shields.io/badge/DEPLOY%20NOW-red?style=for-the-badge&logo=heroku)](https://dashboard.heroku.com/new?template=https://github.com/DarkLordFarhan/DARKLORD-XMD)

- PostgreSQL is **auto-provisioned** — no manual setup needed.
- All env vars are pre-filled from `app.json`. Just add your `SESSION_ID`.

</details>

---

**(B) RENDER**
<details>
<summary>▶ Tap to expand</summary>

<br>

[![Render Signup](https://img.shields.io/badge/RENDER%20SIGNUP-green?style=for-the-badge&logo=render)](https://dashboard.render.com/signup)
[![Deploy on Render](https://img.shields.io/badge/DEPLOY%20NOW-blue?style=for-the-badge)](https://render.com/deploy)

**Steps:**
1. Fork this repo → go to [render.com](https://render.com) → **New → Blueprint** → connect your fork.
2. Render reads `render.yaml` and auto-provisions a free PostgreSQL DB.
3. Fill in `SESSION_ID` — all other vars have defaults.
4. Click **Apply**.

> Free PostgreSQL lasts 90 days. After that, grab a free URL from [neon.tech](https://neon.tech) and paste it as `DATABASE_URL`. Leave blank to auto-fallback to SQLite.

</details>

---

**(C) RAILWAY**
<details>
<summary>▶ Tap to expand</summary>

<br>

[![Railway Signup](https://img.shields.io/badge/RAILWAY%20SIGNUP-black?style=for-the-badge&logo=railway)](https://railway.app/login)

**Steps:**
1. Fork this repo → [railway.app](https://railway.app) → **New Project → Deploy from GitHub**.
2. Click **+ New → Database → PostgreSQL** — Railway auto-links `DATABASE_URL`.
3. In **Variables** tab set: `SESSION_ID`, `MODE=public`, `TIME_ZONE=Africa/Nairobi`.
4. Railway auto-detects `Dockerfile` and `railway.toml` — hit deploy.

</details>

---

**(D) KOYEB**
<details>
<summary>▶ Tap to expand</summary>

<br>

[![Koyeb Signup](https://img.shields.io/badge/KOYEB%20SIGNUP-purple?style=for-the-badge)](https://app.koyeb.com/auth/signup)

**Steps:**
1. Fork this repo → [koyeb.com](https://koyeb.com) → **Create App → GitHub → select fork**.
2. Get a free PostgreSQL from [neon.tech](https://neon.tech) and paste as `DATABASE_URL`.
3. Set `SESSION_ID`, `MODE`, `TIME_ZONE` in env vars.
4. Koyeb uses the `Dockerfile` and `koyeb.yaml` automatically.

> Skip `DATABASE_URL` to use SQLite — data resets on each redeploy.

</details>

---

**(E) BOT HOSTING PANEL (Discord)**
<details>
<summary>▶ Tap to expand</summary>

<br>

[![Signup](https://img.shields.io/badge/SIGNUP-gold?style=for-the-badge)](https://bot-hosting.net/?aff=1259151615210819614)
[![Deploy](https://img.shields.io/badge/DEPLOY%20NOW-orange?style=for-the-badge)](https://bot-hosting.net/?aff=1259151615210819614)
[![Tutorial](https://img.shields.io/badge/WATCH%20TUTORIAL-red?style=for-the-badge&logo=youtube)](https://youtu.be/1BwOqHhnFGs?feature=shared)

</details>

---

**(F) VPS / SELF-HOSTED**
<details>
<summary>▶ Tap to expand</summary>

<br>

> Requires Ubuntu 20.04+ with Node.js 20+ and Git installed.

```bash
# 1. Clone
git clone https://github.com/DarkLordFarhan/DARKLORD-XMD.git
cd DARKLORD-XMD

# 2. Install
npm install

# 3. Set env vars — create .env in project root
SESSION_ID=your_session_id_here
MODE=public
TIME_ZONE=Africa/Nairobi
AUTO_LIKE_STATUS=true
AUTO_READ_STATUS=true
# DATABASE_URL=   ← optional, leave blank for SQLite

# 4. Install FFmpeg
sudo apt update && sudo apt install -y ffmpeg

# 5. Start
npm start

# 6. Keep alive with PM2
npm install -g pm2
pm2 start index.js --name darklord-xmd
pm2 save && pm2 startup
```

</details>

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## 🔔 Updates

Join the **[WhatsApp Channel](https://whatsapp.com/channel/0029Vb6lNd511ulWbxu1cT3A)** for daily updates and new features.

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

<div align="center">

**©2025 𝐃𝐀𝐑𝐊 𝐋𝐎𝐑𝐃 𝐗𝐌𝐃 V5 — Powered by DarkLord**

</div>
