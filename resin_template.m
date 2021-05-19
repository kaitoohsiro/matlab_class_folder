%% 変数定義(ファイルパス定義, カラム名)
    % 吸光度
    absc = "./20200924SU/sample1/sample1_8_1_B_0deg_absc.csv";
    absc_name = "absc";
    % 吸収係数
    ac = "./20200924SU/sample1/sample1_8_1_B_0deg_absc.csv";
    ac_name = "ac";
    % 屈折率
    ref = "./20200924SU/sample1/sample1_8_1_B_0deg_ref.csv";
    ref_name = "ref";
    % 透過率
    tran = "./20200924SU/sample1/sample1_8_1_B_0deg_tran_Linear.csv";
    tran_name = "tran";


    % export後の定義
        % ./folder1/folder2/file_name.csv
        folder1 = "resin_t";
        folder2 = "樹脂通常";
        file_name = "resin_angle_2.csv"; 
%% ファイル名まとめる
text = [absc_name, ac_name, ref_name, tran_name];
fileName = [absc, ac, ref, tran];
folder_name = [folder1, folder2];
%% データをまとめる
data = dataClass.CompilingData(fileName, text);

%% データエクスポート
dataClass.ExportFile(data, folder_name, file_name);

