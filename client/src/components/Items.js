import {useState, useEffect} from "react"
import {useLocation, useParams} from "react-router"
import axios from 'axios'
import Item from './Item'
import {Link} from 'react-router-dom'

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

    const updateItem = (item) => {
        let updatedItems = items.map((i) => (i.id === item.id ? item : i));
        setItems(updatedItems);
      };

    const renderItems = () => {
        return items.map((item) => <Item key={item.id} deleteItem={deleteItem} {...item}/>)
    }


    return (
        <div >
            <h1>{category.name} Items</h1>
            <div>
            <Link className= 'button-25' to={`/categories/${category.id}/items/new`}>New Item</Link>
            <Link className= 'button-24' to={`/categories`}>Back to Gear</Link>
            <div className='item-row'>
            {renderItems()}
            </div>
            </div>
        </div>

    )
}
export default Items;