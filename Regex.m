% Define o padrão
pattern = 'Python';

% Texto de exemplo
text = 'Python é uma  ótima linguagem de programação. Eu amo Python.';

% Usa a função regexp para encontrar todas as ocorrências do padrão no texto
matches = regexp(text, pattern, 'match');

% Exibe as correspondências encontradas
disp('Correspondências encontradas:');
disp(matches);
