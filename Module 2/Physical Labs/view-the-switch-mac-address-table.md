# 7.3.7 Lab - View the Switch MAC Address Table

## Topology & Addressing Table

| Device | Interface | IP Address     | Subnet Mask     |
|--------|-----------|----------------|------------------|
| S1     | VLAN 1    | 192.168.1.11   | 255.255.255.0    |
| S2     | VLAN 1    | 192.168.1.12   | 255.255.255.0    |
| PC-A   | NIC       | 192.168.1.1    | 255.255.255.0    |
| PC-B   | NIC       | 192.168.1.2    | 255.255.255.0    |

---

## Objectives

- **Part 1:** Build and Configure the Network  
- **Part 2:** Examine the Switch MAC Address Table

---

## Part 1: Build and Configure the Network

### Step 1: Cable the network according to the topology

**Screenshot Placeholder:**  
`!Network Topology`

---

### Step 2: Configure PC hosts

Screenshots at end

---

### Step 4: Configure basic settings for each switch

- **Device name**  
- **IP address**  
- **Console and vty passwords: `cisco`**  
- **Privileged EXEC password: `class`**

---

## Part 2: Examine the Switch MAC Address Table

### Step 1: Record network device MAC addresses

1. **PC-A MAC Address:**  
   _Answer: 00-E0-4C-68-04-B0_  

2. **PC-B MAC Address:**  
   _Answer: 00-E0-4C-68-07-0C_  

3. **S1 Fast Ethernet 0/1 MAC Address:**  
   _Answer: cc36.cfff.1781_  

4. **S2 Fast Ethernet 0/1 MAC Address:**  
   _Answer: cc36.cff2.6881_  

---

### Step 2: Display the switch MAC address table

1. **Are there any MAC addresses recorded in the MAC address table?**  
   _Answer: Yes. _  

2. **What MAC addresses are recorded in the table? To which switch ports are they mapped and to which devices do they belong?**  
   _Answer: There are the static addresses that are associated with the switch itself. These are all on the "CPU" port. There is also one entry on cc36.cfff.1781 which is the MAC address of the other switch on gi1/0/1_  

3. **If you had not previously recorded MAC addresses of network devices in Step 1, how could you tell which devices the MAC addresses belong to using only the output from `show mac address-table`? Does it work in all scenarios?**  
   _Answer: You can trace the ethernet cable from the port specified in the address table. Gi1/0/1 refers to the top left port on the front panel._  

---

### Step 3: Clear the S2 MAC address table and display the MAC address table again

1. **Does the MAC address table have any addresses in it for VLAN 1? Are there other MAC addresses listed?**  
   _Answer: No, just the internal MAC addresses._  

2. **Wait 10 seconds and recheck. Are there new addresses in the MAC address table?**  
   _Answer: yes, the other switch has been detected._  

---

### Step 4: From PC-B, ping the devices on the network and observe the switch MAC address table
1. **How many device IP-to-MAC address pairs have been learned by ARP (excluding multicast/broadcast)?**  
   _Answer: 1. There is the PC that is connected to the switch, and the destination pc._  

2. **Did all devices have successful replies to pings? If not, check cabling and IP configurations.**  
   _Answer: Yes._  

3. **Has the switch added additional MAC addresses to the MAC address table? If so, which addresses and devices?**  
   _Answer: There are two new addresses on the table. 00e0.4c68.04b0 on Gi1/0/1 and 00e0.4c68.070c on Gi1/0/18. _  

4. **Does the PC-B ARP cache have additional entries for all network devices that were sent pings?**  
   _Answer: Since both PC-A and PC-B are just NICs on the same machine, the arp cache probably isn't what the lab is expecting._  

---

## Reflection Question

**What might be some of the challenges on larger networks when switches and PCs dynamically build ARP caches and MAC address tables?**  
_Answer: There are security concerns with large tables, which increases the risk of mac spoofing or poisoning, and there could also be network performance issues._  


## Screenshots:
![1](./lab%207.3.7%20screenshot%201.PNG)
![2](./lab%207.3.7%20screenshot%202.PNG)
![3](./lab%207.3.7%20screenshot%203.PNG)

