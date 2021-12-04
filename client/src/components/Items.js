import {useState, useEffect} from "react"
import {useLocation, useParams} from "react-router"
import axios from 'axios'
import Item from './Item'

const Items = (props) => {
    const dummy_items = [{name: "beep", id: 0}, {name: "boop", id: 1}, {name: "bop", id: 2}]
    const [items, setItems] = useState([])
    const location = useLocation()
    const params = useParams()
    const category = props.category
    console.log(category.name)

    useEffect(()=>{
        getItems()
    } , [])

    const getItems = async () => {
        
        try { let res = await axios.get(`/api/categories/${params.id}/items`)
        
        setItems(res.data)
        } catch (err){
            console.log("error: " + err.data)
        } 
    }

    const addItem = (item) => {
        setItems([item, ...items])
    }

    const deleteItem = async (id) => {
        await axios.delete(`/api/categories/${category.id}/items/${id}`)
        const filteredItems = items.filter((item) => item.id !== id)
        setItems(filteredItems)
    }

    const renderItems = () => {
        return items.map((item) => <Item key={item.id} deleteItem={deleteItem} {...item}/>)
    }


    return (
        <div>
            <h1>{category.name} Items</h1>
            <div >
            <p>{renderItems()}</p>
            </div>
        </div>

    )
}
export default Items;