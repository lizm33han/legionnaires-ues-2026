# upper-east-side-legionnaires-2026

Practice outbreak investigation project tracking the July 2026 Legionnaires' disease
cluster on Manhattan's Upper East Side (ZIP codes 10028, 10128, 10075). Built to
practice applied R data analysis and reproducible reporting workflows. This is a
**practice project**, published as a live snapshot and intended to be revisited in
a few weeks once the outbreak resolves and more complete data may be available.

## Background

In early July 2026, NYC Health identified a community cluster of Legionnaires'
disease centered on the Carnegie Hill, Yorkville, and Lenox Hill neighborhoods
(New York City Department of Health and Mental Hygiene, 2026). The suspected
source is a cooling tower in the affected area; as of this snapshot, no
confirmed source match has been made (Lewis, 2026). No deaths have been
reported ("Legionnaires' cluster grows to 23 cases," 2026). This follows a
larger, more severe Legionnaires' outbreak in Central Harlem the previous
summer (100+ cases, 7 deaths; "Legionnaires cluster grows to 18 cases," 2026).

## Project Status

**Snapshot date: July 7, 2026.** The outbreak was still active and case counts
still rising at the time of publication. This project will be revisited in a
few weeks to compare the early trajectory captured here against the outbreak's
eventual resolution.

## Repository Structure

```
├── data/
│   └── clean/
│       └── ues_legionnaires_cases.csv    # manually compiled case counts
├── output/
│   ├── ues_legionnaires_cumulative_curve.png
|   └── ues_legionnaires_new_cases.png       
├── report/
│   └── ues-legionnaires-report.Rmd       # full R Markdown analysis
└── README.md
```

## Data Sources

No public line-list or case-level dashboard was available for this outbreak at
the time of analysis. Case counts were manually compiled from NYC Health
Department press releases and news coverage:

| Date | Cumulative cases reported | Source |
|---|---|---|
| Jul 2, 2026 | 2 | New York City Department of Health and Mental Hygiene (2026) |
| Jul 3, 2026 | 10 | "Legionnaires' cluster grows to 14 cases on Upper East Side" (2026) |
| Jul 5, 2026 | 18 | "Legionnaires cluster grows to 18 cases on the Upper East Side" (2026) |
| Jul 6, 2026 | 18 | Russo-Lennon (2026) |
| Jul 7, 2026 | 23 | "Legionnaires' cluster grows to 23 cases on Upper East Side" (2026) |

Additional background context: Lewis (2026); Durkee (2026). Full APA citations
for all sources are in the References section below.

## References

Durkee, A. (2026, July 6). Legionnaire's outbreak hits Upper East Side—Central
&nbsp;&nbsp;&nbsp;&nbsp;Park visitors should monitor for symptoms. *Forbes*.
&nbsp;&nbsp;&nbsp;&nbsp;https://www.forbes.com/sites/alisondurkee/2026/07/06/central-park-visitors-warned-as-nyc-faces-legionnaires-outbreak/

Legionnaires cluster grows to 18 cases on the Upper East Side. (2026, July 6).
&nbsp;&nbsp;&nbsp;&nbsp;*NY1*. https://ny1.com/nyc/all-boroughs/politics/2026/07/06/18-legionnaires-cases-upper-east-side-

Legionnaires' cluster grows to 14 cases on Upper East Side. (2026, July 6).
&nbsp;&nbsp;&nbsp;&nbsp;*NY1*. https://ny1.com/nyc/all-boroughs/news/2026/07/06/legionnaires--cluster-grows-to-14-cases-on-upper-east-side

Legionnaires' cluster grows to 23 cases on Upper East Side. (2026, July 7).
&nbsp;&nbsp;&nbsp;&nbsp;*NY1*. https://ny1.com/nyc/all-boroughs/health/2026/07/07/legionnaires--cluster-upper-east-side-new-york-city-2026

Lewis, C. (2026, July 7). Here's what to know about the Legionnaires' disease
&nbsp;&nbsp;&nbsp;&nbsp;outbreak on the Upper East Side. *Gothamist*.
&nbsp;&nbsp;&nbsp;&nbsp;https://gothamist.com/news/heres-what-to-know-about-the-legionnaires-disease-outbreak-on-the-upper-east-side

New York City Department of Health and Mental Hygiene. (2026, July 2). NYC
&nbsp;&nbsp;&nbsp;&nbsp;Health Department investigating community cluster of Legionnaires'
&nbsp;&nbsp;&nbsp;&nbsp;disease on the Upper East Side [Press release].
&nbsp;&nbsp;&nbsp;&nbsp;https://www.nyc.gov/site/doh/about/press/pr2026/nyc-health-dept-investigating-legionnaires-cluster-ues.page

Russo-Lennon, B. (2026, July 6). Legionnaires' disease outbreak on Upper East
&nbsp;&nbsp;&nbsp;&nbsp;Side climbs to 18 cases, officials say. *amNewYork*.
&nbsp;&nbsp;&nbsp;&nbsp;https://www.amny.com/news/legionnaires-disease-outbreak-upper-east-side-07062026/

### Known limitation

This is the central data-quality caveat of the project, and the main practice
lesson it's built around:

- **Dates reflect when cases were publicly reported, not date of symptom onset.**
  This is a reporting curve, not a true epidemic curve.
- **Reporting intervals are irregular**, so "new case" values represent counts
  accumulated between press releases rather than daily incidence.
- Counts are subject to revision as cases are confirmed, reclassified, or ruled
  out; figures reflect the count as of each source's publication time, not a
  final tally.
- Should NYC Health later publish case-level data via its
  [open data portal](https://www.nyc.gov/site/doh/data/data-home.page), that
  source would supersede this compiled dataset.

## Methods

Data compiled and cleaned in R (tidyverse). Cumulative case curve and derived
new-cases-per-reporting-interval chart built with ggplot2. Full analysis and
narrative in `report/ues-legionnaires-report.Rmd`, knit to Github document.

## Reproducing

1. Clone the repo
2. Open in RStudio / Posit Cloud
3. Knit `report/ues-legionnaires-report.Rmd`

## AI Assistance Disclosure

This project was developed with AI assistance (Claude, Anthropic) for code
structure, drafting, and citation formatting. Data compilation, source
verification, and analytical interpretation were reviewed independently.

## Revisit Plan

To be updated in a follow-up pass once the outbreak is declared resolved:
- Final case count and outcome data
- Confirmed source (if identified)
- Comparison of early-cluster trajectory (this snapshot) vs. final curve
