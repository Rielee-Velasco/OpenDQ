(function () {
  function basename(path) {
    if (!path) {
      return "";
    }
    const cleanPath = path.split("?")[0].split("#")[0];
    const parts = cleanPath.split("/");
    return parts[parts.length - 1] || "";
  }

  function applySidebarState() {
    const moduleId = document.body.dataset.moduleId;
    const pageId = document.body.dataset.pageId;

    if (moduleId && pageId) {
      localStorage.setItem("mdm_last_" + moduleId, pageId);
    }

    const summaryLinks = Array.from(document.querySelectorAll(".module-summary-link"));
    summaryLinks.forEach(function (link) {
      link.addEventListener("click", function (event) {
        event.stopPropagation();
      });
    });

    if (pageId) {
      const allLinks = Array.from(document.querySelectorAll(".sidebar a[href]"));
      const currentLink = allLinks.find(function (link) {
        return basename(link.getAttribute("href")) === pageId;
      });

      if (currentLink) {
        if (currentLink.classList.contains("sidebar-subnav-link")) {
          currentLink.classList.add("active");
        }

        if (currentLink.classList.contains("sidebar-nav-link") || currentLink.classList.contains("module-summary-link")) {
          currentLink.classList.add("active");
        }

        const parentGroup = currentLink.closest(".module-group");
        if (parentGroup) {
          parentGroup.open = true;
          const parentToggle = parentGroup.querySelector(".module-toggle");
          if (parentToggle) {
            parentToggle.classList.add("active");
          }
        }
      }
    }

    const moduleGroups = Array.from(document.querySelectorAll(".module-group"));
    moduleGroups.forEach(function (group) {
      group.addEventListener("toggle", function () {
        if (!group.open) {
          return;
        }

        const activeToggle = group.querySelector(".module-toggle");
        if (activeToggle) {
          activeToggle.classList.add("active");
        }

        moduleGroups.forEach(function (otherGroup) {
          if (otherGroup !== group) {
            otherGroup.open = false;
            const otherToggle = otherGroup.querySelector(".module-toggle");
            if (otherToggle) {
              otherToggle.classList.remove("active");
            }
          }
        });
      });
    });
  }

  fetch("../includes/sidebar.html")
    .then(function (response) {
      return response.text();
    })
    .then(function (html) {
      const sidebarContainer = document.getElementById("sidebar-container");
      if (!sidebarContainer) {
        return;
      }

      sidebarContainer.innerHTML = html;
      applySidebarState();
    });
})();
