% Gerar dados de exemplo
x = [1, 2, 3, 4, 5]';
y = [2, 3, 4, 3, 5]';

% Ajustar modelo de regressão
X = [ones(size(x)), x]; % Adicionar coluna de 1s para o termo de intercepto
b = pinv(X) * y; % Estimar os coeficientes usando regressão linear
y_pred = X * b; % Calcular os valores preditos

% Calcular a soma total dos quadrados (SST)
y_mean = mean(y);
SST = sum((y - y_mean).^2);

% Calcular a soma dos quadrados devido à regressão (SSR)
SSR = sum((y_pred - y_mean).^2);

% Calcular a soma dos quadrados do erro (SSE)
SSE = sum((y - y_pred).^2);

% Calcular o quadrado médio da regressão (MSR)
MSR = SSR / 1; % Número de parâmetros do modelo (incluindo o intercepto) é 1

% Calcular o quadrado médio do erro (MSE)
MSE = SSE / (length(y) - 2); % Graus de liberdade é o número de observações menos o número de parâmetros

% Calcular a estatística F
F_statistic = MSR / MSE;


% Exibir resultados
disp('Análise de Regressão e Análise de Variância:');
disp('-------------------------------------------');
disp(['Soma dos Quadrados Total (SST): ', num2str(SST)]);
disp(['Soma dos Quadrados devido à Regressão (SSR): ', num2str(SSR)]);
disp(['Soma dos Quadrados do Erro (SSE): ', num2str(SSE)]);
disp(['Quadrado Médio da Regressão (MSR): ', num2str(MSR)]);
disp(['Quadrado Médio do Erro (MSE): ', num2str(MSE)]);
disp(['Estatística F: ', num2str(F_statistic)]);
