# AI Landing Zone Interactive Dashboard

A self-contained, Microsoft Fluent-inspired dashboard for an interactive, one-hour AI landing zone workshop.

## Open the dashboard

Download or clone this repository and open `index.html` in a modern browser. No build, package installation, Azure subscription, or backend is required.

The dashboard includes:

- A clickable landing zone architecture map.
- APIM hub and Foundry spoke diagrams with illustrative request and workload scenarios.
- A drag-and-drop service sort with immediate baseline feedback and keyboard-friendly placement controls.
- Microsoft-managed and customer-managed networking comparisons.
- Governance discussion controls and Audit versus Deny scenarios.
- Locally saved decisions and open questions, with a plain-text export.
- Light/dark themes, full-screen controls, and responsive layouts.

## Presenter notes

`AI-Landing-Zone-Dashboard-Talk-Track.docx` contains the one-hour agenda, talking points, click cues, and discussion prompts. Keep this document separate from the customer-facing dashboard during presentation.

## Important boundaries

- Scenarios are local illustrations, not live Azure calls, telemetry, policy evaluations, or cost measurements.
- Service classifications are a workshop reference baseline, not universal deployment requirements. Validate current service, SKU, region, and hosting-mode support before implementing an architecture.
- Decisions are stored in the current browser's local storage, not synchronized to a shared service. Export them before switching browsers or clearing browser data. Storage failures are displayed in the dashboard.
- Microsoft/Azure-inspired styling does not make this an official Azure portal or Microsoft product.

## Hosting

`index.html` can be served by any static web host, including GitHub Pages. Hosting is not configured automatically by this repository. Browser storage remains local to each visitor and hosting origin.
