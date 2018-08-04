bank_label = bank(:,17);
bank = bank(:,1:16);
bank_full_label = bank_full(:,17);
bank_full = bank_full(:,1:16);
banka_label = banka(:,21);
banka = banka(:,1:20);
banka_full_label = banka_full(:,21);
banka_full = banka_full(:,1:20);

bank_training = fitctree(bank, bank_label);
bank_full = bank_full(length(bank)+1:end,:);
bank_full_label = bank_full_label(length(bank)+1:end,:);
bank_prediction = predict(bank_training, bank_full);

bank_full_difference = bank_prediction - bank_full_label;
s1 = size(find(bank_full_difference==0), 1);
s1 = s1 ./ length(bank_full_label) * 100;

banka_training = fitctree(banka, banka_label);
banka_full = banka_full(length(banka)+1:end,:);
banka_full_label = banka_full_label(length(banka)+1:end,:);
banka_prediction = predict(banka_training, banka_full);

banka_full_difference = banka_prediction - banka_full_label;
s2 = size(find(banka_full_difference==0), 1);
s2 = s2 ./ length(banka_full_label) * 100;