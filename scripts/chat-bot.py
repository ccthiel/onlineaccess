import openai
import gradio as gr

openai.api_key = "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"

messages = [
    {"role": "system", "content": "You are a helpful and kind AI Assistant."},
]

def chatbot(input):
    if input:
        messages.append({"role": "user", "content": input})
        chat = openai.ChatCompletion.create(
            model="gpt-3.5-turbo", messages=messages
        )
        reply = chat.choices[0].message.content
        messages.append({"role": "assistant", "content": reply})
        return reply

inputs = gr.components.Textbox(lines=7, label="Chat with AI")
outputs = gr.components.Textbox(label="Reply")

gr.Interface(fn=chatbot, inputs=inputs, outputs=outputs, title="AI Chatbot",
             description="Ask anything you want",
             theme="gstaff/xkcd").launch(share=True)