# FAQ

??? info "Device is not working"

    ```mermaid
    flowchart TD
        A([Device is not working]) --> B{Is it a Zigbee or Z-Wave device?}
        B -- Yes --> H[Restart Home Assistant<br/>Unplug power, wait 10 seconds,<br/>plug it back in, then wait 2.5 minutes]
        B -- No --> C{Does it have an official app?<br/>For example, Tado or Shelly}
        C -- No --> I[Open Settings → Devices & services<br/>Find the device integration]
        C -- Yes --> D{Can you control it<br/>from its app?}
        D -- No --> E[Power-cycle the device<br/>or change its batteries]
        E -- Not solved --> J[Contact the device support team]
        D -- Yes --> I
        I --> K{Is there an error<br/>or reauthentication request?}
        K -- Yes --> L[Reauthenticate with your credentials<br/>or power-cycle the device/change batteries]
        L -- Not solved --> H
        K -- No --> H
        H -- Not solved --> M[Check Settings → System → Logs<br/>and contact support]
    ```
