import axios from "axios";
import React, { useState } from "react";
import { useParams, useNavigate, useLocation } from "react-router-dom";

const ItemForm = (props) => {
    const location = useLocation();
   // const { item } = location.state ? location.state : {};
   const item = props.item
    const [name, setName] = useState(item ? item.name : "");
    const [description, setDescription] = useState(item ? item.description : "");
    const [condition, setCondition] = useState(item ? item.condition : "");
    const [price, setPrice] = useState(item ? item.price : "");
    const params = useParams();
    const navigate = useNavigate();

    const handleSubmit = async (x) => {
        x.preventDefault()
        let data = {name, description, price, condition}
        if (params.id) {
            try {
                await axios.put(`/api/categories/${params.category_id}/items/${params.id}`, data)
                navigate(`/categories/${params.category_id}`)
            } catch (err) {
                alert("Error Occurred when Updating")
            }
        } else {
            try {
                await axios.post(`/api/categories/${params.category_id}/items`, data)
                navigate(`/categories/${params.category_id}`)
            }catch (err) {
                alert("Error Occurred when Creating")
            }
        }
    }
    return (
        <div>
            <h1>{params.id ? "" : "Add a New Item"}</h1>
            <form onSubmit={handleSubmit}>
            <h3>Name</h3>
                <textarea
                    value={name}
                    onChange={(x) => { setName(x.target.value)}} />
            <h3>Price</h3>
                    <textarea
                    value={price}
                    onChange={(x) => { setPrice(x.target.value)}} />
            <h3>Description</h3>
                    <textarea
                    value={description}
                    onChange={(x) => { setDescription(x.target.value)}} />
            <h3>Condition</h3>
                    <textarea
                    value={condition}
                    onChange={(x) => { setCondition(x.target.value)}} />
            
            <br />
            <button>Submit</button>
            </form>
        </div>
    )
}

export default ItemForm; 