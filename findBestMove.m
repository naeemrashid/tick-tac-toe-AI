function [bestMove row col]=findBestMove(board,turn)
[rows cols]=size(board);
bestMove= -20;
row = -1;
col= -1;
for i=1:rows
    for j=1:cols
        if(board(i,j)==0)
            board(i,j)=turn;
            move=minmax(board,0,false);
            board(i,j)=0;
            if move>bestMove
                bestMove=move;
                row=i;
                col=j;
            end
        end
    end
end
end