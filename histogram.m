clear all;
clc;
close all;
a=[0 0 2 6;2 4 2 4; 4 2 4 2];

b=zeros(1,8);
c=zeros(1,8);
[row,col]=size(a);

for x=1:1:row
               for y=1:1:col
                       if a(x,y)<1
                           continue;
                       else
                        t=a(x,y);
                       end
                       b(t)=b(t)+1;
                       
               end
end
for x=1:1:8
    c(x)=b(x)/10;
end

subplot(1,2,1);
bar(c);
title('Probability distribution function');

subplot(1,2,2);
bar(b);
title('Histogarm of image');
