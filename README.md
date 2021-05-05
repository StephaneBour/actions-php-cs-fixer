# PHP CS fixer action

This action controls that style rules are well respected.

## Inputs

### `dir`

The folder to control. Default `"."`.

## Example usage

```yaml
- name: PHP CS Fixer
  uses: StephaneBour/actions-php-cs-fixer@8.0-v3
  with:
    dir: './src'
```
