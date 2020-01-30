# Flutter Responsive Pixel!

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

Feito isto, **bora para o codigo!**

No seu arquivo **main.dart** implemente este código no seu build.
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

Utilize o método **ResponsivePixelHandler.toResponsivePixel**, passando os valores passados pelo seu UX Designer.

```dart
margin: EdgeInsets.only(
	top: ResponsivePixelHandler.toResponsivePixel(10, context),
	left: ResponsivePixelHandler.toResponsivePixel(20, context),
),
```
e pronto!

![](/images/mobiles-with-responsive.png")

## Customizações

No metodo **ResponsivePixelHandler.toResponsivePixel** temos duas propriedades a mais, que podemos usar para casos específicos.

**minResponsivePixel** e **maxResponsivePixel**

Caso deseja delimitar apenas uma propriedade, para não ultrapassar o limite em pixel.

>Exemplo: Tenho uma fonte, mas quero que em aparelhos pequenos nunca fiquem menores que 8 px. 


## Plataforma

|           |Android   |IOS            |Web          |
|-----------|----------|---------------|-------------|
|Suporte	|Sim       |Sim            |Não testado  |

## Colaboradores
- Rafael Kenji Nagai

