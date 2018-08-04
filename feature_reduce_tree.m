make_labels

bank_full_label = bank_full_label(length(bank)+1:end,:);

bank_full = bank_full(length(bank)+1:end,:);
bank_temp = bank;
bank_full_temp = bank_full;

for n = 1:size(bank, 2)
    bank = bank_temp;
    bank_full = bank_full_temp;
    bank(:,n) = [];
    bank_full(:,n) = [];
    classifier = fitctree(bank, bank_label);
    prediction = predict(classifier, bank_full);
    difference = prediction - bank_full_label;
    m = size(find(difference==0),1);
    a = m ./ length(bank_full_label) * 100;
    result(n) = a;
end