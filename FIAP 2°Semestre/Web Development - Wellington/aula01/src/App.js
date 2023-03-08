import logo from './logo.svg';
import './App.css';
import escola from './img/Escola.jpg'
import Cabecalho from './componente/cabecalho'

export default function App() {

  //cdg javascript com função antes do return

  const aluno = "Wellignton"
  const curso ='ADS'
  const alunos = ['cezar ','agroboy ','bruna ']
  const valor =  1 + 3

  return (
    <>
    <h1>ESCOLA</h1>
    <img src={escola} className="App-logo" width="400px" height="200px" alt='imagem escola'/>
    <br></br>
    <p> Aluno:<b>{aluno}</b></p>
    <p> Curso:<b>{curso}</b></p>
    <p> Alunos:<b>{alunos}</b></p>
    <p> Valor:<b>{valor}</b></p>

    <button onclick="clique()">
      Botão
    </button>

    <select>
      <option value="valor1">Cezar</option>
      <option value="valor2">Agroboy</option>
      <option value="valor3">Bruna</option>
    </select>

    <Cabecalho alunos={alunos}/>

    
    </>
  );
}


