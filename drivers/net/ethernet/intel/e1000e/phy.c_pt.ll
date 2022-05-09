; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000e_read_phy_reg_mdic\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/intel/e1000e/phy.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %d is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MDI Read did not complete\0A\00", [37 x i8] zeroinitializer }, align 32
@e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MDI Error\0A\00", [21 x i8] zeroinitializer }, align 32
@e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MDI Read offset error - requested %d, returned %d\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.3, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000e_write_phy_reg_mdic\00", [38 x i8] zeroinitializer }, align 32
@e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MDI Write did not complete\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.5, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MDI Write offset error - requested %d, returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000_set_page_igp.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"e1000_set_page_igp\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Setting page 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000e_copper_link_setup_m88\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error committing the PHY changes\0A\00", [62 x i8] zeroinitializer }, align 32
@e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e1000e_copper_link_setup_igp\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error resetting the PHY.\0A\00", [38 x i8] zeroinitializer }, align 32
@e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error Disabling LPLU D0\0A\00", [39 x i8] zeroinitializer }, align 32
@e1000e_setup_copper_link.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000e_setup_copper_link\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing Speed and Duplex\0A\00", [38 x i8] zeroinitializer }, align 32
@e1000e_setup_copper_link.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error Forcing Speed and Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000e_setup_copper_link.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Valid link established!!!\0A\00", [37 x i8] zeroinitializer }, align 32
@e1000e_setup_copper_link.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to establish link!!!\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"e1000e_phy_force_speed_duplex_igp\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IGP PSCR: %X\0A\00", [18 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for forced speed/duplex link on IGP phy.\0A\00", [46 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Link taking longer than expected.\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"e1000e_phy_force_speed_duplex_m88\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"M88E1000 PSCR: %X\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for forced speed/duplex link on M88 phy.\0A\00", [46 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.25, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"e1000_phy_force_speed_duplex_ife\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IFE PMC: %X\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for forced speed/duplex link on IFE phy.\0A\00", [46 x i8] zeroinitializer }, align 32
@e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.25, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"e1000e_phy_force_speed_duplex_setup\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Half Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Full Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Forcing 100mb\0A\00", [17 x i8] zeroinitializer }, align 32
@e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.36, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Forcing 10mb\0A\00", [18 x i8] zeroinitializer }, align 32
@e1000_m88_cable_length_table = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 50, i16 80, i16 110, i16 140, i16 140, i16 255], [18 x i8] zeroinitializer }, align 32
@e1000_igp_2_cable_length_table = internal constant { [113 x i16], [62 x i8] } { [113 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 5, i16 8, i16 11, i16 13, i16 16, i16 18, i16 21, i16 0, i16 0, i16 0, i16 3, i16 6, i16 10, i16 13, i16 16, i16 19, i16 23, i16 26, i16 29, i16 32, i16 35, i16 38, i16 41, i16 6, i16 10, i16 14, i16 18, i16 22, i16 26, i16 30, i16 33, i16 37, i16 41, i16 44, i16 48, i16 51, i16 54, i16 58, i16 61, i16 21, i16 26, i16 31, i16 35, i16 40, i16 44, i16 49, i16 53, i16 57, i16 61, i16 65, i16 68, i16 72, i16 75, i16 79, i16 82, i16 40, i16 45, i16 51, i16 56, i16 61, i16 66, i16 70, i16 75, i16 79, i16 83, i16 87, i16 91, i16 94, i16 98, i16 101, i16 104, i16 60, i16 66, i16 72, i16 77, i16 82, i16 87, i16 92, i16 96, i16 100, i16 104, i16 108, i16 111, i16 114, i16 117, i16 119, i16 121, i16 83, i16 89, i16 95, i16 100, i16 105, i16 109, i16 113, i16 116, i16 119, i16 122, i16 124, i16 104, i16 109, i16 114, i16 118, i16 121, i16 124], [62 x i8] zeroinitializer }, align 32
@e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000e_get_phy_info_m88\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Phy info is only valid for copper media\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 1, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Phy info is only valid if link is up\0A\00", [58 x i8] zeroinitializer }, align 32
@e1000e_get_phy_info_igp.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.39, i8 1, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000e_get_phy_info_igp\00", [40 x i8] zeroinitializer }, align 32
@e1000_get_phy_info_ife.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.39, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000_get_phy_info_ife\00", [41 x i8] zeroinitializer }, align 32
@e1000e_phy_init_script_igp3.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 2, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"e1000e_phy_init_script_igp3\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Running IGP 3 PHY init script\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 2, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"e1000_enable_phy_wakeup_reg_access_bm\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not set Port Control page\0A\00", [63 x i8] zeroinitializer }, align 32
@e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 2, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not read PHY register %d.%d\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 2, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not write PHY register %d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.45, i8 2, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"e1000_disable_phy_wakeup_reg_access_bm\00", [57 x i8] zeroinitializer }, align 32
@e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 2, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not restore PHY register %d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 3, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"e1000_phy_force_speed_duplex_82577\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Waiting for forced speed/duplex link on 82577 phy\0A\00", [45 x i8] zeroinitializer }, align 32
@e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.25, i8 3, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_get_phy_info_82577.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.39, i8 3, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"e1000_get_phy_info_82577\00", [39 x i8] zeroinitializer }, align 32
@e1000_copper_link_autoneg.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000_copper_link_autoneg\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", [51 x i8] zeroinitializer }, align 32
@e1000_copper_link_autoneg.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000_copper_link_autoneg.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Restarting Auto-Neg\0A\00", [43 x i8] zeroinitializer }, align 32
@e1000_copper_link_autoneg.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.57, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error while waiting for autoneg to complete\0A\00", [51 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"e1000_phy_setup_autoneg\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"autoneg_advertised %x\0A\00", [41 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Half duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Full duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Half duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Full duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", [50 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Advertise 1000mb Full duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.66, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.67, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-Neg Advertising %x\0A\00", [39 x i8] zeroinitializer }, align 32
@e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 2, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000_access_phy_wakeup_reg_bm\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Attempting to access page %d while gig enabled.\0A\00", [47 x i8] zeroinitializer }, align 32
@e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 2, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not enable PHY wakeup reg access\0A\00", [56 x i8] zeroinitializer }, align 32
@e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 2, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Accessing PHY page %d reg 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 2, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not write address opcode to page %d\0A\00", [53 x i8] zeroinitializer }, align 32
@e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.73, i8 2, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not access PHY reg %d.%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__e1000_read_phy_reg_hv.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 2, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__e1000_read_phy_reg_hv\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"reading PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 2, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e1000_access_phy_debug_regs_hv\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not write the Address Offset port register\0A\00", [46 x i8] zeroinitializer }, align 32
@e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.78, i8 2, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not access the Data port register\0A\00", [55 x i8] zeroinitializer }, align 32
@__e1000_write_phy_reg_hv.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 2, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__e1000_write_phy_reg_hv\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"writing PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@switch.table.e1000e_check_downshift = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 17, i32 17, i32 19, i32 17, i32 19, i32 17, i32 17, i32 17], [32 x i8] zeroinitializer }, align 32
@switch.table.e1000e_check_downshift.81 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 32, i32 32768, i32 32, i32 32768, i32 32, i32 32, i32 32], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 15, i64 47]
@__sancov_gen_cov_switch_values.89 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.90 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.91 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.92 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.93 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.94 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.95 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.96 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.97 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.98 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.99 = internal global [18 x i64] [i64 16, i64 32, i64 5099584, i64 21040160, i64 21040176, i64 21040208, i64 21040288, i64 21040304, i64 21040305, i64 21040320, i64 22282320, i64 22282384, i64 22282400, i64 44565264, i64 44565280, i64 44565296, i64 44565376, i64 44565392]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 25, i64 31]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 25, i64 31]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 800]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 800]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 124, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 149, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 153, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 157, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 187, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 213, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 221, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 298, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 740, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 832, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 845, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1146, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1149, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1163, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1167, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1212, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1217, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1225, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1264, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1284, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1381, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1386, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1441, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1445, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1453, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1457, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [29 x i8] c"e1000_m88_cable_length_table\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 14, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant [31 x i8] c"e1000_igp_2_cable_length_table\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 21, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1888, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1897, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1963, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2021, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2144, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2549, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2555, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2569, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2598, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2605, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 3118, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 3157, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1085, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1088, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1091, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1111, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 954, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 958, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 964, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 970, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 976, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 982, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 986, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1043, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1051, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2647, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2654, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2659, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2664, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2679, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2781, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 3004, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 3015, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [43 x i8] c"../drivers/net/ethernet/intel/e1000e/phy.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2905, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [36 x i8] c"switch.table.e1000e_check_downshift\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [39 x i8] c"switch.table.e1000e_check_downshift.81\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @e1000_m88_cable_length_table, ptr @e1000_igp_2_cable_length_table, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @switch.table.e1000e_check_downshift, ptr @switch.table.e1000e_check_downshift.81], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_m88_cable_length_table to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_igp_2_cable_length_table to i32), i32 226, i32 288, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_check_downshift to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.e1000e_check_downshift.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_reset_block_generic(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 22560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_id(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id) #5
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_id, align 2, !annotation !228
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call.i = call i32 %4(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %while.cond.preheader
  %5 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_id, align 2
  %conv6 = zext i16 %6 to i32
  %shl = shl nuw i32 %conv6, 16
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %id, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call.i38 = call i32 %9(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool8.not = icmp eq i32 %call.i38, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_id, align 2
  %12 = and i16 %11, -16
  %and = zext i16 %12 to i32
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %or = or i32 %14, %and
  store i32 %or, ptr %id, align 4
  %15 = and i16 %11, 15
  %and14 = zext i16 %15 to i32
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and14, ptr %revision, align 4
  %17 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %if.end10.cleanup_crit_edge [
    i32 0, label %if.end10.if.end22_crit_edge
    i32 -16, label %if.end10.if.end22_crit_edge40
  ]

if.end10.if.end22_crit_edge40:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end10.if.end22_crit_edge, %if.end10.if.end22_crit_edge40
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call.i.1 = call i32 %19(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool3.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.not.1, label %if.end5.1, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.1:                                        ; preds = %if.end22
  %20 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_id, align 2
  %conv6.1 = zext i16 %21 to i32
  %shl.1 = shl nuw i32 %conv6.1, 16
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl.1, ptr %id, align 4
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 4
  %call.i38.1 = call i32 %24(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.1)
  %tobool8.not.1 = icmp eq i32 %call.i38.1, 0
  br i1 %tobool8.not.1, label %if.end10.1, label %if.end5.1.cleanup_crit_edge

if.end5.1.cleanup_crit_edge:                      ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1:                                       ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %phy_id, align 2
  %27 = and i16 %26, -16
  %and.1 = zext i16 %27 to i32
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %or.1 = or i32 %29, %and.1
  store i32 %or.1, ptr %id, align 4
  %30 = and i16 %26, 15
  %and14.1 = zext i16 %30 to i32
  %31 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and14.1, ptr %revision, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.1, %if.end5.1.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %while.cond.preheader.cleanup_crit_edge ], [ %call.i38, %if.end5.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %call.i.1, %if.end22.cleanup_crit_edge ], [ %call.i38.1, %if.end5.1.cleanup_crit_edge ], [ 0, %if.end10.1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_reset_dsp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %1(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 193) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call.i5 = tail call i32 %3(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i5, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_phy_reg_mdic, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !229

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %offset) #5
  br label %cleanup

if.end8:                                          ; preds = %entry
  %shl = shl nuw nsw i32 %offset, 16
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %shl9 = shl i32 %5, 21
  %or = or i32 %shl, %shl9
  %or10 = or i32 %or, 134217728
  tail call void @__ew32(ptr noundef %hw, i32 noundef 32, i32 noundef %or10) #5
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body20, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end8
  %i.0130 = phi i32 [ 0, %if.end8 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #5
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !226
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %and = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.cond, label %if.end40

do.body20:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_phy_reg_mdic, %if.then32)) #5
          to label %cleanup [label %if.then32], !srcloc !229

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev34 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug354, ptr noundef %14, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end40:                                         ; preds = %for.body
  %and41 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end65, label %do.body45

do.body45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_phy_reg_mdic, %if.then57)) #5
          to label %cleanup [label %if.then57], !srcloc !229

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev59 = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug355, ptr noundef %18, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end65:                                         ; preds = %if.end40
  %and66 = lshr i32 %10, 16
  %shr = and i32 %and66, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %offset)
  %cmp67.not = icmp eq i32 %shr, %offset
  br i1 %cmp67.not, label %if.end92, label %do.body70

do.body70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_phy_reg_mdic, %if.then82)) #5
          to label %cleanup [label %if.then82], !srcloc !229

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %netdev84 = getelementptr inbounds %struct.e1000_adapter, ptr %20, i32 0, i32 64
  %21 = ptrtoint ptr %netdev84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug356, ptr noundef %22, ptr noundef nonnull @.str.6, i32 noundef %offset, i32 noundef %shr) #5
  br label %cleanup

if.end92:                                         ; preds = %if.end65
  %conv = trunc i32 %10 to i16
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %data, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %25)
  %cmp93 = icmp eq i32 %25, 10
  br i1 %cmp93, label %if.then95, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end92.cleanup_crit_edge, %if.then82, %do.body70, %if.then57, %do.body45, %if.then32, %do.body20, %if.then5, %do.body2
  %retval.0 = phi i32 [ -4, %if.then5 ], [ -2, %if.then32 ], [ -2, %if.then57 ], [ -2, %if.then82 ], [ 0, %if.then95 ], [ 0, %if.end92.cleanup_crit_edge ], [ -4, %do.body2 ], [ -2, %do.body20 ], [ -2, %do.body45 ], [ -2, %do.body70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_write_phy_reg_mdic, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !229

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug357, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %offset) #5
  br label %cleanup

if.end8:                                          ; preds = %entry
  %conv = zext i16 %data to i32
  %shl = shl nuw nsw i32 %offset, 16
  %or = or i32 %shl, %conv
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %shl9 = shl i32 %5, 21
  %or10 = or i32 %or, %shl9
  %or11 = or i32 %or10, 67108864
  tail call void @__ew32(ptr noundef %hw, i32 noundef 32, i32 noundef %or11) #5
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body22, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end8
  %i.0132 = phi i32 [ 0, %if.end8 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #5
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !226
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %and = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.cond, label %if.end42

do.body22:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_write_phy_reg_mdic, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !229

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev36 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug358, ptr noundef %14, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end42:                                         ; preds = %for.body
  %and43 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end67, label %do.body47

do.body47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_write_phy_reg_mdic, %if.then59)) #5
          to label %cleanup [label %if.then59], !srcloc !229

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev61 = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug359, ptr noundef %18, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end67:                                         ; preds = %if.end42
  %and68 = lshr i32 %10, 16
  %shr = and i32 %and68, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %offset)
  %cmp69.not = icmp eq i32 %shr, %offset
  br i1 %cmp69.not, label %if.end95, label %do.body73

do.body73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_write_phy_reg_mdic, %if.then85)) #5
          to label %cleanup [label %if.then85], !srcloc !229

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %netdev87 = getelementptr inbounds %struct.e1000_adapter, ptr %20, i32 0, i32 64
  %21 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug360, ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %offset, i32 noundef %shr) #5
  br label %cleanup

if.end95:                                         ; preds = %if.end67
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp96 = icmp eq i32 %24, 10
  br i1 %cmp96, label %if.then98, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end95.cleanup_crit_edge, %if.then85, %do.body73, %if.then59, %do.body47, %if.then34, %do.body22, %if.then5, %do.body2
  %retval.0 = phi i32 [ -4, %if.then5 ], [ -2, %if.then34 ], [ -2, %if.then59 ], [ -2, %if.then85 ], [ 0, %if.then98 ], [ 0, %if.end95.cleanup_crit_edge ], [ -4, %do.body2 ], [ -2, %do.body22 ], [ -2, %do.body47 ], [ -2, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_m88(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %offset, 31
  %call1 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data)
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_m88(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %offset, 31
  %call1 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data)
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_set_page_igp(ptr noundef %hw, i16 noundef zeroext %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_set_page_igp, %if.then)) #5
          to label %do.end4 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %conv = zext i16 %page to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %conv) #5
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %addr, align 4
  %call5 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %page)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_igp(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.__e1000e_read_phy_reg_igp.exit_crit_edge, label %if.end.i

entry.__e1000e_read_phy_reg_igp.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_read_phy_reg_igp.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.end.i.__e1000e_read_phy_reg_igp.exit_crit_edge

if.end.i.__e1000e_read_phy_reg_igp.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_read_phy_reg_igp.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 15
  br i1 %cmp.i, label %if.end12.i, label %if.end9.i.if.then14.i_crit_edge

if.end9.i.if.then14.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end12.i:                                       ; preds = %if.end9.i
  %conv.i = trunc i32 %offset to i16
  %call11.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then14.i_crit_edge, label %if.end12.i.if.end16.i_crit_edge

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %if.end9.i.if.then14.i_crit_edge
  %and.i = and i32 %offset, 31
  %call15.i = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and.i, ptr noundef %data) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %ret_val.2.i = phi i32 [ %call11.i, %if.end12.i.if.end16.i_crit_edge ], [ %call15.i, %if.then14.i ]
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %2 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release.i, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %__e1000e_read_phy_reg_igp.exit

__e1000e_read_phy_reg_igp.exit:                   ; preds = %if.end16.i, %if.end.i.__e1000e_read_phy_reg_igp.exit_crit_edge, %entry.__e1000e_read_phy_reg_igp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.__e1000e_read_phy_reg_igp.exit_crit_edge ], [ %call.i, %if.end.i.__e1000e_read_phy_reg_igp.exit_crit_edge ], [ %ret_val.2.i, %if.end16.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_igp_locked(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 15
  br i1 %cmp.i, label %if.end12.i, label %entry.if.then14.i_crit_edge

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end12.i:                                       ; preds = %entry
  %conv.i = trunc i32 %offset to i16
  %call11.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then14.i_crit_edge, label %if.end12.i.__e1000e_read_phy_reg_igp.exit_crit_edge

if.end12.i.__e1000e_read_phy_reg_igp.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_read_phy_reg_igp.exit

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge
  %and.i = and i32 %offset, 31
  %call15.i = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and.i, ptr noundef %data) #5
  br label %__e1000e_read_phy_reg_igp.exit

__e1000e_read_phy_reg_igp.exit:                   ; preds = %if.then14.i, %if.end12.i.__e1000e_read_phy_reg_igp.exit_crit_edge
  %ret_val.2.i = phi i32 [ %call11.i, %if.end12.i.__e1000e_read_phy_reg_igp.exit_crit_edge ], [ %call15.i, %if.then14.i ]
  ret i32 %ret_val.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_igp(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.__e1000e_write_phy_reg_igp.exit_crit_edge, label %if.end.i

entry.__e1000e_write_phy_reg_igp.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_write_phy_reg_igp.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.end.i.__e1000e_write_phy_reg_igp.exit_crit_edge

if.end.i.__e1000e_write_phy_reg_igp.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_write_phy_reg_igp.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 15
  br i1 %cmp.i, label %if.end12.i, label %if.end9.i.if.then14.i_crit_edge

if.end9.i.if.then14.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end12.i:                                       ; preds = %if.end9.i
  %conv.i = trunc i32 %offset to i16
  %call11.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then14.i_crit_edge, label %if.end12.i.if.end16.i_crit_edge

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %if.end9.i.if.then14.i_crit_edge
  %and.i = and i32 %offset, 31
  %call15.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and.i, i16 noundef zeroext %data) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %ret_val.2.i = phi i32 [ %call11.i, %if.end12.i.if.end16.i_crit_edge ], [ %call15.i, %if.then14.i ]
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %2 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release.i, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %__e1000e_write_phy_reg_igp.exit

__e1000e_write_phy_reg_igp.exit:                  ; preds = %if.end16.i, %if.end.i.__e1000e_write_phy_reg_igp.exit_crit_edge, %entry.__e1000e_write_phy_reg_igp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.__e1000e_write_phy_reg_igp.exit_crit_edge ], [ %call.i, %if.end.i.__e1000e_write_phy_reg_igp.exit_crit_edge ], [ %ret_val.2.i, %if.end16.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_igp_locked(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 15
  br i1 %cmp.i, label %if.end12.i, label %entry.if.then14.i_crit_edge

entry.if.then14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end12.i:                                       ; preds = %entry
  %conv.i = trunc i32 %offset to i16
  %call11.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.then14.i_crit_edge, label %if.end12.i.__e1000e_write_phy_reg_igp.exit_crit_edge

if.end12.i.__e1000e_write_phy_reg_igp.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000e_write_phy_reg_igp.exit

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %entry.if.then14.i_crit_edge
  %and.i = and i32 %offset, 31
  %call15.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and.i, i16 noundef zeroext %data) #5
  br label %__e1000e_write_phy_reg_igp.exit

__e1000e_write_phy_reg_igp.exit:                  ; preds = %if.then14.i, %if.end12.i.__e1000e_write_phy_reg_igp.exit_crit_edge
  %ret_val.2.i = phi i32 [ %call11.i, %if.end12.i.__e1000e_write_phy_reg_igp.exit_crit_edge ], [ %call15.i, %if.then14.i ]
  ret i32 %ret_val.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_kmrn_reg(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.__e1000_read_kmrn_reg.exit_crit_edge, label %cleanup.i

entry.__e1000_read_kmrn_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000_read_kmrn_reg.exit

cleanup.i:                                        ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then13.critedge.i, label %cleanup.i.__e1000_read_kmrn_reg.exit_crit_edge

cleanup.i.__e1000_read_kmrn_reg.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000_read_kmrn_reg.exit

if.then13.critedge.i:                             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.c.i = shl i32 %offset, 16
  %and.c.i = and i32 %shl.c.i, 2031616
  %or.c.i = or i32 %and.c.i, 2097152
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or.c.i) #5
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #5
  %6 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #5, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %conv.c.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.c.i, ptr %data, align 2
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %11 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release.i, align 4
  tail call void %12(ptr noundef %hw) #5
  br label %__e1000_read_kmrn_reg.exit

__e1000_read_kmrn_reg.exit:                       ; preds = %if.then13.critedge.i, %cleanup.i.__e1000_read_kmrn_reg.exit_crit_edge, %entry.__e1000_read_kmrn_reg.exit_crit_edge
  %retval.1.i = phi i32 [ %call.i, %cleanup.i.__e1000_read_kmrn_reg.exit_crit_edge ], [ 0, %if.then13.critedge.i ], [ 0, %entry.__e1000_read_kmrn_reg.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_kmrn_reg_locked(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.c28.i = shl i32 %offset, 16
  %and.c29.i = and i32 %shl.c28.i, 2031616
  %or.c30.i = or i32 %and.c29.i, 2097152
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or.c30.i) #5
  %hw_addr.i36.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i36.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i36.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #5
  %4 = ptrtoint ptr %hw_addr.i36.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i36.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #5, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %conv.c33.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.c33.i, ptr %data, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_kmrn_reg(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.__e1000_write_kmrn_reg.exit_crit_edge, label %cleanup.i

entry.__e1000_write_kmrn_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000_write_kmrn_reg.exit

cleanup.i:                                        ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then12.critedge.i, label %cleanup.i.__e1000_write_kmrn_reg.exit_crit_edge

cleanup.i.__e1000_write_kmrn_reg.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__e1000_write_kmrn_reg.exit

if.then12.critedge.i:                             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.c.i = shl i32 %offset, 16
  %and.c.i = and i32 %shl.c.i, 2031616
  %conv.c.i = zext i16 %data to i32
  %or.c.i = or i32 %and.c.i, %conv.c.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or.c.i) #5
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #5
  %release.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %6 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release.i, align 4
  tail call void %7(ptr noundef %hw) #5
  br label %__e1000_write_kmrn_reg.exit

__e1000_write_kmrn_reg.exit:                      ; preds = %if.then12.critedge.i, %cleanup.i.__e1000_write_kmrn_reg.exit_crit_edge, %entry.__e1000_write_kmrn_reg.exit_crit_edge
  %retval.1.i = phi i32 [ %call.i, %cleanup.i.__e1000_write_kmrn_reg.exit_crit_edge ], [ 0, %if.then12.critedge.i ], [ 0, %entry.__e1000_write_kmrn_reg.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_kmrn_reg_locked(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl.c25.i = shl i32 %offset, 16
  %and.c26.i = and i32 %shl.c25.i, 2031616
  %conv.c27.i = zext i16 %data to i32
  %or.c28.i = or i32 %and.c26.i, %conv.c27.i
  tail call void @__ew32(ptr noundef %hw, i32 noundef 52, i32 noundef %or.c28.i) #5
  %hw_addr.i30.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i30.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i30.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_copper_link_setup_82577(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 22, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = or i16 %4, -29696
  store i16 %5, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i41 = call i32 %7(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool6.not = icmp eq i32 %call.i41, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i43 = call i32 %9(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool10.not = icmp eq i32 %call.i43, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %12 = and i16 %11, -1537
  store i16 %12, ptr %phy_data, align 2
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 18
  %13 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mdix, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %14, label %sw.default [
    i8 1, label %if.end12.sw.epilog_crit_edge
    i8 2, label %sw.bb
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %16 = or i16 %12, 512
  %17 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %phy_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %18 = or i16 %12, 1024
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.end12.sw.epilog_crit_edge
  %20 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_data, align 2
  %22 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i, align 4
  %call.i45 = call i32 %23(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool24.not = icmp eq i32 %call.i45, 0
  br i1 %tobool24.not, label %if.end26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #5
  %24 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !228
  %25 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg.i, align 4
  %call.i.i = call i32 %26(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %phy_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.e1000_set_master_slave_mode.exit_crit_edge

if.end26.e1000_set_master_slave_mode.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_set_master_slave_mode.exit

if.end.i:                                         ; preds = %if.end26
  %27 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_data.i, align 2
  %conv.i = zext i16 %28 to i32
  %and.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond.i = select i1 %tobool4.not.i, i32 2, i32 1
  %cond5.i = select i1 %tobool1.not.i, i32 3, i32 %cond.i
  %original_ms_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %29 = ptrtoint ptr %original_ms_type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond5.i, ptr %original_ms_type.i, align 4
  %ms_type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %ms_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ms_type.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %31, label %if.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb16.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = or i16 %28, 6144
  %34 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %phy_data.i, align 2
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = and i16 %28, -6145
  %36 = or i16 %35, 4096
  %37 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %phy_data.i, align 2
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = and i16 %28, -4097
  %39 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %phy_data.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.bb9.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %40 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_data.i, align 2
  %42 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i, align 4
  %call.i26.i = call i32 %43(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %41) #5
  br label %e1000_set_master_slave_mode.exit

e1000_set_master_slave_mode.exit:                 ; preds = %sw.epilog.i, %if.end26.e1000_set_master_slave_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i26.i, %sw.epilog.i ], [ %call.i.i, %if.end26.e1000_set_master_slave_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %e1000_set_master_slave_mode.exit, %sw.epilog.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %e1000_set_master_slave_mode.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i41, %if.end.cleanup_crit_edge ], [ %call.i43, %if.end8.cleanup_crit_edge ], [ %call.i45, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_set_master_slave_mode(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %and3 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool4.not, i32 2, i32 1
  %cond5 = select i1 %tobool1.not, i32 3, i32 %cond
  %original_ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %original_ms_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond5, ptr %original_ms_type, align 4
  %ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %ms_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ms_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = or i16 %4, 6144
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = and i16 %4, -6145
  %12 = or i16 %11, 4096
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = and i16 %4, -4097
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb9, %sw.bb, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %call.i26 = call i32 %19(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %17) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_copper_link_setup_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.not = icmp eq i32 %4, 8
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %7 = or i16 %6, 2048
  store i16 %7, ptr %phy_data, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_data, align 2
  %10 = and i16 %9, -97
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 18
  %11 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mdix, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %12, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb11
    i8 3, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %15 = or i16 %10, 32
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %17 = or i16 %10, 64
  %18 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %phy_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %19 = or i16 %9, 96
  %20 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  %21 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_data, align 2
  %23 = and i16 %22, -3
  store i16 %23, ptr %phy_data, align 2
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 19
  %24 = ptrtoint ptr %disable_polarity_correction to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %disable_polarity_correction, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not = icmp eq i8 %25, 0
  br i1 %tobool26.not, label %sw.epilog.if.end31_crit_edge, label %if.then27

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %26 = or i16 %22, 2
  %27 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %phy_data, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %sw.epilog.if.end31_crit_edge
  br i1 %cmp.not, label %if.then35, label %if.end31.if.end63_crit_edge

if.end31.if.end63_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then35:                                        ; preds = %if.end31
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040305, i32 %29)
  %cmp36 = icmp eq i32 %29, 21040305
  br i1 %cmp36, label %if.then38, label %if.then35.if.end59_crit_edge

if.then35.if.end59_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then38:                                        ; preds = %if.then35
  %30 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %phy_data, align 2
  %32 = and i16 %31, -2049
  store i16 %32, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %33 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg.i, align 4
  %call.i233 = call i32 %34(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool43.not = icmp eq i32 %call.i233, 0
  br i1 %tobool43.not, label %if.end45, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.then38
  %commit = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %35 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %commit, align 4
  %call46 = call i32 %36(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end59_crit_edge, label %do.body49

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.body49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_copper_link_setup_m88, %if.then54)) #5
          to label %cleanup [label %if.then54], !srcloc !229

if.then54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug362, ptr noundef %40, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end59:                                         ; preds = %if.end45.if.end59_crit_edge, %if.then35.if.end59_crit_edge
  %41 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_data, align 2
  %43 = or i16 %42, 2048
  store i16 %43, ptr %phy_data, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.end31.if.end63_crit_edge
  %44 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %phy_data, align 2
  %write_reg.i234 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %46 = ptrtoint ptr %write_reg.i234 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i234, align 4
  %call.i235 = call i32 %47(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool65.not = icmp eq i32 %call.i235, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp69 = icmp eq i32 %49, 2
  br i1 %cmp69, label %land.lhs.true, label %if.end67.if.end110_crit_edge

if.end67.if.end110_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end67
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %50 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp71 = icmp ult i32 %51, 4
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true.if.end110thread-pre-split_crit_edge

land.lhs.true.if.end110thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110thread-pre-split

land.lhs.true73:                                  ; preds = %land.lhs.true
  %id74 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %52 = ptrtoint ptr %id74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040305, i32 %53)
  %cmp75.not = icmp eq i32 %53, 21040305
  br i1 %cmp75.not, label %land.lhs.true73.if.end110thread-pre-split_crit_edge, label %if.then77

land.lhs.true73.if.end110thread-pre-split_crit_edge: ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110thread-pre-split

if.then77:                                        ; preds = %land.lhs.true73
  %54 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_reg.i, align 4
  %call.i237 = call i32 %55(ptr noundef %hw, i32 noundef 20, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool79.not = icmp eq i32 %call.i237, 0
  br i1 %tobool79.not, label %if.end81, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %if.then77
  %56 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %phy_data, align 2
  %58 = or i16 %57, 112
  %59 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp86 = icmp eq i32 %60, 2
  br i1 %cmp86, label %land.lhs.true88, label %if.end81.if.else_crit_edge

if.end81.if.else_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true88:                                  ; preds = %if.end81
  %61 = ptrtoint ptr %id74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040320, i32 %62)
  %cmp90 = icmp eq i32 %62, 21040320
  br i1 %cmp90, label %land.lhs.true88.if.end105_crit_edge, label %land.lhs.true88.if.else_crit_edge

land.lhs.true88.if.else_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true88.if.end105_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true88.if.else_crit_edge, %if.end81.if.else_crit_edge
  br label %if.end105

if.end105:                                        ; preds = %if.else, %land.lhs.true88.if.end105_crit_edge
  %.sink251 = phi i16 [ -3841, %if.else ], [ -3585, %land.lhs.true88.if.end105_crit_edge ]
  %.sink250 = phi i16 [ 256, %if.else ], [ 2048, %land.lhs.true88.if.end105_crit_edge ]
  %63 = and i16 %58, %.sink251
  %64 = or i16 %63, %.sink250
  %65 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %phy_data, align 2
  %66 = ptrtoint ptr %write_reg.i234 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg.i234, align 4
  %call.i239 = call i32 %67(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool107.not = icmp eq i32 %call.i239, 0
  br i1 %tobool107.not, label %if.end105.if.end110thread-pre-split_crit_edge, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end105.if.end110thread-pre-split_crit_edge:    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110thread-pre-split

if.end110thread-pre-split:                        ; preds = %if.end105.if.end110thread-pre-split_crit_edge, %land.lhs.true73.if.end110thread-pre-split_crit_edge, %land.lhs.true.if.end110thread-pre-split_crit_edge
  %68 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %type, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110thread-pre-split, %if.end67.if.end110_crit_edge
  %69 = phi i32 [ %.pr, %if.end110thread-pre-split ], [ %49, %if.end67.if.end110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp112 = icmp eq i32 %69, 8
  br i1 %cmp112, label %land.lhs.true114, label %if.end110.if.end127_crit_edge

if.end110.if.end127_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

land.lhs.true114:                                 ; preds = %if.end110
  %id115 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %70 = ptrtoint ptr %id115 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040305, i32 %71)
  %cmp116 = icmp eq i32 %71, 21040305
  br i1 %cmp116, label %if.then118, label %land.lhs.true114.if.end127_crit_edge

land.lhs.true114.if.end127_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.then118:                                       ; preds = %land.lhs.true114
  %72 = ptrtoint ptr %write_reg.i234 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg.i234, align 4
  %call.i241 = call i32 %73(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool120.not = icmp eq i32 %call.i241, 0
  br i1 %tobool120.not, label %if.end122, label %if.then118.cleanup_crit_edge

if.then118.cleanup_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end122:                                        ; preds = %if.then118
  %74 = ptrtoint ptr %write_reg.i234 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_reg.i234, align 4
  %call.i243 = call i32 %75(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool124.not = icmp eq i32 %call.i243, 0
  br i1 %tobool124.not, label %if.end122.if.end127_crit_edge, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.end127:                                        ; preds = %if.end122.if.end127_crit_edge, %land.lhs.true114.if.end127_crit_edge, %if.end110.if.end127_crit_edge
  %commit129 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %76 = ptrtoint ptr %commit129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %commit129, align 4
  %tobool130.not = icmp eq ptr %77, null
  br i1 %tobool130.not, label %if.end127.if.end159_crit_edge, label %if.then131

if.end127.if.end159_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end159

if.then131:                                       ; preds = %if.end127
  %call134 = call i32 %77(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then131.if.end159_crit_edge, label %do.body138

if.then131.if.end159_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end159

do.body138:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_copper_link_setup_m88, %if.then150)) #5
          to label %cleanup [label %if.then150], !srcloc !229

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %netdev152 = getelementptr inbounds %struct.e1000_adapter, ptr %79, i32 0, i32 64
  %80 = ptrtoint ptr %netdev152 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %netdev152, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug363, ptr noundef %81, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end159:                                        ; preds = %if.then131.if.end159_crit_edge, %if.end127.if.end159_crit_edge
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %83)
  %cmp161 = icmp eq i32 %83, 9
  br i1 %cmp161, label %if.then163, label %if.end159.if.end178_crit_edge

if.end159.if.end178_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end178

if.then163:                                       ; preds = %if.end159
  %84 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_reg.i, align 4
  %call.i245 = call i32 %85(ptr noundef %hw, i32 noundef 20, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool165.not = icmp eq i32 %call.i245, 0
  br i1 %tobool165.not, label %if.end167, label %if.then163.cleanup_crit_edge

if.then163.cleanup_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end167:                                        ; preds = %if.then163
  %86 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %phy_data, align 2
  %88 = and i16 %87, -61
  %89 = or i16 %88, 32
  store i16 %89, ptr %phy_data, align 2
  %90 = ptrtoint ptr %write_reg.i234 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_reg.i234, align 4
  %call.i247 = call i32 %91(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext %89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool175.not = icmp eq i32 %call.i247, 0
  br i1 %tobool175.not, label %if.end167.if.end178_crit_edge, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end167.if.end178_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end178

if.end178:                                        ; preds = %if.end167.if.end178_crit_edge, %if.end159.if.end178_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %if.end167.cleanup_crit_edge, %if.then163.cleanup_crit_edge, %if.then150, %do.body138, %if.end122.cleanup_crit_edge, %if.then118.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then54, %do.body49, %if.then38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end178 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i233, %if.then38.cleanup_crit_edge ], [ %call46, %if.then54 ], [ %call.i235, %if.end63.cleanup_crit_edge ], [ %call.i237, %if.then77.cleanup_crit_edge ], [ %call.i239, %if.end105.cleanup_crit_edge ], [ %call.i241, %if.then118.cleanup_crit_edge ], [ %call.i243, %if.end122.cleanup_crit_edge ], [ %call134, %if.then150 ], [ %call.i245, %if.then163.cleanup_crit_edge ], [ %call.i247, %if.end167.cleanup_crit_edge ], [ %call46, %do.body49 ], [ %call134, %do.body138 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_copper_link_setup_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %reset.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 14
  %1 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 %2(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_copper_link_setup_igp, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !229

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug364, ptr noundef %6, ptr noundef nonnull @.str.15) #5
  br label %cleanup

if.end10:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 100) #5
  %set_d0_lplu_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 15
  %7 = ptrtoint ptr %set_d0_lplu_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_d0_lplu_state, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %if.end10.if.end42_crit_edge, label %if.then13

if.end10.if.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then13:                                        ; preds = %if.end10
  %call17 = tail call i32 %8(ptr noundef %hw, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end42_crit_edge, label %do.body21

if.then13.if.end42_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_copper_link_setup_igp, %if.then33)) #5
          to label %cleanup [label %if.then33], !srcloc !229

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev35 = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug365, ptr noundef %12, ptr noundef nonnull @.str.16) #5
  br label %cleanup

if.end42:                                         ; preds = %if.then13.if.end42_crit_edge, %if.end10.if.end42_crit_edge
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %13 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg.i, align 4
  %call.i129 = call i32 %14(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool44.not = icmp eq i32 %call.i129, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 2
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 18
  %17 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mdix, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %18, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %20 = and i16 %16, -12289
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %data, align 2
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i16 %16, -12289
  %23 = or i16 %22, 8192
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %25 = or i16 %16, 4096
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb52, %sw.bb
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %29 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg.i, align 4
  %call.i130 = call i32 %30(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool60.not = icmp eq i32 %call.i130, 0
  br i1 %tobool60.not, label %if.end62, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %sw.epilog
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %31 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %autoneg, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool63.not = icmp eq i8 %32, 0
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.then64

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then64:                                        ; preds = %if.end62
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %33 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %autoneg_advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %34)
  %cmp = icmp eq i16 %34, 32
  br i1 %cmp, label %if.then67, label %if.then64.if.end90_crit_edge

if.then64.if.end90_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then67:                                        ; preds = %if.then64
  %35 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg.i, align 4
  %call.i132 = call i32 %36(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool69.not = icmp eq i32 %call.i132, 0
  br i1 %tobool69.not, label %if.end71, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %if.then67
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data, align 2
  %39 = and i16 %38, -129
  store i16 %39, ptr %data, align 2
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg.i, align 4
  %call.i134 = call i32 %41(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool76.not = icmp eq i32 %call.i134, 0
  br i1 %tobool76.not, label %if.end78, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %42 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_reg.i, align 4
  %call.i136 = call i32 %43(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool80.not = icmp eq i32 %call.i136, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data, align 2
  %46 = and i16 %45, -4097
  store i16 %46, ptr %data, align 2
  %47 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg.i, align 4
  %call.i138 = call i32 %48(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool87.not = icmp eq i32 %call.i138, 0
  br i1 %tobool87.not, label %if.end82.if.end90_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end90:                                         ; preds = %if.end82.if.end90_crit_edge, %if.then64.if.end90_crit_edge
  %call91 = call fastcc i32 @e1000_set_master_slave_mode(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then33, %do.body21, %if.then7, %do.body2
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ %call17, %if.then33 ], [ %call.i129, %if.end42.cleanup_crit_edge ], [ %call.i130, %sw.epilog.cleanup_crit_edge ], [ %call.i132, %if.then67.cleanup_crit_edge ], [ %call.i134, %if.end71.cleanup_crit_edge ], [ %call.i136, %if.end78.cleanup_crit_edge ], [ %call.i138, %if.end82.cleanup_crit_edge ], [ %call91, %if.end90 ], [ 0, %if.end62.cleanup_crit_edge ], [ %call.i, %do.body2 ], [ %call17, %do.body21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 23
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @e1000_copper_link_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end37_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_copper_link, %if.then8)) #5
          to label %do.end11 [label %if.then8], !srcloc !229

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_copper_link.__UNIQUE_ID_ddebug379, ptr noundef %5, ptr noundef nonnull @.str.18) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %force_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %force_speed_duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %force_speed_duplex, align 4
  %call12 = tail call i32 %7(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end11.if.end37_crit_edge, label %do.body16

do.end11.if.end37_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body16:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_copper_link, %if.then28)) #5
          to label %cleanup [label %if.then28], !srcloc !229

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %netdev30 = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 64
  %10 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_copper_link.__UNIQUE_ID_ddebug380, ptr noundef %11, ptr noundef nonnull @.str.19) #5
  br label %cleanup

if.end37:                                         ; preds = %do.end11.if.end37_crit_edge, %if.then.if.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %12 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %if.end37
  %i.053.i = phi i16 [ 0, %if.end37 ], [ %inc.i, %if.end18.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end10.i_crit_edge, label %if.then.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 2147480) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %for.body.i.if.end10.i_crit_edge
  %16 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i.i, align 4
  %call.i51.i = call i32 %17(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_status.i, align 2
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool16.not.i = icmp eq i16 %20, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %do.body45

if.end18.i:                                       ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i16 %i.053.i, 1
  %cmp.i = icmp ult i16 %i.053.i, 9
  br i1 %cmp.i, label %if.end18.i.for.body.i_crit_edge, label %do.body70

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

do.body45:                                        ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_copper_link, %if.then57)) #5
          to label %do.end64 [label %if.then57], !srcloc !229

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %netdev59 = getelementptr inbounds %struct.e1000_adapter, ptr %23, i32 0, i32 64
  %24 = ptrtoint ptr %netdev59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_copper_link.__UNIQUE_ID_ddebug381, ptr noundef %25, ptr noundef nonnull @.str.20) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %config_collision_dist = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 19
  %26 = ptrtoint ptr %config_collision_dist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config_collision_dist, align 4
  call void %27(ptr noundef %hw) #5
  %call67 = call i32 @e1000e_config_fc_after_link_up(ptr noundef %hw) #5
  br label %cleanup

do.body70:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_setup_copper_link, %if.then82)) #5
          to label %cleanup [label %if.then82], !srcloc !229

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %netdev84 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 64
  %30 = ptrtoint ptr %netdev84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev84, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_setup_copper_link.__UNIQUE_ID_ddebug382, ptr noundef %31, ptr noundef nonnull @.str.21) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %do.body70, %do.end64, %e1000e_phy_has_link_generic.exit, %if.then28, %do.body16, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call12, %if.then28 ], [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ %call67, %do.end64 ], [ 0, %if.then82 ], [ %call12, %do.body16 ], [ 0, %do.body70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_copper_link_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  %phy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl) #5
  %0 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_ctrl, align 2, !annotation !228
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %1 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %3 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %autoneg_advertised, align 4
  %and123 = and i16 %4, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and123)
  %tobool.not = icmp eq i16 %and123, 0
  %spec.store.select = select i1 %tobool.not, i16 %2, i16 %and123
  %5 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.store.select, ptr %autoneg_advertised, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_copper_link_autoneg, %if.then11)) #5
          to label %do.end14 [label %if.then11], !srcloc !229

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug375, ptr noundef %9, ptr noundef nonnull @.str.54) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %entry
  %call15 = tail call fastcc i32 @e1000_phy_setup_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body41, label %do.body19

do.body19:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_copper_link_autoneg, %if.then31)) #5
          to label %cleanup [label %if.then31], !srcloc !229

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev33 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug376, ptr noundef %13, ptr noundef nonnull @.str.55) #5
  br label %cleanup

do.body41:                                        ; preds = %do.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_copper_link_autoneg, %if.then53)) #5
          to label %do.end60 [label %if.then53], !srcloc !229

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %netdev55 = getelementptr inbounds %struct.e1000_adapter, ptr %15, i32 0, i32 64
  %16 = ptrtoint ptr %netdev55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug377, ptr noundef %17, ptr noundef nonnull @.str.56) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %do.body41
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %19(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %if.end64, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %do.end60
  %20 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_ctrl, align 2
  %22 = or i16 %21, 4608
  store i16 %22, ptr %phy_ctrl, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  %call.i133 = call i32 %24(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool68.not = icmp eq i32 %call.i133, 0
  br i1 %tobool68.not, label %if.end70, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end70:                                         ; preds = %if.end64
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %25 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool71.not = icmp eq i8 %26, 0
  br i1 %tobool71.not, label %if.end70.if.end98_crit_edge, label %if.then72

if.end70.if.end98_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then72:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %27 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.then72
  %i.016.i = phi i16 [ 45, %if.then72 ], [ %dec.i, %if.end9.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_reg.i, align 4
  %call.i.i = call i32 %29(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.do.body77_crit_edge

for.body.i.do.body77_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.end.i:                                         ; preds = %for.body.i
  %30 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i, align 4
  %call.i15.i = call i32 %31(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool3.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.do.body77_crit_edge

if.end.i.do.body77_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.end5.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %phy_status.i, align 2
  %34 = and i16 %33, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool7.not.i = icmp eq i16 %34, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.e1000_wait_autoneg.exit.thread_crit_edge

if.end5.i.e1000_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_wait_autoneg.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  call void @msleep(i32 noundef 100) #5
  %dec.i = add nsw i16 %i.016.i, -1
  %cmp.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp.not.i, label %if.end9.i.e1000_wait_autoneg.exit.thread_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end9.i.e1000_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_wait_autoneg.exit.thread

e1000_wait_autoneg.exit.thread:                   ; preds = %if.end9.i.e1000_wait_autoneg.exit.thread_crit_edge, %if.end5.i.e1000_wait_autoneg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %if.end98

do.body77:                                        ; preds = %if.end.i.do.body77_crit_edge, %for.body.i.do.body77_crit_edge
  %ret_val.1.i = phi i32 [ %call.i.i, %for.body.i.do.body77_crit_edge ], [ %call.i15.i, %if.end.i.do.body77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_copper_link_autoneg, %if.then89)) #5
          to label %cleanup [label %if.then89], !srcloc !229

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %netdev91 = getelementptr inbounds %struct.e1000_adapter, ptr %36, i32 0, i32 64
  %37 = ptrtoint ptr %netdev91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev91, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug378, ptr noundef %38, ptr noundef nonnull @.str.57) #5
  br label %cleanup

if.end98:                                         ; preds = %e1000_wait_autoneg.exit.thread, %if.end70.if.end98_crit_edge
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 25
  %39 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %get_link_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then89, %do.body77, %if.end64.cleanup_crit_edge, %do.end60.cleanup_crit_edge, %if.then31, %do.body19
  %retval.0 = phi i32 [ 0, %if.end98 ], [ %call15, %if.then31 ], [ %call.i, %do.end60.cleanup_crit_edge ], [ %call.i133, %if.end64.cleanup_crit_edge ], [ %ret_val.1.i, %if.then89 ], [ %call15, %do.body19 ], [ %ret_val.1.i, %do.body77 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef %iterations, i32 noundef %usec_interval, ptr nocapture noundef writeonly %success) local_unnamed_addr #0 align 64 {
entry:
  %phy_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status) #5
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_status, align 2, !annotation !228
  %1 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %success, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations)
  %cmp52.not = icmp eq i32 %iterations, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %usec_interval)
  %cmp2 = icmp ugt i32 %usec_interval, 999
  %div = udiv i32 %usec_interval, 1000
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %if.then

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %for.body
  br i1 %cmp2, label %if.then4, label %cond.false8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef %div) #5
  br label %if.end10

cond.false8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %4(i32 noundef %usec_interval) #5
  br label %if.end10

if.end10:                                         ; preds = %cond.false8, %if.then4, %for.body.if.end10_crit_edge
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i51 = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool12.not = icmp eq i32 %call.i51, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end14:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %phy_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool16.not = icmp eq i16 %9, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %success, align 1
  br label %for.end

if.end18:                                         ; preds = %if.end14
  br i1 %cmp2, label %if.then21, label %cond.false31

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef %div) #5
  br label %for.inc

cond.false31:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %11(i32 noundef %usec_interval) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false31, %if.then21
  %inc = add i16 %i.053, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ult i32 %conv, %iterations
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17, %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  %ret_val.1 = phi i32 [ 0, %if.then17 ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call.i51, %if.end10.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status) #5
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_force_speed_duplex_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #5
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i110 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool3.not = icmp eq i32 %call.i110, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i112 = call i32 %9(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool7.not = icmp eq i32 %call.i112, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %12 = and i16 %11, -12289
  store i16 %12, ptr %phy_data, align 2
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i114 = call i32 %14(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool15.not = icmp eq i32 %call.i114, 0
  br i1 %tobool15.not, label %do.body18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body18:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_igp, %if.then23)) #5
          to label %do.end27 [label %if.then23], !srcloc !229

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %phy_data, align 2
  %conv24 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug383, ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %conv24) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748) #5
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %22 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %do.end27.cleanup_crit_edge, label %do.body31

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body31:                                        ; preds = %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_igp, %if.then43)) #5
          to label %do.end50 [label %if.then43], !srcloc !229

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %netdev45 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %netdev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug384, ptr noundef %27, ptr noundef nonnull @.str.24) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body31
  %call51 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %do.end50
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool55.not = icmp eq i8 %29, 0
  br i1 %tobool55.not, label %do.body58, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_igp, %if.then70)) #5
          to label %if.end78 [label %if.then70], !srcloc !229

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %netdev72 = getelementptr inbounds %struct.e1000_adapter, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %netdev72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug385, ptr noundef %33, ptr noundef nonnull @.str.25) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %do.body58, %if.end54.if.end78_crit_edge
  %call79 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end50.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i110, %if.end.cleanup_crit_edge ], [ %call.i112, %if.end5.cleanup_crit_edge ], [ %call.i114, %if.end9.cleanup_crit_edge ], [ %call51, %do.end50.cleanup_crit_edge ], [ %call79, %if.end78 ], [ 0, %do.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr nocapture noundef %phy_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %current_mode, align 4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_addr.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %4 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_ctrl, align 2
  %6 = and i16 %5, -4097
  store i16 %6, ptr %phy_ctrl, align 2
  %forced_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 19
  %7 = ptrtoint ptr %forced_speed_duplex to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %forced_speed_duplex, align 2
  %9 = and i8 %8, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = and i32 %3, -555417601
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and7 = or i32 %11, 6144
  %12 = and i16 %5, -4353
  %13 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_setup, %if.then16)) #5
          to label %if.end44 [label %if.then16], !srcloc !229

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %15, i32 0, i32 64
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug392, ptr noundef %17, ptr noundef nonnull @.str.33) #5
  br label %if.end44

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or19 = or i32 %11, 6145
  %18 = or i16 %6, 256
  %19 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_setup, %if.then36)) #5
          to label %if.end44 [label %if.then36], !srcloc !229

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %netdev38 = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug393, ptr noundef %23, ptr noundef nonnull @.str.34) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.else, %if.then16, %if.then
  %ctrl.0 = phi i32 [ %and7, %if.then16 ], [ %or19, %if.then36 ], [ %and7, %if.then ], [ %or19, %if.else ]
  %24 = ptrtoint ptr %forced_speed_duplex to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %forced_speed_duplex, align 2
  %26 = and i8 %25, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  br i1 %tobool48.not, label %if.else78, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %or50 = or i32 %ctrl.0, 256
  %27 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_ctrl, align 2
  %29 = and i16 %28, -8257
  %30 = or i16 %29, 8192
  store i16 %30, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_setup, %if.then70)) #5
          to label %if.end104 [label %if.then70], !srcloc !229

if.then70:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %netdev72 = getelementptr inbounds %struct.e1000_adapter, ptr %32, i32 0, i32 64
  %33 = ptrtoint ptr %netdev72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug394, ptr noundef %34, ptr noundef nonnull @.str.35) #5
  br label %if.end104

if.else78:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %and79 = and i32 %ctrl.0, -769
  %35 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phy_ctrl, align 2
  %37 = and i16 %36, -8257
  store i16 %37, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_setup, %if.then96)) #5
          to label %if.end104 [label %if.then96], !srcloc !229

if.then96:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %netdev98 = getelementptr inbounds %struct.e1000_adapter, ptr %39, i32 0, i32 64
  %40 = ptrtoint ptr %netdev98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev98, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug395, ptr noundef %41, ptr noundef nonnull @.str.36) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.else78, %if.then70, %if.then49
  %ctrl.1 = phi i32 [ %or50, %if.then70 ], [ %and79, %if.then96 ], [ %or50, %if.then49 ], [ %and79, %if.else78 ]
  %config_collision_dist = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 0, i32 19
  %42 = ptrtoint ptr %config_collision_dist to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config_collision_dist, align 4
  tail call void %43(ptr noundef %hw) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %ctrl.1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_force_speed_duplex_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #5
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %phy_data, align 2
  %6 = and i16 %5, -97
  store i16 %6, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %call.i182 = call i32 %8(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool4.not = icmp eq i32 %call.i182, 0
  br i1 %tobool4.not, label %do.body7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_m88, %if.then12)) #5
          to label %do.end16 [label %if.then12], !srcloc !229

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_data, align 2
  %conv13 = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug386, ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %conv13) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 4
  %call.i184 = call i32 %16(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool18.not = icmp eq i32 %call.i184, 0
  br i1 %tobool18.not, label %if.end20, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %17 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_data, align 2
  %19 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg.i, align 4
  %call.i186 = call i32 %20(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool22.not = icmp eq i32 %call.i186, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %commit = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %21 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %commit, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.then27

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then27:                                        ; preds = %if.end24
  %call31 = call i32 %22(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then27.if.end35_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end35:                                         ; preds = %if.then27.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %23 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %if.end35.if.end103_crit_edge, label %do.body39

if.end35.if.end103_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

do.body39:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_m88, %if.then51)) #5
          to label %do.end58 [label %if.then51], !srcloc !229

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %netdev53 = getelementptr inbounds %struct.e1000_adapter, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev53, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug387, ptr noundef %28, ptr noundef nonnull @.str.28) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then51, %do.body39
  %call59 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %do.end58.cleanup_crit_edge

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %do.end58
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %link, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool63.not = icmp eq i8 %30, 0
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.end98_crit_edge

if.end62.if.end98_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then64:                                        ; preds = %if.end62
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.not = icmp eq i32 %32, 2
  br i1 %cmp.not, label %if.else, label %do.body69

do.body69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_force_speed_duplex_m88, %if.then81)) #5
          to label %if.end98 [label %if.then81], !srcloc !229

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %netdev83 = getelementptr inbounds %struct.e1000_adapter, ptr %34, i32 0, i32 64
  %35 = ptrtoint ptr %netdev83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev83, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug388, ptr noundef %36, ptr noundef nonnull @.str.25) #5
  br label %if.end98

if.else:                                          ; preds = %if.then64
  %37 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg.i, align 4
  %call.i188 = call i32 %38(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool90.not = icmp eq i32 %call.i188, 0
  br i1 %tobool90.not, label %if.end92, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end92:                                         ; preds = %if.else
  %39 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg.i, align 4
  %call.i.i = call i32 %40(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 193) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %e1000e_phy_reset_dsp.exit, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

e1000e_phy_reset_dsp.exit:                        ; preds = %if.end92
  %41 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i, align 4
  %call.i5.i = call i32 %42(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool94.not = icmp eq i32 %call.i5.i, 0
  br i1 %tobool94.not, label %e1000e_phy_reset_dsp.exit.if.end98_crit_edge, label %e1000e_phy_reset_dsp.exit.cleanup_crit_edge

e1000e_phy_reset_dsp.exit.cleanup_crit_edge:      ; preds = %e1000e_phy_reset_dsp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

e1000e_phy_reset_dsp.exit.if.end98_crit_edge:     ; preds = %e1000e_phy_reset_dsp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.end98:                                         ; preds = %e1000e_phy_reset_dsp.exit.if.end98_crit_edge, %if.then81, %do.body69, %if.end62.if.end98_crit_edge
  %call99 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end98.if.end103_crit_edge, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.end103:                                        ; preds = %if.end98.if.end103_crit_edge, %if.end35.if.end103_crit_edge
  %type105 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %type105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp106.not = icmp eq i32 %44, 2
  br i1 %cmp106.not, label %if.end109, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end109:                                        ; preds = %if.end103
  %45 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_reg.i, align 4
  %call.i191 = call i32 %46(ptr noundef %hw, i32 noundef 20, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool111.not = icmp eq i32 %call.i191, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  %47 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %phy_data, align 2
  %49 = or i16 %48, 112
  store i16 %49, ptr %phy_data, align 2
  %50 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg.i, align 4
  %call.i193 = call i32 %51(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext %49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool117.not = icmp eq i32 %call.i193, 0
  br i1 %tobool117.not, label %if.end119, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end119:                                        ; preds = %if.end113
  %52 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_reg.i, align 4
  %call.i195 = call i32 %53(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool121.not = icmp eq i32 %call.i195, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end123:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %phy_data, align 2
  %56 = or i16 %55, 2048
  store i16 %56, ptr %phy_data, align 2
  %57 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_reg.i, align 4
  %call.i197 = call i32 %58(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %56) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.end119.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %e1000e_phy_reset_dsp.exit.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i197, %if.end123 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i182, %if.end.cleanup_crit_edge ], [ %call.i184, %do.end16.cleanup_crit_edge ], [ %call.i186, %if.end20.cleanup_crit_edge ], [ %call31, %if.then27.cleanup_crit_edge ], [ %call59, %do.end58.cleanup_crit_edge ], [ %call.i188, %if.else.cleanup_crit_edge ], [ %call.i5.i, %e1000e_phy_reset_dsp.exit.cleanup_crit_edge ], [ %call99, %if.end98.cleanup_crit_edge ], [ 0, %if.end103.cleanup_crit_edge ], [ %call.i191, %if.end109.cleanup_crit_edge ], [ %call.i193, %if.end113.cleanup_crit_edge ], [ %call.i195, %if.end119.cleanup_crit_edge ], [ %call.i.i, %if.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_phy_force_speed_duplex_ife(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #5
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %data)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i114 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool3.not = icmp eq i32 %call.i114, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i116 = call i32 %9(ptr noundef %hw, i32 noundef 28, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool7.not = icmp eq i32 %call.i116, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %12 = and i16 %11, -193
  store i16 %12, ptr %data, align 2
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i118 = call i32 %14(ptr noundef %hw, i32 noundef 28, i16 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool15.not = icmp eq i32 %call.i118, 0
  br i1 %tobool15.not, label %do.body18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body18:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_ife, %if.then23)) #5
          to label %do.end27 [label %if.then23], !srcloc !229

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 2
  %conv24 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug389, ptr noundef %18, ptr noundef nonnull @.str.30, i32 noundef %conv24) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748) #5
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %22 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %do.end27.if.end83_crit_edge, label %do.body31

do.end27.if.end83_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

do.body31:                                        ; preds = %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_ife, %if.then43)) #5
          to label %do.end50 [label %if.then43], !srcloc !229

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %netdev45 = getelementptr inbounds %struct.e1000_adapter, ptr %25, i32 0, i32 64
  %26 = ptrtoint ptr %netdev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug390, ptr noundef %27, ptr noundef nonnull @.str.31) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body31
  %call51 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %do.end50
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %link, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool55.not = icmp eq i8 %29, 0
  br i1 %tobool55.not, label %do.body58, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_ife, %if.then70)) #5
          to label %if.end78 [label %if.then70], !srcloc !229

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %netdev72 = getelementptr inbounds %struct.e1000_adapter, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %netdev72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug391, ptr noundef %33, ptr noundef nonnull @.str.25) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %do.body58, %if.end54.if.end78_crit_edge
  %call79 = call i32 @e1000e_phy_has_link_generic(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.if.end83_crit_edge, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.end83:                                         ; preds = %if.end78.if.end83_crit_edge, %do.end27.if.end83_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end78.cleanup_crit_edge, %do.end50.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end83 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i114, %if.end.cleanup_crit_edge ], [ %call.i116, %if.end5.cleanup_crit_edge ], [ %call.i118, %if.end9.cleanup_crit_edge ], [ %call51, %do.end50.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_set_d3_lplu_state(ptr noundef %hw, i1 noundef zeroext %active) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 25, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %active, label %if.else38, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = and i16 %4, -5
  store i16 %5, ptr %data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i100 = call i32 %7(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool6.not = icmp eq i32 %call.i100, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 7
  %8 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smart_speed, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %9, label %if.end8.if.end68_crit_edge [
    i32 1, label %if.then10
    i32 2, label %if.then24
  ]

if.end8.if.end68_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then10:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call.i102 = call i32 %12(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool12.not = icmp eq i32 %call.i102, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %15 = or i16 %14, 128
  store i16 %15, ptr %data, align 2
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %call.i104 = call i32 %17(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool18.not = icmp eq i32 %call.i104, 0
  br i1 %tobool18.not, label %if.end14.if.end68_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.if.end68_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then24:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %call.i106 = call i32 %19(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool26.not = icmp eq i32 %call.i106, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data, align 2
  %22 = and i16 %21, -129
  store i16 %22, ptr %data, align 2
  %23 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg.i, align 4
  %call.i108 = call i32 %24(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool33.not = icmp eq i32 %call.i108, 0
  br i1 %tobool33.not, label %if.end28.if.end68_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.if.end68_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.else38:                                        ; preds = %if.end
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %25 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %autoneg_advertised, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %26, label %if.else38.if.end68_crit_edge [
    i16 47, label %if.else38.if.then51_crit_edge
    i16 15, label %if.else38.if.then51_crit_edge115
    i16 3, label %if.else38.if.then51_crit_edge116
  ]

if.else38.if.then51_crit_edge116:                 ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.else38.if.then51_crit_edge115:                 ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.else38.if.then51_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.else38.if.end68_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then51:                                        ; preds = %if.else38.if.then51_crit_edge, %if.else38.if.then51_crit_edge115, %if.else38.if.then51_crit_edge116
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 2
  %30 = or i16 %29, 4
  store i16 %30, ptr %data, align 2
  %write_reg.i109 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %31 = ptrtoint ptr %write_reg.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg.i109, align 4
  %call.i110 = call i32 %32(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool56.not = icmp eq i32 %call.i110, 0
  br i1 %tobool56.not, label %if.end58, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %if.then51
  %33 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_reg.i, align 4
  %call.i112 = call i32 %34(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool60.not = icmp eq i32 %call.i112, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %data, align 2
  %37 = and i16 %36, -129
  store i16 %37, ptr %data, align 2
  %38 = ptrtoint ptr %write_reg.i109 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i109, align 4
  %call.i114 = call i32 %39(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %37) #5
  br label %if.end68

if.end68:                                         ; preds = %if.end62, %if.else38.if.end68_crit_edge, %if.end28.if.end68_crit_edge, %if.end14.if.end68_crit_edge, %if.end8.if.end68_crit_edge
  %ret_val.0 = phi i32 [ %call.i114, %if.end62 ], [ 0, %if.end14.if.end68_crit_edge ], [ 0, %if.end28.if.end68_crit_edge ], [ 0, %if.end8.if.end68_crit_edge ], [ 0, %if.else38.if.end68_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end58.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %if.end68 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i100, %if.then3.cleanup_crit_edge ], [ %call.i102, %if.then10.cleanup_crit_edge ], [ %call.i104, %if.end14.cleanup_crit_edge ], [ %call.i106, %if.then24.cleanup_crit_edge ], [ %call.i108, %if.end28.cleanup_crit_edge ], [ %call.i110, %if.then51.cleanup_crit_edge ], [ %call.i112, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_check_downshift(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 8
  br i1 %3, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  %speed_downgraded = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 23
  %4 = ptrtoint ptr %speed_downgraded to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %speed_downgraded, align 1
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -35, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.e1000e_check_downshift, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep16 = getelementptr inbounds [8 x i32], ptr @switch.table.e1000e_check_downshift.81, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %9(ptr noundef %hw, i32 noundef %switch.load, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %conv3 = zext i16 %11 to i32
  %and = and i32 %switch.load17, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  %speed_downgraded7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 23
  %frombool = zext i1 %tobool5 to i8
  %12 = ptrtoint ptr %speed_downgraded7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %speed_downgraded7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %switch.lookup.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then ], [ %call.i, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = lshr i16 %4, 1
  %.lobit = and i16 %5, 1
  %6 = zext i16 %.lobit to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %7 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cable_polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %4)
  %cmp = icmp ugt i16 %4, -16385
  %. = select i1 %cmp, i32 180, i32 17
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i25 = call i32 %6(ptr noundef %hw, i32 noundef %., ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool7.not = icmp eq i32 %call.i25, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %.23 = select i1 %cmp, i32 120, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data, align 2
  %conv9 = zext i16 %8 to i32
  %and11 = and i32 %.23, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %cond = zext i1 %tobool12.not to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %cable_polarity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ %call.i25, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_ife(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 21
  %1 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %polarity_correction, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 17, i32 16
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %3 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i32 noundef %., ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then3, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.11 = select i1 %tobool.not, i32 32, i32 256
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %conv4 = zext i16 %6 to i32
  %and = and i32 %.11, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool6.not to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %7 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %cable_polarity, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cable_length_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = lshr i16 %4, 7
  %6 = and i16 %5, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp = icmp ugt i16 %6, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i16 %6 to i32
  %arrayidx = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %conv3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 17
  %9 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %min_cable_length, align 4
  %add = add nuw nsw i32 %conv3, 1
  %arrayidx8 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %add
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx8, align 2
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 16
  %12 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %max_cable_length, align 2
  %conv10 = zext i16 %8 to i32
  %conv12 = zext i16 %11 to i32
  %add13 = add nuw nsw i32 %conv12, %conv10
  %div26 = lshr i32 %add13, 1
  %conv14 = trunc i32 %div26 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %13 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %cable_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cable_length_igp_2(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 4529, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = add i16 %4, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %5)
  %6 = icmp ult i16 %5, 8192
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %7 = lshr i16 %4, 9
  %conv6 = zext i16 %7 to i32
  %arrayidx18 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %conv6
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 106, i16 %7)
  %10 = icmp ne i16 %7, 106
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %7)
  %11 = icmp ne i16 %7, 112
  %cmp20 = and i1 %10, %11
  %spec.select = select i1 %cmp20, i16 %7, i16 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp30.not = icmp eq i16 %9, 0
  %max_agc_index.1 = select i1 %cmp30.not, i16 0, i16 %7
  %conv36 = zext i16 %9 to i32
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %call.i.1 = call i32 %13(ptr noundef %hw, i32 noundef 4785, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_data, align 2
  %16 = add i16 %15, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %16)
  %17 = icmp ult i16 %16, 8192
  br i1 %17, label %if.end.1.cleanup_crit_edge, label %if.end13.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.1:                                       ; preds = %if.end.1
  %18 = lshr i16 %15, 9
  %conv6.1 = zext i16 %18 to i32
  %idxprom14.1 = zext i16 %spec.select to i32
  %arrayidx15.1 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom14.1
  %19 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx15.1, align 2
  %arrayidx18.1 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %conv6.1
  %21 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx18.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp20.1 = icmp ugt i16 %20, %22
  %spec.select.1 = select i1 %cmp20.1, i16 %18, i16 %spec.select
  %idxprom24.1 = zext i16 %max_agc_index.1 to i32
  %arrayidx25.1 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom24.1
  %23 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx25.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %22)
  %cmp30.1 = icmp ult i16 %24, %22
  %max_agc_index.1.1 = select i1 %cmp30.1, i16 %18, i16 %max_agc_index.1
  %conv36.1 = zext i16 %22 to i32
  %add.1 = add nuw nsw i32 %conv36, %conv36.1
  %25 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg.i, align 4
  %call.i.2 = call i32 %26(ptr noundef %hw, i32 noundef 5297, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end13.1.cleanup_crit_edge

if.end13.1.cleanup_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %if.end13.1
  %27 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_data, align 2
  %29 = add i16 %28, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %29)
  %30 = icmp ult i16 %29, 8192
  br i1 %30, label %if.end.2.cleanup_crit_edge, label %if.end13.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.2:                                       ; preds = %if.end.2
  %31 = lshr i16 %28, 9
  %conv6.2 = zext i16 %31 to i32
  %idxprom14.2 = zext i16 %spec.select.1 to i32
  %arrayidx15.2 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom14.2
  %32 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx15.2, align 2
  %arrayidx18.2 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %conv6.2
  %34 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx18.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp20.2 = icmp ugt i16 %33, %35
  %spec.select.2 = select i1 %cmp20.2, i16 %31, i16 %spec.select.1
  %idxprom24.2 = zext i16 %max_agc_index.1.1 to i32
  %arrayidx25.2 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom24.2
  %36 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx25.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %35)
  %cmp30.2 = icmp ult i16 %37, %35
  %max_agc_index.1.2 = select i1 %cmp30.2, i16 %31, i16 %max_agc_index.1.1
  %conv36.2 = zext i16 %35 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv36.2
  %38 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg.i, align 4
  %call.i.3 = call i32 %39(ptr noundef %hw, i32 noundef 6321, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end13.2.cleanup_crit_edge

if.end13.2.cleanup_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %if.end13.2
  %40 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_data, align 2
  %42 = add i16 %41, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %42)
  %43 = icmp ult i16 %42, 8192
  br i1 %43, label %if.end.3.cleanup_crit_edge, label %if.end13.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %44 = lshr i16 %41, 9
  %conv6.3 = zext i16 %44 to i32
  %idxprom14.3 = zext i16 %spec.select.2 to i32
  %arrayidx15.3 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom14.3
  %45 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx15.3, align 2
  %arrayidx18.3 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %conv6.3
  %47 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx18.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp20.3 = icmp ugt i16 %46, %48
  %spec.select.3 = select i1 %cmp20.3, i16 %44, i16 %spec.select.2
  %idxprom24.3 = zext i16 %max_agc_index.1.2 to i32
  %arrayidx25.3 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom24.3
  %49 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx25.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %48)
  %cmp30.3 = icmp ult i16 %50, %48
  %max_agc_index.1.3 = select i1 %cmp30.3, i16 %44, i16 %max_agc_index.1.2
  %conv36.3 = zext i16 %48 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv36.3
  %idxprom39 = zext i16 %spec.select.3 to i32
  %arrayidx40 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom39
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %52 to i32
  %idxprom42 = zext i16 %max_agc_index.1.3 to i32
  %arrayidx43 = getelementptr [113 x i16], ptr @e1000_igp_2_cable_length_table, i32 0, i32 %idxprom42
  %53 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %54 to i32
  %55 = add nuw nsw i32 %conv41, %conv44
  %sub = sub nsw i32 %add.3, %55
  %56 = lshr i32 %sub, 1
  %conv50 = and i32 %56, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv50)
  %cmp52 = icmp ugt i32 %conv50, 15
  %57 = trunc i32 %conv50 to i16
  %phi.cast96 = add nsw i16 %57, -15
  %cond = select i1 %cmp52, i16 %phi.cast96, i16 0
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 17
  %58 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %cond, ptr %min_cable_length, align 4
  %conv59 = add nuw i16 %57, 15
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 16
  %59 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv59, ptr %max_cable_length, align 2
  %conv61 = zext i16 %cond to i32
  %conv63 = zext i16 %conv59 to i32
  %add64 = add nuw nsw i32 %conv61, %conv63
  %div6597 = lshr i32 %add64, 1
  %conv66 = trunc i32 %div6597 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %60 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv66, ptr %cable_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.3, %if.end.3.cleanup_crit_edge, %if.end13.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end13.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call.i.1, %if.end13.cleanup_crit_edge ], [ -2, %if.end.1.cleanup_crit_edge ], [ %call.i.2, %if.end13.1.cleanup_crit_edge ], [ -2, %if.end.2.cleanup_crit_edge ], [ %call.i.3, %if.end13.2.cleanup_crit_edge ], [ -2, %if.end.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_info_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 12
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end8, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_phy_info_m88, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !229

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug396, ptr noundef %6, ptr noundef nonnull @.str.38) #5
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %7 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %8 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %9(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end8.if.end10.i_crit_edge, label %if.then.i

if.end8.if.end10.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %if.end8.if.end10.i_crit_edge
  %11 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i.i, align 4
  %call.i51.i = call i32 %12(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %13 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_status.i, align 2
  %15 = and i16 %14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool16.not.i = icmp eq i16 %15, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end36

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_phy_info_m88, %if.then28)) #5
          to label %cleanup [label %if.then28], !srcloc !229

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

if.then28:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %netdev30 = getelementptr inbounds %struct.e1000_adapter, ptr %18, i32 0, i32 64
  %19 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev30, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug397, ptr noundef %20, ptr noundef nonnull @.str.39) #5
  br label %cleanup

if.end36:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  %21 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i.i, align 4
  %call.i = call i32 %22(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %23 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %phy_data, align 2
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 21
  %25 = trunc i16 %24 to i8
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %data.i, align 2, !annotation !228
  %30 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i123 = call i32 %31(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i124, label %if.end50, label %e1000_check_polarity_m88.exit

e1000_check_polarity_m88.exit:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i, align 2
  %34 = lshr i16 %33, 1
  %.lobit.i = and i16 %34, 1
  %35 = zext i16 %.lobit.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %36 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  %37 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_reg.i.i, align 4
  %call.i127 = call i32 %38(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool52.not = icmp eq i32 %call.i127, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %39 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %phy_data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 20
  %41 = trunc i16 %40 to i8
  %42 = lshr i8 %41, 6
  %43 = and i8 %42, 1
  %44 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %is_mdix, align 4
  %45 = and i16 %40, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %45)
  %cmp65 = icmp eq i16 %45, -32768
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end54
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %46 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_cable_length, align 4
  %call69 = call i32 %47(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %if.then67
  %48 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg.i.i, align 4
  %call.i129 = call i32 %49(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool74.not = icmp eq i32 %call.i129, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %phy_data, align 2
  %52 = lshr i16 %51, 13
  %.lobit = and i16 %52, 1
  %53 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %local_rx, align 4
  %55 = lshr i16 %51, 12
  %.lobit118 = and i16 %55, 1
  %56 = zext i16 %.lobit118 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %remote_rx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %58 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 255, ptr %cable_length, align 4
  %local_rx84 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %local_rx84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 255, ptr %local_rx84, align 4
  %remote_rx85 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %remote_rx85 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 255, ptr %remote_rx85, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end76, %if.end72.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %e1000_check_polarity_m88.exit, %if.end36.cleanup_crit_edge, %if.then28, %e1000e_phy_has_link_generic.exit, %if.end18.i, %if.then5, %do.body2
  %retval.0 = phi i32 [ -3, %if.then5 ], [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ -3, %if.then28 ], [ %call.i, %if.end36.cleanup_crit_edge ], [ %call.i.i123, %e1000_check_polarity_m88.exit ], [ %call.i127, %if.end50.cleanup_crit_edge ], [ %call69, %if.then67.cleanup_crit_edge ], [ %call.i129, %if.end72.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end76 ], [ -3, %do.body2 ], [ -3, %if.end18.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_phy_info_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %1 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end10.i_crit_edge, label %if.then.i

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 0) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %entry.if.end10.i_crit_edge
  %5 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i.i, align 4
  %call.i51.i = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %7 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status.i, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool16.not.i = icmp eq i16 %9, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_get_phy_info_igp.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_get_phy_info_igp, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !229

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

if.then9:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_get_phy_info_igp.__UNIQUE_ID_ddebug398, ptr noundef %14, ptr noundef nonnull @.str.39) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 21
  %15 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %data.i, align 2, !annotation !228
  %17 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i78 = call i32 %18(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i79, label %if.end.i, label %if.end13.e1000_check_polarity_igp.exit.thread_crit_edge

if.end13.e1000_check_polarity_igp.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_check_polarity_igp.exit.thread

if.end.i:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %20)
  %cmp.i80 = icmp ugt i16 %20, -16385
  %..i = select i1 %cmp.i80, i32 180, i32 17
  %21 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i.i, align 4
  %call.i25.i = call i32 %22(ptr noundef %hw, i32 noundef %..i, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool7.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool7.not.i, label %if.end17, label %if.end.i.e1000_check_polarity_igp.exit.thread_crit_edge

if.end.i.e1000_check_polarity_igp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_check_polarity_igp.exit.thread

e1000_check_polarity_igp.exit.thread:             ; preds = %if.end.i.e1000_check_polarity_igp.exit.thread_crit_edge, %if.end13.e1000_check_polarity_igp.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ %call.i25.i, %if.end.i.e1000_check_polarity_igp.exit.thread_crit_edge ], [ %call.i.i78, %if.end13.e1000_check_polarity_igp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %.23.i = select i1 %cmp.i80, i32 120, i32 2
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data.i, align 2
  %conv9.i = zext i16 %24 to i32
  %and11.i = and i32 %.23.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i81 = icmp ne i32 %and11.i, 0
  %cond.i = zext i1 %tobool12.not.i81 to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  %26 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i.i, align 4
  %call.i = call i32 %27(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 20
  %30 = lshr i16 %29, 11
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %is_mdix, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %29)
  %cmp = icmp ugt i16 %29, -16385
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end21
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %34 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_cable_length, align 4
  %call32 = call i32 %35(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.then31
  %36 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_reg.i.i, align 4
  %call.i84 = call i32 %37(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool37.not = icmp eq i32 %call.i84, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %data, align 2
  %40 = lshr i16 %39, 13
  %.lobit = and i16 %40, 1
  %41 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %local_rx, align 4
  %43 = lshr i16 %39, 12
  %.lobit76 = and i16 %43, 1
  %44 = zext i16 %.lobit76 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %remote_rx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %46 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 255, ptr %cable_length, align 4
  %local_rx47 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %local_rx47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 255, ptr %local_rx47, align 4
  %remote_rx48 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %48 = ptrtoint ptr %remote_rx48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 255, ptr %remote_rx48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end39, %if.end35.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %e1000_check_polarity_igp.exit.thread, %if.then9, %e1000e_phy_has_link_generic.exit, %if.end18.i
  %retval.0 = phi i32 [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ -3, %if.then9 ], [ %call.i, %if.end17.cleanup_crit_edge ], [ %call32, %if.then31.cleanup_crit_edge ], [ %call.i84, %if.end35.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end39 ], [ -3, %if.end18.i ], [ %retval.0.i82.ph, %e1000_check_polarity_igp.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_get_phy_info_ife(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %1 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end10.i_crit_edge, label %if.then.i

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 0) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %entry.if.end10.i_crit_edge
  %5 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i.i, align 4
  %call.i51.i = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %7 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status.i, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool16.not.i = icmp eq i16 %9, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_phy_info_ife.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_phy_info_ife, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !229

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

if.then9:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_phy_info_ife.__UNIQUE_ID_ddebug399, ptr noundef %14, ptr noundef nonnull @.str.39) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  %15 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i.i, align 4
  %call.i = call i32 %16(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data, align 2
  %19 = and i16 %18, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool18.not = icmp eq i16 %19, 0
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 21
  %.lobit = lshr exact i16 %19, 4
  %20 = trunc i16 %.lobit to i8
  %21 = xor i8 %20, 1
  %22 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %polarity_correction, align 1
  br i1 %tobool18.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #5
  %23 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i68 = icmp eq i8 %21, 0
  %..i = select i1 %tobool.not.i68, i32 17, i32 16
  %24 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i70 = call i32 %25(ptr noundef %hw, i32 noundef %..i, ptr noundef nonnull %phy_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool2.not.i = icmp eq i32 %call.i.i70, 0
  br i1 %tobool2.not.i, label %e1000_check_polarity_ife.exit.thread, label %e1000_check_polarity_ife.exit

e1000_check_polarity_ife.exit.thread:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %.11.i = select i1 %tobool.not.i68, i32 32, i32 256
  %26 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %phy_data.i, align 2
  %conv4.i = zext i16 %27 to i32
  %and.i = and i32 %.11.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %28 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #5
  br label %if.end32

e1000_check_polarity_ife.exit:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %29 = lshr i16 %18, 5
  %.lobit66 = and i16 %29, 1
  %30 = zext i16 %.lobit66 to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %31 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cable_polarity, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %e1000_check_polarity_ife.exit.thread
  %32 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg.i.i, align 4
  %call.i72 = call i32 %33(ptr noundef %hw, i32 noundef 28, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool34.not = icmp eq i32 %call.i72, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 20
  %36 = trunc i16 %35 to i8
  %37 = lshr i8 %36, 5
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %is_mdix, align 4
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %40 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 255, ptr %cable_length, align 4
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 255, ptr %local_rx, align 4
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 255, ptr %remote_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %e1000_check_polarity_ife.exit, %if.end13.cleanup_crit_edge, %if.then9, %e1000e_phy_has_link_generic.exit, %if.end18.i
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ -3, %if.then9 ], [ %call.i, %if.end13.cleanup_crit_edge ], [ %call.i.i70, %e1000_check_polarity_ife.exit ], [ %call.i72, %if.end32.cleanup_crit_edge ], [ -3, %if.end18.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_sw_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl) #5
  %0 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_ctrl, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_ctrl, align 2
  %5 = or i16 %4, -32768
  store i16 %5, ptr %phy_ctrl, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i12 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool3.not = icmp eq i32 %call.i12, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_hw_reset_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %check_reset_block = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %0 = ptrtoint ptr %check_reset_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_reset_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %call8 = tail call i32 %3(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %or = or i32 %7, -2147483648
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %or) #5
  %8 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %reset_delay_us = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 10
  %11 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_delay_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  tail call void @__ew32(ptr noundef %hw, i32 noundef 0, i32 noundef %7) #5
  %14 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %17 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release, align 4
  tail call void %18(ptr noundef %hw) #5
  %get_cfg_done = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 6
  %19 = ptrtoint ptr %get_cfg_done to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_cfg_done, align 4
  %call23 = tail call i32 %20(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end11 ], [ 0, %if.then.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_cfg_done_generic(ptr nocapture noundef readnone %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_phy_init_script_igp3(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_phy_init_script_igp3.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_phy_init_script_igp3, %if.then)) #5
          to label %do.end4 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_phy_init_script_igp3.__UNIQUE_ID_ddebug400, ptr noundef %3, ptr noundef nonnull @.str.43) #5
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %5(ptr noundef %hw, i32 noundef 12123, i16 noundef zeroext -28648) #5
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i70 = tail call i32 %7(ptr noundef %hw, i32 noundef 12114, i16 noundef zeroext 0) #5
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %call.i72 = tail call i32 %9(ptr noundef %hw, i32 noundef 12209, i16 noundef zeroext -29916) #5
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  %call.i74 = tail call i32 %11(ptr noundef %hw, i32 noundef 12210, i16 noundef zeroext -1808) #5
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  %call.i76 = tail call i32 %13(ptr noundef %hw, i32 noundef 8208, i16 noundef zeroext 4272) #5
  %14 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg.i, align 4
  %call.i78 = tail call i32 %15(ptr noundef %hw, i32 noundef 8209, i16 noundef zeroext 0) #5
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %call.i80 = tail call i32 %17(ptr noundef %hw, i32 noundef 8413, i16 noundef zeroext 9370) #5
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %call.i82 = tail call i32 %19(ptr noundef %hw, i32 noundef 8414, i16 noundef zeroext 211) #5
  %20 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg.i, align 4
  %call.i84 = tail call i32 %21(ptr noundef %hw, i32 noundef 10420, i16 noundef zeroext 1230) #5
  %22 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg.i, align 4
  %call.i86 = tail call i32 %23(ptr noundef %hw, i32 noundef 12144, i16 noundef zeroext 10724) #5
  %24 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg.i, align 4
  %call.i88 = tail call i32 %25(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 320) #5
  %26 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg.i, align 4
  %call.i90 = tail call i32 %27(ptr noundef %hw, i32 noundef 7984, i16 noundef zeroext 5638) #5
  %28 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg.i, align 4
  %call.i92 = tail call i32 %29(ptr noundef %hw, i32 noundef 7985, i16 noundef zeroext -18412) #5
  %30 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg.i, align 4
  %call.i94 = tail call i32 %31(ptr noundef %hw, i32 noundef 7989, i16 noundef zeroext 42) #5
  %32 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg.i, align 4
  %call.i96 = tail call i32 %33(ptr noundef %hw, i32 noundef 7998, i16 noundef zeroext 103) #5
  %34 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg.i, align 4
  %call.i98 = tail call i32 %35(ptr noundef %hw, i32 noundef 8020, i16 noundef zeroext 101) #5
  %36 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg.i, align 4
  %call.i100 = tail call i32 %37(ptr noundef %hw, i32 noundef 8021, i16 noundef zeroext 42) #5
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call.i102 = tail call i32 %39(ptr noundef %hw, i32 noundef 8022, i16 noundef zeroext 42) #5
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg.i, align 4
  %call.i104 = tail call i32 %41(ptr noundef %hw, i32 noundef 8050, i16 noundef zeroext 16304) #5
  %42 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i, align 4
  %call.i106 = tail call i32 %43(ptr noundef %hw, i32 noundef 8054, i16 noundef zeroext -16129) #5
  %44 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg.i, align 4
  %call.i108 = tail call i32 %45(ptr noundef %hw, i32 noundef 8055, i16 noundef zeroext 7660) #5
  %46 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i, align 4
  %call.i110 = tail call i32 %47(ptr noundef %hw, i32 noundef 8056, i16 noundef zeroext -1553) #5
  %48 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg.i, align 4
  %call.i112 = tail call i32 %49(ptr noundef %hw, i32 noundef 8057, i16 noundef zeroext 528) #5
  %50 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg.i, align 4
  %call.i114 = tail call i32 %51(ptr noundef %hw, i32 noundef 6293, i16 noundef zeroext 3) #5
  %52 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg.i, align 4
  %call.i116 = tail call i32 %53(ptr noundef %hw, i32 noundef 6038, i16 noundef zeroext 8) #5
  %54 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg.i, align 4
  %call.i118 = tail call i32 %55(ptr noundef %hw, i32 noundef 6040, i16 noundef zeroext -12280) #5
  %56 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg.i, align 4
  %call.i120 = tail call i32 %57(ptr noundef %hw, i32 noundef 6296, i16 noundef zeroext -9960) #5
  %58 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg.i, align 4
  %call.i122 = tail call i32 %59(ptr noundef %hw, i32 noundef 6266, i16 noundef zeroext 2048) #5
  %60 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg.i, align 4
  %call.i124 = tail call i32 %61(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext 141) #5
  %62 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg.i, align 4
  %call.i126 = tail call i32 %63(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext 8320) #5
  %64 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_reg.i, align 4
  %call.i128 = tail call i32 %65(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext 69) #5
  %66 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg.i, align 4
  %call.i130 = tail call i32 %67(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 4928) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @e1000e_get_phy_type_from_id(i32 noundef %phy_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %phy_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %phy_id, label %sw.default [
    i32 21040176, label %entry.sw.epilog_crit_edge
    i32 21040208, label %entry.sw.epilog_crit_edge10
    i32 21040320, label %entry.sw.epilog_crit_edge11
    i32 21040160, label %entry.sw.epilog_crit_edge12
    i32 44565376, label %sw.bb1
    i32 21040288, label %sw.bb2
    i32 44565392, label %sw.bb3
    i32 44565296, label %entry.sw.bb4_crit_edge
    i32 44565280, label %entry.sw.bb4_crit_edge13
    i32 44565264, label %entry.sw.bb4_crit_edge14
    i32 21040304, label %entry.sw.bb5_crit_edge
    i32 21040305, label %entry.sw.bb5_crit_edge15
    i32 5099584, label %sw.bb6
    i32 22282320, label %sw.bb7
    i32 22282384, label %sw.bb8
    i32 22282400, label %sw.bb9
  ]

entry.sw.bb5_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb4_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge13, %entry.sw.bb4_crit_edge14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12
  %phy_type.0 = phi i32 [ 0, %sw.default ], [ 12, %sw.bb9 ], [ 11, %sw.bb8 ], [ 10, %sw.bb7 ], [ 9, %sw.bb6 ], [ 8, %sw.bb5 ], [ 7, %sw.bb4 ], [ 6, %sw.bb3 ], [ 5, %sw.bb2 ], [ 4, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge10 ], [ 2, %entry.sw.epilog_crit_edge11 ], [ 2, %entry.sw.epilog_crit_edge12 ]
  ret i32 %phy_type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_determine_phy_address(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end.9.for.body_crit_edge, %entry
  %phy_addr.020 = phi i32 [ 0, %entry ], [ %inc7, %if.end.9.for.body_crit_edge ]
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %phy_addr.020, ptr %addr, align 4
  %call = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %if.end [
    i32 21040176, label %for.body.cleanup_crit_edge
    i32 21040208, label %for.body.cleanup_crit_edge22
    i32 21040320, label %for.body.cleanup_crit_edge23
    i32 21040160, label %for.body.cleanup_crit_edge24
    i32 44565376, label %for.body.cleanup_crit_edge25
    i32 21040288, label %for.body.cleanup_crit_edge26
    i32 44565392, label %for.body.cleanup_crit_edge27
    i32 44565296, label %for.body.cleanup_crit_edge28
    i32 44565280, label %for.body.cleanup_crit_edge29
    i32 44565264, label %for.body.cleanup_crit_edge30
    i32 21040304, label %for.body.cleanup_crit_edge31
    i32 21040305, label %for.body.cleanup_crit_edge32
    i32 5099584, label %for.body.cleanup_crit_edge33
    i32 22282320, label %for.body.cleanup_crit_edge34
    i32 22282384, label %for.body.cleanup_crit_edge35
    i32 22282400, label %for.body.cleanup_crit_edge36
  ]

for.body.cleanup_crit_edge36:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge35:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge34:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge33:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge32:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge31:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge30:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge29:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge28:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge27:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge26:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge25:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge24:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge23:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge22:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.1 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %6, label %if.end.1 [
    i32 21040176, label %if.end.cleanup_crit_edge
    i32 21040208, label %if.end.cleanup_crit_edge37
    i32 21040320, label %if.end.cleanup_crit_edge38
    i32 21040160, label %if.end.cleanup_crit_edge39
    i32 44565376, label %if.end.cleanup_crit_edge40
    i32 21040288, label %if.end.cleanup_crit_edge41
    i32 44565392, label %if.end.cleanup_crit_edge42
    i32 44565296, label %if.end.cleanup_crit_edge43
    i32 44565280, label %if.end.cleanup_crit_edge44
    i32 44565264, label %if.end.cleanup_crit_edge45
    i32 21040304, label %if.end.cleanup_crit_edge46
    i32 21040305, label %if.end.cleanup_crit_edge47
    i32 5099584, label %if.end.cleanup_crit_edge48
    i32 22282320, label %if.end.cleanup_crit_edge49
    i32 22282384, label %if.end.cleanup_crit_edge50
    i32 22282400, label %if.end.cleanup_crit_edge51
  ]

if.end.cleanup_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge50:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge49:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge48:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge44:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge43:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge39:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.2 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %9, label %if.end.2 [
    i32 21040176, label %if.end.1.cleanup_crit_edge
    i32 21040208, label %if.end.1.cleanup_crit_edge52
    i32 21040320, label %if.end.1.cleanup_crit_edge53
    i32 21040160, label %if.end.1.cleanup_crit_edge54
    i32 44565376, label %if.end.1.cleanup_crit_edge55
    i32 21040288, label %if.end.1.cleanup_crit_edge56
    i32 44565392, label %if.end.1.cleanup_crit_edge57
    i32 44565296, label %if.end.1.cleanup_crit_edge58
    i32 44565280, label %if.end.1.cleanup_crit_edge59
    i32 44565264, label %if.end.1.cleanup_crit_edge60
    i32 21040304, label %if.end.1.cleanup_crit_edge61
    i32 21040305, label %if.end.1.cleanup_crit_edge62
    i32 5099584, label %if.end.1.cleanup_crit_edge63
    i32 22282320, label %if.end.1.cleanup_crit_edge64
    i32 22282384, label %if.end.1.cleanup_crit_edge65
    i32 22282400, label %if.end.1.cleanup_crit_edge66
  ]

if.end.1.cleanup_crit_edge66:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge65:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge64:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge63:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge62:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge61:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge60:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge59:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge58:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge57:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge56:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge55:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge54:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge53:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge52:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.3 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %12, label %if.end.3 [
    i32 21040176, label %if.end.2.cleanup_crit_edge
    i32 21040208, label %if.end.2.cleanup_crit_edge67
    i32 21040320, label %if.end.2.cleanup_crit_edge68
    i32 21040160, label %if.end.2.cleanup_crit_edge69
    i32 44565376, label %if.end.2.cleanup_crit_edge70
    i32 21040288, label %if.end.2.cleanup_crit_edge71
    i32 44565392, label %if.end.2.cleanup_crit_edge72
    i32 44565296, label %if.end.2.cleanup_crit_edge73
    i32 44565280, label %if.end.2.cleanup_crit_edge74
    i32 44565264, label %if.end.2.cleanup_crit_edge75
    i32 21040304, label %if.end.2.cleanup_crit_edge76
    i32 21040305, label %if.end.2.cleanup_crit_edge77
    i32 5099584, label %if.end.2.cleanup_crit_edge78
    i32 22282320, label %if.end.2.cleanup_crit_edge79
    i32 22282384, label %if.end.2.cleanup_crit_edge80
    i32 22282400, label %if.end.2.cleanup_crit_edge81
  ]

if.end.2.cleanup_crit_edge81:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge80:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge79:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge78:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge77:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge76:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge75:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge74:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge73:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge72:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge71:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge70:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge69:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge68:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge67:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.4 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %15, label %if.end.4 [
    i32 21040176, label %if.end.3.cleanup_crit_edge
    i32 21040208, label %if.end.3.cleanup_crit_edge82
    i32 21040320, label %if.end.3.cleanup_crit_edge83
    i32 21040160, label %if.end.3.cleanup_crit_edge84
    i32 44565376, label %if.end.3.cleanup_crit_edge85
    i32 21040288, label %if.end.3.cleanup_crit_edge86
    i32 44565392, label %if.end.3.cleanup_crit_edge87
    i32 44565296, label %if.end.3.cleanup_crit_edge88
    i32 44565280, label %if.end.3.cleanup_crit_edge89
    i32 44565264, label %if.end.3.cleanup_crit_edge90
    i32 21040304, label %if.end.3.cleanup_crit_edge91
    i32 21040305, label %if.end.3.cleanup_crit_edge92
    i32 5099584, label %if.end.3.cleanup_crit_edge93
    i32 22282320, label %if.end.3.cleanup_crit_edge94
    i32 22282384, label %if.end.3.cleanup_crit_edge95
    i32 22282400, label %if.end.3.cleanup_crit_edge96
  ]

if.end.3.cleanup_crit_edge96:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge95:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge94:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge93:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge92:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge91:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge90:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge89:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge88:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge87:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge86:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge85:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge84:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge83:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge82:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.5 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %18, label %if.end.5 [
    i32 21040176, label %if.end.4.cleanup_crit_edge
    i32 21040208, label %if.end.4.cleanup_crit_edge97
    i32 21040320, label %if.end.4.cleanup_crit_edge98
    i32 21040160, label %if.end.4.cleanup_crit_edge99
    i32 44565376, label %if.end.4.cleanup_crit_edge100
    i32 21040288, label %if.end.4.cleanup_crit_edge101
    i32 44565392, label %if.end.4.cleanup_crit_edge102
    i32 44565296, label %if.end.4.cleanup_crit_edge103
    i32 44565280, label %if.end.4.cleanup_crit_edge104
    i32 44565264, label %if.end.4.cleanup_crit_edge105
    i32 21040304, label %if.end.4.cleanup_crit_edge106
    i32 21040305, label %if.end.4.cleanup_crit_edge107
    i32 5099584, label %if.end.4.cleanup_crit_edge108
    i32 22282320, label %if.end.4.cleanup_crit_edge109
    i32 22282384, label %if.end.4.cleanup_crit_edge110
    i32 22282400, label %if.end.4.cleanup_crit_edge111
  ]

if.end.4.cleanup_crit_edge111:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge110:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge109:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge108:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge107:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge106:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge105:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge104:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge103:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge102:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge101:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge100:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge99:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge98:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge97:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.6 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %21, label %if.end.6 [
    i32 21040176, label %if.end.5.cleanup_crit_edge
    i32 21040208, label %if.end.5.cleanup_crit_edge112
    i32 21040320, label %if.end.5.cleanup_crit_edge113
    i32 21040160, label %if.end.5.cleanup_crit_edge114
    i32 44565376, label %if.end.5.cleanup_crit_edge115
    i32 21040288, label %if.end.5.cleanup_crit_edge116
    i32 44565392, label %if.end.5.cleanup_crit_edge117
    i32 44565296, label %if.end.5.cleanup_crit_edge118
    i32 44565280, label %if.end.5.cleanup_crit_edge119
    i32 44565264, label %if.end.5.cleanup_crit_edge120
    i32 21040304, label %if.end.5.cleanup_crit_edge121
    i32 21040305, label %if.end.5.cleanup_crit_edge122
    i32 5099584, label %if.end.5.cleanup_crit_edge123
    i32 22282320, label %if.end.5.cleanup_crit_edge124
    i32 22282384, label %if.end.5.cleanup_crit_edge125
    i32 22282400, label %if.end.5.cleanup_crit_edge126
  ]

if.end.5.cleanup_crit_edge126:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge125:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge124:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge123:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge122:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge121:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge120:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge119:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge118:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge117:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge116:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge115:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge114:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge113:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge112:                    ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.7 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %24, label %if.end.7 [
    i32 21040176, label %if.end.6.cleanup_crit_edge
    i32 21040208, label %if.end.6.cleanup_crit_edge127
    i32 21040320, label %if.end.6.cleanup_crit_edge128
    i32 21040160, label %if.end.6.cleanup_crit_edge129
    i32 44565376, label %if.end.6.cleanup_crit_edge130
    i32 21040288, label %if.end.6.cleanup_crit_edge131
    i32 44565392, label %if.end.6.cleanup_crit_edge132
    i32 44565296, label %if.end.6.cleanup_crit_edge133
    i32 44565280, label %if.end.6.cleanup_crit_edge134
    i32 44565264, label %if.end.6.cleanup_crit_edge135
    i32 21040304, label %if.end.6.cleanup_crit_edge136
    i32 21040305, label %if.end.6.cleanup_crit_edge137
    i32 5099584, label %if.end.6.cleanup_crit_edge138
    i32 22282320, label %if.end.6.cleanup_crit_edge139
    i32 22282384, label %if.end.6.cleanup_crit_edge140
    i32 22282400, label %if.end.6.cleanup_crit_edge141
  ]

if.end.6.cleanup_crit_edge141:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge140:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge139:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge138:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge137:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge136:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge135:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge134:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge133:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge132:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge131:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge130:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge129:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge128:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge127:                    ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.8 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %27, label %if.end.8 [
    i32 21040176, label %if.end.7.cleanup_crit_edge
    i32 21040208, label %if.end.7.cleanup_crit_edge142
    i32 21040320, label %if.end.7.cleanup_crit_edge143
    i32 21040160, label %if.end.7.cleanup_crit_edge144
    i32 44565376, label %if.end.7.cleanup_crit_edge145
    i32 21040288, label %if.end.7.cleanup_crit_edge146
    i32 44565392, label %if.end.7.cleanup_crit_edge147
    i32 44565296, label %if.end.7.cleanup_crit_edge148
    i32 44565280, label %if.end.7.cleanup_crit_edge149
    i32 44565264, label %if.end.7.cleanup_crit_edge150
    i32 21040304, label %if.end.7.cleanup_crit_edge151
    i32 21040305, label %if.end.7.cleanup_crit_edge152
    i32 5099584, label %if.end.7.cleanup_crit_edge153
    i32 22282320, label %if.end.7.cleanup_crit_edge154
    i32 22282384, label %if.end.7.cleanup_crit_edge155
    i32 22282400, label %if.end.7.cleanup_crit_edge156
  ]

if.end.7.cleanup_crit_edge156:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge155:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge154:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge153:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge152:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge151:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge150:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge149:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge148:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge147:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge146:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge145:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge144:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge143:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge142:                    ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %call.9 = tail call i32 @e1000e_get_phy_id(ptr noundef %hw)
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %30, label %if.end.9 [
    i32 21040176, label %if.end.8.cleanup_crit_edge
    i32 21040208, label %if.end.8.cleanup_crit_edge157
    i32 21040320, label %if.end.8.cleanup_crit_edge158
    i32 21040160, label %if.end.8.cleanup_crit_edge159
    i32 44565376, label %if.end.8.cleanup_crit_edge160
    i32 21040288, label %if.end.8.cleanup_crit_edge161
    i32 44565392, label %if.end.8.cleanup_crit_edge162
    i32 44565296, label %if.end.8.cleanup_crit_edge163
    i32 44565280, label %if.end.8.cleanup_crit_edge164
    i32 44565264, label %if.end.8.cleanup_crit_edge165
    i32 21040304, label %if.end.8.cleanup_crit_edge166
    i32 21040305, label %if.end.8.cleanup_crit_edge167
    i32 5099584, label %if.end.8.cleanup_crit_edge168
    i32 22282320, label %if.end.8.cleanup_crit_edge169
    i32 22282384, label %if.end.8.cleanup_crit_edge170
    i32 22282400, label %if.end.8.cleanup_crit_edge171
  ]

if.end.8.cleanup_crit_edge171:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge170:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge169:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge168:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge167:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge166:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge165:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge164:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge163:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge162:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge161:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge160:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge159:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge158:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge157:                    ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %inc7 = add nuw nsw i32 %phy_addr.020, 1
  %exitcond.not = icmp eq i32 %inc7, 8
  br i1 %exitcond.not, label %if.end.9.cleanup_crit_edge, label %if.end.9.for.body_crit_edge

if.end.9.for.body_crit_edge:                      ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.9.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %if.end.8.cleanup_crit_edge157, %if.end.8.cleanup_crit_edge158, %if.end.8.cleanup_crit_edge159, %if.end.8.cleanup_crit_edge160, %if.end.8.cleanup_crit_edge161, %if.end.8.cleanup_crit_edge162, %if.end.8.cleanup_crit_edge163, %if.end.8.cleanup_crit_edge164, %if.end.8.cleanup_crit_edge165, %if.end.8.cleanup_crit_edge166, %if.end.8.cleanup_crit_edge167, %if.end.8.cleanup_crit_edge168, %if.end.8.cleanup_crit_edge169, %if.end.8.cleanup_crit_edge170, %if.end.8.cleanup_crit_edge171, %if.end.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge142, %if.end.7.cleanup_crit_edge143, %if.end.7.cleanup_crit_edge144, %if.end.7.cleanup_crit_edge145, %if.end.7.cleanup_crit_edge146, %if.end.7.cleanup_crit_edge147, %if.end.7.cleanup_crit_edge148, %if.end.7.cleanup_crit_edge149, %if.end.7.cleanup_crit_edge150, %if.end.7.cleanup_crit_edge151, %if.end.7.cleanup_crit_edge152, %if.end.7.cleanup_crit_edge153, %if.end.7.cleanup_crit_edge154, %if.end.7.cleanup_crit_edge155, %if.end.7.cleanup_crit_edge156, %if.end.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge127, %if.end.6.cleanup_crit_edge128, %if.end.6.cleanup_crit_edge129, %if.end.6.cleanup_crit_edge130, %if.end.6.cleanup_crit_edge131, %if.end.6.cleanup_crit_edge132, %if.end.6.cleanup_crit_edge133, %if.end.6.cleanup_crit_edge134, %if.end.6.cleanup_crit_edge135, %if.end.6.cleanup_crit_edge136, %if.end.6.cleanup_crit_edge137, %if.end.6.cleanup_crit_edge138, %if.end.6.cleanup_crit_edge139, %if.end.6.cleanup_crit_edge140, %if.end.6.cleanup_crit_edge141, %if.end.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge112, %if.end.5.cleanup_crit_edge113, %if.end.5.cleanup_crit_edge114, %if.end.5.cleanup_crit_edge115, %if.end.5.cleanup_crit_edge116, %if.end.5.cleanup_crit_edge117, %if.end.5.cleanup_crit_edge118, %if.end.5.cleanup_crit_edge119, %if.end.5.cleanup_crit_edge120, %if.end.5.cleanup_crit_edge121, %if.end.5.cleanup_crit_edge122, %if.end.5.cleanup_crit_edge123, %if.end.5.cleanup_crit_edge124, %if.end.5.cleanup_crit_edge125, %if.end.5.cleanup_crit_edge126, %if.end.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge97, %if.end.4.cleanup_crit_edge98, %if.end.4.cleanup_crit_edge99, %if.end.4.cleanup_crit_edge100, %if.end.4.cleanup_crit_edge101, %if.end.4.cleanup_crit_edge102, %if.end.4.cleanup_crit_edge103, %if.end.4.cleanup_crit_edge104, %if.end.4.cleanup_crit_edge105, %if.end.4.cleanup_crit_edge106, %if.end.4.cleanup_crit_edge107, %if.end.4.cleanup_crit_edge108, %if.end.4.cleanup_crit_edge109, %if.end.4.cleanup_crit_edge110, %if.end.4.cleanup_crit_edge111, %if.end.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge82, %if.end.3.cleanup_crit_edge83, %if.end.3.cleanup_crit_edge84, %if.end.3.cleanup_crit_edge85, %if.end.3.cleanup_crit_edge86, %if.end.3.cleanup_crit_edge87, %if.end.3.cleanup_crit_edge88, %if.end.3.cleanup_crit_edge89, %if.end.3.cleanup_crit_edge90, %if.end.3.cleanup_crit_edge91, %if.end.3.cleanup_crit_edge92, %if.end.3.cleanup_crit_edge93, %if.end.3.cleanup_crit_edge94, %if.end.3.cleanup_crit_edge95, %if.end.3.cleanup_crit_edge96, %if.end.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge67, %if.end.2.cleanup_crit_edge68, %if.end.2.cleanup_crit_edge69, %if.end.2.cleanup_crit_edge70, %if.end.2.cleanup_crit_edge71, %if.end.2.cleanup_crit_edge72, %if.end.2.cleanup_crit_edge73, %if.end.2.cleanup_crit_edge74, %if.end.2.cleanup_crit_edge75, %if.end.2.cleanup_crit_edge76, %if.end.2.cleanup_crit_edge77, %if.end.2.cleanup_crit_edge78, %if.end.2.cleanup_crit_edge79, %if.end.2.cleanup_crit_edge80, %if.end.2.cleanup_crit_edge81, %if.end.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge52, %if.end.1.cleanup_crit_edge53, %if.end.1.cleanup_crit_edge54, %if.end.1.cleanup_crit_edge55, %if.end.1.cleanup_crit_edge56, %if.end.1.cleanup_crit_edge57, %if.end.1.cleanup_crit_edge58, %if.end.1.cleanup_crit_edge59, %if.end.1.cleanup_crit_edge60, %if.end.1.cleanup_crit_edge61, %if.end.1.cleanup_crit_edge62, %if.end.1.cleanup_crit_edge63, %if.end.1.cleanup_crit_edge64, %if.end.1.cleanup_crit_edge65, %if.end.1.cleanup_crit_edge66, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge37, %if.end.cleanup_crit_edge38, %if.end.cleanup_crit_edge39, %if.end.cleanup_crit_edge40, %if.end.cleanup_crit_edge41, %if.end.cleanup_crit_edge42, %if.end.cleanup_crit_edge43, %if.end.cleanup_crit_edge44, %if.end.cleanup_crit_edge45, %if.end.cleanup_crit_edge46, %if.end.cleanup_crit_edge47, %if.end.cleanup_crit_edge48, %if.end.cleanup_crit_edge49, %if.end.cleanup_crit_edge50, %if.end.cleanup_crit_edge51, %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge22, %for.body.cleanup_crit_edge23, %for.body.cleanup_crit_edge24, %for.body.cleanup_crit_edge25, %for.body.cleanup_crit_edge26, %for.body.cleanup_crit_edge27, %for.body.cleanup_crit_edge28, %for.body.cleanup_crit_edge29, %for.body.cleanup_crit_edge30, %for.body.cleanup_crit_edge31, %for.body.cleanup_crit_edge32, %for.body.cleanup_crit_edge33, %for.body.cleanup_crit_edge34, %for.body.cleanup_crit_edge35, %for.body.cleanup_crit_edge36
  %retval.0 = phi i32 [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge157 ], [ 0, %if.end.8.cleanup_crit_edge158 ], [ 0, %if.end.8.cleanup_crit_edge159 ], [ 0, %if.end.8.cleanup_crit_edge160 ], [ 0, %if.end.8.cleanup_crit_edge161 ], [ 0, %if.end.8.cleanup_crit_edge162 ], [ 0, %if.end.8.cleanup_crit_edge163 ], [ 0, %if.end.8.cleanup_crit_edge164 ], [ 0, %if.end.8.cleanup_crit_edge165 ], [ 0, %if.end.8.cleanup_crit_edge166 ], [ 0, %if.end.8.cleanup_crit_edge167 ], [ 0, %if.end.8.cleanup_crit_edge168 ], [ 0, %if.end.8.cleanup_crit_edge169 ], [ 0, %if.end.8.cleanup_crit_edge170 ], [ 0, %if.end.8.cleanup_crit_edge171 ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge142 ], [ 0, %if.end.7.cleanup_crit_edge143 ], [ 0, %if.end.7.cleanup_crit_edge144 ], [ 0, %if.end.7.cleanup_crit_edge145 ], [ 0, %if.end.7.cleanup_crit_edge146 ], [ 0, %if.end.7.cleanup_crit_edge147 ], [ 0, %if.end.7.cleanup_crit_edge148 ], [ 0, %if.end.7.cleanup_crit_edge149 ], [ 0, %if.end.7.cleanup_crit_edge150 ], [ 0, %if.end.7.cleanup_crit_edge151 ], [ 0, %if.end.7.cleanup_crit_edge152 ], [ 0, %if.end.7.cleanup_crit_edge153 ], [ 0, %if.end.7.cleanup_crit_edge154 ], [ 0, %if.end.7.cleanup_crit_edge155 ], [ 0, %if.end.7.cleanup_crit_edge156 ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge127 ], [ 0, %if.end.6.cleanup_crit_edge128 ], [ 0, %if.end.6.cleanup_crit_edge129 ], [ 0, %if.end.6.cleanup_crit_edge130 ], [ 0, %if.end.6.cleanup_crit_edge131 ], [ 0, %if.end.6.cleanup_crit_edge132 ], [ 0, %if.end.6.cleanup_crit_edge133 ], [ 0, %if.end.6.cleanup_crit_edge134 ], [ 0, %if.end.6.cleanup_crit_edge135 ], [ 0, %if.end.6.cleanup_crit_edge136 ], [ 0, %if.end.6.cleanup_crit_edge137 ], [ 0, %if.end.6.cleanup_crit_edge138 ], [ 0, %if.end.6.cleanup_crit_edge139 ], [ 0, %if.end.6.cleanup_crit_edge140 ], [ 0, %if.end.6.cleanup_crit_edge141 ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge112 ], [ 0, %if.end.5.cleanup_crit_edge113 ], [ 0, %if.end.5.cleanup_crit_edge114 ], [ 0, %if.end.5.cleanup_crit_edge115 ], [ 0, %if.end.5.cleanup_crit_edge116 ], [ 0, %if.end.5.cleanup_crit_edge117 ], [ 0, %if.end.5.cleanup_crit_edge118 ], [ 0, %if.end.5.cleanup_crit_edge119 ], [ 0, %if.end.5.cleanup_crit_edge120 ], [ 0, %if.end.5.cleanup_crit_edge121 ], [ 0, %if.end.5.cleanup_crit_edge122 ], [ 0, %if.end.5.cleanup_crit_edge123 ], [ 0, %if.end.5.cleanup_crit_edge124 ], [ 0, %if.end.5.cleanup_crit_edge125 ], [ 0, %if.end.5.cleanup_crit_edge126 ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge97 ], [ 0, %if.end.4.cleanup_crit_edge98 ], [ 0, %if.end.4.cleanup_crit_edge99 ], [ 0, %if.end.4.cleanup_crit_edge100 ], [ 0, %if.end.4.cleanup_crit_edge101 ], [ 0, %if.end.4.cleanup_crit_edge102 ], [ 0, %if.end.4.cleanup_crit_edge103 ], [ 0, %if.end.4.cleanup_crit_edge104 ], [ 0, %if.end.4.cleanup_crit_edge105 ], [ 0, %if.end.4.cleanup_crit_edge106 ], [ 0, %if.end.4.cleanup_crit_edge107 ], [ 0, %if.end.4.cleanup_crit_edge108 ], [ 0, %if.end.4.cleanup_crit_edge109 ], [ 0, %if.end.4.cleanup_crit_edge110 ], [ 0, %if.end.4.cleanup_crit_edge111 ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge82 ], [ 0, %if.end.3.cleanup_crit_edge83 ], [ 0, %if.end.3.cleanup_crit_edge84 ], [ 0, %if.end.3.cleanup_crit_edge85 ], [ 0, %if.end.3.cleanup_crit_edge86 ], [ 0, %if.end.3.cleanup_crit_edge87 ], [ 0, %if.end.3.cleanup_crit_edge88 ], [ 0, %if.end.3.cleanup_crit_edge89 ], [ 0, %if.end.3.cleanup_crit_edge90 ], [ 0, %if.end.3.cleanup_crit_edge91 ], [ 0, %if.end.3.cleanup_crit_edge92 ], [ 0, %if.end.3.cleanup_crit_edge93 ], [ 0, %if.end.3.cleanup_crit_edge94 ], [ 0, %if.end.3.cleanup_crit_edge95 ], [ 0, %if.end.3.cleanup_crit_edge96 ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge67 ], [ 0, %if.end.2.cleanup_crit_edge68 ], [ 0, %if.end.2.cleanup_crit_edge69 ], [ 0, %if.end.2.cleanup_crit_edge70 ], [ 0, %if.end.2.cleanup_crit_edge71 ], [ 0, %if.end.2.cleanup_crit_edge72 ], [ 0, %if.end.2.cleanup_crit_edge73 ], [ 0, %if.end.2.cleanup_crit_edge74 ], [ 0, %if.end.2.cleanup_crit_edge75 ], [ 0, %if.end.2.cleanup_crit_edge76 ], [ 0, %if.end.2.cleanup_crit_edge77 ], [ 0, %if.end.2.cleanup_crit_edge78 ], [ 0, %if.end.2.cleanup_crit_edge79 ], [ 0, %if.end.2.cleanup_crit_edge80 ], [ 0, %if.end.2.cleanup_crit_edge81 ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge52 ], [ 0, %if.end.1.cleanup_crit_edge53 ], [ 0, %if.end.1.cleanup_crit_edge54 ], [ 0, %if.end.1.cleanup_crit_edge55 ], [ 0, %if.end.1.cleanup_crit_edge56 ], [ 0, %if.end.1.cleanup_crit_edge57 ], [ 0, %if.end.1.cleanup_crit_edge58 ], [ 0, %if.end.1.cleanup_crit_edge59 ], [ 0, %if.end.1.cleanup_crit_edge60 ], [ 0, %if.end.1.cleanup_crit_edge61 ], [ 0, %if.end.1.cleanup_crit_edge62 ], [ 0, %if.end.1.cleanup_crit_edge63 ], [ 0, %if.end.1.cleanup_crit_edge64 ], [ 0, %if.end.1.cleanup_crit_edge65 ], [ 0, %if.end.1.cleanup_crit_edge66 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge37 ], [ 0, %if.end.cleanup_crit_edge38 ], [ 0, %if.end.cleanup_crit_edge39 ], [ 0, %if.end.cleanup_crit_edge40 ], [ 0, %if.end.cleanup_crit_edge41 ], [ 0, %if.end.cleanup_crit_edge42 ], [ 0, %if.end.cleanup_crit_edge43 ], [ 0, %if.end.cleanup_crit_edge44 ], [ 0, %if.end.cleanup_crit_edge45 ], [ 0, %if.end.cleanup_crit_edge46 ], [ 0, %if.end.cleanup_crit_edge47 ], [ 0, %if.end.cleanup_crit_edge48 ], [ 0, %if.end.cleanup_crit_edge49 ], [ 0, %if.end.cleanup_crit_edge50 ], [ 0, %if.end.cleanup_crit_edge51 ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge22 ], [ 0, %for.body.cleanup_crit_edge23 ], [ 0, %for.body.cleanup_crit_edge24 ], [ 0, %for.body.cleanup_crit_edge25 ], [ 0, %for.body.cleanup_crit_edge26 ], [ 0, %for.body.cleanup_crit_edge27 ], [ 0, %for.body.cleanup_crit_edge28 ], [ 0, %for.body.cleanup_crit_edge29 ], [ 0, %for.body.cleanup_crit_edge30 ], [ 0, %for.body.cleanup_crit_edge31 ], [ 0, %for.body.cleanup_crit_edge32 ], [ 0, %for.body.cleanup_crit_edge33 ], [ 0, %for.body.cleanup_crit_edge34 ], [ 0, %for.body.cleanup_crit_edge35 ], [ 0, %for.body.cleanup_crit_edge36 ], [ -6, %if.end.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_bm(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %data.addr, align 2
  %shr = lshr i32 %offset, 5
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %call = tail call i32 %2(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %shr)
  %cmp = icmp eq i32 %shr, 800
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef nonnull %data.addr, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %release

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24575, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 24575
  br i1 %cmp.i, label %if.end3.if.then.i_crit_edge, label %lor.lhs.false.i

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end3
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %offset, label %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge [
    i32 31, label %lor.lhs.false.i.if.then.i_crit_edge
    i32 25, label %lor.lhs.false.i.if.then.i_crit_edge43
  ]

lor.lhs.false.i.if.then.i_crit_edge43:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_get_phy_addr_for_bm_page.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge43, %if.end3.if.then.i_crit_edge
  br label %e1000_get_phy_addr_for_bm_page.exit

e1000_get_phy_addr_for_bm_page.exit:              ; preds = %if.then.i, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge
  %cmp10 = phi i1 [ false, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge ], [ true, %if.then.i ]
  %phy_addr.0.i = phi i32 [ 2, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge ], [ 1, %if.then.i ]
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr.0.i, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp6 = icmp ugt i32 %offset, 15
  br i1 %cmp6, label %if.then7, label %e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge

e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge: ; preds = %e1000_get_phy_addr_for_bm_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %e1000_get_phy_addr_for_bm_page.exit
  %. = select i1 %cmp10, i32 5, i32 0
  %.42 = select i1 %cmp10, i32 31, i32 22
  %shl = shl nuw i32 %shr, %.
  %conv = trunc i32 %shl to i16
  %call13 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %.42, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then7.if.end18_crit_edge, label %if.then7.release_crit_edge

if.then7.release_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then7.if.end18_crit_edge, %e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge
  %and = and i32 %offset, 31
  %call19 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data)
  br label %release

release:                                          ; preds = %if.end18, %if.then7.release_crit_edge, %if.then1
  %ret_val.0 = phi i32 [ %call2, %if.then1 ], [ %call13, %if.then7.release_crit_edge ], [ %call19, %if.end18 ]
  %release22 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %5 = ptrtoint ptr %release22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release22, align 4
  tail call void %6(ptr noundef %hw) #5
  br label %cleanup23

cleanup23:                                        ; preds = %release, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ %call, %entry.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data, i1 noundef zeroext %read, i1 noundef zeroext %page_set) unnamed_addr #0 align 64 {
entry:
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 31
  %shr = lshr i32 %offset, 16
  %and2 = and i32 %shr, 65504
  %or = or i32 %and2, %and
  %conv = trunc i32 %or to i16
  %shr3 = lshr i32 %offset, 5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #5
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_reg, align 2
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp = icmp eq i32 %2, 9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3856
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %6 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body8, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.body8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_wakeup_reg_bm, %if.then14)) #5
          to label %if.end18 [label %if.then14], !srcloc !229

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 64
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %conv15 = and i32 %shr3, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug406, ptr noundef %10, ptr noundef nonnull @.str.69, i32 noundef %conv15) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.body8, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  br i1 %page_set, label %if.end18.do.body48_crit_edge, label %if.then20

if.end18.do.body48_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr noundef nonnull %phy_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.do.body48_crit_edge, label %do.body25

if.then20.do.body48_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

do.body25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_wakeup_reg_bm, %if.then37)) #5
          to label %cleanup [label %if.then37], !srcloc !229

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev39 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug407, ptr noundef %14, ptr noundef nonnull @.str.70) #5
  br label %cleanup

do.body48:                                        ; preds = %if.then20.do.body48_crit_edge, %if.end18.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_wakeup_reg_bm, %if.then60)) #5
          to label %do.end69 [label %if.then60], !srcloc !229

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev62 = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev62, align 4
  %conv63 = and i32 %shr3, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug408, ptr noundef %18, ptr noundef nonnull @.str.71, i32 noundef %conv63, i32 noundef %or) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then60, %do.body48
  %call70 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end95, label %do.body74

do.body74:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_wakeup_reg_bm, %if.then86)) #5
          to label %cleanup [label %if.then86], !srcloc !229

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %netdev88 = getelementptr inbounds %struct.e1000_adapter, ptr %20, i32 0, i32 64
  %21 = ptrtoint ptr %netdev88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev88, align 4
  %conv89 = and i32 %shr3, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug409, ptr noundef %22, ptr noundef nonnull @.str.72, i32 noundef %conv89) #5
  br label %cleanup

if.end95:                                         ; preds = %do.end69
  br i1 %read, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef 18, ptr noundef %data)
  br label %if.end100

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 2
  %call99 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %24)
  br label %if.end100

if.end100:                                        ; preds = %if.else, %if.then97
  %ret_val.0 = phi i32 [ %call98, %if.then97 ], [ %call99, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool101.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool101.not, label %if.end126, label %do.body104

do.body104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_wakeup_reg_bm, %if.then116)) #5
          to label %cleanup [label %if.then116], !srcloc !229

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %netdev118 = getelementptr inbounds %struct.e1000_adapter, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %netdev118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev118, align 4
  %conv119 = and i32 %shr3, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug410, ptr noundef %28, ptr noundef nonnull @.str.73, i32 noundef %conv119, i32 noundef %or) #5
  br label %cleanup

if.end126:                                        ; preds = %if.end100
  br i1 %page_set, label %if.end126.cleanup_crit_edge, label %if.then128

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %call129 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr noundef nonnull %phy_reg)
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.end126.cleanup_crit_edge, %if.then116, %do.body104, %if.then86, %do.body74, %if.then37, %do.body25
  %retval.0 = phi i32 [ %call21, %if.then37 ], [ %call70, %if.then86 ], [ %ret_val.0, %if.then116 ], [ 0, %if.end126.cleanup_crit_edge ], [ %call129, %if.then128 ], [ %call21, %do.body25 ], [ %call70, %do.body74 ], [ %ret_val.0, %do.body104 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 5
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %shr)
  %cmp = icmp eq i32 %shr, 800
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %release

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24575, i32 %offset)
  %cmp.i = icmp ugt i32 %offset, 24575
  br i1 %cmp.i, label %if.end3.if.then.i_crit_edge, label %lor.lhs.false.i

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end3
  %2 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %offset, label %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge [
    i32 31, label %lor.lhs.false.i.if.then.i_crit_edge
    i32 25, label %lor.lhs.false.i.if.then.i_crit_edge44
  ]

lor.lhs.false.i.if.then.i_crit_edge44:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000_get_phy_addr_for_bm_page.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge44, %if.end3.if.then.i_crit_edge
  br label %e1000_get_phy_addr_for_bm_page.exit

e1000_get_phy_addr_for_bm_page.exit:              ; preds = %if.then.i, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge
  %cmp10 = phi i1 [ false, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge ], [ true, %if.then.i ]
  %phy_addr.0.i = phi i32 [ 2, %lor.lhs.false.i.e1000_get_phy_addr_for_bm_page.exit_crit_edge ], [ 1, %if.then.i ]
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phy_addr.0.i, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp6 = icmp ugt i32 %offset, 15
  br i1 %cmp6, label %if.then7, label %e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge

e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge: ; preds = %e1000_get_phy_addr_for_bm_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %e1000_get_phy_addr_for_bm_page.exit
  %. = select i1 %cmp10, i32 5, i32 0
  %.43 = select i1 %cmp10, i32 31, i32 22
  %shl = shl nuw i32 %shr, %.
  %conv = trunc i32 %shl to i16
  %call13 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %.43, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then7.if.end18_crit_edge, label %if.then7.release_crit_edge

if.then7.release_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then7.if.end18_crit_edge, %e1000_get_phy_addr_for_bm_page.exit.if.end18_crit_edge
  %and = and i32 %offset, 31
  %call19 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data)
  br label %release

release:                                          ; preds = %if.end18, %if.then7.release_crit_edge, %if.then1
  %ret_val.0 = phi i32 [ %call2, %if.then1 ], [ %call13, %if.then7.release_crit_edge ], [ %call19, %if.end18 ]
  %release22 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %4 = ptrtoint ptr %release22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release22, align 4
  tail call void %5(ptr noundef %hw) #5
  br label %cleanup23

cleanup23:                                        ; preds = %release, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ %call, %entry.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_phy_reg_bm2(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 5
  %conv = trunc i32 %shr to i16
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %offset, 2097120
  call void @__sanitizer_cov_trace_const_cmp4(i32 25600, i32 %2)
  %cmp = icmp eq i32 %2, 25600
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %release

if.end5:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7 = icmp ugt i32 %offset, 15
  br i1 %cmp7, label %if.then9, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  %call10 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.release_crit_edge

if.then9.release_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %and = and i32 %offset, 31
  %call15 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data)
  br label %release

release:                                          ; preds = %if.end14, %if.then9.release_crit_edge, %if.then3
  %ret_val.0 = phi i32 [ %call4, %if.then3 ], [ %call10, %if.then9.release_crit_edge ], [ %call15, %if.end14 ]
  %release18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %4 = ptrtoint ptr %release18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release18, align 4
  tail call void %5(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_phy_reg_bm2(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %data.addr, align 2
  %shr = lshr i32 %offset, 5
  %conv = trunc i32 %shr to i16
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %call = tail call i32 %2(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %offset, 2097120
  call void @__sanitizer_cov_trace_const_cmp4(i32 25600, i32 %3)
  %cmp = icmp eq i32 %3, 25600
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef nonnull %data.addr, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %release

if.end5:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp7 = icmp ugt i32 %offset, 15
  br i1 %cmp7, label %if.then9, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  %call10 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.release_crit_edge

if.then9.release_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %and = and i32 %offset, 31
  %call15 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data)
  br label %release

release:                                          ; preds = %if.end14, %if.then9.release_crit_edge, %if.then3
  %ret_val.0 = phi i32 [ %call4, %if.then3 ], [ %call10, %if.then9.release_crit_edge ], [ %call15, %if.end14 ]
  %release18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %5 = ptrtoint ptr %release18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release18, align 4
  tail call void %6(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %release ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr nocapture noundef %phy_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_phy_wakeup_reg_access_bm, %if.then.i)) #5
          to label %e1000_set_page_igp.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %3 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 24608) #5
  br label %e1000_set_page_igp.exit

e1000_set_page_igp.exit:                          ; preds = %if.then.i, %entry
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %addr, align 4
  %call5.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext 24608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_phy_wakeup_reg_access_bm, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !229

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug401, ptr noundef %9, ptr noundef nonnull @.str.45) #5
  br label %cleanup

if.end9:                                          ; preds = %e1000_set_page_igp.exit
  %call10 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef 17, ptr noundef %phy_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end34, label %do.body14

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_phy_wakeup_reg_access_bm, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !229

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev28 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug402, ptr noundef %13, ptr noundef nonnull @.str.46, i32 noundef 769, i32 noundef 17) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_reg, align 2
  %16 = and i16 %15, -53
  %17 = or i16 %16, 4
  %call38 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end62, label %do.body42

do.body42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_phy_wakeup_reg_access_bm, %if.then54)) #5
          to label %cleanup [label %if.then54], !srcloc !229

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %netdev56 = getelementptr inbounds %struct.e1000_adapter, ptr %19, i32 0, i32 64
  %20 = ptrtoint ptr %netdev56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug403, ptr noundef %21, ptr noundef nonnull @.str.47, i32 noundef 769, i32 noundef 17) #5
  br label %cleanup

if.end62:                                         ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_enable_phy_wakeup_reg_access_bm, %if.then.i87)) #5
          to label %e1000_set_page_igp.exit90 [label %if.then.i87], !srcloc !229

if.then.i87:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %netdev.i86 = getelementptr inbounds %struct.e1000_adapter, ptr %23, i32 0, i32 64
  %24 = ptrtoint ptr %netdev.i86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef 25600) #5
  br label %e1000_set_page_igp.exit90

e1000_set_page_igp.exit90:                        ; preds = %if.then.i87, %if.end62
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %addr, align 4
  %call5.i89 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext 25600) #5
  br label %cleanup

cleanup:                                          ; preds = %e1000_set_page_igp.exit90, %if.then54, %do.body42, %if.then26, %do.body14, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call5.i89, %e1000_set_page_igp.exit90 ], [ %call5.i, %if.then6 ], [ %call10, %if.then26 ], [ %call38, %if.then54 ], [ %call5.i, %do.body1 ], [ %call10, %do.body14 ], [ %call38, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %hw, ptr nocapture noundef readonly %phy_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_disable_phy_wakeup_reg_access_bm, %if.then.i)) #5
          to label %e1000_set_page_igp.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 24608) #5
  br label %e1000_set_page_igp.exit

e1000_set_page_igp.exit:                          ; preds = %if.then.i, %entry
  %addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %addr.i, align 4
  %call5.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext 24608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_disable_phy_wakeup_reg_access_bm, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !229

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug404, ptr noundef %8, ptr noundef nonnull @.str.45) #5
  br label %cleanup

if.end9:                                          ; preds = %e1000_set_page_igp.exit
  %9 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %phy_reg, align 2
  %call10 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_disable_phy_wakeup_reg_access_bm, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !229

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev28 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug405, ptr noundef %14, ptr noundef nonnull @.str.49, i32 noundef 769, i32 noundef 17) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %if.end9.cleanup_crit_edge, %if.then6, %do.body1
  %retval.0 = phi i32 [ %call5.i, %if.then6 ], [ %call10, %if.then26 ], [ 0, %if.end9.cleanup_crit_edge ], [ %call5.i, %do.body1 ], [ %call10, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_power_up_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #5
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #5
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = and i16 %4, -2049
  store i16 %5, ptr %mii_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i4 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_power_down_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #5
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #5
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = or i16 %4, 2048
  store i16 %5, ptr %mii_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call.i4 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data, i1 noundef zeroext %locked, i1 noundef zeroext %page_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 5
  %conv = trunc i32 %shr to i16
  %and2 = and i32 %offset, 31
  %shr3 = lshr i32 %offset, 16
  %and4 = and i32 %shr3, 65504
  %or = or i32 %and4, %and2
  %conv6 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %conv6)
  %cmp.i = icmp ugt i32 %conv6, 767
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 2
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.store.select.i, ptr %addr, align 4
  br i1 %locked, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %call8 = tail call i32 %2(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %3 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %conv, label %land.lhs.true [
    i16 800, label %if.then14
    i16 0, label %if.end11.if.end26_crit_edge
  ]

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext %page_set)
  br label %out

land.lhs.true:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %conv6)
  %cmp22 = icmp ult i32 %conv6, 768
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true)
  br label %out

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  br i1 %page_set, label %if.end26.do.body48_crit_edge, label %if.then28

if.end26.do.body48_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %conv6)
  %cmp30 = icmp eq i32 %conv6, 768
  %spec.store.select = select i1 %cmp30, i16 0, i16 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %or)
  %cmp35 = icmp ugt i32 %or, 15
  br i1 %cmp35, label %if.then37, label %if.then28.do.body48_crit_edge

if.then28.do.body48_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

if.then37:                                        ; preds = %if.then28
  %shl = shl i16 %spec.store.select, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__e1000_read_phy_reg_hv, %if.then.i)) #5
          to label %e1000_set_page_igp.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  %conv.i = zext i16 %shl to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #5
  br label %e1000_set_page_igp.exit

e1000_set_page_igp.exit:                          ; preds = %if.then.i, %if.then37
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %addr, align 4
  %call5.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %shl) #5
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select.i, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool43.not = icmp eq i32 %call5.i, 0
  br i1 %tobool43.not, label %e1000_set_page_igp.exit.do.body48_crit_edge, label %e1000_set_page_igp.exit.out_crit_edge

e1000_set_page_igp.exit.out_crit_edge:            ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

e1000_set_page_igp.exit.do.body48_crit_edge:      ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

do.body48:                                        ; preds = %e1000_set_page_igp.exit.do.body48_crit_edge, %if.then28.do.body48_crit_edge, %if.end26.do.body48_crit_edge
  %page.0 = phi i16 [ %conv, %if.end26.do.body48_crit_edge ], [ %spec.store.select, %e1000_set_page_igp.exit.do.body48_crit_edge ], [ %spec.store.select, %if.then28.do.body48_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__e1000_read_phy_reg_hv.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__e1000_read_phy_reg_hv, %if.then54)) #5
          to label %do.end61 [label %if.then54], !srcloc !229

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  %conv55 = zext i16 %page.0 to i32
  %shl57 = shl nuw nsw i32 %conv55, 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__e1000_read_phy_reg_hv.__UNIQUE_ID_ddebug411, ptr noundef %13, ptr noundef nonnull @.str.75, i32 noundef %conv55, i32 noundef %shl57, i32 noundef %or) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %do.body48
  %call64 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and2, ptr noundef %data)
  br label %out

out:                                              ; preds = %do.end61, %e1000_set_page_igp.exit.out_crit_edge, %if.then24, %if.then14
  %ret_val.0 = phi i32 [ %call16, %if.then14 ], [ %call25, %if.then24 ], [ %call64, %do.end61 ], [ %call5.i, %e1000_set_page_igp.exit.out_crit_edge ]
  br i1 %locked, label %out.cleanup_crit_edge, label %if.then66

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then66:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %14 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %release, align 4
  tail call void %15(ptr noundef %hw) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then.cleanup_crit_edge ], [ %ret_val.0, %if.then66 ], [ %ret_val.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_hv_locked(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_phy_reg_page_hv(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_read_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, ptr noundef %data, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data, i1 noundef zeroext %locked, i1 noundef zeroext %page_set) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i16, align 2
  %data2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %data.addr, align 2
  %shr = lshr i32 %offset, 5
  %conv = trunc i32 %shr to i16
  %and2 = and i32 %offset, 31
  %shr3 = lshr i32 %offset, 16
  %and4 = and i32 %shr3, 65504
  %or = or i32 %and4, %and2
  %conv6 = and i32 %shr, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %conv6)
  %cmp.i = icmp ugt i32 %conv6, 767
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 2
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.store.select.i, ptr %addr, align 4
  br i1 %locked, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call8 = tail call i32 %3(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup96_crit_edge

if.then.cleanup96_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup96

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %4 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %conv, label %land.lhs.true [
    i16 800, label %if.then14
    i16 0, label %if.end11.if.end26_crit_edge
  ]

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call fastcc i32 @e1000_access_phy_wakeup_reg_bm(ptr noundef %hw, i32 noundef %offset, ptr noundef nonnull %data.addr, i1 noundef zeroext false, i1 noundef zeroext %page_set)
  br label %out

land.lhs.true:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %conv6)
  %cmp22 = icmp ult i32 %conv6, 768
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %hw, i32 noundef %offset, ptr noundef nonnull %data.addr, i1 noundef zeroext false)
  br label %out

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  br i1 %page_set, label %if.end26.do.body74_crit_edge, label %if.then28

if.end26.do.body74_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %conv6)
  %cmp30 = icmp eq i32 %conv6, 768
  %spec.store.select = select i1 %cmp30, i16 0, i16 %conv
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp35 = icmp eq i32 %6, 9
  br i1 %cmp35, label %land.lhs.true37, label %if.then28.if.end59_crit_edge

if.then28.if.end59_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true37:                                  ; preds = %if.then28
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 11
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39.not = icmp eq i32 %8, 0
  br i1 %cmp39.not, label %land.lhs.true37.if.end59_crit_edge, label %land.lhs.true41

land.lhs.true37.if.end59_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp44 = icmp ne i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool49.not = icmp ne i32 %and2, 0
  %or.cond.not = or i1 %tobool49.not, %cmp44
  %11 = and i16 %data, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool53.not = icmp eq i16 %11, 0
  %or.cond135 = or i1 %tobool53.not, %or.cond.not
  br i1 %or.cond135, label %land.lhs.true41.if.end59_crit_edge, label %if.then54

land.lhs.true41.if.end59_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then54:                                        ; preds = %land.lhs.true41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data2) #5
  %12 = ptrtoint ptr %data2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32511, ptr %data2, align 2
  %call55 = call fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %hw, i32 noundef 67, ptr noundef nonnull %data2, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data2) #5
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %if.then54.out_crit_edge

if.then54.out_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end59:                                         ; preds = %if.then54.if.end59_crit_edge, %land.lhs.true41.if.end59_crit_edge, %land.lhs.true37.if.end59_crit_edge, %if.then28.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %or)
  %cmp61 = icmp ugt i32 %or, 15
  br i1 %cmp61, label %if.then63, label %if.end59.do.body74_crit_edge

if.end59.do.body74_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

if.then63:                                        ; preds = %if.end59
  %shl = shl i16 %spec.store.select, 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__e1000_write_phy_reg_hv, %if.then.i)) #5
          to label %e1000_set_page_igp.exit [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %netdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %conv.i = zext i16 %shl to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_set_page_igp.__UNIQUE_ID_ddebug361, ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #5
  br label %e1000_set_page_igp.exit

e1000_set_page_igp.exit:                          ; preds = %if.then.i, %if.then63
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %addr, align 4
  %call5.i = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %shl) #5
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select.i, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool69.not = icmp eq i32 %call5.i, 0
  br i1 %tobool69.not, label %e1000_set_page_igp.exit.do.body74_crit_edge, label %e1000_set_page_igp.exit.out_crit_edge

e1000_set_page_igp.exit.out_crit_edge:            ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

e1000_set_page_igp.exit.do.body74_crit_edge:      ; preds = %e1000_set_page_igp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body74:                                        ; preds = %e1000_set_page_igp.exit.do.body74_crit_edge, %if.end59.do.body74_crit_edge, %if.end26.do.body74_crit_edge
  %page.0 = phi i16 [ %conv, %if.end26.do.body74_crit_edge ], [ %spec.store.select, %e1000_set_page_igp.exit.do.body74_crit_edge ], [ %spec.store.select, %if.end59.do.body74_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__e1000_write_phy_reg_hv.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__e1000_write_phy_reg_hv, %if.then80)) #5
          to label %do.end87 [label %if.then80], !srcloc !229

if.then80:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %20, i32 0, i32 64
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %conv81 = zext i16 %page.0 to i32
  %shl83 = shl nuw nsw i32 %conv81, 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__e1000_write_phy_reg_hv.__UNIQUE_ID_ddebug412, ptr noundef %22, ptr noundef nonnull @.str.80, i32 noundef %conv81, i32 noundef %shl83, i32 noundef %or) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then80, %do.body74
  %call90 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and2, i16 noundef zeroext %data)
  br label %out

out:                                              ; preds = %do.end87, %e1000_set_page_igp.exit.out_crit_edge, %if.then54.out_crit_edge, %if.then24, %if.then14
  %ret_val.0 = phi i32 [ %call16, %if.then14 ], [ %call25, %if.then24 ], [ %call90, %do.end87 ], [ %call5.i, %e1000_set_page_igp.exit.out_crit_edge ], [ %call55, %if.then54.out_crit_edge ]
  br i1 %locked, label %out.cleanup96_crit_edge, label %if.then92

out.cleanup96_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup96

if.then92:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 13
  %23 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release, align 4
  tail call void %24(ptr noundef %hw) #5
  br label %cleanup96

cleanup96:                                        ; preds = %if.then92, %out.cleanup96_crit_edge, %if.then.cleanup96_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then.cleanup96_crit_edge ], [ %ret_val.0, %if.then92 ], [ %ret_val.0, %out.cleanup96_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_hv_locked(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_write_phy_reg_page_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__e1000_write_phy_reg_hv(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_link_stall_workaround_hv(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %2)
  %cmp.not = icmp eq i32 %2, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %3 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %4(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %data) #5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 2
  %7 = and i16 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i29 = call i32 %9(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool4.not = icmp eq i32 %call.i29, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %12 = and i16 %11, -13312
  store i16 %12, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29696, i16 %12)
  %cmp11.not = icmp eq i16 %12, -29696
  br i1 %cmp11.not, label %if.end14, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  call void @msleep(i32 noundef 200) #5
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %13 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i, align 4
  %call.i30 = call i32 %14(ptr noundef %hw, i32 noundef 24848, i16 noundef zeroext 1028) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool16.not = icmp eq i32 %call.i30, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %call.i32 = call i32 %16(ptr noundef %hw, i32 noundef 24848, i16 noundef zeroext 1024) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i32, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i29, %if.end2.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call.i30, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_check_polarity_82577(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = lshr i16 %4, 10
  %.lobit = and i16 %5, 1
  %6 = zext i16 %.lobit to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %7 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cable_polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_phy_force_speed_duplex_82577(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_status.i67 = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @e1000e_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %5 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg.i, align 4
  %call.i66 = call i32 %6(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool3.not = icmp eq i32 %call.i66, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748) #5
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 24
  %8 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %do.body8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body8:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_82577, %if.then13)) #5
          to label %do.end16 [label %if.then13], !srcloc !229

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug415, ptr noundef %13, ptr noundef nonnull @.str.51) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %14 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %do.end16
  %i.053.i = phi i16 [ 0, %do.end16 ], [ %inc.i, %if.end18.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 4
  %call.i.i = call i32 %16(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end10.i_crit_edge, label %if.then.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 100) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %for.body.i.if.end10.i_crit_edge
  %17 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i, align 4
  %call.i51.i = call i32 %18(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %19 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %phy_status.i, align 2
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool16.not.i = icmp eq i16 %21, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end20

if.end18.i:                                       ; preds = %if.end14.i
  call void @msleep(i32 noundef 100) #5
  %inc.i = add nuw nsw i16 %i.053.i, 1
  %cmp.i = icmp ult i16 %i.053.i, 19
  br i1 %cmp.i, label %if.end18.i.for.body.i_crit_edge, label %do.body24

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %if.end44

do.body24:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_force_speed_duplex_82577, %if.then36)) #5
          to label %if.end44 [label %if.then36], !srcloc !229

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %netdev38 = getelementptr inbounds %struct.e1000_adapter, ptr %23, i32 0, i32 64
  %24 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev38, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug416, ptr noundef %25, ptr noundef nonnull @.str.25) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %do.body24, %if.end20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i67) #5
  %26 = ptrtoint ptr %phy_status.i67 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %phy_status.i67, align 2, !annotation !228
  br label %for.body.i72

for.body.i72:                                     ; preds = %if.end18.i80.for.body.i72_crit_edge, %if.end44
  %i.053.i69 = phi i16 [ 0, %if.end44 ], [ %inc.i81, %if.end18.i80.for.body.i72_crit_edge ]
  %27 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_reg.i, align 4
  %call.i.i70 = call i32 %28(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i71, label %for.body.i72.if.end10.i76_crit_edge, label %if.then.i73

for.body.i72.if.end10.i76_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i76

if.then.i73:                                      ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 100) #5
  br label %if.end10.i76

if.end10.i76:                                     ; preds = %if.then.i73, %for.body.i72.if.end10.i76_crit_edge
  %29 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg.i, align 4
  %call.i51.i74 = call i32 %30(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i67) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i74)
  %tobool12.not.i75 = icmp eq i32 %call.i51.i74, 0
  br i1 %tobool12.not.i75, label %if.end14.i78, label %if.end10.i76.e1000e_phy_has_link_generic.exit85_crit_edge

if.end10.i76.e1000e_phy_has_link_generic.exit85_crit_edge: ; preds = %if.end10.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000e_phy_has_link_generic.exit85

if.end14.i78:                                     ; preds = %if.end10.i76
  %31 = ptrtoint ptr %phy_status.i67 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %phy_status.i67, align 2
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool16.not.i77 = icmp eq i16 %33, 0
  br i1 %tobool16.not.i77, label %if.end18.i80, label %if.end14.i78.e1000e_phy_has_link_generic.exit85_crit_edge

if.end14.i78.e1000e_phy_has_link_generic.exit85_crit_edge: ; preds = %if.end14.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000e_phy_has_link_generic.exit85

if.end18.i80:                                     ; preds = %if.end14.i78
  call void @msleep(i32 noundef 100) #5
  %inc.i81 = add nuw nsw i16 %i.053.i69, 1
  %cmp.i83 = icmp ult i16 %i.053.i69, 19
  br i1 %cmp.i83, label %if.end18.i80.for.body.i72_crit_edge, label %if.end18.i80.e1000e_phy_has_link_generic.exit85_crit_edge

if.end18.i80.e1000e_phy_has_link_generic.exit85_crit_edge: ; preds = %if.end18.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %e1000e_phy_has_link_generic.exit85

if.end18.i80.for.body.i72_crit_edge:              ; preds = %if.end18.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i72

e1000e_phy_has_link_generic.exit85:               ; preds = %if.end18.i80.e1000e_phy_has_link_generic.exit85_crit_edge, %if.end14.i78.e1000e_phy_has_link_generic.exit85_crit_edge, %if.end10.i76.e1000e_phy_has_link_generic.exit85_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i67) #5
  br label %cleanup

cleanup:                                          ; preds = %e1000e_phy_has_link_generic.exit85, %e1000e_phy_has_link_generic.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i66, %if.end.cleanup_crit_edge ], [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ %call.i51.i74, %e1000e_phy_has_link_generic.exit85 ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_get_phy_info_82577(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %1 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !228
  %read_reg.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %2 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end10.i_crit_edge, label %if.then.i

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 0) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %entry.if.end10.i_crit_edge
  %5 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i.i, align 4
  %call.i51.i = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool12.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %e1000e_phy_has_link_generic.exit

if.end14.i:                                       ; preds = %if.end10.i
  %7 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status.i, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool16.not.i = icmp eq i16 %9, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_get_phy_info_82577.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_get_phy_info_82577, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !229

e1000e_phy_has_link_generic.exit:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %cleanup

if.then9:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_get_phy_info_82577.__UNIQUE_ID_ddebug417, ptr noundef %14, ptr noundef nonnull @.str.39) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 21
  %15 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %data.i, align 2, !annotation !228
  %17 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i78 = call i32 %18(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i79, label %if.end17, label %e1000_check_polarity_82577.exit

e1000_check_polarity_82577.exit:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data.i, align 2
  %21 = lshr i16 %20, 10
  %.lobit.i = and i16 %21, 1
  %22 = zext i16 %.lobit.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  %24 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i.i, align 4
  %call.i = call i32 %25(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 20
  %28 = lshr i16 %27, 11
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %is_mdix, align 4
  %32 = and i16 %27, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %32)
  %cmp = icmp eq i16 %32, 512
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end21
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %33 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_cable_length, align 4
  %call33 = call i32 %34(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.then31
  %35 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg.i.i, align 4
  %call.i82 = call i32 %36(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool38.not = icmp eq i32 %call.i82, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data, align 2
  %39 = lshr i16 %38, 13
  %.lobit = and i16 %39, 1
  %40 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %local_rx, align 4
  %42 = lshr i16 %38, 12
  %.lobit76 = and i16 %42, 1
  %43 = zext i16 %.lobit76 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %44 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %remote_rx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %45 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 255, ptr %cable_length, align 4
  %local_rx48 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %local_rx48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 255, ptr %local_rx48, align 4
  %remote_rx49 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %remote_rx49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 255, ptr %remote_rx49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end40, %if.end36.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %e1000_check_polarity_82577.exit, %if.then9, %e1000e_phy_has_link_generic.exit, %if.end18.i
  %retval.0 = phi i32 [ %call.i51.i, %e1000e_phy_has_link_generic.exit ], [ -3, %if.then9 ], [ %call.i.i78, %e1000_check_polarity_82577.exit ], [ %call.i, %if.end17.cleanup_crit_edge ], [ %call33, %if.then31.cleanup_crit_edge ], [ %call.i82, %if.end36.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end40 ], [ -3, %if.end18.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_get_cable_length_82577(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #5
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !228
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %1 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i32 noundef 31, ptr noundef nonnull %phy_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %6)
  %cmp = icmp eq i16 %6, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 15
  %7 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cable_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_phy_setup_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %mii_autoneg_adv_reg = alloca i16, align 2
  %mii_1000t_ctrl_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #5
  %0 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_autoneg_adv_reg, align 2, !annotation !228
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #5
  %1 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %mii_1000t_ctrl_reg, align 2
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 14
  %2 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 13
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised, align 4
  %and312 = and i16 %5, %3
  store i16 %and312, ptr %autoneg_advertised, align 4
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 10
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %7(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_autoneg_adv_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %autoneg_mask, align 2
  %10 = and i16 %9, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %11 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i, align 4
  %call.i338 = call i32 %12(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %mii_1000t_ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool10.not = icmp eq i32 %call.i338, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %15 = and i16 %14, -481
  store i16 %15, ptr %mii_autoneg_adv_reg, align 2
  %16 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %18 = and i16 %17, -769
  store i16 %18, ptr %mii_1000t_ctrl_reg, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then25)) #5
          to label %do.end30 [label %if.then25], !srcloc !229

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %20, i32 0, i32 64
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %23 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %autoneg_advertised, align 4
  %conv27 = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug366, ptr noundef %22, ptr noundef nonnull @.str.59, i32 noundef %conv27) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %if.end13
  %25 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %autoneg_advertised, align 4
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not = icmp eq i16 %27, 0
  br i1 %tobool34.not, label %do.end30.if.end59_crit_edge, label %do.body37

do.end30.if.end59_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.body37:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then49)) #5
          to label %do.end56 [label %if.then49], !srcloc !229

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %netdev51 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 64
  %30 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev51, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug367, ptr noundef %31, ptr noundef nonnull @.str.60) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then49, %do.body37
  %32 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %34 = or i16 %33, 32
  store i16 %34, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %do.end30.if.end59_crit_edge
  %35 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %autoneg_advertised, align 4
  %37 = and i16 %36, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool63.not = icmp eq i16 %37, 0
  br i1 %tobool63.not, label %if.end59.if.end89_crit_edge, label %do.body66

if.end59.if.end89_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.body66:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then78)) #5
          to label %do.end85 [label %if.then78], !srcloc !229

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %netdev80 = getelementptr inbounds %struct.e1000_adapter, ptr %39, i32 0, i32 64
  %40 = ptrtoint ptr %netdev80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev80, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug368, ptr noundef %41, ptr noundef nonnull @.str.61) #5
  br label %do.end85

do.end85:                                         ; preds = %if.then78, %do.body66
  %42 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %44 = or i16 %43, 64
  store i16 %44, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end89

if.end89:                                         ; preds = %do.end85, %if.end59.if.end89_crit_edge
  %45 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %autoneg_advertised, align 4
  %47 = and i16 %46, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool93.not = icmp eq i16 %47, 0
  br i1 %tobool93.not, label %if.end89.if.end119_crit_edge, label %do.body96

if.end89.if.end119_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

do.body96:                                        ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then108)) #5
          to label %do.end115 [label %if.then108], !srcloc !229

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %netdev110 = getelementptr inbounds %struct.e1000_adapter, ptr %49, i32 0, i32 64
  %50 = ptrtoint ptr %netdev110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev110, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug369, ptr noundef %51, ptr noundef nonnull @.str.62) #5
  br label %do.end115

do.end115:                                        ; preds = %if.then108, %do.body96
  %52 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %54 = or i16 %53, 128
  store i16 %54, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end119

if.end119:                                        ; preds = %do.end115, %if.end89.if.end119_crit_edge
  %55 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %autoneg_advertised, align 4
  %57 = and i16 %56, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool123.not = icmp eq i16 %57, 0
  br i1 %tobool123.not, label %if.end119.if.end149_crit_edge, label %do.body126

if.end119.if.end149_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

do.body126:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then138)) #5
          to label %do.end145 [label %if.then138], !srcloc !229

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %netdev140 = getelementptr inbounds %struct.e1000_adapter, ptr %59, i32 0, i32 64
  %60 = ptrtoint ptr %netdev140 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev140, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug370, ptr noundef %61, ptr noundef nonnull @.str.63) #5
  br label %do.end145

do.end145:                                        ; preds = %if.then138, %do.body126
  %62 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %64 = or i16 %63, 256
  store i16 %64, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end149

if.end149:                                        ; preds = %do.end145, %if.end119.if.end149_crit_edge
  %65 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %autoneg_advertised, align 4
  %67 = and i16 %66, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool153.not = icmp eq i16 %67, 0
  br i1 %tobool153.not, label %if.end149.if.end176_crit_edge, label %do.body156

if.end149.if.end176_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

do.body156:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then168)) #5
          to label %if.end176 [label %if.then168], !srcloc !229

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %netdev170 = getelementptr inbounds %struct.e1000_adapter, ptr %69, i32 0, i32 64
  %70 = ptrtoint ptr %netdev170 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev170, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug371, ptr noundef %71, ptr noundef nonnull @.str.64) #5
  br label %if.end176

if.end176:                                        ; preds = %if.then168, %do.body156, %if.end149.if.end176_crit_edge
  %72 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %autoneg_advertised, align 4
  %74 = and i16 %73, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool180.not = icmp eq i16 %74, 0
  br i1 %tobool180.not, label %if.end176.if.end206_crit_edge, label %do.body183

if.end176.if.end206_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

do.body183:                                       ; preds = %if.end176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then195)) #5
          to label %do.end202 [label %if.then195], !srcloc !229

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %netdev197 = getelementptr inbounds %struct.e1000_adapter, ptr %76, i32 0, i32 64
  %77 = ptrtoint ptr %netdev197 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev197, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug372, ptr noundef %78, ptr noundef nonnull @.str.65) #5
  br label %do.end202

do.end202:                                        ; preds = %if.then195, %do.body183
  %79 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %81 = or i16 %80, 512
  store i16 %81, ptr %mii_1000t_ctrl_reg, align 2
  br label %if.end206

if.end206:                                        ; preds = %do.end202, %if.end176.if.end206_crit_edge
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %82 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %current_mode, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %83, label %do.body226 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb210
    i32 2, label %sw.bb214
    i32 3, label %sw.bb221
  ]

sw.bb:                                            ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %87 = and i16 %86, -3073
  store i16 %87, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb210:                                         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %90 = or i16 %89, 3072
  store i16 %90, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb214:                                         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %93 = and i16 %92, -3073
  %94 = or i16 %93, 2048
  store i16 %94, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb221:                                         ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %97 = or i16 %96, 3072
  store i16 %97, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

do.body226:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then238)) #5
          to label %cleanup [label %if.then238], !srcloc !229

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %netdev240 = getelementptr inbounds %struct.e1000_adapter, ptr %99, i32 0, i32 64
  %100 = ptrtoint ptr %netdev240 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %netdev240, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug373, ptr noundef %101, ptr noundef nonnull @.str.66) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb221, %sw.bb214, %sw.bb210, %sw.bb
  %102 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 17
  %104 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_reg.i, align 4
  %call.i339 = call i32 %105(ptr noundef %hw, i32 noundef 4, i16 noundef zeroext %103) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool247.not = icmp eq i32 %call.i339, 0
  br i1 %tobool247.not, label %do.body251, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body251:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_phy_setup_autoneg, %if.then263)) #5
          to label %do.end271 [label %if.then263], !srcloc !229

if.then263:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %netdev265 = getelementptr inbounds %struct.e1000_adapter, ptr %107, i32 0, i32 64
  %108 = ptrtoint ptr %netdev265 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev265, align 4
  %110 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %conv266 = zext i16 %111 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug374, ptr noundef %109, ptr noundef nonnull @.str.67, i32 noundef %conv266) #5
  br label %do.end271

do.end271:                                        ; preds = %if.then263, %do.body251
  %112 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %autoneg_mask, align 2
  %114 = and i16 %113, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool275.not = icmp eq i16 %114, 0
  br i1 %tobool275.not, label %do.end271.cleanup_crit_edge, label %if.then276

do.end271.cleanup_crit_edge:                      ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then276:                                       ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %117 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_reg.i, align 4
  %call.i341 = call i32 %118(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %116) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then276, %do.end271.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then238, %do.body226, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i338, %if.then8.cleanup_crit_edge ], [ -3, %if.then238 ], [ %call.i339, %sw.epilog.cleanup_crit_edge ], [ %call.i341, %if.then276 ], [ 0, %do.end271.cleanup_crit_edge ], [ -3, %do.body226 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_access_phy_debug_regs_hv(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %data, i1 noundef zeroext %read) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp eq i32 %1, 9
  %cond = select i1 %cmp, i32 29, i32 16
  %add = add nuw nsw i32 %cond, 1
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %addr, align 4
  %3 = trunc i32 %offset to i16
  %conv3 = and i16 %3, 63
  %call = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %cond, i16 noundef zeroext %conv3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end13, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_debug_regs_hv, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !229

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug413, ptr noundef %7, ptr noundef nonnull @.str.77) #5
  br label %cleanup

if.end13:                                         ; preds = %entry
  br i1 %read, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @e1000e_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %add, ptr noundef %data)
  br label %if.end18

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  %call17 = tail call i32 @e1000e_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %add, i16 noundef zeroext %9)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %ret_val.0 = phi i32 [ %call16, %if.then15 ], [ %call17, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool19.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %do.body22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_access_phy_debug_regs_hv, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !229

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %netdev36 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug414, ptr noundef %13, ptr noundef nonnull @.str.78) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %if.end18.cleanup_crit_edge, %if.then10, %do.body4
  %retval.0 = phi i32 [ %call, %if.then10 ], [ %ret_val.0, %if.then34 ], [ 0, %if.end18.cleanup_crit_edge ], [ %call, %do.body4 ], [ %ret_val.0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !186, !188, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 124, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug353, !1, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 149, i32 3}
!8 = !{ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug354, !7, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 153, i32 3}
!11 = !{ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug355, !10, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 157, i32 3}
!14 = !{ptr @e1000e_read_phy_reg_mdic.__UNIQUE_ID_ddebug356, !13, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 187, i32 3}
!17 = !{ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug357, !16, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 213, i32 3}
!20 = !{ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug358, !19, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!21 = !{ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug359, !22, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 217, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 221, i32 3}
!25 = !{ptr @e1000e_write_phy_reg_mdic.__UNIQUE_ID_ddebug360, !24, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 298, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @e1000_set_page_igp.__UNIQUE_ID_ddebug361, !27, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 740, i32 5}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug362, !31, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!34 = !{ptr @e1000e_copper_link_setup_m88.__UNIQUE_ID_ddebug363, !35, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 796, i32 4}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 832, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug364, !37, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 845, i32 4}
!42 = !{ptr @e1000e_copper_link_setup_igp.__UNIQUE_ID_ddebug365, !41, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1146, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug379, !44, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1149, i32 4}
!49 = !{ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug380, !48, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1163, i32 3}
!52 = !{ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug381, !51, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1167, i32 3}
!55 = !{ptr @e1000e_setup_copper_link.__UNIQUE_ID_ddebug382, !54, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1212, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug383, !57, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1217, i32 3}
!62 = !{ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug384, !61, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1225, i32 4}
!65 = !{ptr @e1000e_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug385, !64, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1264, i32 2}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug386, !67, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1284, i32 3}
!72 = !{ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug387, !71, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!73 = !{ptr @e1000e_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug388, !74, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1293, i32 5}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1381, i32 2}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug389, !76, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1386, i32 3}
!81 = !{ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug390, !80, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!82 = !{ptr @e1000_phy_force_speed_duplex_ife.__UNIQUE_ID_ddebug391, !83, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1394, i32 4}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1441, i32 3}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug392, !85, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1445, i32 3}
!90 = !{ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug393, !89, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1453, i32 3}
!93 = !{ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug394, !92, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1457, i32 3}
!96 = !{ptr @e1000e_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug395, !95, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!97 = distinct !{null, !98, !"agc_reg_array", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1819, i32 19}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1888, i32 3}
!101 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug396, !100, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1897, i32 3}
!105 = !{ptr @e1000e_get_phy_info_m88.__UNIQUE_ID_ddebug397, !104, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1963, i32 3}
!108 = !{ptr @e1000e_get_phy_info_igp.__UNIQUE_ID_ddebug398, !107, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2021, i32 3}
!111 = !{ptr @e1000_get_phy_info_ife.__UNIQUE_ID_ddebug399, !110, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2144, i32 2}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @e1000e_phy_init_script_igp3.__UNIQUE_ID_ddebug400, !113, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2549, i32 3}
!118 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug401, !117, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2555, i32 3}
!122 = !{ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug402, !121, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2569, i32 3}
!125 = !{ptr @e1000_enable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug403, !124, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2598, i32 3}
!128 = !{ptr @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug404, !127, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2605, i32 3}
!131 = !{ptr @e1000_disable_phy_wakeup_reg_access_bm.__UNIQUE_ID_ddebug405, !130, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 3118, i32 3}
!134 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug415, !133, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!136 = !{ptr @e1000_phy_force_speed_duplex_82577.__UNIQUE_ID_ddebug416, !137, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 3126, i32 4}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 3157, i32 3}
!140 = !{ptr @e1000_get_phy_info_82577.__UNIQUE_ID_ddebug417, !139, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1085, i32 2}
!143 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug375, !142, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1088, i32 3}
!147 = !{ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug376, !146, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1091, i32 2}
!150 = !{ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug377, !149, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1111, i32 4}
!153 = !{ptr @e1000_copper_link_autoneg.__UNIQUE_ID_ddebug378, !152, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 954, i32 2}
!156 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug366, !155, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 958, i32 3}
!160 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug367, !159, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 964, i32 3}
!163 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug368, !162, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 970, i32 3}
!166 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug369, !165, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 976, i32 3}
!169 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug370, !168, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 982, i32 3}
!172 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug371, !171, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 986, i32 3}
!175 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug372, !174, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1043, i32 3}
!178 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug373, !177, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 1051, i32 2}
!181 = !{ptr @e1000_phy_setup_autoneg.__UNIQUE_ID_ddebug374, !180, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!182 = !{ptr @e1000_m88_cable_length_table, !183, !"e1000_m88_cable_length_table", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 14, i32 18}
!184 = !{ptr @e1000_igp_2_cable_length_table, !185, !"e1000_igp_2_cable_length_table", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 21, i32 18}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2647, i32 3}
!188 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug406, !187, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2654, i32 4}
!192 = !{ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug407, !191, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2659, i32 2}
!195 = !{ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug408, !194, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2664, i32 3}
!198 = !{ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug409, !197, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2679, i32 3}
!201 = !{ptr @e1000_access_phy_wakeup_reg_bm.__UNIQUE_ID_ddebug410, !200, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2781, i32 2}
!204 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @__e1000_read_phy_reg_hv.__UNIQUE_ID_ddebug411, !203, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!206 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 3004, i32 3}
!208 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug413, !207, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 3015, i32 3}
!212 = !{ptr @e1000_access_phy_debug_regs_hv.__UNIQUE_ID_ddebug414, !211, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!213 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/intel/e1000e/phy.c", i32 2905, i32 2}
!215 = !{ptr @.str.80, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @__e1000_write_phy_reg_hv.__UNIQUE_ID_ddebug412, !214, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i64 1979749}
!227 = !{i64 2156988598}
!228 = !{!"auto-init"}
!229 = !{i64 2148979951, i64 2148979956, i64 2148979969, i64 2148980013, i64 2148980047, i64 2148980068}
!230 = !{i8 0, i8 2}
