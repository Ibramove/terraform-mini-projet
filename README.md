# terraform-mini-projet
Author: Ibrahima SYLL

Context: DevOps Bootcamp - class 15

Training Center: eazytraining.fr

Date of Publication: November 17, 2023

LinkedIn: https://www.linkedin.com/in/ibrahima-syll-bb3775112/  



# Projet Terraform: Déploiement d'une Infrastructure AWS

Ce projet Terraform propose des modules pour créer une infrastructure AWS comprenant une instance EC2, un volume EBS, une adresse IP publique, et une règle de sécurité. L'objectif est de rendre l'application dynamique en permettant la variabilisation de plusieurs paramètres.

## Modules Terraform

### [Module EC2](modules/ec2/README.md)

Ce module crée une instance EC2 utilisant la dernière version d'Ubuntu Bionic, avec un volume EBS attaché, une adresse IP publique, et des variables pour définir la taille et le tag de l'instance.

### [Module Volume EBS](modules/ebs_volume/README.md)

Ce module crée un volume EBS avec une taille variabilisée.

### [Module IP Publique](modules/public_ip/README.md)

Ce module crée une adresse IP publique et l'attache à un groupe de sécurité.

### [Module Security Group](modules/security_group/README.md)

Ce module crée un groupe de sécurité qui ouvre les ports 80 et 443.

## Application Terraform

Le dossier [app](app/README.md) utilise les quatre modules mentionnés ci-dessus pour déployer une instance EC2. Il permet de surcharger les variables pour rendre l'application plus dynamique.

### Installation et Utilisation

Suivez les instructions dans le README.md de chaque module pour installer et utiliser individuellement chaque composant.

### Intégration Nginx et Enregistrement de l'IP

À la fin du déploiement, l'application installe Nginx et enregistre l'adresse IP publique dans un fichier nommé `ip_ec2.txt`. Ces éléments sont intégrés dans le rôle EC2.

## Comment Contribuer

1. Fork le projet.
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/VotreFonctionnalité`).
3. Committez vos changements (`git commit -m 'Ajout de votre fonctionnalité'`).
4. Poussez vers la branche (`git push origin feature/VotreFonctionnalité`).
5. Ouvrez une pull request.

## Licence

Ce projet est distribué sous [MIT License](LICENSE).

---

Pour toute question ou problème, contactez-nous à eazytrainingfr@gmail.com. Merci de partager le lien de votre repo pour une évaluation des bonnes pratiques.






Voici une suggestion pour la section "Quick Start" du fichier README.md :

```markdown
# Quick Start

## Clonage du Projet

Pour cloner ce projet, utilisez la commande suivante dans votre terminal :

```bash
git clone https://github.com/Ibramove/terraform-mini-projet.git
```

## Configuration des Clés d'Accès AWS

Avant de compiler le projet, assurez-vous de fournir vos propres clés d'accès AWS dans le fichier `main.tf` du dossier `app`. Modifiez les lignes suivantes en ajoutant vos propres valeurs :

AWS_ACCESS_KEY_ID = "PUT_YOUR_OWN"
AWS_SECRET_ACCESS_KEY = "PUT_YOUR_OWN"

## Compilation du Projet

Dans le dossier `app`, utilisez les commandes suivantes pour compiler le projet :

```bash
cd terraform-mini-projet/app
terraform init
terraform plan
terraform apply
```

## Destruction du Projet

Après avoir testé le projet, n'oubliez pas de le détruire pour éviter de consommer des ressources AWS inutiles. Utilisez la commande suivante dans le dossier `app` :

```bash
terraform destroy
```

## Output Terraform

Les résultats de la compilation, tels que l'adresse IP publique de l'instance EC2, seront affichés à la fin de la commande `terraform apply`. Vous pouvez également les retrouver dans le fichier `output.tf` du dossier `app`.

---

N'oubliez pas de remplacer `"PUT_YOUR_OWN"` par vos propres clés d'accès AWS. Pour plus de détails sur les sorties Terraform, consultez le fichier `output.tf`.

Pour toute question ou problème, contactez-nous à ibrahimasyll39@gmail.com. Merci de partager le lien de votre repo pour une évaluation des bonnes pratiques.
```
