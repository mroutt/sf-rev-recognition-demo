# What is this Repo?

This is the Apex code to support my YouTube video that demonstrates a simple Salesforce Revenue Recognition process using Schedule records.

## How do I use this Repo?

Because this repo relies on some specific Salesforce Org settings, you will want to use this project in a new Salesforce Sratch Org. Once your Salesforce CLI is authenticated to an Org that is set up as a "Dev Hub", do the following:

1. Open this project in Visual Studio Code.
2. Run "SFDX: Create a Default Scratch Org..." from the VSCode Command Palette.
3. Select the project-scratch-def.json (it should be the default).
4. Wait for the Scratch Org creation to complete.
5. Go to the VSCode Terminal
6. Execute the command "sf project deploy start"
7. Navigate to the file "scripts/apex/DemoAccountAndProducts.apex"
8. With that file open, run "SFDX: Execute Anonymous Apex with Editor Contents" from the VSCode Command Palette.
9. Open the Scratch Org and follow along with the YouTube demo video.
