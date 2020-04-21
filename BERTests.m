function BERTests(randomSignal, zerosSignal, onesSignal)
    P = zeros(1, 100);
    for i=2 : 100
        P(i)=P(i-1)+0.0001;
        i=i+2;
    end
  %% BER dla scramblingu DVB
    [~, y_r_dvb] = BERTestDVB(randomSignal, P);
    [~, y_z_dvb] = BERTestDVB(zerosSignal, P);
    [~, y_o_dvb] = BERTestDVB(onesSignal, P);
    
    %% BER dla scramblingu V.34
    [~, y_r_v34] = BERTestV34(randomSignal, P);
    [~, y_z_v34] = BERTestV34(zerosSignal, P);
    [~, y_o_v34] = BERTestV34(onesSignal, P);
    
    %% Wykresy
    P = P * 100;
    
    figure;
    subplot(1, 3, 1);
        plot(P, y_r_dvb, '-x', P, y_r_v34, '-x');
        title('BER dla sygnalu losowego');
        legend('DVB', 'V.34');
        xlabel('Prawdopodobienstwo (procent)');
        ylabel('Ilosc bledow (procent)');
    
    subplot(1, 3, 2);
        plot(P, y_z_dvb, '-x', P, y_z_v34, '-x');
        title('BER dla sygnalu zer');
        legend('DVB', 'V.34');
        xlabel('Prawdopodobienstwo (procent)');
        ylabel('Ilosc bledow  (procent)');
    
    subplot(1, 3, 3);
        plot(P, y_o_dvb, '-x', P, y_o_v34, '-x');
        title('BER dla sygnalu jedynek');
        legend('DVB', 'V.34');
        xlabel('Prawdopodobienstwo (procent)');
        ylabel('Ilosc bledow  (procent)');
end