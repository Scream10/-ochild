// A BOUGER DANS LE BON FICHIER MAIS JE SAIS PAS LEQUEL...
import "bootstrap";

// CHECKBOX ACHIEVEMENTS
import { validationAchievement } from '../components/validationAchievements.js';

const achievementElements = document.querySelectorAll('.achievement-id');

if (achievementElements) {
  achievementElements.forEach(achievementElement => {
    validationAchievement(achievementElement);
  })
};

// MODAL UPDATE ACHIEVEMENT + | -
import { raiseCount, downCount } from '../components/plusMinus.js';
let points = document.querySelector('#points');
raiseCount(points);
downCount(points);


// MODAL NEW ACHIEVEMENT WITH TASK SUGGESTED
const taskElements = document.querySelectorAll('.btn-modal');
const taskInput = document.getElementById('achievement_task_id_2');
const taskName = document.getElementById("task-name");

taskElements.forEach(taskElement => {
  taskElement.addEventListener('click', (event) => {
    taskInput.value = taskElement.dataset.taskId;

  })
});

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
