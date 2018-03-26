function bestMove=minmax(board,depth,isMax)
agentTurn=1;
playerTurn=2;
[rows cols]=size(board);
if(evaluateBoard(board,agentTurn)==10)
    bestMove=10-depth;
    fprintf('Depth: %d',depth);
    return;
elseif(evaluateBoard(board,playerTurn)==10)
    bestMove=-10+depth;
    fprintf('Depth: %d',depth);
    return;
elseif evaluateBoard(board,agentTurn)==5
        bestMove=5;
        fprintf('Depth: %d',depth);
        return;
end
    if isMax
        bestMove=-20;
        for i=1:rows
            for j=1:cols
                if board(i,j)==0
                    board(i,j)=agentTurn;
                    bestMove= max(bestMove,minmax(board,depth+1,~isMax));
                    board(i,j)=0;
                end
            end
        end
        return;
    else
       bestMove=20;
      for i=1:rows
            for j=1:cols
                if board(i,j)==0
                    board(i,j)=playerTurn;
                    bestMove= min(bestMove,minmax(board,depth+1,~isMax));
                    board(i,j)=0;
                end
            end
        end
        return; 
    end   
end