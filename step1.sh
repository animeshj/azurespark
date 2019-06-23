cd $SPARK_HOME/bin
./spark-submit --class org.apache.spark.examples.SparkPi --master spark://${MASTER}:7077 ../examples/jars/spark-examples_2.11-2.3.2.jar
cd ~/codes/lab1
