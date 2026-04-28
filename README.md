# Extra — Unofficial Desktop App

An unofficial Linux and Windows desktop app for [extra.email](https://extra.email), built with Pake/Tauri.

> ⚠️ This is a community-maintained wrapper. It is not affiliated with or officially supported by Extra. If you are part of the Extra team and wish to have this repo taken down please open an issue.

---

## Downloads

Head to the [Releases](../../releases) page to download the latest version:

- `Extra.AppImage` — Linux (Debian/Ubuntu-based)
- `Extra.msi` — Windows installer

---

## Linux

### Requirements

Install the required WebKit library before running:

```bash
sudo apt install -y libwebkit2gtk-4.1-dev
```

### Running

```bash
chmod +x Extra.AppImage
./Extra.AppImage
```

---

## Windows

### Running

Just double-click `Extra.msi` to install, then launch Extra from your Start Menu.

---

## Building from Source

### Linux

1. Clone the repo:
```bash
git clone https://github.com/AniRules/Extra-Email-Web-App
cd Extra-Email-Web-App
```

2. Run the build script:
```bash
chmod +x build.sh
./build.sh
```

### Windows

1. Clone the repo and open PowerShell in the folder
2. Run the build script:
```powershell
./build.ps1
```

---

## File Structure

```
├── linux/
│   ├── inject-fix.js     # Crypto polyfill (see below)
├── build.sh              # Linux build script
├── build.ps1             # Windows build script
└── README.md
```

---

## About inject-fix.js

`inject-fix.js` is a small JavaScript polyfill injected into the app at build time.

Extra's website uses `crypto.randomUUID()`, a modern browser API that requires a **secure context** (HTTPS). When wrapped in certain app frameworks like Pake, the app can sometimes fail to recognize the context as secure — causing the site to crash with:

```
crypto.randomUUID is not a function
```

The fix manually defines `crypto.randomUUID` if it's missing, so the site loads correctly inside the wrapper.

This file is only needed for the Linux build. Windows uses WebView2 (the Edge engine) which handles this natively.

---

## Compatibility

- ✅ Debian/Ubuntu-based Linux (Kali, Ubuntu, Mint, Pop!_OS, etc.)
- ✅ Windows 10/11
- ✅ x86_64 architecture
- ❌ macOS
- ❌ ARM systems

---

## Contributing

PRs welcome! If you get it working on a new distro or fix any issues, feel free to open a pull request.
