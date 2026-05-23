document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('article[data-link]').forEach(article => {
    const link = article.getAttribute('data-link');

    // Prepend a small source-domain badge above each article title
    try {
      const domain = new URL(link).hostname.replace(/^www\./, '');
      const badge = document.createElement('span');
      badge.className = 'article-source';
      badge.textContent = domain;
      const h2 = article.querySelector('h2');
      if (h2) h2.before(badge);
    } catch (_) {}

    // Toggle collapse/expand when the title is tapped, clicked, or activated by keyboard
    const h2 = article.querySelector('h2');
    if (h2) {
      h2.setAttribute('tabindex', '0');
      h2.setAttribute('aria-expanded', 'false');

      const toggle = () => {
        const expanded = article.classList.toggle('expanded');
        h2.setAttribute('aria-expanded', String(expanded));
      };

      h2.addEventListener('click', toggle);
      h2.addEventListener('keydown', e => {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          toggle();
        }
      });
    }
  });
});

export {};
