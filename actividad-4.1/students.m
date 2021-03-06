close all;
clear all;
clc
% I= imread('Nombre de archivo de imagen');
I = zeros(30,30);
% I = imread("cameraman.tif");
I(13:17 ,5:24) = 1;
[r,c,i]=size(I);
if i>1
    % Asegurar trabajar en escala de grises
    I=rgb2gray(I);
end
figure, imshow (fftshift(I)); title('Imagen original (I)');
I=double(I);
% Para qu? sirve par?metro m?
m=1024;
% m es 1024 porque es potencia de 2


% Para qu? sirve fft2?
%calcular transformada de fourirer
% matriz en el dominio de la frecuencia, despues valores de renglones y
% columnas
% Algoritmo que calcula rapido transformad de fourier, se reomcineda
% trabajar con potencias de 2


If=fft2(I,m,m);

% amplitud se calcula porque se usa abs / angle
figure, imshow(uint8(abs(If))); title('uint8(fft(I)) TF de Imagen');

% Cu?l es el prop?sito de calcular el logaritmo de la amplitud de la imagen
% en frecuencia ?
Ifm=log(abs(If)+1);
figure, imshow(Ifm,[]); title('Log de Magnitud de TF de Imagen');
% Qu? hace fftshift?
Ifm=fftshift(Ifm);
figure, imshow(Ifm,[]); title('Log de Magnitud de Imagen con Frec. Bajas centradas');
imshow(mesh(log(abs(Ifm))), [-1, 5]); colormap("jet"); colorbar;
% If es la imagen recuperada en el dominio espacial, pero tiene n?meros
% imaginarios, por lo cual, hay que eliminarlos con "real" o bien, con
% con el valor absoluto "abs"
It=real(ifft2(If));
figure, imshow((I)), title('Imagen original');
subplot(1,2,1), imshow(uint8(It)), title('Imagen de F-T')
subplot(1,2,2), imshow(uint8(It(1:r,1:c))), title('Imagen de F-T recortada');