from openai import OpenAI

client = OpenAI(
    # Set your Hugging Face token as the API key if you use embeddings
    api_key="YOUR_HUGGING_FACE_TOKEN",

    # Set the API base URL if needed, e.g., for a local development environment
    base_url="http://34.41.199.129"
)


def main():
    chat_completion = client.chat.completions.create(
        model="phi",
        messages=[{"role": "user", "content": "write a poem about a tree"}],
        stream=True,
    )

    if isinstance(chat_completion, dict):
        # Not streaming
        print(chat_completion.choices[0].message.content)
    else:
        # Streaming
        for token in chat_completion:
            content = token.choices[0].delta.content
            if content is not None:
                print(content, end="", flush=True)


if __name__ == "__main__":
    main()
