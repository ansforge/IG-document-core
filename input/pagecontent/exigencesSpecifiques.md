### Exigences spécifiques aux documents dématérialisés

La dématérialisation d’un document médical ou médico-social à des fins de partage (par exemple dans Mon espace santé) ou d’échange (via messagerie sécurisée de santé) pour améliorer la continuité et la coordination des soins est soumise à un certain nombre d'exigences :

* **Persistance** : Le document dématérialisé doit rester inaltérable et accessible pour une période dont la durée est fonction du cadre réglementaire et des règles mises en place par la communauté de soins.
* **Administration** : La structure émettrice du document dématérialisé doit en assurer la gestion et le suivi, en mettant à disposition les éventuelles mises à jour.
* **Responsabilité** : Le document dématérialisé doit être endossé par le responsable – personne physique assumant l’entière responsabilité du contenu du document.
* **Cohérence** : Le document embarque le contexte (métier et de gestion) de son contenu.
* **Intégralité** : Contenu et contexte restent indissociables.
* **Lisibilité** : Le document dématérialisé doit pouvoir être restitué aux personnes habilitées à le lire.

Ces exigences sont globales et ne sont pas spécifiques à la France.

### Exigences spécifiques au contexte français

Les spécifications françaises définies dans le CI-SIS des documents dématérialisés portent des exigences complémentaires et spécifiques au contexte français :

#### Identification des patients

Selon le cas d'usage, cette identification utilise l'Identité Nationale de Santé (INS) et/ou d'autres données identifiantes (identifiants et informations d'identité).

L'identité Nationale de santé (INS)
L’utilisation de l’Identité Nationale de Santé (INS) pour référencer les données de santé est obligatoire depuis le 1er janvier 2021.

Elle est constituée :
* du matricule INS correspond au NIR (Numéro d’Identification au Répertoire des personnes physiques) ou au NIA (Numéro Identifiant Attente) de l’individu
* des cinq traits INS : nom de naissance, prénom(s) de naissance, date de naissance, sexe, COG du lieu de naissance.

L'INS a plusieurs objectifs :
* Elle contribue à la qualité de la prise en charge et à la sécurité des soins.
* Elle permet aux usagers de disposer d’une identité unique et pérenne
* Elle permet de faciliter l’échange et le partage des données de santé entre l’ensemble des acteurs intervenant dans la prise en charge sanitaire et le suivi médico-social de la personne.

En pratique, l'INS n'est pas toujours obligatoire dans les documents médicaux et médico-sociaux. Mais elle est obligatoire dès lors que le document est mis en partage (dans Mon espace santé notamment).

Lorsqu'elle est facultative, par exemple dans un document uniquement échangé par messagerie sécurisée de santé, il est quand même préférable de la fournir dès lors que cette INS est qualifiée.

Pour en savoir plus : [https://esante.gouv.fr/produits-services/referentiel-ins](https://esante.gouv.fr/produits-services/referentiel-ins)

Autres identifiants du patient
Lors de la prise en charge ou du suivi du patient, les organisations (et leurs professionnels) peuvent utiliser des données d'identification locales (identifiant interne à l'organisation).
Cette pratique, mise en œuvre avant l'arrivée de l'INS, va perdurer encore tant que le déploiement de l'INS (et notamment la qualification de l'INS) ne sera pas totalement généralisé.
Ces identifiants locaux peuvent être transmis dans les documents dématérialisées, y compris lorsque l'INS est obligatoire.

Par exemple : une synthèse médicale rédigée par le médecin traitant du patient exerçant dans un Centre de santé et mise en partage dans le DMP portera l'INS du patient (obligatoire pour le DMP) et l'identifiant local du patient dans le Centre de santé (facultatif).

#### Identification des personnes physiques

Les structures des secteurs sanitaire et médico-social référencées dans les documents doivent être identifiées à partir des référentiels nationaux publiés par l'ANS.

Les structures (personnes morales) qui ne sont pas répertoriés dans les référentiels nationaux publiés par l'ANS peuvent ne pas avoir d'identifiant ou avoir un identifiant spécifique. Dans ce dernier cas, il convient de bien identifier l'autorité ayant affecté cet identifiant spécifique.

#### Terminologies de références

##### Principe général

Les données codées utilisées dans les documents doivent provenir des terminologies de référence définies dans le CI-SIS.

Les terminologies de référence retenues dans le contexte français sont très généralement les mêmes que celles retenues dans le contexte international.

Il est cependant possible, pour des raisons de non-disponibilité ou de non-utilisation sur le territoire français, que la terminologie de référence en France soit différente que celle choisie au niveau international.

Par exemple, le codage des actes médicaux en France s'appuie très largement sur la CCAM.
Cette terminologie est une terminologie française n'est évidemment pas celle qui a été choisie par les autres pays à l'international.

Le Centre de terminologies de Santé (CGTS) de l'ANS est l'entité définissant les terminologies de références en concertation avec l'écosystème français et international. L'objectif est bien d'harmoniser les terminologies utilisées en France et à l'international.

##### Terminologies et jeux de valeurs

Les spécifications précisent, pour chaque donnée codée (code + displayName + codeSystem), s’il convient d’utiliser la terminologie complète ou un jeu de valeurs constitué des valeurs spécifiques au contexte clinique à décrire.

Un jeu de valeurs peut être constitué à partir de terminologies différentes (internationales ou nationales) ou à partir de valeurs créées par l’ANS (terminologie TA_ASIP) lorsqu’une valeur n’existe dans aucune terminologie existante.

7.4.3	Publication des terminologies et jeux de valeurs
Les terminologies utilisées dans les documents du CI-SIS sont pour la majorité publiées sur le Serveur Multi-Terminologies (SMT) de l’ANS : [https://smt.esante.gouv.fr/.](https://smt.esante.gouv.fr/.) 
Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l'unité de production.

Les jeux de valeurs utilisées dans les documents du CI-SIS sont publiés :
* Sur l'IG Terminologies de Santé

Les terminologies publiées sur le SMT et les jeux de valeurs sont accessibles au format FHIR via :
* les APIs FHIR du SMT
  * Voir le guide d’exploitation de ces APIs : [https://industriels.esante.gouv.fr/sites/default/files/media/document/Global_features_FHIR_Server_version_finale_v5.pdf](https://industriels.esante.gouv.fr/sites/default/files/media/document/Global_features_FHIR_Server_version_finale_v5.pdf)
  * Voir le swagger des APIs : [https://smt.esante.gouv.fr/api-docs/](https://smt.esante.gouv.fr/api-docs/) (aller sur API liées au serveur FHIR)
  * Voir des exemples : [https://smt.esante.gouv.fr/formations/formations-specifiques/consommer-des-terminologies-et-des-jeux-de-valeurs-en-fhir-depuis-le-serveur-multi-terminologies-de-lans/](https://smt.esante.gouv.fr/formations/formations-specifiques/consommer-des-terminologies-et-des-jeux-de-valeurs-en-fhir-depuis-le-serveur-multi-terminologies-de-lans/) 
* un Implantation Guide FHIR : [https://ansforge.github.io/IG-terminologie-de-sante/ig/main/](https://ansforge.github.io/IG-terminologie-de-sante/ig/main/)