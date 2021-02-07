import React from 'react';
import { Route, Switch, BrowserRouter as Router } from 'react-router-dom';
import Nav from '../Nav';
import Footer from '../Footer';
import Home from '../Home';
import Produtos from '../Produtos';
import Lojas from '../Lojas';
import Contato from '../Contato';
import Pedidos from '../Pedido/pedidos';

import './styles.css';

const App = () => {
  return (
    <>
      <Router>
        <Nav />
        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/produtos" component={Produtos} />
          <Route path="/loja" component={Lojas} />
          <Route path="/contato" component={Contato} />
          <Route path="/pedidos" component={Pedidos} />


        </Switch>
      </Router>
      <Footer />
    </>
  );
}

export default App;
