# Salesforce Community User Utility
Salesforce makes a lot of capability available with our declarative development tools like Process Builder and—one of my favorite new features as of late—our Custom Push Notification capability. In order to make full use of some of those tools, it's sometimes necessary to know the User Id of your community users.

This package includes a Lightning App and related metadata to quickly and easily update all contact records in your org with their related Community Cloud User Ids allowing you to more easily take advantage of those wonderful declarative tools.

## What To Do
![Screenshot of Lightning App Utility in Salesforce](/images/lightning_app.png)

1. Install this package in your org using the included Deploy to Salesforce button below
2. Add your user and any others you wish to the included Permission Set. This will grant the necessary permissions for the Apex classes and Lightning App
3. Ensure the included Lightning Flow is Active in your environment (From Setup, search for Flows under Process Automation)
4. Access the Utilities app from the App Launcher or Waffle menu
5. Click the checkbox to acknowledge the changes you are about to make, then click Next
6. ???
7. Profit

You can run this process as often as you need to from this Lightning App. Alternatively, the invokable Apex method can be called from a Process Builder flow to run each time a new Community User record is created. (Process Builder flow definition not included.)

## Deploy to Your Org
**This package is provided without warranty.**
This software has not been fully tested nor developed with strict security and access controls in mind. By installing this package in your org, you assume all risk of consequences and agree not to hold myself or my employer liable.

To deploy this package to you Salesforce environment, click the button below and log into your org:

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

----
_Made with_ ❤️&☕️ _in Reston_
