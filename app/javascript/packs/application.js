// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
import "bootstrap";

// ADULT :: MODAL UPDATE ACHIEVEMENT + | -
import { raiseCount, downCount } from '../components/plusMinus.js';
raiseCount();
downCount();

// ADULT :: MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
import { modalNewAchievementAdult } from '../components/modalNewAchievementAdult.js';
modalNewAchievementAdult();

// KID :: MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
import { modalNewAchievementKid } from '../components/modalNewAchievementKid.js';
modalNewAchievementKid();

import { spinning } from '../components/highcharts.js';

// KID :: FLATPICKR CALENDAR
import flatpickr from "flatpickr";
import { toggleDateInput } from '../components/toggleDateInput.js';
toggleDateInput();



// // KID :: CHECKBOX ACHIEVEMENTS
// import { validationAchievement } from '../components/validationAchievements.js';

// const achievementElements = document.querySelectorAll('.achievement-id');

// if (achievementElements) {
//   achievementElements.forEach(achievementElement => {
//     validationAchievement(achievementElement);
//   })
// };
