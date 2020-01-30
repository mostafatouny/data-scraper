# 3rd-party postresql driver
import psycopg2

# local files
import verifications
import sqlQueryConst

class db():

	def connectToDB(self, host_in, dbName_in, user_in, password_in):
		try:
			self.conn = psycopg2.connect(host=host_in, dbname=dbName_in, user=user_in, password=password_in)
			#conn = psycopg2.connect(host="localhost", dbname="postgres", user="postgres", password="postgres")
			print("database connected successfully")
		except:
			print("databse did not connect successfully")

	# establish a cursor for commands execution
	def createCursor(self):
		try:
			self.cur = self.conn.cursor()
			print("cursor connected successfully")
		except:
			print("cursor did not connect successfully")

	# establish a database connection
	def __init__(self, host_in, dbName_in, user_in, password_in):
		self.connectToDB(host_in, dbName_in, user_in, password_in)
		self.createCursor()

	# commit results to the database
	def commitDB(self):
		self.conn.commit()

	# close connection
	def closeDB(self):
		if self.conn is not None:
			self.conn.close()

	def createDBbySchDict(self, tableSchemaDict_in, tableName_in):
		# parse table schema into a sql query
		sqlQuery = sqlQueryConst.parseCreateTableQuery(tableSchemaDict_in, tableName_in)
		self.cur.execute(sqlQuery)

	def dictToDB(self, dictDataList_in,  tableName_in):
		# parse record's values into a sql query
		sqlQuery = sqlQueryConst.parseInsertIntoQuery(dictDataList_in, tableName_in)
		# insert each record into the database
		for record in dictDataList_in:
			argTup = tuple(record.values())
			# execute insertion into database given arguments from data list
			self.cur.execute(sqlQuery, argTup)

	def commit_close_DB(self):
		self.commitDB()
		self.closeDB()
