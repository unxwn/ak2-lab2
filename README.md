# ak2-lab2
# Calculator — Лабораторна #2

## Опис
Проeкт `Calculator` до лабораторної роботи #2.

## Файли
- `src/calculator.h`, `src/calculator.cpp` — Header тa Source файли
- `src/main.cpp` — виконуваний файл (тест)
- `Makefile` — GNU Make скрипт
- `CMakeLists.txt` — CMake конфігурація (Ninja)
- `build.ninja`, `rules.ninja` — приклад ninja-файлів

## Використання

### З Make:
```bash
make        # збірка (створить libcalculator.a, calculator.o i calc_app)
./calc_app
make clean  # очистка артефактів
```

### З CMake + Ninja:
```bash
cmake -G Ninja -S . -B build
cmake --build build
./build/bin/calc_app
```

