---
title : "Search"
---

<noscript>JavaScript must be enabled for search to work</noscript>

# Antenna's Search

<search id="search"></search>

<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js" type="text/javascript"></script>
<script>
// Fetch the query "q" form the URL
function getQueryParam(name) {
  const urlParams = new URLSearchParams(window.location.search);
  return urlParams.get(name);
}

// When the page is loaded setup PageFindUI object.
window.addEventListener('DOMContentLoaded', (event) => {
  const pagefindUI = new PagefindUI({
  element: "#search",
  showSubResults: true,
  highlightParam: "highlight",
  mergeIndex: [
      {
        bundlePath: "https://rsdoiel.github.io/antenna/pagefind",
        baseUrl: "/antenna/"
      },
    ]
  });
  
  const queryString = getQueryParam("q");
  if (queryString) {
    pagefindUI.triggerSearch(queryString);
  }
});
</script>
