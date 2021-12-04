import React from "react"
import {Link} from "react-router-dom"

const Item = (props) => {
    const {name, price, description, condition, id, category_id, deleteItem} = props
    return (
        <div>
            <h1>{name}</h1>
            <p>${price}</p>
            <p>{description}</p>
            <p>condition: {condition}</p>
            <p>id: {id}</p>
            <p>category_id: {category_id}</p>
            <Link to={`/categories/${category_id}/items/${id}`}>view</Link>
            <Link to={`/bugs/${category_id}/items/${id}/edit`}>edit</Link>
            <button onClick={() => deleteItem(id)}>delete</button>
        </div>

    )
}
export default Item;