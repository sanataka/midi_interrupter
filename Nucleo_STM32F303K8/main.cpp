#include "mbed.h"

Serial midi(D1,D0); //midi in pin D0
DigitalOut wri(D2); //data write
DigitalOut enb(D3); //sound status
BusOut note(D12,D11,D10,D9,D8,D7,D6); //note number 

int d1, d2, d3;

int main()
{
    midi.baud(31250);
    midi.format(8,Serial::None,1);
    while(1){
            reget:
            d1 = midi.getc();
            if(d1 >= 128 && d1 <= 159 ){
                d2 = midi.getc();
                d3 = midi.getc();
            }else if(d1 >= 176 && d1 <= 191){
                d2 = midi.getc();
            if(d2 == 120 || d2 == 121 || d2 == 123){
                    for (int i=0; i <= 127; i++){
                    note = i;
                    enb = 0;
                    wri = 1;
                    wri = 0;
                    }
            }
            }else{
                goto reget;
                }
            
            if(d1 >= 144 && d1 <= 159){
                note = d2;
                if(d3 > 0){
                    enb = 1;
                    wri = 1;
                    wri = 0;
                }else{
                    enb = 0;
                    wri = 1;
                    wri = 0;
                    }
            }else if(d1 >= 128 && d1 <= 143){
                    note = d2;
                    enb = 0;
                    wri = 1;
                    wri = 0;
            }
    }
}
