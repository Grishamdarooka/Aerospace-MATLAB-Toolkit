# Aerospace-MATLAB-Toolkit

A collection of MATLAB tools I built for visualizing and analyzing core aerospace 
engineering concepts — from airfoil geometry to fundamental flow theory.

## Repository Structure

| Folder | Description |
|---|---|
| `Potential_Flows/` | Visualization of fundamental potential flow patterns |
| `NACA_Airfoil_Generator/` | Generator and plotter for NACA 4-digit airfoil profiles |
| `TYPHOON_Plotting/` | 2D planform layout of the Eurofighter Typhoon aircraft |

---

## Potential Flows
This started as a way to better understand irrotational flow theory visually. The scripts 
plot classic flow types — uniform flow, source, sink, doublet, vortex — and combinations 
like flow over a cylinder, which is surprisingly satisfying to see rendered out.

## NACA Airfoil Generator
Enter any NACA 4-digit designation, and the script computes and plots the full airfoil 
profile. I found it useful for quickly comparing different airfoil shapes side by side 
without having to look up coordinate tables manually.

## TYPHOON Plotting
A 2D top-down geometric layout of the Eurofighter Typhoon. Mostly built out of curiosity 
for how the delta-canard configuration looks when broken down into simple geometry.

---

## Requirements
- MATLAB R2020a or later
- No additional toolboxes required

## Usage
Navigate to the subfolder of interest in MATLAB and run the relevant `.m` script. 
The output will appear in a MATLAB figure window.

## Author
Grisham Darooka
