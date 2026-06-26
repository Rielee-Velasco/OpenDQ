$repo = 'c:\Users\L570\Desktop\OpenDQ'
$lessons = Join-Path $repo 'lessons'

$module1 = @(
  [pscustomobject]@{ File='module-1-0-intro.html'; Title='Introduction to Module'; Video='https://share.descript.com/view/osnCrYb6gwa'; Duration='15 to 30 seconds' },
  [pscustomobject]@{ File='module-1-1-what-is-master-data.html'; Title='What Is Master Data'; Video='https://share.descript.com/view/jwCqMxy2WN8'; Duration='2 to 3 minutes' },
  [pscustomobject]@{ File='module-1-2-master-data-vs-transactional-data-vs-reference-data.html'; Title='Master Data vs Transactional Data vs Reference Data'; Video='https://share.descript.com/view/VWQh4qdYRVI'; Duration='2 to 3 minutes' },
  [pscustomobject]@{ File='module-1-3-what-is-master-data-management.html'; Title='What Is Master Data Management'; Video='https://share.descript.com/view/pCD0DGjLBrb'; Duration='2 to 4 minutes' },
  [pscustomobject]@{ File='module-1-4-why-organizations-struggle-without-master-data-management.html'; Title='Why Organizations Struggle Without Master Data Management'; Video='https://share.descript.com/view/42cyoWjehe5'; Duration='2 to 3 minutes' },
  [pscustomobject]@{ File='module-1-5-master-data-management-and-business-outcomes.html'; Title='Master Data Management and Business Outcomes'; Video='https://share.descript.com/view/KU8PTGRGOdE'; Duration='2 to 3 minutes' },
  [pscustomobject]@{ File='module-1-6-recap.html'; Title='Module Recap'; Video='https://share.descript.com/view/86k1ACn0hEe'; Duration='15 to 45 seconds' }
)

$moduleIcon = @'
<svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
  <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
</svg>
'@

$notesBlock = @'
          <section class="course-overview">
            <h2 class="course-overview-title course-title-with-icon">
              <svg class="course-inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                <path d="M12 3l8 4v6c0 5-3.5 9.5-8 11-4.5-1.5-8-6-8-11V7l8-4z"></path>
                <path d="M9 12l2 2 4-4"></path>
              </svg>
              Module support notes
            </h2>

            <div class="course-overview-body">
              <p>Use this short overview paragraph placeholder to summarize the page in one or two sentences.</p>

              <div class="course-callout course-callout-note">
                <p class="course-callout-title">
                  <svg class="course-inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="8" x2="12" y2="12"></line>
                    <line x1="12" y1="16" x2="12.01" y2="16"></line>
                  </svg>
                  Note
                </p>
                <p>Add a note placeholder here for supporting context.</p>
              </div>

              <div class="course-callout course-callout-tip">
                <p class="course-callout-title">
                  <svg class="course-inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <path d="M9 18h6"></path>
                    <path d="M10 22h4"></path>
                    <path d="M12 2a7 7 0 0 0-4 12.75c.64.47 1 1.21 1 2V17h6v-.25c0-.79.36-1.53 1-2A7 7 0 0 0 12 2z"></path>
                  </svg>
                  Tip
                </p>
                <p>Add a tip placeholder here for practical guidance.</p>
              </div>

              <div class="course-callout course-callout-warning">
                <p class="course-callout-title">
                  <svg class="course-inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                    <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                    <line x1="12" y1="9" x2="12" y2="13"></line>
                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                  </svg>
                  Warning
                </p>
                <p>Add a warning placeholder here for common risks.</p>
              </div>
            </div>
          </section>
'@

for ($i = 0; $i -lt $module1.Count; $i++) {
  $page = $module1[$i]
  $pageNum = $i + 1
  $back = if ($i -eq 0) { '../index.html' } else { $module1[$i-1].File }
  $next = if ($i -eq ($module1.Count - 1)) { 'module-2-0-intro.html' } else { $module1[$i+1].File }

  $module1Links = ($module1 | Select-Object -Skip 1 | ForEach-Object {
    $active = if ($_.File -eq $page.File) { ' active' } else { '' }
    '                <li class="sidebar-subnav-item"><a href="{0}" class="sidebar-subnav-link{1}">{2}</a></li>' -f $_.File, $active, $_.Title
  }) -join "`n"

  $module1Active = if ($page.File -in ($module1.File)) { ' active' } else { '' }

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Module 1: $($page.Title) - Master Data Management</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>
<body data-module-id="module-1" data-page-id="$($page.File)">
  <div class="layout">
    <aside class="sidebar">
      <div class="sidebar-header">
        <div class="sidebar-title">Master Data Management</div>
      </div>

      <nav>
        <ul class="sidebar-nav">
          <li class="sidebar-nav-item">
            <a href="../index.html" class="sidebar-nav-link">
              <svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
              </svg>
              Dashboard
            </a>
          </li>

          <li class="sidebar-nav-item">
            <details class="module-group">
              <summary class="sidebar-nav-link module-toggle$module1Active">
$moduleIcon                <a href="module-1-0-intro.html" class="module-summary-link">Module 1</a>
              </summary>
              <ul class="sidebar-subnav">
$module1Links
              </ul>
            </details>
          </li>

          <li class="sidebar-nav-item">
            <details class="module-group">
              <summary class="sidebar-nav-link module-toggle">
$moduleIcon                <a href="module-2-0-intro.html" class="module-summary-link">Module 2</a>
              </summary>
              <ul class="sidebar-subnav">
                <li class="sidebar-subnav-item"><a href="module-2-0-intro.html" class="sidebar-subnav-link">Types of Master Data</a></li>
              </ul>
            </details>
          </li>
        </ul>
      </nav>
    </aside>

    <div class="main-content">
      <header class="header">
        <h1 class="header-title">Module 1: $($page.Title)</h1>
        <div class="header-actions">
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $pageNum of 7</span>
        </div>
      </header>

      <div class="content">
        <div class="module-content">
          <div class="card introduction-card">
            <h2 class="introduction-title">$($page.Title)</h2>
            <figure class="introduction-figure">
              <div class="introduction-video-frame">
                <iframe
                  class="introduction-video"
                  src="$($page.Video)"
                  frameborder="0"
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen>
                </iframe>
              </div>
              <figcaption class="introduction-caption">Duration: $($page.Duration)</figcaption>
            </figure>
          </div>

$notesBlock
        </div>

        <div style="margin-top: 48px; display: flex; justify-content: space-between; align-items: center;">
          <a href="$back" class="btn btn-primary">Back</a>
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $pageNum of 7</span>
          <a href="$next" class="btn btn-accent">Next</a>
        </div>
      </div>
    </div>
  </div>

  <script>
    (function () {
      const moduleId = document.body.dataset.moduleId;
      const pageId = document.body.dataset.pageId;
      if (moduleId && pageId) {
        localStorage.setItem("mdm_last_" + moduleId, pageId);
      }

      document.querySelectorAll(".module-summary-link").forEach(function (link) {
        link.addEventListener("click", function (event) {
          event.stopPropagation();
        });
      });

      const moduleGroups = Array.from(document.querySelectorAll(".module-group"));
      moduleGroups.forEach(function (group) {
        group.addEventListener("toggle", function () {
          if (!group.open) {
            return;
          }

          moduleGroups.forEach(function (otherGroup) {
            if (otherGroup !== group) {
              otherGroup.open = false;
            }
          });
        });
      });
    })();
  </script>
</body>
</html>
"@

  $target = Join-Path $lessons $page.File
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($target, $html, $utf8NoBom)
}
