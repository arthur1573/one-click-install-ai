#! /bin/bash

echo "one click install ai"
echo "for github's codespace"




# download ollama
curl -fsSL https://ollama.com/install.sh | sh




# create a ollama server
ollama serve

# start the software
ollama run llama3





# docker run website
# remove: --name open-webui
# remove: --restart always
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434  ghcr.io/open-webui/open-webui:main
