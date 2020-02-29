
    // const count = 1;
    // const countEl = document.getElementById("count");
    // const plus = () => {
    //     count++;
    //     countEl.value = count;
    // };

    // const minus = () => {
    //   if (count > 1) {
    //     count--;
    //     countEl.value = count;
    //   };
    // };



// let count = 1;
const plus = document.querySelector('#plus');
const raiseCount = (points) => {
  plus.addEventListener('click',(event) => {
    // if( count > 1 ) {
    //   count ++;
      // points.value = count;
    // };
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

// On veut une fonction qui lorsqu'on clique sur un bouton augmente la valeur
// d'un élément ciblé
