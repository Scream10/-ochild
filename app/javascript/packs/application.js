// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
import "bootstrap";

// KID :: CHECKBOX ACHIEVEMENTS
import { validationAchievement } from '../components/validationAchievements.js';

const achievementElements = document.querySelectorAll('.achievement-id');

if (achievementElements) {
  achievementElements.forEach(achievementElement => {
    validationAchievement(achievementElement);
  })
};

// ADULT :: MODAL UPDATE ACHIEVEMENT + | -
import { raiseCount, downCount } from '../components/plusMinus.js';
raiseCount();
downCount();

// ADULT :: MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
import { modalNewAchievementAdult } from '../components/modalNewAchievementAdult.js';
modalNewAchievementAdult();
