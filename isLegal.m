function isLegal=isLegal(x,y,grid,board)
gridSize=size(grid);
[rows cols]=size(board);
gap = floor(gridSize(1,1)/rows);
isLegal=true;
if x > gridSize(1,1) || x < 0
        isLegal = false;
        return;
elseif y > gridSize(1,2) || y < 0
    isLegal=false
else
    y = floor(y/gap) + 1;
    x = floor(x/gap) + 1;
     if board(x, y) ~= 0
        isLegal = false;
     end
end
end