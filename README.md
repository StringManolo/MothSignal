# MothSignal

Encode/Decode Base64 in wav

## Notice
- Base64 decoding is not perfect. Got a 98% precision on decoding from audio to base64.

## Requirements
- Linux
- Bash
- Node.js
- npm
- ffmpeg

##### Node modules
- dsp.js
- wav-decoder


## Install

```bash
git clone https://github.com/StringManolo/MothSignal.git
cd MothSignal
npm install

# install your dependencies using your system package manager for example:
# apt install ffmpeg
# apk add ffmpeg
```

## Usage
```bash
# Encode
./moth.sh encode fileToEncode

# Decode
./moth.sh decode fileToEncode.wav
```

A fileToEncode.wav will be generated in same folder as fileToEncode file. 
