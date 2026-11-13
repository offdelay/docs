# FAQ

??? info "Device is not working"

    ```mermaid
    flowchart TD
        A([Device not working]) --> B{Is it a Zigbee<br/>or Z-Wave device?}
        B -- Yes --> H[Restart<br/>Home Assistant]
        B -- No --> C{Does it have an<br/>official app?}
        C -- No --> I[Open Settings →<br/>Devices&services<br/>Find integration]
        C -- Yes --> D{Can you control it<br/>from its app?}
        D -- No --> E[Power-cycle or<br/>change batteries]
        E -- Not solved --> J[Contact<br/>device support]
        D -- Yes --> I
        I --> K{Is there an error<br/>or<br/>reauthentication?}
        K -- Yes --> L[Reauthenticate<br/>or power-cycle <br/>or change batteries]
        L -- Not solved --> H
        K -- No --> H
        H -- Not solved --> M[Check Settings →<br/>System → Logs<br/>and contact support]
    ```
