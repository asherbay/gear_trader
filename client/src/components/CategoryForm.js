import axios from 'axios';
import React, {useState, useEffect} from 'react';
import { useParams, useNavigate } from 'react-router';

const CategoryForm = () => {
    const [name, setName] = useState("");
    const [price, setPrice] = useState("");
    const [description, setDescription] = useState("");
    const [condition, setCondition] = useState("");
    const navigate = useNavigate();
    const params = useParams();
  
    useEffect(() => {
      // don't get item for new form, only edit
      if (params.id) {
        getCategory();
      }
    }, []);
  
    const getCategory = async () => {
      try {
        let res = await axios.get(`/api/cetegories/${params.id}`);
        setName(res.data.name);
      } catch (err) {
        alert("err occurred getting category");
      }
    };
  
    const handleSubmit = async (e) => {
      // this prevents a reload
      e.preventDefault();
      console.log({ name: name });
      const category = { name: name };
  
      if (params.id) {
        // update logic here
        try {
          let response = await axios.put(`/api/categories/${params.id}`, category);
          console.log(response.data);
          // need update UI (update response.data in items)
          navigate("/");
        } catch (err) {
          alert(`${err.response.data.errors}`);
          console.log(err);
          console.log(err.response);
          console.log(err.response.data.errors);
        }
      } else {
        // creaete logic here
        // axios call here
        // save to database DONE
        try {
          let response = await axios.post("/api/categories", category);
          navigate("/");
          // need update  (add response.data to items)
        } catch (err) {
          alert("err occured");
          console.log(err);
          console.log(err.response);
        }
      }
    };
    return (
      <div>
        <h1>{params.id ? "Edit" : "New"} Category </h1>
        <form onSubmit={handleSubmit}>
          <p>Name</p>
          <input value={name} onChange={(e) => setName(e.target.value)} />
          <button>{params.id ? "Update" : "Create"} </button>
        </form>
      </div>
    );
  };
export default CategoryForm;