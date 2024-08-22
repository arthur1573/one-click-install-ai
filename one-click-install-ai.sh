#! /bin/bash

echo "one click install ai"
echo "for github's codespace"




# download ollama
curl -fsSL https://ollama.com/install.sh | sh




# create a ollama server
# ollama serve

# &>/dev/null &
# redirect the command to /dev/null 
# and later append to background
ollama serve &> /dev/null &


# start the software
# ollama run llama3

ollama run llama3 &> /dev/null &




# docker run website
# remove: --name open-webui
# remove: --restart always
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434  ghcr.io/open-webui/open-webui:main
