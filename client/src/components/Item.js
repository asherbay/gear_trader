import React from "react"
import {Link} from "react-router-dom"

const Item = (props) => {
    const {name, price, description, condition, id, category_id, deleteItem} = props
    return (
        <div className='item-container'>
            <h1>{name}</h1>
            <p>${price}</p>
            <p>{description}</p>
            <p>Condition: {condition}</p>
            <Link to={`/categories/${category_id}/items/${id}`}>view</Link>

            <button onClick={() => deleteItem(id)}>delete</button>
        </div>

    )
}
export default Item;