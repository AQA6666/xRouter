import openai
# Or create an OpenAI client with the gateway
client = openai.OpenAI(
    base_url="https://www.dmxapi.cn/v1",
    api_key="sk-0FZLfttkdg83D1UCZMmasTgFHa2WuH6DCwzC0wJVl04sthGa",
)

resp = client.chat.completions.create(
    model="qwen3-coder-plus",
    messages=[{"role": "user", "content": "Hello, who are you?"}],
)

print(resp.choices[0].message.content)