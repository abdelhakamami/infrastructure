![MasterHead](https://www.turbogeek.co.uk/wp-content/uploads/2018/11/hashicorp-terraform-banner.png)

<h1 align="center">Hi 👋, This is the Terraform infrastructure</h1>
<h3 align="center">Automating Infrastructure with Terraform: Streamlining Deployment and Scaling Through Code</h3>
<br> <img align="right" alt="Coding" width="400" src="https://miro.medium.com/v2/resize:fit:720/format:webp/0*WBAtCq5RajTmrNwO.gif">

- 📄 Dive into Terraform-Powered Azure Infrastructure <br>
- 📝 Streamline Azure Deployments with Terraform <br>
- 🤝 Start automating Azure deployments today! <br>
- ⚡  Accelerate Your Azure Deployments <br>
- 🔭 This repo is still under development <br>


<br><br><h1>  Terraform: Infrastructure as Code (IaC) for Azure</h1>

Terraform is an open-source IaC tool that empowers you to manage your Azure infrastructure in a declarative way. Instead of manually configuring resources through the Azure portal or command-line tools, you define your desired infrastructure state in code (configuration files written in HashiCorp Configuration Language, HCL). Terraform then handles the provisioning, updates, and destruction of resources, ensuring consistency and repeatability.


<br><br><h1> Architecture Overview </h1>

<p> The key components of the architecture includes:

<li> Virtual Network: A virtual network isolates the AKS cluster from other resources within the Azure subscription. It provides a secure and private network environment for the cluster nodes. </li>
<li> Azure Kubernetes Service (AKS) Clusters:  AKS is a fully managed Kubernetes service that simplifies the deployment, management, and scaling of containerized applications.1 It handles tasks like node provisioning, cluster management, and security.  </li>
<li> DNS Zones: Resolves domain names to IP addresses within the virtual network.and Enables services within the cluster to be accessed using DNS names instead of IP addresses, improving readability and maintainability. </li>
<li> Load Balancers: The load balancer distributes incoming traffic across the AKS nodes, improving performance and reliability. It can also provide features like health checks and load balancing algorithms. </li>
<li> Storage: Azure Storage is utilized for storing application data and artifacts. </li> </p>

![infrastructure-Page 1](https://github.com/user-attachments/assets/62ef4fe6-f2de-4b7d-b8c4-7d8baf266229)

<p>By combining these components, this architecture offers a highly available and scalable platform for deploying and running containerized applications in Azure. The load balancing ensure that the applications are resilient to failures and can handle increased traffic.</p>

<br><h1>Tree Description: </h1>

This project uses a well-organized directory structure to manage its Terraform configurations. The root directory contains several subdirectories, each representing a major infrastructure component. Here's a breakdown:

```bash
.
├── App_Registration
│   └── Development
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       └── variables.tf
├── Azure_KeyVault
│   ├── Development
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   ├── Production
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   └── Staging
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       └── variables.tf
├── Clusters
│   ├── Development
│   │   ├── aks.tfvars
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   ├── Production
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   └── Staging
│       ├── aks.tfvars
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       └── variables.tf
├── Databases
│   ├── Development
│   │   └── main.tf
│   ├── Production
│   │   └── main.tf
│   └── Staging
│       └── main.tf
├── Network
│   ├── DNS
│   │   ├── Development
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   ├── provider.tf
│   │   │   └── variables.tf
│   │   ├── Production
│   │   │   ├── main.tf
│   │   │   ├── output.tf
│   │   │   ├── provider.tf
│   │   │   └── variables.tf
│   │   └── Staging
│   │       ├── main.tf
│   │       ├── output.tf
│   │       ├── provider.tf
│   │       └── variables.tf
│   └── LoadBalancer
│       ├── Development
│       │   ├── main.tf
│       │   ├── output.tf
│       │   ├── provider.tf
│       │   └── variables.tf
│       ├── Production
│       │   ├── main.tf
│       │   ├── output.tf
│       │   ├── provider.tf
│       │   └── variables.tf
│       └── Staging
│           ├── main.tf
│           ├── output.tf
│           ├── provider.tf
│           └── variables.tf
├── README.md
├── Resource_Group
│   ├── Development
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   ├── resource_group.tf
│   │   └── variables.tf
│   ├── Production
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   ├── resource_group.tf
│   │   └── variables.tf
│   └── Staging
│       ├── output.tf
│       ├── provider.tf
│       ├── resource_group.tf
│       └── variables.tf
├── Storage_Account
│   ├── Development
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   ├── Production
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── provider.tf
│   │   └── variables.tf
│   └── Staging
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       └── variables.tf
├── Virtual_Machines
│   ├── Development
│   │   └── main.tf
│   ├── Production
│   │   └── main.tf
│   └── Staging
│       └── main.tf
└── Virtual_Network
    ├── Development
    │   ├── main.tf
    │   ├── output.tf
    │   ├── provider.tf
    │   ├── variable.tf
    │   └── vnet.tfvars
    ├── Production
    │   ├── main.tf
    │   ├── output.tf
    │   ├── provider.tf
    │   └── variable.tf
    └── Staging
        ├── main.tf
        ├── output.tf
        ├── provider.tf
        ├── variable.tf
        └── vnet.tfvars
```
<p>This structure offers a clear overview of our project, making it easier for everyone to understand and utilize our Terraform configurations.</p>

<br><h1>  Creating a Storage Account per Environment for Terraform State </h1>

Understanding the Need:

When managing multiple environments (e.g., dev, test, prod) with Terraform, it's crucial to isolate the state files for each environment. This ensures that changes made in one environment don't affect others. By storing each environment's state in a separate storage account, we achieve this isolation and maintain a clear separation of concerns.

![carbon (3)](https://github.com/user-attachments/assets/e5743369-13ba-4e90-aaec-4bc47bdb4182)

<p> A remote state backend is set to store the state file in an Azure storage account. This allows Terraform to track the state of our infrastructure and manage changes efficiently. The specific storage account and container are used to isolate the state for a particular environment or project, ensuring that changes in one environment don't affect others.
In the picture given above we see that <em> every environment has it's own container_name that needs to be the same for each resource creation and the key that needs to be changed so the new state get created seperatly from the other </em>  </p>

<br><br><h1>Creating a New Resource with Existing Terraform Code </h1>
This guide outlines how to leverage the existing Terraform template to create a new resource in our infrastructure. Our template functions as a reusable configuration, minimizing code duplication.
<li>Identify Resource Type: Decide on the new resource you want to provision (e.g., a new virtual machine, a storage account, etc.).</li>
<li>Review Existing Code: Examine the provider.tf file within our template. This file specifies the Terraform provider you're using (e.g., AzureRM provider for Azure resources).</li>
<li>Update provider.tf (if necessary): </li>
<li>Update variables.tf: This file defines the variables used throughout the template. <br>Here's what to do:
<br>Identify Relevant Variables: Look for existing variables that are relevant to the new resource you want to create.
<br>Add New Variables (if required): If the new resource requires additional configuration not covered by existing variables, define new variables in variables.tf with appropriate data types and descriptions.</li>
<li>Update resource.tfvars that exists in each resource so the values needs to be set there. </li>
<li>Consider main.tf (Optional):
If the new resource requires adjustments to the overall configuration, you might need to modify main.tf. However, in many scenarios, existing logic might be reusable for the new resource.</li> 
<br> <p>By following these steps and understanding the concepts, you can efficiently create new resources within our infrastructure using our existing Terraform template.</p>

<br><h1>  GitHub Actions Workflow </h1>
<dd> The GitHub Actions workflow automates the deployment of a specific resource using Terraform. It's triggered manually to specific branches (dev, staging, prod) and changes within the resource directory. </dd>
<dd>Each Resource has it's own pipeline so whenever we need to create a new resource the pipeline of that resource do it for as </dd>
<dd>Our Pipeline uses inputs so when every pipeline needs to be triggered manually we need to fill the desired fields so the pipeline takes the values from there </dd>
<br></br>

![Screenshot from 2024-12-30 08-51-21](https://github.com/user-attachments/assets/c8b80bac-d34d-4c0b-8ff7-f457b8dc965a)

<h1 style="background-color:DodgerBlue">AKS Resource Creation</h1>

<br> Our Development Cluster uses 9 Pools and for each pool we have:
  - Max pods: **190** (as max value)
  - Kubernetes version: **1.30.1**
  - VM size: **Standard_D4s_v3**

<br> Our Staging Cluster uses 6 Pools and for each pool we have:
  - Max pods: **170** (as max value)
  - Kubernetes version: **1.30.1**
  - VM size: **Standard_D4s_v3**
    
<br> Our Production Cluster uses 4 Pools and for each pool we have:
  - Max pods: **190** (as max value)
  - Kubernetes version: **1.30.1**
  - VM size: **Standard_D4s_v3**

<h1 style="background-color:DodgerBlue">Here's how it works</h1>

<br>★ Trigger: The workflow runs manually.</br>
<br>★ Environment Configuration: Secrets for Azure credentials for the app registration and environment variables are used securely. Additionally, the workflow sets the environment folder (Development, Staging, or Production) based on the branch.</br>
<br>★ Terraform Setup: The workflow downloads and installs Terraform, configures the Azure CLI, and logs in using stored credentials.</br>
<br>★ Terraform Actions: </br>
<div style="float: left; position: relative; left: 30px">
  <marquee direction="right">
  <li>  Set Resoutce Name: Sets the resource name dynamically based on the branch (if applicable) or a default value. </li>
  <li>  Init: Initializes Terraform in the environment folder.</li> 
  <li>  Validate: Validates the Terraform configuration. </li> 
  <li>  Terraform Plan: Plans the infrastructure changes using Terraform with environment variables for app registration. </li> 
  <li>  Terraform Apply: Applies the planned changes to create the resource in Azure. </li>
  <li> Terraform Output: Shows the output of the Terraform run,including details about the created resrouce. </li> 
  </marquee>
</div>

<br> <br>

> **Note**
> Python job that loop and list all the ones that has access and then send alerts 
all this will be redone with crossplane
I can also lock the resource deletion for not manually delete from azure portal







