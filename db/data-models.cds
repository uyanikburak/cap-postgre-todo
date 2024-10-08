entity Tasks {
    key ID          : UUID;
        name        : String(50);
        description : String(500);
        category    : Association to Categories;
}

entity Categories {
    key ID          : UUID;
        name        : String(50);
        description : String(1000);
        task        : Association to many Tasks
                          on task.category = $self;
}

entity Test {
    key ID          : UUID;
        name        : String(50);
}
