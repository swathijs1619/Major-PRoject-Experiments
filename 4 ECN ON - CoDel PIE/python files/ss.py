import json
import csv
 
with open('/home/oem/Downloads/New Experiments/ECN ON - CoDel PIE/ss-pie-on.json') as json_file:
    jsondata = json.load(json_file)
 
full_data = jsondata["left-node-0"][0]["10.0.1.1"]["39573"]

 # First item is the "meta" item with user given information
user_given_start_time = float(full_data[0]["start_time"])

    # "Bias" actual start_time in experiment with user given start time
start_time = float(full_data[1]["timestamp"]) - user_given_start_time


for data in full_data[1:]:
    data["timestamp"] = float(data["timestamp"]) - start_time      

data_file = open('ss-pie-on.csv', 'w', newline='')
csv_writer = csv.writer(data_file)
 
for data in full_data[1:]:
    csv_writer.writerow(data.values())
 
data_file.close()