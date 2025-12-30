import { LightningElement } from 'lwc';

export default class SimpleCalculator extends LightningElement {
    firstNumber = 0;
    secondNumber = 0;
    result = null;
    
    handleFirstNumber(e){
        this.firstNumber=e.target.value;
    }
    handleSecondNumber(e){
        this.secondNumber=e.target.value;
    }
    add() { this.result = parseFloat(this.firstNumber) + parseFloat(this.secondNumber);}
    sub() {this.result=this.firstNumber-this.secondNumber;}
    mul(){ this.result=this.firstNumber*this.secondNumber;}
    div(){this.result=this.firstNumber/this.secondNumber;}
   get checkResults(){
        return (this.result===undefined || this.result===null)
    }
}