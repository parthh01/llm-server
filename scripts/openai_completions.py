import openai
from openai import OpenAI

client = OpenAI(base_url='http://34.41.199.129',api_key='sk-6786') 


print(client.chat.completions.create(model="ollama/phi", messages=[{"role":"user", "content":"Hey!"}]))
