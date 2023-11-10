import { Link } from "react-router-dom";
import { api } from "../api/api";
import { Context } from "../context/Context";
import { useContext, useState } from "react";
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';

const CardProdutoEspecifico = ({ nome, preco, imgurl, id, descricao, favoritos, deslikes, estoque, getProdutos }) => {
  const { carrinho, setCarrinho, usuarios, setUsuarios } = useContext(Context);
  const [quantidade, setQuantidade] = useState(1);

  const handleAddCarrinho = () => {
    const produto = { id, nome, preco, imgurl, quantidade, estoque };
    const produtoCarrinho = carrinho.find((prod) => prod.id === produto.id)

    if (produtoCarrinho) {
      const carrinhoNovo = carrinho.slice()

      // for (const value of iterable) {
      //   console.log(value);
      // }

      carrinhoNovo.map((prod) => {
        if (prod.id === produto.id) {
          if ((prod.quantidade + quantidade) <= produto.estoque) {
            prod.quantidade = prod.quantidade + quantidade
          }
          else {
            prod.quantidade = produto.estoque
          }
        }
        return prod
      })
      setCarrinho(carrinhoNovo)

    } else {
      setCarrinho([...carrinho, produto])
    }
  }

  const handleDeslike = () => {
    api.patch(`/produtos/${id}`, { deslikes: deslikes + 1 });
    getProdutos();
  }

  const handleLike = () => {
    api.patch(`/produtos/${id}`, { favoritos: favoritos + 1 });
    getProdutos();
  }

  const handleQuantidadeAumentar = () => {
    if (quantidade < estoque) {
      setQuantidade(quantidade + 1);
    } else {
      setQuantidade(1);
    }
  }

  const handleQuantidadeDiminuir = () => {
    if (quantidade !== 1) {
      setQuantidade(quantidade - 1);
    } else {
      setQuantidade(estoque);
    }
  }

  return (
    <Card style={{ width: '30rem', margin: '10px', marginLeft: '40%', borderWidth: '3px', borderColor: '#18569cb8', borderStyle: 'solid' }}>
      <Card.Img variant="top" src={imgurl} style={{ objectFit: 'contain', maxWidth: '100%', maxHeight: '400px' }} />
      <Card.Body>
        <Card.Title>{nome}</Card.Title>
        <Button variant="primary" onClick={handleLike}>Gostei: {favoritos}</Button>
        <Button variant="danger" style={{ marginLeft: "5px" }} onClick={handleDeslike}>Não Gostei: {deslikes}</Button>
        <Card.Text>Preço: R$ {preco}</Card.Text>
        <Card.Text>{descricao}</Card.Text>
        <Card.Text>Disponíveis {estoque} Unidades</Card.Text>
        <br />
        <div className="d-flex align-items-center">
          <Button variant="outline-primary" onClick={handleQuantidadeDiminuir}>-</Button>
          <span className="mx-2">{quantidade}</span>
          <Button variant="outline-primary" onClick={handleQuantidadeAumentar}>+</Button>
        </div>
        <br />
        <Link to="/carrinho">
          <Button variant="success" onClick={handleAddCarrinho}>
            Adicionar ao carrinho
          </Button>
        </Link>
      </Card.Body>
    </Card>
  );
};

export default CardProdutoEspecifico;
