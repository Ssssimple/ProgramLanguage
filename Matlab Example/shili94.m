h0=figure('toolbar','none',...
    'position',[200 150 450 250],...
    'name','实例94');
h1=axes('parent',h0,...
    'position',[0.05 0.15 0.65 0.6],...
    'visible','off');
I=imread('abmatrix.bmp','bmp');
image(I)
axis off
huidiao=[...
        'a=[1 0 3 0;0 2 1 2;3 1 15 0;0 2 0 4;];,',...
        'b=[1 6 5 8]'';,',...
        'n=4;,',...
        'u=zeros(n,1);,',...
        'tic,',...
        '[x,k]=gs(a,b,n,u);,',...
        'time1=toc;,',...
        'T=num2str(time1);,',...
        'set(e1,''string'',[T,''秒'']);,',...
        'set(e2,''string'',num2str(k));,',...
        'msgbox([''X＝['',num2str(x(1)),'' '',num2str(x(2)),'' '',num2str(x(3)),'','',num2str(x(4)),'']''],''方程组的解'');'];
t1=uicontrol('parent',h0,...
    'units','points',...
    'tag','t1',...
    'style','text',...
    'string','方程组如下：',...
    'fontsize',15,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[20 150 100 20]);
e1=uicontrol('parent',h0,...
    'units','points',...
    'tag','e1',...
    'style','edit',...
    'horizontalalignment','right',...
    'backgroundcolor',[1 1 1],...
    'position',[295 130 35 20]);
t2=uicontrol('parent',h0,...
    'units','points',...
    'tag','t2',...
    'style','text',...
    'string','计算时间：',...
    'fontsize',10,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[240 130 50 20]);
e2=uicontrol('parent',h0,...
    'units','points',...
    'tag','e2',...
    'style','edit',...
    'horizontalalignment','right',...
    'backgroundcolor',[1 1 1],...
    'position',[295 100 35 20]);
t2=uicontrol('parent',h0,...
    'units','points',...
    'tag','t2',...
    'style','text',...
    'string','迭代步数：',...
    'fontsize',10,...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[240 100 50 20]);
b1=uicontrol('parent',h0,...
    'units','points',...
    'tag','b1',...
    'style','pushbutton',...
    'string','GS 迭代法',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[250 60 60 20],...
    'callback',huidiao);
b2=uicontrol('parent',h0,...
    'units','points',...
    'tag','b2',...
    'string','关闭',...
    'style','pushbutton',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[250 30 60 20],...
    'callback','close');