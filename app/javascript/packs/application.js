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
let points = document.querySelector('#points-update-adult');
raiseCount(points);
downCount(points);

// ADULT :: MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
import { modalNewAchievementAdult } from '../components/modalNewAchievementAdult.js';
modalNewAchievementAdult();

// ADULT :: MODAL UPDATE ACHIEVEMENT
import { modalUpdateAchievementAdult } from '../components/modalUpdateAchievementAdult.js';
modalUpdateAchievementAdult();
