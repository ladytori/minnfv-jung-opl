%实验2.1：不同资源配置下的OPEX
%topo：pdh18-int1
%x轴为天数

%vnf-op = heu+


[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(行, 列, [上下间距,左右间距],[下边距,上边距 ], [左边距,右边距 ])

x = [1  2  3  4  5  6  7  8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28];



x1 = [8 5 3 6 5 4 5 5 6 5 8 8 9 13 14 12 10 6 8 5 11 5 3 2 5 6 8 7 ] * 2 /10;
%活跃PM
%GA
y1_1 = [2 1 1 2 1 1 1 1 2 1 2 2 2 3 3 3 2 2 2 1 3 1 1 1 1 2 2 2];
%HEU
y1_2 = [8 8 6 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 6 4 8 8 8 8]
%HEU+
y1_3 = y1_1
%GA-cost
y1_4 = [4 2 2 3 2 2 2 2 3 2 4 4 4 6  6  6  4  3 4 2 6  2 2 2 2 3 4 3]

%活跃VM [8  5  3 6  5   4  5  5 6   5  8 8  9  13  14  12  10 6   8  5 11  5  3  2 5  6  8 7 ]
y2_1 = [68 43 27 52 43 35 43 43 52 43 68 68 77 112 120 102 86 52 68 43 95 43 27 18 43 52 68 61]
y2_2 = [72 56 29 64 56 40 56 56 64 56 72 72 96 128 128 112 96 64 72 56 104 56 29 20 56 64 72 72]
y2_3 = [70 43 27 52 43 35 43 43 52 43 70 70 79 118 125 108 86 52 70 43 100 43 27 18 43 52 70 61]
y2_4 = [68 43 27 52 43 35 43 43 52 43 68 68 77 113 120 104 86 52 68 43 95 43 27 18 43 52 68 61]
%delay [8    5    3    6    5    4    5    5    6    5    8    8    9    13   14   12   10   6    8    5    11   5     3   2    5    6    8    7 ]
y3_1 = [2.41 2.5  2.5  2.32 2.5  2.5  2.5  2.5  2.32 2.5  2.41 2.41 2.30 1.96 1.98 1.98 2.27 2.32 2.41 2.5  2.09 2.5  2.5  2.5  2.5  2.32 2.41 2.14]
y3_2 = [1.78 1.78 2.32 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 1.78 2.32 2.70 1.78 1.78 1.78 1.78]
y3_3 = [2.57 3.0  3.0  2.61 3.0  3.0  3.0  3.0  2.61 3.0  2.57 2.57 2.57 2.41 2.41 2.41 2.63 2.61 2.57 3.0  2.41 3.0  3.0  3.0  3.0  2.61 2.57 2.59]
y3_4 = [2.63 2.50 2.50 2.34 2.50 2.50 2.50 2.50 2.34 2.50 2.63 2.63 2.63 2.50 2.43 2.41 2.59 2.34 2.63 2.50 2.43 2.50 2.50 2.50 2.50 2.34 2.63 2.66]


axes(ha(1));
plot(x,y1_3,'kd-',x,y1_2,'m+-',x,y1_1,'r*-')
legend('VNF-OP','HEU','GA'); legend boxoff
xlabel('时间（天）');
ylabel('激活成本');



aPM = 80.5;
aVM = 165.9;
%y2_1 = [1 2 2 3 3 4 5 6 9] * aPM .* x2_1 + [18 18 18 18 18 18 18 18 18] * aVM;

axes(ha(2));
%plot(x,y2_1 * aVM / 1000,'r*-',x,y2_2 * aVM / 1000,'cd-')
plot(x,(y1_3 * aPM +y2_3 * aVM) / 1000,'kd-',x,(y1_2 * aPM +y2_2 * aVM) / 1000,'m+-',x,(y1_1 * aPM + y2_1 * aVM) / 1000,'r*-')
legend('VNF-OP','HEU','GA'); legend boxoff  
xlabel('时间（天）');
ylabel('能耗成本(kW)');


axes(ha(3));
plot(x,y3_3 / 1.78,'kd-',x,y3_2 / 1.78,'m+-',x,y3_1 / 1.78,'r*-')
legend('VNF-OP','HEU','GA');   legend boxoff
xlabel('时间（天）');
ylabel('传输成本');
