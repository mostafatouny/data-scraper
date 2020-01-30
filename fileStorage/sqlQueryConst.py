import verifications.verifications as verifications

# construct a sql query to crate a table based on a defined schema as dictionary
#   schema is: column-name:[data-type, optional args.. ]
#       data-type: int; varchar; date. varchar must specifiy <num> arg
def parseCreateTableQuery(tableSchemaDict_in, tableName_in):
    # check table schema is a dictionary
    assert isinstance(tableSchemaDict_in, dict), "tableSchemaDict_in is not of type dictionary"

    # get data types
    dataTypes = []
    for i in tableSchemaDict_in.values():
        dataTypes.append(i[0])
    # check whether user's input conforms to specified ones
    for elem in dataTypes:
        assert (elem == "int" or elem == "varchar" or elem == "data"), "list elements are not within specified valid ones"

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
            assert len(dicItems[idx][1]) >= 2, str(dicItems[idx][1]) + " length is less than 2"
            sqlQuery = sqlQuery + " (" + str(dicItems[idx][1][1]) + ")"
        if idx < dicLen-1:
            sqlQuery = sqlQuery + ","
        sqlQuery = sqlQuery + "\n"

    sqlQuery = sqlQuery + ");"

    return sqlQuery

def parseInsertIntoQuery(dictDataList_in, tableName_in):
    # verify list's elements are non-empty dictionary of the same schema
    assert len(dictDataList_in) > 0, str(dictDataList_in) + " list is empty"
    for elem in dictDataList_in:
        assert isinstance(elem, dict), str(elem) + " is not of type dictionary"

    assert verifications.isAllDictListSame(dictDataList_in), "dictionary elements are not of the same schema"

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
