function result = convert_bank_to_matrix(age, balance1, campaign, ...
    contact, day, default, duration, education, housing, job, loan, ...
    marital, month, pdays, poutcome, previous, y)

age = classifyage(age);

balance1 = classifybalance(balance1);

job = jobToVector(job);

marital = maritalToVector(marital);

education = educationToVector(education);

default = ynuToVector(default);

housing = ynuToVector(housing);

loan = ynuToVector(loan);

contact = contactToVector(contact);

month = monthToVector(month);

poutcome = poutcomeToVector(poutcome);

y = ynuToVector(y);

result = [age, job, marital, education, default, balance1, housing, ...
    loan, contact, day, month, duration, campaign, pdays, previous, ...
    poutcome, y];

end

function result = classifyage(age)

result = zeros(length(age),1);
for i = 1:length(age)
    if age(i) < 30
        result(i) = 0;
    elseif age(i) >= 30 && age(i) < 50;
        result(i) = 1;
    else
        result(i) = 2;
    end
end

end

function result = classifybalance(balance)

result = zeros(length(balance),1);
for i = 1:length(balance)
    if balance(i) <= 0
        result(i) = 0;
    elseif balance(i) > 0 && balance(i) <= 500
        result(i) = 1;
    elseif balance(i) > 500 && balance(i) <= 1500
        result(i) = 2;
    else
        result(i) = 3;
    end
end

end

function result = jobToVector(job)

result = zeros(length(job), 1);
for i = 1:length(job)
    switch job{i}
        case 'admin.'
            result(i) = 0;
        case 'blue-collar'
            result(i) = 1;
        case 'entrepreneur'
            result(i) = 2;
        case 'housemaid'
            result(i) = 3;
        case 'management';
            result(i) = 4;
        case 'retired'
            result(i) = 5;
        case 'self-employed'
            result(i) = 6;
        case 'services'
            result(i) = 7;
        case 'student'
            result(i) = 8;
        case 'technician'
            result(i) = 9;
        case 'unemployed'
            result(i) = 10;
        case 'unknown'
            result(i) = 11;
    end
end

result = result(:);

end

function result = maritalToVector(marital)

result = zeros(length(marital), 1);
for i = 1:length(marital)
    switch marital{i}
        case 'divorced'
            result(i) = 0;
        case 'married'
            result(i) = 1;
        case 'single'
            result(i) = 2;
    end
end

result = result(:);

end

function result = educationToVector(education)

result = zeros(length(education), 1);
for i = 1:length(education)
    switch education{i}
        case 'primary'
            result(i) = 0;
        case 'secondary'
            result(i) = 1;
        case 'tertiary'
            result(i) = 2;
        case 'unknown'
            result(i) = 3;
    end
end

result = result(:);

end

function result = ynuToVector(cell)

result = zeros(length(cell), 1);
for i = 1:length(cell)
    switch cell{i}
        case 'no'
            result(i) = 0;
        case 'yes'
            result(i) = 1;
        case 'unkown'
            result(i) = 2;
    end
end

result = result(:);

end

function result = contactToVector(contact)

result = zeros(length(contact), 1);
for i = 1:length(contact)
    switch contact{i}
        case 'cellular'
            result(i) = 0;
        case 'telephone'
            result(i) = 1;
        case 'unknown'
            result(i) = 2;
    end
end

result = result(:);

end

function result = monthToVector(month)

result = zeros(length(month), 1);
for i = 1:length(month)
    switch(month{i})
        case 'jan'
            result(i) = 0;
        case 'feb'
            result(i) = 1;
        case 'mar'
            result(i) = 2;
        case 'apr'
            result(i) = 3;
        case 'may'
            result(i) = 4;
        case 'jun'
            result(i) = 5;
        case 'jul'
            result(i) = 6;
        case 'aug'
            result(i) = 7;
        case 'sep'
            result(i) = 8;
        case 'oct'
            result(i) = 9;
        case 'nov'
            result(i) = 10;
        case 'dec'
            result(i) = 11;
    end
end

result = result(:);

end

function result = poutcomeToVector(poutcome)

result = zeros(length(poutcome), 1);
for i = 1:length(poutcome)
    switch poutcome{i}
        case 'failure'
            result(i) = 0;
        case 'other'
            result(i) = 1;
        case 'success'
            result(i) = 2;
        case 'unknown'
            result(i) = 3;
    end
end

result = result(:);

end