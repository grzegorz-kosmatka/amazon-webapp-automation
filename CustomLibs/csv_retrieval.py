import csv


def read_csv_file(csv_filename):
    csv_data = []
    with open(csv_filename, 'r') as csv_file:
        reader = csv.reader(csv_file)
        for csv_row in reader:
            csv_data.append(csv_row)
    return csv_data
