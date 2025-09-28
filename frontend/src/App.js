import { BrowserRouter as Router, Routes, Route, Navigate } 
  from "react-router-dom";
//---------------------------------------------------------
import { Login, Account }  
  from './pages';

import Navbar from './component/navbar/Navbar'

import './App.css';

function App() {
  return (
    <Router>
      <Navbar/>
      <Routes>
        <Route path="/" element={<Navigate replace to="/dashboard" />} />
        <Route path="/login"  exact element={<Login />}  />
        <Route path="/account" exact element={<Account />} />
      </Routes>
    </Router>
    
  );
}

export default App;