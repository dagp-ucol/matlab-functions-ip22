% Mascara
se = [0 0 1; 0 1 0; 0 0 0];

% Matriz - Escala de Grises
b = [35, 1, 6, 26, 19, 24;
     3, 32, 7, 21, 23, 25;
     31, 9, 2, 22, 27, 20;
     8, 28, 33, 17, 10, 15;
     30, 15, 13, 12, 14, 16;
     4, 36, 29, 13, 18, 11;
];

% Matriz - Binaria
bin = [
    0 1 1 0 1 0;
    1 1 1 0 0 1;
    1 1 0 1 0 1;
    1 1 1 0 0 0;
    0 1 1 1 0 1;
    0 0 1 0 0 0;
];

% Operaciones Morfológicas
a = imdilate(b, se);
g = imerode(b, se);

bina = imdilate(bin, se);
bino = imerode(bin, se);