package com.example.android.justandroid;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.EditText;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText equipoA;
    EditText equipoB;
    TextView juegoAnterior, anteriorA, anteriorB;
    Bundle bundle;
    private final int requestCode = 326;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        equipoA = (EditText) findViewById(R.id.nomEquipoA);
        equipoB = (EditText) findViewById(R.id.nomEquipoB);
        juegoAnterior = (TextView) findViewById(R.id.juegoAnterior);
        anteriorA = (TextView) findViewById(R.id.anteriorA);
        anteriorB = (TextView) findViewById(R.id.anteriorB);


    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.v("requestCode= ", "" + requestCode);

        if (requestCode == this.requestCode) {
            Log.v("resultCode= ", "" + resultCode);


            if (resultCode == Activity.RESULT_OK) {
                juegoAnterior.setText("El juego anterior finalizó:");
                bundle = data.getExtras();
                String textoA = bundle.getString("resultadoA");
                anteriorA.setText(textoA);
                String textoB = bundle.getString("resultadoB");

                anteriorB.setText(textoB);

            }

        }
    }

    public void iniciar(View v) {
        String nombreA = equipoA.getText().toString();
        String nombreB = equipoB.getText().toString();

        Intent intent = new Intent(getApplicationContext(), Juego.class);
        intent.putExtra("nombreA", nombreA);
        intent.putExtra("nombreB", nombreB);
        startActivityForResult(intent, requestCode);


    }

}
