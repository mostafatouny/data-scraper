
def dateStrToList(str_in):
    tem0 = str_in.split(',')

    year = tem0[1]
    year = year[1:]

    tem1 = tem0[0].split(' ')

    month = tem1[0]

    if len(tem1) > 2:
        day = tem1[2]
    else:
        day = tem1[1]

    return [year, month, day]

def dateListToDesStr(list_in):
    day = list_in[2]
    if int(day) < 10:
        day = '0' + day

    monthThreeLettersToNum = {
    'Jan':'01',
    'Feb':'02',
    'Mar':'03',
    'Apr':'04',
    'May':'05',
    'Jun':'06',
    'Jul':'07',
    'Aug':'08',
    'Sep':'09',
    'Oct':'10',
    'Nov':'11',
    'Dec':'12'
    }

"""
    if list_in[1] == "Jan":
        month = '01'
    elif list_in[1] == "Feb":
        month = '02'
    elif list_in[1] == "Mar":
        month = '03'
    elif list_in[1] == "Apr":
        month = '04'
    elif list_in[1] == "May":
        month = '05'
    elif list_in[1] == "Jun":
        month = '06'
    elif list_in[1] == "Jul":
        month = '07'
    elif list_in[1] == "Aug":
        month = '08'
    elif list_in[1] == "Sep":
        month = '09'
    elif list_in[1] == "Oct":
        month = '10'
    elif list_in[1] == "Nov":
        month = '11'
    elif list_in[1] == "Dec":
        month = '12'
    #else:
"""

    if list_in[1] in monthThreeLettersToNum:
        month = monthThreeLettersToNum[list_in[1]]
    else:
        raise ValueError(list_in[1] + " is not within desired range of values")

    year = list_in[0]

    return year + '-' + month + '-' + day

def dateConverter(str_in):
    dateAsList = dateStrToList(str_in)
    dateFormattedString = dateListToDesStr(dateAsList)
    return dateFormattedString
