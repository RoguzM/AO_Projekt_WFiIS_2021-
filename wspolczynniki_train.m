function wsp = wspolczynniki_train()
    ids_a = imageDatastore('Characters/A');
    ids_b = imageDatastore('Characters/B');
    ids_c = imageDatastore('Characters/C');    
    ids_d = imageDatastore('Characters/D');
    ids_e = imageDatastore('Characters/E');
    ids_f = imageDatastore('Characters/F');
    ids_g = imageDatastore('Characters/G');
    ids_h = imageDatastore('Characters/H');
    ids_i = imageDatastore('Characters/I');
    ids_j = imageDatastore('Characters/J');
    ids_k = imageDatastore('Characters/K');
    ids_l = imageDatastore('Characters/L');
    ids_m = imageDatastore('Characters/M');
    ids_n = imageDatastore('Characters/N');
    ids_o = imageDatastore('Characters/O');
    ids_p = imageDatastore('Characters/P');
    ids_q = imageDatastore('Characters/Q');
    ids_r = imageDatastore('Characters/R');
    ids_s = imageDatastore('Characters/S');
    ids_t = imageDatastore('Characters/T');
    ids_u = imageDatastore('Characters/U');
    ids_v = imageDatastore('Characters/V');
    ids_w = imageDatastore('Characters/W');
    ids_x = imageDatastore('Characters/X');
    ids_y = imageDatastore('Characters/Y');
    ids_z = imageDatastore('Characters/Z');
    
    ids_0 = imageDatastore('Characters/0');
    ids_1 = imageDatastore('Characters/1');
    ids_2 = imageDatastore('Characters/2');
    ids_3 = imageDatastore('Characters/3');
    ids_4 = imageDatastore('Characters/4');
    ids_5 = imageDatastore('Characters/5');
    ids_6 = imageDatastore('Characters/6');
    ids_7 = imageDatastore('Characters/7');
    ids_8 = imageDatastore('Characters/8');
    ids_9 = imageDatastore('Characters/9');
    

    wa = wczytaj(ids_a);
    wb = wczytaj(ids_b);
    wc = wczytaj(ids_c);
    wd = wczytaj(ids_d);
    we = wczytaj(ids_e);
    wf = wczytaj(ids_f);
    wg = wczytaj(ids_g);
    wh = wczytaj(ids_h);
    wi = wczytaj(ids_i);
    wj = wczytaj(ids_j);
    wk = wczytaj(ids_k);
    wl = wczytaj(ids_l);
    wm = wczytaj(ids_m);
    wn = wczytaj(ids_n);
    wo = wczytaj(ids_o);
    wp = wczytaj(ids_p);
    wq = wczytaj(ids_q);
    wr = wczytaj(ids_r);
    ws = wczytaj(ids_s);
    wt = wczytaj(ids_t);
    wu = wczytaj(ids_u);
    wv = wczytaj(ids_v);
    ww = wczytaj(ids_w);
    wx = wczytaj(ids_x);
    wy = wczytaj(ids_y);
    wz = wczytaj(ids_z);

    w1 = wczytaj(ids_1);
    w2 = wczytaj(ids_2);
    w3 = wczytaj(ids_3);
    w4 = wczytaj(ids_4);
    w5 = wczytaj(ids_5);
    w6 = wczytaj(ids_6);
    w7 = wczytaj(ids_7);
    w8 = wczytaj(ids_8);
    w9 = wczytaj(ids_9);
    w0 = wczytaj(ids_0);

    trainin = [wa;wb;wc;wd;we;wf;wg;wh;wi;wj;wk;wl;wm;wn;wo;wp;wq;wr;ws;wt;wu;wv;ww;wx;wy;wz;w1;w2;w3;w4;w5;w6;w7;w8;w9;w0;]';

    trainout = [repmat([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wa),1);
    repmat([0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wb),1);
    repmat([0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wc),1);
    repmat([0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wd),1);
    repmat([0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(we),1);
    repmat([0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wf),1);
    repmat([0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wg),1);
    repmat([0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wh),1);
    repmat([0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wi),1);
    repmat([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wj),1);
    repmat([0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wk),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wl),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wm),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wn),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wo),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wp),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wq),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(ws),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wt),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wu),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wv),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(ww),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wx),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], length_w(wy),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], length_w(wz),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], length_w(w1),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], length_w(w2),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], length_w(w3),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], length_w(w4),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], length_w(w5),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], length_w(w6),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0], length_w(w7),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], length_w(w8),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0], length_w(w9),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], length_w(w0),1)]';
   

nn = feedforwardnet(50);
nn.adaptFcn = 'adaptwb';
nn.divideFcn = 'dividerand';
nn.divideMode = 'sample';
nn.layers{1}.transferFcn = 'logsig';
nn.layers{2}.transferFcn = 'tansig';
nn.trainFcn = 'trainlm';
nn.performFcn = 'mse';
nn = train(nn,trainin,trainout);

ocr_final_8_new = nn;
save ocr_final_8_new;
end