function sure (event) {
    var message = 'Are you sure about that?';
    action = confirm(message) ? true : event.preventDefault();
}

function actionToFunction (event) {
    switch (event.target.tagName.toLowerCase()) {
        case 'a' :
            sure(event);
            break;
        default:
            break;
    }
}

document.body.addEventListener('click', actionToFunction);