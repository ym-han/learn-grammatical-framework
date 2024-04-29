Use resource grammars -- syntactic grammar libraries --- to write semantic application grammars

# Chapter 2

## BNF
The form of a BNF rule:
> Label . Category ::= Production

The Label and Category are identifiers (without quotes). 
The Production is a sequence of two kinds of items:
* identifiers, called nonterminals
* string literals (strings in double quotes), called terminals

The rule has the following semantics:

> A tree of type Category can be built with Label as the topmost node, from any sequence specified by the production, whose nonterminals give the subtrees of the tree built.

Types of trees are the categories of the grammar, that is, the different kinds of objects that can be built (expressions, statements, programs,. . . ). Tree labels are the constructors of those categories.

## Useful itneracting with gf in terminal things

* <TAB> for autocomplete with the incremental parser

* `l: linearize`

* `generate_random`
  * `generate_random | l`
  * See intermediate stages of pipe with trace option: `generate_random -tr | l`

* `gt = generate_trees` for exhaustive generation -- reutrns all trees up to a certain depth (default 4; can be changed with `-depth = n`)

## THe idea behind GF

GF: Divorce (i) rules for defining ASTs from (ii) rules for how trees should be linearized

```
fun Pred : Item -> Quality -> Comment ;
lin Pred item quality = item ++ "is" ++ quality ;
```

## GF VS BNF in more detail

* Categories
  * In a BNF grammar, the set of categories is implicit in the sense that there are no separate rules telling what categories there are, but they are collected from the grammar rules. 
  * In GF, categories must be introduced explicitly, by `cat` rules in the abstract and `lincat` rules in the concrete. The only excep- tion is a handful of predefined categories, such as `Int` and `Float`.
    * The `lincat` rule specifies the linearization type of a category   