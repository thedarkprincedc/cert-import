#!/bin/bash
extension="*.cer"
keychain="/Library/Keychains/System.keychain"

for filename in ${extension}; do
    [ -e "$filename" ] || continue
    echo ${filename}
    security add-trusted-cert -d -r trustRoot -k ${keychain} ${filename}
done