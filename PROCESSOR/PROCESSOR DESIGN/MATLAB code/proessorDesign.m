image = imread('android.png');
imgray = rgb2gray(image);

imshow(imgray)

L = 256;
delay = 0.001;

s = serial('COM13');
s.BaudRate = 115200;
s.Timeout = 2;  % 2 seconds
fopen(s)

% for i = 1:L
%     for j = 1:L
%         fprintf(s, 'D');
%         pause(delay);        
%     end
% end

disp('.');

out = fscanf(s)

fclose(s);
delete(s);
clear s;
