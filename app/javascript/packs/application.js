import "bootstrap";
// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...

import { validationAchievement } from '../components/validationAchievements.js';

const achievementElement = document.querySelector('.achievement-id');

if (achievementElement) {
  validationAchievement(achievementElement);
};

import { raiseCount, downCount } from '../components/plusMinus.js';
let points = document.querySelector('#points');
raiseCount(points);
downCount(points);
