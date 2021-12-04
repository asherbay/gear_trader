import React from 'react';
import { Link } from 'react-router-dom';

const Category = (props) => {
    const{id, deleteCategory, name}=props
    const deleteOneCategory = () =>{
      deleteCategory(id);
    };
    return(
      <div className='item-container'>
         <h2 className='front-page-h2'>{name}</h2>
         <div>
         <Link className='button-24' to={`/categories/${id}`} state={props.id}>View Category</Link>
         <br/>
         <Link className='button-25' to={`/categories/${id}/edit`}>Edit</Link>
         <button className='button-25' onClick={deleteOneCategory} >Delete</button>
         </div>
      </div>
    );
  };
export default Category;