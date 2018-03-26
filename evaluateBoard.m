function result=evaluateBoard(board,turn)
[row col]=size(board);
result=0;
count=0;
for i=1:row
    for j=1:col
        if board(i,j)==turn
            count = count+1;
        end
    end
    if(count==row)
        result=10;
        return;
    else
        count=0;
    end
end
count=0;
for i=1:row
    for j=1:col
        if board(j,i)==turn
            count = count+1;
        end
    end
    if(count==row)
        result=10;
        return;
    else
        count=0;
    end
end
count=0;
j=1;
for i=1:row
    if board(i,j)==turn
        count = count+1;
    end
    j=j+1;
end
if count==row
    result=10;
    return;
else
    count=0;
end
j=row;
for i=1:row
    if board(i,j)==turn
        count = count+1;
    end
    j=j-1;
end

if count==row
    result=10;
    return;
else
    count=0;
end
for i = 1:row
    for j = 1:col
        if board(i, j) == 0
            return;
        end
    end
end

result = 5;
end
