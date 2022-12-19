
import './App.css';
import NavBar from './components/navbar/NavBar'
import Home from './components/home/Home'
import Explore from './components/explore/Explore'
import Book from './components/book/Book'
import About from './components/about/About'
import WhyUs from './components/whyUs/WhyUs';
import { useEffect, useState } from 'react';
// import { BsInfo } from 'react-icons/bs';

function App() {

  const [info, setInfo] = useState([])

  useEffect(() => {
    fetch('/passengers')
    .then(res => res.json())
    .then(setInfo)
  },[])

  console.log(info);

  return (
    <>
     <NavBar />

     <section className='sections'>
       <Home />
       <Explore />
       <WhyUs />
       <p>We have total of {info.length} new travlers :)</p>
       <Book />
       <About />
     </section>
    </>
  );
}

export default App;
