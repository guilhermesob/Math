% Definir a função vetorial F(x, y, z)
F = @(x, y, z) [x.^2; y.^2; z.^2]; % Alteração aqui para garantir que seja uma matriz coluna

% Definir a curva parametrizada C
t = linspace(0, 1, 100); % Vetor de parâmetros
x = t;
y = t.^2;
z = t.^3;

% Calcular o vetor tangente à curva parametrizada C
dx = diff(x);
dy = diff(y);
dz = diff(z);
dr = [dx; dy; dz]; % Manter as dimensões corretas para o cálculo do produto escalar

% Avaliar a função vetorial F ao longo da curva C
F_eval = F(x(1:end-1), y(1:end-1), z(1:end-1));

% Calcular o produto escalar entre F e dr
F_dot_dr = dot(F_eval, dr, 1); % Especificar a dimensão correta para o produto escalar

% Calcular a integral de linha
integral_de_linha = trapz(t(1:end-1), F_dot_dr);

% Exibir o resultado
disp(['O valor da integral de linha ao longo da curva C é: ', num2str(integral_de_linha)]);
