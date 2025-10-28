
---

## ⚙️ Partie 1 — Programmation en Assembleur LC-3

Avant la conversion en assembleur, les routines ont d’abord été développées et testées en **langage C** afin de valider leur logique.  
Elles ont ensuite été traduites en **assembleur LC-3** pour être exécutées sur le simulateur.

### 🔧 Routines implémentées
| Routine | Description | Difficultés rencontrées |
|----------|--------------|-------------------------|
| `strlen` | Calcule la longueur d'une chaîne de caractères. | Détection du caractère nul. |
| `index` | Recherche la première occurrence d’un caractère. | Gestion des adresses mémoire. |
| `rindex` | Recherche la dernière occurrence d’un caractère. | Calcul inverse et gestion des indices. |
| `strcmp` | Compare deux chaînes lexicographiquement. | Gestion des chaînes de longueurs différentes. |
| `strcpy` | Copie une chaîne source vers une destination. | Gestion du dépassement mémoire. |
| `strncpy` | Copie un nombre fixe de caractères. | Arrêt correct si chaîne source plus courte. |

Les tests ont été effectués avec différents cas pour garantir la fiabilité et la robustesse des fonctions.

---

## ⚡ Partie 2 — Câblage des Circuits sous Logisim

Les circuits du processeur LC-3 ont été modélisés à l’aide de **Logisim Evolution**.  
Chaque module a été implémenté et connecté selon le tableau d’instructions LC-3.

### 🧠 Modules réalisés

#### 1️⃣ DecodeIR  
- Extraction des champs d’instruction : opcode, registres, etc.  
- Utilisation de multiplexeurs et décodeurs.  
- Synchronisation des signaux entre modules (ALU, NZP, etc.).

#### 2️⃣ ALU  
- Exécute les opérations **ADD**, **AND**, **NOT**, et les nouvelles instructions **BSF** et **BSB**.  
- Gestion des entrées via les registres ou valeurs immédiates.  
- Ajout de circuits pour parcourir les bits actifs dans les registres.

#### 3️⃣ NZP  
- Met à jour les indicateurs **N**, **Z**, **P** selon le résultat de l’ALU.  
- Gestion des transitions d’état et instructions ne modifiant pas ces flags.

#### 4️⃣ Scan  
- Implémente **BSF (bit scan forward)** et **BSB (bit scan backward)**.  
- Recherche du premier bit actif dans un registre (dans un sens ou l’autre).  
- Optimisation du circuit pour réduire les délais de propagation.

#### 5️⃣ WriteVal  
- Écrit les résultats dans les registres cibles.  
- Source de données : **ALU**, **Mémoire**, ou **PC** (compteur de programme).  
- Multiplexeur pour choisir la bonne source selon l’instruction.

---

## 🚧 Défis rencontrés

- **Gestion des adresses mémoire :** éviter les erreurs de débordement.  
- **Optimisation du câblage :** minimiser la profondeur des circuits et améliorer la vitesse.  
- **Synchronisation des signaux :** assurer une coordination parfaite entre modules.  

---

## ✅ Résultats et avancement

- Modules **DecodeIR**, **ALU**, **NZP** et **Scan** terminés (version 1).  
- **WriteVal** en cours d’intégration (version 2).  
- Routines LC-3 **fonctionnelles et testées**.  

---

## 🧪 Outils et environnement

- **Logisim Evolution** pour la conception des circuits.  
- **Assembleur LC-3 (LC3Edit / PennSim)** pour la programmation et les tests.  
- **Langage C** utilisé pour prototyper les routines avant conversion.

---

## 📘 Conclusion

Ce projet a permis de mettre en pratique les concepts fondamentaux de l’architecture des microprocesseurs :  
le décodage d’instructions, le traitement logique et arithmétique, la gestion des registres et la synchronisation matérielle.  

Il constitue une base solide pour aborder la **conception de processeurs plus complexes** ou la **simulation matérielle temps réel**.

---

## 🧑‍💻 Auteurs
- **Rababe Zidani** — Conception et implémentation des circuits Logisim  
- **Nissrine Elabjani** — Programmation assembleur LC-3 et tests unitaires  

Université Paris Cité – École d’Ingénieurs Denis Diderot (EIDD)  
Spécialité : **Systèmes Informatiques Embarqués (SIE)**

---
