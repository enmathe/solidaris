const start = document.getElementById("mission_starting_at");

function addAttributes() {
  start.addEventListener("change", (event) => {
    const regexAu = RegExp(/au/);
    console.log(start.value);
    if (regexAu.test(start.value)) {
      start.form.submit();
    }
  })
}

export { addAttributes };
