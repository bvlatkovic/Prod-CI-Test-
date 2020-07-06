sfdx force:source:push -u $SFDC_SCRATCH_USER
sfdx force:apex:test:run --testlevel RunLocalTests --outputdir test-results --resultformat tap --targetusername $SFDC_SCRATCH_USER
