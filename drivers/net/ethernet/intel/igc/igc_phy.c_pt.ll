; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_phy.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igc_phy_hw_reset.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igc_phy_hw_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/igc/igc_phy.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout is expired after a phy reset\0A\00", [58 x i8] zeroinitializer }, align 32
@igc_setup_copper_link.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igc_setup_copper_link\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing Speed and Duplex\0A\00", [38 x i8] zeroinitializer }, align 32
@igc_setup_copper_link.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error Forcing Speed and Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@igc_setup_copper_link.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Valid link established!!!\0A\00", [37 x i8] zeroinitializer }, align 32
@igc_setup_copper_link.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to establish link!!!\0A\00", [35 x i8] zeroinitializer }, align 32
@igc_read_phy_fw_version.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igc_read_phy_fw_version\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"igc_phy: read wrong gphy version\0A\00", [62 x i8] zeroinitializer }, align 32
@igc_copper_link_autoneg.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igc_copper_link_autoneg\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", [51 x i8] zeroinitializer }, align 32
@igc_copper_link_autoneg.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", [61 x i8] zeroinitializer }, align 32
@igc_copper_link_autoneg.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Restarting Auto-Neg\0A\00", [43 x i8] zeroinitializer }, align 32
@igc_copper_link_autoneg.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error while waiting for autoneg to complete\0A\00", [51 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igc_phy_setup_autoneg\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"autoneg_advertised %x\0A\00", [41 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Half duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Advertise 10mb Full duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Half duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advertise 100mb Full duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", [50 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Advertise 1000mb Full duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Advertise 2500mb Half duplex request denied!\0A\00", [50 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Advertise 2500mb Full duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.26, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@igc_phy_setup_autoneg.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.27, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-Neg Advertising %x\0A\00", [39 x i8] zeroinitializer }, align 32
@igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igc_write_phy_reg_mdic\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY Address %d is out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MDI Write did not complete\0A\00", [36 x i8] zeroinitializer }, align 32
@igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MDI Error\0A\00", [21 x i8] zeroinitializer }, align 32
@igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.29, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igc_read_phy_reg_mdic\00", [42 x i8] zeroinitializer }, align 32
@igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MDI Read did not complete\0A\00", [37 x i8] zeroinitializer }, align 32
@igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.31, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 210, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 521, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 524, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 537, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 541, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 802, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 459, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 462, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 465, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 485, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 280, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 284, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 290, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 296, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 302, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 308, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 312, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 318, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 322, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 378, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 386, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 620, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 647, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 652, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 564, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igc/igc_phy.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 590, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_check_reset_block(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 22560) #5
  %and = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_get_phy_id(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_id) #5
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_id, align 2, !annotation !97
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_id, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw i32 %conv, 16
  %id = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %id, align 4
  call void @usleep_range_state(i32 noundef 200, i32 noundef 500, i32 noundef 2) #5
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call4 = call i32 %7(ptr noundef %hw, i32 noundef 3, ptr noundef nonnull %phy_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_id, align 2
  %10 = and i16 %9, -16
  %and = zext i16 %10 to i32
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %or = or i32 %12, %and
  store i32 %or, ptr %id, align 4
  %13 = and i16 %9, 15
  %and11 = zext i16 %13 to i32
  %revision = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and11, ptr %revision, align 4
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_id) #5
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_phy_has_link(ptr noundef %hw, i32 noundef %iterations, i32 noundef %usec_interval, ptr nocapture noundef writeonly %success) local_unnamed_addr #0 align 64 {
entry:
  %phy_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status) #5
  %0 = ptrtoint ptr %phy_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_status, align 2, !annotation !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations)
  %cmp138.not = icmp eq i32 %iterations, 0
  br i1 %cmp138.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
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
  %call = call i32 %2(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = or i1 %cmp2.not, %tobool.not
  br i1 %or.cond, label %for.body.if.end38_crit_edge, label %if.then

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
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
  call void %3(i32 noundef 214748000) #5
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %while.body.if.end38_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %4(i32 noundef %usec_interval) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %while.body.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call42 = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
  call void %10(i32 noundef 214748000) #5
  %tobool81.not = icmp eq i32 %dec80, 0
  br i1 %tobool81.not, label %while.body82.for.inc_crit_edge, label %while.body82.while.body82_crit_edge

while.body82.while.body82_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body82

while.body82.for.inc_crit_edge:                   ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %11(i32 noundef %usec_interval) #5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %while.body82.for.inc_crit_edge
  %inc = add i16 %i.0139, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ult i32 %conv, %iterations
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end38.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %if.end45.for.end_crit_edge ], [ true, %if.end38.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %ret_val.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end45.for.end_crit_edge ], [ %call42, %if.end38.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %frombool = zext i1 %cmp.lcssa to i8
  %12 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %success, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status) #5
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_power_up_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #5
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #5
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = and i16 %4, -2049
  store i16 %5, ptr %mii_reg, align 2
  %write_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg, align 4
  %call4 = call i32 %7(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_power_down_phy_copper(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_reg) #5
  %0 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %mii_reg, align 2
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %mii_reg) #5
  %3 = ptrtoint ptr %mii_reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mii_reg, align 2
  %5 = or i16 %4, 2048
  store i16 %5, ptr %mii_reg, align 2
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_reg) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @igc_check_downshift(ptr nocapture noundef writeonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %speed_downgraded = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %speed_downgraded to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %speed_downgraded, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_phy_hw_reset(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 22560) #5
  %and.i = and i32 %call.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %phy1 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %call2 = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3604) #5
  %call7 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 0) #5
  %hw_addr9 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %or = or i32 %call7, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #5, !srcloc !99
  %call15 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #5
  %reset_delay_us = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_delay_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  %8 = ptrtoint ptr %hw_addr9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %call7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #5, !srcloc !99
  %call35 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #5
  br label %do.body36

do.body36:                                        ; preds = %do.body36.do.body36_crit_edge, %if.end5
  %timeout.0 = phi i32 [ 10000, %if.end5 ], [ %dec, %do.body36.do.body36_crit_edge ]
  %call37 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3604) #5
  %dec = add nsw i32 %timeout.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #5
  %and = and i32 %call37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool40.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool39.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %do.end41, label %do.body36.do.body36_crit_edge

do.body36.do.body36_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

do.end41:                                         ; preds = %do.body36
  br i1 %tobool40.not, label %do.body45, label %do.end41.if.end58_crit_edge

do.end41.if.end58_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.body45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_hw_reset.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_hw_reset, %if.then51)) #5
          to label %if.end58 [label %if.then51], !srcloc !101

if.then51:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_hw_reset.__UNIQUE_ID_ddebug339, ptr noundef %call52, ptr noundef nonnull @.str.3) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %do.body45, %do.end41.if.end58_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #5
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  tail call void %13(ptr noundef %hw) #5
  br label %out

out:                                              ; preds = %if.end58, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.end58 ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_setup_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @igc_copper_link_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end37_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_copper_link, %if.then8)) #5
          to label %do.end12 [label %if.then8], !srcloc !101

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_copper_link.__UNIQUE_ID_ddebug355, ptr noundef %call9, ptr noundef nonnull @.str.5) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3
  %force_speed_duplex = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  %2 = ptrtoint ptr %force_speed_duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %force_speed_duplex, align 4
  %call13 = tail call i32 %3(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end12.if.end37_crit_edge, label %do.body17

do.end12.if.end37_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_copper_link, %if.then29)) #5
          to label %out [label %if.then29], !srcloc !101

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_copper_link.__UNIQUE_ID_ddebug356, ptr noundef %call30, ptr noundef nonnull @.str.6) #5
  br label %out

if.end37:                                         ; preds = %do.end12.if.end37_crit_edge, %if.then.if.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %4 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !97
  %read_reg.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end49.i.for.body.i_crit_edge, %if.end37
  %i.0139.i = phi i16 [ 0, %if.end37 ], [ %inc.i, %if.end49.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %6(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end38.i_crit_edge, label %if.then.i

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 2147480) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then.i, %for.body.i.if.end38.i_crit_edge
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call42.i = call i32 %9(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %igc_phy_has_link.exit

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
  call void %13(i32 noundef 2147480) #5
  %inc.i = add nuw nsw i16 %i.0139.i, 1
  %cmp.i = icmp ult i16 %i.0139.i, 9
  br i1 %cmp.i, label %if.end49.i.for.body.i_crit_edge, label %do.body67

if.end49.i.for.body.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

igc_phy_has_link.exit:                            ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %out

do.body45:                                        ; preds = %if.end45.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_copper_link, %if.then57)) #5
          to label %do.end63 [label %if.then57], !srcloc !101

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_copper_link.__UNIQUE_ID_ddebug357, ptr noundef %call58, ptr noundef nonnull @.str.7) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %do.body45
  call void @igc_config_collision_dist(ptr noundef %hw) #5
  %call64 = call i32 @igc_config_fc_after_link_up(ptr noundef %hw) #5
  br label %out

do.body67:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_copper_link, %if.then79)) #5
          to label %out [label %if.then79], !srcloc !101

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %call80 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_copper_link.__UNIQUE_ID_ddebug358, ptr noundef %call80, ptr noundef nonnull @.str.8) #5
  br label %out

out:                                              ; preds = %if.then79, %do.body67, %do.end63, %igc_phy_has_link.exit, %if.then29, %do.body17, %if.then.out_crit_edge
  %ret_val.0 = phi i32 [ %call, %if.then.out_crit_edge ], [ %call42.i, %igc_phy_has_link.exit ], [ %call64, %do.end63 ], [ 0, %if.then79 ], [ %call13, %if.then29 ], [ %call13, %do.body17 ], [ 0, %do.body67 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_copper_link_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %phy_status.i = alloca i16, align 2
  %phy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_ctrl) #5
  %0 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_ctrl, align 2, !annotation !97
  %autoneg_mask = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 7
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_copper_link_autoneg, %if.then12)) #5
          to label %do.end16 [label %if.then12], !srcloc !101

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_copper_link_autoneg.__UNIQUE_ID_ddebug351, ptr noundef %call13, ptr noundef nonnull @.str.12) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %entry
  %call17 = tail call fastcc i32 @igc_phy_setup_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body42, label %do.body21

do.body21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_copper_link_autoneg, %if.then33)) #5
          to label %out [label %if.then33], !srcloc !101

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_copper_link_autoneg.__UNIQUE_ID_ddebug352, ptr noundef %call34, ptr noundef nonnull @.str.13) #5
  br label %out

do.body42:                                        ; preds = %do.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_copper_link_autoneg, %if.then54)) #5
          to label %do.end60 [label %if.then54], !srcloc !101

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_copper_link_autoneg.__UNIQUE_ID_ddebug353, ptr noundef %call55, ptr noundef nonnull @.str.14) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body42
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %call61 = call i32 %7(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %phy_ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.end60.out_crit_edge

do.end60.out_crit_edge:                           ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end64:                                         ; preds = %do.end60
  %8 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %phy_ctrl, align 2
  %10 = or i16 %9, 4608
  store i16 %10, ptr %phy_ctrl, align 2
  %write_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %11 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg, align 4
  %call68 = call i32 %12(ptr noundef %hw, i32 noundef 0, i16 noundef zeroext %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end71:                                         ; preds = %if.end64
  %autoneg_wait_to_complete = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 12
  %13 = ptrtoint ptr %autoneg_wait_to_complete to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg_wait_to_complete, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool72.not = icmp eq i8 %14, 0
  br i1 %tobool72.not, label %if.end71.if.end98_crit_edge, label %if.then73

if.end71.if.end98_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then73:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_status.i) #5
  %15 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %phy_status.i, align 2, !annotation !97
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.then73
  %i.019.i = phi i16 [ 45, %if.then73 ], [ %dec.i, %if.end12.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call.i = call i32 %17(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.do.body78_crit_edge

for.body.i.do.body78_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body78

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call5.i = call i32 %19(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %phy_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.do.body78_crit_edge

if.end.i.do.body78_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body78

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %phy_status.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_status.i, align 2
  %22 = and i16 %21, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool10.not.i = icmp eq i16 %22, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.igc_wait_autoneg.exit.thread_crit_edge

if.end8.i.igc_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igc_wait_autoneg.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  call void @msleep(i32 noundef 100) #5
  %dec.i = add nsw i16 %i.019.i, -1
  %cmp.not.i = icmp eq i16 %dec.i, 0
  br i1 %cmp.not.i, label %if.end12.i.igc_wait_autoneg.exit.thread_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end12.i.igc_wait_autoneg.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %igc_wait_autoneg.exit.thread

igc_wait_autoneg.exit.thread:                     ; preds = %if.end12.i.igc_wait_autoneg.exit.thread_crit_edge, %if.end8.i.igc_wait_autoneg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  br label %if.end98

do.body78:                                        ; preds = %if.end.i.do.body78_crit_edge, %for.body.i.do.body78_crit_edge
  %ret_val.1.i = phi i32 [ %call.i, %for.body.i.do.body78_crit_edge ], [ %call5.i, %if.end.i.do.body78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_status.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_copper_link_autoneg, %if.then90)) #5
          to label %out [label %if.then90], !srcloc !101

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %call91 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_copper_link_autoneg.__UNIQUE_ID_ddebug354, ptr noundef %call91, ptr noundef nonnull @.str.15) #5
  br label %out

if.end98:                                         ; preds = %igc_wait_autoneg.exit.thread, %if.end71.if.end98_crit_edge
  %get_link_status = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 14
  %23 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %get_link_status, align 1
  br label %out

out:                                              ; preds = %if.end98, %if.then90, %do.body78, %if.end64.out_crit_edge, %do.end60.out_crit_edge, %if.then33, %do.body21
  %ret_val.1 = phi i32 [ %call17, %if.then33 ], [ %call61, %do.end60.out_crit_edge ], [ %call68, %if.end64.out_crit_edge ], [ %ret_val.1.i, %if.then90 ], [ 0, %if.end98 ], [ %call17, %do.body21 ], [ %ret_val.1.i, %do.body78 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_ctrl) #5
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_config_collision_dist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_config_fc_after_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_write_phy_reg_gpy(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 16
  %conv = trunc i32 %shr to i8
  %and1 = and i32 %offset, 65535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call fastcc i32 @igc_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %and1, i16 noundef zeroext %data)
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %write_reg.i.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %4 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i.i, align 4
  %6 = trunc i32 %shr to i16
  %conv.i.i = and i16 %6, 255
  %call.i.i = tail call i32 %5(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %conv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else
  %conv7 = trunc i32 %offset to i16
  %7 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i.i, align 4
  %call4.i.i = tail call i32 %8(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %conv7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end.i.i
  %9 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i.i, align 4
  %or.i.i = or i16 %conv.i.i, 16384
  %call13.i.i = tail call i32 %10(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %or.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i.i, align 4
  %call25.i.i = tail call i32 %12(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool27.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end16.i.i.cleanup_crit_edge

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i.i, align 4
  %call33.i.i = tail call i32 %14(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i.i, %if.end16.i.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call4, %if.end ], [ %call.i.i, %if.else.cleanup_crit_edge ], [ %call4.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call13.i.i, %if.end7.i.i.cleanup_crit_edge ], [ %call25.i.i, %if.end16.i.i.cleanup_crit_edge ], [ %call33.i.i, %if.end29.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_write_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_write_phy_reg_mdic, %if.then5)) #5
          to label %out [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug363, ptr noundef %call6, ptr noundef nonnull @.str.29, i32 noundef %offset) #5
  br label %out

if.end9:                                          ; preds = %entry
  %conv = zext i16 %data to i32
  %shl = shl nuw nsw i32 %offset, 16
  %or = or i32 %shl, %conv
  %addr = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %shl10 = shl i32 %1, 21
  %or11 = or i32 %or, %shl10
  %or12 = or i32 %or11, 67108864
  %hw_addr18 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %arrayidx = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #5, !srcloc !99
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body34, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9
  %i.098 = phi i32 [ 0, %if.end9 ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  %call26 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 32) #5
  %and = and i32 %call26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.cond, label %if.end53

do.body34:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_write_phy_reg_mdic, %if.then46)) #5
          to label %out [label %if.then46], !srcloc !101

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug365, ptr noundef %call47, ptr noundef nonnull @.str.30) #5
  br label %out

if.end53:                                         ; preds = %for.body
  %and54 = and i32 %call26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.out_crit_edge, label %do.body58

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_write_phy_reg_mdic, %if.then70)) #5
          to label %out [label %if.then70], !srcloc !101

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug366, ptr noundef %call71, ptr noundef nonnull @.str.31) #5
  br label %out

out:                                              ; preds = %if.then70, %do.body58, %if.end53.out_crit_edge, %if.then46, %do.body34, %if.then5, %do.body2
  %ret_val.0 = phi i32 [ 0, %if.end53.out_crit_edge ], [ -4, %if.then5 ], [ -2, %if.then46 ], [ -2, %if.then70 ], [ -4, %do.body2 ], [ -2, %do.body34 ], [ -2, %do.body58 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_read_phy_reg_gpy(ptr noundef %hw, i32 noundef %offset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %offset, 16
  %conv = trunc i32 %shr to i8
  %and1 = and i32 %offset, 65535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %phy = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call i32 %1(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call fastcc i32 @igc_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %and1, ptr noundef %data)
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef %hw) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %write_reg.i.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %4 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i.i, align 4
  %6 = trunc i32 %shr to i16
  %conv.i.i = and i16 %6, 255
  %call.i.i = tail call i32 %5(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %conv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else
  %conv7 = trunc i32 %offset to i16
  %7 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i.i, align 4
  %call4.i.i = tail call i32 %8(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %conv7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end.i.i
  %9 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i.i, align 4
  %or.i.i = or i16 %conv.i.i, 16384
  %call13.i.i = tail call i32 %10(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %or.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.end7.i.i
  %read_reg.i.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %11 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg.i.i, align 4
  %call21.i.i = tail call i32 %12(ptr noundef %hw, i32 noundef 14, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool27.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end16.i.i.cleanup_crit_edge

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg.i.i, align 4
  %call33.i.i = tail call i32 %14(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i.i, %if.end16.i.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call4, %if.end ], [ %call.i.i, %if.else.cleanup_crit_edge ], [ %call4.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call13.i.i, %if.end7.i.i.cleanup_crit_edge ], [ %call21.i.i, %if.end16.i.i.cleanup_crit_edge ], [ %call33.i.i, %if.end29.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_read_phy_reg_mdic(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_read_phy_reg_mdic, %if.then5)) #5
          to label %out [label %if.then5], !srcloc !101

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug359, ptr noundef %call6, ptr noundef nonnull @.str.29, i32 noundef %offset) #5
  br label %out

if.end9:                                          ; preds = %entry
  %shl = shl nuw nsw i32 %offset, 16
  %addr = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %shl10 = shl i32 %1, 21
  %or = or i32 %shl, %shl10
  %or11 = or i32 %or, 134217728
  %hw_addr17 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %arrayidx = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #5, !srcloc !99
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 1920
  br i1 %exitcond.not, label %do.body32, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9
  %i.097 = phi i32 [ 0, %if.end9 ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  %call24 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 32) #5
  %and = and i32 %call24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %for.cond, label %if.end51

do.body32:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_read_phy_reg_mdic, %if.then44)) #5
          to label %out [label %if.then44], !srcloc !101

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug361, ptr noundef %call45, ptr noundef nonnull @.str.33) #5
  br label %out

if.end51:                                         ; preds = %for.body
  %and52 = and i32 %call24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end75, label %do.body56

do.body56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_read_phy_reg_mdic, %if.then68)) #5
          to label %out [label %if.then68], !srcloc !101

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %call69 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug362, ptr noundef %call69, ptr noundef nonnull @.str.31) #5
  br label %out

if.end75:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %call24 to i16
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %data, align 2
  br label %out

out:                                              ; preds = %if.end75, %if.then68, %do.body56, %if.then44, %do.body32, %if.then5, %do.body2
  %ret_val.0 = phi i32 [ 0, %if.end75 ], [ -4, %if.then5 ], [ -2, %if.then44 ], [ -2, %if.then68 ], [ -4, %do.body2 ], [ -2, %do.body32 ], [ -2, %do.body56 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @igc_read_phy_fw_version(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %gphy_version = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gphy_version) #5
  %0 = ptrtoint ptr %gphy_version to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %gphy_version, align 2
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_reg, align 4
  %call = call i32 %2(ptr noundef %hw, i32 noundef 30, ptr noundef nonnull %gphy_version) #5
  %conv = trunc i32 %call to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body2

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_read_phy_fw_version.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_read_phy_fw_version, %if.then7)) #5
          to label %if.end11 [label %if.then7], !srcloc !101

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_read_phy_fw_version.__UNIQUE_ID_ddebug367, ptr noundef %call8, ptr noundef nonnull @.str.10) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body2, %entry.if.end11_crit_edge
  %3 = ptrtoint ptr %gphy_version to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %gphy_version, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gphy_version) #5
  ret i16 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_phy_setup_autoneg(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %aneg_multigbt_an_ctrl = alloca i16, align 2
  %mii_1000t_ctrl_reg = alloca i16, align 2
  %mii_autoneg_adv_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %aneg_multigbt_an_ctrl) #5
  %0 = ptrtoint ptr %aneg_multigbt_an_ctrl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %aneg_multigbt_an_ctrl, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #5
  %1 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %mii_1000t_ctrl_reg, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #5
  %2 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mii_autoneg_adv_reg, align 2, !annotation !97
  %autoneg_mask = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 8
  %3 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %autoneg_mask, align 2
  %autoneg_advertised = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 7
  %5 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %autoneg_advertised, align 4
  %and406 = and i16 %6, %4
  store i16 %and406, ptr %autoneg_advertised, align 4
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %call = call i32 %8(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_autoneg_adv_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %autoneg_mask, align 2
  %11 = and i16 %10, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool7.not = icmp eq i16 %11, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %if.then8

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then8:                                         ; preds = %if.end
  %12 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg, align 4
  %call11 = call i32 %13(ptr noundef %hw, i32 noundef 9, ptr noundef nonnull %mii_1000t_ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end15_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %14 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %autoneg_mask, align 2
  %16 = and i16 %15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool19.not = icmp eq i16 %16, 0
  br i1 %tobool19.not, label %if.end15.if.end27_crit_edge, label %if.then20

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then20:                                        ; preds = %if.end15
  %17 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_reg, align 4
  %call23 = call i32 %18(ptr noundef %hw, i32 noundef 458784, ptr noundef nonnull %aneg_multigbt_an_ctrl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then20.if.end27_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %19 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %21 = and i16 %20, -481
  store i16 %21, ptr %mii_autoneg_adv_reg, align 2
  %22 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %24 = and i16 %23, -769
  store i16 %24, ptr %mii_1000t_ctrl_reg, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then39)) #5
          to label %do.end45 [label %if.then39], !srcloc !101

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  %25 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %autoneg_advertised, align 4
  %conv42 = zext i16 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug340, ptr noundef %call40, ptr noundef nonnull @.str.17, i32 noundef %conv42) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then39, %if.end27
  %27 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %autoneg_advertised, align 4
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool49.not = icmp eq i16 %29, 0
  br i1 %tobool49.not, label %do.end45.if.end73_crit_edge, label %do.body52

do.end45.if.end73_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

do.body52:                                        ; preds = %do.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then64)) #5
          to label %do.end70 [label %if.then64], !srcloc !101

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %call65 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug341, ptr noundef %call65, ptr noundef nonnull @.str.18) #5
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %do.body52
  %30 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %32 = or i16 %31, 32
  store i16 %32, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %do.end45.if.end73_crit_edge
  %33 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %autoneg_advertised, align 4
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool77.not = icmp eq i16 %35, 0
  br i1 %tobool77.not, label %if.end73.if.end102_crit_edge, label %do.body80

if.end73.if.end102_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.body80:                                        ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then92)) #5
          to label %do.end98 [label %if.then92], !srcloc !101

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %call93 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug342, ptr noundef %call93, ptr noundef nonnull @.str.19) #5
  br label %do.end98

do.end98:                                         ; preds = %if.then92, %do.body80
  %36 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %38 = or i16 %37, 64
  store i16 %38, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end102

if.end102:                                        ; preds = %do.end98, %if.end73.if.end102_crit_edge
  %39 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %autoneg_advertised, align 4
  %41 = and i16 %40, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool106.not = icmp eq i16 %41, 0
  br i1 %tobool106.not, label %if.end102.if.end131_crit_edge, label %do.body109

if.end102.if.end131_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

do.body109:                                       ; preds = %if.end102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then121)) #5
          to label %do.end127 [label %if.then121], !srcloc !101

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %call122 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug343, ptr noundef %call122, ptr noundef nonnull @.str.20) #5
  br label %do.end127

do.end127:                                        ; preds = %if.then121, %do.body109
  %42 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %44 = or i16 %43, 128
  store i16 %44, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end131

if.end131:                                        ; preds = %do.end127, %if.end102.if.end131_crit_edge
  %45 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %autoneg_advertised, align 4
  %47 = and i16 %46, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool135.not = icmp eq i16 %47, 0
  br i1 %tobool135.not, label %if.end131.if.end160_crit_edge, label %do.body138

if.end131.if.end160_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

do.body138:                                       ; preds = %if.end131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then150)) #5
          to label %do.end156 [label %if.then150], !srcloc !101

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  %call151 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug344, ptr noundef %call151, ptr noundef nonnull @.str.21) #5
  br label %do.end156

do.end156:                                        ; preds = %if.then150, %do.body138
  %48 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %50 = or i16 %49, 256
  store i16 %50, ptr %mii_autoneg_adv_reg, align 2
  br label %if.end160

if.end160:                                        ; preds = %do.end156, %if.end131.if.end160_crit_edge
  %51 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %autoneg_advertised, align 4
  %53 = and i16 %52, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool164.not = icmp eq i16 %53, 0
  br i1 %tobool164.not, label %if.end160.if.end186_crit_edge, label %do.body167

if.end160.if.end186_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186

do.body167:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then179)) #5
          to label %if.end186 [label %if.then179], !srcloc !101

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  %call180 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug345, ptr noundef %call180, ptr noundef nonnull @.str.22) #5
  br label %if.end186

if.end186:                                        ; preds = %if.then179, %do.body167, %if.end160.if.end186_crit_edge
  %54 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %autoneg_advertised, align 4
  %56 = and i16 %55, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool190.not = icmp eq i16 %56, 0
  br i1 %tobool190.not, label %if.end186.if.end215_crit_edge, label %do.body193

if.end186.if.end215_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.body193:                                       ; preds = %if.end186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then205)) #5
          to label %do.end211 [label %if.then205], !srcloc !101

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #7
  %call206 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug346, ptr noundef %call206, ptr noundef nonnull @.str.23) #5
  br label %do.end211

do.end211:                                        ; preds = %if.then205, %do.body193
  %57 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %59 = or i16 %58, 512
  store i16 %59, ptr %mii_1000t_ctrl_reg, align 2
  br label %if.end215

if.end215:                                        ; preds = %do.end211, %if.end186.if.end215_crit_edge
  %60 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %autoneg_advertised, align 4
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool219.not = icmp eq i16 %62, 0
  br i1 %tobool219.not, label %if.end215.if.end241_crit_edge, label %do.body222

if.end215.if.end241_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

do.body222:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then234)) #5
          to label %if.end241 [label %if.then234], !srcloc !101

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  %call235 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug347, ptr noundef %call235, ptr noundef nonnull @.str.24) #5
  br label %if.end241

if.end241:                                        ; preds = %if.then234, %do.body222, %if.end215.if.end241_crit_edge
  %63 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %autoneg_advertised, align 4
  %65 = and i16 %64, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool245.not = icmp eq i16 %65, 0
  br i1 %tobool245.not, label %if.else, label %do.body248

do.body248:                                       ; preds = %if.end241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then260)) #5
          to label %do.end266 [label %if.then260], !srcloc !101

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  %call261 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug348, ptr noundef %call261, ptr noundef nonnull @.str.25) #5
  br label %do.end266

do.end266:                                        ; preds = %if.then260, %do.body248
  %66 = ptrtoint ptr %aneg_multigbt_an_ctrl to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %aneg_multigbt_an_ctrl, align 2
  %68 = or i16 %67, 128
  br label %if.end273

if.else:                                          ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %aneg_multigbt_an_ctrl to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %aneg_multigbt_an_ctrl, align 2
  %71 = and i16 %70, -129
  br label %if.end273

if.end273:                                        ; preds = %if.else, %do.end266
  %storemerge = phi i16 [ %71, %if.else ], [ %68, %do.end266 ]
  %72 = ptrtoint ptr %aneg_multigbt_an_ctrl to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %storemerge, ptr %aneg_multigbt_an_ctrl, align 2
  %current_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %73 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %current_mode, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %do.body293 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb277
    i32 2, label %sw.bb281
    i32 3, label %sw.bb288
  ]

sw.bb:                                            ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %78 = and i16 %77, -3073
  store i16 %78, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb277:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %81 = or i16 %80, 3072
  store i16 %81, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb281:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %84 = and i16 %83, -3073
  %85 = or i16 %84, 2048
  store i16 %85, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb288:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %88 = or i16 %87, 3072
  store i16 %88, ptr %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

do.body293:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then305)) #5
          to label %cleanup [label %if.then305], !srcloc !101

if.then305:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  %call306 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug349, ptr noundef %call306, ptr noundef nonnull @.str.26) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb288, %sw.bb281, %sw.bb277, %sw.bb
  %write_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %89 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_reg, align 4
  %91 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %call313 = call i32 %90(ptr noundef %hw, i32 noundef 4, i16 noundef zeroext %92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %do.body318, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body318:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_phy_setup_autoneg, %if.then330)) #5
          to label %do.end337 [label %if.then330], !srcloc !101

if.then330:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #7
  %call331 = call ptr @igc_get_hw_dev(ptr noundef %hw) #5
  %93 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %conv332 = zext i16 %94 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug350, ptr noundef %call331, ptr noundef nonnull @.str.27, i32 noundef %conv332) #5
  br label %do.end337

do.end337:                                        ; preds = %if.then330, %do.body318
  %95 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %autoneg_mask, align 2
  %97 = and i16 %96, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool341.not = icmp eq i16 %97, 0
  br i1 %tobool341.not, label %do.end337.if.end346_crit_edge, label %if.then342

do.end337.if.end346_crit_edge:                    ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end346

if.then342:                                       ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_reg, align 4
  %100 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %call345 = call i32 %99(ptr noundef %hw, i32 noundef 9, i16 noundef zeroext %101) #5
  br label %if.end346

if.end346:                                        ; preds = %if.then342, %do.end337.if.end346_crit_edge
  %ret_val.0 = phi i32 [ %call345, %if.then342 ], [ 0, %do.end337.if.end346_crit_edge ]
  %102 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %autoneg_mask, align 2
  %104 = and i16 %103, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool350.not = icmp eq i16 %104, 0
  br i1 %tobool350.not, label %if.end346.cleanup_crit_edge, label %if.then351

if.end346.cleanup_crit_edge:                      ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then351:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_reg, align 4
  %107 = ptrtoint ptr %aneg_multigbt_an_ctrl to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %aneg_multigbt_an_ctrl, align 2
  %call354 = call i32 %106(ptr noundef %hw, i32 noundef 458784, i16 noundef zeroext %108) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then351, %if.end346.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then305, %do.body293, %if.then20.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call11, %if.then8.cleanup_crit_edge ], [ %call23, %if.then20.cleanup_crit_edge ], [ -3, %if.then305 ], [ %call313, %sw.epilog.cleanup_crit_edge ], [ %call354, %if.then351 ], [ %ret_val.0, %if.end346.cleanup_crit_edge ], [ -3, %do.body293 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_autoneg_adv_reg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_1000t_ctrl_reg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %aneg_multigbt_an_ctrl) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igc_phy_hw_reset.__UNIQUE_ID_ddebug339, !1, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 521, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug355, !7, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 524, i32 4}
!12 = !{ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug356, !11, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 537, i32 3}
!15 = !{ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug357, !14, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 541, i32 3}
!18 = !{ptr @igc_setup_copper_link.__UNIQUE_ID_ddebug358, !17, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 802, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @igc_read_phy_fw_version.__UNIQUE_ID_ddebug367, !20, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 459, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug351, !24, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 462, i32 3}
!29 = !{ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug352, !28, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 465, i32 2}
!32 = !{ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug353, !31, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 485, i32 4}
!35 = !{ptr @igc_copper_link_autoneg.__UNIQUE_ID_ddebug354, !34, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 280, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug340, !37, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 284, i32 3}
!42 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug341, !41, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 290, i32 3}
!45 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug342, !44, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 296, i32 3}
!48 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug343, !47, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 302, i32 3}
!51 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug344, !50, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 308, i32 3}
!54 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug345, !53, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 312, i32 3}
!57 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug346, !56, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 318, i32 3}
!60 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug347, !59, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 322, i32 3}
!63 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug348, !62, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 378, i32 3}
!66 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug349, !65, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 386, i32 2}
!69 = !{ptr @igc_phy_setup_autoneg.__UNIQUE_ID_ddebug350, !68, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 620, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug363, !71, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 647, i32 3}
!76 = !{ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug365, !75, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 652, i32 3}
!79 = !{ptr @igc_write_phy_reg_mdic.__UNIQUE_ID_ddebug366, !78, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 564, i32 3}
!82 = !{ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug359, !81, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 590, i32 3}
!85 = !{ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug361, !84, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!86 = !{ptr @igc_read_phy_reg_mdic.__UNIQUE_ID_ddebug362, !87, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/igc/igc_phy.c", i32 595, i32 3}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i64 2155969522}
!99 = !{i64 6053117}
!100 = !{i64 2155973660}
!101 = !{i64 2148859708, i64 2148859713, i64 2148859726, i64 2148859770, i64 2148859804, i64 2148859825}
!102 = !{i8 0, i8 2}
!103 = !{i64 2156044385}
!104 = !{i64 2156033755}
