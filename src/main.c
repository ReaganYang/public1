/* main.c - eMIOS OPWM example */

#include "mpc563m.h" /* Use proper include file such as mpc5510.h or mpc5554.h */

void initSysclk (void) {
/* MPC563x: Use the next line        */
  FMPLL.ESYNCR1.B.CLKCFG = 0X7;       /* Change clk to PLL normal mode from crystal */  
  FMPLL.SYNCR.R = 0x16080000;         /* 8 MHz xtal: 0x16080000; 40MHz: 0x46100000 */
  while (FMPLL.SYNSR.B.LOCK != 1) {}; /* Wait for FMPLL to LOCK  */
  FMPLL.SYNCR.R = 0x16000000;         /* 8 MHz xtal: 0x16000000; 40MHz: 0x46080000 */
}

void initEMIOS(void) {
  EMIOS.MCR.B.GPRE= 63;     /* Divide 64 MHz sysclk by 63+1 = 64 for 1MHz eMIOS clk*/
  EMIOS.MCR.B.ETB = 0;      /* External time base is disabled; Ch 23 drives ctr bus A */
  EMIOS.MCR.B.GPREN = 1;	/* Enable eMIOS clock */
  EMIOS.MCR.B.GTBE = 1;		/* Enable global time base */
  EMIOS.MCR.B.FRZ = 1;		/* Enable stopping channels when in debug mode */
}

void initEMIOSch23(void) {        /* EMIOS CH 23: Modulus Up Counter */
  EMIOS.CH[23].CADR.R = 999;      /* Period will be 999+1 = 1000 clocks (1 msec) */
  EMIOS.CH[23].CCR.B.MODE = 0x50; /* MPC551x, MPC563x: Mod Ctr Bufd (MCB) int clk */
  EMIOS.CH[23].CCR.B.BSL = 0x3;	  /* Use internal counter */
  EMIOS.CH[23].CCR.B.UCPRE=0;	  /* Set channel prescaler to divide by 1 */
  EMIOS.CH[23].CCR.B.FREN = 1; 	  /* Freeze channel counting when in debug mode */
  EMIOS.CH[23].CCR.B.UCPREN = 1;  /* Enable prescaler; uses default divide by 1 */
}

void initEMIOSch0(void) {         /* EMIOS CH 0: Output Pulse Width Modulation */
  EMIOS.CH[0].CADR.R = 250;       /* Leading edge when channel counter bus=250*/
  EMIOS.CH[0].CBDR.R = 500;       /* Trailing edge when channel counter bus=500*/
  EMIOS.CH[0].CCR.B.BSL = 0x0;	  /* Use counter bus A (default) */
  EMIOS.CH[0].CCR.B.EDPOL = 1;	  /* Polarity-leading edge sets output/trailing clears*/
  EMIOS.CH[0].CCR.B.MODE = 0x60;  /* MPC551x, MPC563x: Mode is OPWM Buffered */
  SIU.PCR[179].R = 0x0E00;        /* Initialize pad for eMIOS chan. 0 output */
}

void initEMIOSch2(void) {         /* EMIOS CH 2: Output Pulse Width Modulation */
  EMIOS.CH[2].CADR.R = 500;       /* Leading edge when channel counter bus=250*/
  EMIOS.CH[2].CBDR.R = 999;       /* Trailing edge when channel counter bus=500*/
  EMIOS.CH[2].CCR.B.BSL = 0x0;	  /* Use counter bus A (default) */
  EMIOS.CH[2].CCR.B.EDPOL = 1;	  /* Polarity-leading edge sets output/trailing clears*/
  EMIOS.CH[2].CCR.B.MODE = 0x60;  /* MPC551x, MPC563x: Mode is OPWM Buffered */
  SIU.PCR[181].R = 0x0E00;        /* Initialize pad for eMIOS chan. 2 output */

}
 
void main (void) {	
  volatile uint32_t i = 0; /* Dummy idle counter */
  
  initSysclk();      /* Set sysclk = 64MHz running from PLL */
  initEMIOS();		 /* Initialize eMIOS to provide 1 MHz clock to channels */
  initEMIOSch23();   /* Initialize eMIOS channel 23 as modulus counter*/
  initEMIOSch0();	 /* Initialize eMIOS channel 0 as OPWM, using ch 23 as time base */
  initEMIOSch2();	 /* Initialize eMIOS channel 2 as OPWM, using ch 23 as time base */
  while (1) {i++; }  /* Wait forever */	
}
