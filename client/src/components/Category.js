import React from 'react';
import { Link } from 'react-router-dom';

const Category = (props) => {
    const{id, deleteCategory}=props
    const deleteOneCategory = () =>{
      deleteCategory(id);
    };
    return(
      <div>
         <h2>{props.name}</h2>
         <Link to={`/categories/${props.id}`}>View Category</Link>
         <Link to={`/categories/${props.id}/edit`}>Edit</Link>
         <button onClick={deleteOneCategory} >Delete</button>
      </div>
    );
  };
export default Category;