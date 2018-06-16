if (isServer) exitWith {};

hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>5</t><br/>minutes remaining.";
sleep 60;

hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>4</t><br/>minutes remaining.";
sleep 60;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>3</t><br/>minutes remaining.";
sleep 60;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>2</t><br/>minutes remaining.";
sleep 60;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>1</t><br/>minutes remaining.";
sleep 30;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>30</t><br/>seconds remaining.";
sleep 20;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>10</t><br/>seconds remaining.";
sleep 7;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>5</t><br/>seconds remaining.";
sleep 1;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>4</t><br/>seconds remaining.";
sleep 1;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>3</t><br/>seconds remaining.";
sleep 1;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>2</t><br/>seconds remaining.";
sleep 1;
hintSilent parseText "<t color='#FFFFFF' size='2'>Planning phase!</t><br/>Weapons are cold.<br/><t color='#FF3B3E' size='6' shadow='true'>1</t><br/>seconds remaining.";
sleep 1;
player removeAllEventHandlers "fired";
hintSilent parseText "Weapons are hot!<br/><t color='#00FF00' shadow='true' size='6'>GO</t><br/>Give them <t color='#FF0000'>hell</t>!";