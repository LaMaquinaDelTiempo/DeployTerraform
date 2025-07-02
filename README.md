# Terraform AWS - EC2 & RDS Deployment

Este proyecto utiliza **Terraform** para desplegar infraestructura en **AWS**, incluyendo:

- Instancias EC2 para el backend.
- Instancia RDS (MySQL) para base de datos.
- Uso de módulos reutilizables.
- Configuración de VPC, subredes y grupos de seguridad.
- Buenas prácticas de variables y outputs.

---

## 📦 Estructura del Proyecto

DeployTerraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars # (NO se sube al repo)
├── modules/
│ ├── ec2_instance/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ └── outputs.tf
│ └── rds/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf

---

## 🚀 Requisitos Previos

- Cuenta en [AWS](https://aws.amazon.com/)
- [AWS CLI](https://aws.amazon.com/cli/) configurado (`aws configure`)
- [Terraform](https://www.terraform.io/downloads.html) instalado
- Par de llaves SSH para acceso a EC2 (configurado en AWS)

---

## ⚙️ Uso

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/tu-usuario/tu-repo.git
   cd DeployTerraform

2. Agrega tu archivo terraform.tfvars:
aws_access_key = "TU_ACCESS_KEY"
aws_secret_key = "TU_SECRET_KEY"
db_password    = "TuPasswordDB123"

3. Inicializa Terraform:
terraform init

4. Verifica la configuración:
terraform validate

5. Aplica la infraestructura:
terraform apply

6. terraform destroy