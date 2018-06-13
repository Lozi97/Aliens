import React, { Component } from 'react';
import './App.css';
import {Header,Card} from './components/alien'
import logo from './assets/222.png'



class App extends React.Component {
  render() {
    return (
      <div className="App">
        <Header/>
        <div className="gray"></div>
        <p className="App-intro">
        <h1 className="Intro-title">Aliens</h1> 
        <br></br>
        <Card/> 
        <Card/>
        <Card/>
        
        </p>
      </div>
    );
  }
}



export default App;
