import requests


con = input("Digite o nome de usuario do git: ")
url = f"https://api.github.com/users/{con}"


response = requests.get(url)


if response.status_code == 200:
    dados = response.json()
    print(f"Nome: {dados['name']}")
    print(f"Qtd repósitorios: {dados['public_repos']}")
    print(f"Qtd seguidores: {dados['followers']}")
    
else:
    print("Conta não encontrado.")