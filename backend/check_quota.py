import google.generativeai as genai
from dotenv import load_dotenv
import os

load_dotenv()

genai.configure(api_key=os.getenv('GEMINI_API_KEY'))

try:
    model = genai.GenerativeModel('gemini-2.5-flash')
    response = model.generate_content("Di 'Hola'")
    print("✅ API Key funciona correctamente")
    print(f"Respuesta: {response.text}")
except Exception as e:
    print(f"❌ Error: {e}")