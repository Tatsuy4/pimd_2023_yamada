info1980 = imfinfo("Image1.png");
type1980 = info1980.ColorType
info2011 = imfinfo("Image2.png");
type2011 = info2011.ColorType

%info_pepper=imfinfo("peppers.png");



%画像のインポート時にImage1,Image2で保存したため名前が異なっている。

figure(1)
[glacier1980,map1980]=imread("Image1.png");
imshow(glacier1980,map1980);
title("bear Glacier in 1980")

figure(2)
[glacier2011,map2011]=imread("Image2.png");
imshow(glacier2011,map2011);
title("bear Glacier in 2011")

figure(3)
gs1980 =ind2gray(glacier1980,map1980);
gs2011 =ind2gray(glacier2011,map2011);
imshowpair(gs1980,gs2011,"montage")
title("Bear Glacier Comparion - 1980-2011")

figure(4)
rgb1980 =ind2rgb(glacier1980,map1980);
imshow(rgb1980)

figure(5)
[ind2011 map] = rgb2ind(rgb1980, 8);
imshow(ind2011,map)
