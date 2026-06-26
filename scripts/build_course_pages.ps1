$repo = 'c:\Users\L570\Desktop\OpenDQ'
$lessons = Join-Path $repo 'lessons'

$courseModules = @(
  [pscustomobject]@{
    ModuleNumber = 2
    ModuleId = 'module-2'
    IntroFile = 'module-2-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-2-1-common-master-data-domains.html'; Title='Common Master Data Domains' },
      [pscustomobject]@{ File='module-2-2-customers-products-suppliers-employees-locations.html'; Title='Customers, Products, Suppliers, Employees, Locations' },
      [pscustomobject]@{ File='module-2-3-source-systems-and-data-ownership.html'; Title='Source Systems and Data Ownership' },
      [pscustomobject]@{ File='module-2-4-single-source-of-truth-concepts.html'; Title='Single Source of Truth Concepts' },
      [pscustomobject]@{ File='module-2-5-real-world-examples.html'; Title='Real World Examples' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 3
    ModuleId = 'module-3'
    IntroFile = 'module-3-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-3-1-mdm-goals-and-success-criteria.html'; Title='MDM Goals and Success Criteria' },
      [pscustomobject]@{ File='module-3-2-aligning-mdm-with-business-priorities.html'; Title='Aligning MDM With Business Priorities' },
      [pscustomobject]@{ File='module-3-3-building-an-mdm-roadmap.html'; Title='Building an MDM Roadmap' },
      [pscustomobject]@{ File='module-3-4-measuring-business-value.html'; Title='Measuring Business Value' },
      [pscustomobject]@{ File='module-3-5-stakeholder-alignment.html'; Title='Stakeholder Alignment' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 4
    ModuleId = 'module-4'
    IntroFile = 'module-4-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-4-1-dimensions-of-data-quality.html'; Title='Dimensions of Data Quality' },
      [pscustomobject]@{ File='module-4-2-profiling-and-assessment-methods.html'; Title='Profiling and Assessment Methods' },
      [pscustomobject]@{ File='module-4-3-identifying-duplicates-and-inconsistencies.html'; Title='Identifying Duplicates and Inconsistencies' },
      [pscustomobject]@{ File='module-4-4-data-remediation-approaches.html'; Title='Data Remediation Approaches' },
      [pscustomobject]@{ File='module-4-5-monitoring-quality-over-time.html'; Title='Monitoring Quality Over Time' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 5
    ModuleId = 'module-5'
    IntroFile = 'module-5-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-5-1-mdm-platforms-and-architectures.html'; Title='MDM Platforms and Architectures' },
      [pscustomobject]@{ File='module-5-2-matching-and-survivorship-concepts.html'; Title='Matching and Survivorship Concepts' },
      [pscustomobject]@{ File='module-5-3-data-integration-tools.html'; Title='Data Integration Tools' },
      [pscustomobject]@{ File='module-5-4-metadata-and-data-catalogs.html'; Title='Metadata and Data Catalogs' },
      [pscustomobject]@{ File='module-5-5-selecting-the-right-solution.html'; Title='Selecting the Right Solution' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 6
    ModuleId = 'module-6'
    IntroFile = 'module-6-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-6-1-governance-principles.html'; Title='Governance Principles' },
      [pscustomobject]@{ File='module-6-2-roles-and-responsibilities.html'; Title='Roles and Responsibilities' },
      [pscustomobject]@{ File='module-6-3-policies-and-standards.html'; Title='Policies and Standards' },
      [pscustomobject]@{ File='module-6-4-stewardship-models.html'; Title='Stewardship Models' },
      [pscustomobject]@{ File='module-6-5-governance-operating-models.html'; Title='Governance Operating Models' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 7
    ModuleId = 'module-7'
    IntroFile = 'module-7-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-7-1-system-integration-patterns.html'; Title='System Integration Patterns' },
      [pscustomobject]@{ File='module-7-2-apis-and-event-driven-architectures.html'; Title='APIs and Event Driven Architectures' },
      [pscustomobject]@{ File='module-7-3-batch-vs-real-time-synchronization.html'; Title='Batch vs Real Time Synchronization' },
      [pscustomobject]@{ File='module-7-4-data-distribution-approaches.html'; Title='Data Distribution Approaches' },
      [pscustomobject]@{ File='module-7-5-cross-system-consistency.html'; Title='Cross System Consistency' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 8
    ModuleId = 'module-8'
    IntroFile = 'module-8-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-8-1-implementation-phases.html'; Title='Implementation Phases' },
      [pscustomobject]@{ File='module-8-2-pilot-and-rollout-planning.html'; Title='Pilot and Rollout Planning' },
      [pscustomobject]@{ File='module-8-3-migration-considerations.html'; Title='Migration Considerations' },
      [pscustomobject]@{ File='module-8-4-adoption-planning.html'; Title='Adoption Planning' },
      [pscustomobject]@{ File='module-8-5-change-management.html'; Title='Change Management' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 9
    ModuleId = 'module-9'
    IntroFile = 'module-9-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-9-1-day-to-day-operations.html'; Title='Day to Day Operations' },
      [pscustomobject]@{ File='module-9-2-workflow-management.html'; Title='Workflow Management' },
      [pscustomobject]@{ File='module-9-3-monitoring-and-issue-resolution.html'; Title='Monitoring and Issue Resolution' },
      [pscustomobject]@{ File='module-9-4-continuous-improvement.html'; Title='Continuous Improvement' },
      [pscustomobject]@{ File='module-9-5-governance-execution.html'; Title='Governance Execution' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 10
    ModuleId = 'module-10'
    IntroFile = 'module-10-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-10-1-mdm-kpis.html'; Title='MDM KPIs' },
      [pscustomobject]@{ File='module-10-2-business-performance-indicators.html'; Title='Business Performance Indicators' },
      [pscustomobject]@{ File='module-10-3-data-quality-scorecards.html'; Title='Data Quality Scorecards' },
      [pscustomobject]@{ File='module-10-4-roi-measurement.html'; Title='ROI Measurement' },
      [pscustomobject]@{ File='module-10-5-maturity-assessment.html'; Title='Maturity Assessment' }
    )
  },
  [pscustomobject]@{
    ModuleNumber = 11
    ModuleId = 'module-11'
    IntroFile = 'module-11-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File='module-11-1-scaling-mdm-programs.html'; Title='Scaling MDM Programs' },
      [pscustomobject]@{ File='module-11-2-ai-readiness-and-trusted-data.html'; Title='AI Readiness and Trusted Data' },
      [pscustomobject]@{ File='module-11-3-governance-evolution.html'; Title='Governance Evolution' },
      [pscustomobject]@{ File='module-11-4-emerging-trends.html'; Title='Emerging Trends' },
      [pscustomobject]@{ File='module-11-5-long-term-operating-model.html'; Title='Long Term Operating Model' }
    )
  }
)

$placeholderNotes = @'
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

function New-ModulePage {
  param(
    [int]$ModuleNumber,
    [string]$ModuleId,
    [string]$IntroFile,
    [string]$PageFile,
    [string]$PageTitle,
    [object[]]$SidebarPages,
    [int]$PageNumber,
    [int]$TotalPages,
    [string]$BackFile,
    [string]$NextFile,
    [switch]$IsIntro
  )

  $activePageClass = if ($PageFile -eq $IntroFile) { ' active' } else { '' }
  $childItems = ($SidebarPages | ForEach-Object {
    $active = if ($PageFile -eq $_) { ' active' } else { '' }
    '                <li class="sidebar-subnav-item"><a href="{0}" class="sidebar-subnav-link{1}">{2}</a></li>' -f $_.File, $active, $_.Title
  }) -join "`n"

  $bodyTitle = if ($IsIntro) { 'Introduction to Module' } else { $PageTitle }
  $figCaption = if ($IsIntro) { 'Video placeholder' } else { 'Video placeholder' }

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Module ${ModuleNumber}: $bodyTitle - Master Data Management</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>
<body data-module-id="$ModuleId" data-page-id="$PageFile">
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
              <summary class="sidebar-nav-link module-toggle$activePageClass">
$moduleIcon                <a href="$IntroFile" class="module-summary-link">Module $ModuleNumber</a>
              </summary>
              <ul class="sidebar-subnav">
$childItems
              </ul>
            </details>
          </li>
        </ul>
      </nav>
    </aside>

    <div class="main-content">
      <header class="header">
        <h1 class="header-title">Module ${ModuleNumber}: $bodyTitle</h1>
        <div class="header-actions">
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $PageNumber of $TotalPages</span>
        </div>
      </header>

      <div class="content">
        <div class="module-content">
          <div class="card introduction-card">
            <h2 class="introduction-title">$bodyTitle</h2>
            <figure class="introduction-figure">
              <div class="introduction-video-frame">
                <iframe
                  class="introduction-video"
                  src="$blankVideo"
                  frameborder="0"
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen>
                </iframe>
              </div>
              <figcaption class="introduction-caption">$figCaption</figcaption>
            </figure>
          </div>

$placeholderNotes
        </div>

        <div style="margin-top: 48px; display: flex; justify-content: space-between; align-items: center;">
          <a href="$BackFile" class="btn btn-primary">Back</a>
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $PageNumber of $TotalPages</span>
          <a href="$NextFile" class="btn btn-accent">Next</a>
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

  $target = Join-Path $lessons $PageFile
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($target, $html, $utf8NoBom)
}

function New-CompletionPage {
  param(
    [string]$File,
    [string]$Title,
    [string]$BodyText,
    [string]$BackFile,
    [string]$NextFile
  )

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$Title - Master Data Management</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <div class="layout">
    <aside class="sidebar">
      <div class="sidebar-header">
        <div class="sidebar-title">Master Data Management</div>
      </div>
      <nav>
        <ul class="sidebar-nav">
          <li class="sidebar-nav-item">
            <a href="index.html" class="sidebar-nav-link">
              <svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
              </svg>
              Dashboard
            </a>
          </li>
        </ul>
      </nav>
    </aside>

    <div class="main-content">
      <header class="header">
        <h1 class="header-title">$Title</h1>
      </header>
      <div class="content">
        <div class="card introduction-card">
          <h2 class="introduction-title">$Title</h2>
          <div class="course-overview-body">
            <p>$BodyText</p>
            <div class="course-callout course-callout-note">
              <p class="course-callout-title">
                <svg class="course-inline-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true">
                  <circle cx="12" cy="12" r="10"></circle>
                  <line x1="12" y1="8" x2="12" y2="12"></line>
                  <line x1="12" y1="16" x2="12.01" y2="16"></line>
                </svg>
                Note
              </p>
              <p>Placeholder only.</p>
            </div>
          </div>
        </div>

        <div style="margin-top: 48px; display: flex; justify-content: space-between; align-items: center;">
          <a href="$BackFile" class="btn btn-primary">Back</a>
          <a href="$NextFile" class="btn btn-accent">Next</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
"@

  $target = Join-Path $repo $File
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($target, $html, $utf8NoBom)
}

foreach ($module in $courseModules) {
  $totalPages = 1 + $module.Pages.Count
  $pageFiles = @($module.IntroFile) + ($module.Pages | ForEach-Object { $_.File })

  for ($index = 0; $index -lt $pageFiles.Count; $index++) {
    $file = $pageFiles[$index]
    $isIntro = $index -eq 0
    $title = if ($isIntro) { 'Introduction to Module' } else { $module.Pages[$index - 1].Title }
    $pageNumber = $index + 1
    $back = if ($index -eq 0) {
      if ($module.ModuleNumber -eq 2) { 'module-1-6-recap.html' } else { '../index.html' }
    } else {
      $pageFiles[$index - 1]
    }
    $next = if ($index -eq ($pageFiles.Count - 1)) {
      if ($module.ModuleNumber -eq 11) { 'course-completion.html' } else { ($courseModules | Where-Object { $_.ModuleNumber -eq ($module.ModuleNumber + 1) }).IntroFile }
    } else {
      $pageFiles[$index + 1]
    }

    New-ModulePage -ModuleNumber $module.ModuleNumber -ModuleId $module.ModuleId -IntroFile $module.IntroFile -PageFile $file -PageTitle $title -SidebarPages $module.Pages -PageNumber $pageNumber -TotalPages $totalPages -BackFile $back -NextFile $next -IsIntro:$isIntro
  }
}

New-CompletionPage -File 'course-completion.html' -Title 'Course Completion' -BodyText 'Placeholder for the end-of-course completion page.' -BackFile 'lessons/module-11-5-long-term-operating-model.html' -NextFile 'final-knowledge-check.html'
New-CompletionPage -File 'final-knowledge-check.html' -Title 'Final Knowledge Check' -BodyText 'Placeholder for the final knowledge check page.' -BackFile 'course-completion.html' -NextFile 'certificate-of-completion.html'
New-CompletionPage -File 'certificate-of-completion.html' -Title 'Certificate of Completion' -BodyText 'Placeholder for the certificate page.' -BackFile 'final-knowledge-check.html' -NextFile 'index.html'$repo = 'c:\Users\L570\Desktop\OpenDQ'
$lessons = Join-Path $repo 'lessons'
$blankVideo = 'about:blank'

$modules = @(
  [pscustomobject]@{
    Number = 1
    Theme = 'Master Data Basics'
    IntroFile = 'module-1-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-1-1-what-is-master-data.html'; Title = 'What Is Master Data' },
      [pscustomobject]@{ File = 'module-1-2-master-data-vs-transactional-data-vs-reference-data.html'; Title = 'Master Data vs Transactional Data vs Reference Data' },
      [pscustomobject]@{ File = 'module-1-3-what-is-master-data-management.html'; Title = 'What Is Master Data Management' },
      [pscustomobject]@{ File = 'module-1-4-why-organizations-struggle-without-master-data-management.html'; Title = 'Why Organizations Struggle Without Master Data Management' },
      [pscustomobject]@{ File = 'module-1-5-master-data-management-and-business-outcomes.html'; Title = 'Master Data Management and Business Outcomes' },
      [pscustomobject]@{ File = 'module-1-6-recap.html'; Title = 'Module Recap' }
    )
  },
  [pscustomobject]@{
    Number = 2
    Theme = 'Common Master Data Domains'
    IntroFile = 'module-2-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-2-1-common-master-data-domains.html'; Title = 'Common Master Data Domains' },
      [pscustomobject]@{ File = 'module-2-2-customers-products-suppliers-employees-locations.html'; Title = 'Customers, Products, Suppliers, Employees, Locations' },
      [pscustomobject]@{ File = 'module-2-3-source-systems-and-data-ownership.html'; Title = 'Source Systems and Data Ownership' },
      [pscustomobject]@{ File = 'module-2-4-single-source-of-truth-concepts.html'; Title = 'Single Source of Truth Concepts' },
      [pscustomobject]@{ File = 'module-2-5-real-world-examples.html'; Title = 'Real-World Examples' }
    )
  },
  [pscustomobject]@{
    Number = 3
    Theme = 'MDM Goals and Success Criteria'
    IntroFile = 'module-3-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-3-1-mdm-goals-and-success-criteria.html'; Title = 'MDM Goals and Success Criteria' },
      [pscustomobject]@{ File = 'module-3-2-aligning-mdm-with-business-priorities.html'; Title = 'Aligning MDM with Business Priorities' },
      [pscustomobject]@{ File = 'module-3-3-building-an-mdm-roadmap.html'; Title = 'Building an MDM Roadmap' },
      [pscustomobject]@{ File = 'module-3-4-measuring-business-value.html'; Title = 'Measuring Business Value' },
      [pscustomobject]@{ File = 'module-3-5-stakeholder-alignment.html'; Title = 'Stakeholder Alignment' }
    )
  },
  [pscustomobject]@{
    Number = 4
    Theme = 'Data Quality Fundamentals'
    IntroFile = 'module-4-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-4-1-dimensions-of-data-quality.html'; Title = 'Dimensions of Data Quality' },
      [pscustomobject]@{ File = 'module-4-2-profiling-and-assessment-methods.html'; Title = 'Profiling and Assessment Methods' },
      [pscustomobject]@{ File = 'module-4-3-identifying-duplicates-and-inconsistencies.html'; Title = 'Identifying Duplicates and Inconsistencies' },
      [pscustomobject]@{ File = 'module-4-4-data-remediation-approaches.html'; Title = 'Data Remediation Approaches' },
      [pscustomobject]@{ File = 'module-4-5-monitoring-quality-over-time.html'; Title = 'Monitoring Quality Over Time' }
    )
  },
  [pscustomobject]@{
    Number = 5
    Theme = 'MDM Platforms and Architectures'
    IntroFile = 'module-5-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-5-1-mdm-platforms-and-architectures.html'; Title = 'MDM Platforms and Architectures' },
      [pscustomobject]@{ File = 'module-5-2-matching-and-survivorship-concepts.html'; Title = 'Matching and Survivorship Concepts' },
      [pscustomobject]@{ File = 'module-5-3-data-integration-tools.html'; Title = 'Data Integration Tools' },
      [pscustomobject]@{ File = 'module-5-4-metadata-and-data-catalogs.html'; Title = 'Metadata and Data Catalogs' },
      [pscustomobject]@{ File = 'module-5-5-selecting-the-right-solution.html'; Title = 'Selecting the Right Solution' }
    )
  },
  [pscustomobject]@{
    Number = 6
    Theme = 'Governance Principles'
    IntroFile = 'module-6-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-6-1-governance-principles.html'; Title = 'Governance Principles' },
      [pscustomobject]@{ File = 'module-6-2-roles-and-responsibilities.html'; Title = 'Roles and Responsibilities' },
      [pscustomobject]@{ File = 'module-6-3-policies-and-standards.html'; Title = 'Policies and Standards' },
      [pscustomobject]@{ File = 'module-6-4-stewardship-models.html'; Title = 'Stewardship Models' },
      [pscustomobject]@{ File = 'module-6-5-governance-operating-models.html'; Title = 'Governance Operating Models' }
    )
  },
  [pscustomobject]@{
    Number = 7
    Theme = 'System Integration Patterns'
    IntroFile = 'module-7-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-7-1-system-integration-patterns.html'; Title = 'System Integration Patterns' },
      [pscustomobject]@{ File = 'module-7-2-apis-and-event-driven-architectures.html'; Title = 'APIs and Event-Driven Architectures' },
      [pscustomobject]@{ File = 'module-7-3-batch-vs-real-time-synchronization.html'; Title = 'Batch vs Real-Time Synchronization' },
      [pscustomobject]@{ File = 'module-7-4-data-distribution-approaches.html'; Title = 'Data Distribution Approaches' },
      [pscustomobject]@{ File = 'module-7-5-cross-system-consistency.html'; Title = 'Cross-System Consistency' }
    )
  },
  [pscustomobject]@{
    Number = 8
    Theme = 'Implementation Phases'
    IntroFile = 'module-8-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-8-1-implementation-phases.html'; Title = 'Implementation Phases' },
      [pscustomobject]@{ File = 'module-8-2-pilot-and-rollout-planning.html'; Title = 'Pilot and Rollout Planning' },
      [pscustomobject]@{ File = 'module-8-3-migration-considerations.html'; Title = 'Migration Considerations' },
      [pscustomobject]@{ File = 'module-8-4-adoption-planning.html'; Title = 'Adoption Planning' },
      [pscustomobject]@{ File = 'module-8-5-change-management.html'; Title = 'Change Management' }
    )
  },
  [pscustomobject]@{
    Number = 9
    Theme = 'Day-to-Day Operations'
    IntroFile = 'module-9-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-9-1-day-to-day-operations.html'; Title = 'Day-to-Day Operations' },
      [pscustomobject]@{ File = 'module-9-2-workflow-management.html'; Title = 'Workflow Management' },
      [pscustomobject]@{ File = 'module-9-3-monitoring-and-issue-resolution.html'; Title = 'Monitoring and Issue Resolution' },
      [pscustomobject]@{ File = 'module-9-4-continuous-improvement.html'; Title = 'Continuous Improvement' },
      [pscustomobject]@{ File = 'module-9-5-governance-execution.html'; Title = 'Governance Execution' }
    )
  },
  [pscustomobject]@{
    Number = 10
    Theme = 'MDM KPIs'
    IntroFile = 'module-10-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-10-1-mdm-kpis.html'; Title = 'MDM KPIs' },
      [pscustomobject]@{ File = 'module-10-2-business-performance-indicators.html'; Title = 'Business Performance Indicators' },
      [pscustomobject]@{ File = 'module-10-3-data-quality-scorecards.html'; Title = 'Data Quality Scorecards' },
      [pscustomobject]@{ File = 'module-10-4-roi-measurement.html'; Title = 'ROI Measurement' },
      [pscustomobject]@{ File = 'module-10-5-maturity-assessment.html'; Title = 'Maturity Assessment' }
    )
  },
  [pscustomobject]@{
    Number = 11
    Theme = 'Scaling MDM Programs'
    IntroFile = 'module-11-0-intro.html'
    IntroTitle = 'Introduction to Module'
    Pages = @(
      [pscustomobject]@{ File = 'module-11-1-scaling-mdm-programs.html'; Title = 'Scaling MDM Programs' },
      [pscustomobject]@{ File = 'module-11-2-ai-readiness-and-trusted-data.html'; Title = 'AI Readiness and Trusted Data' },
      [pscustomobject]@{ File = 'module-11-3-governance-evolution.html'; Title = 'Governance Evolution' },
      [pscustomobject]@{ File = 'module-11-4-emerging-trends.html'; Title = 'Emerging Trends' },
      [pscustomobject]@{ File = 'module-11-5-long-term-operating-model.html'; Title = 'Long-Term Operating Model' }
    )
  }
)

$completion = [pscustomobject]@{
  Number = 12
  Theme = 'Course Completion'
  IntroFile = 'course-completion.html'
  IntroTitle = 'Course Completion'
  Pages = @(
    [pscustomobject]@{ File = 'final-knowledge-check.html'; Title = 'Final Knowledge Check' },
    [pscustomobject]@{ File = 'certificate-of-completion.html'; Title = 'Certificate of Completion' }
  )
}

$groups = @($modules + $completion)

function Get-ModuleIconHtml {
  return @'
<svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
  <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
</svg>
'@
}

function Get-SupportNotesBlock {
  return @'
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
}

function Get-SidebarHtml {
  param(
    [object]$CurrentGroup,
    [string]$CurrentPageFile
  )

  $moduleIcon = Get-ModuleIconHtml
  $sidebar = @()

  foreach ($group in $groups) {
    $isActiveGroup = $group.Number -eq $CurrentGroup.Number
    $groupTitle = if ($group.Number -eq 12) { 'Course Completion' } else { 'Module ' + $group.Number }
    $activeClass = if ($isActiveGroup) { ' active' } else { '' }
    $children = @()

    foreach ($page in $group.Pages) {
      $childActive = if ($page.File -eq $CurrentPageFile) { ' active' } else { '' }
      $children += ('                <li class="sidebar-subnav-item"><a href="{0}" class="sidebar-subnav-link{1}">{2}</a></li>' -f $page.File, $childActive, $page.Title)
    }

    $sidebar += @"
          <li class="sidebar-nav-item">
            <details class="module-group">
              <summary class="sidebar-nav-link module-toggle$activeClass">
$moduleIcon                <a href="$($group.IntroFile)" class="module-summary-link">$groupTitle</a>
              </summary>
              <ul class="sidebar-subnav">
$($children -join "`n")
              </ul>
            </details>
          </li>
"@
  }

  return ($sidebar -join "`n")
}

function New-PageHtml {
  param(
    [object]$CurrentPage,
    [object]$CurrentGroup,
    [object]$PreviousPage,
    [object]$NextPage,
    [int]$PageNumber,
    [int]$TotalPages
  )

  $sidebar = Get-SidebarHtml -CurrentGroup $CurrentGroup -CurrentPageFile $CurrentPage.File
  $notesBlock = Get-SupportNotesBlock
  $backHref = if ($PreviousPage) { $PreviousPage.File } else { '../index.html' }
  $nextHref = if ($NextPage) { $NextPage.File } else { '../index.html' }
  $videoSrc = $blankVideo
  $caption = 'Video placeholder'
  $moduleLabel = if ($CurrentGroup.Number -eq 12) { 'Course Completion' } else { 'Module ' + $CurrentGroup.Number }
  $headerTitle = if ($CurrentGroup.Number -eq 12) { $CurrentPage.Title } else { "${moduleLabel}: $($CurrentPage.Title)" }

  return @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$headerTitle - Master Data Management</title>
  <link rel="stylesheet" href="../css/styles.css">
</head>
<body data-module-id="module-$($CurrentGroup.Number)" data-page-id="$($CurrentPage.File)">
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

$sidebar
        </ul>
      </nav>
    </aside>

    <div class="main-content">
      <header class="header">
        <h1 class="header-title">$headerTitle</h1>
        <div class="header-actions">
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $PageNumber of $TotalPages</span>
        </div>
      </header>

      <div class="content">
        <div class="module-content">
          <div class="card introduction-card">
            <h2 class="introduction-title">$($CurrentPage.Title)</h2>
            <figure class="introduction-figure">
              <div class="introduction-video-frame">
                <iframe
                  class="introduction-video"
                  src="$videoSrc"
                  frameborder="0"
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowfullscreen>
                </iframe>
              </div>
              <figcaption class="introduction-caption">$caption</figcaption>
            </figure>
          </div>

$notesBlock
        </div>

        <div style="margin-top: 48px; display: flex; justify-content: space-between; align-items: center;">
          <a href="$backHref" class="btn btn-primary">Back</a>
          <span style="color: var(--text-light); font-size: var(--font-size-sm);">Page $PageNumber of $TotalPages</span>
          <a href="$nextHref" class="btn btn-accent">Next</a>
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
}

$coursePages = New-Object System.Collections.Generic.List[object]

foreach ($group in $groups) {
  $sequence = @([pscustomobject]@{ File = $group.IntroFile; Title = $group.IntroTitle }) + $group.Pages
  for ($index = 0; $index -lt $sequence.Count; $index++) {
    $coursePages.Add([pscustomobject]@{
      Group = $group
      File = $sequence[$index].File
      Title = $sequence[$index].Title
      Number = $index + 1
      Total = $sequence.Count
    })
  }
}

for ($i = 0; $i -lt $coursePages.Count; $i++) {
  $currentPage = $coursePages[$i]
  $previousPage = if ($i -gt 0) { $coursePages[$i - 1] } else { $null }
  $nextPage = if ($i -lt ($coursePages.Count - 1)) { $coursePages[$i + 1] } else { $null }
  $html = New-PageHtml -CurrentPage $currentPage -CurrentGroup $currentPage.Group -PreviousPage $previousPage -NextPage $nextPage -PageNumber $currentPage.Number -TotalPages $currentPage.Total

  $target = Join-Path $lessons $currentPage.File
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($target, $html, $utf8NoBom)
}