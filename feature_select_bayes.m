z = 0;

for n = 1:size(bank, 2)
    temp_bank = bank(:,n);
    temp_bank_full = bank_full(:,n);
    classifier = fitcnb(temp_bank,bank_label);
    prediction = predict(classifier, temp_bank_full);
    difference = prediction - bank_full_label;
    m = size(find(difference == 0), 1);
    a = m ./ length(bank_full_label) * 100;
    result(n) = a;
end

% z = find(result == max(result));
% 
% new_bank = [new_bank bank(:,z)];
% 
% bank = [bank(:,1:z-1), bank(:,z+1:end)];
% bank_full = [bank_full(:,1:z-1), bank_full(:,z+1:end)];