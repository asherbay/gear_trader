import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';
import { Link } from 'react-router-dom';
import Items from './Items'

const ArticleShow = () => {
    
    const [article, setArticle] = useState({});
    const navigate = useNavigate();
    const params = useParams();
  
    useEffect(() => {
      getArticle();
    }, []);
  
    const getArticle = async () => {
      try {
        let res = await axios.get(`/api/articles/${params.id}`);
        setArticle(res.data);
      } catch (err) {
        alert(err);
      }
    };
  
  
    return(
      <div> 
     
        <h1 style={{color: "blue"}}>{article.title}</h1>
        <h3 style={{fontFamily: '-apple-system', fontSize: "2rem"}}>Contributed by: {article.author}</h3>
        <p style={{fontFamily: '-apple-system', fontSize: "1rem"}}>{article.body}</p>
      </div>
    );
  };
export default ArticleShow;