% for i = 1:10
%     disp(2^i);
% 
% end

% a = input('Enter first number ');
% disp('');
% b = input('Enter second number ');
% disp('');
% disp(a+b);

%RMS
an_array = 2:6;
disp(an_array)
n = length(an_array);
%for i = 1:length(an_array)


sqr_array = an_array.^ 2;
total_val = sum(sqr_array);
mean_val = total_val/n;
output_val = sqrt(mean_val);
disp('');
disp(output_val);


