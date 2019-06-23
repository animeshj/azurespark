sudo ./start-master.sh
cat /dsvm/tools/spark/spark-2.3.2/logs/spark-root-org.apache.spark.deploy.master.Master-1-dsvmvm.out
ping dsvmvm.phdfsguaoloerevz2ncsjbuo3e.cx.internal.cloudapp.net
sudo ./start-slave.sh --cores 1 --memory 1024M spark://dsvmvm.phdfsguaoloerevz2ncsjbuo3e.cx.internal.cloudapp.net:7077
cat  /dsvm/tools/spark/spark-2.3.2/logs/spark-root-org.apache.spark.deploy.worker.Worker-1-dsvmvm.out
./spark-submit --class org.apache.spark.examples.SparkPi --master spark://dsvmvm.phdfsguaoloerevz2ncsjbuo3e.cx.internal.cloudapp.net:7077 ../examples/jars/spark-examples_2.11-2.3.2.jar

