$ErrorActionPreference = 'Stop'

$repo = 'c:\Users\L570\Desktop\OpenDQ'
$lessonsDir = Join-Path $repo 'lessons'

$moduleIcon = @'
<svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
  <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
</svg>
'@

$modules = @(
  [pscustomobject]@{
    Number = 1
    Name = 'Foundations of Master Data Management'
    IntroFile = 'module-1-0-intro.html'
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
    Name = 'Understanding Master Data'
    IntroFile = 'module-2-0-intro.html'
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
    Name = 'MDM Strategy and Business Case'
    IntroFile = 'module-3-0-intro.html'
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
    Name = 'Data Quality Assessment'
    IntroFile = 'module-4-0-intro.html'
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
    Name = 'Tools and Technologies'
    IntroFile = 'module-5-0-intro.html'
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
    Name = 'Data Governance Frameworks'
    IntroFile = 'module-6-0-intro.html'
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
    Name = 'Integration Approaches'
    IntroFile = 'module-7-0-intro.html'
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
    Name = 'MDM Implementation Roadmap'
    IntroFile = 'module-8-0-intro.html'
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
    Name = 'Operating and Managing MDM'
    IntroFile = 'module-9-0-intro.html'
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
    Name = 'Measuring Success and Value'
    IntroFile = 'module-10-0-intro.html'
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
    Name = 'Sustaining MDM'
    IntroFile = 'module-11-0-intro.html'
    Pages = @(
      [pscustomobject]@{ File = 'module-11-1-scaling-mdm-programs.html'; Title = 'Scaling MDM Programs' },
      [pscustomobject]@{ File = 'module-11-2-ai-readiness-and-trusted-data.html'; Title = 'AI Readiness and Trusted Data' },
      [pscustomobject]@{ File = 'module-11-3-governance-evolution.html'; Title = 'Governance Evolution' },
      [pscustomobject]@{ File = 'module-11-4-emerging-trends.html'; Title = 'Emerging Trends' },
      [pscustomobject]@{ File = 'module-11-5-long-term-operating-model.html'; Title = 'Long-Term Operating Model' }
    )
  }
)

$completionByContext = @{
  lessons = [pscustomobject]@{
    IntroFile = 'course-completion.html'
    Pages = @(
      [pscustomobject]@{ File = 'certificate-of-completion.html'; Title = 'Certificate of Completion' }
    )
  }
  root = [pscustomobject]@{
    IntroFile = 'course-completion.html'
    Pages = @(
      [pscustomobject]@{ File = 'certificate-of-completion.html'; Title = 'Certificate of Completion' }
    )
  }
}

$lessonPageSet = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
$moduleIndexByFile = @{}
foreach ($m in $modules) {
  [void]$lessonPageSet.Add($m.IntroFile)
  $moduleIndexByFile[$m.IntroFile] = $m.Number
  foreach ($p in $m.Pages) {
    [void]$lessonPageSet.Add($p.File)
    $moduleIndexByFile[$p.File] = $m.Number
  }
}
foreach ($p in $completionByContext.lessons.Pages) {
  [void]$lessonPageSet.Add($p.File)
}
[void]$lessonPageSet.Add($completionByContext.lessons.IntroFile)

function Get-FormattedModuleName {
  param([int]$Number, [string]$Name)
  return ('{0:D2} {1}' -f $Number, $Name)
}

function New-Sidebar {
  param(
    [string]$Context,
    [string]$CurrentFile,
    [bool]$IsDashboard
  )

  $rootHref = if ($Context -eq 'lessons') { '../index.html' } else { 'index.html' }
  $prefix = if ($Context -eq 'lessons') { '' } else { 'lessons/' }
  $completion = $completionByContext[$Context]

  $lines = [System.Collections.Generic.List[string]]::new()
  $lines.Add('    <aside class="sidebar">')
  $lines.Add('      <div class="sidebar-header">')
  $lines.Add('        <div class="sidebar-title">Master Data Management</div>')
  $lines.Add('      </div>')
  $lines.Add('')
  $lines.Add('      <nav>')
  $lines.Add('        <ul class="sidebar-nav">')
  $lines.Add('          <li class="sidebar-nav-item">')

  $dashboardClass = if ($IsDashboard) { 'sidebar-nav-link active' } else { 'sidebar-nav-link' }
  $lines.Add('            <a href="' + $rootHref + '" class="' + $dashboardClass + '">')
  $lines.Add('              <svg class="nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">')
  $lines.Add('                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>')
  $lines.Add('                <polyline points="9 22 9 12 15 12 15 22"></polyline>')
  $lines.Add('              </svg>')
  $lines.Add('              Dashboard')
  $lines.Add('            </a>')
  $lines.Add('          </li>')

  foreach ($m in $modules) {
    $groupActive = ($moduleIndexByFile.ContainsKey($CurrentFile) -and $moduleIndexByFile[$CurrentFile] -eq $m.Number)
    $summaryClass = if ($groupActive) { 'sidebar-nav-link module-toggle active' } else { 'sidebar-nav-link module-toggle' }

    $lines.Add('          <li class="sidebar-nav-item">')
    $lines.Add('            <details class="module-group">')
    $lines.Add('              <summary class="' + $summaryClass + '">')
    foreach ($iconLine in ($moduleIcon -split "`r?`n")) {
      if ($iconLine -ne '') {
        $lines.Add($iconLine)
      }
    }
    $lines.Add('                <a href="' + $prefix + $m.IntroFile + '" class="module-summary-link">' + (Get-FormattedModuleName -Number $m.Number -Name $m.Name) + '</a>')
    $lines.Add('              </summary>')
    $lines.Add('              <ul class="sidebar-subnav">')

    foreach ($p in $m.Pages) {
      $childClass = if ($CurrentFile -ieq $p.File) { 'sidebar-subnav-link active' } else { 'sidebar-subnav-link' }
      $lines.Add('                <li class="sidebar-subnav-item"><a href="' + $prefix + $p.File + '" class="' + $childClass + '">' + $p.Title + '</a></li>')
    }

    $lines.Add('              </ul>')
    $lines.Add('            </details>')
    $lines.Add('          </li>')
  }

  $completionActive = ($CurrentFile -ieq $completion.IntroFile) -or ($completion.Pages.File -contains $CurrentFile)
  $completionSummaryClass = if ($completionActive) { 'sidebar-nav-link module-toggle active' } else { 'sidebar-nav-link module-toggle' }

  $lines.Add('          <li class="sidebar-nav-item">')
  $lines.Add('            <details class="module-group">')
  $lines.Add('              <summary class="' + $completionSummaryClass + '">')
  foreach ($iconLine in ($moduleIcon -split "`r?`n")) {
    if ($iconLine -ne '') {
      $lines.Add($iconLine)
    }
  }
  $lines.Add('                <a href="' + $prefix + $completion.IntroFile + '" class="module-summary-link">Course Completion</a>')
  $lines.Add('              </summary>')
  $lines.Add('              <ul class="sidebar-subnav">')

  foreach ($p in $completion.Pages) {
    $childClass = if ($CurrentFile -ieq $p.File) { 'sidebar-subnav-link active' } else { 'sidebar-subnav-link' }
    $lines.Add('                <li class="sidebar-subnav-item"><a href="' + $prefix + $p.File + '" class="' + $childClass + '">' + $p.Title + '</a></li>')
  }

  $lines.Add('              </ul>')
  $lines.Add('            </details>')
  $lines.Add('          </li>')
  $lines.Add('        </ul>')
  $lines.Add('      </nav>')
  $lines.Add('    </aside>')

  return ($lines -join "`r`n")
}

function Replace-Sidebar {
  param(
    [string]$FilePath,
    [string]$SidebarHtml
  )

  $content = [System.IO.File]::ReadAllText($FilePath)
  $pattern = '(?s)<aside class="sidebar">.*?</aside>'
  if (-not [System.Text.RegularExpressions.Regex]::IsMatch($content, $pattern)) {
    throw "Sidebar block not found in $FilePath"
  }

  $updated = [System.Text.RegularExpressions.Regex]::Replace($content, $pattern, [System.Text.RegularExpressions.MatchEvaluator]{ param($m) $SidebarHtml }, 1)
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($FilePath, $updated, $utf8NoBom)
}

$lessonFiles = Get-ChildItem -Path $lessonsDir -Filter '*.html' -File
foreach ($file in $lessonFiles) {
  if (-not $lessonPageSet.Contains($file.Name)) {
    continue
  }

  $sidebar = New-Sidebar -Context 'lessons' -CurrentFile $file.Name -IsDashboard:$false
  Replace-Sidebar -FilePath $file.FullName -SidebarHtml $sidebar
}

$indexPath = Join-Path $repo 'index.html'
$indexSidebar = New-Sidebar -Context 'root' -CurrentFile 'index.html' -IsDashboard:$true
Replace-Sidebar -FilePath $indexPath -SidebarHtml $indexSidebar

$rootCompletionPages = @('course-completion.html','certificate-of-completion.html')
foreach ($name in $rootCompletionPages) {
  $path = Join-Path $repo $name
  if (Test-Path $path) {
    $sidebar = New-Sidebar -Context 'root' -CurrentFile $name -IsDashboard:$false
    Replace-Sidebar -FilePath $path -SidebarHtml $sidebar
  }
}
