# Parametric CAD files for a 3D printable life counter for tabletop gaming

Wizards of the coast released a life counter that was pretty cool, but also only available with the Commander deck anothlogies, thus making them unreasonably expensive on the secondary market.

## Fear not, you can have one for free now!

This design is free, download and print as many as you want! Just don't make a massive profit off them without throwing my name out there first ;)

## Parametric designs

The first 2 variables (excluding $fn, I'd leave that alone, that effects print quality) are what drive the entire model.
If you want a really tall and thin life counter, change it to:

```
wheelWidth = 2;
wheelDia = 500;
```

But that would be terrible. After numerous tests and failed prints, I'd really say that:

```
wheelWidth = 10;
wheelDia = 30;
```

is the optimum size for the life counter.
