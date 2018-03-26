rows = 3;
cols = 3;
turn=2;
agentTurn=1;
board= initializeBoard(rows,cols);
grid= board2grid(board);
imshow(grid);
result= evaluateBoard(board,turn);
	while(result==0)
        if turn~=agentTurn
            [x,y]=ginput(1)
            while ~isLegal(x,y,grid,board);
                [x,y]=ginput(1);
                continue
            end
            board=gird2Board(board,x,y,turn);
        else
            [bestMove x y]=findBestMove(board,agentTurn);
            fprintf('BestMove: %d Row: %d Col: %d \n',bestMove,x,y);
            board(x,y)=agentTurn;
        end
        fprintf('x: %d y: %d \n',x,y);
	grid=board2grid(board);
	imshow(grid)
	result=evaluateBoard(board,turn);
    fprintf('Result: %d \n',result);
	turn=changeTurn(turn);
    end