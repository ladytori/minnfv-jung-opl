%ʵ��1.1����ͬ��Դ�����µ�OPEX
%topo��pdh18-int1
%x��Ϊ��Դ����p


[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(��, ��, [���¼��,���Ҽ��],[�±߾�,�ϱ߾� ], [��߾�,�ұ߾� ])

x1_1 = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16] / 16 * 100;
y1_1 = [64.26 53.30 53.25 53.25 53.3 64.24 66.31 74.24 75.24 76.23 64.27 76.22 64.23 63.25 53.25 136.17];



axes(ha(1));
plot(x1_1,y1_1,'bd-')
legend('MILP','HEU','HEU+','GA'); legend boxoff
xlabel('�ڵ���Դ���(p-%)');
ylabel('����ɱ�');



