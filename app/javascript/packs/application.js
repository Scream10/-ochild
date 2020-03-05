// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
import "bootstrap";

// ADULT :: MODAL UPDATE ACHIEVEMENT + | -
import { raiseCount, downCount } from '../components/plusMinus.js';
raiseCount();
downCount();

// KID & ADULT :: MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
import { modalNewAchievement } from '../components/modalNewAchievement.js';
modalNewAchievement();

// KID :: FLATPICKR CALENDAR
import { toggleDateInput } from '../components/toggleDateInput.js';
toggleDateInput();

import { myCharts } from '../components/highcharts.js';
myCharts();
