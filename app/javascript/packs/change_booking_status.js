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
 }

export {changeBookingStatus};
