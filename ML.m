function [Pi,iP]=ML(R);

[n,p]=size(R);
Pi=zeros(n,1);

Q = 1;
lab = find(R(1,:)==0);
labmax = max(lab);
Pi(1:labmax,1) = 1;
locallable = 1;
for WE = labmax : n,
    if labmax <=  n,
        Q = 1+ labmax;
        for col = Q : n,
            lab = find(R(Q,:)==0);
            labmax = max(lab);
        end
        locallable = locallable + 1;
        Pi(Q:labmax,1) = locallable;
        
    end
end

iP = max(Pi);
end
