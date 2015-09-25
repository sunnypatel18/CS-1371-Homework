    function [total updata] = updateDatabase(data, newsale)

    customersb = {data.sales.customer};
    salesnum = length(customersb);
    data.sales(salesnum + 1).salesID = newsale{1};
    data.sales(salesnum + 1).customer = newsale{2};
    data.sales(salesnum + 1).date = newsale{5};
    products = {data.inventory.product};
    productnum = strcmp(newsale{3}, products);
    data.inventory(productnum).quantity = data.inventory(productnum).quantity - newsale{4};
    if data.inventory(productnum).quantity < 0
        extra = -data.inventory(productnum).quantity;
        data.inventory(productnum).quantity = 0;
        total = data.inventory(productnum).price * (newsale{4} - extra);
    else
        total = data.inventory(productnum).price * newsale{4};
    end
    updata = data;

end