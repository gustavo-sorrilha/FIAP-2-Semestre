import './AppCar.css';
import Cabecalho from './componente/cabecalho'
import Car from './componente/carros'
import Partners from './componente/Parceiros'

export default function App() {

    return(
        <>
        <Cabecalho cabecalho={cabecalho}/>
        <Car carros={carros}/>
        <Partners parceiros={partners}/>
        </>
    )
}