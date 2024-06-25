# MothSignal

Encode/Decode Base64 in wav

## Requirements
- Linux
- Bash
- Node.js
- npm
- ffmpeg
- sox

##### Node modules
- sharp


## Install

```bash
git clone https://github.com/StringManolo/MothSignal.git
cd MothSignal
npm install

# install your dependencies using your system package manager for example:
# apt install ffmpeg sox

# To install moth as a command line tool
chmod +775 install.sh
./install.sh  # You can use ./moth.sh instead if you prefer

```

## Usage
```bash
# Encode
moth encode <input_file> 

# Decode
moth decode <input_file>
```
