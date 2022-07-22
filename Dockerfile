FROM maven:3-openjdk-11
RUN git clone https://github.com/openmrs/openmrs-core.git && cd openmrs-core && mvn clean package

FROM tomcat:7
LABEL author="jyothi"
# COPY --from=builder /openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/openmrs.war
EXPOSE 8080