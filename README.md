Apex Data Loader - Runner!
======

This is a quick fire AutoIT Script, that can Run the Salesforce Apex Data Loader, to extract all the data from any salesforce Org.
The Requirement for the Script are
1. AutoITv3
2. Apex Data Loader (Should be able to work with any version with minor adjustments.)
3. Windows 7 / XP / 8 (any version which can allow autoit and apex data loader.)

Use Case :

While working on various salesforce projects, when the time comes for release management, many developers fail to understand that the backup is quite an important piece of activity.
A backup can be taken using the eclipse for MetaData, and DataLoader using the Apex Data Loader.
Most of the times, an eclipse backup is sufficient, but it is highly recommended that we also backup an Org's entire database.
To do you, you have the option to do the tedious task of running the apex data loader, and selecting each and every object and saving it in a extract.csv file.
This can become quite tedious given that salesforce implementations can become quite large.

This script, is a quick fire solution, that can 'RUN the DataLoader' 
and perform the task of backing up the entire salesforce Org Data.
