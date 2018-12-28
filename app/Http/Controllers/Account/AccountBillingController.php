<?php

namespace App\Http\Controllers\Account;

use App\Models\Company;
use App\Models\CompanySubscription;
use Facades\App\Services\CompanySubscriptionService;
use Facades\App\Services\CompanyPaymentMethodService;
use App\Http\Controllers\Controller;


class AccountBillingController extends Controller
{

    /**
     * Return list of payment methods
     * @param bool $json
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function listPaymentMethods($json = true)
    {
        $data = \Request::all();
        $company = Company::find($data['company_id']);
        $payment_methods = $company->paymentMethods;
        return $json ? response()->json($payment_methods) : $payment_methods;
    }

    /**
     * Return list of payments
     * @param bool $json
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function listPayments()
    {
        $data = \Request::all();
        $subscription = CompanySubscription::find($data['subscription_id']);
        $payments = $subscription->payments;
        $payments->load('paymentMethod');
        return response()->json($payments);
    }

    /**
     * Cancel subscription
     * @param bool $json
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function cancelSubscription()
    {
        $data = \Request::all();
        // update subscription
        $subscription_data = [
            'status' => 'Pending Cancelation'
        ];
        $subscription = CompanySubscriptionService::load($data['id'])->update($subscription_data);
        return response()->json($subscription);
    }

    /**
     * Resume subscription
     * @param bool $json
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function resumeSubscription()
    {
        $data = \Request::all();
        // update subscription
        $subscription_data = [
            'status' => 'Active'
        ];
        $subscription = CompanySubscriptionService::load($data['id'])->update($subscription_data);
        return response()->json($subscription);
    }

    /**
     * Set our default payment method
     * 
     * @return \Illuminate\Http\JsonResponse
     */
    public function setDefaultPaymentMethod()
    {
        $data = \Request::all();
        CompanyPaymentMethodService::setDefaultPaymentMethod($data['id'], $data['company_id']);
        $payments = $this->listPaymentMethods(false);
        return response()->json($payments);
    }

    /**
     * delete payment method
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function deletePaymentMethod()
    {
        $data = \Request::all();
        CompanyPaymentMethodService::delete($data['id']);
        $payments = $this->listPaymentMethods(false);
        return response()->json($payments);
    }

    /**
     * add payment method
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function addPaymentMethod()
    {
        $data = \Request::all();
        CompanyPaymentMethodService::createPaymentProfile($data);
        $payments = $this->listPaymentMethods(false);
        return response()->json($payments);
    }


}
