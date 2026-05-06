from app.services.openrouter import AIService

# DeepSeek — best price/performance, fast, good for classification tasks
model_deepsake = "deepseek/deepseek-chat"

# Anthropic Claude Sonnet — strong instruction following, reliable structured output
model_claude = "anthropic/claude-3.7-sonnet"

# OpenAI GPT — balanced capability, good general-purpose model
model_gpt = "openai/gpt-4.1"

# Google Gemini Pro — fast, large context window, solid alternative
model_gemini = "google/gemini-1.5-pro"

ai = AIService(
    api_key='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', model = model_deepsake
)
choice = ai.parse_search("drake")



