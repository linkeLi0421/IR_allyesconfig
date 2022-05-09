; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_read_phy_reg_mdic\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/igb/e1000_phy.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %d is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MDI Read did not complete\0A\00", [37 x i8] zeroinitializer }, align 32
@igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MDI Error\0A\00", [21 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_write_phy_reg_mdic\00", [41 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MDI Write did not complete\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_read_phy_reg_i2c\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I2CCMD Read did not complete\0A\00", [34 x i8] zeroinitializer }, align 32
@igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2CCMD Error bit set\0A\00", [42 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_write_phy_reg_i2c\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PHY I2C Address %d is out of range.\0A\00", [59 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2CCMD Write did not complete\0A\00", [33 x i8] zeroinitializer }, align 32
@igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_sfp_data_byte.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_read_sfp_data_byte\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"I2CCMD command address exceeds upper limit\0A\00", [52 x i8] zeroinitializer }, align 32
@igb_read_sfp_data_byte.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.9, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_sfp_data_byte.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_copper_link_setup_82580.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_copper_link_setup_82580\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error resetting the PHY.\0A\00", [38 x i8] zeroinitializer }, align 32
@igb_copper_link_setup_m88.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_copper_link_setup_m88\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error committing the PHY changes\0A\00", [62 x i8] zeroinitializer }, align 32
@igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.19, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"igb_copper_link_setup_m88_gen2\00", [33 x i8] zeroinitializer }, align 32
@igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.19, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_copper_link_setup_igp.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.17, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_copper_link_setup_igp\00", [38 x i8] zeroinitializer }, align 32
@igb_copper_link_setup_igp.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error Disabling LPLU D3\0A\00", [39 x i8] zeroinitializer }, align 32
@igb_copper_link_setup_igp.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error Disabling LPLU D0\0A\00", [39 x i8] zeroinitializer }, align 32
@igb_setup_copper_link.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_setup_copper_link\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing Speed and Duplex\0A\00", [38 x i8] zeroinitializer }, align 32
@igb_setup_copper_link.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error Forcing Speed and Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_setup_copper_link.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 1, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Valid link established!!!\0A\00", [37 x i8] zeroinitializer }, align 32
@igb_setup_copper_link.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.28, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to establish link!!!\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"igb_phy_force_speed_duplex_igp\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IGP PSCR: %X\0A\00", [18 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for forced speed/duplex link on IGP phy.\0A\00", [46 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Link taking longer than expected.\0A\00", [61 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"igb_phy_force_speed_duplex_m88\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"M88E1000 PSCR: %X\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for forced speed/duplex link on M88 phy.\0A\00", [46 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.32, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_m88_cable_length_table = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 50, i16 80, i16 110, i16 140, i16 140, i16 255], [18 x i8] zeroinitializer }, align 32
@e1000_igp_2_cable_length_table = internal constant { [113 x i16], [62 x i8] } { [113 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 5, i16 8, i16 11, i16 13, i16 16, i16 18, i16 21, i16 0, i16 0, i16 0, i16 3, i16 6, i16 10, i16 13, i16 16, i16 19, i16 23, i16 26, i16 29, i16 32, i16 35, i16 38, i16 41, i16 6, i16 10, i16 14, i16 18, i16 22, i16 26, i16 30, i16 33, i16 37, i16 41, i16 44, i16 48, i16 51, i16 54, i16 58, i16 61, i16 21, i16 26, i16 31, i16 35, i16 40, i16 44, i16 49, i16 53, i16 57, i16 61, i16 65, i16 68, i16 72, i16 75, i16 79, i16 82, i16 40, i16 45, i16 51, i16 56, i16 61, i16 66, i16 70, i16 75, i16 79, i16 83, i16 87, i16 91, i16 94, i16 98, i16 101, i16 104, i16 60, i16 66, i16 72, i16 77, i16 82, i16 87, i16 92, i16 96, i16 100, i16 104, i16 108, i16 111, i16 114, i16 117, i16 119, i16 121, i16 83, i16 89, i16 95, i16 100, i16 105, i16 109, i16 113, i16 116, i16 119, i16 122, i16 124, i16 104, i16 109, i16 114, i16 118, i16 121, i16 124], [62 x i8] zeroinitializer }, align 32
@igb_get_phy_info_m88.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_get_phy_info_m88\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Phy info is only valid for copper media\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_get_phy_info_m88.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 1, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Phy info is only valid if link is up\0A\00", [58 x i8] zeroinitializer }, align 32
@igb_get_phy_info_igp.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.38, i8 1, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_get_phy_info_igp\00", [43 x i8] zeroinitializer }, align 32
@igb_phy_init_script_igp3.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 2, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igb_phy_init_script_igp3\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Running IGP 3 PHY init script\0A\00", [33 x i8] zeroinitializer }, align 32
@igb_initialize_M88E1512_phy.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.19, i8 2, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_initialize_M88E1512_phy\00", [36 x i8] zeroinitializer }, align 32
@igb_initialize_M88E1543_phy.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.19, i8 2, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igb_initialize_M88E1543_phy\00", [36 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 2, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igb_phy_force_speed_duplex_82580\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I82580_PHY_CTRL_2: %X\0A\00", [41 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 2, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Waiting for forced speed/duplex link on 82580 phy\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.32, i8 2, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_get_phy_info_82580.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.38, i8 2, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_get_phy_info_82580\00", [41 x i8] zeroinitializer }, align 32
@igb_copper_link_autoneg.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_copper_link_autoneg\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", [51 x i8] zeroinitializer }, align 32
@igb_copper_link_autoneg.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", [61 x i8] zeroinitializer }, align 32
@igb_copper_link_autoneg.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Restarting Auto-Neg\0A\00", [43 x i8] zeroinitializer }, align 32
@igb_copper_link_autoneg.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error while waiting for autoneg to complete\0A\00", [51 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_phy_setup_autoneg\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"autoneg_advertised %x\0A\00", [41 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Half duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Full duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.57, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Half duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.58, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Full duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.59, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", [50 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.60, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Advertise 1000mb Full duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.61, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@igb_phy_setup_autoneg.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.62, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-Neg Advertising %x\0A\00", [39 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 1, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igb_phy_force_speed_duplex_setup\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Half Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 1, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Full Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.66, i8 1, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Forcing 100mb\0A\00", [17 x i8] zeroinitializer }, align 32
@igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 1, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Forcing 10mb\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.igb_check_downshift = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 17, i32 19, i32 19, i32 17, i32 19, i32 17, i32 17, i32 17], [32 x i8] zeroinitializer }, align 32
@switch.table.igb_check_downshift.68 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 32768, i32 32768, i32 32, i32 32768, i32 32, i32 32, i32 32], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 21040128, i64 21040272, i64 21040576, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 21040128, i64 21040272, i64 21040576, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 15, i64 47]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 21040128, i64 21040272, i64 21040576, i64 21040592, i64 21040800]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 120, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 146, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 151, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 176, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 203, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 249, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 253, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 279, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 306, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 337, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 469, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 611, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 689, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 735, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 752, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 760, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1097, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1100, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1113, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1117, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1163, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1168, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1175, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1220, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1239, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [29 x i8] c"e1000_m88_cable_length_table\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 17, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"e1000_igp_2_cable_length_table\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 20, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1918, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1928, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1998, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2124, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2273, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2367, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2475, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2480, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2520, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 878, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 881, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 884, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 904, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 963, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 967, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 973, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 979, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 985, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 991, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 995, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1049, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1058, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1356, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1360, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1368, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [46 x i8] c"../drivers/net/ethernet/intel/igb/e1000_phy.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1373, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [33 x i8] c"switch.table.igb_check_downshift\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [36 x i8] c"switch.table.igb_check_downshift.68\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @e1000_m88_cable_length_table, ptr @e1000_igp_2_cable_length_table, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.igb_check_downshift, ptr @switch.table.igb_check_downshift.68], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_m88_cable_length_table to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_igp_2_cable_length_table to i32), i32 226, i32 288, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_check_downshift to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.igb_check_downshift.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_reset_block(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22560) #4
  %and = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_id(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id) #4
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_id, align 2, !annotation !199
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch = icmp eq i32 %3, 6
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %5(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call6 = call i32 %7(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_id, align 2
  %conv = zext i16 %9 to i32
  %shl = shl nuw i32 %conv, 16
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 4294960) #4
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call11 = call i32 %13(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_id) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_id, align 2
  %16 = and i16 %15, -16
  %and = zext i16 %16 to i32
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %or = or i32 %18, %and
  store i32 %or, ptr %id, align 4
  %19 = and i16 %15, 15
  %and18 = zext i16 %19 to i32
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 11
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and18, ptr %revision, align 4
  br label %out

out:                                              ; preds = %if.end14, %if.end8.out_crit_edge, %if.end.out_crit_edge
  %ret_val.0 = phi i32 [ %call6, %if.end.out_crit_edge ], [ %call11, %if.end8.out_crit_edge ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_mdic, %if.then5)) #4
          to label %out [label %if.then5], !srcloc !200

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug337, ptr noundef %call6, ptr noundef nonnull @.str.3, i32 noundef %offset) #4
  br label %out

if.end9:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %hw_addr17 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr17, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %if.end9.for.body.preheader_crit_edge, label %do.body28, !prof !201

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body28:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %shl10 = shl i32 %1, 21
  %shl = shl nuw nsw i32 %offset, 16
  %or = or i32 %shl, %shl10
  %or11 = or i32 %or, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !202
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %arrayidx = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !203
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body28, %if.end9.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body43, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0109 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #4
  %call35 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 32) #4
  %and = and i32 %call35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %for.cond, label %if.end62

do.body43:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_mdic, %if.then55)) #4
          to label %out [label %if.then55], !srcloc !200

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug339, ptr noundef %call56, ptr noundef nonnull @.str.4) #4
  br label %out

if.end62:                                         ; preds = %for.body
  %and63 = and i32 %call35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end86, label %do.body67

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_mdic, %if.then79)) #4
          to label %out [label %if.then79], !srcloc !200

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  %call80 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug340, ptr noundef %call80, ptr noundef nonnull @.str.5) #4
  br label %out

if.end86:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %call35 to i16
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %data, align 2
  br label %out

out:                                              ; preds = %if.end86, %if.then79, %do.body67, %if.then55, %do.body43, %if.then5, %do.body2
  %ret_val.0 = phi i32 [ 0, %if.end86 ], [ -4, %if.then5 ], [ -2, %if.then55 ], [ -2, %if.then79 ], [ -4, %do.body2 ], [ -2, %do.body43 ], [ -2, %do.body67 ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_mdic, %if.then5)) #4
          to label %out [label %if.then5], !srcloc !200

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug341, ptr noundef %call6, ptr noundef nonnull @.str.3, i32 noundef %offset) #4
  br label %out

if.end9:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %hw_addr18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr18, align 4
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool19.not, label %if.end9.for.body.preheader_crit_edge, label %do.body29, !prof !201

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body29:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %shl10 = shl i32 %1, 21
  %shl = shl nuw nsw i32 %offset, 16
  %conv = zext i16 %data to i32
  %or = or i32 %shl, %conv
  %or11 = or i32 %or, %shl10
  %or12 = or i32 %or11, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !204
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %arrayidx = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !203
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body29, %if.end9.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body45, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0110 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #4
  %call37 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 32) #4
  %and = and i32 %call37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %for.cond, label %if.end64

do.body45:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_mdic, %if.then57)) #4
          to label %out [label %if.then57], !srcloc !200

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug343, ptr noundef %call58, ptr noundef nonnull @.str.7) #4
  br label %out

if.end64:                                         ; preds = %for.body
  %and65 = and i32 %call37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.out_crit_edge, label %do.body69

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_mdic, %if.then81)) #4
          to label %out [label %if.then81], !srcloc !200

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  %call82 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug344, ptr noundef %call82, ptr noundef nonnull @.str.5) #4
  br label %out

out:                                              ; preds = %if.then81, %do.body69, %if.end64.out_crit_edge, %if.then57, %do.body45, %if.then5, %do.body2
  %ret_val.0 = phi i32 [ 0, %if.end64.out_crit_edge ], [ -4, %if.then5 ], [ -2, %if.then57 ], [ -2, %if.then81 ], [ -4, %do.body2 ], [ -2, %do.body45 ], [ -2, %do.body69 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_i2c(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr5, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.body9, !prof !201

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl2 = shl i32 %1, 24
  %shl = shl i32 %offset, 16
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !205
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %arrayidx = getelementptr i8, ptr %3, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !203
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body9, %entry.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body21, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.085 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #4
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 4136) #4
  %and = and i32 %call, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %for.cond, label %if.end38

do.body21:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_i2c, %if.then31)) #4
          to label %cleanup [label %if.then31], !srcloc !200

if.then31:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug346, ptr noundef %call32, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end38:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool40.not = icmp sgt i32 %call, -1
  br i1 %tobool40.not, label %if.end62, label %do.body43

do.body43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_phy_reg_i2c, %if.then55)) #4
          to label %cleanup [label %if.then55], !srcloc !200

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug347, ptr noundef %call56, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end62:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %trunc = trunc i32 %call to i16
  %rev = tail call i16 @llvm.bswap.i16(i16 %trunc)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %rev, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then55, %do.body43, %if.then31, %do.body21
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -2, %if.then31 ], [ -2, %if.then55 ], [ -2, %do.body21 ], [ -2, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_i2c(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = add i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %do.body6, label %if.end15

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_i2c, %if.then9)) #4
          to label %cleanup [label %if.then9], !srcloc !200

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug348, ptr noundef %call10, ptr noundef nonnull @.str.12, i32 noundef %5) #4
  br label %cleanup

if.end15:                                         ; preds = %entry
  %hw_addr31 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr31, align 4
  %tobool32.not = icmp eq ptr %7, null
  br i1 %tobool32.not, label %if.end15.for.body.preheader_crit_edge, label %do.body42, !prof !201

if.end15.for.body.preheader_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body42:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %shl19 = shl i32 %offset, 16
  %rev = tail call i16 @llvm.bswap.i16(i16 %data)
  %conv24 = zext i16 %rev to i32
  %or22 = or i32 %shl19, %conv24
  %shl21 = shl nuw nsw i32 %1, 24
  %or25 = or i32 %or22, %shl21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !206
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %arrayidx = getelementptr i8, ptr %7, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #4, !srcloc !203
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body42, %if.end15.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body59, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0129 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #4
  %call50 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 4136) #4
  %and51 = and i32 %call50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.cond, label %if.end78

do.body59:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_i2c, %if.then71)) #4
          to label %cleanup [label %if.then71], !srcloc !200

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug350, ptr noundef %call72, ptr noundef nonnull @.str.13) #4
  br label %cleanup

if.end78:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call50)
  %tobool80.not = icmp sgt i32 %call50, -1
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %do.body83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_phy_reg_i2c, %if.then95)) #4
          to label %cleanup [label %if.then95], !srcloc !200

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  %call96 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug351, ptr noundef %call96, ptr noundef nonnull @.str.10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body83, %if.end78.cleanup_crit_edge, %if.then71, %do.body59, %if.then9, %do.body6
  %retval.0 = phi i32 [ -3, %if.then9 ], [ -2, %if.then71 ], [ -2, %if.then95 ], [ 0, %if.end78.cleanup_crit_edge ], [ -3, %do.body6 ], [ -2, %do.body59 ], [ -2, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_sfp_data_byte(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %offset)
  %cmp = icmp ugt i16 %offset, 511
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_sfp_data_byte, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !200

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug352, ptr noundef %call6, ptr noundef nonnull @.str.15) #4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %hw_addr16 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr16, align 4
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %if.end9.for.body.preheader_crit_edge, label %do.body27, !prof !201

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.body27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %offset to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !207
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !203
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body27, %if.end9.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body43, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0112 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #4
  %call35 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 4136) #4
  %and = and i32 %call35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %for.cond, label %if.end62

do.body43:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_sfp_data_byte, %if.then55)) #4
          to label %cleanup [label %if.then55], !srcloc !200

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug354, ptr noundef %call56, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %tobool64.not = icmp sgt i32 %call35, -1
  br i1 %tobool64.not, label %if.end86, label %do.body67

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_sfp_data_byte, %if.then79)) #4
          to label %cleanup [label %if.then79], !srcloc !200

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  %call80 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug355, ptr noundef %call80, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end86:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %conv90 = trunc i32 %call35 to i8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv90, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then79, %do.body67, %if.then55, %do.body43, %if.then5, %do.body2
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -2, %if.then5 ], [ -2, %if.then55 ], [ -2, %if.then79 ], [ -2, %do.body2 ], [ -2, %do.body43 ], [ -2, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_phy_reg_igp(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp = icmp ugt i32 %offset, 15
  br i1 %cmp, label %if.then7, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then7:                                         ; preds = %if.end6
  %conv = trunc i32 %offset to i16
  %call8 = tail call i32 @igb_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end14_crit_edge, label %if.then7.out.sink.split_crit_edge

if.then7.out.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %and = and i32 %offset, 31
  %call15 = tail call i32 @igb_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, ptr noundef %data)
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end14, %if.then7.out.sink.split_crit_edge
  %ret_val.0.ph = phi i32 [ %call15, %if.end14 ], [ %call8, %if.then7.out.sink.split_crit_edge ]
  %release18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release18, align 4
  tail call void %3(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %ret_val.0.ph, %out.sink.split ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_phy_reg_igp(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset)
  %cmp = icmp ugt i32 %offset, 15
  br i1 %cmp, label %if.then7, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then7:                                         ; preds = %if.end6
  %conv = trunc i32 %offset to i16
  %call8 = tail call i32 @igb_write_phy_reg_mdic(ptr noundef %hw, i32 noundef 31, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end14_crit_edge, label %if.then7.out.sink.split_crit_edge

if.then7.out.sink.split_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %and = and i32 %offset, 31
  %call15 = tail call i32 @igb_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and, i16 noundef zeroext %data)
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end14, %if.then7.out.sink.split_crit_edge
  %ret_val.0.ph = phi i32 [ %call15, %if.end14 ], [ %call8, %if.then7.out.sink.split_crit_edge ]
  %release18 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %2 = ptrtoint ptr %release18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release18, align 4
  tail call void %3(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %ret_val.0.ph, %out.sink.split ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_82580(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 23
  %1 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reset_disable, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %if.then2, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %reset = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 9
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %call = tail call i32 %6(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then2.if.end17_crit_edge, label %do.body6

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_82580.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_82580, %if.then11)) #4
          to label %out [label %if.then11], !srcloc !200

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_82580.__UNIQUE_ID_ddebug356, ptr noundef %call12, ptr noundef nonnull @.str.17) #4
  br label %out

if.end17:                                         ; preds = %if.then2.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %call19 = call i32 %8(ptr noundef %hw, i32 noundef 22, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end22:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %phy_data, align 2
  %11 = or i16 %10, -29696
  store i16 %11, ptr %phy_data, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %12 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg, align 4
  %call28 = call i32 %13(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end31:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 4
  %call34 = call i32 %15(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end37:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_data, align 2
  %18 = and i16 %17, -1537
  store i16 %18, ptr %phy_data, align 2
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 19
  %19 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mdix, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %sw.default [
    i8 1, label %if.end37.sw.epilog_crit_edge
    i8 2, label %sw.bb
  ]

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %22 = or i16 %18, 512
  %23 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %phy_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %24 = or i16 %18, 1024
  %25 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %if.end37.sw.epilog_crit_edge
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %28 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_data, align 2
  %call52 = call i32 %27(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %29) #4
  br label %out

out:                                              ; preds = %sw.epilog, %if.end31.out_crit_edge, %if.end22.out_crit_edge, %if.end17.out_crit_edge, %if.then11, %do.body6, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then11 ], [ %call19, %if.end17.out_crit_edge ], [ %call28, %if.end22.out_crit_edge ], [ %call34, %if.end31.out_crit_edge ], [ %call52, %sw.epilog ], [ 0, %entry.out_crit_edge ], [ %call, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctrl.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 23
  %1 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reset_disable, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call = call i32 %4(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %7 = and i16 %6, -2145
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 19
  %8 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mdix, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %9, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb12
    i8 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = or i16 %7, 2048
  %12 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %13 = or i16 %7, 2080
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %15 = or i16 %7, 2112
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %phy_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %17 = or i16 %6, 2144
  %18 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb12, %sw.bb
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %phy_data, align 2
  %21 = and i16 %20, -3
  store i16 %21, ptr %phy_data, align 2
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 20
  %22 = ptrtoint ptr %disable_polarity_correction to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %disable_polarity_correction, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not = icmp eq i8 %23, 0
  br i1 %tobool27.not, label %sw.epilog.if.end34_crit_edge, label %if.then30

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then30:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %24 = or i16 %20, 2
  %25 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %phy_data, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %sw.epilog.if.end34_crit_edge
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %28 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_data, align 2
  %call36 = call i32 %27(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end39:                                         ; preds = %if.end34
  %revision = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 11
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp40 = icmp ult i32 %31, 4
  br i1 %cmp40, label %if.then42, label %if.end39.if.end77_crit_edge

if.end39.if.end77_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then42:                                        ; preds = %if.end39
  %32 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg, align 4
  %call45 = call i32 %33(ptr noundef %hw, i32 noundef 20, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then42.out_crit_edge

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end48:                                         ; preds = %if.then42
  %34 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %phy_data, align 2
  %36 = or i16 %35, 112
  %37 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp53 = icmp eq i32 %38, 2
  br i1 %cmp53, label %land.lhs.true, label %if.end48.if.else_crit_edge

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end48
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040320, i32 %40)
  %cmp55 = icmp eq i32 %40, 21040320
  br i1 %cmp55, label %land.lhs.true.if.end70_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end48.if.else_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %if.else, %land.lhs.true.if.end70_crit_edge
  %.sink116 = phi i16 [ -3841, %if.else ], [ -3585, %land.lhs.true.if.end70_crit_edge ]
  %.sink115 = phi i16 [ 256, %if.else ], [ 2048, %land.lhs.true.if.end70_crit_edge ]
  %41 = and i16 %36, %.sink116
  %42 = or i16 %41, %.sink115
  %43 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %phy_data, align 2
  %44 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg, align 4
  %call73 = call i32 %45(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext %42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end70.if.end77_crit_edge, label %if.end70.out_crit_edge

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.end77:                                         ; preds = %if.end70.if.end77_crit_edge, %if.end39.if.end77_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  %46 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %phy_ctrl.i, align 2, !annotation !199
  %47 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end77.igb_phy_sw_reset.exit.thread_crit_edge, label %if.end.i

if.end77.igb_phy_sw_reset.exit.thread_crit_edge:  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_phy_sw_reset.exit.thread

if.end.i:                                         ; preds = %if.end77
  %call.i = call i32 %48(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.body81_crit_edge

if.end.i.do.body81_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

if.end6.i:                                        ; preds = %if.end.i
  %49 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %phy_ctrl.i, align 2
  %51 = or i16 %50, -32768
  store i16 %51, ptr %phy_ctrl.i, align 2
  %52 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg, align 4
  %call10.i = call i32 %53(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.do.body81_crit_edge

if.end6.i.do.body81_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body81

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748) #4
  br label %igb_phy_sw_reset.exit.thread

igb_phy_sw_reset.exit.thread:                     ; preds = %if.end13.i, %if.end77.igb_phy_sw_reset.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  br label %out

do.body81:                                        ; preds = %if.end6.i.do.body81_crit_edge, %if.end.i.do.body81_crit_edge
  %ret_val.0.i = phi i32 [ %call.i, %if.end.i.do.body81_crit_edge ], [ %call10.i, %if.end6.i.do.body81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_m88.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_m88, %if.then86)) #4
          to label %out [label %if.then86], !srcloc !200

if.then86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_m88.__UNIQUE_ID_ddebug357, ptr noundef %call87, ptr noundef nonnull @.str.19) #4
  br label %out

out:                                              ; preds = %if.then86, %do.body81, %igb_phy_sw_reset.exit.thread, %if.end70.out_crit_edge, %if.then42.out_crit_edge, %if.end34.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call36, %if.end34.out_crit_edge ], [ %call45, %if.then42.out_crit_edge ], [ %call73, %if.end70.out_crit_edge ], [ %ret_val.0.i, %if.then86 ], [ 0, %entry.out_crit_edge ], [ 0, %igb_phy_sw_reset.exit.thread ], [ %ret_val.0.i, %do.body81 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_sw_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl) #4
  %0 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_ctrl, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_ctrl, align 2
  %5 = or i16 %4, -32768
  store i16 %5, ptr %phy_ctrl, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call10 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748) #4
  br label %out

out:                                              ; preds = %if.end13, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call10, %if.end6.out_crit_edge ], [ 0, %if.end13 ], [ 0, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_m88_gen2(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctrl.i137 = alloca i16, align 2
  %phy_ctrl.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 23
  %1 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reset_disable, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %3 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_reg, align 4
  %call = call i32 %4(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_data, align 2
  %7 = and i16 %6, -97
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 19
  %8 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mdix, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %9, label %if.end4.sw.default_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
    i8 3, label %sw.bb13
  ]

if.end4.sw.default_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %7, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %12 = or i16 %7, 32
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end4
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040272, i32 %15)
  %cmp.not = icmp eq i32 %15, 21040272
  br i1 %cmp.not, label %sw.bb13.sw.default_crit_edge, label %if.then15

sw.bb13.sw.default_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %16 = or i16 %7, 64
  %17 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %phy_data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb13.sw.default_crit_edge, %if.end4.sw.default_crit_edge
  %18 = or i16 %6, 96
  %19 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then15, %sw.bb9, %sw.bb
  %20 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_data, align 2
  %22 = and i16 %21, -3
  store i16 %22, ptr %phy_data, align 2
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 20
  %23 = ptrtoint ptr %disable_polarity_correction to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %disable_polarity_correction, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %sw.epilog.if.end35_crit_edge, label %if.then31

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %25 = or i16 %21, 2
  %26 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %phy_data, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %sw.epilog.if.end35_crit_edge
  %id36 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %id36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21040800, i32 %28)
  %cmp37 = icmp eq i32 %28, 21040800
  br i1 %cmp37, label %if.then39, label %if.end35.if.end62_crit_edge

if.end35.if.end62_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then39:                                        ; preds = %if.end35
  %29 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %phy_data, align 2
  %31 = and i16 %30, -2049
  store i16 %31, ptr %phy_data, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %32 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg, align 4
  %call44 = call i32 %33(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  %34 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %phy_ctrl.i, align 2, !annotation !199
  %35 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_reg, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end47.igb_phy_sw_reset.exit.thread_crit_edge, label %if.end.i

if.end47.igb_phy_sw_reset.exit.thread_crit_edge:  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_phy_sw_reset.exit.thread

if.end.i:                                         ; preds = %if.end47
  %call.i = call i32 %36(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.body51_crit_edge

if.end.i.do.body51_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body51

if.end6.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %phy_ctrl.i, align 2
  %39 = or i16 %38, -32768
  store i16 %39, ptr %phy_ctrl.i, align 2
  %40 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg, align 4
  %call10.i = call i32 %41(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.do.body51_crit_edge

if.end6.i.do.body51_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body51

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748) #4
  br label %igb_phy_sw_reset.exit.thread

igb_phy_sw_reset.exit.thread:                     ; preds = %if.end13.i, %if.end47.igb_phy_sw_reset.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  br label %if.end62

do.body51:                                        ; preds = %if.end6.i.do.body51_crit_edge, %if.end.i.do.body51_crit_edge
  %ret_val.0.i = phi i32 [ %call.i, %if.end.i.do.body51_crit_edge ], [ %call10.i, %if.end6.i.do.body51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_m88_gen2, %if.then56)) #4
          to label %cleanup [label %if.then56], !srcloc !200

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug358, ptr noundef %call57, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end62:                                         ; preds = %igb_phy_sw_reset.exit.thread, %if.end35.if.end62_crit_edge
  %43 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %phy_data, align 2
  %45 = and i16 %44, -30721
  %46 = or i16 %45, 22528
  store i16 %46, ptr %phy_data, align 2
  %write_reg73 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %47 = ptrtoint ptr %write_reg73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg73, align 4
  %call74 = call i32 %48(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl.i137) #4
  %49 = ptrtoint ptr %phy_ctrl.i137 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %phy_ctrl.i137, align 2, !annotation !199
  %50 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_reg, align 4
  %tobool.not.i139 = icmp eq ptr %51, null
  br i1 %tobool.not.i139, label %if.end77.if.end101_crit_edge, label %if.end.i142

if.end77.if.end101_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.end.i142:                                      ; preds = %if.end77
  %call.i140 = call i32 %51(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl.i137) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool4.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool4.not.i141, label %if.end6.i146, label %if.end.i142.do.body82_crit_edge

if.end.i142.do.body82_crit_edge:                  ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

if.end6.i146:                                     ; preds = %if.end.i142
  %52 = ptrtoint ptr %phy_ctrl.i137 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %phy_ctrl.i137, align 2
  %54 = or i16 %53, -32768
  store i16 %54, ptr %phy_ctrl.i137, align 2
  %55 = ptrtoint ptr %write_reg73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg73, align 4
  %call10.i144 = call i32 %56(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i144)
  %tobool11.not.i145 = icmp eq i32 %call10.i144, 0
  br i1 %tobool11.not.i145, label %if.end13.i147, label %if.end6.i146.do.body82_crit_edge

if.end6.i146.do.body82_crit_edge:                 ; preds = %if.end6.i146
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

if.end13.i147:                                    ; preds = %if.end6.i146
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748) #4
  br label %if.end101

do.body82:                                        ; preds = %if.end6.i146.do.body82_crit_edge, %if.end.i142.do.body82_crit_edge
  %ret_val.0.i148 = phi i32 [ %call.i140, %if.end.i142.do.body82_crit_edge ], [ %call10.i144, %if.end6.i146.do.body82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i137) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_m88_gen2, %if.then94)) #4
          to label %cleanup [label %if.then94], !srcloc !200

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  %call95 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug359, ptr noundef %call95, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end101:                                        ; preds = %if.end13.i147, %if.end77.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i137) #4
  %call102 = call fastcc i32 @igb_set_master_slave_mode(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then94, %do.body82, %if.end62.cleanup_crit_edge, %if.then56, %do.body51, %if.then39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call44, %if.then39.cleanup_crit_edge ], [ %ret_val.0.i, %if.then56 ], [ %call74, %if.end62.cleanup_crit_edge ], [ %ret_val.0.i148, %if.then94 ], [ %call102, %if.end101 ], [ %ret_val.0.i, %do.body51 ], [ %ret_val.0.i148, %do.body82 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_set_master_slave_mode(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %original_ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %original_ms_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond5, ptr %original_ms_type, align 4
  %ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %ms_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ms_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i16 %4, 6144
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = and i16 %4, -6145
  %12 = or i16 %11, 4096
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %phy_data, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = and i16 %4, -4097
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb10, %sw.bb, %if.end.sw.epilog_crit_edge
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %18 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_data, align 2
  %call23 = call i32 %17(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %19) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_copper_link_setup_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !199
  %reset_disable = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 23
  %1 = ptrtoint ptr %reset_disable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reset_disable, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 9
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset, align 4
  %call = tail call i32 %4(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end14, label %do.body4

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_igp, %if.then9)) #4
          to label %out [label %if.then9], !srcloc !200

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug360, ptr noundef %call10, ptr noundef nonnull @.str.17) #4
  br label %out

if.end14:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then15, label %if.end14.if.end46_crit_edge

if.end14.if.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then15:                                        ; preds = %if.end14
  %set_d3_lplu_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 11
  %7 = ptrtoint ptr %set_d3_lplu_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_d3_lplu_state, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.then15.if.end46_crit_edge, label %if.end22

if.then15.if.end46_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end22:                                         ; preds = %if.then15
  %call21 = tail call i32 %8(ptr noundef %hw, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end22.if.end46_crit_edge, label %do.body26

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_igp, %if.then38)) #4
          to label %out [label %if.then38], !srcloc !200

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug361, ptr noundef %call39, ptr noundef nonnull @.str.22) #4
  br label %out

if.end46:                                         ; preds = %if.end22.if.end46_crit_edge, %if.then15.if.end46_crit_edge, %if.end14.if.end46_crit_edge
  %set_d0_lplu_state = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 10
  %9 = ptrtoint ptr %set_d0_lplu_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_d0_lplu_state, align 4
  %call48 = tail call i32 %10(ptr noundef %hw, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end71, label %do.body52

do.body52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_setup_igp, %if.then64)) #4
          to label %out [label %if.then64], !srcloc !200

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug362, ptr noundef %call65, ptr noundef nonnull @.str.23) #4
  br label %out

if.end71:                                         ; preds = %if.end46
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %call73 = call i32 %12(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end76:                                         ; preds = %if.end71
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 19
  %15 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mdix, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %16, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb82
  ]

sw.bb:                                            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %18 = and i16 %14, -12289
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %data, align 2
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %20 = and i16 %14, -12289
  %21 = or i16 %20, 8192
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %data, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %23 = or i16 %14, 4096
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb82, %sw.bb
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %25 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data, align 2
  %call90 = call i32 %26(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end93:                                         ; preds = %sw.epilog
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %29 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %autoneg, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool94.not = icmp eq i8 %30, 0
  br i1 %tobool94.not, label %if.end93.out_crit_edge, label %if.then95

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then95:                                        ; preds = %if.end93
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 13
  %31 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %autoneg_advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %32)
  %cmp97 = icmp eq i16 %32, 32
  br i1 %cmp97, label %if.then99, label %if.then95.if.end130_crit_edge

if.then95.if.end130_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then99:                                        ; preds = %if.then95
  %33 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_reg, align 4
  %call102 = call i32 %34(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.then99.out_crit_edge

if.then99.out_crit_edge:                          ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end105:                                        ; preds = %if.then99
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %data, align 2
  %37 = and i16 %36, -129
  store i16 %37, ptr %data, align 2
  %38 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg, align 4
  %call111 = call i32 %39(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end105.out_crit_edge

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end114:                                        ; preds = %if.end105
  %40 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg, align 4
  %call117 = call i32 %41(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end114.out_crit_edge

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end120:                                        ; preds = %if.end114
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data, align 2
  %44 = and i16 %43, -4097
  store i16 %44, ptr %data, align 2
  %45 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg, align 4
  %call126 = call i32 %46(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end120.if.end130_crit_edge, label %if.end120.out_crit_edge

if.end120.out_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end120.if.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.end130:                                        ; preds = %if.end120.if.end130_crit_edge, %if.then95.if.end130_crit_edge
  %47 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_reg, align 4
  %call133 = call i32 %48(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end130.out_crit_edge

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end136:                                        ; preds = %if.end130
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data, align 2
  %conv137 = zext i16 %50 to i32
  %and138 = and i32 %conv137, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %and141 = and i32 %conv137, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %cond = select i1 %tobool142.not, i32 2, i32 1
  %cond143 = select i1 %tobool139.not, i32 3, i32 %cond
  %original_ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %original_ms_type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond143, ptr %original_ms_type, align 4
  %ms_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 4
  %52 = ptrtoint ptr %ms_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ms_type, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %53, label %if.end136.sw.epilog160_crit_edge [
    i32 1, label %sw.bb144
    i32 2, label %sw.bb148
    i32 3, label %sw.bb155
  ]

if.end136.sw.epilog160_crit_edge:                 ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog160

sw.bb144:                                         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %55 = or i16 %50, 6144
  %56 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %data, align 2
  br label %sw.epilog160

sw.bb148:                                         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %57 = and i16 %50, -6145
  %58 = or i16 %57, 4096
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %data, align 2
  br label %sw.epilog160

sw.bb155:                                         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  %60 = and i16 %50, -4097
  %61 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %data, align 2
  br label %sw.epilog160

sw.epilog160:                                     ; preds = %sw.bb155, %sw.bb148, %sw.bb144, %if.end136.sw.epilog160_crit_edge
  %62 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg, align 4
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %data, align 2
  %call163 = call i32 %63(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %65) #4
  br label %out

out:                                              ; preds = %sw.epilog160, %if.end130.out_crit_edge, %if.end120.out_crit_edge, %if.end114.out_crit_edge, %if.end105.out_crit_edge, %if.then99.out_crit_edge, %if.end93.out_crit_edge, %sw.epilog.out_crit_edge, %if.end71.out_crit_edge, %if.then64, %do.body52, %if.then38, %do.body26, %if.then9, %do.body4, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ %call, %if.then9 ], [ %call21, %if.then38 ], [ %call48, %if.then64 ], [ %call73, %if.end71.out_crit_edge ], [ %call90, %sw.epilog.out_crit_edge ], [ %call102, %if.then99.out_crit_edge ], [ %call111, %if.end105.out_crit_edge ], [ %call117, %if.end114.out_crit_edge ], [ %call126, %if.end120.out_crit_edge ], [ %call133, %if.end130.out_crit_edge ], [ %call163, %sw.epilog160 ], [ 0, %if.end93.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %call, %do.body4 ], [ %call21, %do.body26 ], [ %call48, %do.body52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_setup_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 17
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 2, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @igb_copper_link_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end37_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_copper_link, %if.then8)) #4
          to label %do.end12 [label %if.then8], !srcloc !200

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_copper_link.__UNIQUE_ID_ddebug376, ptr noundef %call9, ptr noundef nonnull @.str.25) #4
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3
  %force_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 3
  %2 = ptrtoint ptr %force_speed_duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %force_speed_duplex, align 4
  %call13 = tail call i32 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end12.if.end37_crit_edge, label %do.body17

do.end12.if.end37_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.body17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_copper_link, %if.then29)) #4
          to label %out [label %if.then29], !srcloc !200

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_copper_link.__UNIQUE_ID_ddebug377, ptr noundef %call30, ptr noundef nonnull @.str.26) #4
  br label %out

if.end37:                                         ; preds = %do.end12.if.end37_crit_edge, %if.then.if.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #4
  %4 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !199
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end49.i.for.body.i_crit_edge, %if.end37
  %i.0139.i = phi i16 [ 0, %if.end37 ], [ %inc.i, %if.end49.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end38.i_crit_edge, label %if.then.i

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 2147480) #4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then.i, %for.body.i.if.end38.i_crit_edge
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call42.i = call i32 %9(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %igb_phy_has_link.exit

if.end45.i:                                       ; preds = %if.end38.i
  %10 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_status.i, align 2
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool47.not.i = icmp eq i16 %12, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %do.body45

if.end49.i:                                       ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 2147480) #4
  %inc.i = add nuw nsw i16 %i.0139.i, 1
  %cmp.i = icmp ult i16 %i.0139.i, 9
  br i1 %cmp.i, label %if.end49.i.for.body.i_crit_edge, label %do.body67

if.end49.i.for.body.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

igb_phy_has_link.exit:                            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  br label %out

do.body45:                                        ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_copper_link, %if.then57)) #4
          to label %do.end63 [label %if.then57], !srcloc !200

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_copper_link.__UNIQUE_ID_ddebug378, ptr noundef %call58, ptr noundef nonnull @.str.27) #4
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %do.body45
  call void @igb_config_collision_dist(ptr noundef %hw) #4
  %call64 = call i32 @igb_config_fc_after_link_up(ptr noundef %hw) #4
  br label %out

do.body67:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_setup_copper_link, %if.then79)) #4
          to label %out [label %if.then79], !srcloc !200

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  %call80 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_setup_copper_link.__UNIQUE_ID_ddebug379, ptr noundef %call80, ptr noundef nonnull @.str.28) #4
  br label %out

out:                                              ; preds = %if.then79, %do.body67, %do.end63, %igb_phy_has_link.exit, %if.then29, %do.body17, %if.then.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then.out_crit_edge ], [ %call42.i, %igb_phy_has_link.exit ], [ %call64, %do.end63 ], [ 0, %if.then79 ], [ %call13, %if.then29 ], [ %call13, %do.body17 ], [ 0, %do.body67 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_copper_link_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  %phy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl) #4
  %0 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_ctrl, align 2, !annotation !199
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 14
  %1 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 13
  %3 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %autoneg_advertised, align 4
  %and119 = and i16 %4, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and119)
  %cmp = icmp eq i16 %and119, 0
  %spec.store.select = select i1 %cmp, i16 %2, i16 %and119
  %5 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.store.select, ptr %autoneg_advertised, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_autoneg, %if.then12)) #4
          to label %do.end16 [label %if.then12], !srcloc !200

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_autoneg.__UNIQUE_ID_ddebug363, ptr noundef %call13, ptr noundef nonnull @.str.49) #4
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %entry
  %call17 = tail call fastcc i32 @igb_phy_setup_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body42, label %do.body21

do.body21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_autoneg, %if.then33)) #4
          to label %out [label %if.then33], !srcloc !200

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_autoneg.__UNIQUE_ID_ddebug364, ptr noundef %call34, ptr noundef nonnull @.str.50) #4
  br label %out

do.body42:                                        ; preds = %do.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_autoneg, %if.then54)) #4
          to label %do.end60 [label %if.then54], !srcloc !200

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #6
  %call55 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_autoneg.__UNIQUE_ID_ddebug365, ptr noundef %call55, ptr noundef nonnull @.str.51) #4
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body42
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call61 = call i32 %7(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.end60.out_crit_edge

do.end60.out_crit_edge:                           ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end64:                                         ; preds = %do.end60
  %8 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_ctrl, align 2
  %10 = or i16 %9, 4608
  store i16 %10, ptr %phy_ctrl, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  %call68 = call i32 %12(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end71:                                         ; preds = %if.end64
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 25
  %13 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool72.not = icmp eq i8 %14, 0
  br i1 %tobool72.not, label %if.end71.if.end98_crit_edge, label %if.then73

if.end71.if.end98_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then73:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #4
  %15 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !199
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.then73
  %i.019.i = phi i16 [ 45, %if.then73 ], [ %dec.i, %if.end12.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call.i = call i32 %17(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.do.body78_crit_edge

for.body.i.do.body78_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call5.i = call i32 %19(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.do.body78_crit_edge

if.end.i.do.body78_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body78

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_status.i, align 2
  %22 = and i16 %21, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool10.not.i = icmp eq i16 %22, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.igb_wait_autoneg.exit.thread_crit_edge

if.end8.i.igb_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_wait_autoneg.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  call void @msleep(i32 noundef 100) #4
  %dec.i = add nsw i16 %i.019.i, -1
  %cmp.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp.not.i, label %if.end12.i.igb_wait_autoneg.exit.thread_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end12.i.igb_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_wait_autoneg.exit.thread

igb_wait_autoneg.exit.thread:                     ; preds = %if.end12.i.igb_wait_autoneg.exit.thread_crit_edge, %if.end8.i.igb_wait_autoneg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  br label %if.end98

do.body78:                                        ; preds = %if.end.i.do.body78_crit_edge, %for.body.i.do.body78_crit_edge
  %ret_val.1.i = phi i32 [ %call.i, %for.body.i.do.body78_crit_edge ], [ %call5.i, %if.end.i.do.body78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_copper_link_autoneg, %if.then90)) #4
          to label %out [label %if.then90], !srcloc !200

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  %call91 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_copper_link_autoneg.__UNIQUE_ID_ddebug366, ptr noundef %call91, ptr noundef nonnull @.str.52) #4
  br label %out

if.end98:                                         ; preds = %igb_wait_autoneg.exit.thread, %if.end71.if.end98_crit_edge
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 20
  %23 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %get_link_status, align 1
  br label %out

out:                                              ; preds = %if.end98, %if.then90, %do.body78, %if.end64.out_crit_edge, %do.end60.out_crit_edge, %if.then33, %do.body21
  %ret_val.1 = phi i32 [ %call17, %if.then33 ], [ %call61, %do.end60.out_crit_edge ], [ %call68, %if.end64.out_crit_edge ], [ %ret_val.1.i, %if.then90 ], [ 0, %if.end98 ], [ %call17, %do.body21 ], [ %ret_val.1.i, %do.body78 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef %iterations, i32 noundef %usec_interval, ptr nocapture noundef writeonly %success) local_unnamed_addr #0 align 64 {
entry:
  %phy_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status) #4
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_status, align 2, !annotation !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations)
  %cmp138.not = icmp eq i32 %iterations, 0
  br i1 %cmp138.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usec_interval)
  %cmp2.not = icmp eq i32 %usec_interval, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %usec_interval)
  %cmp4 = icmp ugt i32 %usec_interval, 999
  %div = udiv i32 %usec_interval, 1000
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = or i1 %cmp2.not, %tobool.not
  br i1 %or.cond, label %for.body.if.end38_crit_edge, label %if.then

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then:                                          ; preds = %for.body
  br i1 %cmp4, label %if.then.while.body_crit_edge, label %if.end38.sink.split

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %__ms.0135 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div, %if.then.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0135, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 214748000) #4
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %while.body.if.end38_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %4(i32 noundef %usec_interval) #4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %while.body.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call42 = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end45:                                         ; preds = %if.end38
  %7 = ptrtoint ptr %phy_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %phy_status, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool47.not = icmp eq i16 %9, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end49:                                         ; preds = %if.end45
  br i1 %cmp4, label %if.end49.while.body82_crit_edge, label %for.inc.sink.split

if.end49.while.body82_crit_edge:                  ; preds = %if.end49
  br label %while.body82

while.body82:                                     ; preds = %while.body82.while.body82_crit_edge, %if.end49.while.body82_crit_edge
  %__ms77.0137 = phi i32 [ %dec80, %while.body82.while.body82_crit_edge ], [ %div, %if.end49.while.body82_crit_edge ]
  %dec80 = add nsw i32 %__ms77.0137, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #4
  %tobool81.not = icmp eq i32 %dec80, 0
  br i1 %tobool81.not, label %while.body82.for.inc_crit_edge, label %while.body82.while.body82_crit_edge

while.body82.while.body82_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body82

while.body82.for.inc_crit_edge:                   ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %11(i32 noundef %usec_interval) #4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %while.body82.for.inc_crit_edge
  %inc = add i16 %i.0139, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ult i32 %conv, %iterations
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end38.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %if.end45.for.end_crit_edge ], [ true, %if.end38.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %ret_val.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end45.for.end_crit_edge ], [ %call42, %if.end38.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %frombool = zext i1 %cmp.lcssa to i8
  %12 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %success, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status) #4
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_config_collision_dist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %call = call i32 %3(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call fastcc void @igb_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %6 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_data, align 2
  %call3 = call i32 %5(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call9 = call i32 %9(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %12 = and i16 %11, -12289
  store i16 %12, ptr %phy_data, align 2
  %13 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg, align 4
  %call19 = call i32 %14(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body23, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body23:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_igp, %if.then28)) #4
          to label %do.end33 [label %if.then28], !srcloc !200

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_data, align 2
  %conv30 = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug380, ptr noundef %call29, ptr noundef nonnull @.str.30, i32 noundef %conv30) #4
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748) #4
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 25
  %18 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %do.end33.out_crit_edge, label %do.body37

do.end33.out_crit_edge:                           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body37:                                        ; preds = %do.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_igp, %if.then49)) #4
          to label %do.end55 [label %if.then49], !srcloc !200

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug381, ptr noundef %call50, ptr noundef nonnull @.str.31) #4
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body37
  %call56 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 10000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.end55.out_crit_edge

do.end55.out_crit_edge:                           ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end59:                                         ; preds = %do.end55
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool60.not = icmp eq i8 %21, 0
  br i1 %tobool60.not, label %do.body63, label %if.end59.if.end82_crit_edge

if.end59.if.end82_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

do.body63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_igp, %if.then75)) #4
          to label %if.end82 [label %if.then75], !srcloc !200

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  %call76 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug382, ptr noundef %call76, ptr noundef nonnull @.str.32) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %do.body63, %if.end59.if.end82_crit_edge
  %call83 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 10000, ptr noundef nonnull %link)
  br label %out

out:                                              ; preds = %if.end82, %do.end55.out_crit_edge, %do.end33.out_crit_edge, %if.end12.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call9, %if.end6.out_crit_edge ], [ %call19, %if.end12.out_crit_edge ], [ %call56, %do.end55.out_crit_edge ], [ %call83, %if.end82 ], [ 0, %do.end33.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_phy_force_speed_duplex_setup(ptr noundef %hw, ptr nocapture noundef %phy_ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %current_mode, align 4
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #4
  %1 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %phy_ctrl, align 2
  %3 = and i16 %2, -4097
  store i16 %3, ptr %phy_ctrl, align 2
  %forced_speed_duplex = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %forced_speed_duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %forced_speed_duplex, align 2
  %6 = and i8 %5, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %or = and i32 %call, -6946
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and7 = or i32 %or, 6144
  %7 = and i16 %2, -4353
  %8 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_setup, %if.then16)) #4
          to label %if.end44 [label %if.then16], !srcloc !200

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug386, ptr noundef %call17, ptr noundef nonnull @.str.64) #4
  br label %if.end44

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or20 = or i32 %or, 6145
  %9 = or i16 %3, 256
  %10 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_setup, %if.then37)) #4
          to label %if.end44 [label %if.then37], !srcloc !200

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug387, ptr noundef %call38, ptr noundef nonnull @.str.65) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.else, %if.then16, %if.then
  %ctrl.0 = phi i32 [ %and7, %if.then16 ], [ %or20, %if.then37 ], [ %and7, %if.then ], [ %or20, %if.else ]
  %11 = ptrtoint ptr %forced_speed_duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %forced_speed_duplex, align 2
  %13 = and i8 %12, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool48.not = icmp eq i8 %13, 0
  br i1 %tobool48.not, label %if.else77, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %or50 = or i32 %ctrl.0, 256
  %14 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_ctrl, align 2
  %16 = and i16 %15, -8257
  %17 = or i16 %16, 8192
  store i16 %17, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_setup, %if.then70)) #4
          to label %if.end105 [label %if.then70], !srcloc !200

if.then70:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  %call71 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug388, ptr noundef %call71, ptr noundef nonnull @.str.66) #4
  br label %if.end105

if.else77:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %and78 = and i32 %ctrl.0, -769
  %18 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_ctrl, align 2
  %20 = and i16 %19, -8257
  store i16 %20, ptr %phy_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_setup, %if.then98)) #4
          to label %if.end105 [label %if.then98], !srcloc !200

if.then98:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #6
  %call99 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug389, ptr noundef %call99, ptr noundef nonnull @.str.67) #4
  br label %if.end105

if.end105:                                        ; preds = %if.then98, %if.else77, %if.then70, %if.then49
  %ctrl.1 = phi i32 [ %or50, %if.then70 ], [ %and78, %if.then98 ], [ %or50, %if.then49 ], [ %and78, %if.else77 ]
  tail call void @igb_config_collision_dist(ptr noundef %hw) #4
  %hw_addr111 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %hw_addr111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr111, align 4
  %tobool112.not = icmp eq ptr %22, null
  br i1 %tobool112.not, label %if.end105.if.end125_crit_edge, label %do.body122, !prof !201

if.end105.if.end125_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

do.body122:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !209
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %23) #4, !srcloc !203
  br label %if.end125

if.end125:                                        ; preds = %do.body122, %if.end105.if.end125_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_ctrl.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !199
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp.not = icmp eq i32 %3, 9
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then:                                          ; preds = %entry
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %call = call i32 %5(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup167_crit_edge

if.then.cleanup167_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_data, align 2
  %8 = and i16 %7, -97
  store i16 %8, ptr %phy_data, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call5 = call i32 %10(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %if.end.cleanup167_crit_edge

if.end.cleanup167_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_m88, %if.then14)) #4
          to label %if.end20 [label %if.then14], !srcloc !200

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %11 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phy_data, align 2
  %conv16 = zext i16 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug383, ptr noundef %call15, ptr noundef nonnull @.str.34, i32 noundef %conv16) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %do.body9, %entry.if.end20_crit_edge
  %read_reg22 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %13 = ptrtoint ptr %read_reg22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg22, align 4
  %call23 = call i32 %14(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup167_crit_edge

if.end20.cleanup167_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end26:                                         ; preds = %if.end20
  call fastcc void @igb_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %write_reg28 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %15 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg28, align 4
  %17 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_data, align 2
  %call29 = call i32 %16(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup167_crit_edge

if.end26.cleanup167_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end32:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  %19 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %phy_ctrl.i, align 2, !annotation !199
  %20 = ptrtoint ptr %read_reg22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg22, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end32.if.end36_crit_edge, label %if.end.i

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end.i:                                         ; preds = %if.end32
  %call.i = call i32 %21(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.igb_phy_sw_reset.exit_crit_edge

if.end.i.igb_phy_sw_reset.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_phy_sw_reset.exit

if.end6.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_ctrl.i, align 2
  %24 = or i16 %23, -32768
  store i16 %24, ptr %phy_ctrl.i, align 2
  %25 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg28, align 4
  %call10.i = call i32 %26(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.igb_phy_sw_reset.exit_crit_edge

if.end6.i.igb_phy_sw_reset.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_phy_sw_reset.exit

if.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #4
  br label %if.end36

igb_phy_sw_reset.exit:                            ; preds = %if.end6.i.igb_phy_sw_reset.exit_crit_edge, %if.end.i.igb_phy_sw_reset.exit_crit_edge
  %ret_val.0.i = phi i32 [ %call.i, %if.end.i.igb_phy_sw_reset.exit_crit_edge ], [ %call10.i, %if.end6.i.igb_phy_sw_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  br label %cleanup167

if.end36:                                         ; preds = %if.end13.i, %if.end32.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl.i) #4
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 25
  %28 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not = icmp eq i8 %29, 0
  br i1 %tobool37.not, label %if.end36.if.end110_crit_edge, label %do.body40

if.end36.if.end110_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

do.body40:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_m88, %if.then52)) #4
          to label %do.end58 [label %if.then52], !srcloc !200

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug384, ptr noundef %call53, ptr noundef nonnull @.str.35) #4
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %do.body40
  %call59 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %do.end58.cleanup167_crit_edge

do.end58.cleanup167_crit_edge:                    ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end62:                                         ; preds = %do.end58
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool63.not = icmp eq i8 %31, 0
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.end105_crit_edge

if.end62.if.end105_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then64:                                        ; preds = %if.end62
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %33, label %sw.default [
    i32 21040576, label %if.then64.do.body75_crit_edge
    i32 21040272, label %if.then64.do.body75_crit_edge246
    i32 21040800, label %if.then64.do.body75_crit_edge247
    i32 21040592, label %if.then64.do.body75_crit_edge248
    i32 21040128, label %if.then64.do.body75_crit_edge249
  ]

if.then64.do.body75_crit_edge249:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.then64.do.body75_crit_edge248:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.then64.do.body75_crit_edge247:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.then64.do.body75_crit_edge246:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

if.then64.do.body75_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

sw.default:                                       ; preds = %if.then64
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp68.not = icmp eq i32 %36, 2
  br i1 %cmp68.not, label %if.else, label %sw.default.do.body75_crit_edge

sw.default.do.body75_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body75

do.body75:                                        ; preds = %sw.default.do.body75_crit_edge, %if.then64.do.body75_crit_edge, %if.then64.do.body75_crit_edge246, %if.then64.do.body75_crit_edge247, %if.then64.do.body75_crit_edge248, %if.then64.do.body75_crit_edge249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_m88, %if.then87)) #4
          to label %if.end105 [label %if.then87], !srcloc !200

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  %call88 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug385, ptr noundef %call88, ptr noundef nonnull @.str.32) #4
  br label %if.end105

if.else:                                          ; preds = %sw.default
  %37 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg28, align 4
  %call96 = call i32 %38(ptr noundef %hw, i32 noundef 29, i16 noundef zeroext 29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.else.cleanup167_crit_edge

if.else.cleanup167_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end99:                                         ; preds = %if.else
  %39 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg28, align 4
  %tobool.not.i226 = icmp eq ptr %40, null
  br i1 %tobool.not.i226, label %if.end99.if.end105_crit_edge, label %if.end.i229

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.end.i229:                                      ; preds = %if.end99
  %call.i227 = call i32 %40(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 193) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool4.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool4.not.i228, label %igb_phy_reset_dsp.exit, label %if.end.i229.cleanup167_crit_edge

if.end.i229.cleanup167_crit_edge:                 ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

igb_phy_reset_dsp.exit:                           ; preds = %if.end.i229
  %41 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg28, align 4
  %call10.i230 = call i32 %42(ptr noundef %hw, i32 noundef 30, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i230)
  %tobool101.not = icmp eq i32 %call10.i230, 0
  br i1 %tobool101.not, label %igb_phy_reset_dsp.exit.if.end105_crit_edge, label %igb_phy_reset_dsp.exit.cleanup167_crit_edge

igb_phy_reset_dsp.exit.cleanup167_crit_edge:      ; preds = %igb_phy_reset_dsp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

igb_phy_reset_dsp.exit.if.end105_crit_edge:       ; preds = %igb_phy_reset_dsp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.end105:                                        ; preds = %igb_phy_reset_dsp.exit.if.end105_crit_edge, %if.end99.if.end105_crit_edge, %if.then87, %do.body75, %if.end62.if.end105_crit_edge
  %call106 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end105.if.end110_crit_edge, label %if.end105.cleanup167_crit_edge

if.end105.cleanup167_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110

if.end110:                                        ; preds = %if.end105.if.end110_crit_edge, %if.end36.if.end110_crit_edge
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp113.not = icmp eq i32 %44, 2
  br i1 %cmp113.not, label %lor.lhs.false, label %if.end110.cleanup167_crit_edge

if.end110.cleanup167_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

lor.lhs.false:                                    ; preds = %if.end110
  %id116 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %45 = ptrtoint ptr %id116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id116, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %46, label %if.end140 [
    i32 21040576, label %lor.lhs.false.cleanup167_crit_edge
    i32 21040272, label %lor.lhs.false.cleanup167_crit_edge250
    i32 21040800, label %lor.lhs.false.cleanup167_crit_edge251
    i32 21040592, label %lor.lhs.false.cleanup167_crit_edge252
    i32 21040128, label %lor.lhs.false.cleanup167_crit_edge253
  ]

lor.lhs.false.cleanup167_crit_edge253:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

lor.lhs.false.cleanup167_crit_edge252:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

lor.lhs.false.cleanup167_crit_edge251:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

lor.lhs.false.cleanup167_crit_edge250:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

lor.lhs.false.cleanup167_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end140:                                        ; preds = %lor.lhs.false
  %48 = ptrtoint ptr %read_reg22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg22, align 4
  %call143 = call i32 %49(ptr noundef %hw, i32 noundef 20, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end140.cleanup167_crit_edge

if.end140.cleanup167_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end146:                                        ; preds = %if.end140
  %50 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %phy_data, align 2
  %52 = or i16 %51, 112
  store i16 %52, ptr %phy_data, align 2
  %53 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_reg28, align 4
  %call151 = call i32 %54(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext %52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end146.cleanup167_crit_edge

if.end146.cleanup167_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end154:                                        ; preds = %if.end146
  %55 = ptrtoint ptr %read_reg22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_reg22, align 4
  %call157 = call i32 %56(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end154.cleanup167_crit_edge

if.end154.cleanup167_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup167

if.end160:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %phy_data, align 2
  %59 = or i16 %58, 2048
  store i16 %59, ptr %phy_data, align 2
  %60 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg28, align 4
  %call166 = call i32 %61(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %59) #4
  br label %cleanup167

cleanup167:                                       ; preds = %if.end160, %if.end154.cleanup167_crit_edge, %if.end146.cleanup167_crit_edge, %if.end140.cleanup167_crit_edge, %lor.lhs.false.cleanup167_crit_edge, %lor.lhs.false.cleanup167_crit_edge250, %lor.lhs.false.cleanup167_crit_edge251, %lor.lhs.false.cleanup167_crit_edge252, %lor.lhs.false.cleanup167_crit_edge253, %if.end110.cleanup167_crit_edge, %if.end105.cleanup167_crit_edge, %igb_phy_reset_dsp.exit.cleanup167_crit_edge, %if.end.i229.cleanup167_crit_edge, %if.else.cleanup167_crit_edge, %do.end58.cleanup167_crit_edge, %igb_phy_sw_reset.exit, %if.end26.cleanup167_crit_edge, %if.end20.cleanup167_crit_edge, %if.end.cleanup167_crit_edge, %if.then.cleanup167_crit_edge
  %ret_val.3 = phi i32 [ %call, %if.then.cleanup167_crit_edge ], [ %call5, %if.end.cleanup167_crit_edge ], [ %call23, %if.end20.cleanup167_crit_edge ], [ %call29, %if.end26.cleanup167_crit_edge ], [ %ret_val.0.i, %igb_phy_sw_reset.exit ], [ %call59, %do.end58.cleanup167_crit_edge ], [ %call106, %if.end105.cleanup167_crit_edge ], [ 0, %if.end110.cleanup167_crit_edge ], [ 0, %lor.lhs.false.cleanup167_crit_edge ], [ %call143, %if.end140.cleanup167_crit_edge ], [ %call151, %if.end146.cleanup167_crit_edge ], [ %call157, %if.end154.cleanup167_crit_edge ], [ %call166, %if.end160 ], [ 0, %lor.lhs.false.cleanup167_crit_edge250 ], [ 0, %lor.lhs.false.cleanup167_crit_edge251 ], [ 0, %lor.lhs.false.cleanup167_crit_edge252 ], [ 0, %lor.lhs.false.cleanup167_crit_edge253 ], [ %call10.i230, %igb_phy_reset_dsp.exit.cleanup167_crit_edge ], [ %call96, %if.else.cleanup167_crit_edge ], [ %call.i227, %if.end.i229.cleanup167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_set_d3_lplu_state(ptr noundef %hw, i1 noundef zeroext %active) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 %2(ptr noundef %hw, i32 noundef 25, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end7:                                          ; preds = %if.end
  br i1 %active, label %if.else53, label %if.then9

if.then9:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = and i16 %4, -5
  store i16 %5, ptr %data, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call12 = call i32 %7(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15:                                         ; preds = %if.then9
  %smart_speed = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 7
  %8 = ptrtoint ptr %smart_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smart_speed, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %9, label %if.end15.out_crit_edge [
    i32 1, label %if.then17
    i32 2, label %if.then35
  ]

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then17:                                        ; preds = %if.end15
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %call20 = call i32 %12(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then17.out_crit_edge

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %15 = or i16 %14, 128
  store i16 %15, ptr %data, align 2
  br label %out.sink.split

if.then35:                                        ; preds = %if.end15
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call38 = call i32 %17(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data, align 2
  %20 = and i16 %19, -129
  store i16 %20, ptr %data, align 2
  br label %out.sink.split

if.else53:                                        ; preds = %if.end7
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 13
  %21 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %autoneg_advertised, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %22, label %if.else53.out_crit_edge [
    i16 47, label %if.else53.if.then66_crit_edge
    i16 15, label %if.else53.if.then66_crit_edge121
    i16 3, label %if.else53.if.then66_crit_edge122
  ]

if.else53.if.then66_crit_edge122:                 ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

if.else53.if.then66_crit_edge121:                 ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

if.else53.if.then66_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

if.else53.out_crit_edge:                          ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then66:                                        ; preds = %if.else53.if.then66_crit_edge, %if.else53.if.then66_crit_edge121, %if.else53.if.then66_crit_edge122
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 2
  %26 = or i16 %25, 4
  store i16 %26, ptr %data, align 2
  %write_reg71 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %27 = ptrtoint ptr %write_reg71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg71, align 4
  %call72 = call i32 %28(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext %26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then66.out_crit_edge

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end75:                                         ; preds = %if.then66
  %29 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_reg, align 4
  %call78 = call i32 %30(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %33 = and i16 %32, -129
  store i16 %33, ptr %data, align 2
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end81, %if.end41, %if.end23
  %write_reg.sink = phi ptr [ %write_reg, %if.end41 ], [ %write_reg, %if.end23 ], [ %write_reg71, %if.end81 ]
  %.sink = phi i16 [ %20, %if.end41 ], [ %15, %if.end23 ], [ %33, %if.end81 ]
  %34 = ptrtoint ptr %write_reg.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg.sink, align 4
  %call47 = call i32 %35(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext %.sink) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end75.out_crit_edge, %if.then66.out_crit_edge, %if.else53.out_crit_edge, %if.then35.out_crit_edge, %if.then17.out_crit_edge, %if.end15.out_crit_edge, %if.then9.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call72, %if.then66.out_crit_edge ], [ %call78, %if.end75.out_crit_edge ], [ %call12, %if.then9.out_crit_edge ], [ %call20, %if.then17.out_crit_edge ], [ %call38, %if.then35.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %if.end15.out_crit_edge ], [ 0, %if.else53.out_crit_edge ], [ %call47, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_downshift(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 8
  br i1 %3, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  %speed_downgraded = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 24
  %4 = ptrtoint ptr %speed_downgraded to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %speed_downgraded, align 1
  br label %out

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -97, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.igb_check_downshift, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep13 = getelementptr inbounds [8 x i32], ptr @switch.table.igb_check_downshift.68, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load14 = load i32, ptr %switch.gep13, align 4
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call = call i32 %9(ptr noundef %hw, i32 noundef %switch.load, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %switch.lookup.out_crit_edge

switch.lookup.out_crit_edge:                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %conv3 = zext i16 %11 to i32
  %and = and i32 %switch.load14, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  %speed_downgraded7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 24
  %frombool = zext i1 %tobool5 to i8
  %12 = ptrtoint ptr %speed_downgraded7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %speed_downgraded7, align 1
  br label %out

out:                                              ; preds = %if.then, %switch.lookup.out_crit_edge, %sw.default
  %ret_val.0 = phi i32 [ 0, %sw.default ], [ %call, %switch.lookup.out_crit_edge ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_check_polarity_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %5 = lshr i16 %4, 1
  %.lobit = and i16 %5, 1
  %6 = zext i16 %.lobit to i32
  %cable_polarity = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %cable_polarity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cable_polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = lshr i16 %4, 7
  %6 = and i16 %5, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp = icmp ugt i16 %6, 5
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i16 %6 to i32
  %arrayidx = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %conv3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 17
  %9 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %min_cable_length, align 4
  %add = add nuw nsw i32 %conv3, 1
  %arrayidx8 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %add
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx8, align 2
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 16
  %12 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %max_cable_length, align 2
  %conv10 = zext i16 %8 to i32
  %conv12 = zext i16 %11 to i32
  %add13 = add nuw nsw i32 %conv12, %conv10
  %div24 = lshr i32 %add13, 1
  %conv14 = trunc i32 %div24 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %13 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %cable_length, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ 0, %if.end6 ], [ -2, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_m88_gen2(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %phy_data2 = alloca i16, align 2
  %default_page = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data2) #4
  %1 = ptrtoint ptr %phy_data2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_data2, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %default_page) #4
  %2 = ptrtoint ptr %default_page to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %default_page, align 2, !annotation !199
  %id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %4, label %entry.out_crit_edge [
    i32 21040800, label %entry.sw.bb_crit_edge
    i32 21040592, label %entry.sw.bb_crit_edge310
    i32 21040576, label %entry.sw.bb_crit_edge311
    i32 21040128, label %entry.sw.bb_crit_edge312
    i32 21040272, label %sw.bb173
  ]

entry.sw.bb_crit_edge312:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge311:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge310:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge310, %entry.sw.bb_crit_edge311, %entry.sw.bb_crit_edge312
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call = call i32 %7(ptr noundef %hw, i32 noundef 22, ptr noundef nonnull %default_page) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %sw.bb
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call4 = call i32 %9(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg, align 4
  %call10 = call i32 %11(ptr noundef %hw, i32 noundef 21, ptr noundef nonnull %phy_data2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %phy_data2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phy_data2, align 2
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 4
  %call18 = call i32 %15(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end21:                                         ; preds = %if.end13
  %16 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_data, align 2
  %18 = and i16 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not.not = icmp eq i16 %18, 0
  %div.rhs.trunc = select i1 %tobool24.not.not, i16 100, i16 1
  %div306 = udiv i16 %17, %div.rhs.trunc
  %pair_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 18
  %19 = ptrtoint ptr %pair_length to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %div306, ptr %pair_length, align 2
  %20 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_reg, align 4
  %call35 = call i32 %21(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end38:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_data, align 2
  %div43307 = udiv i16 %23, %div.rhs.trunc
  %arrayidx46 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 18, i32 1
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %div43307, ptr %arrayidx46, align 2
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg, align 4
  %call75 = call i32 %26(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end78:                                         ; preds = %if.end38
  %27 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_data, align 2
  %div83308 = udiv i16 %28, %div.rhs.trunc
  %arrayidx86 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 18, i32 2
  %29 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %div83308, ptr %arrayidx86, align 2
  %30 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg, align 4
  %call121 = call i32 %31(ptr noundef %hw, i32 noundef 19, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end124:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %32 = call i16 @llvm.umax.i16(i16 %div306, i16 %div43307)
  %33 = call i16 @llvm.umax.i16(i16 %32, i16 %div83308)
  %div.zext = zext i16 %div306 to i32
  %div43.zext = zext i16 %div43307 to i32
  %34 = call i32 @llvm.umin.i32(i32 %div.zext, i32 %div43.zext)
  %div83.zext = zext i16 %div83308 to i32
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 %div83.zext)
  %add = add nuw nsw i32 %div43.zext, %div.zext
  %add90 = add nuw nsw i32 %add, %div83.zext
  %36 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %phy_data, align 2
  %div129309 = udiv i16 %37, %div.rhs.trunc
  %div129.zext = zext i16 %div129309 to i32
  %arrayidx132 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 18, i32 3
  %38 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %div129309, ptr %arrayidx132, align 2
  %add136 = add nuw nsw i32 %add90, %div129.zext
  %39 = call i32 @llvm.umin.i32(i32 %35, i32 %div129.zext)
  %conv150 = trunc i32 %39 to i16
  %40 = call i16 @llvm.umax.i16(i16 %33, i16 %div129309)
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 17
  %41 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv150, ptr %min_cable_length, align 4
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 16
  %42 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %40, ptr %max_cable_length, align 2
  %div165305 = lshr i32 %add136, 2
  %conv166 = trunc i32 %div165305 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %43 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv166, ptr %cable_length, align 4
  %44 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg, align 4
  %46 = ptrtoint ptr %default_page to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %default_page, align 2
  %call169 = call i32 %45(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %47) #4
  br label %out

sw.bb173:                                         ; preds = %entry
  %read_reg175 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %48 = ptrtoint ptr %read_reg175 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_reg175, align 4
  %call176 = call i32 %49(ptr noundef %hw, i32 noundef 22, ptr noundef nonnull %default_page) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %sw.bb173.out_crit_edge

sw.bb173.out_crit_edge:                           ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end179:                                        ; preds = %sw.bb173
  %write_reg181 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %50 = ptrtoint ptr %write_reg181 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg181, align 4
  %call182 = call i32 %51(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end179.out_crit_edge

if.end179.out_crit_edge:                          ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end185:                                        ; preds = %if.end179
  %52 = ptrtoint ptr %read_reg175 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_reg175, align 4
  %call188 = call i32 %53(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end185.out_crit_edge

if.end185.out_crit_edge:                          ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end191:                                        ; preds = %if.end185
  %54 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %phy_data, align 2
  %56 = lshr i16 %55, 7
  %57 = and i16 %56, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %57)
  %cmp196 = icmp ugt i16 %57, 5
  br i1 %cmp196, label %if.end191.out_crit_edge, label %if.end199

if.end191.out_crit_edge:                          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end199:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #6
  %conv195 = zext i16 %57 to i32
  %arrayidx200 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %conv195
  %58 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx200, align 2
  %min_cable_length201 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 17
  %60 = ptrtoint ptr %min_cable_length201 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %min_cable_length201, align 4
  %add203 = add nuw nsw i32 %conv195, 1
  %arrayidx204 = getelementptr [7 x i16], ptr @e1000_m88_cable_length_table, i32 0, i32 %add203
  %61 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx204, align 2
  %max_cable_length205 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 16
  %63 = ptrtoint ptr %max_cable_length205 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %max_cable_length205, align 2
  %conv207 = zext i16 %59 to i32
  %conv209 = zext i16 %62 to i32
  %add210 = add nuw nsw i32 %conv209, %conv207
  %div211304 = lshr i32 %add210, 1
  %conv212 = trunc i32 %div211304 to i16
  %cable_length213 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %64 = ptrtoint ptr %cable_length213 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv212, ptr %cable_length213, align 4
  %65 = ptrtoint ptr %write_reg181 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg181, align 4
  %67 = ptrtoint ptr %default_page to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %default_page, align 2
  %call216 = call i32 %66(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext %68) #4
  br label %out

out:                                              ; preds = %if.end199, %if.end191.out_crit_edge, %if.end185.out_crit_edge, %if.end179.out_crit_edge, %sw.bb173.out_crit_edge, %if.end124, %if.end78.out_crit_edge, %if.end38.out_crit_edge, %if.end21.out_crit_edge, %if.end13.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call176, %sw.bb173.out_crit_edge ], [ %call182, %if.end179.out_crit_edge ], [ %call188, %if.end185.out_crit_edge ], [ %call216, %if.end199 ], [ %call, %sw.bb.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ %call10, %if.end7.out_crit_edge ], [ %call18, %if.end13.out_crit_edge ], [ %call35, %if.end21.out_crit_edge ], [ %call75, %if.end38.out_crit_edge ], [ %call121, %if.end78.out_crit_edge ], [ %call169, %if.end124 ], [ -2, %if.end191.out_crit_edge ], [ -2, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %default_page) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_igp_2(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 4529, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = add i16 %4, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %5)
  %6 = icmp ult i16 %5, 8192
  br i1 %6, label %if.end.out_crit_edge, label %if.end13

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

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
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call.1 = call i32 %13(ptr noundef %hw, i32 noundef 4785, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.1:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_data, align 2
  %16 = add i16 %15, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %16)
  %17 = icmp ult i16 %16, 8192
  br i1 %17, label %if.end.1.out_crit_edge, label %if.end13.1

if.end.1.out_crit_edge:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

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
  %25 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_reg, align 4
  %call.2 = call i32 %26(ptr noundef %hw, i32 noundef 5297, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end13.1.out_crit_edge

if.end13.1.out_crit_edge:                         ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.2:                                         ; preds = %if.end13.1
  %27 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %phy_data, align 2
  %29 = add i16 %28, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %29)
  %30 = icmp ult i16 %29, 8192
  br i1 %30, label %if.end.2.out_crit_edge, label %if.end13.2

if.end.2.out_crit_edge:                           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

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
  %38 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_reg, align 4
  %call.3 = call i32 %39(ptr noundef %hw, i32 noundef 6321, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end13.2.out_crit_edge

if.end13.2.out_crit_edge:                         ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.3:                                         ; preds = %if.end13.2
  %40 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_data, align 2
  %42 = add i16 %41, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %42)
  %43 = icmp ult i16 %42, 8192
  br i1 %43, label %if.end.3.out_crit_edge, label %if.end13.3

if.end.3.out_crit_edge:                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
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
  %phi.cast90 = add nsw i16 %57, -15
  %cond = select i1 %cmp52, i16 %phi.cast90, i16 0
  %min_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 17
  %58 = ptrtoint ptr %min_cable_length to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %cond, ptr %min_cable_length, align 4
  %conv59 = add nuw i16 %57, 15
  %max_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 16
  %59 = ptrtoint ptr %max_cable_length to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv59, ptr %max_cable_length, align 2
  %conv61 = zext i16 %cond to i32
  %conv63 = zext i16 %conv59 to i32
  %add64 = add nuw nsw i32 %conv61, %conv63
  %div6591 = lshr i32 %add64, 1
  %conv66 = trunc i32 %div6591 to i16
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %60 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv66, ptr %cable_length, align 4
  br label %out

out:                                              ; preds = %if.end13.3, %if.end.3.out_crit_edge, %if.end13.2.out_crit_edge, %if.end.2.out_crit_edge, %if.end13.1.out_crit_edge, %if.end.1.out_crit_edge, %if.end13.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ 0, %if.end13.3 ], [ %call, %entry.out_crit_edge ], [ -2, %if.end.out_crit_edge ], [ %call.1, %if.end13.out_crit_edge ], [ -2, %if.end.1.out_crit_edge ], [ %call.2, %if.end13.1.out_crit_edge ], [ -2, %if.end.2.out_crit_edge ], [ %call.3, %if.end13.2.out_crit_edge ], [ -2, %if.end.3.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_m88(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %1 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_info_m88.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_info_m88, %if.then5)) #4
          to label %out [label %if.then5], !srcloc !200

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_info_m88.__UNIQUE_ID_ddebug403, ptr noundef %call6, ptr noundef nonnull @.str.37) #4
  br label %out

if.end9:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #4
  %3 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !199
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %5(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %call42.i = call i32 %7(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %igb_phy_has_link.exit

if.end45.i:                                       ; preds = %if.end9
  %8 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_status.i, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool47.not.i = icmp eq i16 %10, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end36

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_info_m88.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_info_m88, %if.then29)) #4
          to label %out [label %if.then29], !srcloc !200

igb_phy_has_link.exit:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  br label %out

if.then29:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_info_m88.__UNIQUE_ID_ddebug404, ptr noundef %call30, ptr noundef nonnull @.str.38) #4
  br label %out

if.end36:                                         ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %call37 = call i32 %13(ptr noundef %hw, i32 noundef 16, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end40:                                         ; preds = %if.end36
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_data, align 2
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 22
  %16 = trunc i16 %15 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %data.i, align 2, !annotation !199
  %21 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i, align 4
  %call.i117 = call i32 %22(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end47, label %igb_check_polarity_m88.exit

igb_check_polarity_m88.exit:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  br label %out

if.end47:                                         ; preds = %if.end40
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data.i, align 2
  %25 = lshr i16 %24, 1
  %.lobit.i = and i16 %25, 1
  %26 = zext i16 %.lobit.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %27 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  %28 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_reg.i, align 4
  %call50 = call i32 %29(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end53:                                         ; preds = %if.end47
  %30 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %phy_data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 21
  %32 = trunc i16 %31 to i8
  %33 = lshr i8 %32, 6
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %is_mdix, align 4
  %36 = and i16 %31, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %36)
  %cmp62 = icmp eq i16 %36, -32768
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end53
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %37 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_cable_length, align 4
  %call66 = call i32 %38(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then64.out_crit_edge

if.then64.out_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end69:                                         ; preds = %if.then64
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg.i, align 4
  %call72 = call i32 %40(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end69.out_crit_edge

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_data, align 2
  %43 = lshr i16 %42, 13
  %.lobit = and i16 %43, 1
  %44 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %local_rx, align 4
  %46 = lshr i16 %42, 12
  %.lobit112 = and i16 %46, 1
  %47 = zext i16 %.lobit112 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %remote_rx, align 4
  br label %out

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %49 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 255, ptr %cable_length, align 4
  %local_rx84 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %local_rx84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 255, ptr %local_rx84, align 4
  %remote_rx85 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %51 = ptrtoint ptr %remote_rx85 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 255, ptr %remote_rx85, align 4
  br label %out

out:                                              ; preds = %if.else, %if.end75, %if.end69.out_crit_edge, %if.then64.out_crit_edge, %if.end47.out_crit_edge, %igb_check_polarity_m88.exit, %if.end36.out_crit_edge, %if.then29, %igb_phy_has_link.exit, %if.end49.i, %if.then5, %do.body2
  %ret_val.0 = phi i32 [ %call42.i, %igb_phy_has_link.exit ], [ %call37, %if.end36.out_crit_edge ], [ %call.i117, %igb_check_polarity_m88.exit ], [ %call50, %if.end47.out_crit_edge ], [ %call66, %if.then64.out_crit_edge ], [ %call72, %if.end69.out_crit_edge ], [ 0, %if.end75 ], [ 0, %if.else ], [ -3, %if.then5 ], [ -3, %if.then29 ], [ -3, %do.body2 ], [ -3, %if.end49.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_igp(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #4
  %1 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !199
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call42.i = call i32 %5(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %igb_phy_has_link.exit

if.end45.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_status.i, align 2
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool47.not.i = icmp eq i16 %8, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end14

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_info_igp.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_info_igp, %if.then9)) #4
          to label %out [label %if.then9], !srcloc !200

igb_phy_has_link.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  br label %out

if.then9:                                         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_info_igp.__UNIQUE_ID_ddebug405, ptr noundef %call10, ptr noundef nonnull @.str.38) #4
  br label %out

if.end14:                                         ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 22
  %10 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %data.i, align 2, !annotation !199
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %call.i74 = call i32 %13(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i, label %if.end14.igb_check_polarity_igp.exit.thread_crit_edge

if.end14.igb_check_polarity_igp.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_check_polarity_igp.exit.thread

if.end.i:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %15)
  %cmp.i76 = icmp ugt i16 %15, -16385
  %..i = select i1 %cmp.i76, i32 180, i32 17
  %16 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i, align 4
  %call8.i = call i32 %17(ptr noundef %hw, i32 noundef %..i, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end18, label %if.end.i.igb_check_polarity_igp.exit.thread_crit_edge

if.end.i.igb_check_polarity_igp.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_check_polarity_igp.exit.thread

igb_check_polarity_igp.exit.thread:               ; preds = %if.end.i.igb_check_polarity_igp.exit.thread_crit_edge, %if.end14.igb_check_polarity_igp.exit.thread_crit_edge
  %ret_val.0.i.ph = phi i32 [ %call8.i, %if.end.i.igb_check_polarity_igp.exit.thread_crit_edge ], [ %call.i74, %if.end14.igb_check_polarity_igp.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  br label %out

if.end18:                                         ; preds = %if.end.i
  %.22.i = select i1 %cmp.i76, i32 120, i32 2
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.i, align 2
  %conv11.i = zext i16 %19 to i32
  %and13.i = and i32 %.22.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp ne i32 %and13.i, 0
  %cond.i = zext i1 %tobool14.not.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  %21 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg.i, align 4
  %call19 = call i32 %22(ptr noundef %hw, i32 noundef 17, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end22:                                         ; preds = %if.end18
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 21
  %25 = lshr i16 %24, 11
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %is_mdix, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %24)
  %cmp = icmp ugt i16 %24, -16385
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end22
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %29 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_cable_length, align 4
  %call31 = call i32 %30(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end34:                                         ; preds = %if.then29
  %31 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_reg.i, align 4
  %call37 = call i32 %32(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data, align 2
  %35 = lshr i16 %34, 13
  %.lobit = and i16 %35, 1
  %36 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %local_rx, align 4
  %38 = lshr i16 %34, 12
  %.lobit72 = and i16 %38, 1
  %39 = zext i16 %.lobit72 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %remote_rx, align 4
  br label %out

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %41 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 255, ptr %cable_length, align 4
  %local_rx49 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %local_rx49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 255, ptr %local_rx49, align 4
  %remote_rx50 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %remote_rx50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 255, ptr %remote_rx50, align 4
  br label %out

out:                                              ; preds = %if.else, %if.end40, %if.end34.out_crit_edge, %if.then29.out_crit_edge, %if.end18.out_crit_edge, %igb_check_polarity_igp.exit.thread, %if.then9, %igb_phy_has_link.exit, %if.end49.i
  %ret_val.0 = phi i32 [ %call42.i, %igb_phy_has_link.exit ], [ %call19, %if.end18.out_crit_edge ], [ %call31, %if.then29.out_crit_edge ], [ %call37, %if.end34.out_crit_edge ], [ 0, %if.end40 ], [ 0, %if.else ], [ -3, %if.then9 ], [ -3, %if.end49.i ], [ %ret_val.0.i.ph, %igb_check_polarity_igp.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_hw_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22560) #4
  %and.i = and i32 %call.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %phy1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %call2 = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #4
  %hw_addr8 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr8, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end5.if.end17_crit_edge, label %do.body14, !prof !201

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !210
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call6, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %4) #4, !srcloc !203
  br label %if.end17

if.end17:                                         ; preds = %do.body14, %if.end5.if.end17_crit_edge
  %call20 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %reset_delay_us = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 10
  %5 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_delay_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #4
  %8 = ptrtoint ptr %hw_addr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr8, align 4
  %tobool34.not = icmp eq ptr %9, null
  br i1 %tobool34.not, label %if.end17.if.end48_crit_edge, label %do.body44, !prof !201

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body44:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !211
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %call6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %10) #4, !srcloc !203
  br label %if.end48

if.end48:                                         ; preds = %do.body44, %if.end17.if.end48_crit_edge
  %call51 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 32212200) #4
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 8
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  tail call void %13(ptr noundef %hw) #4
  %get_cfg_done = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %14 = ptrtoint ptr %get_cfg_done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_cfg_done, align 4
  %call54 = tail call i32 %15(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %if.end48, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call54, %if.end48 ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_init_script_igp3(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_init_script_igp3.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_init_script_igp3, %if.then)) #4
          to label %do.end5 [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_init_script_igp3.__UNIQUE_ID_ddebug408, ptr noundef %call4, ptr noundef nonnull @.str.41) #4
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %call6 = tail call i32 %1(ptr noundef %hw, i32 noundef 12123, i16 noundef zeroext -28648) #4
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call10 = tail call i32 %3(ptr noundef %hw, i32 noundef 12114, i16 noundef zeroext 0) #4
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call14 = tail call i32 %5(ptr noundef %hw, i32 noundef 12209, i16 noundef zeroext -29916) #4
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call18 = tail call i32 %7(ptr noundef %hw, i32 noundef 12210, i16 noundef zeroext -1808) #4
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call22 = tail call i32 %9(ptr noundef %hw, i32 noundef 8208, i16 noundef zeroext 4272) #4
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call26 = tail call i32 %11(ptr noundef %hw, i32 noundef 8209, i16 noundef zeroext 0) #4
  %12 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg, align 4
  %call30 = tail call i32 %13(ptr noundef %hw, i32 noundef 8413, i16 noundef zeroext 9370) #4
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %call34 = tail call i32 %15(ptr noundef %hw, i32 noundef 8414, i16 noundef zeroext 211) #4
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %call38 = tail call i32 %17(ptr noundef %hw, i32 noundef 10420, i16 noundef zeroext 1230) #4
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  %call42 = tail call i32 %19(ptr noundef %hw, i32 noundef 12144, i16 noundef zeroext 10724) #4
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %call46 = tail call i32 %21(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 320) #4
  %22 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg, align 4
  %call50 = tail call i32 %23(ptr noundef %hw, i32 noundef 7984, i16 noundef zeroext 5638) #4
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg, align 4
  %call54 = tail call i32 %25(ptr noundef %hw, i32 noundef 7985, i16 noundef zeroext -18412) #4
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %call58 = tail call i32 %27(ptr noundef %hw, i32 noundef 7989, i16 noundef zeroext 42) #4
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %call62 = tail call i32 %29(ptr noundef %hw, i32 noundef 7998, i16 noundef zeroext 103) #4
  %30 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg, align 4
  %call66 = tail call i32 %31(ptr noundef %hw, i32 noundef 8020, i16 noundef zeroext 101) #4
  %32 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg, align 4
  %call70 = tail call i32 %33(ptr noundef %hw, i32 noundef 8021, i16 noundef zeroext 42) #4
  %34 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg, align 4
  %call74 = tail call i32 %35(ptr noundef %hw, i32 noundef 8022, i16 noundef zeroext 42) #4
  %36 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg, align 4
  %call78 = tail call i32 %37(ptr noundef %hw, i32 noundef 8050, i16 noundef zeroext 16304) #4
  %38 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg, align 4
  %call82 = tail call i32 %39(ptr noundef %hw, i32 noundef 8054, i16 noundef zeroext -16129) #4
  %40 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg, align 4
  %call86 = tail call i32 %41(ptr noundef %hw, i32 noundef 8055, i16 noundef zeroext 7660) #4
  %42 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg, align 4
  %call90 = tail call i32 %43(ptr noundef %hw, i32 noundef 8056, i16 noundef zeroext -1553) #4
  %44 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg, align 4
  %call94 = tail call i32 %45(ptr noundef %hw, i32 noundef 8057, i16 noundef zeroext 528) #4
  %46 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg, align 4
  %call98 = tail call i32 %47(ptr noundef %hw, i32 noundef 6293, i16 noundef zeroext 3) #4
  %48 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg, align 4
  %call102 = tail call i32 %49(ptr noundef %hw, i32 noundef 6038, i16 noundef zeroext 8) #4
  %50 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg, align 4
  %call106 = tail call i32 %51(ptr noundef %hw, i32 noundef 6040, i16 noundef zeroext -12280) #4
  %52 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg, align 4
  %call110 = tail call i32 %53(ptr noundef %hw, i32 noundef 6296, i16 noundef zeroext -9960) #4
  %54 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg, align 4
  %call114 = tail call i32 %55(ptr noundef %hw, i32 noundef 6266, i16 noundef zeroext 2048) #4
  %56 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg, align 4
  %call118 = tail call i32 %57(ptr noundef %hw, i32 noundef 25, i16 noundef zeroext 141) #4
  %58 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg, align 4
  %call122 = tail call i32 %59(ptr noundef %hw, i32 noundef 27, i16 noundef zeroext 8320) #4
  %60 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg, align 4
  %call126 = tail call i32 %61(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext 69) #4
  %62 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg, align 4
  %call130 = tail call i32 %63(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext 4928) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_initialize_M88E1512_phy(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 255) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call4 = tail call i32 %3(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 8523) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call10 = tail call i32 %5(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8516) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call16 = tail call i32 %7(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 3112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call22 = tail call i32 %9(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8518) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call28 = tail call i32 %11(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext -19917) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg, align 4
  %call34 = tail call i32 %13(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8525) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %call40 = tail call i32 %15(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext -13300) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %call46 = tail call i32 %17(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8537) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  %call52 = tail call i32 %19(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 251) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %call58 = tail call i32 %21(ptr noundef %hw, i32 noundef 7, i16 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %22 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg, align 4
  %call64 = tail call i32 %23(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg, align 4
  %call70 = tail call i32 %25(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext -32767) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %call76 = tail call i32 %27(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  %call80 = tail call i32 @igb_phy_sw_reset(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end93, label %do.body83

do.body83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_initialize_M88E1512_phy.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_initialize_M88E1512_phy, %if.then88)) #4
          to label %cleanup [label %if.then88], !srcloc !200

if.then88:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  %call89 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_initialize_M88E1512_phy.__UNIQUE_ID_ddebug409, ptr noundef %call89, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end93:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then88, %do.body83, %if.end73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %if.then88 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ %call40, %if.end37.cleanup_crit_edge ], [ %call46, %if.end43.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ %call58, %if.end55.cleanup_crit_edge ], [ %call64, %if.end61.cleanup_crit_edge ], [ %call70, %if.end67.cleanup_crit_edge ], [ %call76, %if.end73.cleanup_crit_edge ], [ 0, %if.end93 ], [ %call80, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_initialize_M88E1543_phy(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %1(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 255) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %call4 = tail call i32 %3(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 8523) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %call10 = tail call i32 %5(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8516) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call16 = tail call i32 %7(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext 3112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg, align 4
  %call22 = tail call i32 %9(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8518) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call28 = tail call i32 %11(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext -19917) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg, align 4
  %call34 = tail call i32 %13(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8525) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg, align 4
  %call40 = tail call i32 %15(ptr noundef %hw, i32 noundef 17, i16 noundef zeroext -9204) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %call46 = tail call i32 %17(ptr noundef %hw, i32 noundef 16, i16 noundef zeroext 8537) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %18 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg, align 4
  %call52 = tail call i32 %19(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 251) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %call58 = tail call i32 %21(ptr noundef %hw, i32 noundef 7, i16 noundef zeroext 3085) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %22 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg, align 4
  %call64 = tail call i32 %23(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg, align 4
  %call70 = tail call i32 %25(ptr noundef %hw, i32 noundef 20, i16 noundef zeroext -32767) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %call76 = tail call i32 %27(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %call82 = tail call i32 %29(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext -28352) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end85:                                         ; preds = %if.end79
  %30 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg, align 4
  %call88 = tail call i32 %31(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  %call92 = tail call i32 @igb_phy_sw_reset(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end105, label %do.body95

do.body95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_initialize_M88E1543_phy.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_initialize_M88E1543_phy, %if.then100)) #4
          to label %cleanup [label %if.then100], !srcloc !200

if.then100:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %call101 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_initialize_M88E1543_phy.__UNIQUE_ID_ddebug410, ptr noundef %call101, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end105:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then100, %do.body95, %if.end85.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call92, %if.then100 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ %call40, %if.end37.cleanup_crit_edge ], [ %call46, %if.end43.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ %call58, %if.end55.cleanup_crit_edge ], [ %call64, %if.end61.cleanup_crit_edge ], [ %call70, %if.end67.cleanup_crit_edge ], [ %call76, %if.end73.cleanup_crit_edge ], [ %call82, %if.end79.cleanup_crit_edge ], [ %call88, %if.end85.cleanup_crit_edge ], [ 0, %if.end105 ], [ %call92, %do.body95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_power_up_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #4
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #4
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = and i16 %4, -2049
  store i16 %5, ptr %mii_reg, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call4 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_power_down_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #4
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #4
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = or i16 %4, 2048
  store i16 %5, ptr %mii_reg, align 2
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call4 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_phy_force_speed_duplex_82580(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %1 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %link, align 1, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 4
  %call = call i32 %3(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call fastcc void @igb_phy_force_speed_duplex_setup(ptr noundef %hw, ptr noundef nonnull %phy_data)
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %4 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg, align 4
  %6 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_data, align 2
  %call3 = call i32 %5(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg, align 4
  %call9 = call i32 %9(ptr noundef %hw, i32 noundef 18, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_data, align 2
  %12 = and i16 %11, -1537
  store i16 %12, ptr %phy_data, align 2
  %13 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg, align 4
  %call16 = call i32 %14(ptr noundef %hw, i32 noundef 18, i16 noundef zeroext %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body20, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body20:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_82580, %if.then25)) #4
          to label %do.end30 [label %if.then25], !srcloc !200

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_data, align 2
  %conv27 = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug411, ptr noundef %call26, ptr noundef nonnull @.str.45, i32 noundef %conv27) #4
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748) #4
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 25
  %18 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autoneg_wait_to_complete, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool31.not = icmp eq i8 %19, 0
  br i1 %tobool31.not, label %do.end30.out_crit_edge, label %do.body34

do.end30.out_crit_edge:                           ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body34:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_82580, %if.then46)) #4
          to label %do.end52 [label %if.then46], !srcloc !200

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug412, ptr noundef %call47, ptr noundef nonnull @.str.46) #4
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %do.body34
  %call53 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %do.end52.out_crit_edge

do.end52.out_crit_edge:                           ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end56:                                         ; preds = %do.end52
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link, align 1, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool57.not = icmp eq i8 %21, 0
  br i1 %tobool57.not, label %do.body60, label %if.end56.if.end79_crit_edge

if.end56.if.end79_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

do.body60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_force_speed_duplex_82580, %if.then72)) #4
          to label %if.end79 [label %if.then72], !srcloc !200

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug413, ptr noundef %call73, ptr noundef nonnull @.str.32) #4
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %do.body60, %if.end56.if.end79_crit_edge
  %call80 = call i32 @igb_phy_has_link(ptr noundef %hw, i32 noundef 20, i32 noundef 100000, ptr noundef nonnull %link)
  br label %out

out:                                              ; preds = %if.end79, %do.end52.out_crit_edge, %do.end30.out_crit_edge, %if.end12.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call9, %if.end6.out_crit_edge ], [ %call16, %if.end12.out_crit_edge ], [ %call53, %do.end52.out_crit_edge ], [ %call80, %if.end79 ], [ 0, %do.end30.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_phy_info_82580(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  %phy_status.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #4
  %1 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !199
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  %4 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg.i, align 4
  %call42.i = call i32 %5(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %igb_phy_has_link.exit

if.end45.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %phy_status.i, align 2
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool47.not.i = icmp eq i16 %8, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end14

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_phy_info_82580.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_phy_info_82580, %if.then9)) #4
          to label %out [label %if.then9], !srcloc !200

igb_phy_has_link.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  br label %out

if.then9:                                         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_phy_info_82580.__UNIQUE_ID_ddebug414, ptr noundef %call10, ptr noundef nonnull @.str.38) #4
  br label %out

if.end14:                                         ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #4
  %polarity_correction = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 22
  %10 = ptrtoint ptr %polarity_correction to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %polarity_correction, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %data.i, align 2, !annotation !199
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %call.i75 = call i32 %13(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end18, label %igb_check_polarity_82580.exit

igb_check_polarity_82580.exit:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  br label %out

if.end18:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.i, align 2
  %16 = lshr i16 %15, 10
  %.lobit.i = and i16 %16, 1
  %17 = zext i16 %.lobit.i to i32
  %cable_polarity.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %cable_polarity.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cable_polarity.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #4
  %19 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_reg.i, align 4
  %call19 = call i32 %20(ptr noundef %hw, i32 noundef 26, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end22:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %is_mdix = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 21
  %23 = lshr i16 %22, 11
  %24 = trunc i16 %23 to i8
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %is_mdix to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %is_mdix, align 4
  %27 = and i16 %22, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %27)
  %cmp = icmp eq i16 %27, 512
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end22
  %get_cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %28 = ptrtoint ptr %get_cable_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_cable_length, align 4
  %call32 = call i32 %29(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end35:                                         ; preds = %if.then29
  %30 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_reg.i, align 4
  %call38 = call i32 %31(ptr noundef %hw, i32 noundef 10, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data, align 2
  %34 = lshr i16 %33, 13
  %.lobit = and i16 %34, 1
  %35 = zext i16 %.lobit to i32
  %local_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %local_rx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %local_rx, align 4
  %37 = lshr i16 %33, 12
  %.lobit73 = and i16 %37, 1
  %38 = zext i16 %.lobit73 to i32
  %remote_rx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %remote_rx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %remote_rx, align 4
  br label %out

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %40 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 255, ptr %cable_length, align 4
  %local_rx50 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %local_rx50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 255, ptr %local_rx50, align 4
  %remote_rx51 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %remote_rx51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 255, ptr %remote_rx51, align 4
  br label %out

out:                                              ; preds = %if.else, %if.end41, %if.end35.out_crit_edge, %if.then29.out_crit_edge, %if.end18.out_crit_edge, %igb_check_polarity_82580.exit, %if.then9, %igb_phy_has_link.exit, %if.end49.i
  %ret_val.0 = phi i32 [ %call42.i, %igb_phy_has_link.exit ], [ %call.i75, %igb_check_polarity_82580.exit ], [ %call19, %if.end18.out_crit_edge ], [ %call32, %if.then29.out_crit_edge ], [ %call38, %if.end35.out_crit_edge ], [ 0, %if.end41 ], [ 0, %if.else ], [ -3, %if.then9 ], [ -3, %if.end49.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_cable_length_82580(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #4
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !199
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 31, ptr noundef nonnull %phy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_data, align 2
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %6)
  %cmp = icmp eq i16 %6, 255
  %spec.select = select i1 %cmp, i32 -2, i32 0
  %cable_length = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 15
  %7 = ptrtoint ptr %cable_length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cable_length, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret_val.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_phy_setup_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %mii_autoneg_adv_reg = alloca i16, align 2
  %mii_1000t_ctrl_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #4
  %0 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_autoneg_adv_reg, align 2, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #4
  %1 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %mii_1000t_ctrl_reg, align 2
  %autoneg_mask = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 14
  %2 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised, align 4
  %and311 = and i16 %5, %3
  store i16 %and311, ptr %autoneg_advertised, align 4
  %read_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call = call i32 %7(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_autoneg_adv_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %autoneg_mask, align 2
  %10 = and i16 %9, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then8:                                         ; preds = %if.end
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %call11 = call i32 %12(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %mii_1000t_ctrl_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end15_crit_edge, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end.if.end15_crit_edge
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then27)) #4
          to label %do.end33 [label %if.then27], !srcloc !200

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %19 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %autoneg_advertised, align 4
  %conv30 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug367, ptr noundef %call28, ptr noundef nonnull @.str.54, i32 noundef %conv30) #4
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %if.end15
  %21 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %autoneg_advertised, align 4
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool37.not = icmp eq i16 %23, 0
  br i1 %tobool37.not, label %do.end33.if.end61_crit_edge, label %do.body40

do.end33.if.end61_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

do.body40:                                        ; preds = %do.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then52)) #4
          to label %do.end58 [label %if.then52], !srcloc !200

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug368, ptr noundef %call53, ptr noundef nonnull @.str.55) #4
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %do.body40
  %24 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %26 = or i16 %25, 32
  store i16 %26, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %do.end33.if.end61_crit_edge
  %27 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %autoneg_advertised, align 4
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool65.not = icmp eq i16 %29, 0
  br i1 %tobool65.not, label %if.end61.if.end90_crit_edge, label %do.body68

if.end61.if.end90_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

do.body68:                                        ; preds = %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then80)) #4
          to label %do.end86 [label %if.then80], !srcloc !200

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #6
  %call81 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug369, ptr noundef %call81, ptr noundef nonnull @.str.56) #4
  br label %do.end86

do.end86:                                         ; preds = %if.then80, %do.body68
  %30 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %32 = or i16 %31, 64
  store i16 %32, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end90

if.end90:                                         ; preds = %do.end86, %if.end61.if.end90_crit_edge
  %33 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %autoneg_advertised, align 4
  %35 = and i16 %34, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool94.not = icmp eq i16 %35, 0
  br i1 %tobool94.not, label %if.end90.if.end119_crit_edge, label %do.body97

if.end90.if.end119_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

do.body97:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then109)) #4
          to label %do.end115 [label %if.then109], !srcloc !200

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #6
  %call110 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug370, ptr noundef %call110, ptr noundef nonnull @.str.57) #4
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %do.body97
  %36 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %38 = or i16 %37, 128
  store i16 %38, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end119

if.end119:                                        ; preds = %do.end115, %if.end90.if.end119_crit_edge
  %39 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %autoneg_advertised, align 4
  %41 = and i16 %40, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool123.not = icmp eq i16 %41, 0
  br i1 %tobool123.not, label %if.end119.if.end148_crit_edge, label %do.body126

if.end119.if.end148_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148

do.body126:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then138)) #4
          to label %do.end144 [label %if.then138], !srcloc !200

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #6
  %call139 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug371, ptr noundef %call139, ptr noundef nonnull @.str.58) #4
  br label %do.end144

do.end144:                                        ; preds = %if.then138, %do.body126
  %42 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %44 = or i16 %43, 256
  store i16 %44, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end148

if.end148:                                        ; preds = %do.end144, %if.end119.if.end148_crit_edge
  %45 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %autoneg_advertised, align 4
  %47 = and i16 %46, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool152.not = icmp eq i16 %47, 0
  br i1 %tobool152.not, label %if.end148.if.end174_crit_edge, label %do.body155

if.end148.if.end174_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end174

do.body155:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then167)) #4
          to label %if.end174 [label %if.then167], !srcloc !200

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #6
  %call168 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug372, ptr noundef %call168, ptr noundef nonnull @.str.59) #4
  br label %if.end174

if.end174:                                        ; preds = %if.then167, %do.body155, %if.end148.if.end174_crit_edge
  %48 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %autoneg_advertised, align 4
  %50 = and i16 %49, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool178.not = icmp eq i16 %50, 0
  br i1 %tobool178.not, label %if.end174.if.end203_crit_edge, label %do.body181

if.end174.if.end203_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

do.body181:                                       ; preds = %if.end174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then193)) #4
          to label %do.end199 [label %if.then193], !srcloc !200

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #6
  %call194 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug373, ptr noundef %call194, ptr noundef nonnull @.str.60) #4
  br label %do.end199

do.end199:                                        ; preds = %if.then193, %do.body181
  %51 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %53 = or i16 %52, 512
  store i16 %53, ptr %mii_1000t_ctrl_reg, align 2
  br label %if.end203

if.end203:                                        ; preds = %do.end199, %if.end174.if.end203_crit_edge
  %current_mode = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 5
  %54 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_mode, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %55, label %do.body223 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb207
    i32 2, label %sw.bb211
    i32 3, label %sw.bb218
  ]

sw.bb:                                            ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %59 = and i16 %58, -3073
  store i16 %59, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb207:                                         ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %62 = or i16 %61, 3072
  store i16 %62, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb211:                                         ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %65 = and i16 %64, -3073
  %66 = or i16 %65, 2048
  store i16 %66, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb218:                                         ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %69 = or i16 %68, 3072
  store i16 %69, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

do.body223:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then235)) #4
          to label %out [label %if.then235], !srcloc !200

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #6
  %call236 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug374, ptr noundef %call236, ptr noundef nonnull @.str.61) #4
  br label %out

sw.epilog:                                        ; preds = %sw.bb218, %sw.bb211, %sw.bb207, %sw.bb
  %write_reg = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %70 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_reg, align 4
  %72 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %call243 = call i32 %71(ptr noundef %hw, i32 noundef 4, i16 noundef zeroext %73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %do.body248, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body248:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_phy_setup_autoneg, %if.then260)) #4
          to label %do.end267 [label %if.then260], !srcloc !200

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #6
  %call261 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %74 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %conv262 = zext i16 %75 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug375, ptr noundef %call261, ptr noundef nonnull @.str.62, i32 noundef %conv262) #4
  br label %do.end267

do.end267:                                        ; preds = %if.then260, %do.body248
  %76 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %autoneg_mask, align 2
  %78 = and i16 %77, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool271.not = icmp eq i16 %78, 0
  br i1 %tobool271.not, label %do.end267.out_crit_edge, label %if.then272

do.end267.out_crit_edge:                          ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then272:                                       ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_reg, align 4
  %81 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %call275 = call i32 %80(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %82) #4
  br label %out

out:                                              ; preds = %if.then272, %do.end267.out_crit_edge, %sw.epilog.out_crit_edge, %if.then235, %do.body223, %if.then8.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call11, %if.then8.out_crit_edge ], [ %call243, %sw.epilog.out_crit_edge ], [ %call275, %if.then272 ], [ 0, %do.end267.out_crit_edge ], [ -3, %if.then235 ], [ -3, %do.body223 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #4
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 120, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug337, !1, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 146, i32 3}
!8 = !{ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug339, !7, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 151, i32 3}
!11 = !{ptr @igb_read_phy_reg_mdic.__UNIQUE_ID_ddebug340, !10, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 176, i32 3}
!14 = !{ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug341, !13, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 203, i32 3}
!17 = !{ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug343, !16, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!18 = !{ptr @igb_write_phy_reg_mdic.__UNIQUE_ID_ddebug344, !19, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 208, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 249, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug346, !21, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 253, i32 3}
!26 = !{ptr @igb_read_phy_reg_i2c.__UNIQUE_ID_ddebug347, !25, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 279, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug348, !28, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 306, i32 3}
!33 = !{ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug350, !32, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!34 = !{ptr @igb_write_phy_reg_i2c.__UNIQUE_ID_ddebug351, !35, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 310, i32 3}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 337, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug352, !37, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!40 = !{ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug354, !41, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 358, i32 3}
!42 = !{ptr @igb_read_sfp_data_byte.__UNIQUE_ID_ddebug355, !43, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 362, i32 3}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 469, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @igb_copper_link_setup_82580.__UNIQUE_ID_ddebug356, !45, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 611, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @igb_copper_link_setup_m88.__UNIQUE_ID_ddebug357, !49, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 689, i32 4}
!54 = !{ptr @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug358, !53, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!55 = !{ptr @igb_copper_link_setup_m88_gen2.__UNIQUE_ID_ddebug359, !56, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 705, i32 3}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 735, i32 3}
!59 = !{ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug360, !58, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 752, i32 4}
!62 = !{ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug361, !61, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 760, i32 3}
!65 = !{ptr @igb_copper_link_setup_igp.__UNIQUE_ID_ddebug362, !64, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1097, i32 3}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug376, !67, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1100, i32 4}
!72 = !{ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug377, !71, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1113, i32 3}
!75 = !{ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug378, !74, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1117, i32 3}
!78 = !{ptr @igb_setup_copper_link.__UNIQUE_ID_ddebug379, !77, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1163, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug380, !80, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1168, i32 3}
!85 = !{ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug381, !84, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1175, i32 4}
!88 = !{ptr @igb_phy_force_speed_duplex_igp.__UNIQUE_ID_ddebug382, !87, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1220, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug383, !90, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1239, i32 3}
!95 = !{ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug384, !94, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!96 = !{ptr @igb_phy_force_speed_duplex_m88.__UNIQUE_ID_ddebug385, !97, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1262, i32 5}
!98 = distinct !{null, !99, !"agc_reg_array", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1846, i32 19}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1918, i32 3}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @igb_get_phy_info_m88.__UNIQUE_ID_ddebug403, !101, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1928, i32 3}
!106 = !{ptr @igb_get_phy_info_m88.__UNIQUE_ID_ddebug404, !105, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1998, i32 3}
!109 = !{ptr @igb_get_phy_info_igp.__UNIQUE_ID_ddebug405, !108, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2124, i32 2}
!112 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @igb_phy_init_script_igp3.__UNIQUE_ID_ddebug408, !111, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2273, i32 3}
!116 = !{ptr @igb_initialize_M88E1512_phy.__UNIQUE_ID_ddebug409, !115, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2367, i32 3}
!119 = !{ptr @igb_initialize_M88E1543_phy.__UNIQUE_ID_ddebug410, !118, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2475, i32 2}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug411, !121, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2480, i32 3}
!126 = !{ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug412, !125, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!127 = !{ptr @igb_phy_force_speed_duplex_82580.__UNIQUE_ID_ddebug413, !128, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2487, i32 4}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 2520, i32 3}
!131 = !{ptr @igb_get_phy_info_82580.__UNIQUE_ID_ddebug414, !130, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 878, i32 2}
!134 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug363, !133, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 881, i32 3}
!138 = !{ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug364, !137, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 884, i32 2}
!141 = !{ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug365, !140, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 904, i32 4}
!144 = !{ptr @igb_copper_link_autoneg.__UNIQUE_ID_ddebug366, !143, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 963, i32 2}
!147 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug367, !146, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 967, i32 3}
!151 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug368, !150, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 973, i32 3}
!154 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug369, !153, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 979, i32 3}
!157 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug370, !156, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 985, i32 3}
!160 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug371, !159, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 991, i32 3}
!163 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug372, !162, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 995, i32 3}
!166 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug373, !165, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1049, i32 3}
!169 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug374, !168, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1058, i32 2}
!172 = !{ptr @igb_phy_setup_autoneg.__UNIQUE_ID_ddebug375, !171, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1356, i32 3}
!175 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug386, !174, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1360, i32 3}
!179 = !{ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug387, !178, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!180 = !{ptr @.str.66, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1368, i32 3}
!182 = !{ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug388, !181, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 1373, i32 3}
!185 = !{ptr @igb_phy_force_speed_duplex_setup.__UNIQUE_ID_ddebug389, !184, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!186 = !{ptr @e1000_m88_cable_length_table, !187, !"e1000_m88_cable_length_table", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 17, i32 18}
!188 = !{ptr @e1000_igp_2_cable_length_table, !189, !"e1000_igp_2_cable_length_table", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/intel/igb/e1000_phy.c", i32 20, i32 18}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"auto-init"}
!200 = !{i64 2148899799, i64 2148899804, i64 2148899817, i64 2148899861, i64 2148899895, i64 2148899916}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2156070336}
!203 = !{i64 6093208}
!204 = !{i64 2156085670}
!205 = !{i64 2156094465}
!206 = !{i64 2156105944}
!207 = !{i64 2156117442}
!208 = !{i8 0, i8 2}
!209 = !{i64 2156214933}
!210 = !{i64 2156242806}
!211 = !{i64 2156247042}
