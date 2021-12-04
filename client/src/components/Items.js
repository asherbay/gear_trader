import {useState, useEffect} from "react"
import {useLocation} from "react-router"
import axios from 'axios'
import Item from './Item'

const Items = (props) => {
    const dummy_items = [{name: "beep", id: 0}, {name: "boop", id: 1}, {name: "bop", id: 2}]
    const [items, setItems] = useState([])
    const location = useLocation()
    const category = location.state

    useEffect(()=>{
        getItems()
    } , [])

    const getItems = async () => {
        try { let res = await axios.get(`/api/categories/${category.id}/items`)
        setItems(res.data)
        } catch (err){
            console.log("error: " + err.data)
        } 
    }

    const addItem = (item) => {
        setItems([item, ...items])
    }

    const renderItems = () => {
        items.map((item) => <Item key={item.id} {...item}/>)
    }


    return (
        <div>
            <h1>{category.name} Items</h1>
            <p>{renderItems()}</p>
        </div>

    )
}
export default Items;