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
    simprims_ver_m_02253721222203995675_2662658903_1195943288_init();
    simprims_ver_m_02253721222203995675_2662658903_0216435863_init();
    simprims_ver_m_00358400182994406296_2021654676_1195943288_init();
    simprims_ver_m_00358400182994406296_2021654676_0216435863_init();
    simprims_ver_m_00358400182994406296_2021654676_0682172500_init();
    simprims_ver_m_00358400182994406296_2021654676_0635210802_init();
    simprims_ver_m_00358400182994406296_2021654676_3391022860_init();
    simprims_ver_m_00358400182994406296_2021654676_0683867253_init();
    simprims_ver_m_00358400182994406296_2021654676_2117982762_init();
    simprims_ver_m_12318166303807365835_3151998091_2117982762_init();
    simprims_ver_m_04567189716726560339_1692233196_2117982762_init();
    simprims_ver_m_03210243072544798987_0635851336_init();
    simprims_ver_m_00358400182994406296_1567299789_init();
    simprims_ver_m_00358400182994406296_1194525463_init();
    simprims_ver_m_00358400182994406296_1513501615_init();
    simprims_ver_m_05548409876658398341_0769621877_0635210802_init();
    simprims_ver_m_05548409876658398341_2643402400_3391022860_init();
    simprims_ver_m_05548409876658398341_3002199573_0635210802_init();
    simprims_ver_u_12786726827258733405_1131516744_init();
    simprims_ver_m_09253638010417583746_3752318385_0635210802_init();
    simprims_ver_m_09253638010417583746_3752318385_3391022860_init();
    simprims_ver_m_09253638010417583746_3752318385_0683867253_init();
    simprims_ver_m_06621322055533463077_0818475687_init();
    simprims_ver_m_06621322055533463077_1080494567_init();
    work_m_14343571878013042176_1208434039_init();
    work_m_01201955893347907763_2211656664_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_01201955893347907763_2211656664");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
