# AI Landing Zone Interactive Dashboard

A self-contained, Microsoft Fluent-inspired dashboard for an interactive, one-hour AI landing zone workshop.

## Open the dashboard

**Live dashboard:** https://thankful-ground-035389910.3.azurestaticapps.net

The Azure-hosted version is public and requires no sign-in. Only `index.html` is published; the presenter guide is not included.

Download or clone this repository and open `index.html` in a modern browser. No build, package installation, Azure subscription, or backend is required.

The dashboard includes:

- An **Opening scenario** with a landing-zone definition, session purpose and explicit use-case, Foundry experience, networking, model and region assumptions.
- A **visual architecture explorer** that evolves the same three-team internal assistant from model access to permitted company knowledge, then approved actions. Agent actions retain the knowledge path. User entry starts with **Teams / M365 / web**; **Private hybrid** is a separate selectable path, not a prerequisite.
- An **AI Landing Zone - High Level** view with a clickable hub/spoke map and supporting enterprise foundation, platform, workload, and operations blueprint.
- Illustrated **Follow an AI request** journeys for model-only, grounded-answer, and agent-action workloads.
- **Play / Pause**, **Next step**, and clickable stage illustrations for request, gateway, workload, and policy walkthroughs. Playback is opt-in, stops on navigation or when the browser tab is hidden, and respects reduced-motion preferences.
- **Enlarge diagram** views with zoom controls and clickable component details. Close or press Escape to return without changing the original diagram.
- Three **You make the architecture call** challenges with immediate explanatory feedback on shared AI access, private data, and policy enforcement.
- APIM hub and Foundry spoke diagrams with illustrative request and workload scenarios.
- An optional three-card or full twelve-card service sort for the documented standard Foundry Agent Service setup. Placement controls are available before explanations; baseline match is scenario-specific.
- Microsoft-managed and customer-managed networking comparisons.
- A BYO VNet diagram that separates the delegated agent runtime subnet from the nondelegated private endpoint subnet, with explicit firewall-placement guidance.
- An optional **Networking Deep Dive** reference tab with hosted/prompt traffic paths, clickable ownership details, subnet address budgets, managed outbound modes, private DNS examples, and troubleshooting checks.
- Responsive primary views designed for a 1366x768 presentation, with diagrams, manual-step explanations and navigation visible together. Architecture maps, blueprints, visual walkthroughs and network diagrams are visible in the main sections, not hidden in Reference accordions. Technical notes and policy details can still be expanded separately.
- The actual **Management group -> Subscription -> Resource group -> Resource** hierarchy, Audit versus Deny scenarios, and named policy recommendations with supported effects, coverage, ownership and exception handling.
- Browser-local decisions with **Owner, Next action, Target date and Status**, migrated legacy notes, readiness prompts and plain-text export. A proposal is not an agreed decision.
- A header **Reset demo** button that stops playback, restores activities and diagram selections, and returns to **Opening scenario**. Decisions, parking-lot notes, theme, and full-screen mode are kept.
- Light/dark themes, full-screen controls, and responsive layouts.
- Primary **Previous / Next section** navigation and a seven-stop current-section indicator; the sidebar can be hidden. The accelerator link, reset and theme controls are secondary.
- **Collapse / Expand** controls on the main sections and individual official diagrams, plus **Collapse all / Expand all** for the current tab. Sections start expanded; collapsing preserves selections and notes while stopping playback. Expansion choices remain during page navigation, and **Reset demo** expands everything again. **Focus explorer** opens the complete explorer even if its section was collapsed.
- **Move up / Move down** arrows beside the section controls reorder sibling sections in the current tab (or the two official diagrams within their group). Moves preserve selections, notes and collapsed state, and pause playback. The order remains during tab navigation; reload or **Reset demo** restores the default order. The guided tab sequence is unchanged.
- Clear **Microsoft Foundry** and **Microsoft Copilot Studio** role callouts across the opening, architecture, ownership, networking, governance and decision prompts. The conversational UX can be a custom app or Copilot Studio; the illustrated application node is the Azure-side backend. Copilot Studio is SaaS, not an agent subnet deployment, and its supported integration path is separate from the illustrated hybrid route.
- Both original **Agent Landing Zone** and **AI Gateway Landing Zone** architecture diagrams from Azure/AI-Landing-Zones are visible in **AI Landing Zone - High Level**. They are embedded for offline use, with enlargement/zoom controls and the Microsoft MIT license notice. Presentation source footnotes and citation links are omitted.

## Presenter notes

The published dashboard contains customer-facing architecture content and interactive controls, not presenter preparation or how-to guidance. Rehearsal and fallback guidance stays here in the README.

`AI-Landing-Zone-Dashboard-Talk-Track.docx` is a **legacy presenter guide** and has not been revised for this guided route or the latest technical corrections. Use the current in-app scenario and explanations for this workshop. The DOCX is not published on the Azure site.

### Optional presentation interactions

Start on **Opening scenario**, then follow **scenario -> evolving architecture -> shared/workload ownership -> one gateway outcome -> network decision -> Audit versus Deny -> decisions**. Use **Next section** rather than navigating through every reference panel. The main gateway example starts with **Missing identity**; **More outcomes**, including safely configured caching, is available for questions.

In the explorer, progress from **AI application** to **Add company knowledge** to **Add agent actions**. Click a service for its responsibility and use **Next hop** to narrate manually. **Trace request** is optional playback. **Focus explorer** enlarges the complete interactive scene; Escape returns it with selections intact. Layer buttons change the illustration, not security controls.

The hub/spoke map, blueprint, additional request walkthrough and challenges are directly visible below the explorer, followed by the original Agent and AI Gateway architectures. Hub/spoke designs and network diagrams are also directly visible in their main sections. The full card sort and networking deep dive remain outside the guided route. **Next step** or clicking a stage controls scenario pacing; **Show overview** clears the spotlight without changing the selected case.

Use **Enlarge diagram**, then zoom as needed. Supported component details remain clickable. Illustrations are embedded SVGs and work offline. Notes and exercise state are saved only in this browser; this is not shared voting or collaborative notes.

The explorer's scenes are conceptual application flows, not a fixed Foundry runtime topology: retrieval is authorized by the workload, model calls use the illustrated gateway path, and the agent-action example authorizes a tool operation before execution. Request tracing is opt-in, pauses on navigation, backgrounding, or component selection, and ends after one round trip. Reduced-motion users can step through the same flow without moving markers. These are original explanatory illustrations, not official Azure service icons.

The explorer starts with **Users → Teams / M365 / web → Azure backend → APIM → model**, showing logical integrations rather than a fixed network path. Cloud/web channels remain outside the Azure boundary. Publishing, caller identity and backend endpoint reachability need configuration; the diagram does not imply that all Teams or Microsoft 365 requests use APIM.

**Private hybrid** changes the entry to **Users → connectivity hub (ExpressRoute/VPN) → Azure application → APIM → model**, including the return through the hub. It changes the entry illustration without resetting the selected workload; changing entry pauses playback, and Reset restores the cloud/web entry. The separate hub/spoke map is explicitly a private-hybrid example. APIM is a separate API gateway; DNS is not an inline request hop, and firewall inspection depends on routing.

## Important boundaries

- Scenarios are local illustrations, not live Azure calls, telemetry, policy evaluations, or cost measurements.
- Service classifications are a workshop reference baseline, not universal deployment requirements. Validate current service, SKU, region, and hosting-mode support before implementing an architecture.
- Decisions are stored in the current browser's local storage, not synchronized to a shared service. Export them before switching browsers or clearing browser data. Storage failures are displayed in the dashboard.
- Microsoft/Azure-inspired styling does not make this an official Azure portal or Microsoft product.

## Optional networking reference

**Networking Deep Dive** is outside the seven-stop guided route (which spans six sections) and does not affect section progress. Its topic, agent-path, subnet-size and outbound-mode selections are saved locally. Use it for specific questions.

Technical guidance was reviewed on October 4, 2026. The reference acknowledges conflicting address-range guidance and uses non-overlapping RFC1918 space for the example. Confirm other ranges against the selected deployment path before allocation. Capability hosts and newer capability settings are not one universal provisioning flow.

Subnet figures show address arithmetic and an illustrative below-80% planning envelope, **not** guaranteed session capacity. Validate project-level overhead, peak traffic, current regional quotas, API/agent support, and maintenance headroom. Outbound-mode buttons only change the illustration: they do not configure Azure, simulate real traffic, or imply that managed-network transitions are reversible.

## Deployment

### Current hosting: Azure Static Web Apps

The dashboard is hosted on Azure Static Web Apps **Free** in **Central US**:

- Resource group: `rg-ailandingzone-dashboard-dev-44e3`
- App: `swa-ailandingzone-dashboard-dev-44e3`
- Estimated hosting cost: $0/month within Free-tier limits; no production SLA.

This is a manual content deployment, not a GitHub-connected deployment. Pushing to `main` does **not** automatically update the Azure site.

**Friendly domain:** Azure assigns the `azurestaticapps.net` hostname automatically; renaming the resource does not change it. An address such as `ai-landing-zone.example.com` requires a domain you own, DNS configuration, and custom-domain validation. No custom domain is configured for this deployment yet.

#### Publish dashboard updates

Requirements: Azure CLI, Node.js/npm, and Azure permission to retrieve the app's deployment token. Run this PowerShell example from the repository root after editing `index.html`. It publishes only that file, keeps the token in process memory, and removes the staging file afterward.

```powershell
az login
$subscription = '<your Azure subscription ID>'
$resourceGroup = 'rg-ailandingzone-dashboard-dev-44e3'
$app = 'swa-ailandingzone-dashboard-dev-44e3'
# Use a space-free staging path for the Windows deployment client.
$stage = Join-Path $HOME ("swa-publish-" + [guid]::NewGuid().ToString('N'))
if ($stage.Contains(' ')) { throw 'Choose a writable staging path without spaces.' }
New-Item -ItemType Directory -Path $stage -ErrorAction Stop | Out-Null
try {
    Copy-Item -LiteralPath .\index.html -Destination (Join-Path $stage 'index.html') -ErrorAction Stop
    $env:SWA_CLI_DEPLOYMENT_TOKEN = az staticwebapp secrets list `
        --name $app --resource-group $resourceGroup --subscription $subscription `
        --query properties.apiKey -o tsv
    if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($env:SWA_CLI_DEPLOYMENT_TOKEN)) {
        throw 'Unable to retrieve the deployment token.'
    }
    npx --yes @azure/static-web-apps-cli@2.0.10 deploy $stage --app-name $app --env production
    if ($LASTEXITCODE -ne 0) { throw 'Dashboard deployment failed.' }
} finally {
    Remove-Item Env:\SWA_CLI_DEPLOYMENT_TOKEN -ErrorAction SilentlyContinue
    Remove-Item -LiteralPath (Join-Path $stage 'index.html') -ErrorAction SilentlyContinue
    Remove-Item -LiteralPath $stage -ErrorAction SilentlyContinue
}
```

Open the live URL after publishing. Never print the deployment token, pass it as a command-line argument, or commit it. Do not upload the repository root: it contains presenter notes and infrastructure files that are not part of the public dashboard.

#### Provision the hosting infrastructure

`infra\main.bicep` creates the resource group and Free Static Web App. For another environment, copy and edit `infra\main.parameters.json` with your own environment name, supported region, and deployment metadata before running:

```powershell
az deployment sub what-if --name dashboard-hosting --location centralus `
    --subscription '<your Azure subscription ID>' `
    --template-file infra\main.bicep --parameters infra\main.parameters.json
az deployment sub create --name dashboard-hosting --location centralus `
    --subscription '<your Azure subscription ID>' `
    --template-file infra\main.bicep --parameters infra\main.parameters.json
```

Review the preview before creating resources. Infrastructure provisioning alone does not publish content; use the update procedure above with the newly created app and resource group names.

### Option 1: GitHub Pages

This repository is ready for static hosting: `index.html` is already in the repository root. No build command, dependencies, environment variables, or Azure resources are needed.

1. Open this repository on GitHub and go to **Settings > Pages**. You need permission to manage the repository's Pages settings.
2. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
3. Select the **main** branch and the **/ (root)** folder, then select **Save**.
4. Wait for the Pages deployment to finish. Check the repository's **Actions** tab for the Pages build/deployment status.
5. Return to **Settings > Pages** and open the published URL shown there. Use that URL when sharing the dashboard.
6. Confirm the navigation, Hub/Spoke scenarios, service sort, theme switch, and **Export decisions** work in the hosted version.

If Pages is unavailable, check your repository visibility, GitHub plan, organization policies, and permissions. Repository visibility alone does not guarantee that a Pages site is private; verify site access before sharing customer-sensitive material.

**Publishing updates:** commit changes to `index.html` and push them to `main`. GitHub Pages redeploys from that branch. After the deployment succeeds, refresh the site; use a hard refresh if the previous version is still cached.

**Published files:** branch-based deployment from the repository root also makes other publishable files, including the presenter talk track, accessible on the site. If the presenter notes must not be distributed, use a separate deployment location containing only `index.html` instead.

### Option 2: Another static web host

1. Create a static site using your preferred hosting provider.
2. Upload only `index.html` to the site's public root directory. If the host requires an output folder, place `index.html` inside that folder and select it as the publish directory.
3. Choose a static/no-framework configuration. There is no build step or server process to run.
4. Enable HTTPS and configure access restrictions appropriate for your audience.
5. Open the host's published URL and perform the same interaction checks listed above.

The dashboard requires browser JavaScript. If your hosting environment enforces a Content Security Policy, its configuration must permit the dashboard's inline scripts and styles through an approved policy, such as matching hashes.

### Offline presentation

Use **Offline copy** in the header, or copy `index.html`, then open the downloaded file directly in a modern browser. The dashboard and diagrams work without a network connection; the accelerator link requires internet. The download action is hidden when a local file is already open.

Before presenting, rehearse at the actual sharing resolution, use manual stepping and review retained notes. Every launch and **Reset demo** starts on the opening scenario. Reset does not delete decisions. Export decisions before closing or switching between the live site and offline copy; these have separate browser-local storage.

### Data and access considerations

- Hosting serves the dashboard; it does not create a backend, user accounts, or shared session storage.
- Decisions remain in each visitor's browser. Opening a local file and opening the hosted site use separate storage contexts, so existing notes do not transfer automatically.
- Use **Export decisions** before changing browsers, clearing browser data, or moving to another URL. Export is a plain-text handoff, not an importable session backup.
- For restricted audiences, use a host with appropriate authentication and access controls. Do not treat an unlisted URL as access control.

These steps describe how to deploy the app; hosting is not enabled automatically by cloning or pushing this repository.
