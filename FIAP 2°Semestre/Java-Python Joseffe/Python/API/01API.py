import requests
from Function import FunctionApi as fu


cep = input("Digite o CEP desejado: ")
url = functionapi(f"https://viacep.com.br/ws/{cep}/json/")


response = requests.get(url)


if response.status_code == 200:
    dados = response.json()
    print(f"Logradouro: {dados['logradouro']}")
    print(f"Bairro: {dados['bairro']}")
    print(f"Cidade: {dados['localidade']}")
    
else:
    print("CEP não encontrado.")