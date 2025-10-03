# Lab - Implement Inter-VLAN Routing (MLS and Router-on-a-Stick)

## Topology & Addressing Table

| Device | Interface       | IP Address       | Subnet Mask     | VLAN |
|--------|------------------|------------------|------------------|------|
| MLS    | VLAN 10 (SVI)    | 192.168.10.1     | 255.255.255.0    | 10   |
|        | VLAN 20 (SVI)    | 192.168.20.1     | 255.255.255.0    | 20   |
| R1     | G0/0.10 (subint) | 192.168.10.1     | 255.255.255.0    | 10   |
|        | G0/0.20 (subint) | 192.168.20.1     | 255.255.255.0    | 20   |
| S1     | F0/1             | Trunk to MLS     | N/A              | Trunk |
| S2     | F0/1             | Trunk to R1      | N/A              | Trunk |
| PC-A   | NIC              | 192.168.10.10    | 255.255.255.0    | 10   |
| PC-B   | NIC              | 192.168.20.10    | 255.255.255.0    | 20   |

---

## VLAN Table

| VLAN | Name        | Assigned Interfaces         |
|------|-------------|-----------------------------|
| 10   | Staff       | PC-A, MLS VLAN 10, R1 G0/0.10 |
| 20   | Guest       | PC-B, MLS VLAN 20, R1 G0/0.20 |

---

## Objectives

- **Part 1:** Configure Inter-VLAN Routing using a Multilayer Switch (MLS)  
- **Part 2:** Configure Inter-VLAN Routing using Router-on-a-Stick (ROAS)  
- **Part 3:** Verify Inter-VLAN Connectivity

---

## Required Resources

- 2 Layer 2 Switches (Cisco 2960 or similar)  
- 1 Multilayer Switch (or Layer 3 switch)  
- 1 Router (for ROAS)  
- 2 PCs  
- Console and Ethernet cables  
- Terminal emulation software (e.g., Tera Term)

---

## Part 1: Configure Inter-VLAN Routing on a Multilayer Switch (MLS)

### Step 1: Configure VLANs and Assign Ports

1. Create VLANs 10 and 20 on the MLS and access switches  
2. Assign PC-A to VLAN 10 and PC-B to VLAN 20  
3. Configure trunk links between switches and the MLS  

**Screenshot Placeholder:**  
`!VLAN Configuration`

---

### Step 2: Configure SVIs on the MLS

1. Enable IP routing on the MLS  
2. Create SVIs for VLAN 10 and VLAN 20  
3. Assign IP addresses as per the Addressing Table  
4. Ensure SVIs are up and active  

**Screenshot Placeholder:**  
`!SVI Configuration`

---

## Part 2: Configure Inter-VLAN Routing using Router-on-a-Stick (ROAS)

### Step 1: Configure VLANs and Trunking

1. Create VLANs 10 and 20 on S2  
2. Assign PC-A and PC-B to their respective VLANs  
3. Configure trunk link between S2 and R1  

---

### Step 2: Configure Subinterfaces on the Router

1. On R1, configure subinterfaces G0/0.10 and G0/0.20  
2. Assign encapsulation dot1Q and VLAN IDs  
3. Assign IP addresses as per the Addressing Table  
4. Enable the physical interface G0/0  

**Screenshot Placeholder:**  
`![Router Subinterface Configuration]
---

## Part 3: Verify Inter-VLAN Connectivity

1. From PC-A, ping PC-B  
2. From each PC, ping the default gateway  
3. Use `show ip route`, `show vlan brief`, and `show interfaces trunk` to verify configuration  

**Were the pings successful?**  
_Answer:Yes_  

**If not, what troubleshooting steps did you take?**  
_Answer:N/A_  

---

## Reflection Questions

1. **What are the advantages of using a Multilayer Switch for Inter-VLAN Routing over Router-on-a-Stick?**  
   _Answer: MLSs use hardware routing instead of software, they also have lower latency and can scale better._  

2. **What are potential drawbacks of using ROAS in a large network?**  
   _Answer: If the router fails the inter-vlan communication stops. There's also bandwidth limitations by routing all traffic through the single trunk link._  

3. **How does trunking enable Inter-VLAN Routing in both configurations?**  
   _Answer: They allow MLSs to recieve traffic from all vlans and route between them using SVIs. For ROAS configurations the trunk link carries tagged traffic from the different vlans to the router, where subinterfaces process each vlan separately._

---

## Lab Screenshots

**Screenshot 1:**
![Module 8 Lab Screenshot 1](module%208%20lab%20screenshot%201.PNG)

**Screenshot 2:**
![Module 8 Lab Screenshot 2](module%208%20lab%20screenshot%202.PNG)

**Screenshot 3:**
![Module 8 Lab Screenshot 3](module%208%20lab%20screenshot%203.PNG)

**Screenshot 4:**
![Module 8 Lab Screenshot 4](module%208%20lab%20screenshot%204.PNG)

**Screenshot 5:**
![Module 8 Lab Screenshot 5](module%208%20lab%20screenshot%205.PNG)

**Screenshot 6:**
![Module 8 Lab Screenshot 6](module%208%20lab%20screenshot%206.PNG)  
