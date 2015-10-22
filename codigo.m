%CODA algorithm
%%%%% Variable initialization
mu=0;
gamma=0;
epsilon=0;
paramAff=0;
N=10; %number of antibodies to produce should be multiple of 5
antibodies(5,2,N)=0; %antibody matrix
%%%%%%%%%%

% for all classes do
Encontrados= ismember(repertoire,antigen); %busca si el antigen es miembro del repertorio
check1=all(Encontrados);
check2=sum(check1);
if check2 >= 1
    
    [rs,cs,mat,cls]=find(Encontrados);%obtiene los indices de los objetos que sean iguales
    index=[rs,cs,mat,cls];%guardamos los indices en una variable conjunta (por cualquier cosa)
    action=QM(rs,cs,mat,cls);%obtenemos la acción de la matriz Q con los indices 
    % do action
    
%ELSE
%create ne w class
%A=[A,C']
else
    numClases=numClases+1;
    repertoire(:,:,:,numClases)=zeros;% agrega matriz llena de ceros 

end

% Mutate N antibodies
% N should be multiple of 5
for antibodies=1:N
    
    %multidimentional array for the antibodies 
    MuVal=mutate(antigen);
    
end

Affinity=measureAffinity(antigen,MuVal);

% this procedure should be each 5 rows of the total affinity matrix
meetsAff=Affinity > paramAff; % evaluates affinity each five rows
[rows,columns]=find(meetsAff);% obtains the indexes of the mutated values that meet criteria
indetz=[rows,columns]; % creates the array in order to access those values
