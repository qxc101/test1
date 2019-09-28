%calculate P(X = x) for a given attributes. input should be of formate(table name(;,column#) x)
% for exampe, if we want to calculate p(X = 1) for CLASSIFICATIONS which
% have only 1 column, we can use p(CLASSIFICATIONS(:,1) 1)
function output = prob(input)
table = input{1};
value = input{2};
L = length(table);
count = 0;
i = 1;
while i<L
    if table(i,1) == value
        count = count + 1;
    end
    i = i + 1;
end
output = count/L;
end