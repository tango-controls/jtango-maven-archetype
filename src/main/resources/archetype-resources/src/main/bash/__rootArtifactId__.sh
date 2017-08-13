#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/bin/bash

echo TANGO_HOST=${symbol_dollar}TANGO_HOST
echo INSTANCE=${symbol_dollar}1
echo VERSION=${project.version}
echo Using Java:
echo `java -version`

XMX=1G
echo XMX=${symbol_dollar}XMX

JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5333 -Dcom.sun.management.jmxremote.port=3333 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Xmx${symbol_dollar}XMX -Xshare:off -XX:+UseG1GC -server -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${artifactId}.hprof -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:${artifactId}.loggc -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=3"
echo JAVA_OPTS=${symbol_dollar}JAVA_OPTS

JAVA_ARGS="-DTANGO_HOST=${symbol_dollar}TANGO_HOST"
echo JAVA_ARGS=${symbol_dollar}JAVA_ARGS

/usr/bin/java ${symbol_dollar}JAVA_OPTS ${symbol_dollar}JAVA_ARGS -jar /usr/share/lib/${artifactId}-${symbol_dollar}VERSION.jar ${symbol_dollar}INSTANCE ${artifactId} ${symbol_dollar}INSTANCE &
