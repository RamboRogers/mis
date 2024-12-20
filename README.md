<div align="center">
  <img src="media/intro.gif" alt="MIS Intro Video" width="800"/>

  # 🖖 Make It So (MIS)

  <h3>Your AI-Powered Command Line Assistant</h3>

  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS%20%7C%20Windows-blue)]()
  [![Version](https://img.shields.io/badge/version-1.0.0-green)]()

  <p>Issue natural language commands to your computer - like talking to the Star Trek computer.</p>
</div>

## 🚀 Quick Install

<table>
<tr>
<td>

### 🐧 Linux & 🍎 macOS
```bash
curl -L https://raw.githubusercontent.com/RamboRogers/mis/master/install_mis.sh | sh
```

</td>
<td>

### 🪟 Windows PowerShell
```powershell
curl -L https://raw.githubusercontent.com/RamboRogers/mis/master/install_mis.ps1 | powershell -ExecutionPolicy Bypass -File -
```

</td>
</tr>
</table>

## 📥 Detailed Installation

<details>
<summary>🪟 Windows Installation</summary>

### Option 1: PowerShell One-Line Install
```powershell
curl -L https://raw.githubusercontent.com/RamboRogers/mis/master/install_mis.ps1 | powershell -ExecutionPolicy Bypass -File -
```

### Option 2: Manual Download
1. Download `mis-windows-amd64.exe` from the [latest release](https://github.com/RamboRogers/mis/releases/latest)
2. Rename to `mis.exe`
3. Move to a directory in your PATH

</details>

<details>
<summary>🐧 Linux Installation</summary>

### Option 1: Shell Script Install
```bash
curl -L https://raw.githubusercontent.com/RamboRogers/mis/master/install_mis.sh | sh
```

### Option 2: Manual Download
1. Download appropriate binary for your architecture
2. Make executable: `chmod +x mis`
3. Move to `/usr/local/bin`: `sudo mv mis /usr/local/bin/`

</details>

<details>
<summary>🍎 macOS Installation</summary>

### Option 1: Shell Script Install
```bash
curl -L https://raw.githubusercontent.com/RamboRogers/mis/master/install_mis.sh | sh
```

### Option 2: Manual Download
1. Download appropriate binary for your architecture (amd64 for Intel, arm64 for Apple Silicon)
2. Make executable: `chmod +x mis`
3. Move to `/usr/local/bin`: `sudo mv mis /usr/local/bin/`

</details>
</details>

## ✨ Features

- 🤖 **Multi-Provider Support**: Works with OpenAI, Mistral, Groq, Cerebras, X.ai, and Ollama
- 🔍 **Context-Aware**: Understands your system and environment
- 🛠️ **Easy Configuration**: Simple setup with `-c` and `-m` flags
- 📝 **Natural Language**: Skip the man pages, just describe what you want
- 🔒 **Safe Execution**: Reviews commands with you before running

<div align="center">
  <img src="media/providers.png" alt="AI Providers" width="600"/>
  <br/>
  <em>Supported AI Providers</em>
</div>

## 🎯 Example Use Cases

<details>
<summary>📊 System Analysis</summary>
<br/>
<img src="media/getports.png" alt="Get Ports" width="700"/>
<br/>
<em>Natural language port analysis</em>
</details>

<details>
<summary>☸️ Kubernetes Management</summary>
<br/>
<img src="media/getpods.png" alt="Get Pods" width="700"/>
<br/>
<em>Simplified Kubernetes interactions</em>
</details>

<details>
<summary>📝 Command Output</summary>
<br/>
<img src="media/portsout.png" alt="Command Output" width="700"/>
<br/>
<em>Clean, scrollable output display</em>
</details>

## 🔧 Configuration

```bash
# Initial configuration
mis -c

# Change AI provider
mis -m
```

<div align="center">
  <img src="media/api.png" alt="Easy API Configuration" width="600"/>
  <br/>
  <em>Simple API Configuration</em>
</div>

## 📖 Examples

```bash
# System analysis
mis show my listening tcp ports

# Media conversion
mis using ffmpeg convert video.mp4 to video.gif

# Kubernetes operations
mis show me pods in namespace production
```

## ⚖️ License

This project is licensed under the MIT License. Use at your own risk.

## 👤 Author

<div align="center">
  <img src="media/ramborogers.png" alt="RamboRogers" width="200"/>
  <br/>
  <b>Matthew Rogers</b>
  <br/>
  <br/>

  [![GitHub](https://img.shields.io/badge/GitHub-RamboRogers-black?style=flat&logo=github)](https://github.com/RamboRogers)
  [![Twitter](https://img.shields.io/badge/Twitter-@rogerscissp-blue?style=flat&logo=twitter)](https://twitter.com/rogerscissp)
  [![Website](https://img.shields.io/badge/Web-matthewrogers.org-green?style=flat&logo=safari)](https://matthewrogers.org)
</div>