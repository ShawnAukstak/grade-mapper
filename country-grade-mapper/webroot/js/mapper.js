$(function(){

    $('#from-country-id').on('change', function(e) {

        var countryId = this.options[e.target.selectedIndex].value;

        $('#grade-level-id').html($('<option/>', {
            'value' : 'Loading',
            'text' : 'Loading'
        }));

        $.get('/grades.json?country_id=' + countryId, function(data) {

            $('#grade-level-id').html('');

            $.each(data.grades, function(id,grade) {
                $('#grade-level-id').append($('<option/>', {
                    'value' : grade.grade_level,
                    'text' : grade.name
                }));
            });

            updateMapping();

        });

    });

    $('#grade-level-id').on('change', function() {
        updateMapping();
    });

    $('#to-country-id').on('change', function(e) {
        updateMapping();
    });

    $('#from-country-id').trigger('change');

});


function updateMapping() {
    var toCountryId = $('#to-country-id').val(),
        gradeLevel = $('#grade-level-id').val();

    $.get('/grades.json?country_id=' + toCountryId + '&grade_level=' + gradeLevel, function(data) {
        $('#maps-to-grade-level').val(data.grades[0].name);
    }); 
}