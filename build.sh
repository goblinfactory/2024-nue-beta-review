#!/bin/bash

# ************************************************************************************************
#   NUEJS + CLOUDFLARE - Build script that will run both locally (Mac OSX) or on cloudflare agent
# ************************************************************************************************

# Author : Alan Hemmings, first version 23 April, 2024.
#
# This build script, together with specific folder structure and wrangler.toml file
# will allow you to integration test your nuejs frontend locally, against a
# real cloudflare API (running locally) which is the same code that will run in production.

echo "Goblinfacory Blog build : NueJs on Cloudflare with edge functions on path /api"

# *******************
#  M1 Mac only steps
# *******************
if [[ "$(uname -m)" == "arm64" ]]; then
    
    echo "Local machine build steps"    
    echo "Check if bun is installed"
    # ******************************
    # on Mac I need to install wrangler (but not ?? on cloudflare buil agent)
    if ! command -v bun &> /dev/null; then
        echo "Bun is not installed. Please install bun following instructions from: [insert URL here]"
        exit 1
    fi
# ****************************
# cloudflare build server only
# ****************************
# put any commands we need to ONLY run on the cf build agent.
# if this is emplty this doesnt mean nothing runs, just means that 
# all the rest of the commands are run both locally AND when 
# running on the build server.
else
    echo "nothing  nothing only for CF yet."
fi

# *************
# NUEJS BUILD 
# *************
rm -rf .dist 2>/dev/null
bun install
bunx nue build --production

# ******************************
# CLOUDFLARE FUNCTIONS BUILD!
# ******************************
# cloudflare will pick up the functions 
# file automatically from the /functions folder 
# convention and deploy.



