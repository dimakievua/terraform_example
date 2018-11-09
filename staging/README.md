How to use

1. Clone to appropriate folder

2. There are two folder for two environemnts and two modukles: networking and web

3. Change dir to environment you wnaty to create:
cd staging

4. Runnext command to initialize terraform and link modules:
terraform get
terraform init

5. After initializiation make sure AWS CLI installed and credentials stored in default place.

6. Test installation with plan and apply if everything is Ok:
terraform.exe plan -var vpc_cidr=10.0.0.0/16 -var public_subnet_cidr=10.0.1.0/24 -var private_subnet_cidr=10.0.2.0/24 -var key_name=test-key
terraform.exe apply -var vpc_cidr=10.0.0.0/16 -var public_subnet_cidr=10.0.1.0/24 -var private_subnet_cidr=10.0.2.0/24 -var key_name=test-key

7. Store generated key from screen ar fetch it from terraform out. 
If it had shown as one string run next command to split strings:
sed -i 's/\\n/\n/g' private_key.pem

5. Convert pem to ppk if you use PuTTY with puttygen.exe

6. In AWS Console find public url of host and conect to it

7. Destroy infrastructure:
terraform.exe destroy -var vpc_cidr=10.0.0.0/16 -var public_subnet_cidr=10.0.1.0/24 -var private_subnet_cidr=10.0.2.0/24 -var key_name=test-key

Created and maintain by
Dmytro Zhernosiekov
