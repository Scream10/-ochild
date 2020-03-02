const modalUpdateAchievementAdult = () => {

  const updateElements = document.querySelectorAll('.btn-modal-update-adult');
  // const updateInput = document.getElementById('achievement-update-id');
  const updateName = document.getElementById("achievement-update-title");

  updateElements.forEach(updateElement => {
    updateElement.addEventListener('click', (event) => {
      console.log(updateElement);
      updateName.innerHTML = `<%= Achievement.find(id: ${updateElement.dataset.achievementUpdateId}).task.name %>`;

    })
  });

  const overlayUpdate = document.getElementById('overlay-update-adult');
  const modalUpdate = document.getElementById('modal-update-adult');
  const closeBtnUpdate = document.getElementById('close-btn-update');

  updateElements.forEach(updateElement => {
    updateElement.addEventListener('click', (event) => {
      overlayUpdate.classList.add('is-visible');
      modalUpdate.classList.add('is-visible');
    })
  });

  closeBtnUpdate.addEventListener('click', (event) => {
    overlayUpdate.classList.remove('is-visible');
    modalUpdate.classList.remove('is-visible');
  });

  overlayUpdate.addEventListener('click', (event) => {
    overlayUpdate.classList.remove('is-visible');
    modalUpdate.classList.remove('is-visible');
  });
};

export { modalUpdateAchievementAdult };
