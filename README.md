# MobiEdgeSim Simulation Configuration

## Overview

MobiEdgeSim provides a comprehensive set of simulation configuration files and scenarios built on top of the Simu5G framework and its extended modules. This project allows users to configure and simulate networks with varying numbers of Multi-access Edge Computing (MEC) hosts and user equipment (UE), supporting both static and mobile MEC host scenarios.

## Key Features

- **Flexible Configuration**: Easily adjust the number and types of MEC hosts (static or mobile) and UEs.
- **Integrated Modules**: Utilizes modules from the original Simu5G framework and additional modules developed specifically for advanced mobile MEC simulations.
- **Custom Network Architectures**: Users can design custom network topologies and scenarios to match specific research or testing needs.

## Simulation Scenarios

- **Static MEC Servers**: Configure simulations with fixed MEC server positions.
- **Mobile MEC Servers**: Simulate realistic MEC server mobility patterns derived from road traffic simulations (via SUMO and Veins integration).
- **Mixed Environments**: Combine static and mobile MEC servers in complex simulation scenarios.

## Usage

This project provides a simulation configuration files as expample (e.g., NED and INI files). Users can modify and extend these configurations according to their requirements.

To create your own scenarios, modify the provided `.ned` and `.ini` files, adjusting parameters such as MEC server numbers, UE mobility patterns, and network topology details.

## Dependencies

- OMNeT++ 6.0.3
- SUMO 1.11.0
- INET 4.5
- Veins 5.2
- [Simu5G-MobiEdgeSim](https://github.com/MobiEdgeSim/Simu5G-MobiEdgeSim)
- 
## WLAN-based Simulation (Under Development)

Currently developing a simulation framework for task placement and resource allocation based on Wi-Fi communications. See updates at MobiEdgeSim_WIFI.

## License

This configuration project is provided under the GNU Lesser General Public License (LGPL) v3, consistent with the Simu5G and its extended modules' licensing terms.

## Contact

For questions, suggestions, or further information, please contact the repository maintainer at [zhangt@tcd.ie](mailto:zhangt@tcd.ie). Emails are periodically reviewed and responded to.
