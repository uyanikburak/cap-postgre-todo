using {
    Tasks      as TasksDB,
    Categories as CategoriesDB
} from '../db/data-models';

service toDoService {
    entity Categories as projection on CategoriesDB;
    entity Tasks      as projection on TasksDB;
}
