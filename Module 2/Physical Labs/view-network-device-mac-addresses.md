# 7.2.7 Lab - View Network Device MAC Addresses

## Topology & Addressing Table

| Device | Interface | IP Address     | Subnet Mask     | Default Gateway |
|--------|-----------|----------------|------------------|------------------|
| S1     | VLAN 1    | 192.168.1.2    | 255.255.255.0    | N/A              |
| PC-A   | NIC       | 192.168.1.3    | 255.255.255.0    | 192.168.1.1      |

---

## Objectives

- **Part 1:** Configure Devices and Verify Connectivity  
- **Part 2:** Display, Describe, and Analyze Ethernet MAC Addresses

---

## Part 1: Configure Devices and Verify Connectivity

### Step 1: Cable the network as shown in the topology

**Screenshot Placeholder:**  
`!Network Topology`

---

### Step 2: Configure the IPv4 address for the PC

- **Were the pings successful? Explain.**  
  _Answer: yes, I configured the switch and network settings in lab 2.9.2_  

---

### Step 3: Configure basic settings for the switch

**Screenshot Placeholder:**  
`![Switch Configuration](./lab%207.2.7%20screenshot%203.PNG)

- **Were the pings successful?**  
  _Answer: yes, I configured the switch in a previous lab_  

---

## Part 2: Display, Describe, and Analyze Ethernet MAC Addresses

### Step 5: Analyze the MAC address for the PC-A NIC

1. **What is the OUI portion of the MAC address for this device?**  
   _Answer: 00-15-5D_  

2. **What is the serial number portion of the MAC address for this device?**  
   _Answer: 5B-88-0B_  

3. **Using the example above, find the name of the vendor that manufactured this NIC.**  
   _Answer: microsoft_  

4. **Identify the OUI portion of the MAC address for the NIC of PC-A.**  
   _Answer: 00-E0-4C_    

5. **Identify the serial number portion of the MAC address for the NIC of PC-A.**  
   _Answer: 68-04-B0_  

6. **Identify the name of the vendor that manufactured the NIC of PC-A.**  
   _Answer: realtek__  

---

### Step 6: Analyze the MAC address for the S1 VLAN 1 interface

1. **What is the MAC address for VLAN 1 on S1?**  
   _Answer: CC-36-CF_  

2. **What is the MAC serial number for VLAN 1?**  
   _Answer: FF-17-C0_  

3. **What does BIA stand for?**  
   _Answer: burned-in-address_  

4. **Why does the output show the same MAC address twice?**  
   _Answer: The mac address can be manually changed. The burned-in-address is assigned by the manufacturer_  

---

### Step 7: View the MAC addresses on the switch

1. **What Layer 2 addresses are displayed on S1?**  
   _Answer: There is an entry in the ARP for each device the switch can see. One for the PC connected, one for the switch itself. They are: cc36.cfff.17c0 and 00e0.4c68.04b0_  

2. **What Layer 3 addresses are displayed on S1?**  
   _Answer: 192.168.1.1 and 192.168.1.10_  

3. **Did the switch display the MAC address of PC-A? If yes, what port was it on?**  
   _Answer: yes, Gi1/0/11 because I clearly didn't understand how the ports on the switch front panel are numbered_  

---

## Reflection Questions

1. **Can you have broadcasts at the Layer 2 level? If so, what would the MAC address be?**  
   _Answer: yes, FF:FF:FF:FF:FF:FF_  

2. **Why would you need to know the MAC address of a device?**  
   _Answer: In order to identify devices on a network, diagnostics, security features, static ip assignment, etc._  


## screenshots:
![1](./lab%207.2.7%20screenshot%201.PNG)
![2](./lab%207.2.7%20screenshot%202.PNG)
![3](./lab%207.2.7%20screenshot%203.PNG)
![4](./lab%207.2.7%20screenshot%204.PNG)

