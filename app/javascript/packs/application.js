import "bootstrap";
// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
import { validationAchievement } from '../components/validationAchievements.js'


const achievementElement = document.getElementById('achievement-id');

if (achievementElement) {
  validationAchievement(achievementElement);
}
