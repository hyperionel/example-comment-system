document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('a[data-toggle]').forEach(function (element) {
    element.addEventListener('click', function (e) {
      e.preventDefault();
      debugger;
      var target = document.getElementById(element.getAttribute('data-toggle'));
      if (target.style.display === 'none') {
        target.style.display = 'block';
      } else {
        target.style.display = 'none';
      }
    });
  });
});