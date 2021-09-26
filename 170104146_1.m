% 170104146   name:saiful islam
GI=imread('input1.jpg');


numofpixels=size(GI,1)*size(GI,2);
HI=uint8(zeros(size(GI,1),size(GI,2)));

frequency=zeros(256,1);
frequency1=zeros(256,1);
probability=zeros(256,1);

probc=zeros(256,1);

cum=zeros(256,1);

output=zeros(256,1);


%frequency  counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probability.


for i=1:size(GI,1)

    for j=1:size(GI,2)

        value=GI(i,j);

        frequency(value+1)=frequency(value+1)+1;

        probability(value+1)=frequency(value+1)/numofpixels;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated here. 

for i=1:size(probability)

   sum=sum+frequency(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(GI,1)

    for j=1:size(GI,2)

            HI(i,j)=output(GI(i,j)+1);

    end

end

for i=1:size(HI,1)

    for j=1:size(HI,2)

        value=HI(i,j);

        frequency1(value+1)=frequency1(value+1)+1;

        probability(value+1)=frequency1(value+1)/numofpixels;

    end

end

figure;
subplot(221),imshow(GI);title('Main image');
subplot(222),imshow(HI);title('Output image');
subplot(223),plot(frequency);title('Hist of Main image');
subplot(224),plot(frequency1);title('Hist of output image');
