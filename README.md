# learn_animations


### *Qual animação você tem em mente?*


#### No geral, temos dois tipos de animação:

---

## Baseadas em desenhos 
    Focadas em sprites
    
    ** Exemplos: Personagens de jogos, transformações etc

---
## Baseadas em código
    Focadas em widgets (segue os padrões de layout e estilo)

    ** Exemplos: rows, columns, cores, e estilos de texto


 Temos dois tipos de animação baseadas em código:

### Implicity animations

    Altera valores de propriedades existentes na widget.

    Categorias:

        - Built-in: Exemplo: AnimatedContainer, AnimatedIcon, Animated[XPTO]

        - TweenAnimationBuilder: Cria uma animação implicita customizada

### Explicity animations

    Começam a animação quando são chamadas explicitamente. 
    Consegue fazer tudo que uma "animação implicita" faz e um pouco mais.

    [Atenção]: Necessário gerenciar o lifecycle do controller (pois não é uma widget), ou seja, devemos colocar dentro de uma stateful widget.

    Categorias:
    
        - Built-in: FadeTransition, RotationTransition, [XPTO]Transition

        - Custom:
            - AnimatedWidget: Animação explicita customizada
            - AnimatedBuilder: Caso contrário
    
## Como decidir qual dos tipos devo utilizar?

* Explicity:
    - Animação repete "eternamente" ou enquanto uma condição for "true". Ex: música tocando
    - Animação é "descontínua". Ex: Circulo pequeno -> grande -> pequeno -> grande
    - Animação de widgets de modo coordenado.

* Implicity:
    - Caso contrário