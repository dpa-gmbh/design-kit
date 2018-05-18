window.addEventListener('load', () => {
  const items = document.getElementsByClassName('cdk-Preview');

  for (var i = 0; i < items.length; i++) {
    const elem = items[i];
    const images = elem.querySelectorAll('img');

    for (var j = 0; j < images.length; j++) {
      const image = images[j];

      image.addEventListener('click', () => {
        const src = image.getAttribute('src');
        window.open(src);
      });
    }
  }
});
