STEPS:

1) Cloning repository: In your local environment, clone the GitHub repository containing your Terraform configuration (git clone repository_URL)

2) Credentials: Before running Terraform, make sure you have set up the Google Cloud Platform credentials in your local environment. You can do this by setting the GOOGLE_APPLICATION_CREDENTIALS environment variable to point to the JSON file containing your GCP service account credentials.
Linux/macOS: (export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/credentials-file.json")
Windows: (set GOOGLE_APPLICATION_CREDENTIALS="C:\path\to\your\credentials-file.json")

3) Initializing Terraform: In the directory where you cloned the repository, run terraform (terraform init).

4) Making changes: Execute the code to see the changes that Terraform will make to your infrastructure (terraform plan).

5) Applying changes: Check the changes proposed by Terraform and then apply them (terraform apply).

6) Confirming changes: Terraform will prompt you to confirm the changes before applying them. Enter YES when prompted to confirm the application of the changes.
