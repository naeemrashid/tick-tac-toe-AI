function board=gird2Board(board,x,y,turn)
gap=100;
x=floor(x/gap)+1;
y=floor(y/gap)+1;
fprintf('place x: %d place y: %d \n',x,y);
board(x,y)=turn;
end