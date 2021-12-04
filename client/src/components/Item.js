import React from "react"

const Item = (props) => {
    const {name, price, description, id, category_id, deleteItem} = props
    return (
        <div>
            <h1>{name}</h1>
            <p>${price}</p>
            <p>{description}</p>
            <p>id: {id}</p>
            <p>category_id: {category_id}</p>
            <button onClick={() => deleteItem(id)}>delete</button>
        </div>

    )
}
export default Item;