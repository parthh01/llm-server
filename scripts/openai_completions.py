import openai
from openai import OpenAI

client = OpenAI(base_url='http://34.27.58.60/litellm',api_key='sk-6786') 


print(client.chat.completions.create(model="ollama/mixtral", messages=[{"role":"user", "content":"What is the capital of the US?"}]))
