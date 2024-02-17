import redis
import json
from time import sleep
from random import randint

if __name__ == '__main__':
  r = redis.Redis(host='queue', port=6379, db=0)
  
  while True:
    # blpop (blocking left pop) é usado para bloquear e esperar até que uma mensagem esteja disponível na lista 'sender' e, 
    # em seguida, a remove da lista. O resultado é decodificado de JSON e armazenado na variável mensagem.
    # Na linha mensagem = json.loads(r.blpop('sender')[1]), o blpop('sender') retorna uma tupla contendo a chave ('sender') 
    # e o valor da mensagem retirada da lista. O método blpop é um método de bloqueio que retorna uma lista contendo a chave 
    # e o valor da mensagem removida, e [1] é usado para acessar o segundo elemento dessa lista, que é o valor da mensagem.
    mensagem = json.loads(r.blpop('sender')[1])
    print('Mandando a mensagem:', mensagem['assunto'])
    sleep(randint(15, 45)) 
    print('Mensagem', mensagem['assunto'], 'enviada')
