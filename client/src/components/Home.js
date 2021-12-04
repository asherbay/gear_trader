import React from "react";
import { Link } from "react-router-dom";
import tent from './tent.svg'

const Home = () => {
    return (
        <div>
            <div className="front-page-img" >
                <h1 className='front-page-h1' >Gear Trader</h1>
                <h2 className='front-page-h2'>Your home away from home for all things outdoors!</h2>
            </div>
            <div className='front_categories'>
                <img src={tent} style={{width: '100px' }} alt='tent icon'/>
                <h3 className='front-page-h3'>Gear for Sale</h3>
                <Link className='button-24' to={`/categories/`}>Explore Gear</Link>
            </div>
            <div className='work-img'>
                <h3 className='front-page-h3'>Work in the Outdoors</h3>
                <Link className='button-24' to={`/jobs/`}>View Jobs</Link>
            </div>
            <div className='front_categories'>
                <h3 className='front-page-h3'>Our friends in the outdoors share gear tips for your next adventure.</h3>
                <Link className='button-24' to={`/articles/`}>See What's New</Link>
            </div>
        </div>

    );
};

export default Home;