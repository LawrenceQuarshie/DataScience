clc,
clear,
close all

url = input("Input website address:",'s');
html = string(webread(url));

price1 = ('<bdi>');
price2 = ('</bdi>');

urlx = string(url);

price = extractBetween(html, price1, price2);
product_data = [price' urlx'];
writematrix(product_data, 'scrappeddata.xlsx');