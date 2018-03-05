%实验1.1：不同资源限制下的影响(一致SFC、随机SFC)
%topo：india180-1
%x轴全部为节点VM数量


[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(行, 列, [上下间距,左右间距],[下边距,上边距 ], [左边距,右边距 ])

x1_1 = [138 137 70 69 50 47 46 40 36 35 30 29 25 24 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6]/138*100
y1_1 = [1 2 2 3 3 3 4 4 4 5 5 6 6 7 7 8 8 8 9 9 10 11 11 12 14 16 16 20 22 26 30 ]
x1_2 = [138 137 70 69 50 47 46 40 36 35 30 29 28 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6]/138*100
y1_2 = [1 2 2 3 3 3 4 4 4 5 5 5 6 6 6 7 7 8 8 8 9 9 10 11 11 12 14 15 17 19 22 26 30]
axes(ha(1));
plot(x1_1,y1_1,'m*-',x1_2,y1_2,'cd-')
legend('一致型SFC','随机型SFC');   
xlabel('节点VM数量(p-%)');
ylabel('活跃PM数量');
set(gca,'XDir','reverse')


x2_1 = [138 70 47 36 30 25 22 19 17 16 14 13 12 10 9 8 7 6]/138*100
y2_1 = [235535 242270 246705 254540 265675 267210 276745 276680 281715 291550 288885 295020 322090 312760 350500 350970 372110 384450]/1000
x2_2 = [138 70 47 36 29 24 22 19 17 16 14 13 12 11 10 9 8 7 6]/138*100
y2_2 = [235535 242270 246705 252140 263275 260010 275545 275480 281115 292150 290085 295020 314890 314325 314895 336065 353970 376310 383050]/1000
axes(ha(2));
plot(x2_1,y2_1,'m*-',x2_2,y2_2,'cd-')
legend('一致型SFC','随机型SFC');   
xlabel('节点VM数量(p-%)');
ylabel('最小能耗开销(KW)');
set(gca,'XDir','reverse')
%x3_1 = [150 140 138 137 70 69 50 47 46 40 36 35 30 29 25 24 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6]
%y3_1 = [4.80 4.80 4.80 4.27 4.27 3.78 3.82 3.94 3.87 3.95 4.13 3.89 3.92 3.83 3.88 3.77 3.81 3.76 3.78 3.79 3.85 4.08 3.74 3.68 3.77 3.83 3.66 3.86 3.97 4.06 4.09 4.41 4.62]/3.422
%x3_2 = [150 140 138 137 70 69 50 47 46 40 36 35 30 29 28 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6]
%y3_2 = [4.8 4.8 4.8 4.37 4.48 3.82 3.83 3.97 3.91 4.02 3.42 4.02 4.06 4.11 3.96 3.99 4.08 3.97 3.98 3.92 3.93 3.97 4.03 4.14 4.08 3.86 4.17 4.14 3.53 4.07 3.98 4.34 4.24 3.42 4.86]/3.422

x3_1 = [138 70 47 36 30 25 22 19 17 16 14 13 12 10 9 8 7 6]/138*100
y3_1 = [4.80 4.27 3.94 4.13 3.92 3.88 3.81 3.79 4.08 3.74 3.77 3.83 3.66 3.97 4.06 4.09 4.41 4.62]/3.422
x3_2 = [138 70 47 36 29 24 22 19 17 16 14 13 12 11 10 9 8 7 6]/138*100
y3_2 = [4.80 4.48 3.97 4.13 4.11 4.08 3.98 3.97 4.14 4.08 4.17 4.14 3.73 4.07 3.98 4.34 4.24 4.86 4.86]/3.422

axes(ha(3));
plot(x3_1,y3_1,'m*-',x3_2,y3_2,'cd-')
legend('一致型SFC','随机型SFC');   
xlabel('节点VM数量(p-%)');
ylabel('时延比');
set(gca,'XDir','reverse')