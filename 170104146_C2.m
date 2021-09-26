clc;
clear all;
close all;

structure_element_1 = strel('disk',50);
structure_element_2 = strel('disk',8);



%for finger no one-1
one = imread('f1.png');
one_binary = imbinarize(rgb2gray(one));
palm_one = imdilate(imerode(one_binary, structure_element_1), structure_element_1);
one_finger = one_binary - palm_one;
one_finger_noiseless = imdilate(imerode(one_finger,structure_element_2), structure_element_2);
[temp1, num_one] = bwlabel(one_finger_noiseless);




%for finger no two-2
two = imread('f2.png');
two_binary = imbinarize(rgb2gray(two));
palm_two = imdilate(imerode(two_binary, structure_element_1), structure_element_1);
two_finger = two_binary - palm_two;
two_finger_noiseless = imdilate(imerode(two_finger,structure_element_2), structure_element_2);
[temp2, num_two] = bwlabel(two_finger_noiseless);





%for finger no three-3
three = imread('f3.png');
three_binary = imbinarize(rgb2gray(three));
palm_three = imdilate(imerode(three_binary, structure_element_1), structure_element_1);
three_finger = three_binary - palm_three;
three_finger_noiseless = imdilate(imerode(three_finger,structure_element_2), structure_element_2);
[temp3, num_three] = bwlabel(three_finger_noiseless);





%for finger no four-4
four = imread('f4.png');
four_binary = imbinarize(rgb2gray(four));
palm_four = imdilate(imerode(four_binary, structure_element_1), structure_element_1);
four_finger = four_binary - palm_four;
four_finger_noiseless = imdilate(imerode(four_finger,structure_element_2), structure_element_2);
[temp4, num_four] = bwlabel(four_finger_noiseless);



%for finger no five-5
five = imread('f5.png');
five_binary = imbinarize(rgb2gray(five));
palm_five = imdilate(imerode(five_binary, structure_element_1), structure_element_1);
five_finger = five_binary - palm_five;
five_finger_noiseless = imdilate(imerode(five_finger,structure_element_2), structure_element_2);
[temp5, num_five] = bwlabel(five_finger_noiseless);


%print no one finger
subplot(5,6,1);
imshow(one);
title('Original');

subplot(5,6,2);
imshow(one_binary);
title('Binary Image');

subplot(5,6,3);
imshow(palm_one);
title('Palm');

subplot(5,6,4);
imshow(one_finger);
title('Fingers(Noisy)');

subplot(5,6,5);
imshow(one_finger_noiseless);
title('Fingers(Noiseless)');

subplot(5,6,6);
ax = subplot(5,6,6);
text(0.5,0.5,(string(num_one)));
set ( ax, 'xtick',[], 'ytick',[])
title('Number of fingers');




%print no two finger
subplot(5,6,7);
imshow(two);
title('Original');

subplot(5,6,8);
imshow(two_binary);
title('Binary Image');

subplot(5,6,9);
imshow(palm_two);
title('Palm');

subplot(5,6,10);
imshow(two_finger);
title('Fingers(Noisy)');

subplot(5,6,11);
imshow(two_finger_noiseless);
title('Fingers(Noiseless)');

subplot(5,6,12);
ax = subplot(5,6,12);
text(0.5,0.5,(string(num_two)));
set ( ax, 'xtick',[], 'ytick',[])
title('Number of fingers');




%print no three finger
subplot(5,6,13);
imshow(three);
title('Original');

subplot(5,6,14);
imshow(three_binary);
title('Binary Image');

subplot(5,6,15);
imshow(palm_three);
title('Palm');

subplot(5,6,16);
imshow(three_finger);
title('Fingers(Noisy)');

subplot(5,6,17);
imshow(three_finger_noiseless);
title('Fingers(Noiseless)');

subplot(5,6,18);
ax = subplot(5,6,18);
text(0.5,0.5,(string(num_three)));
set ( ax, 'xtick',[], 'ytick',[])
title('Number of fingers');





%print no four finger
subplot(5,6,19);
imshow(four);
title('Original');

subplot(5,6,20);
imshow(four_binary);
title('Binary Image');

subplot(5,6,21);
imshow(palm_four);
title('Palm');

subplot(5,6,22);
imshow(four_finger);
title('Fingers(Noisy)');

subplot(5,6,23);
imshow(four_finger_noiseless);
title('Fingers(Noiseless)');

subplot(5,6,24);
ax = subplot(5,6,24);
text(0.5,0.5,(string(num_four)));
set ( ax, 'xtick',[], 'ytick',[])
title('Number of fingers');






%print no five finger
subplot(5,6,25);
imshow(five);
title('Original');

subplot(5,6,26);
imshow(five_binary);
title('Binary Image');

subplot(5,6,27);
imshow(palm_five);
title('Palm');

subplot(5,6,28);
imshow(five_finger);
title('Fingers(Noisy)');

subplot(5,6,29);
imshow(five_finger_noiseless);
title('Fingers(Noiseless)');

subplot(5,6,30);
ax = subplot(5,6,30);
text(0.5,0.5,(string(num_five)));
set ( ax, 'xtick',[], 'ytick',[])
title('Number of fingers');

