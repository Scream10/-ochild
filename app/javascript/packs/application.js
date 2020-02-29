import "bootstrap";
// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...

import { validationAchievement } from '../components/validationAchievements.js';

const achievementElements = document.querySelectorAll('.achievement-id');

if (achievementElements) {
  achievementElements.forEach(achievementElement => {
    validationAchievement(achievementElement);
  })
};
