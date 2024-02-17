#!/bin/sh

# Curiosidade sobre o linha de código acima

# O "#!/bin/sh" no início de um arquivo shell script (arquivo com extensão .sh) é chamado de shebang ou hashbang. 
# Ele indica ao sistema operacional qual interpretador de comandos deve ser usado para executar o script.

# No caso de "#!/bin/sh", o sistema utilizará o interpretador de comandos sh (Bourne Shell) para executar o script. 
# Isso significa que o script será interpretado e executado como se você estivesse digitando os comandos diretamente no terminal sh.

pip install redis==2.10.5
python -u worker.py