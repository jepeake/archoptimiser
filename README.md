# _arch-optimiser_

This repository contains .sh scripts to explore microarchitectural configrations of an OoO Issue Processor.

This uses the processor simulation suite SimpleScalar & Wattch Simulators to analyse performance against a Splay Trees program.

---

The investigation given here aims to minimise the total energy consumption of the OoO processor.

The optimum script runs this configuration on SimpleScalar.

See [Report](Arch-Exploration-Report.pdf) for findings.

---

### Running the Simulator

1. Clone this Repo:

```
git clone https://github.com/jepeake/arch-optimiser.git
cd arch-optimiser
```

2. Run the Exploration Scripts:
```
./scripts/{script_name_.sh
```

3. Run the Optimum Configuration:
```
./optimum_config.sh
```
---
