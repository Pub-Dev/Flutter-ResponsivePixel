# Flutter Responsive Pixel

## Exemplo

Basta instalar a library **Flutter_Responsive_Pixel**.

```dart
dependencies:
  flutter_responsive_pixel: ^1.0.0
```

Feito isto, **bora para o codigo!**

Como pode ver no meu arquivo **main.dart** implementei este código no metodo build, antes do return.
Definindo a largura do modelo que o meu UX usou para desenhar suas telas.
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

Utilizei o método **ResponsivePixelHandler.toResponsivePixel**, passando os valores iguais ao desenho do UX Designer.

```dart
margin: EdgeInsets.only(
	top: ResponsivePixelHandler.toResponsivePixel(10, context),
	left: ResponsivePixelHandler.toResponsivePixel(20, context),
),
```
e pronto!

![](/images/mobiles-with-responsive.png)


