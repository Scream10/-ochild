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

// import { myCharts } from '../components/highcharts.js';
// myCharts();

// KID :: FLATPICKR CALENDAR
import { toggleDateInput } from '../components/toggleDateInput.js';
toggleDateInput();
