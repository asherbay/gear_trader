import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';
import Items from './Items'

const ItemShow = () => {
    const [name, setName] = useState("");
    const [item, setItem] = useState({});
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
  
    return(
      <div>
         <p>Name: {item.name}</p>
         <p>id: {params.id}</p>
         <Link to={`/categories/${params.category_id}/items/${params.id}/edit`}>edit</Link>
         <Link to={`/categories/${params.category_id}`}>Back</Link>
         <button onClick={()=>deleteItem()} >Delete</button>
      </div>
    );
  };
export default ItemShow;