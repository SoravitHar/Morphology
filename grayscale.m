%% image
a = imread('grayscale.jpg');
imshow(a)

%% Dilation
h = [1 1 1;1 2 1;1 1 1];
for i=2:size(a,1)-1
    for j=2:size(a,2)-1
        for x=1:3
            for y=1:3
                b(x,y) = a(i+x-2,j+y-2)+h(x,y);
            end
        end
        c(i,j) = max(max(b));
    end
end

%% Erosion
h = [1 1 1;1 2 1;1 1 1];
for i=2:size(a,1)-1
    for j=2:size(a,2)-1
        for x=1:3
            for y=1:3
                b(x,y) = a(i+x-2,j+y-2)-h(x,y);
            end
        end
        c(i,j) = min(min(b));
    end
end
