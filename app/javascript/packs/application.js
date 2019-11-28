import "bootstrap";
import "uikit";

// behavior side navbar
const toggling = document.getElementById('toggle');
if (toggling) {
  toggling.addEventListener('click', function() {
    document.querySelector('.sidebar').classList.toggle('visible');
  });
}

// behavior gradient tracking button

var btn = document.querySelector('.mouse-cursor-gradient-tracking')
if (btn) {
  btn.onmousemove = function(e) {
    var rect = e.target.getBoundingClientRect()
    var x = e.clientX - rect.left
    var y = e.clientY - rect.top
    btn.style.setProperty('--x', x + 'px')
    btn.style.setProperty('--y', y + 'px')
  }
}
