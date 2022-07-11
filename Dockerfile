FROM openjdk:15
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib/ app/lib
COPY ${DEPENDENCY}/BOOT-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java", "-cp", "app:app/lib/*", "br.com.gyn.springwithawsproject.SpringWithAwsProjectApplication"]