classdef dataClass
    properties
    end
    
    methods (Static)
        function T = CompilingData(fileName, text)
            for n = 1:numel(fileName)
                fileData = readmatrix(fileName(n));
                tr = fileData.';
                data = rmmissing(tr);
                if n == 1
                    f = table([data(:,1)],[data(:,2)],...
                        'VariableNames',{'FFT' text{1, n}});
                    T = f;
                else
                    j = table([data(:,1)],[data(:,2)],...
                        'VariableNames',{'FFT' text{1, n}}); 
                    T = join(T, j);
                end
            end
        end
        
        function ExportFile(data, folder_name, file_name)
            for n = 1:numel(folder_name)
                if not(isfolder(folder_name(1, n)))
                    mkdir(folder_name(1, n))
                end
                cd(folder_name(1, n))
            end
            writetable(data,file_name);
        end
    end
end
