import pandas
import os

data = pandas.read_excel('data/SGA_aal1D_aal1OE_Any_Two_overlap_and_Background.xlsx')

# Write the gene lists to text files in the data directory
for column in ['aal1D_Any_Two_Overlapped', 'aal1D_Background', 'aal1OE_Any_Two_Overlapped', 'aal1OE_Background']:
    column_with_prefix = 'PomBase:' + data[column]
    column_with_prefix = column_with_prefix.dropna()
    column_with_prefix.to_csv(os.path.join('data', column + '_list.txt'), sep='\t', index=False, header=False)

