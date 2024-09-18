fprintf('theta_left1  theta_left2  theta_right1  theta_right2 \n')
a = 25;
b = 30;
c = 60;
x = 0;
y = -60;
A = 2 * b * y;
B = 2 * a * b + 2 * b * x;
C = x ^ 2 + y ^ 2 + a ^ 2 + b ^ 2 - c ^ 2 + 2 * a * x;

t_alpha = C - B;
t_beta = 2 * A;
t_gamma = C + B;

t_1 = (-t_beta + sqrt(t_beta ^ 2 - 4 * t_alpha*t_gamma)) / (2 * t_alpha);
t_2 = (-t_beta - sqrt(t_beta ^ 2 - 4 * t_alpha*t_gamma)) / (2 * t_alpha);

theta_t1 = 2 * atand(t_1);
theta_t2 = 2 * atand(t_2);

D = 2 * b * y;
E = 2 * a * b - 2 * b * x;
F = x ^ 2 + y ^ 2 + a ^ 2 + b ^ 2 - c ^ 2 - 2 * a * x;

tt_alpha = F - E;
tt_beta = 2 * D;
tt_gamma = F + E;

tt_1 = (-tt_beta + sqrt(tt_beta ^ 2 - 4 * tt_alpha*tt_gamma)) / (2 * tt_alpha);
tt_2 = (-tt_beta - sqrt(tt_beta ^ 2 - 4 * tt_alpha*tt_gamma)) / (2 * tt_alpha);

theta_tt1 = 2 * atand(tt_1);
theta_tt2 = 2 * atand(tt_2);

fprintf('%f    %f     %f    %f \n', theta_t1, theta_t2, theta_tt1, theta_tt2)


