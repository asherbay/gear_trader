import React from 'react';
import { Link } from 'react-router-dom';

const Article = (props) => {
    const{id, deleteArticle}=props
    const deleteOneArticle = () =>{
      deleteArticle(id);
    };
    return(
      <div>
         <h2>{props.name}</h2>
         <Link to={`/Articles/${props.id}`}>View Category</Link>
         <button onClick={deleteOneArticle} >Delete</button>
      </div>
    );
  };
export default Article;