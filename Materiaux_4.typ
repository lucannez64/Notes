#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Materiaux 4",
  subtitle: "19/09/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Rayon atomique

+ Demi-distance entre les centres d'atomes voisin.
+ Une zone ou on a 90% de probabilité de trouver les électrons

= Energie d'ionisation

Energie nécessaire pour arracher un électron et former un ion positif à l'état gazeux

Dépend du nombre d'électron dans la couche de valence et de la taille de l'atome

= Affinité électronique

Energie associée à la fixation d'un électron par un atome en phase gazeuse.

= Interaction entre les atomes

Le déroulement des interaction et la distance d'équilibre dépend de leur structure atomique, de leur position dans la table périodique et de leur propension à donner/ recevoir des électrons.

= Définitions

- Molécule : groupe de deux atomes ou plus, unis selon un arrangement spatial déterminé par des forces appelées liaisons covalentes. 
- Composé moléculaire : est formé de molécules constituées d’atomes de deux éléments distincts.  
- Composé ionique : lorsqu'un atome isolé ou un groupe d'atomes cède ou acquiert des électrons, il y a formation d'ions. La formule d'un composé ionique a comme base une combinaison électriquement neutre de cations et d'anions qu'on appelle une entité formulaire.

= Equation Chimique

Matériaux de départ = Réactifs $ arrow.long.long$ Substances formées = Produits

+ Conservation du nombre de chaque atome
+ Conservation de la charge électrique totale

$ mat( 1, 0, 1, 0; 0 ,2, 1, 2; 0, 1, 1, 0;) $

= Stoechiométrie

Loi de conservation de masse

= Définitions 2

- La mole: unité qui permet de rapporter simplement les
nombres gigantesques d’atomes et de molécules dans
des échantillons visibles
- Masse atomique: masse en grammes d'une mole d'atomes d'un élément

= Potentiel

Les forces d'attraction et de répulsion peuvent être simulées par le potentel de Lennard Jones. $ E = epsilon_0[(r_0/r)^12 - 2 (r_0/r)^6]= integral F_(e x t) d r $
