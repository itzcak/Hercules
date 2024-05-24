# Hercules 
Heterogeneous Requirements Congestion Control is
designed to handle heterogeneous requirements.
Hercules is based on an online learning approach and has the 
capability to support any combination of requirements within 
an unbounded and continuous requirements space.
We have implemented Hercules as a QUIC module and demonstrate,
through extensive analysis
and real-world experiments, that Hercules can achieve up to
3.5-fold improvement in QoS compared to state-of-the-art CC
protocols

# Implementation
Hercules implementation extends Google QUICHE and chromium project 
framework (a C++ implementation of QUIC). We used Chromium version 
ID 407956543 from Nov 5th, 2021. For Chromium project description 
see: https://chromium.googlesource.com/chromium/src/+/main/docs/linux/build_instructions.md

We implemented Hercules congestion control based on PCC code in https://github.com/PCCproject/PCC-Uspace.
We merged PCC code into newer QUIC version, improved the code and fixed bugs, and finally added Hercules congestion control on top of it.

3 files are included:

1. **hercules_diff_quic.diff** - includes all code changes oRunExtHerculesTest.shn QUICHE project
2. **hercules_diff_base_chromium.diff** - includes few changes on Chromium project
3. **RunExtHerculesTest.sh** - script which support large number of tests

# Validation
**RunExtHerculesTest.sh** is a script which configures setup simulation and runs dynamic tests.
It configures simulator, runs quic_server and quic_client with appropriate parameters.

Definition of tests mixure are in the start of the file, so to add or remove a test is just to write new lines with test requirments.
Tests changes the following:
* Number of QUIC parallel connections.
* Network parameters matrix: **BW, delay, loss**.
* Congestion control per connection: **Reno, Cubic, BBR, PCC, Hercules**.
* Requirments (Hercules BW targets) per QUIC connection.
