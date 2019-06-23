from pyspark.sql import SparkSession
import os
sparkHome = os.environ["SPARK_HOME"]
logFile = sparkHome+"/README.md"  # Should be some file on your system
print(logFile)
spark = SparkSession.builder.appName("SimpleApp").getOrCreate()
logData = spark.read.text(logFile).cache()

numAs = logData.filter(logData.value.contains('a')).count()
numBs = logData.filter(logData.value.contains('b')).count()

print("Lines with a: %i, lines with b: %i" % (numAs, numBs))

spark.stop()
