import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    name = 'Srija';
    college = 'MVSR Engineering College';
    course = 'EEE';
    location = 'Hyderabad';

    Name = 'Srija Reddy';
    Designation = 'Salesforce Developer';
    handler1(event){
        this.Designation = event.target.value;
    }
    handler2(event){
        window.location.href = 'https://trailhead.salesforce.com/users/profiles/orgs';
    }

    //Binding
    name = "Srija"
    title = "Developer"
    changeHandler(event)
    {
        this.title = event.target.value
    }
}