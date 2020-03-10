import "bootstrap";
import "../plugins/flatpickr";
import {favorite_index} from './favorite_index';
import {favorite} from './favorites';
import {changeBookingStatus} from './change_booking_status';


changeBookingStatus();
favorite();
favorite_index();

