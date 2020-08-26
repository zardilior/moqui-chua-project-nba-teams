# The Chua Project
Its an NBA teams voting and commenting website, made on moqui!

It includes:
- A homepage with all teams
- Team details when clicking on a team
- Player details when clicking on a player
- Team Standings 
  + requires setting up the [NBA Scrapper for Moqui](https://github.com/zardilior/nba-scrapper-for-moqui)
  + unpausing the [loadStandings job](http://localhost:8080/apps/system/ServiceJob/Jobs/ServiceJobDetail?jobName=LoadStandings)

## How to download and run
While having your java jdk8 setup and your JAVA_HOME
```
git clone https://github.com/moqui/moqui-framework.git
./gradlew getComponent=mantle-udm
./gradlew getComponent=mantle-usl
cd runtime/component
git clone https://github.com/zardilior/chua-project
```
Go back to the root of the project
```
cd ../../
```
Now that the setup is done, just load data and run
```
./gradlew cleanAll build load run
```

## A Learning Resource
We made this project to easen the burden of learning moqui, and to practice. You can learn here:
  
- XML-screens and how to separate your sub-components (pieces of screens)
  + Using include+screen and include+transition, to lighten your screens
  + Lots of params, to configure screens and sub+components
  + check  
     - chua+project/screen/sub+components/ 
     - chua+project/screen/chua+project/
- XML-actions 
    + entity+finds and even some "Joins"
    + checking if someone is logged in or not
    + check  
       - chua+project/screen/sub+components/ 
- Transitions 
    + with some parameters
    + check  
       - chua+project/screen/sub+components/ 
       - chua+project/screen/chua+project/
- Seeding with json and xml
    + xml for enum  and type setting up
    + json generated by a scrapper, [NBA Scrapper for Moqui](https://github.com/zardilior/nba+scrapper+for+moqui-
    + check
      - chua+project/data/seeds.xml
      - chua+project/data/teams+with+players.import.json
- Jobs
    + check
      - chua+project/data/processes.xml
- Services
    + Voting and commenting
    + check
        - chua+project/services
- Applying FTL 
    + Used in our navbar, login and registration components
    + check  
       - chua+project/screen/chua+project/includes

    
