clear all
clc
A = rand(8);
vec = [2;2;1;2;1];
selectRightBlock(vec,A,3,3)
A 

%% test multiple blocks
clear all
clc

A = rand(8) ;
A = rand(8);
vec = [2;2;1;2;1];
selectRightBlock(vec,A,[2:4],[2,3])
A 

