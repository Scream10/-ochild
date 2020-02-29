import "bootstrap";
// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...

// CHECKBOX ACHIEVEMENTS
import { validationAchievement } from '../components/validationAchievements.js';

const achievementElements = document.querySelectorAll('.achievement-id');

if (achievementElements) {
  achievementElements.forEach(achievementElement => {
    validationAchievement(achievementElement);
  })
};

// TEST MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED

const taskElements = document.querySelectorAll('.btn-modal');
const overlay = document.getElementById('overlay');
const modal = document.getElementById('modal-task');

taskElements.forEach(taskElement => {
  taskElement.addEventListener('click', (event) => {
    overlay.classList.add('is-visible');
    modal.classList.add('is-visible');
  })
});

const closeBtn = document.getElementById('close-btn');

closeBtn.addEventListener('click', (event) => {
  overlay.classList.remove('is-visible');
  modal.classList.remove('is-visible');
});

overlay.addEventListener('click', (event) => {
  overlay.classList.remove('is-visible');
  modal.classList.remove('is-visible');
});
