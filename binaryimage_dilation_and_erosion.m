%% Generate image
m = 8;
n = 8;
a = [0 0 0 0 0 0 0 0;
     0 0 0 1 1 1 0 0;
     0 0 1 1 1 1 0 0;
     0 1 1 1 1 1 1 0;
     0 1 1 1 1 0 0 0;
     0 1 1 1 0 0 0 0;
     0 1 1 1 0 0 0 0;
     0 0 0 0 0 0 0 0] 
 
%% Dilation
for i=1:8
    for j=1:8
        if a(i,j) == 1
           b(i+1,j) = a(i+1,j)+1;
           b(i,j+1) = a(i,j+1)+1;
           b(i-1,j) = a(i-1,j)+1;
           b(i,j-1) = a(i,j-1)+1;
        end
    end
end
for i=1:8
    for j=1:8
        if b(i,j) >= 1
            b(i,j) = 1;
        end
    end
end

%% Erosion
for i=1:8
    for j=1:8
        c(i,j) = 0;
        if a(i,j) == 1
           if a(i+1,j) ==1;
               if a(i,j+1) ==1 ;
                    if a(i-1,j) ==1
                        if a(i,j-1) ==1
                            c(i,j) = 1;
                        end
                    end
               end
           end
        end
    end
end