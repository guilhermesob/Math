% Dados de exemplo
x = [1, 2, 3, 4, 5]';
y = [2, 3, 4, 3, 5]';

% Ajustar modelo de regressão
X = [ones(size(x)), x]; % Adicionar coluna de 1s para o termo de intercepto
b = pinv(X) * y; % Estimar os coeficientes usando regressão linear
y_pred = X * b; % Calcular os valores preditos

% Calcular a soma total dos quadrados (STQ)
y_mean = mean(y);
STQ = sum((y - y_mean).^2);

% Calcular a soma dos quadrados devido à regressão (SQR)
SQR = sum((y - y_pred).^2);

% Calcular a soma dos quadrados do erro (SQE)
SQE = sum((y_pred - y_mean).^2);

% Graus de liberdade
n = length(y); % número de observações
l = 1; % número de parâmetros do modelo (incluindo o intercepto)

% Calcular o quadrado médio da regressão (MSR)
MSR = SQE / l;

% Calcular o quadrado médio do erro (MSE)
MSE = SQR / (n - l - 1);

% Calcular a estatística F
F_statistic = MSR / MSE;

% Exibir resultados
disp('Análise de Regressão e Análise de Variância:');
disp('-------------------------------------------');
disp(['Soma dos Quadrados Total (STQ): ', num2str(STQ)]);
disp(['Soma dos Quadrados devido à Regressão (SQR): ', num2str(SQR)]);
disp(['Soma dos Quadrados do Erro (SQE): ', num2str(SQE)]);
disp(['Quadrado Médio da Regressão (MSR): ', num2str(MSR)]);
disp(['Quadrado Médio do Erro (MSE): ', num2str(MSE)]);
disp(['Estatística F: ', num2str(F_statistic)]);
