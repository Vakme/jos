/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_11988690595201251901_2108153905_init();
    work_m_15651761667481260368_2030911003_init();
    work_m_07296409092917859189_0338238884_init();
    work_m_09669065265241034205_4219172281_init();
    work_m_15449780046027967503_1421914991_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15449780046027967503_1421914991");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
