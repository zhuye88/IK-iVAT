function dis = GaussianKernelDis(data, sig)
m_dis=pdist2(data,data);
m_sim = exp(-0.5*(m_dis.^2)./(2*sig^2)); 

dis=1-m_sim;

end

