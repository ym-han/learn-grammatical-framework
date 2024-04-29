abstract FoodAbstract = {

  flags startcat = Phrase ;

  cat
    Phrase ; Item ; Kind ; Quality ;

  fun
    Is : Item -> Quality -> Phrase ;
    This, That : Kind -> Item ;
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish, NasiLemak : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring, Good : Quality ;
}
