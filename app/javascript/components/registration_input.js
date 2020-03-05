const family_id = () => {

  const user_family_id = document.querySelector("#user_family_id");
  const user_family_name = document.querySelector("#user_family_name");

  user_family_id.addEventListener('change', (event) => {
    // const result_id = event.currentTarget.text;
    const sel = event.currentTarget
    const result_id = sel.options[sel.selectedIndex].text;

    console.log(result_id);
    user_family_name.value = result_id;
  });
}

export { family_id };
