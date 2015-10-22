function affinityMatrix=measureAffinity(OriginalValues,MutatedValues)
%This function will measure affinity according to the affinity function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First code  
% difference=OriginalValues-MutatedValues;
% [m,n]=size(difference);
% 
% 
% sumoDif=sum(difference,2);
% 
% prueba=find(OriginalValues(:,1)==n);
% Affinity=isempty(prueba);
%%%%%%%%%%%%%%%%%%%%%%%%%%
%lets the affinity be no more than one unit apart from original values
iterations=size(MutatedValues,1)/size(OriginalValues,1);
i=0;
affinityMatrix=[];
quadratic=[];
sumquadratic=[];
affinity=[];
difference=[];

for r=1:iterations
    
    difference=MutatedValues(1+i:size(OriginalValues)+i,:)-OriginalValues; % first we make the operation x2-x1 and y2-y1
    
    quadratic=(difference).^2; % we then do (x2-x1)² and (y2-y1)²
    sumquadratic=sum(quadratic,2); % we sum the quadratic differences
    affinity=sqrt(sumquadratic); % finally we obtain the square root

    affinityMatrix=[affinityMatrix; affinity]; % we add the recent calculated affinityvalues to the matrix
    i=i+5;

end
