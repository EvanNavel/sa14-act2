let isAtStart = true;

function toggleAnimation() {
    const div = document.getElementById('animateMe');
    if (isAtStart) {
        div.style.left = 'calc(100% - 100px)';
        isAtStart = false;
    } else {
        div.style.left = '0';
        isAtStart = true;
    }
}
