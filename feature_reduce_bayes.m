bank_temp = bank;
bank_full_temp = bank_full;

for n = 1:size(bank_temp, 2)
    bank = bank_temp;
    bank_full = bank_full_temp;
    bank(:,n) = [];
    bank_full(:,n) = [];
    classifier = fitcnb(bank, bank_label);
    prediction = predict(classifier, bank_full);
    difference = prediction - bank_full_label;
    m = size(find(difference==0),1);
    a = m ./ length(bank_full_label) * 100;
    result(n) = a;
end