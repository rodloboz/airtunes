import $ from 'jquery';
import select2 from 'select2';
import 'select2/dist/css/select2.css';


const toggleMultipleSelect = function () {
  $('#artist_tag_tag').select2({tags: true});
}

export { toggleMultipleSelect }

