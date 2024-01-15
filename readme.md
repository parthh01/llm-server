
ollama based custom pseudo openai llm server. Idea is to be able to query my own LLM API (as close as possible to openai's API)


prerequisites: 
  - Docker engine 


steps to start: 
 1. `docker-compose down --remove-orphans`
 2. `docker-compose build` 
 3. `docker-compose up -d`


to dos: 
 - ollamastartup to pull multiple models 
 - setup service + corresponding startup script to allow creation of new users (basic auth) 
 - Dockerfile arch sniffing for Nvidia GPU specific instructions in Dockerfile (currently just uncommented out) 
 - make ollamastartup more robust (test model inference after running pull instructions)
 - setup ollama to wait for ollamastartup to exit 
 - setup ollama service to route through an extension like /ollm/*

