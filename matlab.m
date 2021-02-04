menu()
%%
function menu()
clear;clc
pause on
banner()
disp('1.get_time    2.download_file    3.Equations')
disp('4.plotShapes  5.exit')
disp("choose an option number :")
option=input('');
if option == 1
    time()
elseif option ==2 
    download()
elseif option ==3
    equ()
elseif option==4
    mathss()
elseif option==5
    disp('ure welcome :)')
else
    disp('what?????')
    pause(2)
    menu()
end 
end
function moh = banner()
    disp('   ▂▂▂▂▂▂▂ ◢◣▂▂▂▂▂▂▂')
    pause(0.5)
    disp('▂／       《bimar 》       ＼▂')
    pause(0.5)
    disp('███████████████▥████')
    pause(0.5)
    disp('███▥██████▥██████▥██|')
    pause(0.5)
    disp('███████████████▥████')
    pause(0.5)
    disp('█▨████▛▜███▨████▥███|')
    pause(0.5)
end
function ti=time()
a = 2 ;
pause on
while a > 1
    pause(1)
    clc
    disp('for exit u can use ctrl + c')
    d=datetime();
    disp(d)
    a = a+1;
end

end
function down = download()
clc    
banner()
    disp('its download the file and past it on desktop and mathdown folder')
    disp('wich file d u wanna download ?')
    disp('1.music   2.movie   3.photo' )
    disp('4.site.source   5.otherfile')
    a = input('choose ure file type :');
    if a == 1
        userProfile = getenv('USERPROFILE');
        diree = userProfile
        cd(diree);
        cd desktop
        mkdir matlabdown
        cd matlabdown
        link=input('the file link ? ','s');
        fullURL = [link];
        namee=input('the file name? ','s');
        filename = sprintf('%s.mp3',namee)
        urlwrite(fullURL,filename);
        disp('finished')
        goreturn()
    elseif a==2
        userProfile = getenv('USERPROFILE');
        diree = userProfile
        cd(diree);
        cd desktop
        mkdir matlabdown
        cd matlabdown
        link=input('the file link ? ','s');
        fullURL = [link];
        namee=input('the file name? ','s');
        filename = sprintf('%s.mkv',namee)
        urlwrite(fullURL,filename);
        disp('finished')
        goreturn()
    elseif a==3
        userProfile = getenv('USERPROFILE');
        diree = userProfile
        cd(diree);
        cd desktop
        mkdir matlabdown
        cd matlabdown
        link=input('the file link ? ','s');
        fullURL = [link];
        namee=input('the file name? ','s');
        filename = sprintf('%s.jpg',namee)
        urlwrite(fullURL,filename);
        disp('finished')
        goreturn()
    elseif a==4
        userProfile = getenv('USERPROFILE');
        diree = userProfile
        cd(diree);
        cd desktop
        mkdir matlabdown
        cd matlabdown
        link=input('the file link ? ','s');
        fullURL = [link];
        namee=input('the file name? ','s');
        filename = sprintf('%s.html',namee)
        urlwrite(fullURL,filename);
        disp('finished')
        goreturn()
    elseif a==5
        userProfile = getenv('USERPROFILE');
        diree = userProfile
        cd(diree);
        cd desktop
        mkdir matlabdown
        cd matlabdown
        link=input('the file link ? ','s');
        fullURL = [link];
        namee=input('the file name? ','s');
        namee2=input('the file type for example .mp3  ','s');
        filename = sprintf('%s%s',namee,namee2)
        urlwrite(fullURL,filename);
        disp('finished')
        goreturn()

    end
end
function mmd3 =equ()
clc  
banner()
    syms x y
f=input('youre equation plizz :');
b=solve(f,x);
disp('youre equation is :')
disp(f)
disp('the answer is')
disp(b)
disp('do u wanna plot youre equation ??')
pl=input('y | n : ');
if pl == 'y'
    disp('the plot is :')
    ezplot(f)
elseif pl =='n'
    disp('ok :)')
else('what???')
end
goreturn()
end
function mathss()
clear;clc
banner()
disp('simple math tool')
disp('pliZz choose ure shape :)) ')
disp('1= circle        2= square ')
disp('3= Triangle      4= Rectangle ')
num = input('ure num :))))')
 if num==1 ;
     clc
r= input('radius ???? ');
   t=0:pi/24:360;
  x=r*cos(t);
  y=r*sin(t);
   plot(x,y , 'LineWidth' , 2)
   grid on
 disp('Area :')
 a = r*r*pi ;
 disp(a)
 disp('Environment :')
 b = 2*r*pi ;
 disp(b)
 goreturn()
 elseif num==2;
     clc
    x1=0;
    x2= input('side of the square ?? ') ;
    y1=0;
    x = [x1, x2, x2, x1, x1];
    y = [y1, y1, x2, x2, y1];
    plot(x, y, 'b-', 'LineWidth', 2);
hold on;
disp('Area :')
aa = x2^2 ;
disp(aa)
disp('Environment :')
 bb = x2+x2 ;
 disp(bb)
 goreturn()
 elseif num==3;
     clc
     x = input('the side of the triangle???') ;
     x2 = input('The height of the triangle???') ;
     t=[0 x x2 0] ;
     y=[0 0 x2 0] ;
     plot(t,y , 'LineWidth' , 2) ;
     disp('Area :')
     aaa = x*x2/2 ;
     disp(aaa)
     disp('Environment :')
     disp('sorry i cant :))) ')
     goreturn()
 elseif num==4 ;
     clc
     x1=0;
     x2=input('side1????');
     y1=0;
     y2=input('side2 ??????');
     x = [x1, x2, x2, x1, x1];
     y = [y1, y1, y2, y2, y1];
     plot(x, y, 'LineWidth' , 2);
     hold on;
disp('Area :')
aaaa=x2*y2 ;
disp(aaaa)
disp('Environment :')
bbbb=(x2+y2)*2 ;
disp(bbbb)
goreturn()
 else
     disp('heyyyy whats wrong with u :////// ')
     goreturn()
 end
end
function goreturn()
exitormenu=input('do u wanna return to menu ?? y|n :','s');
if exitormenu == 'y'
    menu()
elseif exitormenu =='n'
    disp('good luck :)')
else
    disp('hey whats rong with u ? 3')
    pause(1)
    clc
    disp('hey whats rong with u ? 2')
    pause(1)
    clc
    disp('hey whats rong with u ? 1')
    pause(1)
    clc
    pause(1)
    goreturn()
end
end
