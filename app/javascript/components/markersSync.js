
const markerSync = () => {
document.querySelectorAll(".card-body").forEach((card) => {
  card.addEventListener('click', (event) => {
    const id = event.currentTarget.dataset.id;
    document.getElementById(`marker-studio-${id}`).click()
  })
})
}

export { markerSync };
