# CS210 Assignment 2 Problem 2
# Aatif Sayed (NetID: as3259) & Umar Khattak (NetID: uk50)

# All 5 sub-tasks are implemented in the one single function below

import csv

def problem_2(file) :
    with open(file) as covidFile :
        reader = csv.reader(covidFile)
        next(reader)
        lat_dict = {}
        for line in reader :
            if line[6] == 'NaN' :
                continue
            if not (line[4] in lat_dict.keys()) :
                lat_dict[line[4]] = [line[6]]
            else :
                lat_dict[line[4]].append(line[6])    
        for k,v in lat_dict.items() : 
            sum = 0
            for string in v :
                sum += float(string)
                lat_avg = round((sum / len(v)), 2)
                lat_dict.update({k:lat_avg})
            
    with open(file) as covidFile :
        reader = csv.reader(covidFile)
        next(reader)
        long_dict = {}
        for line in reader :
            if line[7] == 'NaN' :
                continue
            if not (line[4] in long_dict.keys()) :
                long_dict[line[4]] = [line[7]]
            else :
                long_dict[line[4]].append(line[7])    
        for k,v in long_dict.items() : 
            sum = 0
            for string in v :
                sum += float(string)
                long_avg = round((sum / len(v)), 2)
                long_dict.update({k:long_avg})

    with open(file) as covidFile :
        reader = csv.reader(covidFile)
        next(reader)
        province_to_cities_dict = {}
        for line in reader :
            if line[3] == 'NaN' :
                continue
            if not (line[4] in province_to_cities_dict.keys()) :
                province_to_cities_dict[line[4]] = [line[3]]
            else :
                province_to_cities_dict[line[4]].append(line[3])
        
    for k,v in province_to_cities_dict.items() :
        occurrences = {}
        for _type in v :
            if _type in occurrences :
                occurrences[_type] += 1
            else :
                occurrences[_type] = 1
        max_val = max(list(occurrences.values()))
        indices = [index for index, val in enumerate(list(occurrences.values())) if val == max_val]
     #  choose type by sorting tied items alphabetically and choosing whichever occurs first
        if len(indices) != 1 :
            list_to_sort = []
            for index in indices :
                list_to_sort.append(list(occurrences)[index])
            list_to_sort.sort()
            province_to_cities_dict.update({k:list_to_sort[0]})
     #  choose type by finding most frequently appearing type for that specific weakness
        else :
            province_to_cities_dict.update({k:list(occurrences)[indices[0]]})
            
    with open(file) as covidFile :
        reader = csv.reader(covidFile)
        next(reader)
        province_to_symptoms_dict = {}
        for line in reader :
            if line[11] == 'NaN' :
                continue
            if not (line[4] in province_to_symptoms_dict.keys()) :
                _list = line[11].split(';')
                for item in _list:
                    new_item = item.strip()
                    province_to_symptoms_dict[line[4]] = [new_item]
            else :
                _list = line[11].split(';')
                for item in _list:
                    new_item = item.strip()
                    province_to_symptoms_dict[line[4]].append(new_item)
        
    for k,v in province_to_symptoms_dict.items() :
        occurrences = {}
        for _type in v :
            if _type in occurrences :
                occurrences[_type] += 1
            else :
                occurrences[_type] = 1
        max_val = max(list(occurrences.values()))
        indices = [index for index, val in enumerate(list(occurrences.values())) if val == max_val]
     #  choose type by sorting tied items alphabetically and choosing whichever occurs first
        if len(indices) != 1 :
            list_to_sort = []
            for index in indices :
                list_to_sort.append(list(occurrences)[index])
            list_to_sort.sort()
            v = list_to_sort[0]
            province_to_symptoms_dict.update({k:v})
     #  choose type by finding most frequently appearing type for that specific weakness
        else :
            province_to_symptoms_dict.update({k:list(occurrences)[indices[0]]})
    
    with open(file) as covidFile :
        reader = csv.reader(covidFile)
        resultFile = open('covidResult.csv', 'w', newline='')
        writer = csv.writer(resultFile)
        writer.writerow(next(reader))
        for line in reader :
            if '-' in line[1] :
                range = line[1].split('-')
                line[1] = round((int(range[0]) + int(range[1])) / 2)
            if line[3] == 'NaN' :
                line[3] = province_to_cities_dict.get(line[4])
            if line[6] == 'NaN' :
                line[6] = lat_dict.get(line[4])
            if line[7] == 'NaN' :
                line[7] = long_dict.get(line[4])
            line[8] = line[8].split('.')[1] + '.' + line[8].split('.')[0] + '.' + line[8].split('.')[2]
            line[9] = line[9].split('.')[1] + '.' + line[9].split('.')[0] + '.' + line[9].split('.')[2]
            line[10] = line[10].split('.')[1] + '.' + line[10].split('.')[0] + '.' + line[10].split('.')[2]
            if line[11] == 'NaN' :
                line[11] = province_to_symptoms_dict.get(line[4])
            writer.writerow(line)
        resultFile.close()
    
problem_2('covidTrain.csv')