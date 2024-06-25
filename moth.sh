#!/bin/env bash

if [ $# -eq 0 ]; then
    echo -e "Usage: moth.sh [operation] [file]\n\nmoth encode hello.txt\nmoth decode hello.wav"
    exit 1
fi

internal='./internal'
operation_mode=$1
file_to_encode="$2"

if [ ! -f "$file_to_encode" ]; then
  echo "File not found: $file_to_encode"
  exit 1
fi

# Move to the internal directory before executing the generator
cd ${internal};

# Generate default base64 charset (you can use anycharset, even non base64. But you will need ti change the decoder hardcoded map.json)
# Defaults tones are already generated
# ./moth_charset_generator 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='

# Generate audio from the default charset
# ./moth_generate_audio

if [ "$1" == "encode" ] || [ "$1" == "e" ] || [ "$1" == "-e" ] || [ "$1" == "--encode" ]; then
# Delte old encoding
  if [ -d "./tonos_encoding" ]; then
    rm -rf ./tonos_encoding
  fi

  # Encode base64 to wav
  ./moth_encoder "../$2" ./tonos/maps.json 
  ./moth_generate_audio ./tonos_encoding/

  mv ./tonos_encoding/tonos_secuenciados.wav "../$2".wav

  echo "[DEBUG] BASE64: $(cat ../$2 | base64)"
  echo "File generated: $2.wav"
elif [ "$1" == "decode" ] || [ "$1" == "d" ] || [ "$1" == "-d" ] || [ "$1" == "--decode" ]; then
  # Decode wav to base64
  decodedbase64=$(./moth_decoder "../$2")
  echo "[DEBUG] BASE64: $decodedbase64"
  echo $decodedbase64 | base64 -d;

else
  echo "Unknown operation: $1"
  exit 1
fi
