import requests


real = float(input("Qual valor em R$: "))

print('''Deseja converter para:
[ 1 ] Dólar
[ 2 ] Euro
[ 3 ] Bitcoin''')
opcao = int(input("Qual é a sua opção: "))

params = ""
if(opcao == 1): params = "USD-BRL"
if(opcao == 2): params = "EUR-BRL"
if(opcao == 3): params = "BTC-BRL"
print(params)

url = f"https://economia.awesomeapi.com.br/json/last/{params}"



response = requests.get(url)


if response.status_code == 200:
    dados = response.json()
    paramss = params.replace("-","")
    ask = dados[paramss]['ask']
    cotacao = real / float(ask)
    print("Resultado: ",cotacao)
    
else:
    print("Não encontrado")