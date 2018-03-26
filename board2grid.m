function grid = board2grid(board)
[rowBoard,colBoard]=size(board);
gap = 100;
grid = ones(rowBoard*gap,colBoard*gap);
gridSize=size(grid);
grid(:,1)=zeros;
grid(1,:)=zeros;
grid(:,gridSize(1,1))=zeros;
grid(gridSize(1,1),:)=zeros;
for i=1:rowBoard-1
    grid(i*gap,:)=zeros;
end
for i=1:colBoard-1
    grid(:,i*gap)=zeros;
end
playerOne=imread('PlayerOne.bmp');
playerOne = imresize(playerOne,[98, 98]);
playerTwo=imread('PlayerTwo.bmp');
playerTwo = imresize(playerTwo,[98, 98]);
for i=1:rowBoard
    for j=1:colBoard
        if board(i,j)==1
            %fprintf('%d:%d %d:%d',(i*gap-99),(i*gap-1),(j*gap-99),(j*gap-1));
            grid((j*gap-98:j*gap-1),(i*gap-98:i*gap-1))=playerOne;
        elseif board(i,j)==2
            %fprintf('%d:%d %d:%d',(i*gap-99),(i*gap-1),(j*gap-99),(j*gap-1));
            grid((j*gap-98:j*gap-1),(i*gap-98:i*gap-1))=playerTwo;
        end
    end
end
end