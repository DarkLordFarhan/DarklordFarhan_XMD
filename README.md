<div align="center">

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

<h1>𓅓 𝐃𝐀𝐑𝐊 𝐋𝐎𝐑𝐃 𝐗𝐌𝐃 𓅣</h1>
<h3>VERSION 5.0.0 — WhatsApp Multi-Device Bot</h3>

[![GitHub Stars](https://img.shields.io/github/stars/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD)
[![GitHub Forks](https://img.shields.io/github/forks/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD/fork)
[![GitHub Watchers](https://img.shields.io/github/watchers/DarkLordFarhan/DARKLORD-XMD?style=social)](https://github.com/DarkLordFarhan/DARKLORD-XMD)

</div>

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## 📁 Project Structure

```
DARKLORD-XMD/
├── dark/                   ← Core engine & library
│   ├── connection/         ← Socket, serializer, command handler
│   ├── database/           ← Settings, notes, games, session DB
│   ├── temp/               ← Temporary media processing files
│   └── session/            ← WhatsApp session files (auto-created)
├── lord/                   ← Bot commands & deployment
│   ├── plugins/            ← All bot command plugins
│   │   ├── general.js      ← Menu, ping, uptime
│   │   ├── ai.js           ← AI & chatbot commands
│   │   ├── downloader.js   ← Media downloaders
│   │   ├── group.js        ← Group management
│   │   ├── owner.js        ← Owner-only commands
│   │   └── ...
│   ├── deploy/             ← Platform deployment configs
│   │   ├── heroku.yml
│   │   ├── railway.toml
│   │   ├── render.yaml
│   │   ├── koyeb.yaml
│   │   ├── Procfile
│   │   └── app.json
│   └── gift/               ← Session database storage
│       └── session/
├── index.js                ← Bot entry point
├── config.js               ← Environment config
└── package.json
```

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## ⚙️ Setup & Deployment

### 1. Get Your Session ID

> Scan the QR code or use a pairing code from your session generator to get your `SESSION_ID`.  
> Set it as an environment variable / secret before starting.
>
> 🔗 **[Click here to get your Pair Code](https://lordfarhan-xmd-production.up.railway.app/pair)**

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

### 2. Choose a Deployment Platform

**(A) HEROKU**

[![Deploy on Heroku](https://www.herokucdn.com/deploy/button.svg)](https://dashboard.heroku.com/new?template=https://github.com/DarkLordFarhan/DARKLORD-XMD)

- PostgreSQL is **auto-provisioned** — no manual setup needed.
- All env vars are pre-filled from `lord/deploy/app.json`. Just add your `SESSION_ID`.

---

**(B) RENDER**

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

1. Fork this repo → go to [render.com](https://render.com) → **New → Blueprint** → connect your fork.
2. Render reads `lord/deploy/render.yaml` and auto-provisions a free PostgreSQL DB.
3. Fill in `SESSION_ID` — all other vars have defaults.

---

**(C) RAILWAY**

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template)

1. Fork this repo → [railway.app](https://railway.app) → **New Project → Deploy from GitHub**.
2. Click **+ New → Database → PostgreSQL** — Railway auto-links `DATABASE_URL`.
3. In **Variables** tab set: `SESSION_ID`, `MODE=public`, `TIME_ZONE=Africa/Nairobi`.

---

**(D) KOYEB**

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy)

1. Fork this repo → [koyeb.com](https://koyeb.com) → **Create App → GitHub → select fork**.
2. Get a free PostgreSQL from [neon.tech](https://neon.tech) and paste as `DATABASE_URL`.
3. Set `SESSION_ID`, `MODE`, `TIME_ZONE` in env vars.

---

**(E) VPS / SELF-HOSTED**

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

# 4. Install FFmpeg
sudo apt update && sudo apt install -y ffmpeg

# 5. Start
npm start

# 6. Keep alive with PM2
npm install -g pm2
pm2 start index.js --name darklord-xmd
pm2 save && pm2 startup
```

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

## 🔔 Updates

Join the **[WhatsApp Channel](https://whatsapp.com/channel/0029Vb6lNd511ulWbxu1cT3A)** for daily updates and new features.

<img src='https://i.imgur.com/LyHic3i.gif' width="100%"/>

<div align="center">

**©2025 𝐃𝐀𝐑𝐊 𝐋𝐎𝐑𝐃 𝐗𝐌𝐃 V5 — Powered by DarkLord**

</div>
