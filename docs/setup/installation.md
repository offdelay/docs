# Installation

Home Assistant supports different controllers, such as Raspberry Pi boards, mini PCs, NAS devices, and virtual machines, as well as different installation methods. The right choice depends on your hardware, technical needs, and how you want to maintain your system. This page describes the Offdelay setup; it is not the only way to run Home Assistant.

## Home Assistant controller

We use an Intel NUC as the Home Assistant controller. Install Home Assistant Operating System (HAOS) directly on the NUC, then connect it to your network with an Ethernet cable.

This dedicated setup keeps Home Assistant and its apps on one controller. Check that your chosen NUC model and any attached hardware are compatible with Home Assistant before you install.

## Configure cellphone

Install the Home Assistant Companion app from the App Store or Google Play on your phone. Open it, enter your local or remote Home Assistant URL, and sign in with your Home Assistant credentials. See [Connect to Home Assistant](../get-started/basics.md#connect-to-home-assistant) for the address format.

### Enable location access

Complete these steps on your phone, not in the Home Assistant app:

1. In the Home Assistant app, go to **Settings > Companion app > Location**.
2. Set **Location permission** to **Always**, **Location accuracy** to **Full**, and **Background refresh** to **Enabled**.
3. Open your phone's system settings and go to **Apps > Home Assistant**.
4. Set **Location** to **Always** and allow **Notifications**.

### Assign the phone for geofencing

1. In Home Assistant, go to **Settings > People**.
2. Select the person who should be linked to the phone.
3. Under **Select the devices that belong to this person**, select the phone.
