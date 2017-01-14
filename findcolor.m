function [] = findcolor(r,g,b)
% this is a function

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

light1=100;
light2=180;

avglight=(double(r)+double(g)+double(b))/3;
minv=min([r,g,b]);
diff=[r-minv;g-minv;b-minv];
for i=1:3
  if diff(i) > 20
    diff(i) = 1;
  else
    diff(i) = 0;
  end
end

switch diff(1)*4+diff(2)*2+diff(3)
case 0
  if avglight>light1
      fprintf(WHITE);
  else
      fprintf(BLACK);
  end
case 1
    if avglight>light1
        fprintf(L_BLUE);
    else
        fprintf(BLUE);
    end
case 2
    if avglight>light1
        fprintf(L_GREEN);
    else
        fprintf(GREEN);
    end
case 3
    if avglight>light1
        fprintf(L_CYAN);
    else
        fprintf(CYAN);
    end
case 4
    if avglight>light1
        fprintf(L_RED);
    else
        fprintf(RED);
    end
case 5
    if avglight>light1
        fprintf(L_PURPLE);
    else
        fprintf(PURPLE);
    end
case 6
    if avglight>light1
        fprintf(YELLOW);
    else
        fprintf(BROWN);
    end
end
if avglight>light1
  if avglight>light2
    fprintf('\033[37m');
    fprintf('#');
  else
    fprintf(' ');
  end
else
  fprintf('\033[30m');
  fprintf('#');
end
fprintf(NONE);
end

