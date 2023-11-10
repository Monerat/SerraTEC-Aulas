import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";
import Cadastro from './components/Cadastro.jsx';
import Listagem from './components/Listagem.jsx';
import { PessoaContext, PessoaProvider } from './context/PessoaContext.jsx';

const router = createBrowserRouter([
  {
    path: "/cadastro",
    element: <Cadastro />,
  },
  {
    path: "/listagem",
    element: <Listagem />,
  },
]);

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
      <PessoaProvider>
        <RouterProvider router={router} />
      </PessoaProvider>
  </React.StrictMode>,
)
