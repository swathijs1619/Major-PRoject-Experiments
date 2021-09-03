import json
import csv
 
with open('/home/oem/Downloads/New Experiments/ECN OFF - Codel PIE/tc_fqpie.json') as json_file:
    jsondata = json.load(json_file)
 

node_data = jsondata["left-router"][0]["ifb-left-router-right-router-0"]["11:"]

 # First item is the "meta" item with user given information
user_given_start_time = float(0)

    # "Bias" actual start_time in experiment with user given start time
start_time = float(node_data[1]["timestamp"]) - user_given_start_time


for data in node_data[1:]:
    data["timestamp"] = float(data["timestamp"]) - start_time

data_file = open('tc_fqpie.csv', 'w', newline='')
csv_writer = csv.writer(data_file)
 
count = 0
for data in node_data:
    if count==1:
        header = data.keys()
        csv_writer.writerow(header)
        count += 1
    csv_writer.writerow(data.values())
 
data_file.close()