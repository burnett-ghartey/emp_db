<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->increments('id');
            $table->string('firstname');
            $table->string('surname');
            $table->string('othername');
            $table->string('gender');
            $table->string('nationality');
            $table->date('birth');
            $table->string('email');
            $table->string('residential_address');
            $table->string('postal_address');
            $table->string('digital_address');
            $table->string('home_phone');
            $table->string('mobile_phone');
            $table->string('hometown');
            $table->string('marital');
            $table->string('region');
            $table->string('facebook');
            $table->string('twitter');
            $table->string('instagram');
            $table->string('linkedin');
            $table->string('skype');
            $table->string('whatsapp');
            $table->integer('photo_id');
            $table->string('bank_name');
            $table->string('branch');
            $table->string('account_holder');
            $table->string('account_number');
            $table->string('GRA_tin_number');
            $table->string('SSNIT_number');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
