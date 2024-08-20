function [ dis ] = aNNEdis (m_distance, psi, t)
n = size(m_distance, 1);
m_similarity = m_distance - m_distance;

for i = 1:t 
    subIndex = datasample(1:n, psi, 'Replace', false);        
    [~, centerIdx] = min(m_distance(subIndex, :));    
    m_similarity = m_similarity + (centerIdx' == centerIdx);
end
m_similarity = m_similarity/t;
dis=1-m_similarity;
end