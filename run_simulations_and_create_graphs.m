w = 1;
timing = 20;

for i2 = 1:10
    w = 1;
    timing = 20;
    for i = 1:5
        w = i;
        sim('monitoring3_TP511_student_filtrace_determine_b.slx', timing);
        timing = round(timing*0.8);
        namefile = 'm_find_b_pA_%dV_sample_%d.mat';
        strs = sprintf(namefile,i,i2);    
        %disp(strs);
        save(strs);
    end
end