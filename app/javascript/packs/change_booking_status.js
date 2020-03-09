const changeBookingStatus = () => {
  const confirmButtons = document.getElementsByClassName("hideConfirm");
  const declineButtons = document.getElementsByClassName("hideDecline");
  const newStatus = document.getElementsByClassName('change');

  for (let button of confirmButtons) {
    button.addEventListener('click', (event) => {
      const index = event.currentTarget.dataset.cardIndex
      const targetConfirm = document.getElementById(`confirm-${index}`);
      const targetDecline = document.getElementById(`decline-${index}`);
      const targetChange = document.getElementById(`change-${index}`);
      targetConfirm.style.display = 'none'
      targetDecline.style.display = 'none'
      targetChange.innerHTML = "Confirmation-status: confirmed"
    });
  }

  for (let button of declineButtons) {
    button.addEventListener('click', (event) => {
      const index = event.currentTarget.dataset.cardIndex
      const targetConfirm = document.getElementById(`confirm-${index}`);
      const targetDecline = document.getElementById(`decline-${index}`);
      const targetChange = document.getElementById(`change-${index}`);
      targetConfirm.style.display = 'none'
      targetDecline.style.display = 'none'
      targetChange.innerHTML = "Confirmation-status: declined"
    });
  }

  // confirmButtons.forEach((element) => {
  //     element.addEventListener('click', (event) => {
  //       event.currentTarget.style.display = 'none'
  //       // newStatus.innerHTML = "Confirmation-status: confirmed"
  //     });
  //   });

 }

export {changeBookingStatus};


// const changeBookingStatus = () => {
//   const confirm = document.querySelectorAll(".hideConfirm");
//   const decline = document.querySelectorAll(".hideDecline");
//   const newStatus = document.getElementById('change');
//   confirm.addEventListener('click', () => {
//     confirm.style.display = 'none'
//     decline.style.display = 'none'
//     change.innerHTML = "Comfirmation-status: confirmed"
//   })
//   decline.addEventListener('click', () => {
//     confirm.style.display = 'none'
//     decline.style.display = 'none'
//     change.innerHTML = "Comfirmation-status: declined"
//   })
// }

    // document.querySelectorAll("#hideConfirm").forEach((element) => {
    //   element.addEventListener('click', (event) => {
    //     event.currentTarget.style.display = 'none'
    //     newStatus.innerHTML = "Confirmation-status: confirmed"
    //   });
    // });
