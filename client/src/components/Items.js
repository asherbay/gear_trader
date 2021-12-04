import {useState, useEffect} from "react"
import {useLocation} from "react-router"
import axios from 'axios'

const Items = (props) => {
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

    const renderItems = () => {
        items.map((item) => <Item key={item.id} {...item}/>)
    }


    return (
        <div>
            <h1>Items</h1>
            <p>{renderItems()}</p>
        </div>

    )
}
export default Items;