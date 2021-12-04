import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';

const CategoryShow = () => {
    const [name, setName] = useState("");
    const navigate = useNavigate();
    const params = useParams();
  
    useEffect(() => {
      getCategory();
    }, []);
  
    const getCategory = async () => {
      try {
        let res = await axios.get(`/api/categories/${params.id}`);
        setName(res.data.name);
      } catch (err) {
        alert("err occurred getting category");
      }
    };
  
    const deleteCategory = async () => {
      await axios.delete(`/api/categories/${params.id}`);
      navigate("/");
    };
  
    return(
      <div>
         <p>Name: {name}</p>
         <p>id: {params.id}</p>
         <Link to={`/categories/${params.id}/edit`}>Edit</Link>
         <button onClick={()=>deleteCategory()} >Delete</button>
      </div>
    );
  };
export default CategoryShow;