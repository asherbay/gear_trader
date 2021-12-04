import React from "react"
import {Link} from "react-router-dom"

const Item = (props) => {
    const {name, price, description, condition, id, category_id, deleteItem} = props
    return (
        <div className='item-container'>
            <h1>{name}</h1>
            <p>${price}</p>
            <p>{description}</p>
<<<<<<< HEAD
            <p>condition: {condition}</p>
            <Link to={`/categories/${category_id}/items/${id}`}>view</Link>

            <button onClick={() => deleteItem(id)}>delete</button>
=======
            <p>Condition: {condition}</p>
            <div>
            <Link className='button-25' to={`/bugs/${category_id}/items/${id}/edit`}>edit</Link>
            <button className='button-25' onClick={() => deleteItem(id)}>delete</button>
            </div>
>>>>>>> 9bf6d4c2607e025b9070b20c47cc5f359c562d02
        </div>

    )
}
export default Item;