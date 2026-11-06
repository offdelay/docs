# Offdelay Docs

Developer guide for this documentation site, published at
[docs.offdelay.be](https://docs.offdelay.be).

## Prerequisites

- Python 3.11 or newer. Install it from [python.org](https://www.python.org/downloads/)
  or your operating system's package manager.
- [uv](https://docs.astral.sh/uv/), which provides `uv` and `uvx`.

Install uv with the [official instructions](https://docs.astral.sh/uv/getting-started/installation/).
For example, on macOS or Linux:

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

On Windows PowerShell:

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

Restart your terminal if needed, then check `python --version` (or
`python3 --version`) and `uv --version`.

## Set up and preview

Clone this repository and open its directory:

```sh
git clone https://github.com/offdelay/docs.git
cd docs
```

No virtual environment or project dependency installation is needed. `uvx`
uses a temporary tool environment on demand.

Start the live development server at http://localhost:8000:

```sh
uvx zensical serve
```

Build the site into `site/`:

```sh
uvx zensical build
```

For a clean build that fails on warnings, run:

```sh
uvx zensical build --clean --strict
```

## VS Code

Open the repository in VS Code and install the recommended extensions when
prompted. Prettier and TOML support are recommended for repository files.

## Workflows and publishing

- **Check** (`.github/workflows/check.yml`) builds documentation in strict mode
  for pull requests and pushes to `main`.
- **Deploy** (`.github/workflows/deploy.yml`) builds the site and publishes it
  to GitHub Pages on pushes to `main`. Pull requests do not deploy.

Both workflows use `uvx` and do not install the site tooling globally. The
check workflow validates changes; the deployment workflow uploads the
generated `site/` artifact and deploys it through GitHub Pages.

To enable publishing, set the repository's **Settings → Pages → Build and
deployment** source to **GitHub Actions**. The workflow deploys from `main`
using the `github-pages` environment. Confirm that the `docs.offdelay.be`
custom domain and its DNS records point to GitHub Pages.

## Contribute

Add or update Markdown pages under `docs/`. Update `nav` in `zensical.toml`
when adding a page. Use the GitHub issue templates to report a bug or suggest
a documentation improvement, and submit changes as a pull request. The Check
workflow must pass before changes are merged.
