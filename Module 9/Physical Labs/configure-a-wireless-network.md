# Lab – Configure a Wireless Network

## Introduction

In this lab, you will configure basic settings on a wireless router and connect a PC to the router wirelessly.

---

## Recommended Equipment

- A Windows computer with wired and wireless network cards installed  
- Wireless router  
- Ethernet patch cable  

**Note:** All wireless settings in this lab are for a 2.4 GHz wireless connection. Follow the same steps for 5 GHz or dual-band configurations.

---

## Part 1: Log into the Wireless Router

### Step 1: Connect the Computer to the Router

Ask your instructor for the following:

- **Router Address Information:**  
  - IP address:  
  - Subnet mask:  
  - Router name:  

- **DHCP Server Setting Information:**  
  - Start IP address:  
  - Maximum number of users:  

- **Default Router Access:**  
  - Username / Password:  no username P@$$w0rd

- **Assigned SSID:**  
  - Your Assigned SSID:  

Then:

- Plug in the router and boot the PC  
- Connect PC to router via Ethernet cable  
- If prompted, select **Public network**  
- Open Command Prompt and run:

```bash
ipconfig
```

**Question:**
- What is the default gateway for the computer?
Answer: 192.168.1.1

### Step 2: Log in to the Router
- Open a browser and enter the default gateway IP
- Log in using credentials provided by your instructor

## Part 2: Configure Basic Wireless Settings

### Step 1: Configure SSID
- Locate wireless settings
- Enter your assigned SSID
- Save settings

### Step 2: Configure Wireless Security
- Locate wireless security settings
- Select WPA2 with AES and Personal mode
- 1Enter passphrase (e.g., Cisco456!)
- Save settings

### Step 3: Configure DHCP Settings
- Locate LAN settings
- Set router name, IP address, and subnet mask
- Enable DHCP server
- Configure IP range or max users
- Save settings and reboot if needed

### Step 4: Change Administrative Password
- Locate admin password settings
- Enter current and new password (e.g., Cisco123!)
- Save settings
- Log in with new credentials
- Disconnect Ethernet cable if desired

### Part 3: Connect a Wireless Client
- Go to Wi-Fi Settings
- Select Show available networks
- Connect to configured SSID
- Enter passphrase
- Open Command Prompt and run:
```cmd
ipconfig
```

**Record:**

- IP address:
- Subnet mask:
- Default gateway:

## Part 4: Connect an Access Point (Optional)

### Step 1: Connect the Access Point
- Connect AP via Ethernet to router
- Log in to router
- Change wireless channel to 6 or 11
- Connect AP Internet port to router LAN port

### Step 2: Configure Access Point Wireless Settings
- Find AP IP via DHCP client list
- Log in to AP
- Set same SSID and security as router
- Ensure different wireless channels
- Connect a wireless client to test

### Step 3: Turn Off Wireless Radio on Router
- Log in to router
- Navigate to wireless settings
- Disable wireless radio
- Save settings
- Connect client via AP

## Part 5: Reset to Original Configuration
- Locate Maintenance or System Settings
- Select Restore to Factory Defaults
- Enter admin credentials if prompted
- Wait for reboot before powering off

---

## Lab Screenshots

### WiFi Router Configuration Screenshots

![WiFi Router Screenshot 1](wifi%20router%20screenshot%201.PNG)

![WiFi Router Screenshot 2](wifi%20router%20screenshot%202.PNG)

![WiFi Router Screenshot 3](wifi%20router%20screenshot%203.PNG)

![WiFi Router Screenshot 4](wifi%20router%20screenshot%204.PNG)

![WiFi Router Screenshot 5](wifi%20router%20screenshot%205.PNG)
