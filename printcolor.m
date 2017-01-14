% this is a script
fprintf('Start!');


NONE       =  '\033[0m'   ;
BLACK      =  '\033[0;40m';
L_BLACK    =  '\033[1;40m';
RED        =  '\033[0;41m';
L_RED      =  '\033[1;41m';
GREEN      =  '\033[0;42m';
L_GREEN    =  '\033[1;42m';
BROWN      =  '\033[0;43m';
YELLOW     =  '\033[1;43m';
BLUE       =  '\033[0;44m';
L_BLUE     =  '\033[1;44m';
PURPLE     =  '\033[0;45m';
L_PURPLE   =  '\033[1;45m';
CYAN       =  '\033[0;46m';
L_CYAN     =  '\033[1;46m';
GRAY       =  '\033[0;47m';
WHITE      =  '\033[1;47m';

fprintf(RED);
fprintf('Red');
fprintf(YELLOW);
fprintf('Yellow');
fprintf(BLUE);
fprintf('Blue');
fprintf(PURPLE)
fprintf('Purple');
fprintf(NONE);
fprintf('\n');

%inpicture=imread('binary.bmp');
%zoom=0.3;
[height,width,wei]=size(inpicture);
fprintf('H:%d,W:%d\n',height,width);

pic=imresize(inpicture,zoom);
fprintf('H:%d,W:%d\n',height,width);
[height,width,wei]=size(pic);
for i=1:height
  for j=1:width
    if wei==3
      findcolor(pic(i,j,1),pic(i,j,2),pic(i,j,3));
    else
      findcolor(pic(i,j,1),pic(i,j,1),pic(i,j,1));
    end
  end
  fprintf('\n');
end

