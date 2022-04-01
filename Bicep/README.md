# Azure Bicep Code to Provision a Microsoft Customer Agreement (MCA) Subscription
This sample bicep code & process provides customers with a TemplateSpec that can be reused across an organization.

### Prerequisites
* In order to deploy tenant scope resources a customer must assign the correct RBAC as [documented.](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-to-tenant?tabs=azure-cli#required-access)
* Local development environment such as Visual Studio Code with Azure CLI & Bicep Extensions

### User Guide
1. Clone the github repo to your local development environment
    ```
    git clone https://github.com/chrislittle/AzureSubscriptionAutomation.git
    ```
2. Login to your Azure Environment
    ```
    az login
    ```
3. Create a resource group to store your TemplateSpec
    ```
    az group create -l eastus -n Templates
    ```
4. Create a TemplateSpec from the Bicep code. 
    ```
    az ts create --name NewSubscription --version 1.0 --resource-group Templates --location eastus --template-file ./Bicep/main.bicep
    ```
5. Navigate to the Azure Portal and to the Templates Resource Group. Select the newly created **NewSubscription** TemplateSpec & choose Deploy.
6. Populate the required parameters & Create. 