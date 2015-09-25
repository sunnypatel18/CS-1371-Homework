function receipt(list, date, customer, cccode)

file = [customer '_receipt.txt'];
newcccode = cccode;
newcccode(1:4) = 'XXXX';
newcccode(6:9) = 'XXXX';
newcccode(11:14) = 'XXXX';
totalraw = 0;
[num text raw] = xlsread('Inventory.xlsx');
fh = fopen(file, 'w');
fprintf(fh, 'CS1371 Grocery Store\n\n');
fprintf(fh, [date '\n' customer '\n' newcccode '\n\n']);
for x = 1:length({list.product});
    quantity = list(x).quantity;
    product = list(x).product;
    [r c] = find(strcmp(product, raw));
    price = round(raw{r, 2}*100)/100;
    productprice = quantity*price;
    totalraw = totalraw + productprice;
    line = sprintf('%dx %s     %.2f\n', quantity, product, productprice);
    fprintf(fh, line);
end
tax = num2str(round((.1 * totalraw)*100)/100);
total = num2str(totalraw + str2num(tax));
taxstatement = sprintf('Tax     %s', tax);
totalstatement = sprintf('Total     %s', total);
fprintf(fh, [taxstatement '\n']);
fprintf(fh, totalstatement);
fclose(fh);

end