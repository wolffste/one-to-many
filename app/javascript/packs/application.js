import "bootstrap";
import "../plugins/flatpickr";
import {favorite_index} from './favorite_index';
import {favorite} from './favorites';
import {changeBookingStatus} from './change_booking_status';
import {openTag} from './open_tag';
import {defaultTag} from './default_tag';
import {hideReviewForm} from './hide_review_form';

changeBookingStatus();
favorite();
favorite_index();
openTag();
defaultTag();

