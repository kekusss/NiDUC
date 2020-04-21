function [out,size_xyz]=readFromFile(file_name)
%%
%% ODCZYT Z PLIKU DO TABLICY UINT8
%% file_name nazwa pliku
%% output zwrócona tablica
%% size rozmiar obrazka w osiach x,y,z
%% 
in = imread(file_name);
[x_len, y_len, z_len] = size(in);
size_xyz = size(in);
out = uint8(zeros(1, x_len * y_len * z_len));
i = 1;
for x = 1:x_len
    for y = 1:y_len
        for z = 1:z_len
            out(i) = in(x,y,z);
            i = i+1;
        end
    end
end