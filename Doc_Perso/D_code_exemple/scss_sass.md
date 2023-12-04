## Outils sass

 ### Nesting

 ```scss
.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    .title {
        font-size: 2rem;
        font-weight: bold;
    }

    .subtitle {
        font-size: 1.5rem;
        font-weight: normal;
    }
}
```

 ### Variables

 ```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

 .container {
    background-color: $primary-color;
    color: $secondary-color;
}
```

 ### Mixins

 ```scss
@mixin flex($direction, $justify, $align) {
    display: flex;
    flex-direction: $direction;
    justify-content: $justify;
    align-items: $align;
}

 .container {
    @include flex(column, center, center);
}
```

 ### Functions

 ```scss
@function add($a, $b) {
    @return $a + $b;
}

 .container {
    width: add(10px, 20px);
}
```

 ### Partials

 ```scss
_variables.scss
_mixins.scss
_functions.scss
```

 ### Imports

 https://vincent-barrault.fr/articles/sass-remplacer-import-par-use

 ```scss
@import "variables";
@use "functions";
@use "mixins" as *;
```

 ### Extends

 ```scss
%flex {
    display: flex;
}

 .container {
    @extend %flex;
}
```

 ### Opérateurs

 ```scss
.container {
    width: 100px + 200px;
    height: 100px - 50px;
    margin: 10px * 2;
    padding: 10px / 2;
    padding: math.div($patate, 2);
}
```

 ### Boucles

 ```scss
@for $i from 1 through 3 {
    .item-#{$i} {
    width: 100px * $i;
    }
}
```

 ### Conditions

 ```scss
$primary-color: #ff0000;
$secondary-color: #00ff00;

 .container {
@if $primary-color == #ff0000 {
    background-color: $primary-color;
} @else {
    background-color: $secondary-color;
    }
}
```