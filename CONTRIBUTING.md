# Contributing

Thank you for considering a contribution. Improvements to the calculator, its documentation, and the project workflow are welcome. Please read the [Code of Conduct](CODE_OF_CONDUCT.md) before participating.

## How to contribute

1. **Open an issue** to describe a bug, question, or proposed change. For small fixes, a clear pull request description is also welcome.
2. **Create a focused branch** from the current default branch. Use a short, descriptive name such as `fix/input-validation` or `docs/usage-example`.
3. **Make the change** and keep it scoped to one concern. Update documentation when behavior or usage changes.
4. **Validate it locally.** Run `bash -n simple-interest.sh`, then try representative inputs, including invalid input when changing validation.
5. **Commit with a clear message** describing the change.
6. **Open a pull request** with the reason for the change, a concise summary, and the validation performed. Link any related issue and call out changes that need reviewer attention.
7. **Respond to review feedback** constructively and update the pull request as needed.

## Contribution expectations

- Preserve the simple-interest formula: `principal × annual rate × time / 100`.
- Keep input handling understandable and safe; reject invalid or non-finite values.
- Prefer small, readable changes over unrelated refactoring.
- Do not include credentials, personal data, or generated files that are not needed by the project.
- Be respectful and follow the Code of Conduct in all project spaces.

By submitting a contribution, you agree that it may be distributed under the project’s Apache License 2.0.
