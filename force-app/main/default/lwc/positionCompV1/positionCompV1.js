import { LightningElement ,wire} from 'lwc';
import getPositionRecords from '@salesforce/apex/PositionController.getPositionRecords';

export default class PositionCompV1 extends LightningElement {
    @wire(getPositionRecords)
    positionList;
}