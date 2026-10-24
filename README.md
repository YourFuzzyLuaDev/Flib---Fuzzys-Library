# Flib — Fuzzy's Library ^^

## What is Flib?

Flib is my own Lua library, designed to be fast, efficient, and easy to write, read, and understand. ^^

## Modules

- **`fm`** — Fuzzy's Math
- **`ff`** — Fuzzy's Functions
- **`ft`** — Fuzzy's Tables

## Fuzzy's Math Library

##### A toolbox of personalized math functions ^^

- **`fm.add(x, y)`** — The addition of two integers, for example:

  ```lua
  print(fm.add(50, 32))
  ```

- **`fm.sub(x, y)`** — The subtraction of two integers, for example:

  ```lua
  print(fm.sub(50, 32))
  ```

- **`fm.mul(x, y)`** — The multiplication of two integers, for example:

  ```lua
  print(fm.mul(50, 32))
  ```

- **`fm.div(x, y)`** — The division of two integers, for example:

  ```lua
  print(fm.div(50, 32))
  ```

- **`fm.exp(x, y)`** — The operation for raising x to the power of y, for example:

  ```lua
  print(fm.exp(50, 32))
  ```

- **`fm.per(x, y)`** — The remainder from a division of two integers, for example:

  ```lua
  print(fm.per(50, 32))
  ```

- **`fm.mulp`** — A separate sub-library that supports multiple operations on integers, for example:

  ```lua
  print(fm.mulp.add(10, 30, "+", 50))
  ```

  Which is equivalent to:

  ```lua
  print(10 + 30 + 50)
  ```

## Fuzzy's Tables Library

#### A toolbox of functions for both arrays and tables, with merging and more ^^!

- **`ft.merge(x, y)`** — The operation for inserting an entire table or array into another table or array, for example:

  ```lua
  print(ft.merge(player, properties))
  ```

- **`ft.countt(x)`** — The operation for printing an entire table, for example :D:

  ```lua
  print(ft.countt(player))
  ```

- **`ft.countr(x)`** — The operation for printing an entire array, for example :3:

  ```lua
  print(ft.countr(content))
  ```

- **`ft.containst(x, v)`** — The operation for checking whether a table contains a value, returning `true` if it does, for example :>:

  ```lua
  print(ft.containst(content, "Papers"))
  ```

- **`ft.containsr(x, v)`** — The same operation for arrays ^^:

  ```lua
  print(ft.containsr(content, "Papers"))
  ```

## Fuzzy's Functions
#### A toolbox of functions ^^

- **`ff.clamp(val, min, max)`** — The function for assigning a value within its predefined limits, for example '-':

  ```lua
  player = {
    name = io.read(),
    health = ff.clamp(100, 0, 75),
    onhit = function (player)
        player.health = player.health - 10
    end,

    healfunc = function (player, heal)
        player.health = ff.clamp(player.health + heal, 0, 75)
    end
  }
  ```
- **`ff.merge(x, y)`** — The function for merging two data types (wheather it's a boolean, string, number or nil) together! for example owo:
  ```lua
  print(ff.merge(x, y))
  ```
## Final notes :>
#### Flib still is in a work in progress state, so expect more coming!
#### Made with Lua 5.1.5 - Fuzzy ^^
