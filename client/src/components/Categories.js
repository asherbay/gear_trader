import React, {useEffect, useState} from 'react';
import axios from 'axios';
import { Link } from "react-router-dom";
import Category from './Category';

const Categories = () => {
    const cat1 = {name:'cat1', id:1}
    const cat2 = {name:'cat2', id:2}
    const cat3 = {name:'cat3', id:3}
    const [categories, setCategories] = useState([]);
    const catArr = [cat1, cat2, cat3]
    useEffect(()=>{
      getCategories();
    }, []);

    const getCategories = async()=>{
        let response = await axios.get('/api/categories');
        setCategories(response.data);
        console.log(response.data);
      };

      const updateCategory = (category) => {
        let updatedCategories = categories.map((c) => (c.id === category.id ? category : c));
        setCategories(updatedCategories);
      };
    
      const deleteCategory = async (id) => {
        await axios.delete(`/api/categories/${id}`);
        // remove from UI
        const filterCategories = categories.filter((category) => category.id !== id);
        setCategories(filterCategories);
      };

      const renderCategories=()=>{
        if(categories.length === 0) {
          return <p>Couldn't find any categories</p>;
        }
        return categories.map((category)=>{
          return <Category key={category.id} {...category} deleteCategory={deleteCategory} updateCategory={updateCategory}/>
        });
      };

    return (
        <div>
            <div>
                <h1 className='page-header'>What Kind of Gear Are You Looking For?</h1> 
                <hr/>
            </div>
            <Link className= 'button-24' to={`/categories/new`}>New Category</Link>
            <div className= 'item-row'>
                {renderCategories()}
            </div>
        </div>
    );
};
export default Categories;