import { LightningElement, track } from 'lwc';

export default class TrackDecorator extends LightningElement {
    //@track property binding for object and array
    @track address1={
        city:'Karimnagar',
        state:'Telangana',
        country:'India'
    }
    trackHandler1(event)
    {
        this.address1.city = event.target.value
    }

    @track address2=['Jagtial','Hyderabad']
    trackHandler2(event)
    {
        this.address2[0] = event.target.value
    }

    //Without using track property (binding) for object and array=??
    snacks1={
        chocolate:'Kitkat',
        Biscuit:'Jimjam'
    }
    handler1(event)
    {
        this.snacks1 = {...this.snacks1, "chocolate":event.target.value}
    }

    snacks2=['Chips','CocoCola']
    handler2(event)
    {
        this.snacks2= [...this.snacks2, snacks2[0]=event.target.value]
    }

    //Using Getter
    users=['Srija','Lucky']
    firUser = this.users[0]
    get firstUser()
    {
        return this.users[0]
    }
    
    num1=9
    num2=22
    num3 = this.num1+this.num2
    get sumOfNum()
    {
        return this.num1 + this.num2
    }
}