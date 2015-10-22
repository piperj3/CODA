function reward=measureReward(MutatedValues)
%The reward function would evaluate the reward given for each value of
%position and force obtained

%For each problem the reward function should be choosen acoording to the
%task and application.

w1=1;
w2=2;
%w3=3;
%w4=4%

reward=w1*(ln(x)+10) + w2*(x^2);
%.9*log(x)+.5-(x.^2)+4.5*x;


