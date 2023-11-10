import NavBar from "../components/Navbar"
import { useState, useEffect, useContext } from "react"
import { api } from "../api/api"
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import { useNavigate } from "react-router-dom";
import { Context } from "../context/Context"
import 'bootstrap/dist/css/bootstrap.min.css';

const Login = () => {
  const [email, setEmail] = useState('')
  const [senha, setSenha] = useState('')
  const [user, setUser] = useState({})
  const navigate = useNavigate();

  const { usuario, setUsuario, usuarioLogado, setUsuarioLogado } = useContext(Context)

  const getUser = async () => {
    const response = await api.get("/users");
    setUser(response.data);    
  }
  
  useEffect(() => {
    getUser()
  }, [])

  const handleEmail = (event) => {
    setEmail(event.target.value)
  }

  const handleSenha = (event) => {
    setSenha(event.target.value)
  }

  const handleLogin = async (e) => {
    e.preventDefault()
    setUsuario(user.filter((user) => user.email === email && user.senha === senha))
    handleAuth()
  }

  const handleAuth = () => {
    if (usuario[0] === undefined) {
      alert("usuario ou senha inválidos");
    } else {
      setUsuarioLogado(true)
      navigate("/produtos")
    }
  }

  const handleCadastro = () => {
    navigate("/cadastrar")
  }

  return (
    <>
      <NavBar />
      <div style={{
        backgroundImage: 'url("https://i.gifer.com/ibu.gif")',
        backgroundSize: 'cover',
        backgroundRepeat: 'no-repeat',
        backgroundPosition: 'center',
        height: '80vh',
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        justifyContent: 'center',
      }}>
        <Form style={{backgroundColor: '#03053db0', borderRadius: "8px"}} onSubmit={handleLogin} onReset={handleCadastro}>
          <Form.Group className="mb-3" controlId="formBasicEmail" style={{ margin: '10px' }}>
            <Form.Label style={{ color: 'white' }}>E-mail</Form.Label>
            <Form.Control onChange={handleEmail} type="email" placeholder="Informe seu E-mail" />
            <Form.Text style={{ color: 'white' }}>
              Sua senha não será compartilhada com ninguém
            </Form.Text>
          </Form.Group>

          <Form.Group className="mb-3" controlId="formBasicPassword" style={{ margin: '10px' }}>
            <Form.Label style={{ color: 'white' }}>Senha</Form.Label>
            <Form.Control onChange={handleSenha} type="password" placeholder="Informe sua Senha" />
          </Form.Group>

          <div style={{ display: 'flex', flexDirection: 'row', alignItems: 'center', justifyContent: 'center' }}>
            <Button variant="success" type="reset" style={{ margin: '10px' }}>
              Cadastrar
            </Button>
            <Button variant="primary" type="submit" style={{ margin: '10px' }}>
              Logar
            </Button>
          </div>
        </Form>
      </div>
    </>
  )
}

export default Login;

