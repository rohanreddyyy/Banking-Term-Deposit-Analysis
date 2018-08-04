function result = convert_banka_to_matrix(age, job, marital, education, ...
    default, housing, loan, contact, month, day_of_week, duration, ...
    campaign, pdays, previous, poutcome, empvarrate, conspriceidx, ...
    consconfidx, euribor3m, nremployed, y)

job = jobToVector(job);

marital = maritalToVector(marital);

education = educationToVector(education);

default = ynuToVector(default);

housing = ynuToVector(housing);

loan = ynuToVector(loan);

contact = contactToVector(contact);

month = monthToVector(month);

day_of_week = day_of_weekToVector(day_of_week);

poutcome = poutcomeToVector(poutcome);

y = ynuToVector(y);

result = [age, job, marital, education, default, housing, loan, ...
    contact, month, day_of_week, duration, campaign, pdays, previous, ...
    poutcome, empvarrate, conspriceidx, consconfidx, euribor3m, ...
    nremployed, y];

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
        case 'management'
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
        case 'unknown'
            result(i) = 3;
    end
end

result = result(:);

end

function result = educationToVector(education)

result = zeros(length(education), 1);
for i = 1:length(education)
    switch education{i}
        case 'basic.4y'
            result(i) = 0;
        case 'basic.6y'
            result(i) = 1;
        case 'basic.9y'
            result(i) = 2;
        case 'high.school'
            result(i) = 3;
        case 'illiterate'
            result(i) = 4;
        case 'professional.course'
            result(i) = 5;
        case 'university.degree'
            result(i) = 6;
        case 'unknown'
            result(i) = 7;
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
        case 'unknown'
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
    end
end

result = result(:);

end

function result = monthToVector(month)

result = zeros(length(month), 1);
for i = 1:length(month)
    switch month{i}
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

function result = day_of_weekToVector(day_of_week)

result = zeros(length(day_of_week), 1);
for i = 1:length(day_of_week)
    switch day_of_week{i}
        case 'mon'
            result(i) = 0;
        case 'tue'
            result(i) = 1;
        case 'wed'
            result(i) = 2;
        case 'thu'
            result(i) = 3;
        case 'fri'
            result(i) = 4;
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
        case 'nonexistent'
            result(i) = 1;
        case 'success'
            result(i) = 2;
    end
end

result = result(:);

end