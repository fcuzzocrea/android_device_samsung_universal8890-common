# Scaling Available Frequencies (Exynos 8890)

See https://www.kernel.org/doc/Documentation/power/pm_qos_interface.txt

> Alternatively the user mode program could write a hex
> string for the value using 10 char long format e.g. "0x12345678".

## CPU Little Cluster (CPU0)

    1586000 -> 0x183350
    1482000 -> 0x169D10
    1378000 -> 0x1506D0
    1274000 -> 0x137090
    1170000 -> 0x11DA50
    1066000 -> 0x104410
    962000 -> 0xEADD0
    858000 -> 0xD1790
    754000 -> 0xB8150
    650000 -> 0x9EB10
    546000 -> 0x854D0
    442000 -> 0x6BE90

## CPU Big Cluster (CPU4)

    2600000 -> 0x27AC40
    2496000 -> 0x261600
    2392000 -> 0x247FC0
    2288000 -> 0x22E980
    2184000 -> 0x215340
    2080000 -> 0x1FBD00
    1976000 -> 0x1E26C0
    1872000 -> 0x1C9080
    1768000 -> 0x1AFA40
    1664000 -> 0x196400
    1560000 -> 0x17CDC0
    1456000 -> 0x163780
    1352000 -> 0x14A140
    1248000 -> 0x130B00
    1144000 -> 0x1174C0
    1040000 -> 0xFDE80
    936000 -> 0xE4840
    832000 -> 0xCB200
    728000 -> 0xB1BC0

## GPU 

    260 338 419 546 600 650
