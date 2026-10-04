# AI Landing Zone Interactive Dashboard

A self-contained, Microsoft Fluent-inspired dashboard for an interactive, one-hour AI landing zone workshop.

## Open the dashboard

**Live dashboard:** https://thankful-ground-035389910.3.azurestaticapps.net

The Azure-hosted version is public and requires no sign-in. Only `index.html` is published; the presenter guide is not included.

Download or clone this repository and open `index.html` in a modern browser. No build, package installation, Azure subscription, or backend is required.

The dashboard includes:

- A large **visual architecture explorer** at the top of the first tab, with original service illustrations, switchable AI/knowledge/agent architectures, clickable responsibility layers, and animated round-trip request paths through an explicit hybrid connectivity hub.
- An **AI Landing Zone - High Level** view with a clickable hub/spoke map and supporting enterprise foundation, platform, workload, and operations blueprint.
- Illustrated **Follow an AI request** journeys for model-only, grounded-answer, and agent-action workloads.
- **Play / Pause**, **Next step**, and clickable stage illustrations for request, gateway, workload, and policy walkthroughs. Playback is opt-in, stops on navigation or when the browser tab is hidden, and respects reduced-motion preferences.
- **Enlarge diagram** views with zoom controls and clickable component details. Close or press Escape to return without changing the original diagram.
- Three **You make the architecture call** challenges with immediate explanatory feedback on shared AI access, private data, and policy enforcement.
- APIM hub and Foundry spoke diagrams with illustrative request and workload scenarios.
- A drag-and-drop service sort with immediate baseline feedback and keyboard-friendly placement controls.
- Microsoft-managed and customer-managed networking comparisons.
- A BYO VNet diagram that separates the delegated agent runtime subnet from the nondelegated private endpoint subnet, with explicit firewall-placement guidance.
- An optional **Networking Deep Dive** reference tab with hosted/prompt traffic paths, clickable ownership details, subnet address budgets, managed outbound modes, private DNS examples, and troubleshooting checks.
- Spacious network diagrams with separate hybrid-connectivity paths and arrow labels; smaller screens scroll within the diagram instead of squeezing its text.
- Governance discussion controls and Audit versus Deny scenarios.
- Locally saved decisions and open questions, with a plain-text export.
- Light/dark themes, full-screen controls, and responsive layouts.
- A prominent **Deployment accelerator** primary button in the sticky desktop header, expanding to full width on phones. It opens the AI Landing Zones accelerator's AI gateway section in a new tab, leaving the dashboard open. It links to guidance; it does not create Azure resources.

## Presenter notes

`AI-Landing-Zone-Dashboard-Talk-Track.docx` contains the one-hour agenda, talking points, click cues, and discussion prompts. It matches the current **AI Landing Zone - High Level** tab, seven-part blueprint, revised networking diagrams, and **Deployment accelerator** button. The blueprint walkthrough and accelerator visit fit within the existing 60 minutes. Keep this document separate from the customer-facing dashboard during presentation; it is not published on the Azure site.

### Optional presentation interactions

Start with **See the architecture come to life**. Switch from **AI application** to **Add company knowledge** or **Add agent actions** to show which components and paths change. Click a service illustration for its responsibility, use **Trace request** for moving request markers, or **Next hop** to narrate at your own pace. **Focus explorer** enlarges the complete interactive scene; Escape returns it to the page with its selections intact. Layer buttons show or hide visual context only, not actual security controls. **Reset explorer** restores the initial diagram and all layers.

In **AI Landing Zone - High Level**, use **Follow an AI request** and one architecture challenge in place of part of the existing discussion, not as additional timed segments. **Play walkthrough** spotlights one illustrated stage at a time; **Next step** or clicking a stage lets you control the pace. **Show overview** clears the spotlight while preserving the selected scenario and its outcome. The same controls appear in the existing gateway, workload, and policy scenarios.

Use **Enlarge diagram** for a room-sized view, then zoom as needed. Where the source diagram supports component details, those remain clickable in the enlarged view. The new illustrations are embedded SVGs, so they work offline without image downloads. Challenges are local discussion aids, not a live audience-voting system; their answers and playback position are not saved to customer notes. The separate DOCX keeps the original 60-minute agenda.

The explorer's scenes are conceptual application flows, not a fixed Foundry runtime topology: retrieval is authorized by the workload, model calls use the illustrated gateway path, and the agent-action example authorizes a tool operation before execution. Request tracing is opt-in, pauses on navigation, backgrounding, or component selection, and ends after one round trip. Reduced-motion users can step through the same flow without moving markers. These are original explanatory illustrations, not official Azure service icons.

The private hybrid example follows **on-premises users → ExpressRoute/VPN → connectivity hub → Azure application → APIM → model**, with the response returning through the hub. Click **Connectivity hub** for hybrid gateway, routing, shared DNS, and route-dependent firewall responsibilities. APIM is a separate API gateway and can live in a shared-services spoke. DNS supports name resolution rather than being an inline request hop. The supporting hub/spoke map shows the related case of an on-premises client application calling APIM directly through the connectivity hub.

## Important boundaries

- Scenarios are local illustrations, not live Azure calls, telemetry, policy evaluations, or cost measurements.
- Service classifications are a workshop reference baseline, not universal deployment requirements. Validate current service, SKU, region, and hosting-mode support before implementing an architecture.
- Decisions are stored in the current browser's local storage, not synchronized to a shared service. Export them before switching browsers or clearing browser data. Storage failures are displayed in the dashboard.
- Microsoft/Azure-inspired styling does not make this an official Azure portal or Microsoft product.

## Optional networking reference

**Networking Deep Dive** is separate from the six core workshop segments and does not affect session progress or the 60-minute agenda. Its topic, agent-path, subnet-size, and outbound-mode selections are saved locally with the existing session; older saved sessions remain compatible. Use it for questions rather than adding it to the timed walkthrough.

The reference adapts the supplied networking deck into generic diagrams and technical explanations, without publishing the source presentation or customer-specific architecture labels. Networking guidance was checked on September 30, 2026. Unlike the deck's older capacity examples, it does not assume a universal 50-session quota, a fixed replica-to-IP formula, or a future relaxation of supported address ranges.

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

Download `index.html` and open it directly in a modern browser. The dashboard and its supporting diagrams work without a network connection. The optional **Deployment accelerator** link requires internet access.

### Data and access considerations

- Hosting serves the dashboard; it does not create a backend, user accounts, or shared session storage.
- Decisions remain in each visitor's browser. Opening a local file and opening the hosted site use separate storage contexts, so existing notes do not transfer automatically.
- Use **Export decisions** before changing browsers, clearing browser data, or moving to another URL. Export is a plain-text handoff, not an importable session backup.
- For restricted audiences, use a host with appropriate authentication and access controls. Do not treat an unlisted URL as access control.

These steps describe how to deploy the app; hosting is not enabled automatically by cloning or pushing this repository.
