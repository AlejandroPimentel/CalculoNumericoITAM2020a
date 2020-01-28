function y = myFun(x)
   
    AP = 130000; CP =  1000; NP = 360;
    f = @(x)( AP - (CP./x ).*(1 - ( 1 + x).^(-NP) ));
    y = f(x);
    
end