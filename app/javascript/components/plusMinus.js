const plus = document.querySelector('#plus');
const raiseCount = (points) => {
  plus.addEventListener('click',(event) => {
    let total = points.value;
    let totalPoints = parseInt(total, 10);
    totalPoints += 1;
    points.value = totalPoints;
  });
};

const minus = document.querySelector('#minus');
const downCount = (points) => {
  minus.addEventListener('click',(event) => {
    let total = points.value;
    let totalPoints = parseInt(total, 10);
    totalPoints -= 1;
    points.value = totalPoints;
  });
};

export { raiseCount, downCount };
