import verifications

# construct a sql query to crate a table based on a defined schema as dictionary
#   schema is: column-name:[data-type, optional args.. ]
#       data-type: int; varchar; date. varchar must specifiy <num> arg
def parseCreateTableQuery(tableSchemaDict_in, tableName_in):
    # check table schema is a dictionary
    if verifications.isElemNotOfType(tableSchemaDict_in, dict):
        return
    # get data types
    dataTypes = []
    for i in tableSchemaDict_in.values():
        dataTypes.append(i[0])
    # check whether user's input conforms to specified ones
    if verifications.isListElemsNotOneOf(dataTypes, ["int", "varchar", "date"]):
        return

    sqlQuery = "CREATE TABLE " + tableName_in + " (\n"
    sqlQuery = sqlQuery + "\tid serial PRIMARY KEY,\n"

    # a list of tuple, as (key, value) = (name, type)
    dicItems = list(tableSchemaDict_in.items())
    print(dicItems)
    # length of table schema
    dicLen = len(dicItems)
    # for each tuple, construct a column, as column-name type [optional args]
    for idx in range(dicLen):
        sqlQuery = sqlQuery + "\t" + dicItems[idx][0] + " " + dicItems[idx][1][0]
        if dicItems[idx][1][0] == "varchar":
            if verifications.isListLessThan(dicItems[idx][1], 2):
                return
            sqlQuery = sqlQuery + " (" + str(dicItems[idx][1][1]) + ")"
        if idx < dicLen-1:
            sqlQuery = sqlQuery + ","
        sqlQuery = sqlQuery + "\n"

    sqlQuery = sqlQuery + ");"

    return sqlQuery

def parseInsertIntoQuery(dictDataList_in, tableName_in):
    # verify list's elements are non-empty dictionary of the same schema
    if (verifications.isListEmpty(dictDataList_in)):
        return
    if (verifications.isListNotOfType(dictDataList_in, dict)):
        return
    if (verifications.isAllDictListNotSame(dictDataList_in)):
        return

    # find dictionary keys, from first element
    keysList = list(dictDataList_in[0].keys())

    #construct sql query
    sqlQuery = "INSERT INTO " + tableName_in + " ("
    for idx in range(len(keysList)-1):
        sqlQuery = sqlQuery + keysList[idx] + ", "
    sqlQuery = sqlQuery + keysList[(len(keysList)-1)]
    sqlQuery = sqlQuery + ") VALUES ("
    for idx in range(len(keysList)-1):
        sqlQuery = sqlQuery + "%s, "
    sqlQuery = sqlQuery + "%s)"

    return sqlQuery
