package com.example.android.justandroid;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class Juego extends AppCompatActivity {
    TextView equipoA,equipoB;
    String nombreA,nombreB;
    Bundle bundle;
    Intent intent = new Intent();

    protected int puntosA=0;
    protected int puntosB=0;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_juego);
        displayForTeamA(0);
        equipoA = (TextView) findViewById(R.id.equipoA);
        equipoB = (TextView) findViewById(R.id.equipoB);
        bundle= getIntent().getExtras();

        nombreA= bundle.getString("nombreA");
        nombreB=bundle.getString("nombreB");
        if (!nombreA.isEmpty()){
            equipoA.setText(nombreA);

        }
        if(!nombreB.isEmpty()) {
            equipoB.setText(nombreB);
        }
    }

    //EQUIPO A
    public void tripleA(View view){
        puntosA+=3;
        displayForTeamA(puntosA);
    }
    public void dobleA(View view){
        puntosA+=2;
        displayForTeamA(puntosA);
    }
    public void tirolibreA(View view){
        puntosA+=1;
        displayForTeamA(puntosA);
    }

    public void displayForTeamA(int score) {
        TextView scoreView = (TextView) findViewById(R.id.puntosA);
        scoreView.setText(String.valueOf(score));
    }

    //EQUIPO B
    public void tripleB(View view){
        puntosB+=3;
        displayForTeamB(puntosB);
    }
    public void dobleB(View view){
        puntosB+=2;
        displayForTeamB(puntosB);
    }
    public void tirolibreB(View view){
        puntosB+=1;
        displayForTeamB(puntosB);
    }

    public void displayForTeamB(int score) {
        TextView scoreView = (TextView) findViewById(R.id.puntosB);
        scoreView.setText(String.valueOf(score));
    }


    public void reset(View view){
        puntosA=0;
        puntosB=0;
        displayForTeamA(0);
        displayForTeamB(0);

    }

    public void fin_juego(View v){

        String resultadoA,resultadoB;
        resultadoA=equipoA.getText().toString()+": "+puntosA;
        resultadoB=equipoB.getText().toString()+": "+puntosB;

        intent.putExtra("resultadoA",resultadoA);
        intent.putExtra("resultadoB",resultadoB);
        setResult(Activity.RESULT_OK,intent);
        finish();

    }

}
