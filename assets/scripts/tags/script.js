document.addEventListener('DOMContentLoaded', function() {
  const viewSelector = document.getElementById('viewSelector');
  const tagCloudList = document.getElementById('tag-cloud-list');
  const tagCloudCloud = document.getElementById('tag-cloud-cloud');

  viewSelector.addEventListener('change', function() {
      if (viewSelector.value === 'list') {
          tagCloudList.style.display = 'block';
          tagCloudCloud.style.display = 'none';
      } else if (viewSelector.value === 'cloud') {
          tagCloudList.style.display = 'none';
          tagCloudCloud.style.display = 'block';
      }
  });

  tagsSizing()

  function tagsSizing() {
    const tags = document.querySelectorAll('.tag');
    tags.forEach(function(tag) {
      var weight = parseInt(tag.getAttribute('data-weight'));
      tag.style.fontSize = (10 + weight * 2) + 'px';
    });
  }
});
