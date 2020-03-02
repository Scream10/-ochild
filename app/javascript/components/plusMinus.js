const raiseCount = () => {
  const plusUpdateAdult = document.querySelectorAll('.plus-update-adult');
  plusUpdateAdult.forEach((plus) => {
    plus.addEventListener('click',(event) => {

      event.currentTarget.offsetParent.querySelector('.points-update-adult').valueAsNumber += 1;
      // let total = points.value;
      // let totalPoints = parseInt(total, 10);
      // totalPoints += 1;
      // points.value = totalPoints;
    });
  })
};

const downCount = () => {
  const minusUpdateAdult = document.querySelectorAll('.minus-upate-adult');
  minusUpdateAdult.forEach((minus) => {
    minus.addEventListener('click',(event) => {
      event.currentTarget.offsetParent.querySelector('.points-update-adult').valueAsNumber -= 1;
      // let total = points.value;
      // let totalPoints = parseInt(total, 10);
      // totalPoints -= 1;
      // points.value = totalPoints;
    });
  })
};

export { raiseCount, downCount };
