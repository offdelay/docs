---
name: image-naming
description: Naming and referencing image assets in the Offdelay docs site.
---

# Image naming

Name documentation images from their location in the page:

`<sidebar-topic>-<right-bar-topic>-<tab-title-or-image-description>.svg`

Use the sidebar page title, the nearest right-side table-of-contents heading,
and then the tab title when the image belongs to a tab. When there is no tab,
use the shortest clear description of the image. Lowercase every word and
replace spaces with hyphens.

On an index page with no sidebar page topic, use the header topic followed by
a short image description instead. For global brand assets that are not tied
to a documentation page, use `brand-<image-description>.svg`.

Examples:

- `home-assistant-login-app.svg` — App tab under Login on the Home Assistant
  page.
- `home-assistant-navigation-overview.svg` — Overview image under Navigation
  on the Home Assistant page.
- `energy-app-control-home-assistant.svg` — Home Assistant tab under App Control
  on the Energy page.
- `setup-architecture.svg` — architecture image on the Setup index page.
- `brand-offdelay-icon.svg` — global brand asset.

When renaming an image, update every reference to its path, including
documentation links and site configuration.
