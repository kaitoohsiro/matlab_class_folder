%% 変数定義(ファイルパス定義, カラム名)
    % ファイル相対パス
    % 0度
    angle_0 = "./20200924SU/sample1/sample1_8_1_B_0deg_absc.csv";
    column_0 = "0_angle";
    % 45度
    angle_45 = "./20200924SU/sample1/sample1_8_1_B_45deg_absc.csv";
    column_45 = "45_angle";
    % 90度
    angle_90 = "./20200924SU/sample1/sample1_8_1_B_90deg_absc.csv";
    column_90 = "90_angle";
    % 135度
    angle_135 = "./20200924SU/sample1/sample1_8_1_B_135deg_absc.csv";
    column_135 = "135_angle";

    % export後の定義
        % ./folder1/folder2/file_name.csv
        folder1 = "resin_anlge";
        folder2 = "樹脂通常0度";
        file_name = "resin_absc.csv"; 
%% ファイル名まとめる
text = [column_0, column_45, column_90, column_135];
fileName = [angle_0, angle_45, angle_90, angle_135];
folder_name = [folder1, folder2];
%% データをまとめる
data = dataClass.CompilingData(fileName, text);

%% データエクスポート
dataClass.ExportFile(data, folder_name, file_name);

