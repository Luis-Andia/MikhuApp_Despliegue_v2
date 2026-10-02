FROM eclipse-temurin:17-jre
WORKDIR /app
COPY app.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", \
  "-Xms128m", "-Xmx256m", \
  "-XX:MaxMetaspaceSize=128m", \
  "-XX:ReservedCodeCacheSize=64m", \
  "-Xss512k", \
  "-XX:+UseSerialGC", \
  "-XX:TieredStopAtLevel=1", \
  "-jar", "app.jar"]