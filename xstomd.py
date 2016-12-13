import pandas as pd
from tabulate import tabulate

data = pd.read_excel('timeline.xlsx')
data.fillna('', inplace=True)
data.Week = data.Week.apply(lambda x: x.date())
to_print = tabulate(data, headers=data.columns.values, showindex=False)
lines = to_print.split('\n')
print('\n\n'.join(lines))