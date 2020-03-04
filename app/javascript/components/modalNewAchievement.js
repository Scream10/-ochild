export { modalNewAchievement };

const modalNewAchievement = () => {

  const adult = document.getElementById('adult');

  const overlay = document.getElementById('overlay');
  const modal = document.getElementById('modal-task');
  const taskElements = document.querySelectorAll('.btn-modal');
  const taskName = document.getElementById("task-name");
  const closeBtns = document.querySelectorAll('.close-btn');

  const toggleModal = () => {
    taskElements.forEach(taskElement => {
      taskElement.addEventListener('click', (event) => {
        overlay.classList.add('is-visible');
        modal.classList.add('is-visible');
      })
    });

    closeBtns.forEach(closeBtn => {
      closeBtn.addEventListener('click', (event) => {
        overlay.classList.remove('is-visible');
        modal.classList.remove('is-visible');
      });
    })
  }

  if (adult) {

    const taskInputAdult = document.getElementById('achievement_task_id_2');

    taskElements.forEach(taskElement => {
      taskElement.addEventListener('click', (event) => {
        taskInputAdult.value = taskElement.dataset.taskId;
      })
    });
    toggleModal();

  } else {

    const taskInputKid = document.getElementById('achievement_task_id_3');

    taskElements.forEach(taskElement => {
      taskElement.addEventListener('click', (event) => {
        taskInputKid.value = taskElement.dataset.taskId;
      })
    });
    toggleModal();

  }
};
