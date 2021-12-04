import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';
import Items from './Items'

const CategoryShow = () => {
    const [name, setName] = useState("");
    const [category, setCategory] = useState({});
    const navigate = useNavigate();
    const params = useParams();
  
    useEffect(() => {
      getCategory();
    }, []);
  
    const getCategory = async () => {
      try {
        let res = await axios.get(`/api/categories/${params.id}`);
        setCategory(res.data);
      } catch (err) {
        alert(err);
      }
    };
  
    const deleteCategory = async () => {
      await axios.delete(`/api/categories/${params.id}`);
      navigate("/");
    };
  
    return(
      <div>
         <p>Name: {category.name}</p>
         <p>id: {params.id}</p>
         <Link to={`/categories/${params.id}/edit`}>Edit</Link>
         <button onClick={()=>deleteCategory()} >Delete</button>
         <Items category={category}/>
      </div>
    );
  };
export default CategoryShow;