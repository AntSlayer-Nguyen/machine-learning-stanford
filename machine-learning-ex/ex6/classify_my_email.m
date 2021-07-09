function spam_or_not = classify_my_email(filename, model) 

contents = fileread(filename);

fprintf('\nRead Successful ....\n');

word_indices = processEmail(contents);

features = emailFeatures(word_indices);

p = svmPredict(model, features);

if (p == 0) 
    fprintf('Not spam !!!\n');
else 
    fprintf('Spam !!!\n');
    
spam_or_not = p;
end


end