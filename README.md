# Simple Interest Calculator

A small command-line calculator for simple interest. This project demonstrates a clear shell script, input validation, and the contribution files used in a collaborative Git and GitHub project.

## Formula

The calculator uses:

```text
Simple Interest = principal × rate × time / 100
```

Enter the annual interest rate as a percentage (for example, enter `5` for 5%) and time in years.

## Run

From a Bash-compatible shell:

```bash
chmod +x simple-interest.sh
./simple-interest.sh
```

The script prompts for the principal amount, annual rate, and time in years. It accepts nonnegative decimal values and displays the simple interest to two decimal places. It rejects blank, nonnumeric, negative, and non-finite inputs.

Example:

```text
$ ./simple-interest.sh
Enter the principal amount: 1000
Enter the annual interest rate (%): 5
Enter the time (years): 2
Simple interest: 100.00
```

To run the calculation non-interactively, pass the three values as arguments:

```bash
./simple-interest.sh 1000 5 2
```

## Project files

- `simple-interest.sh` — validated interactive or argument-based calculator.
- `LICENSE` — Apache License 2.0.
- `CODE_OF_CONDUCT.md` — community conduct expectations.
- `CONTRIBUTING.md` — contribution workflow and review guidance.
- `GITHUB_EXECUTION_CHECKLIST.md` — local checklist for the GitHub exercise and its evidence.

## Contributing

Contributions are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) and follow the community expectations in [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for the full terms.
