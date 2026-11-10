# Dear Reader, welcome

Cette résidence numérique à l’usage des étudiant·es de l’option communication visuelle de l’ENSAD Nancy est visible sur la page d’accueil du site de notre option. Elle permet un espace de diffusion et d’expression libre à toustes, promesse du web.

# Le fonctionnement

Chaque semaine, un dossier nommé selon le numéro calendaire de la semaine peut contenir **une** proposition étudiante. Cette proposition de site web (avec comme minimum un `index.html`) est l’annonce d’un événement, un rendu de cours, des diplômes, ou un essai visuel libre.
Chaque semaine, le lundi matin, un nouveau site est généré à partir du dossier correspondant à la semaine qui vient de commencer. Le site est affiché directement sur https://communication.ensad-nancy.eu/.

Si une semaine est vide, alors c’est la dernière semaine avec un site qui reste active. Vous pouvez donc laisser actif votre site plusieurs semaines si aucune autre proposition ne vient à la suite.

# L’usage

Choisissez l’année et la semaine que vous souhaitez réserver. Si cette semaine est déjà réservée, alors prévoyez d’utiliser la semaine d’après ou d’avant.

- Vous pouvez ajouter à la racine de la semaine choisie votre `index.html` et des fichiers supplémentaires si nécessaire (images, styles, scripts).
- Vous devez supprimer le `.gitkeep`.
- Il est impératif de remplir correctement le `meta.json` en saisissant un titre et un nom. Les informations renseignées s’afficheront en légende sur le site de l’option. **Ne pas modifier le numéro de la valeur `week`.**

```json
{
	"title": "Titre de l’essai visuel",
	"author": "Prénom Nom (ou Pseudonyme)",
	"week": 34
}
```

### Étapes:

1. _Forker_ le dépôt

   Sur la page GitHub, cliquer sur Fork (en haut à droite).

2. Cloner le fork en local

```bash
git clone https://github.com/nom_utilisateur/Online-Residency.git
cd Online-Residency
```

3. Après vérification du tableau des réservations, créer une branche dédiée nommée clairement `ANNEE/SEMAINE`:

```bash
git checkout -b 2026-38
```

4. Ajouter les fichiers
   Dans `ANNEE/SEMAINE/` (par ex. 2026/38/) :
   - index.html (obligatoire) + fichiers annexes (images, css, js)
   - meta.json rempli correctement
   - supprimer le .gitkeep du dossier

5. Commit

```bash
git add .
git commit -m "2026/38 — Titre du projet"
git push origin 2026-38
```

Si vous rencontrez des difficultés dans la mise en ligne, vous pouvez envoyer par email à Paul & Quentin vos propositions de résidences, dans un dossier nommé `ANNEE/Semaine-XX` contenant au moins un `index.html` et le fichier `meta.json` qui suit la structure plus haut, afin que nous nous occupions de la mise en ligne.

# Visualiser la résidence en cours ![Semaine actuelle](https://img.shields.io/endpoint?url=https://ensad-nancy.github.io/Online-Residency/badge.json&cacheSeconds=1)

https://ensad-nancy.github.io/Online-Residency/

# Calendrier

[Calendrier des numéros de semaines](https://www.epochconverter.com/fr/semaines/2026)

# État actuel des réservations

[Consulter l’état des réservations](https://ensad-nancy.github.io/Online-Residency/rsvp.html)
