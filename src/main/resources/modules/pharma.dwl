fun getSchema(name, issste ,mega)= name match  {
    case 'ISSSTE' -> issste
    case 'MEGA' -> mega
    else -> issste
}

fun getAvior(name, issste ,mega)= name match  {
    case 'ISSSTE' -> issste
    case 'MEGA' -> mega
    else -> issste
}