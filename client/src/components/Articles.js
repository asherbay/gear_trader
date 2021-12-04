import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom"
import axios from "axios";

const Articles  = () => {
    const [articles, setArticles] = useState([])
    useEffect(()=>{
        getArticles()
    }, [])

    const getArticles = async () => {
        try {
            let data = await axios.get("/api/articles")
            setArticles(data.data)
        } catch (err) {
            alert("Error Occurred during getArticles()")
        }
    }
    const renderArticles = () => {
        return articles.map((article) => {
            return(
                <div>
                    <Link to={`/articles/${article.id}`} state={{ article }}><h3>{article.title}</h3></Link>
                   
                </div>
        )}
    )}
    return (
        <div>
            <h1>Articles</h1>
            <Link to={"/article/new"}><button>Post a New article</button></Link>
            {renderArticles()}
        </div>

    )
}


export default Articles;