function [Pi_IB,length_partition_IB] = IB(RiV,class)
 
DA = 0;
F = zeros(1,100);
ALL_label_IB = zeros(length(RiV),101);
for i = 0:0.01:1
    BW = im2bw(RiV,i);
    DA = DA + 1;
    [lab]= ML(BW);
    ALL_label_IB(:,DA) = lab;
    true_mem = class;
    mem = lab;
    function1 = ami(true_mem,mem);
  
    F(DA) = function1;
end
[~,Par_i] = max(F);
Pi_IB = ALL_label_IB(:,Par_i);

length_partition_IB=zeros(1,length(unique(Pi_IB)));
for i=1:length(unique(Pi_IB))
    length_partition_IB(i)=length(find(Pi_IB==i));
end
