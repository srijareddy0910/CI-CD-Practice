import { LightningElement } from 'lwc';

export default class AccessingElements extends LightningElement {
    userNames = ['bittu','Lucky','laddu','Chintu']
    fetchDetails()
    {
        const element=this.template.querySelector('h1')
        element.style.border='5px solid blue';
        console.log(element.innerText)
        
        const userElements=this.template.querySelectorAll('.name')
        Array.from(userElements).forEach(item=>{
            console.log(item.innerText)
            item.setAttribute("title",item.innerText) })

        //lwc:dom="manual" demo
        const childElem = this.template.querySelector('.child')
        childElem.innerHTML = '<p>Hey i am a child element</p>'
    }
}