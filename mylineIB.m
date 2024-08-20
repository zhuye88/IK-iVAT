function [b] = mylineIB(length_partition_IB,Pi_IB,b)
    L1_IB = cumsum(length_partition_IB);  
    labnum1_IB = L1_IB(1);
    line([0.5,0.5],[0.5,labnum1_IB+0.5],'linestyle','-','color','r','LineWidth',2);
    line([0.5,labnum1_IB+0.5],[labnum1_IB+0.5,labnum1_IB+0.5],'linestyle','-','color','r','LineWidth',2);
    line([labnum1_IB+0.5,labnum1_IB+0.5],[0.5,labnum1_IB+0.5],'linestyle','-','color','r','LineWidth',2);
    line([0.5,labnum1_IB+0.5],[0.5,0.5],'linestyle','-','color','r','LineWidth',2);
    for i =1:length(unique(Pi_IB))-1
        labnum1_IB = L1_IB(i);
        labnum2_IB = L1_IB(i+1);
        line([labnum1_IB+0.5,labnum1_IB+0.5],[labnum1_IB+0.5,labnum2_IB+0.5],'linestyle','-','color','r','LineWidth',2);
        line([labnum1_IB+0.5,labnum2_IB+0.5],[labnum1_IB+0.5,labnum1_IB+0.5],'linestyle','-','color','r','LineWidth',2);
        line([labnum2_IB+0.5,labnum1_IB+0.5],[labnum2_IB+0.5,labnum2_IB+0.5],'linestyle','-','color','r','LineWidth',2);
        line([labnum2_IB+0.5,labnum2_IB+0.5],[labnum2_IB+0.5,labnum1_IB+0.5],'linestyle','-','color','r','LineWidth',2);
    end
end 