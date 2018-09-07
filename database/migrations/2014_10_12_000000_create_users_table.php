<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');

            $table->string('name')->comment('ονοματεπωνυμο χρήστη');
            $table->string('email')->unique()->comment('email χρήστη');
			$table->string('username')->unique()->comment('ονομα χρήστη');
			$table->string('password')->comment('κωδικός χρήστη');
			$table->unsignedInteger('tmima')->default(0)->comment('id τμήματος');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
