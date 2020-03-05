import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css'

const toggleDateInput = () => {
  const dateInput = document.getElementById('achievement_due_at');
  const dateInputTwo = document.getElementById('achievement_due_at_id_2');
  const dateInputThree = document.getElementById('achievement_due_at_id_3');
  const dateInputFour = document.getElementById('achievement_due_at_adult');
  const dateInputUser = document.getElementById('user_date_of_birth');
  const dateInputGoal = document.getElementById('goal_end_date');


  if (dateInput) {
    flatpickr(dateInput, {
      enableTime: false,
      minDate: 'today',
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }
  if (dateInputTwo) {
    flatpickr(dateInputTwo, {
      enableTime: false,
      minDate: 'today',
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }
  if (dateInputThree) {
    flatpickr(dateInputThree, {
      enableTime: false,
      minDate: 'today',
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }
  if (dateInputFour) {
    flatpickr(dateInputFour, {
      enableTime: false,
      minDate: 'today',
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }

  if (dateInputUser) {
    flatpickr(dateInputUser, {
      enableTime: false,
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }
  
  if (dateInputGoal) {
    flatpickr(dateInputGoal, {
      enableTime: false,
      minDate: 'today',
      altInput: true,
      altFormat: "F j, Y",
      // dateFormat: "Y-m-d",
      dateFormat: 'd-m-Y',
      autoclose: true,
    });
  }
};

export { toggleDateInput }
