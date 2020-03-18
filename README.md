# Flutter Responsive Pixel!

## ==============================================
## ENGLISH DOCUMENTATION 
## ==============================================

## The problem!

This simple library is for people who are already faced with the simple problem of **responsiveness** in the **mobile application**.

An example:

![](/images/ux-model-mobile.png)

Imagine that your **UX Designer** designed a canvas for you, with **paddings** and **margins** of 15, 20, 50 ... font size, etc. Based on his image.

However when you implement it, the following case happens:

![](/images/mobiles-without-responsive.png)

Yes, in the device of the model designed it works, but in the version of the cell phone with lower resolution, it breaks.

## How to solve?

Just install the **Responsive-Pixel** library.

```dart
dependencies:
    responsive_pixel: ^2.0.0
```

That done, **let's go to the code!**

On your page implement this code in your build method.
```dart
Widget build(BuildContext context) {
    ResponsivePixelHandler.init(
        baseWidth: 480, //The width used by the designer in the model designed
    );
    ...
```

**note: baseWidth is the width of the resolution used by your UX.**
>Example: if he used an Iphone XR the width would be 1125 px.

### Now just use !! : D

Use the **ResponsivePixelHandler.toPixel** method, passing the values ​​passed by your UX Designer.
```dart
margin: EdgeInsets.only(
    top: ResponsivePixelHandler.toPixel(10, context),
    left: ResponsivePixelHandler.toPixel(20, context),
),
```

or use **ResponsivePixelHandler.toFont**, to set the font's pixel size.
```dart
child: Text('texto em flutter', style: TextStyle(
    fontSize: ResponsivePixelHandler.toPixel(10, context),
)),
```

done! :D

![](/images/mobiles-with-responsive.png)

## Accessibility

Yes, the **Responsive Pixel** controls when the mobile device defines that it will have a font larger than the default.
You can limit it to a minimum and maximum value.

In the **ResponsivePixelHandler.toFont** method we have two more properties, which we can use for these specific cases.

**minResponsivePixel** and **maxResponsivePixel**

>Example: I have a font size, but I want small devices to never be smaller than 8 px.

```dart
Text('Example', style: TextStyle(
    fontSize: ResponsivePixelHandler.toFont(50, context, 
        minResponsivePixel: 40, 
        maxResponsivePixel: 60
    ),
)),
```

**obs: If you want to set the value fixed, just don't pass the minimum and the maximum.**

## Platform

|                 | Android   | IOS                | Web            |
| ----------- | ---------- | --------------- | ------------- |
| Support   | Yes          | Yes                | Not tested  |

## Contributors
- Rafael Kenji Nagai


## Documentation
[Git Hub Documentation](https://github.com/Dev-Pub/Flutter-Responsive-Pixel)
[Flutter Package](https://pub.dev/packages/responsive_pixel)

#
#
#
#

## ==============================================
## DOCUMENTAÇÃO EM PORTUGUÊS
## ==============================================

## O problema!

Esta simples biblioteca é para as pessoas que já se deparam com o simples problema de **responsividade** na **aplicação mobile**.
Um exemplo:

![](/images/ux-model-mobile.png)

Imagine que o seu **UX Designer** desenhou uma tela para você, com **paddings** e **margins** de 15, 20, 50... tamanho de fonte, etc. Com base na imagem dele.

Porém quando você implementa, acontece o seguinte caso:

![](/images/mobiles-without-responsive.png)

Sim, no aparelho do modelo desenhado dá certo, porem na versão do celular com resolução menor, ele quebra.

## Como resolver?

Basta instalar a library **Responsive-Pixel**.

```dart
dependencies:
    responsive_pixel: ^2.0.0
```

Feito isto, **bora para o codigo!**

No sua page implemente este código no seu build.
```dart
Widget build(BuildContext context) {
    ResponsivePixelHandler.init(
        baseWidth: 480, //A largura usado pelo designer no modelo desenhado
    );
    ...
```
**obs: o baseWidth é a largura da resolução usada pelo seu UX quando desenhou as telas.**
>Exemplo: se ele usou um Iphone XR a largura seria 1125 px.

### Agora basta usar!! :D

Utilize o método **ResponsivePixelHandler.toPixel**, passando os valores passados pelo seu UX Designer.

```dart
margin: EdgeInsets.only(
    top: ResponsivePixelHandler.toPixel(10, context),
    left: ResponsivePixelHandler.toPixel(20, context),
),
```

ou use **ResponsivePixelHandler.toFont**, para definir o tamanho em pixel da font.

```dart
child: Text('texto em flutter', style: TextStyle(
    fontSize: ResponsivePixelHandler.toPixel(10, context),
)),
```

e pronto!

![](/images/mobiles-with-responsive.png)

## Acessibilidade

Sim, o **Responsive Pixel** controla quando o aparelho mobile define que vai ter uma fonte maior do que o default. 
Podendo limitar em um valor minimo e máximo.

No metodo **ResponsivePixelHandler.toFont** temos duas propriedades a mais, que podemos usar para estes casos específicos.

**minResponsivePixel** e **maxResponsivePixel**

>Exemplo: Tenho uma fonte, mas quero que em aparelhos pequenos nunca fiquem menores que 8 px. 

**obs: Se quiser fixar o valor, basta não passar o minimo e o máximo.**

## Plataforma

|           |Android   |IOS            |Web          |
|-----------|----------|---------------|-------------|
|Suporte    |Sim       |Sim            |Não testado  |

## Colaboradores
- Rafael Kenji Nagai


## Documentação
[Git Hub Documentation](https://github.com/Dev-Pub/Flutter-Responsive-Pixel)
[Flutter Package](https://pub.dev/packages/responsive_pixel)

