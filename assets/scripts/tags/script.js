document.addEventListener('DOMContentLoaded', function() {
  tagsSizing()

  function tagsSizing() {
    const tags = document.querySelectorAll('.tag');
    tags.forEach(function(tag) {
      var weight = parseInt(tag.getAttribute('data-weight'));
      tag.style.fontSize = (10 + weight * 2) + 'px';
    });
  }
});
