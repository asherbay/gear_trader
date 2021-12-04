import axios from "axios";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const ArticleForm = () => {
    const [title, setTitle] = useState("");
    const [author, setAuthor] = useState("");
    const [body, setBody] = useState("");
    const navigate = useNavigate();

    const handleSubmit = async (x) => {
        x.preventDefault()
        let data = {title, author, body}
            try {
                await axios.post("/api/articles", data)
                navigate("/articles")
            }catch (err) {
                alert("Error Occurred when Creating")
            }
        }
    return (
        <div className='form'>
            <h1>Post a New Article</h1>
            <form onSubmit={handleSubmit}>
            <h3>Title</h3>
                <textarea
                    value={title}
                    onChange={(x) => { setTitle(x.target.value)}} />
            <h3>Author</h3>
                    <textarea
                    value={author}
                    onChange={(x) => { setAuthor(x.target.value)}} />
            <h3>Body</h3>
                    <textarea
                    value={body}
                    onChange={(x) => { setBody(x.target.value)}} />
            <br />
            <button>Submit</button>
            </form>
        </div>
    )
}

export default ArticleForm; 