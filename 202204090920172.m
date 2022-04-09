
function savefile(data,file_name)
% json_data = jsonencode(data) ;
fid= fopen(file_name, 'w');
% fprintf(fid, '%s',json_data(2:end-1));

json_str = "{";
for x = 1 : length(data)
    substr = strcat( '"',data{x}.name ,'":');
    substr = strcat(substr,jsonencode(data{x}),',');
%     disp(substr);
    json_str = strcat(json_str,substr);
end
json_str = strcat(json_str,"}");
fprintf(fid, '%s',json_str);
fclose(fid);
end
