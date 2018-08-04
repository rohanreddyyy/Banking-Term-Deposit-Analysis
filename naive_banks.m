bank_training = fitcnb(bank, bank_label);
bank_prediction = predict(bank_training, bank_full);

bank_full_difference = bank_prediction - bank_full_label;
s1 = size(find(bank_full_difference==0), 1);
s1 = s1 ./ length(bank_full_label) * 100;

% banka_training = fitcnb(banka, banka_label);
% banka_prediction = predict(banka_training, banka_full);
% 
% banka_full_difference = banka_prediction - banka_full_label;
% s2 = size(find(banka_full_difference==0), 1);
% s2 = s2 ./ length(banka_full_label) * 100;