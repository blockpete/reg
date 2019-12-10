#!/bin/bash
# Export the sha256sum for verification.
export REG_SHA256="ade837fc5224acd8c34732bf54a94f579b47851cc6a7fd5899a98386b782e228"

# Download and check the sha256sum.
curl -fSL "https://github.com/genuinetools/reg/releases/download/v0.16.1/reg-linux-amd64" -o "/usr/local/bin/reg" \
	&& echo "${REG_SHA256}  /usr/local/bin/reg" | sha256sum -c - \
	&& chmod a+x "/usr/local/bin/reg"

echo "reg installed!"

# Run it!
reg -h
