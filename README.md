# El Coliseo 
 
[![Build Status](https://travis-ci.org/wollok/clasesColiseo.svg?branch=master)](https://travis-ci.org/wollok/clasesColiseo)


## Clases constructores
![Coliseo](https://thumbs.dreamstime.com/t/dibujo-del-coliseo-ejemplo-de-colosseum-en-roma-italia-65506949.jpg)
  
**Construido en el siglo I y ubicado en el centro de la Ciudad de Roma, es actualmente una de las siete maravillas del mundo moderno pero en sus inicios era un anfiteatro ideal para presenciar peleas de gladiadores y otros espectáculos públicos.**

En el coliseo podíamos presenciar a distintos gladiadores peleando con una gran variedad de armas y equipos pero empecemos de a poco.

Arranquemos por las armas. Entre las armas más comunes que se usaban estaban las armas de filo como espadas, dagas o hachas. Las armas de filo aportan un valor de ataque equivalente al filo del arma multiplicado por su longitud. (La longitud de las armas de filo se mide en centímetros y su filo es un número entre 0 y 1.)
Una alternativa para estas armas eran las llamadas contundentes, como por ejemplo mazas y martillos, que eran las preferidas de los gladiadores más brutos. Las armas contundente aportan un poder de ataque igual al peso del arma. Los gladiadores pueden cambiar sus armas 

Como de estas peleas no siempre salían todos los que entraban a la arena, muchos gladiadores no se valían solo de sus habilidades de pelea sino que llevaban algo de armadura. Por lo general usaban cascos y escudos para intentar parar los ataques del enemigo o no sufrir una herida letal (al menos no tan rápido). Los cascos les brindan 10 puntos de armadura a su portador, los escudos por su parte suman 5 más el 10% de la destreza del luchador.

### Los Gladiadores.
Finalmente llegamos a los protagonistas de esta historia… 

Para poder entrar a combatir un gladiador debe saber atacar y defenderse para no ser una presa fácil. A modo de simplificación diremos que todos los gladiadores tienen 100 unidades de vida inicialmente.
En esta oportunidad contamos con dos tipos de gladiadores:
- Los mirmillones. Su estilo es uno de los más clásicos dado que salían a combatir con un arma de mano, en general una espada o gladius, más un escudo rectangular o un casco con cresta. La fuerza promedio de este tipo de gladiadores es variable y su destreza es siempre 15. Un gladiador puede cambiar su armadura.
- Los  dimachaerus. Estos gladiadores peleaban con varias armas. No usaban armadura porque eran tipos duros. Los dimachaerus eran gladiadores que se valían mucho de sus habilidades, tienen una fuerza de 10 y una destreza en particular que puede ser diferente para cada gladiador. 


### Y los gladiadores atacan!! 

Cuando un mirmillon ataca a cualquier gladiador le inflige al atacado tanto daño como la diferencia entre su poder de ataque y la defensa del atacado. El poder de ataque equivale al poder de su arma más su propia fuerza. 
Cuando un dimachaerus ataca a otro gladiador, también le inflige al atacado tanto daño como la diferencia entre su poder de ataque y la defensa del atacado, pero su poder de ataque equivale a su fuerza más la sumatoria de los poderes de todas las armas que tenga.  Además, cada vez que ataca, aumenta en 1 su destreza.
Para un mirmillon, su defensa se calcula como los puntos de su armadura más su destreza. 
Para un dimachaerus, su defensa es la mitad de su destreza.

Se pide implementar la solución que considere necesaria para hacer que un gladiador ataque a otro.

### Pelea
Cuando un gladiador se pelea con otro lo que hace es atacarlo. Luego de sufrir los efectos correspondientes, el gladiador atacado realiza un contraataque, mediante su propia forma de atacar. 

### Grupos
Permitir que en el coliseo haya varios grupos de gladiadores que puedan combatir contra otros grupos. De los grupos se conoce también un nombre que los representa y se registra la cantidad de peleas en las que participó. Un grupo es capaz de manejar a sus miembros (agregar o quitar gladiadores).
Los combates son a tres rounds, en cada round cada grupo elige a su campeón para que pelee con el campeón adversario. El campeón debe ser el más fuerte del grupo que pueda combatir (si aún cuenta con puntos de vida disponibles)
<<<<<<< HEAD
Un gladiador puede crear un grupo juntándose con otro gladiador y definiendo el nombre del grupo.
=======
Un gladiador puede crear un grupo junt�ndose con otro gladiador y definiendo el nombre del grupo. Si es un mirmillon el que lo arma, le pone por nombre "mirmillolandia". Si es un dimachaerus, el nombre es por ejemplo "D-12" donde 12 es la suma de su poder de ataque y el de su colega del grupo.

>>>>>>> branch 'master' of https://github.com/wollok/Clases-Coliseo.git

### El Coliseo
El coliseo puede organizar combates entre grupos de gladiadores, aunque a veces tambien hace combatir a un grupo contra un gladiador suelto. Los dueños del coliseo no son unos tiranos así que también curan a los gladiadores, ya sea en grupos o solos.
