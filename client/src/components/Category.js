import React from 'react';
import { Link } from 'react-router-dom';

const Category = (props) => {
    const{id, deleteCategory}=props
    const deleteOneCategory = () =>{
      deleteCategory(id);
    };
    return(
      <div>
         <p>Name: {props.name}</p>
         <p>id: {props.id}</p>
         <Link to={`/categories/${id}`}>View Category</Link>
         <Link to={`/categories/${id}/edit`}>Edit</Link>
         <button onClick={deleteOneCategory} >Delete</button>
      </div>
    );
  };
export default Category;