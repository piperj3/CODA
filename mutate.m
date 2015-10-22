function MuVal=mutate(numbers)

%This function mutates the numbers obtained with a normal deviation
N=size(numbers);


mu =rand-.5; %mean in the range of [-.5 , .5]
sigma = randi(1); %std in the range of 1:.5
X= randn(N(1),N(2))*sigma + mu; %normally distributed with mean=mu and std=sigma

MuVal=numbers(:,:) + X;


end
