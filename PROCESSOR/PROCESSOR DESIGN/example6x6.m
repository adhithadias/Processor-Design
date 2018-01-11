image = imread('6x6image.jpg');
imgray = rgb2gray(image)

imdouble = im2double(imgray) .* 255

kernel = [1 2 1;2 4 2;1 2 1]

total = 0;

memory = zeros(6, 6);


for i = 2:1:5
    for j = 2:1:5
        
        total = sum(sum(imdouble(i-1:i+1, j-1:j+1) .* kernel));
        total = total / 16;
        
        memory(i, j) = total;
       
    end
end

memory