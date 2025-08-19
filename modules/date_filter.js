
let articleElements = document.querySelectorAll('article[data-published]');
let dateElement = document.getElementById('filter-by-date');

function filterArticles(event) {
    const selectedDate = this.value;
    articleElements.forEach(article => {
        const articleDate = article.getAttribute('data-published').split('T')[0];
        const articleLink = article.getAttribute('data-link');
        if (selectedDate === '') {
            article.classList.remove('hidden');
        } else if (articleDate === selectedDate) {
            article.classList.remove('hidden');
        } else {
            article.classList.add('hidden');
        }
    });
}

document.addEventListener('DOMContentLoaded', function() {
  articleElements = document.querySelectorAll('article[data-published]');
  dateElement = document.getElementById('filter-by-date');
  dateElement.addEventListener('change', filterArticles);
  let minDate = new Date();
  let maxDate = new Date();
  // Set the default values
  dateElement.setAttribute('min', minDate.toISOString().split('T')[0]);
  dateElement.setAttribute('max', maxDate.toISOString().split('T')[0]);

  // Find and update the min/max dates in our article list.
  articleElements.forEach(article => {
    const curDate = new Date(article.getAttribute('data-published'));
    if (curDate >= maxDate) {
        dateElement.setAttribute('max', curDate.toISOString().split('T')[0]);
        maxDate = curDate;
    }
    if (curDate <= minDate) {
        dateElement.setAttribute('min', curDate.toISOString().split('T')[0]);
        minDate = curDate;
    }
  });
});

export {}; // This makes the file a module
