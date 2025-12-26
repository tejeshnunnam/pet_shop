# 1. Use the official Tomcat image
FROM tomcat:9.0

# 2. Set the working directory to the Tomcat webapps folder
WORKDIR /usr/local/tomcat/webapps/

# 3. Remove the default ROOT webapp (optional)
RUN rm -rf ROOT

# 4. Copy your WAR file from target/ into Tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# 5. Expose the port
EXPOSE 8080

# 6. Start Tomcat
CMD ["catalina.sh", "run"]
