import re

# Exemplo de endereço de e-mail
email = "john.doe@example.com"

# Regex avançado para extrair informações do endereço de e-mail
pattern = r"(?P<username>[\w\.-]+)@(?P<domain>[\w\.-]+)\.(?P<tld>[\w]+)"

# Compila o padrão
regex = re.compile(pattern)

# Usa o método search() para encontrar a correspondência no endereço de e-mail
match = regex.search(email)

if match:
    # Extrai as informações usando os nomes dos grupos definidos no padrão
    username = match.group('username')
    domain = match.group('domain')
    tld = match.group('tld')
    
    # Exibe as informações extraídas
    print(f"Nome de usuário: {username}")
    print(f"Domínio: {domain}")
    print(f"TLD: {tld}")
else:
    print("Nenhuma correspondência encontrada.")
