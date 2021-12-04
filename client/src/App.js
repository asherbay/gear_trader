import './App.css';
import {Routes, Route} from "react-router-dom"
import Categories from "./components/Categories"
import CategoryForm from "./components/CategoryForm"
import CategoryShow from "./components/CategoryShow"
import Items from "./components/Items"
import ItemForm from "./components/ItemForm"
import ItemShow from "./components/ItemShow"
import Articles from "./components/Articles"
import ArticleShow from "./components/ArticleShow"
import ArticleForm from "./components/ArticleForm"
import Jobs from "./components/Jobs"
import JobShow from "./components/JobShow"
import JobForm from "./components/JobForm"
import Navbar from "./components/Navbar"
import About from "./components/About"
import Home from './components/Home';


function App() {
  return (
    <div className="App">
      <Navbar />
      <Routes>
        
        <Route path="/" element={<Home />}/>
        <Route path="/categories" element={<Categories />}/>
        <Route path="/categories/new" element={<CategoryForm />}/>
        <Route path="/categories/:id" element={<CategoryShow />}/>
        <Route path="/categories/:id/edit" element={<CategoryForm />}/>

        <Route path="/categories/:category_id/items" element={<Items />}/>
        <Route path="/categories/:category_id/items/new" element={<ItemForm />}/>
        <Route path="/categories/:category_id/items/:id" element={<ItemShow />}/>

        <Route path="/articles" element={<Articles />}/>
        <Route path="/articles/new" element={<ArticleForm />}/>
        <Route path="/articles/:id" element={<ArticleShow />}/>

        <Route path="/jobs" element={<Jobs />}/>
        <Route path="/jobs/new" element={<JobForm />}/>
        <Route path="/jobs/:id" element={<JobShow />}/>

        <Route path="/about" element={<About />}/>
        
      </Routes>
    </div>
  );
}

export default App;
