function handleError(image) {
    image.onerror = "";
    image.src = "/img/img-default.png";
    return true;
}