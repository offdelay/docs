# FAQ

??? info "Device is not working"

    ```mermaid
    flowchart TD
        A([Device is not working]) --> B{Is it a Zigbee or Z-Wave device?}
        B -- Yes --> H[Restart Home Assistant: unplug its power, wait 10 seconds, then plug it back in. Wait 2.5 minutes for it to reboot.]
        B -- No --> C{Does it have an official app?<br/>For example, Tado or Shelly}
        C -- No --> I[Open Settings>Devices & services>find the device integration.]
        C -- Yes --> D{Can you control the device from its app?}
        D -- No --> E[Power-cycle the device or change the batteries]
        E -- Not solved --> J[Contact the device support team]
        D -- Yes --> I
        I --> K{Is there an error or a reauthentication request?}
        K -- Yes --> L[Reauthenticate with username and password OR Power-cycle the device or change the batteries]
        L -- Not solved --> H
        K -- No --> H
        H -- Not solved --> M[Check Settings>System>Logs and contact support]
    ```
