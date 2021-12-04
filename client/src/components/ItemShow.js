import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';
import Items from './Items'

const ItemShow = () => {
    const [name, setName] = useState("");
    const [category, setItem] = useState({});
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
      navigate(`/categories/${params.category_id}/items`);
    };
  
    return(
      <div>
         <p>Name: {category.name}</p>
         <p>id: {params.id}</p>
         <Link to={`/api/categories/${params.category_id}/items/${params.id}/edit`}>Edit</Link>
         <button onClick={()=>deleteItem()} >Delete</button>
      </div>
    );
  };
export default ItemShow;