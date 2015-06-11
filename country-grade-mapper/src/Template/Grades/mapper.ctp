<?php
$this->Html->script('mapper',['block' => true]);

echo $this->Form->create('mapper');
echo $this->Form->input('from_country_id' , ['type' => 'select', 'options' => $countries ] );
echo $this->Form->input('grade_level_id',['type' => 'select']);
echo $this->Form->input('to_country_id' , ['type' => 'select', 'options' => $countries ] );

echo $this->Form->create('mapped_to');
echo $this->Form->input('maps_to_grade_level', ['readonly']);

