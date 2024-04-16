STEPS:

1) Cloning repository: In the local environment, clone the GitHub repository containing your Terraform configuration (git clone repository_URL)

2) Credentials: Before running Terraform, make sure you've set up the Google Cloud Platform credentials in your local environment. Set the GOOGLE_APPLICATION_CREDENTIALS environment variable pointing to the JSON file containing your GCP service account credentials.

    Linux/macOS: (export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/credentials-file.json")

    Windows: (set GOOGLE_APPLICATION_CREDENTIALS="C:\path\to\your\credentials-file.json")

4) Initializing Terraform: In the .../instances directory where you cloned the repository, run terraform (terraform init).

5) Making changes: Execute the code to see the changes that Terraform will make to your infrastructure (terraform plan).

6) Applying changes: Check the changes proposed by Terraform and then apply them (terraform apply).

7) Confirming changes: Terraform will prompt you to confirm the changes before applying them. Enter YES when prompted to confirm the application of the changes.
