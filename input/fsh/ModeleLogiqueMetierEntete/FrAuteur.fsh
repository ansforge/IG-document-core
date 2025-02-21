//  Logical Model : auteur			
Logical: Auteur
Title: "Auteur du document (humain ou système)"
Description: "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. 
- Pour un professionnel ou un système, la structure de rattachement doit être précisée.

  Voici les cas d'usage des documents et leurs auteurs :

  <table>
    <tr>
      <th>Cas d'usage</th>
      <th>Auteur(s) du document</th>
      <th>Structure de l'auteur</th>
    </tr>
    <tr>
      <td>Création d'un document par un professionnel sur son logiciel professionnel</td>
      <td>Professionnel</td>
      <td>Structure</td>
    </tr>
    <tr>
      <td>Création d'un document patient par un professionnel sur son logiciel professionnel pour le compte du patient</td>
      <td>Professionnel</td>
      <td>Structure</td>
    </tr>
    <tr>
      <td>Création d'un document patient par le patient</td>
      <td>Patient</td>
      <td>non utilisé</td>
    </tr>
    <tr>
      <td>Création d'un document par un système (dispositif, automate, …) de structure (ES, …)</td>
      <td>Système de structure</td>
      <td>Structure</td>
    </tr>
    <tr>
      <td>Création d'un document par un Service numérique référencé (SNR)</td>
      <td>SNR</td>
      <td>Editeur</td>
    </tr>
    <tr>
      <td>Création d'un document par le DP</td>
      <td>CNOP/DP</td>
      <td>CNOP</td>
    </tr>
  </table>
"
* roleFonctionnel 0..1 CodeableConcept "Rôle fonctionnel de l’auteur. A utiliser uniquement si l'auteur est un professionnel."
* horodatageParticipation 1..1 time "Horodatage de la participation de l’auteur."		 		
// Définition des éléments
* auteur[x] 1..1 PersonneStructure  or ProfessionnelAuteur or  Systeme "Auteur du document : ce peut être un professionnel, un patient/usager ou un système. Pour un professionnel ou un système, la structure de rattachement doit être précisée."										