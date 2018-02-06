package com.example.android.justjava; /**
 * Add your package below. Package name can be found in the project's AndroidManifest.xml file.
 * This is the package name our example uses:
 *
 * package com.example.android.justjava; 
 */

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

/**
 * This app displays an order form to order coffee.
 */
public class MainActivity extends AppCompatActivity {
    int cantidad=1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    /**
     * This method is called when the order button is clicked.
     */
    public void increment(View view) {
        if (cantidad < 100) cantidad+=1;
        else {
            Context context = getApplicationContext();
            CharSequence text = getString(R.string.no_more_100);
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
        display(cantidad);
    }
    public void decrement(View view) {
        if (cantidad > 1)cantidad-=1;
        else {
            Context context = getApplicationContext();
            CharSequence text = getString(R.string.more_one);
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
        display(cantidad);
    }

    public void submitOrder(View view) {
        EditText nameEditText = (EditText) findViewById(R.id.nameClient);
        String nameClient = nameEditText.getText().toString();

        CheckBox crema= (CheckBox) findViewById(R.id.cream_checkbox);
        CheckBox chocolate= (CheckBox) findViewById(R.id.chocolate_checkbox);
        boolean tieneCrema = crema.isChecked();
        boolean tieneChocolate = chocolate.isChecked();

        int precioCalculado = calculatePrice(tieneCrema, tieneChocolate);

        String resumen=createOrderSummary(cantidad,nameClient,precioCalculado, tieneCrema, tieneChocolate);
        //displayMessage(resumen);
        composeEmail(resumen);
    }

    public void composeEmail(String contenido) {
        Intent intent = new Intent(Intent.ACTION_SENDTO);
        intent.setData(Uri.parse("mailto:leandrogutierrez070@gmail.com"));
        intent.putExtra(Intent.EXTRA_EMAIL, "leandrogutierrez070@gmail.com");
        intent.putExtra(Intent.EXTRA_SUBJECT, "Compra café");
        intent.putExtra(Intent.EXTRA_TEXT,contenido);
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    public int calculatePrice(boolean tieneCrema, boolean tieneChocolate){
        int price=5;


        if (tieneCrema)price+=1;
        if (tieneChocolate)price+=2;

        int total = price*cantidad;
        return total;
    }

    public String createOrderSummary(int number,String nameClient,int total, boolean tieneCrema, boolean tieneChocolate){


        String orden="Name: " + nameClient+
                "\nAdd Cream? "+tieneCrema+
                "\nAdd Chocolate? "+tieneChocolate+
                "\nQuantity: "+number+
                "\nTotal: $"+total+
                "\n"+getString(R.string.thank_you);
        return orden;
    }


    /**
     * This method displays the given quantity value on the screen.
     */
    private void display(int number) {
        TextView quantityTextView = (TextView) findViewById(R.id.quantity_text_view);
        quantityTextView.setText("" + number);
    }


    private void displayMessage(String resumen) {
        TextView thankYouTextView = (TextView) findViewById(R.id.order_summary_text_view);
        thankYouTextView.setText(resumen);
        thankYouTextView.setTextColor(Color.parseColor("#000000"));

    }
}