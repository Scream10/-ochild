const plusUpdateAdult = document.querySelector('#plus-update-adult');
const raiseCount = (points) => {
  plusUpdateAdult.addEventListener('click',(event) => {
    points.valueAsNumber += 1;
    // let total = points.value;
    // let totalPoints = parseInt(total, 10);
    // totalPoints += 1;
    // points.value = totalPoints;
  });
};

const minusUpdateAdult = document.querySelector('#minus-upate-adult');
const downCount = (points) => {
  minusUpdateAdult.addEventListener('click',(event) => {
    points.valueAsNumber -= 1;
    // let total = points.value;
    // let totalPoints = parseInt(total, 10);
    // totalPoints -= 1;
    // points.value = totalPoints;
  });
};

export { raiseCount, downCount };
