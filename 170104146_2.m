I = imread('input1.jpg');
[r,c] = size(I);
A = min(I);
B = max(I);
D = B - A;
M = 255;
R = I-A;
R  = R./D;
R = R.*M;
R = R + A;

% ploting figures image here
figure();
subplot(221),imshow(I);title('Input image');
subplot(222),imshow(R);title('Output image');



frequency=zeros(256,1);
frequency1=zeros(256,1);
for i=1:size(I,1)

    for j=1:size(I,2)

        value=I(i,j);

        frequency(value+1)=frequency(value+1)+1;

    end

end
for i=1:size(R,1)

    for j=1:size(R,2)

        value=R(i,j);

        frequency1(value+1)=frequency1(value+1)+1;

    end

end
% ploting figures here  

subplot(223),plot(freq);title('Input hist');
subplot(224),plot(freq1);title('Output hist');



