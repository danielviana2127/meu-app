from flask import Flask
import psycopg2

app = Flask(__name__)

def get_connection():
    return psycopg2.connect(
        host="postgres-db",
        database="meubanco",
        user="meuuser",
        password="minhasenha"
    )

@app.route("/")
def index():
    try:
        conn = get_connection()
        cur = conn.cursor()
        cur.execute("SELECT version();")
        result = cur.fetchone()
        return f"Meu App atualizado via Rolling Update 🔄🚀"
    except Exception as e:
        return f"Erro ao conectar: {e}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
