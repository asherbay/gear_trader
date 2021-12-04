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
            let shortBody = article.body.slice(0,175);
            return(
                <div>
                    <h3>{article.title}</h3>
                    <p>{shortBody}...</p>
                    <Link to={`/articles/${article.id}`} state={{ article }}><button>View Article</button></Link>
                </div>
        )}
    )}
    return (
        <div>
            <h1>Articles</h1>
            <Link to={"/articles/new"}><button>Post a New Article</button></Link>
            {renderArticles()}
        </div>

    )
}


export default Articles;