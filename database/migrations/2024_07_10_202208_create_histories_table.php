<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('histories', static function (Blueprint $table) {
            $table->id();
            $table->string('origin_currency');
            $table->string('destiny_currency');
            $table->float('conversion_amount');
            $table->float('amount_destination_currency');
            $table->float('amount_currency_purchased');
            $table->float('amount_used_conversion');
            $table->float('payment_rate');
            $table->float('conversion_rate');
            $table->unsignedBigInteger('payment_id');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('payment_id')->references('id')->on('payments');
            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('histories');
    }
};