% config.m

% General settings
numNodes = 250;
K = 50;
pop_size = 50;
max_gen = 1000;

% Networks
networks = {'WSN', 'ER', 'BA', 'RG'};

% Seed list
seedList = [ ...
    11 22 33 44 55 ...
    66 77 88 99 111 ...
    123 135 147 159 171 ...
    183 195 207 219 231 ...
    243 255 267 279 291 ...
    303 315 327 339 351 ];

% Network parameters
ER_p = 0.02;
BA_m = 3;
comm_range = 20;