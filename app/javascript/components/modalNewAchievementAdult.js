// const modalNewAchievementAdult = () => {
//   const taskElements = document.querySelectorAll('.btn-modal');
//   const taskInput = document.getElementById('achievement_task_id_2');
//   const taskName = document.getElementById("task-name");

//   taskElements.forEach(taskElement => {
//     taskElement.addEventListener('click', (event) => {
//       taskInput.value = taskElement.dataset.taskId;

//     })
//   });

//   const overlay = document.getElementById('overlay');
//   const modal = document.getElementById('modal-task');

//   taskElements.forEach(taskElement => {
//     taskElement.addEventListener('click', (event) => {
//       overlay.classList.add('is-visible');
//       modal.classList.add('is-visible');
//     })
//   });

//   const closeBtn = document.getElementById('close-btn');

//   closeBtn.addEventListener('click', (event) => {
//     overlay.classList.remove('is-visible');
//     modal.classList.remove('is-visible');
//   });

//   overlay.addEventListener('click', (event) => {
//     overlay.classList.remove('is-visible');
//     modal.classList.remove('is-visible');
//   });
// };

// export { modalNewAchievementAdult };
