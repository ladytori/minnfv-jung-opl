%实验1：不同VM数量对吞吐量的影响
%topo：pdh18-3
%x轴为VM数量

[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(行, 列, [上下间距,左右间距],[下边距,上边距 ], [左边距,右边距 ])

%请求的数量
x = [2 3 4 5 6 7 8 9 10 11 12 13 14];

%允许请求的数量
y1_1 = [24 33 40 47 52 58 64 68 73 79 80 80 80];
y1_2 = [18 25 28 32 42 46 57 58 65 72 75 80 80];
y1_3 = [23 31 40 44 50 56 61 62 68 75 78 80 80]

axes(ha(1));
plot(x,y1_1,'ko-',x,y1_2,'bx-',x,y1_3,'r*-')
legend('OPL','HEU','GAP'); legend boxoff
xlabel('VM数量');
ylabel('可接纳请求数量');


y2_1 = [2.50 2.36 2.30 2.30 2.23 2.21 2.28 2.26 2.29 2.35 2.30 2.32 2.29] ./ [1.75 1.76 1.68 1.72 1.62 1.64 1.67 1.71 1.71 1.78 1.75 1.75 1.75];
y2_2 = [2.50 2.48 2.53 2.56 2.64 2.63 2.65 2.55 2.69 2.62 2.71 2.63 2.62] ./ [1.94 1.96 1.96 1.97 1.93 1.96 1.86 1.86 1.82 1.78 1.75 1.75 1.75];
y2_3 = [1.39 1.40 1.41 1.37 1.39 1.34 1.39 1.44 1.32 1.39 1.39 1.37 1.35]

axes(ha(2));
plot(x,y2_1,'ko-',x,y2_2,'bx-',x,y2_3,'r*-')
legend('OPL','HEU','GAP'); legend boxoff  
xlabel('VM数量');
ylabel('平均时延比');

y3_1 = [36940 55030 904080 499310 13050160 509300 1075470 27184610 19389200 19389200 620550 20000 30610];
y3_2 = [1324 1281 1652 1759 1940 1899 1697 1600 1765 1475 1258 970 960];
y3_3 = [2600 22600 5910 16910 19700 3400 10420 10800 21556 7300 9600 8700 8500]

axes(ha(3));
plot(x,y3_1,'ko-',x,y3_2,'bx-',x,y3_3,'r*-')
legend('OPL','HEU','GAP');   legend boxoff
xlabel('VM数量');
ylabel('求解时间（ms）');
