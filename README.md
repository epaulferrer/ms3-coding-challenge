# Setup and configuration

### Download following requirements:
* Maven[here](https://maven.apache.org/download.cgi)  
* JDK8 [here](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)  
* MySQL Server Community edition.[here](https://dev.mysql.com/downloads/mysql/)  
* Mulesoft Mule 3.9 and Studio 6.6[here](https://www.mulesoft.com/lp/dl/studio/previous)  
* Mule Runtime 3.9.4 EE
    
### How to run

1. Download all requirements.
2. Clone ms3-coding-challenge
   - git clone https://github.com/epaulferrer/ms3-coding-challenge.git
   - Checkout the master branch
3. Run mysql server in localhost
   - Create user root with optional password
4. Initialize MS3 Database; script can be found in the database folder.
   - ./ms3.sql
5. Open/Import the project in Anypoint Studio 6
   - setup the db user, host, port, pass with your preferences in mule-app.properties.
   - Let the project download the maven dependecies.
6. Once complete you can now run the project test suites.
   - open src/test/munit/v1-contacts-apikit-test.xml 
   - right click workspace
   - Click Run MUnit Suite
7. Once the Unit is complete you can now run the project
   - open /ms3-coding-challenge/src/main/app/experience/v1-contacts.xml
   - right click on the workspace
   - click Run project ms3-coding-challenge
   - open your browser and visit http://localhost:8081/v1/console/
8. Enjoy! 
