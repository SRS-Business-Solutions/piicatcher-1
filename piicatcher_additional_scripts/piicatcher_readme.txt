Step 1:
#Pre-requisites: This assumes one has credentials to the AWS RDS environment. If not, please refer to Ramu's Readme on accessing Bastion and connecting to MySql in AWS RDS.
#If the modified piicatcher needs to be pulled from the SRS tokern repo's latest branch and installed, those steps are not yet in here, but will be added soon.
#Refer to https://tokern.io/docs/piicatcher/1-installation for installing piicatcher

Step 2:
#From home folder, /home/ubuntu, active virtual environment for Python
./env.sh

Step 3:
#From home folder, run(edit the log file before running, if you want to) 
./pii_catcher.sh

Step 4:
#Export the log file from step #3, a little bit of cleanup to view the Classification results. In a future version, we will be writing directly to DB table

Notes:

1. Only the following 3 files have undergone changes:
   $PIICATCHER_PATH/piitypes.py
   $PIICATCHER_PATH/scanner.py
   $PIICATCHER_PATH/explorer/databases.py

2. Refer sql/create_test_train_split.sql to see simple logic with rand function to come up with 70-30 Train-Test split

3. $PIICATCHER_PATH/explorer/databases.py has been currently configured to read only test data columns using a subquery, but this will be eventually not be there for Production runs.

4. To add new regular expression search, edit the scanner.py to make changes.
  a. Refer to the ~/sql/pii_regex_metadata_configurator.sql to make new entries to the pii metadata configurator object in the form of insert statements. Run against eaas_s4 DB.
  b. Run the 2 sql statements in the pii_regex_metadata_configurator.sql to generate scanner regex code and insert in scanner.py

