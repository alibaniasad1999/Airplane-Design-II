%%% Load Data %%%
%%%%%%%%%%%%%%%% All Data %%%%%%%%%%%%%%%%
LandingData = readtable('Landing.xlsx', 'sheet', 'Data');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num - alltitude
% For all W/S For All W/S  WS - Phase of Aircraft - Technology Level - Seat Num - alltitude
%%%%%%%%% 50 Seat Sea Level %%%%%%%%%
WS_Landing_high_50_SL = LandingData.W_S50High;
WS_Landing_mid_50_SL = LandingData.W_S50Midium;
WS_Landing_low_50_SL = LandingData.W_S50Low;
Landing_high_50_SL = LandingData.T_W;
Landing_mid_50_SL = LandingData.T_W;
Landing_low_50_SL = LandingData.T_W;
%%%%%%%%% 76 Seat Sea Level %%%%%%%%%
WS_Landing_high_76_SL = LandingData.W_S76High;
WS_Landing_mid_76_SL = LandingData.W_S76Midium;
WS_Landing_low_76_SL = LandingData.W_S76Low;
Landing_high_76_SL = LandingData.T_W_1;
Landing_mid_76_SL = LandingData.T_W_1;
Landing_low_76_SL = LandingData.T_W_1;
%%%%%%%%% 50 Seat 5000 ft %%%%%%%%%
WS_Landing_high_50_5000ft = LandingData.W_S50High_5000ft_;
WS_Landing_mid_50_5000ft = LandingData.W_S50Midium_5000ft_;
WS_Landing_low_50_5000ft = LandingData.W_S50Low_5000ft_;
Landing_high_50_5000ft = LandingData.T_W;
Landing_mid_50_5000ft = LandingData.T_W;
Landing_low_50_5000ft = LandingData.T_W;
%%%%%%%%% 76 Seat 5000 ft %%%%%%%%%
WS_Landing_high_76_5000ft = LandingData.W_S50High_5000ft_;
WS_Landing_mid_76_5000ft = LandingData.W_S50Midium_5000ft_;
WS_Landing_low_76_5000ft = LandingData.W_S50Low_5000ft_;
Landing_high_76_5000ft = LandingData.T_W_1;
Landing_mid_76_5000ft = LandingData.T_W_1;
Landing_low_76_5000ft = LandingData.T_W_1;
