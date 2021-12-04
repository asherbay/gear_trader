import React from 'react';
import { Link } from 'react-router-dom';

const Category = (props) => {
    const{id, deleteCategory, name}=props
    const deleteOneCategory = () =>{
      deleteCategory(id);
    };
    return(
      <div>
<<<<<<< HEAD
         <p>Name: {name}</p>
         <p>id: {id}</p>
         <Link to={`/categories/${id}`} state={props.id}>View Category</Link>
         <Link to={`/categories/${id}/edit`}>Edit</Link>
=======
         <h2>{props.name}</h2>
         <Link to={`/categories/${props.id}`}>View Category</Link>
         <Link to={`/categories/${props.id}/edit`}>Edit</Link>
>>>>>>> a1d4f1979f5bda902cf9e074ab63be7115eee6cf
         <button onClick={deleteOneCategory} >Delete</button>
      </div>
    );
  };
export default Category;