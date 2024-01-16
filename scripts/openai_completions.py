import openai
from openai import OpenAI

client = OpenAI(base_url='http://localhost/litellm',api_key='sk-6786') 


print(client.chat.completions.create(model="ollama/phi", messages=[{"role":"user", "content":"What is the capital of the US?"}]))
