# Parametric CAD files for a 3D printable life counter for tabletop gaming


<img width="783" alt="Screenshot 2021-12-01 at 23 48 43" src="https://user-images.githubusercontent.com/91621088/144332627-d39300b2-3114-4e34-8067-41e433826620.png">

<img width="256" alt="Screenshot 2021-12-01 at 23 48 52" src="https://user-images.githubusercontent.com/91621088/144332636-24b5f402-f7f0-4520-8174-c159630d2fa3.png">
Takes about 2 hours to print a complete counter

Wizards of the coast released a life counter that was pretty cool, but also only available with the Commander deck anothlogies, thus making them unreasonably expensive on the secondary market.

![lifecounter](https://user-images.githubusercontent.com/91621088/144332187-74f3e015-e3da-41fb-b3bc-3e2f40c9c190.gif)
An early iteration of the design without the spring mechanism

## Fear not, you can have one for free now!

This design is free, download and print as many as you want! Just don't make a massive profit off them without throwing my name out there first ;)

## Parametric designs

The first 2 variables (excluding $fn, I'd leave that alone, that effects print quality) are what drive the entire model.
If you want a really tall and thin life counter, change it to:

```
wheelWidth = 2;
wheelDia = 500;
```
but that would be terrible. After numerous tests and failed prints, I'd really say that:

```
wheelWidth = 10;
wheelDia = 30;
```
is the optimum size for the life counter.

## Thanks

A special thank you to user u/Efarm12 on reddit, who helped me with some of the more complex mathematical functions (the spring and the consistent rotation of the number).
