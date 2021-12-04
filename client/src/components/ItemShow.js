import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';
import Items from './Items'
import ItemForm from './ItemForm'

const ItemShow = () => {
    const [name, setName] = useState("");
    const [item, setItem] = useState({});
    const [showEdit, setShowEdit] = useState(true);
    const navigate = useNavigate();
    const params = useParams();
  
    useEffect(() => {
      getItem();
    }, []);
  
    const getItem = async () => {
      try {
        let res = await axios.get(`/api/categories/${params.category_id}/items/${params.id}`);
        setItem(res.data);
      } catch (err) {
        alert(err);
      }
    };
  
    const deleteItem = async () => {
      await axios.delete(`/api/categories/${params.category_id}/items/${params.id}`);
      navigate(`/categories/${params.category_id}`);
    };
    
    if (showEdit) {
        return( 
            <div>
                <h1>{item.name}</h1>
                <Link to={`/categories/${params.category_id}`}>Back</Link>
                <p>{item.price}</p>
                <p>{item.condition}</p>
                <p>{item.description}</p>
                
                <button onClick={() => setShowEdit(!showEdit)}>
                 {showEdit ? "Edit" : "Hide"}
                </button>
                <button onClick={()=>deleteItem()} >Delete</button>
            </div>
        )}else {
           return(
            <div>
                <ItemForm state={{ item }} item={item}/>
                <br />
                <button onClick={() => setShowEdit(!showEdit)}>
                 {showEdit ? "Update" : "Back"}
                </button>
            </div>
  )}
};
export default ItemShow;