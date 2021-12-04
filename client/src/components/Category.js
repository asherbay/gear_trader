import React from 'react';
import { Link } from 'react-router-dom';

const Category = (props) => {
    const{id, deleteCategory, name}=props
    const deleteOneCategory = () =>{
      deleteCategory(id);
    };
    return(
      <div>
         <p>Name: {name}</p>
         <p>id: {id}</p>
         <Link to={`/categories/${id}`} state={props.id}>View Category</Link>
         <Link to={`/categories/${id}/edit`}>Edit</Link>
         <button onClick={deleteOneCategory} >Delete</button>
      </div>
    );
  };
export default Category;