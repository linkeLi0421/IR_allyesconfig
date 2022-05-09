; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgb/ixgb_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgb/ixgb_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ixgb_hw = type { ptr, ptr, %struct.ixgb_fc, %struct.ixgb_bus, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, i8, i8, i16, i16, i8, i16, i16, i32, i32, i32, i32, i16, [64 x i16], i32, i32, i32 }
%struct.ixgb_fc = type { i32, i32, i16, i8, i32 }
%struct.ixgb_bus = type { i32, i32, i32 }

@ixgb_adapter_stop.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ixgb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgb_adapter_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ixgb/ixgb_hw.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ixgb: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@ixgb_adapter_stop.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Exiting because the adapter is already stopped!!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ixgb: Exiting because the adapter is already stopped!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgb_adapter_stop.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgb: Masking off all interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgb_adapter_stop.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing a global reset to MAC\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ixgb: Issuing a global reset to MAC\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgb_adapter_stop.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgb_init_hw.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ixgb_init_hw\00", [19 x i8] zeroinitializer }, align 32
@ixgb_init_hw.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.9, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgb_init_hw.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Issuing an EE reset to MAC\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgb: Issuing an EE reset to MAC\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgb_init_hw.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MAC address invalid after ixgb_init_rx_addrs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ixgb: MAC address invalid after ixgb_init_rx_addrs\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgb_init_hw.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgb: Zeroing the MTA\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgb_mc_addr_list_update\00", [39 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clearing RAR[1-15]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgb: Clearing RAR[1-15]\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Clearing MTA\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ixgb: Clearing MTA\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.23, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adding the multicast addresses:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ixgb: Adding the multicast addresses:\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MC Addr #%d = %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ixgb: MC Addr #%d = %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.27, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Added a multicast address to RAR[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ixgb: Added a multicast address to RAR[%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.29, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Hash value = 0x%03X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgb: Hash value = 0x%03X\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.31, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MC Update Complete\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgb: MC Update Complete\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgb_rar_set.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ixgb_rar_set\00", [19 x i8] zeroinitializer }, align 32
@ixgb_check_for_link.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.3, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ixgb_check_for_link\00", [44 x i8] zeroinitializer }, align 32
@ixgb_check_for_link.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"XPCSS Not Aligned while Status:LU is set\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ixgb: XPCSS Not Aligned while Status:LU is set\0A\00", [48 x i8] zeroinitializer }, align 32
@ixgb_check_for_bad_link.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgb_check_for_bad_link\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BAD LINK! too many LFC/RFC since last check\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ixgb: BAD LINK! too many LFC/RFC since last check\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ixgb_identify_phy.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgb_identify_phy\00", [46 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Identified TXN17401 optics\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgb: Identified TXN17401 optics\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Identified TXN17201 optics\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ixgb: Identified TXN17201 optics\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.45, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Identified G6005 optics\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ixgb: Identified G6005 optics\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.47, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Identified G6104 optics\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ixgb: Identified G6104 optics\0A\00", [33 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.49, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Identified CX4\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixgb: Identified CX4\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgb_identify_phy.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgb_identify_phy.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.45, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgb_identify_phy.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.51, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown physical layer module\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ixgb: Unknown physical layer module\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgb_identify_xpak_vendor.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgb_identify_xpak_vendor\00", [38 x i8] zeroinitializer }, align 32
@ixgb_init_rx_addrs.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.3, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgb_init_rx_addrs\00", [45 x i8] zeroinitializer }, align 32
@ixgb_init_rx_addrs.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Keeping Permanent MAC Addr = %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ixgb: Keeping Permanent MAC Addr = %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@ixgb_init_rx_addrs.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.57, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Overriding MAC Address in RAR[0]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ixgb: Overriding MAC Address in RAR[0]\0A\00", [56 x i8] zeroinitializer }, align 32
@ixgb_init_rx_addrs.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.59, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"New MAC Addr = %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ixgb: New MAC Addr = %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgb_init_rx_addrs.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.19, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ixgb_hash_mc_addr.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.3, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgb_hash_mc_addr\00", [46 x i8] zeroinitializer }, align 32
@ixgb_hash_mc_addr.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MC filter type param set incorrectly\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ixgb: MC filter type param set incorrectly\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgb_setup_fc.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.3, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ixgb_setup_fc\00", [18 x i8] zeroinitializer }, align 32
@ixgb_setup_fc.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ixgb: Flow control param set incorrectly\0A\00", [54 x i8] zeroinitializer }, align 32
@ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.3, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ixgb_clear_hw_cntrs\00", [44 x i8] zeroinitializer }, align 32
@ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Exiting because the adapter is stopped!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ixgb: Exiting because the adapter is stopped!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@mac_addr_valid.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.3, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mac_addr_valid\00", [17 x i8] zeroinitializer }, align 32
@mac_addr_valid.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAC address is multicast\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgb: MAC address is multicast\0A\00", [32 x i8] zeroinitializer }, align 32
@mac_addr_valid.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAC address is broadcast\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgb: MAC address is broadcast\0A\00", [32 x i8] zeroinitializer }, align 32
@mac_addr_valid.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 1, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAC address is all zeros\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ixgb: MAC address is all zeros\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 16, i64 4168, i64 4254, i64 6728, i64 6984]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 102, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 108, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 118, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 135, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 278, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 289, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 317, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 328, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 417, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 423, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 430, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 437, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 438, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 445, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 450, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 458, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 557, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 891, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 901, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 932, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 205, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 210, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 220, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 223, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 228, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 232, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 243, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 166, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 361, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 373, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 378, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 379, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 476, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 503, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 617, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 661, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 950, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 954, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1099, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1103, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1108, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1113, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgb_adapter_stop(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_adapter_stop, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_adapter_stop.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter_stopped = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adapter_stopped, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end21, label %do.body5

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_adapter_stop, %if.then17)) #3
          to label %cleanup [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_adapter_stop.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.6) #3
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %2 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %adapter_stopped, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_adapter_stop, %if.then35)) #3
          to label %do.body39 [label %if.then35], !srcloc !180

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_adapter_stop.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.8) #3
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !182
  tail call void @arm_heavy_mb() #3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !184
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr46 = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !186
  %8 = and i32 %7, -33554433
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr51 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %8) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !187
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr58 = getelementptr i8, ptr %12, i32 1536
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !188
  %14 = and i32 %13, -33554433
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr64 = getelementptr i8, ptr %16, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %14) #3, !srcloc !183
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr68 = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !189
  tail call void @msleep(i32 noundef 10) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_adapter_stop, %if.then84)) #3
          to label %do.end87 [label %if.then84], !srcloc !180

if.then84:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_adapter_stop.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.10) #3
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %do.body39
  %call88 = tail call fastcc i32 @ixgb_mac_reset(ptr noundef %hw)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_adapter_stop, %if.then101)) #3
          to label %do.body105 [label %if.then101], !srcloc !180

if.then101:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_adapter_stop.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.8) #3
  br label %do.body105

do.body105:                                       ; preds = %if.then101, %do.end87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !190
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr109 = getelementptr i8, ptr %21, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 -1) #3, !srcloc !183
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr113 = getelementptr i8, ptr %23, i32 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !191
  %and117 = and i32 %call88, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118 = icmp ne i32 %and117, 0
  br label %cleanup

cleanup:                                          ; preds = %do.body105, %if.then17, %do.body5
  %retval.0 = phi i1 [ %tobool118, %do.body105 ], [ false, %if.then17 ], [ false, %do.body5 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgb_mac_reset(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !192
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 62471) #3, !srcloc !183
  tail call void @msleep(i32 noundef 1) #3
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !185
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !193
  %subsystem_vendor_id = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 20
  %6 = ptrtoint ptr %subsystem_vendor_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %7)
  %cmp = icmp eq i16 %7, 4238
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !194
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -1056178176) #3, !srcloc !183
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !195
  %13 = and i32 %12, -12289
  %14 = or i32 %13, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !196
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #3, !srcloc !183
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !197
  tail call void @msleep(i32 noundef 305) #3
  tail call fastcc void @ixgb_write_phy_reg(ptr noundef %hw, i32 noundef 51203, i32 noundef 3, i16 noundef zeroext 356) #3
  %20 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 51203, i32 noundef 3) #3
  %21 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 51203, i32 noundef 3) #3
  tail call fastcc void @ixgb_write_phy_reg(ptr noundef %hw, i32 noundef 51200, i32 noundef 3, i16 noundef zeroext 32703) #3
  %22 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 51200, i32 noundef 3) #3
  %23 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 51200, i32 noundef 3) #3
  tail call void @msleep(i32 noundef 305) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl_reg.0 = phi i32 [ 3265, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %phy_type = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 7
  %24 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp10 = icmp eq i32 %25, 4
  br i1 %cmp10, label %ixgb_optics_reset.exit, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

ixgb_optics_reset.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ixgb_write_phy_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 1, i16 noundef zeroext -32768) #3
  %26 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 1) #3
  br label %if.end13

if.end13:                                         ; preds = %ixgb_optics_reset.exit, %if.end.if.end13_crit_edge
  ret i32 %ctrl_reg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgb_init_hw(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_hw.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_hw, %if.then)) #3
          to label %do.body3 [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_hw.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #3
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_hw.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_hw, %if.then15)) #3
          to label %do.end18 [label %if.then15], !srcloc !180

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_hw.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.10) #3
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body3
  %call19 = tail call fastcc i32 @ixgb_mac_reset(ptr noundef %hw)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_hw.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_hw, %if.then32)) #3
          to label %do.body36 [label %if.then32], !srcloc !180

if.then32:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_hw.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.13) #3
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %do.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !198
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097152) #3, !srcloc !183
  tail call void @msleep(i32 noundef 10) #3
  %call39 = tail call zeroext i1 @ixgb_get_eeprom_data(ptr noundef %hw) #3
  br i1 %call39, label %if.end41, label %do.body36.cleanup_crit_edge

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %do.body36
  %call42 = tail call zeroext i16 @ixgb_get_ee_device_id(ptr noundef %hw) #3
  %device_id = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 17
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call42, ptr %device_id, align 2
  %call43 = tail call fastcc i32 @ixgb_identify_phy(ptr noundef %hw)
  %phy_type = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call43, ptr %phy_type, align 4
  tail call fastcc void @ixgb_init_rx_addrs(ptr noundef %hw)
  %curr_mac_addr = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 11
  %call44 = tail call fastcc zeroext i1 @mac_addr_valid(ptr noundef %curr_mac_addr)
  br i1 %call44, label %if.end62, label %do.body46

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_hw.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_hw, %if.then58)) #3
          to label %cleanup [label %if.then58], !srcloc !180

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_hw.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.15) #3
  br label %cleanup

if.end62:                                         ; preds = %if.end41
  %adapter_stopped = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %adapter_stopped, align 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !185
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !199
  %and.i = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %type.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %type.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %and4.i = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, i32 1, i32 2
  br label %ixgb_get_bus_info.exit

if.else.i:                                        ; preds = %if.end62
  %10 = trunc i32 %8 to i16
  %trunc.i = and i16 %10, -16384
  %11 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %sw.default.i [
    i16 0, label %if.else.i.ixgb_get_bus_info.exit_crit_edge
    i16 16384, label %sw.bb11.i
    i16 -32768, label %sw.bb14.i
  ]

if.else.i.ixgb_get_bus_info.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_get_bus_info.exit

sw.bb11.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_get_bus_info.exit

sw.bb14.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_get_bus_info.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_get_bus_info.exit

ixgb_get_bus_info.exit:                           ; preds = %sw.default.i, %sw.bb14.i, %sw.bb11.i, %if.else.i.ixgb_get_bus_info.exit_crit_edge, %if.then.i
  %.sink.i = phi i32 [ 3, %sw.bb11.i ], [ 4, %sw.bb14.i ], [ 5, %sw.default.i ], [ %cond6.i, %if.then.i ], [ 2, %if.else.i.ixgb_get_bus_info.exit_crit_edge ]
  %bus.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %bus.i, align 4
  %and19.i = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond21.i = select i1 %tobool20.not.i, i32 1, i32 2
  %width.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond21.i, ptr %width.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_hw.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_hw, %if.then75)) #3
          to label %do.body79 [label %if.then75], !srcloc !180

if.then75:                                        ; preds = %ixgb_get_bus_info.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_hw.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.17) #3
  br label %do.body79

do.body79:                                        ; preds = %do.body79.do.body79_crit_edge, %if.then75, %ixgb_get_bus_info.exit
  %i.0124 = phi i32 [ %inc, %do.body79.do.body79_crit_edge ], [ 0, %ixgb_get_bus_info.exit ], [ 0, %if.then75 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !200
  tail call void @arm_heavy_mb() #3
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr83 = getelementptr i8, ptr %15, i32 512
  %shl = shl nuw nsw i32 %i.0124, 2
  %add.ptr84 = getelementptr i8, ptr %add.ptr83, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 0) #3, !srcloc !183
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body79.do.body.i_crit_edge, label %do.body79.do.body79_crit_edge

do.body79.do.body79_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body79

do.body79.do.body.i_crit_edge:                    ; preds = %do.body79
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body79.do.body.i_crit_edge
  %offset.04.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body79.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !201
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr.i118 = getelementptr i8, ptr %17, i32 1024
  %shl.i = shl nuw nsw i32 %offset.04.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i118, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #3, !srcloc !183
  %inc.i = add nuw nsw i32 %offset.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %ixgb_clear_vfta.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

ixgb_clear_vfta.exit:                             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ixgb_clear_hw_cntrs(ptr noundef %hw)
  tail call fastcc void @ixgb_setup_fc(ptr noundef %hw)
  tail call void @ixgb_check_for_link(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %ixgb_clear_vfta.exit, %if.then58, %do.body46, %do.body36.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %ixgb_clear_vfta.exit ], [ false, %do.body36.cleanup_crit_edge ], [ false, %if.then58 ], [ false, %do.body46 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgb_get_eeprom_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ixgb_get_ee_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgb_identify_phy(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device_id = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 17
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %1, label %do.body128 [
    i16 4168, label %do.body3
    i16 6728, label %sw.bb19
    i16 6984, label %do.body57
    i16 4254, label %do.body74
  ]

do.body3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then15)) #3
          to label %sw.epilog [label %if.then15], !srcloc !180

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.42) #3
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  %call20 = tail call fastcc i32 @ixgb_identify_xpak_vendor(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %do.body23, label %do.body39

do.body23:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then35)) #3
          to label %sw.epilog [label %if.then35], !srcloc !180

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.44) #3
  br label %sw.epilog

do.body39:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then51)) #3
          to label %sw.epilog [label %if.then51], !srcloc !180

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.46) #3
  br label %sw.epilog

do.body57:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then69)) #3
          to label %sw.epilog [label %if.then69], !srcloc !180

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.48) #3
  br label %sw.epilog

do.body74:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then86)) #3
          to label %do.end89 [label %if.then86], !srcloc !180

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.50) #3
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body74
  %call90 = tail call fastcc i32 @ixgb_identify_xpak_vendor(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %do.body94, label %do.body111

do.body94:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then106)) #3
          to label %sw.epilog [label %if.then106], !srcloc !180

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.44) #3
  br label %sw.epilog

do.body111:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then123)) #3
          to label %sw.epilog [label %if.then123], !srcloc !180

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.46) #3
  br label %sw.epilog

do.body128:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_phy, %if.then140)) #3
          to label %sw.epilog [label %if.then140], !srcloc !180

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_phy.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.52) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then140, %do.body128, %if.then123, %do.body111, %if.then106, %do.body94, %if.then69, %do.body57, %if.then51, %do.body39, %if.then35, %do.body23, %if.then15, %do.body3
  %phy_type.0 = phi i32 [ 4, %if.then15 ], [ 3, %if.then35 ], [ 1, %if.then51 ], [ 2, %if.then69 ], [ 3, %if.then106 ], [ 1, %if.then123 ], [ 0, %if.then140 ], [ 4, %do.body3 ], [ 3, %do.body23 ], [ 1, %do.body39 ], [ 2, %do.body57 ], [ 3, %do.body94 ], [ 1, %do.body111 ], [ 0, %do.body128 ]
  %subsystem_vendor_id = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 20
  %3 = ptrtoint ptr %subsystem_vendor_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %4)
  %cmp145 = icmp eq i16 %4, 4238
  %spec.select = select i1 %cmp145, i32 5, i32 %phy_type.0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_init_rx_addrs(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %curr_mac_addr = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 11
  %call3 = tail call fastcc zeroext i1 @mac_addr_valid(ptr noundef %curr_mac_addr)
  br i1 %call3, label %do.body25, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ixgb_get_ee_mac_addr(ptr noundef %hw, ptr noundef %curr_mac_addr) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then19)) #3
          to label %do.body62 [label %if.then19], !srcloc !180

if.then19:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.56, ptr noundef %curr_mac_addr) #3
  br label %do.body62

do.body25:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then37)) #3
          to label %do.body41 [label %if.then37], !srcloc !180

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.58) #3
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then53)) #3
          to label %do.end58 [label %if.then53], !srcloc !180

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.60, ptr noundef %curr_mac_addr) #3
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_rar_set.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then.i)) #3
          to label %ixgb_rar_set.exit [label %if.then.i], !srcloc !180

if.then.i:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_rar_set.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33) #3
  br label %ixgb_rar_set.exit

ixgb_rar_set.exit:                                ; preds = %if.then.i, %do.end58
  %0 = ptrtoint ptr %curr_mac_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_mac_addr, align 1
  %conv.i = zext i8 %1 to i32
  %arrayidx3.i = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx5.i = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %5 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 16
  %or8.i = or i32 %or.i, %shl7.i
  %arrayidx9.i = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %7 to i32
  %shl11.i = shl nuw i32 %conv10.i, 24
  %or12.i = or i32 %or8.i, %shl11.i
  %arrayidx13.i = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %9 to i32
  %arrayidx15.i = getelementptr %struct.ixgb_hw, ptr %hw, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %11 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %or18.i = or i32 %shl17.i, %conv14.i
  %or19.i = or i32 %or18.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !202
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #3
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !203
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #3
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr33.i = getelementptr i8, ptr %17, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %15) #3, !srcloc !183
  br label %do.body62

do.body62:                                        ; preds = %ixgb_rar_set.exit, %if.then19, %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_init_rx_addrs, %if.then74)) #3
          to label %do.end77 [label %if.then74], !srcloc !180

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.20) #3
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !204
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr82 = getelementptr i8, ptr %19, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !205
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr90 = getelementptr i8, ptr %21, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !204
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr82.1 = getelementptr i8, ptr %23, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.1, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !205
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr90.1 = getelementptr i8, ptr %25, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.1, i32 0) #3, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mac_addr_valid(ptr nocapture noundef readonly %mac_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_addr_valid.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_addr_valid, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_addr_valid.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.70) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else, label %do.body5

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_addr_valid.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_addr_valid, %if.then17)) #3
          to label %if.end60 [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_addr_valid.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.72) #3
  br label %if.end60

if.else:                                          ; preds = %do.end
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_addr, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 2
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %6, %4
  %add.ptr3.i = getelementptr i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %do.body23, label %if.else39

do.body23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_addr_valid.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_addr_valid, %if.then35)) #3
          to label %if.end60 [label %if.then35], !srcloc !180

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_addr_valid.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.74) #3
  br label %if.end60

if.else39:                                        ; preds = %if.else
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_addr, align 4
  %conv.i = zext i16 %8 to i32
  %or.i = or i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i73 = icmp eq i32 %or.i, 0
  br i1 %cmp.i73, label %do.body42, label %if.else39.if.end60_crit_edge

if.else39.if.end60_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

do.body42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_addr_valid.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_addr_valid, %if.then54)) #3
          to label %if.end60 [label %if.then54], !srcloc !180

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_addr_valid.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.76) #3
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %do.body42, %if.else39.if.end60_crit_edge, %if.then35, %do.body23, %if.then17, %do.body5
  %is_valid.0.off0 = phi i1 [ true, %if.else39.if.end60_crit_edge ], [ false, %if.then17 ], [ false, %if.then35 ], [ false, %if.then54 ], [ false, %do.body5 ], [ false, %do.body23 ], [ false, %do.body42 ]
  ret i1 %is_valid.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_clear_hw_cntrs(ptr noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_clear_hw_cntrs, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.67) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter_stopped = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 16
  %0 = ptrtoint ptr %adapter_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adapter_stopped, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end20, label %do.body5

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_clear_hw_cntrs, %if.then17)) #3
          to label %return [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.69) #3
  br label %return

if.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !206
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr27 = getelementptr i8, ptr %6, i32 8196
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !207
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr34 = getelementptr i8, ptr %9, i32 8200
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !208
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr41 = getelementptr i8, ptr %12, i32 8204
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !209
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr48 = getelementptr i8, ptr %15, i32 8208
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !210
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr55 = getelementptr i8, ptr %18, i32 8212
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !211
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr62 = getelementptr i8, ptr %21, i32 8216
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !212
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr69 = getelementptr i8, ptr %24, i32 8220
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !213
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr76 = getelementptr i8, ptr %27, i32 8224
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !214
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr83 = getelementptr i8, ptr %30, i32 8228
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !215
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr90 = getelementptr i8, ptr %33, i32 8232
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !216
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr97 = getelementptr i8, ptr %36, i32 8236
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !217
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr104 = getelementptr i8, ptr %39, i32 8240
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !218
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr111 = getelementptr i8, ptr %42, i32 8244
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !219
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %add.ptr118 = getelementptr i8, ptr %45, i32 8248
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !220
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %add.ptr125 = getelementptr i8, ptr %48, i32 8252
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !221
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %add.ptr132 = getelementptr i8, ptr %51, i32 8256
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !222
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw, align 4
  %add.ptr139 = getelementptr i8, ptr %54, i32 8260
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !223
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 4
  %add.ptr146 = getelementptr i8, ptr %57, i32 8264
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !224
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %add.ptr153 = getelementptr i8, ptr %60, i32 8272
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !225
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %add.ptr160 = getelementptr i8, ptr %63, i32 8280
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !226
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %add.ptr167 = getelementptr i8, ptr %66, i32 8288
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !227
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr174 = getelementptr i8, ptr %69, i32 8296
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !228
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %add.ptr181 = getelementptr i8, ptr %72, i32 8304
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !229
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 4
  %add.ptr188 = getelementptr i8, ptr %75, i32 8312
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !230
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr195 = getelementptr i8, ptr %78, i32 8320
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !231
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %add.ptr202 = getelementptr i8, ptr %81, i32 8448
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !232
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 4
  %add.ptr209 = getelementptr i8, ptr %84, i32 8452
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !233
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr216 = getelementptr i8, ptr %87, i32 8456
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !234
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 4
  %add.ptr223 = getelementptr i8, ptr %90, i32 8460
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !235
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 4
  %add.ptr230 = getelementptr i8, ptr %93, i32 8464
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !236
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 4
  %add.ptr237 = getelementptr i8, ptr %96, i32 8468
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !237
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %add.ptr244 = getelementptr i8, ptr %99, i32 8472
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr244) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !238
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %add.ptr251 = getelementptr i8, ptr %102, i32 8476
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !239
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 4
  %add.ptr258 = getelementptr i8, ptr %105, i32 8480
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr258) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !240
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 4
  %add.ptr265 = getelementptr i8, ptr %108, i32 8484
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr265) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !241
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 4
  %add.ptr272 = getelementptr i8, ptr %111, i32 8488
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !242
  %113 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw, align 4
  %add.ptr279 = getelementptr i8, ptr %114, i32 8492
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr279) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !243
  %116 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw, align 4
  %add.ptr286 = getelementptr i8, ptr %117, i32 8496
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !244
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw, align 4
  %add.ptr293 = getelementptr i8, ptr %120, i32 8500
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !245
  %122 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw, align 4
  %add.ptr300 = getelementptr i8, ptr %123, i32 8504
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr300) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !246
  %125 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw, align 4
  %add.ptr307 = getelementptr i8, ptr %126, i32 8508
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !247
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %add.ptr314 = getelementptr i8, ptr %129, i32 8512
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !248
  %131 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw, align 4
  %add.ptr321 = getelementptr i8, ptr %132, i32 8516
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr321) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !249
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 4
  %add.ptr328 = getelementptr i8, ptr %135, i32 8520
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr328) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !250
  %137 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw, align 4
  %add.ptr335 = getelementptr i8, ptr %138, i32 8528
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr335) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !251
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %add.ptr342 = getelementptr i8, ptr %141, i32 8560
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr342) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !252
  %143 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw, align 4
  %add.ptr349 = getelementptr i8, ptr %144, i32 8568
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr349) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !253
  %146 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw, align 4
  %add.ptr356 = getelementptr i8, ptr %147, i32 8576
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr356) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !254
  %149 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw, align 4
  %add.ptr363 = getelementptr i8, ptr %150, i32 8584
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !255
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %add.ptr370 = getelementptr i8, ptr %153, i32 8592
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr370) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !256
  %155 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw, align 4
  %add.ptr377 = getelementptr i8, ptr %156, i32 8600
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr377) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !257
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 4
  %add.ptr384 = getelementptr i8, ptr %159, i32 8608
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr384) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !258
  %161 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw, align 4
  %add.ptr391 = getelementptr i8, ptr %162, i32 8616
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr391) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !259
  %164 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw, align 4
  %add.ptr398 = getelementptr i8, ptr %165, i32 8624
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr398) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !260
  %167 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hw, align 4
  %add.ptr405 = getelementptr i8, ptr %168, i32 8632
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr405) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !261
  %170 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw, align 4
  %add.ptr412 = getelementptr i8, ptr %171, i32 8640
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr412) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !262
  %173 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw, align 4
  %add.ptr419 = getelementptr i8, ptr %174, i32 8648
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr419) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !263
  %176 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw, align 4
  %add.ptr426 = getelementptr i8, ptr %177, i32 8656
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr426) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !264
  %179 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw, align 4
  %add.ptr433 = getelementptr i8, ptr %180, i32 8664
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr433) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !265
  br label %return

return:                                           ; preds = %if.end20, %if.then17, %do.body5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_setup_fc(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_setup_fc.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_setup_fc, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_setup_fc.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !266
  %3 = and i32 %2, -25
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %fc = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2
  %type = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %6, label %do.body16 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %4, 128
  br label %do.body41

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %or7 = or i32 %4, 134217728
  br label %do.body41

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %or9 = or i32 %4, 268435456
  %pause_time = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pause_time, align 4
  br label %do.body41

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %or12 = or i32 %4, 402653184
  %pause_time14 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %pause_time14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pause_time14, align 4
  br label %do.body41

do.body16:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_setup_fc.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_setup_fc, %if.then28)) #3
          to label %do.body33 [label %if.then28], !srcloc !180

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_setup_fc.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.66) #3
  br label %do.body33

do.body33:                                        ; preds = %if.then28, %do.body16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #3, !srcloc !267
  unreachable

do.body41:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb
  %pap_reg.0.shrunk = phi i16 [ %11, %sw.bb11 ], [ %9, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  %ctrl_reg.0 = phi i32 [ %or12, %sw.bb11 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !268
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.0)
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #3, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pap_reg.0.shrunk)
  %cmp.not = icmp eq i16 %pap_reg.0.shrunk, 0
  br i1 %cmp.not, label %do.body41.if.end53_crit_edge, label %do.body48

do.body41.if.end53_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

do.body48:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #5
  %pap_reg.0 = zext i16 %pap_reg.0.shrunk to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !269
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %pap_reg.0)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr52 = getelementptr i8, ptr %17, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %15) #3, !srcloc !183
  br label %if.end53

if.end53:                                         ; preds = %do.body48, %do.body41.if.end53_crit_edge
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %and56 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body59, label %if.else

do.body59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !270
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr63 = getelementptr i8, ptr %21, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !271
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr68 = getelementptr i8, ptr %23, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #3, !srcloc !183
  br label %if.end94

if.else:                                          ; preds = %if.end53
  %send_xon = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %send_xon to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %send_xon, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool70.not = icmp eq i8 %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %low_water84 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %low_water84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %low_water84, align 4
  br i1 %tobool70.not, label %do.body80, label %do.body72

do.body72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %or76 = or i32 %27, -2147483648
  %28 = tail call i32 @llvm.bswap.i32(i32 %or76)
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr78 = getelementptr i8, ptr %30, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %28) #3, !srcloc !183
  br label %do.body88

do.body80:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %27)
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr86 = getelementptr i8, ptr %33, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %31) #3, !srcloc !183
  br label %do.body88

do.body88:                                        ; preds = %do.body80, %do.body72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !272
  tail call void @arm_heavy_mb() #3
  %34 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fc, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %add.ptr93 = getelementptr i8, ptr %38, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %36) #3, !srcloc !183
  br label %if.end94

if.end94:                                         ; preds = %do.body88, %do.body59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_check_for_link(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_check_for_link.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_check_for_link, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_check_for_link.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1824
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !273
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr9 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !274
  %6 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  %7 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %link_up = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 15
  %8 = ptrtoint ptr %link_up to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %link_up, align 4
  br label %if.end47

if.else:                                          ; preds = %do.end
  %tobool13.not.not = xor i1 %tobool13.not, true
  %or.cond56 = select i1 %tobool13.not.not, i1 true, i1 %tobool15.not
  br i1 %or.cond56, label %if.else.do.body.i62_crit_edge, label %do.body23

if.else.do.body.i62_crit_edge:                    ; preds = %if.else
  br label %do.body.i62

do.body23:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_check_for_link.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_check_for_link, %if.then35)) #3
          to label %do.body.i [label %if.then35], !srcloc !180

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_check_for_link.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.36) #3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond29.i.do.body.i_crit_edge, %if.then35, %do.body23
  %lrst_retries.0.i = phi i8 [ %dec32.i, %do.cond29.i.do.body.i_crit_edge ], [ 8, %do.body23 ], [ 8, %if.then35 ]
  %wait_retries.0.i = phi i8 [ 0, %do.cond29.i.do.body.i_crit_edge ], [ 8, %do.body23 ], [ 8, %if.then35 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !275
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !276
  %12 = or i32 %11, 134217728
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #3, !srcloc !183
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs25.i.do.body5.i_crit_edge, %do.body.i
  %wait_retries.1.i = phi i8 [ %wait_retries.0.i, %do.body.i ], [ %dec.i, %land.rhs25.i.do.body5.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2791724) #3
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr9.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !277
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body5.i.land.rhs25.i_crit_edge, label %land.end.i

do.body5.i.land.rhs25.i_crit_edge:                ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs25.i

land.end.i:                                       ; preds = %do.body5.i
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr16.i = getelementptr i8, ptr %21, i32 1824
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !278
  %23 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not.i = icmp eq i32 %23, 0
  br i1 %tobool21.not.i, label %land.end.i.land.rhs25.i_crit_edge, label %land.end.i.ixgb_link_reset.exit_crit_edge

land.end.i.ixgb_link_reset.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_link_reset.exit

land.end.i.land.rhs25.i_crit_edge:                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs25.i

land.rhs25.i:                                     ; preds = %land.end.i.land.rhs25.i_crit_edge, %do.body5.i.land.rhs25.i_crit_edge
  %dec.i = add i8 %wait_retries.1.i, -1
  %tobool26.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool26.not.i, label %do.cond29.i, label %land.rhs25.i.do.body5.i_crit_edge

land.rhs25.i.do.body5.i_crit_edge:                ; preds = %land.rhs25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5.i

do.cond29.i:                                      ; preds = %land.rhs25.i
  %dec32.i = add nsw i8 %lrst_retries.0.i, -1
  %tobool34.not.i = icmp eq i8 %dec32.i, 0
  br i1 %tobool34.not.i, label %do.cond29.i.ixgb_link_reset.exit_crit_edge, label %do.cond29.i.do.body.i_crit_edge

do.cond29.i.do.body.i_crit_edge:                  ; preds = %do.cond29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.cond29.i.ixgb_link_reset.exit_crit_edge:       ; preds = %do.cond29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_link_reset.exit

ixgb_link_reset.exit:                             ; preds = %do.cond29.i.ixgb_link_reset.exit_crit_edge, %land.end.i.ixgb_link_reset.exit_crit_edge
  %24 = phi i1 [ true, %land.end.i.ixgb_link_reset.exit_crit_edge ], [ false, %do.cond29.i.ixgb_link_reset.exit_crit_edge ]
  %link_up40 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 15
  %frombool41 = zext i1 %24 to i8
  %25 = ptrtoint ptr %link_up40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool41, ptr %link_up40, align 4
  br label %if.end47

do.body.i62:                                      ; preds = %do.cond29.i75.do.body.i62_crit_edge, %if.else.do.body.i62_crit_edge
  %lrst_retries.0.i60 = phi i8 [ %dec32.i73, %do.cond29.i75.do.body.i62_crit_edge ], [ 8, %if.else.do.body.i62_crit_edge ]
  %wait_retries.0.i61 = phi i8 [ 0, %do.cond29.i75.do.body.i62_crit_edge ], [ 8, %if.else.do.body.i62_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !275
  tail call void @arm_heavy_mb() #3
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !276
  %29 = or i32 %28, 134217728
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #3, !srcloc !183
  br label %do.body5.i66

do.body5.i66:                                     ; preds = %land.rhs25.i72.do.body5.i66_crit_edge, %do.body.i62
  %wait_retries.1.i63 = phi i8 [ %wait_retries.0.i61, %do.body.i62 ], [ %dec.i70, %land.rhs25.i72.do.body5.i66_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2791724) #3
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr9.i64 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i64) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !277
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i65 = icmp eq i32 %36, 0
  br i1 %tobool.not.i65, label %do.body5.i66.land.rhs25.i72_crit_edge, label %land.end.i69

do.body5.i66.land.rhs25.i72_crit_edge:            ; preds = %do.body5.i66
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs25.i72

land.end.i69:                                     ; preds = %do.body5.i66
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %add.ptr16.i67 = getelementptr i8, ptr %38, i32 1824
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i67) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !278
  %40 = and i32 %39, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool21.not.i68 = icmp eq i32 %40, 0
  br i1 %tobool21.not.i68, label %land.end.i69.land.rhs25.i72_crit_edge, label %land.end.i69.ixgb_link_reset.exit76_crit_edge

land.end.i69.ixgb_link_reset.exit76_crit_edge:    ; preds = %land.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_link_reset.exit76

land.end.i69.land.rhs25.i72_crit_edge:            ; preds = %land.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs25.i72

land.rhs25.i72:                                   ; preds = %land.end.i69.land.rhs25.i72_crit_edge, %do.body5.i66.land.rhs25.i72_crit_edge
  %dec.i70 = add i8 %wait_retries.1.i63, -1
  %tobool26.not.i71 = icmp eq i8 %dec.i70, 0
  br i1 %tobool26.not.i71, label %do.cond29.i75, label %land.rhs25.i72.do.body5.i66_crit_edge

land.rhs25.i72.do.body5.i66_crit_edge:            ; preds = %land.rhs25.i72
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5.i66

do.cond29.i75:                                    ; preds = %land.rhs25.i72
  %dec32.i73 = add nsw i8 %lrst_retries.0.i60, -1
  %tobool34.not.i74 = icmp eq i8 %dec32.i73, 0
  br i1 %tobool34.not.i74, label %do.cond29.i75.ixgb_link_reset.exit76_crit_edge, label %do.cond29.i75.do.body.i62_crit_edge

do.cond29.i75.do.body.i62_crit_edge:              ; preds = %do.cond29.i75
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i62

do.cond29.i75.ixgb_link_reset.exit76_crit_edge:   ; preds = %do.cond29.i75
  call void @__sanitizer_cov_trace_pc() #5
  br label %ixgb_link_reset.exit76

ixgb_link_reset.exit76:                           ; preds = %do.cond29.i75.ixgb_link_reset.exit76_crit_edge, %land.end.i69.ixgb_link_reset.exit76_crit_edge
  %41 = phi i1 [ true, %land.end.i69.ixgb_link_reset.exit76_crit_edge ], [ false, %do.cond29.i75.ixgb_link_reset.exit76_crit_edge ]
  %link_up44 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 15
  %frombool45 = zext i1 %41 to i8
  %42 = ptrtoint ptr %link_up44 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool45, ptr %link_up44, align 4
  br label %if.end47

if.end47:                                         ; preds = %ixgb_link_reset.exit76, %ixgb_link_reset.exit, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_mc_addr_list_update(ptr nocapture noundef %hw, ptr noundef %mc_addr_list, i32 noundef %mc_addr_count, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_mc_addrs = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mc_addr_count, ptr %num_mc_addrs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then15)) #3
          to label %do.end18 [label %if.then15], !srcloc !180

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.20) #3
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !279
  tail call void @arm_heavy_mb() #3
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr23 = getelementptr i8, ptr %2, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !280
  tail call void @arm_heavy_mb() #3
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr31 = getelementptr i8, ptr %4, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !279
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr23.1 = getelementptr i8, ptr %6, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.1, i32 0) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !280
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr31.1 = getelementptr i8, ptr %8, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.1, i32 0) #3, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then44)) #3
          to label %do.body51 [label %if.then44], !srcloc !180

if.then44:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.22) #3
  br label %do.body51

for.cond61.preheader:                             ; preds = %do.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_addr_count)
  %cmp62209.not = icmp eq i32 %mc_addr_count, 0
  br i1 %cmp62209.not, label %for.cond61.preheader.do.body138_crit_edge, label %do.body64.lr.ph

for.cond61.preheader.do.body138_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body138

do.body64.lr.ph:                                  ; preds = %for.cond61.preheader
  %mc_filter_type.i = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 9
  %add133 = add i32 %pad, 6
  br label %do.body64

do.body51:                                        ; preds = %do.body51.do.body51_crit_edge, %if.then44, %do.end18
  %i.1208 = phi i32 [ %inc59, %do.body51.do.body51_crit_edge ], [ 0, %do.end18 ], [ 0, %if.then44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !281
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr55 = getelementptr i8, ptr %10, i32 512
  %shl56 = shl nuw nsw i32 %i.1208, 2
  %add.ptr57 = getelementptr i8, ptr %add.ptr55, i32 %shl56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #3, !srcloc !183
  %inc59 = add nuw nsw i32 %i.1208, 1
  %exitcond.not = icmp eq i32 %inc59, 128
  br i1 %exitcond.not, label %for.cond61.preheader, label %do.body51.do.body51_crit_edge

do.body51.do.body51_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body51

do.body64:                                        ; preds = %if.end132.do.body64_crit_edge, %do.body64.lr.ph
  %i.2214 = phi i32 [ 0, %do.body64.lr.ph ], [ %inc136, %if.end132.do.body64_crit_edge ]
  %rar_used_count.0213 = phi i32 [ 1, %do.body64.lr.ph ], [ %rar_used_count.1, %if.end132.do.body64_crit_edge ]
  %mca.0210 = phi ptr [ %mc_addr_list, %do.body64.lr.ph ], [ %add.ptr134, %if.end132.do.body64_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then76)) #3
          to label %do.body80 [label %if.then76], !srcloc !180

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.24) #3
  br label %do.body80

do.body80:                                        ; preds = %if.then76, %do.body64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then92)) #3
          to label %do.end95 [label %if.then92], !srcloc !180

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.26, i32 noundef %i.2214, ptr noundef %mca.0210) #3
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rar_used_count.0213)
  %cmp96 = icmp ult i32 %rar_used_count.0213, 3
  br i1 %cmp96, label %if.then97, label %if.else

if.then97:                                        ; preds = %do.end95
  tail call void @ixgb_rar_set(ptr noundef %hw, ptr noundef %mca.0210, i32 noundef %rar_used_count.0213)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then110)) #3
          to label %do.end113 [label %if.then110], !srcloc !180

if.then110:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.28, i32 noundef %i.2214) #3
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %if.then97
  %inc114 = add nuw nsw i32 %rar_used_count.0213, 1
  br label %if.end132

if.else:                                          ; preds = %do.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then.i)) #3
          to label %do.end.i [label %if.then.i], !srcloc !180

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else
  %11 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mc_filter_type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %12, label %do.body32.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb15.i
    i32 3, label %sw.bb24.i
  ]

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr i8, ptr %mca.0210, i32 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = lshr i8 %15, 4
  br label %ixgb_hash_mc_addr.exit

sw.bb6.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx7.i = getelementptr i8, ptr %mca.0210, i32 4
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i, align 1
  %19 = lshr i8 %18, 3
  br label %ixgb_hash_mc_addr.exit

sw.bb15.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx16.i = getelementptr i8, ptr %mca.0210, i32 4
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.i, align 1
  %22 = lshr i8 %21, 2
  br label %ixgb_hash_mc_addr.exit

sw.bb24.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx25.i = getelementptr i8, ptr %mca.0210, i32 4
  %23 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25.i, align 1
  br label %ixgb_hash_mc_addr.exit

do.body32.i:                                      ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then44.i)) #3
          to label %do.body49.i [label %if.then44.i], !srcloc !180

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.63) #3
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.then44.i, %do.body32.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #3, !srcloc !282
  unreachable

ixgb_hash_mc_addr.exit:                           ; preds = %sw.bb24.i, %sw.bb15.i, %sw.bb6.i, %sw.bb.i
  %.sink71.i = phi i8 [ %24, %sw.bb24.i ], [ %22, %sw.bb15.i ], [ %19, %sw.bb6.i ], [ %16, %sw.bb.i ]
  %.sink.i = phi i32 [ 8, %sw.bb24.i ], [ 6, %sw.bb15.i ], [ 5, %sw.bb6.i ], [ 4, %sw.bb.i ]
  %conv26.i = zext i8 %.sink71.i to i32
  %arrayidx27.i = getelementptr i8, ptr %mca.0210, i32 5
  %25 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx27.i, align 1
  %conv29.i = zext i8 %26 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, %.sink.i
  %shl30.masked.i = and i32 %shl30.i, 4094
  %and.i = or i32 %shl30.masked.i, %conv26.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then128)) #3
          to label %do.end131 [label %if.then128], !srcloc !180

if.then128:                                       ; preds = %ixgb_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.30, i32 noundef %and.i) #3
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %ixgb_hash_mc_addr.exit
  %and1.i = and i32 %and.i, 31
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 512
  %29 = lshr i32 %and.i, 3
  %shl.i = and i32 %29, 508
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #3, !srcloc !185
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !283
  %shl4.i = shl nuw i32 1, %and1.i
  %or.i = or i32 %31, %shl4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !284
  tail call void @arm_heavy_mb() #3
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 512
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %32) #3, !srcloc !183
  br label %if.end132

if.end132:                                        ; preds = %do.end131, %do.end113
  %rar_used_count.1 = phi i32 [ %inc114, %do.end113 ], [ 3, %do.end131 ]
  %add.ptr134 = getelementptr i8, ptr %mca.0210, i32 %add133
  %inc136 = add nuw i32 %i.2214, 1
  %exitcond218.not = icmp eq i32 %inc136, %mc_addr_count
  br i1 %exitcond218.not, label %if.end132.do.body138_crit_edge, label %if.end132.do.body64_crit_edge

if.end132.do.body64_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body64

if.end132.do.body138_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body138

do.body138:                                       ; preds = %if.end132.do.body138_crit_edge, %for.cond61.preheader.do.body138_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_mc_addr_list_update, %if.then150)) #3
          to label %do.end153 [label %if.then150], !srcloc !180

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.32) #3
  br label %do.end153

do.end153:                                        ; preds = %if.then150, %do.body138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_rar_set(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_rar_set.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_rar_set, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_rar_set.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx3 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %arrayidx5 = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %arrayidx9 = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %arrayidx13 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %arrayidx15 = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %shl17, %conv14
  %or19 = or i32 %or18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !202
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 384
  %shl23 = shl i32 %index, 3
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %shl23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %12) #3, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !203
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 384
  %add = or i32 %shl23, 4
  %add.ptr33 = getelementptr i8, ptr %add.ptr30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %15) #3, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_write_vfta(ptr nocapture noundef readonly %hw, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !285
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  %shl = shl i32 %offset, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #3, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ixgb_check_for_bad_link(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8592
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !185
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !286
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 8584
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !185
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !287
  %lastLFC = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 29
  %10 = ptrtoint ptr %lastLFC to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lastLFC, align 4
  %add = add i32 %11, 250
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp9 = icmp ult i32 %add, %5
  br i1 %cmp9, label %if.then.do.body_crit_edge, label %lor.lhs.false

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %lastRFC = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 30
  %12 = ptrtoint ptr %lastRFC to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lastRFC, align 4
  %add10 = add i32 %13, 250
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %9)
  %cmp11 = icmp ult i32 %add10, %9
  br i1 %cmp11, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_check_for_bad_link.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_check_for_bad_link, %if.then17)) #3
          to label %if.end18 [label %if.then17], !srcloc !180

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_check_for_bad_link.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.39) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body, %lor.lhs.false.if.end18_crit_edge
  %bad_link_returncode.0 = phi i1 [ false, %lor.lhs.false.if.end18_crit_edge ], [ true, %if.then17 ], [ true, %do.body ]
  %14 = ptrtoint ptr %lastLFC to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %lastLFC, align 4
  %lastRFC20 = getelementptr inbounds %struct.ixgb_hw, ptr %hw, i32 0, i32 30
  %15 = ptrtoint ptr %lastRFC20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %lastRFC20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %entry.if.end21_crit_edge
  %bad_link_returncode.1.off0 = phi i1 [ %bad_link_returncode.0, %if.end18 ], [ false, %entry.if.end21_crit_edge ]
  ret i1 %bad_link_returncode.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_led_on(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !288
  %3 = and i32 %2, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !289
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #3, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_led_off(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !290
  %3 = or i32 %2, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !291
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #3, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_write_phy_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg_address, i32 noundef %device_type, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !292
  tail call void @arm_heavy_mb() #3
  %conv = zext i16 %data to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !183
  %shl52 = shl i32 %device_type, 16
  %or = or i32 %shl52, %reg_address
  %or55 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !293
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr60 = getelementptr i8, ptr %5, i32 1880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %3) #3, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #3
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr64 = getelementptr i8, ptr %8, i32 1880
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #3, !srcloc !185
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp66 = icmp eq i32 %and, 0
  br i1 %cmp66, label %entry.do.body70_crit_edge, label %for.cond

entry.do.body70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #3
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr64.1 = getelementptr i8, ptr %13, i32 1880
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.1) #3, !srcloc !185
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.1 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp66.1 = icmp eq i32 %and.1, 0
  br i1 %cmp66.1, label %for.cond.do.body70_crit_edge, label %for.cond.1

for.cond.do.body70_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #3
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr64.2 = getelementptr i8, ptr %18, i32 1880
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.2) #3, !srcloc !185
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.2 = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp66.2 = icmp eq i32 %and.2, 0
  br i1 %cmp66.2, label %for.cond.1.do.body70_crit_edge, label %for.cond.2

for.cond.1.do.body70_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #3
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr64.3 = getelementptr i8, ptr %23, i32 1880
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.3) #3, !srcloc !185
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.3 = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp66.3 = icmp eq i32 %and.3, 0
  br i1 %cmp66.3, label %for.cond.2.do.body70_crit_edge, label %for.cond.3

for.cond.2.do.body70_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #3
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr64.4 = getelementptr i8, ptr %28, i32 1880
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.4) #3, !srcloc !185
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.4 = and i32 %30, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp66.4 = icmp eq i32 %and.4, 0
  br i1 %cmp66.4, label %for.cond.3.do.body70_crit_edge, label %for.cond.4

for.cond.3.do.body70_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #3
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr64.5 = getelementptr i8, ptr %33, i32 1880
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.5) #3, !srcloc !185
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.5 = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp66.5 = icmp eq i32 %and.5, 0
  br i1 %cmp66.5, label %for.cond.4.do.body70_crit_edge, label %for.cond.5

for.cond.4.do.body70_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #3
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %add.ptr64.6 = getelementptr i8, ptr %38, i32 1880
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.6) #3, !srcloc !185
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.6 = and i32 %40, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp66.6 = icmp eq i32 %and.6, 0
  br i1 %cmp66.6, label %for.cond.5.do.body70_crit_edge, label %for.cond.6

for.cond.5.do.body70_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #3
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr64.7 = getelementptr i8, ptr %43, i32 1880
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.7) #3, !srcloc !185
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.7 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp66.7 = icmp eq i32 %and.7, 0
  br i1 %cmp66.7, label %for.cond.6.do.body70_crit_edge, label %for.cond.7

for.cond.6.do.body70_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #3
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %add.ptr64.8 = getelementptr i8, ptr %48, i32 1880
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.8) #3, !srcloc !185
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  %and.8 = and i32 %50, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp66.8 = icmp eq i32 %and.8, 0
  br i1 %cmp66.8, label %for.cond.7.do.body70_crit_edge, label %for.cond.8

for.cond.7.do.body70_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body70

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #3
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %add.ptr64.9 = getelementptr i8, ptr %53, i32 1880
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.9) #3, !srcloc !185
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !294
  br label %do.body70

do.body70:                                        ; preds = %for.cond.8, %for.cond.7.do.body70_crit_edge, %for.cond.6.do.body70_crit_edge, %for.cond.5.do.body70_crit_edge, %for.cond.4.do.body70_crit_edge, %for.cond.3.do.body70_crit_edge, %for.cond.2.do.body70_crit_edge, %for.cond.1.do.body70_crit_edge, %for.cond.do.body70_crit_edge, %entry.do.body70_crit_edge
  %.lcssa3 = phi i32 [ %10, %entry.do.body70_crit_edge ], [ %15, %for.cond.do.body70_crit_edge ], [ %20, %for.cond.1.do.body70_crit_edge ], [ %25, %for.cond.2.do.body70_crit_edge ], [ %30, %for.cond.3.do.body70_crit_edge ], [ %35, %for.cond.4.do.body70_crit_edge ], [ %40, %for.cond.5.do.body70_crit_edge ], [ %45, %for.cond.6.do.body70_crit_edge ], [ %50, %for.cond.7.do.body70_crit_edge ], [ %55, %for.cond.8 ]
  %and71 = and i32 %.lcssa3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %cmp72.not = icmp eq i32 %and71, 0
  br i1 %cmp72.not, label %do.end91, label %do.body83, !prof !295

do.body83:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 846, 0\0A.popsection", ""() #3, !srcloc !296
  unreachable

do.end91:                                         ; preds = %do.body70
  %or97 = or i32 %or, 1140850688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !297
  tail call void @arm_heavy_mb() #3
  %56 = tail call i32 @llvm.bswap.i32(i32 %or97)
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr102 = getelementptr i8, ptr %58, i32 1880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %56) #3, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #3
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %add.ptr110 = getelementptr i8, ptr %61, i32 1880
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #3, !srcloc !185
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114 = and i32 %63, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %do.end91.do.body122_crit_edge, label %for.cond103

do.end91.do.body122_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103:                                      ; preds = %do.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 2147480) #3
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %add.ptr110.1 = getelementptr i8, ptr %66, i32 1880
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.1) #3, !srcloc !185
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.1 = and i32 %68, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.1)
  %cmp115.1 = icmp eq i32 %and114.1, 0
  br i1 %cmp115.1, label %for.cond103.do.body122_crit_edge, label %for.cond103.1

for.cond103.do.body122_crit_edge:                 ; preds = %for.cond103
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.1:                                    ; preds = %for.cond103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #3
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %add.ptr110.2 = getelementptr i8, ptr %71, i32 1880
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.2) #3, !srcloc !185
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.2 = and i32 %73, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.2)
  %cmp115.2 = icmp eq i32 %and114.2, 0
  br i1 %cmp115.2, label %for.cond103.1.do.body122_crit_edge, label %for.cond103.2

for.cond103.1.do.body122_crit_edge:               ; preds = %for.cond103.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.2:                                    ; preds = %for.cond103.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 2147480) #3
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr110.3 = getelementptr i8, ptr %76, i32 1880
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.3) #3, !srcloc !185
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.3 = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.3)
  %cmp115.3 = icmp eq i32 %and114.3, 0
  br i1 %cmp115.3, label %for.cond103.2.do.body122_crit_edge, label %for.cond103.3

for.cond103.2.do.body122_crit_edge:               ; preds = %for.cond103.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.3:                                    ; preds = %for.cond103.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #3
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %add.ptr110.4 = getelementptr i8, ptr %81, i32 1880
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.4) #3, !srcloc !185
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.4 = and i32 %83, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.4)
  %cmp115.4 = icmp eq i32 %and114.4, 0
  br i1 %cmp115.4, label %for.cond103.3.do.body122_crit_edge, label %for.cond103.4

for.cond103.3.do.body122_crit_edge:               ; preds = %for.cond103.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.4:                                    ; preds = %for.cond103.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 2147480) #3
  %85 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw, align 4
  %add.ptr110.5 = getelementptr i8, ptr %86, i32 1880
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.5) #3, !srcloc !185
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.5 = and i32 %88, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.5)
  %cmp115.5 = icmp eq i32 %and114.5, 0
  br i1 %cmp115.5, label %for.cond103.4.do.body122_crit_edge, label %for.cond103.5

for.cond103.4.do.body122_crit_edge:               ; preds = %for.cond103.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.5:                                    ; preds = %for.cond103.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 2147480) #3
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr110.6 = getelementptr i8, ptr %91, i32 1880
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.6) #3, !srcloc !185
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.6 = and i32 %93, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.6)
  %cmp115.6 = icmp eq i32 %and114.6, 0
  br i1 %cmp115.6, label %for.cond103.5.do.body122_crit_edge, label %for.cond103.6

for.cond103.5.do.body122_crit_edge:               ; preds = %for.cond103.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.6:                                    ; preds = %for.cond103.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 2147480) #3
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 4
  %add.ptr110.7 = getelementptr i8, ptr %96, i32 1880
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.7) #3, !srcloc !185
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.7 = and i32 %98, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.7)
  %cmp115.7 = icmp eq i32 %and114.7, 0
  br i1 %cmp115.7, label %for.cond103.6.do.body122_crit_edge, label %for.cond103.7

for.cond103.6.do.body122_crit_edge:               ; preds = %for.cond103.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.7:                                    ; preds = %for.cond103.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 2147480) #3
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 4
  %add.ptr110.8 = getelementptr i8, ptr %101, i32 1880
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.8) #3, !srcloc !185
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  %and114.8 = and i32 %103, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.8)
  %cmp115.8 = icmp eq i32 %and114.8, 0
  br i1 %cmp115.8, label %for.cond103.7.do.body122_crit_edge, label %for.cond103.8

for.cond103.7.do.body122_crit_edge:               ; preds = %for.cond103.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body122

for.cond103.8:                                    ; preds = %for.cond103.7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 2147480) #3
  %105 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw, align 4
  %add.ptr110.9 = getelementptr i8, ptr %106, i32 1880
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.9) #3, !srcloc !185
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !298
  br label %do.body122

do.body122:                                       ; preds = %for.cond103.8, %for.cond103.7.do.body122_crit_edge, %for.cond103.6.do.body122_crit_edge, %for.cond103.5.do.body122_crit_edge, %for.cond103.4.do.body122_crit_edge, %for.cond103.3.do.body122_crit_edge, %for.cond103.2.do.body122_crit_edge, %for.cond103.1.do.body122_crit_edge, %for.cond103.do.body122_crit_edge, %do.end91.do.body122_crit_edge
  %.lcssa = phi i32 [ %63, %do.end91.do.body122_crit_edge ], [ %68, %for.cond103.do.body122_crit_edge ], [ %73, %for.cond103.1.do.body122_crit_edge ], [ %78, %for.cond103.2.do.body122_crit_edge ], [ %83, %for.cond103.3.do.body122_crit_edge ], [ %88, %for.cond103.4.do.body122_crit_edge ], [ %93, %for.cond103.5.do.body122_crit_edge ], [ %98, %for.cond103.6.do.body122_crit_edge ], [ %103, %for.cond103.7.do.body122_crit_edge ], [ %108, %for.cond103.8 ]
  %and123 = and i32 %.lcssa, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %cmp124.not = icmp eq i32 %and123, 0
  br i1 %cmp124.not, label %do.end143, label %do.body135, !prof !295

do.body135:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 873, 0\0A.popsection", ""() #3, !srcloc !299
  unreachable

do.end143:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ixgb_read_phy_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg_address, i32 noundef %device_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl49 = shl i32 %device_type, 16
  %or = or i32 %shl49, %reg_address
  %or52 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !300
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #3
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr58 = getelementptr i8, ptr %5, i32 1880
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #3, !srcloc !185
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp60 = icmp eq i32 %and, 0
  br i1 %cmp60, label %entry.do.body63_crit_edge, label %for.cond

entry.do.body63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #3
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr58.1 = getelementptr i8, ptr %10, i32 1880
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.1) #3, !srcloc !185
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.1 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp60.1 = icmp eq i32 %and.1, 0
  br i1 %cmp60.1, label %for.cond.do.body63_crit_edge, label %for.cond.1

for.cond.do.body63_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #3
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr58.2 = getelementptr i8, ptr %15, i32 1880
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.2) #3, !srcloc !185
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.2 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp60.2 = icmp eq i32 %and.2, 0
  br i1 %cmp60.2, label %for.cond.1.do.body63_crit_edge, label %for.cond.2

for.cond.1.do.body63_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #3
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr58.3 = getelementptr i8, ptr %20, i32 1880
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.3) #3, !srcloc !185
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.3 = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp60.3 = icmp eq i32 %and.3, 0
  br i1 %cmp60.3, label %for.cond.2.do.body63_crit_edge, label %for.cond.3

for.cond.2.do.body63_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #3
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr58.4 = getelementptr i8, ptr %25, i32 1880
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.4) #3, !srcloc !185
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.4 = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp60.4 = icmp eq i32 %and.4, 0
  br i1 %cmp60.4, label %for.cond.3.do.body63_crit_edge, label %for.cond.4

for.cond.3.do.body63_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #3
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr58.5 = getelementptr i8, ptr %30, i32 1880
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.5) #3, !srcloc !185
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.5 = and i32 %32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp60.5 = icmp eq i32 %and.5, 0
  br i1 %cmp60.5, label %for.cond.4.do.body63_crit_edge, label %for.cond.5

for.cond.4.do.body63_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #3
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add.ptr58.6 = getelementptr i8, ptr %35, i32 1880
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.6) #3, !srcloc !185
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.6 = and i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp60.6 = icmp eq i32 %and.6, 0
  br i1 %cmp60.6, label %for.cond.5.do.body63_crit_edge, label %for.cond.6

for.cond.5.do.body63_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #3
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr58.7 = getelementptr i8, ptr %40, i32 1880
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.7) #3, !srcloc !185
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.7 = and i32 %42, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp60.7 = icmp eq i32 %and.7, 0
  br i1 %cmp60.7, label %for.cond.6.do.body63_crit_edge, label %for.cond.7

for.cond.6.do.body63_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #3
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %add.ptr58.8 = getelementptr i8, ptr %45, i32 1880
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.8) #3, !srcloc !185
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  %and.8 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp60.8 = icmp eq i32 %and.8, 0
  br i1 %cmp60.8, label %for.cond.7.do.body63_crit_edge, label %for.cond.8

for.cond.7.do.body63_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body63

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #3
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %add.ptr58.9 = getelementptr i8, ptr %50, i32 1880
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.9) #3, !srcloc !185
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !301
  br label %do.body63

do.body63:                                        ; preds = %for.cond.8, %for.cond.7.do.body63_crit_edge, %for.cond.6.do.body63_crit_edge, %for.cond.5.do.body63_crit_edge, %for.cond.4.do.body63_crit_edge, %for.cond.3.do.body63_crit_edge, %for.cond.2.do.body63_crit_edge, %for.cond.1.do.body63_crit_edge, %for.cond.do.body63_crit_edge, %entry.do.body63_crit_edge
  %.lcssa3 = phi i32 [ %7, %entry.do.body63_crit_edge ], [ %12, %for.cond.do.body63_crit_edge ], [ %17, %for.cond.1.do.body63_crit_edge ], [ %22, %for.cond.2.do.body63_crit_edge ], [ %27, %for.cond.3.do.body63_crit_edge ], [ %32, %for.cond.4.do.body63_crit_edge ], [ %37, %for.cond.5.do.body63_crit_edge ], [ %42, %for.cond.6.do.body63_crit_edge ], [ %47, %for.cond.7.do.body63_crit_edge ], [ %52, %for.cond.8 ]
  %and64 = and i32 %.lcssa3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %cmp65.not = icmp eq i32 %and64, 0
  br i1 %cmp65.not, label %do.end83, label %do.body75, !prof !295

do.body75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 750, 0\0A.popsection", ""() #3, !srcloc !302
  unreachable

do.end83:                                         ; preds = %do.body63
  %or89 = or i32 %or, 1207959552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !303
  tail call void @arm_heavy_mb() #3
  %53 = tail call i32 @llvm.bswap.i32(i32 %or89)
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr94 = getelementptr i8, ptr %55, i32 1880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %53) #3, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #3
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr101 = getelementptr i8, ptr %58, i32 1880
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #3, !srcloc !185
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105 = and i32 %60, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %cmp106 = icmp eq i32 %and105, 0
  br i1 %cmp106, label %do.end83.do.body112_crit_edge, label %for.cond95

do.end83.do.body112_crit_edge:                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95:                                       ; preds = %do.end83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #3
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %add.ptr101.1 = getelementptr i8, ptr %63, i32 1880
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.1) #3, !srcloc !185
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.1 = and i32 %65, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.1)
  %cmp106.1 = icmp eq i32 %and105.1, 0
  br i1 %cmp106.1, label %for.cond95.do.body112_crit_edge, label %for.cond95.1

for.cond95.do.body112_crit_edge:                  ; preds = %for.cond95
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.1:                                     ; preds = %for.cond95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #3
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %add.ptr101.2 = getelementptr i8, ptr %68, i32 1880
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.2) #3, !srcloc !185
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.2 = and i32 %70, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.2)
  %cmp106.2 = icmp eq i32 %and105.2, 0
  br i1 %cmp106.2, label %for.cond95.1.do.body112_crit_edge, label %for.cond95.2

for.cond95.1.do.body112_crit_edge:                ; preds = %for.cond95.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.2:                                     ; preds = %for.cond95.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #3
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %add.ptr101.3 = getelementptr i8, ptr %73, i32 1880
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.3) #3, !srcloc !185
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.3 = and i32 %75, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.3)
  %cmp106.3 = icmp eq i32 %and105.3, 0
  br i1 %cmp106.3, label %for.cond95.2.do.body112_crit_edge, label %for.cond95.3

for.cond95.2.do.body112_crit_edge:                ; preds = %for.cond95.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.3:                                     ; preds = %for.cond95.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 2147480) #3
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr101.4 = getelementptr i8, ptr %78, i32 1880
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.4) #3, !srcloc !185
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.4 = and i32 %80, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.4)
  %cmp106.4 = icmp eq i32 %and105.4, 0
  br i1 %cmp106.4, label %for.cond95.3.do.body112_crit_edge, label %for.cond95.4

for.cond95.3.do.body112_crit_edge:                ; preds = %for.cond95.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.4:                                     ; preds = %for.cond95.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 2147480) #3
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %add.ptr101.5 = getelementptr i8, ptr %83, i32 1880
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.5) #3, !srcloc !185
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.5 = and i32 %85, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.5)
  %cmp106.5 = icmp eq i32 %and105.5, 0
  br i1 %cmp106.5, label %for.cond95.4.do.body112_crit_edge, label %for.cond95.5

for.cond95.4.do.body112_crit_edge:                ; preds = %for.cond95.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.5:                                     ; preds = %for.cond95.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 2147480) #3
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw, align 4
  %add.ptr101.6 = getelementptr i8, ptr %88, i32 1880
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.6) #3, !srcloc !185
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.6 = and i32 %90, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.6)
  %cmp106.6 = icmp eq i32 %and105.6, 0
  br i1 %cmp106.6, label %for.cond95.5.do.body112_crit_edge, label %for.cond95.6

for.cond95.5.do.body112_crit_edge:                ; preds = %for.cond95.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.6:                                     ; preds = %for.cond95.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 2147480) #3
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 4
  %add.ptr101.7 = getelementptr i8, ptr %93, i32 1880
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.7) #3, !srcloc !185
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.7 = and i32 %95, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.7)
  %cmp106.7 = icmp eq i32 %and105.7, 0
  br i1 %cmp106.7, label %for.cond95.6.do.body112_crit_edge, label %for.cond95.7

for.cond95.6.do.body112_crit_edge:                ; preds = %for.cond95.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.7:                                     ; preds = %for.cond95.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #3
  %97 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw, align 4
  %add.ptr101.8 = getelementptr i8, ptr %98, i32 1880
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.8) #3, !srcloc !185
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  %and105.8 = and i32 %100, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.8)
  %cmp106.8 = icmp eq i32 %and105.8, 0
  br i1 %cmp106.8, label %for.cond95.7.do.body112_crit_edge, label %for.cond95.8

for.cond95.7.do.body112_crit_edge:                ; preds = %for.cond95.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body112

for.cond95.8:                                     ; preds = %for.cond95.7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 2147480) #3
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %add.ptr101.9 = getelementptr i8, ptr %103, i32 1880
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.9) #3, !srcloc !185
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !304
  br label %do.body112

do.body112:                                       ; preds = %for.cond95.8, %for.cond95.7.do.body112_crit_edge, %for.cond95.6.do.body112_crit_edge, %for.cond95.5.do.body112_crit_edge, %for.cond95.4.do.body112_crit_edge, %for.cond95.3.do.body112_crit_edge, %for.cond95.2.do.body112_crit_edge, %for.cond95.1.do.body112_crit_edge, %for.cond95.do.body112_crit_edge, %do.end83.do.body112_crit_edge
  %.lcssa = phi i32 [ %60, %do.end83.do.body112_crit_edge ], [ %65, %for.cond95.do.body112_crit_edge ], [ %70, %for.cond95.1.do.body112_crit_edge ], [ %75, %for.cond95.2.do.body112_crit_edge ], [ %80, %for.cond95.3.do.body112_crit_edge ], [ %85, %for.cond95.4.do.body112_crit_edge ], [ %90, %for.cond95.5.do.body112_crit_edge ], [ %95, %for.cond95.6.do.body112_crit_edge ], [ %100, %for.cond95.7.do.body112_crit_edge ], [ %105, %for.cond95.8 ]
  %and113 = and i32 %.lcssa, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 0
  br i1 %cmp114.not, label %do.end132, label %do.body124, !prof !295

do.body124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 777, 0\0A.popsection", ""() #3, !srcloc !305
  unreachable

do.end132:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %add.ptr136 = getelementptr i8, ptr %107, i32 1888
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #3, !srcloc !185
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !306
  %shr = lshr i32 %109, 16
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgb_identify_xpak_vendor(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_identify_xpak_vendor.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_identify_xpak_vendor, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_identify_xpak_vendor.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 32826, i32 noundef 1)
  %call3.1 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 32827, i32 noundef 1)
  %call3.2 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 32828, i32 noundef 1)
  %call3.3 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 32829, i32 noundef 1)
  %call3.4 = tail call fastcc zeroext i16 @ixgb_read_phy_reg(ptr noundef %hw, i32 noundef 32830, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp2(i16 73, i16 %call3)
  %cmp5 = icmp ne i16 %call3, 73
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %call3.1)
  %cmp9 = icmp ne i16 %call3.1, 78
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp9
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %call3.2)
  %cmp14 = icmp ne i16 %call3.2, 84
  %or.cond33 = select i1 %or.cond, i1 true, i1 %cmp14
  call void @__sanitizer_cov_trace_const_cmp2(i16 69, i16 %call3.3)
  %cmp19 = icmp ne i16 %call3.3, 69
  %or.cond34 = select i1 %or.cond33, i1 true, i1 %cmp19
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %call3.4)
  %cmp24 = icmp ne i16 %call3.4, 76
  %or.cond35 = select i1 %or.cond34, i1 true, i1 %cmp24
  %xpak_vendor.0 = zext i1 %or.cond35 to i32
  ret i32 %xpak_vendor.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_get_ee_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 102, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug349, !1, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 108, i32 3}
!9 = !{ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug350, !8, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 118, i32 2}
!13 = !{ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug351, !12, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 135, i32 2}
!17 = !{ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug352, !16, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ixgb_adapter_stop.__UNIQUE_ID_ddebug353, !20, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 140, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 278, i32 2}
!23 = !{ptr @ixgb_init_hw.__UNIQUE_ID_ddebug364, !22, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!24 = !{ptr @ixgb_init_hw.__UNIQUE_ID_ddebug365, !25, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 285, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 289, i32 2}
!28 = !{ptr @ixgb_init_hw.__UNIQUE_ID_ddebug366, !27, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 317, i32 3}
!32 = !{ptr @ixgb_init_hw.__UNIQUE_ID_ddebug367, !31, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 328, i32 2}
!36 = !{ptr @ixgb_init_hw.__UNIQUE_ID_ddebug368, !35, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 417, i32 2}
!40 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug374, !39, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 423, i32 2}
!43 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug375, !42, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 430, i32 2}
!47 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug376, !46, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!48 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 437, i32 3}
!51 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug377, !50, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!52 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 438, i32 3}
!55 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug378, !54, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!56 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 445, i32 4}
!59 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug379, !58, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!60 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 450, i32 4}
!63 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug380, !62, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!64 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 458, i32 2}
!67 = !{ptr @ixgb_mc_addr_list_update.__UNIQUE_ID_ddebug381, !66, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!68 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 557, i32 2}
!71 = !{ptr @ixgb_rar_set.__UNIQUE_ID_ddebug384, !70, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 891, i32 2}
!74 = !{ptr @ixgb_check_for_link.__UNIQUE_ID_ddebug387, !73, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 901, i32 3}
!77 = !{ptr @ixgb_check_for_link.__UNIQUE_ID_ddebug388, !76, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!78 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 932, i32 4}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ixgb_check_for_bad_link.__UNIQUE_ID_ddebug389, !80, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!83 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 205, i32 2}
!86 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug355, !85, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 210, i32 3}
!89 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug356, !88, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!90 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 220, i32 4}
!93 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug357, !92, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!94 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 223, i32 4}
!97 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug358, !96, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!98 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 228, i32 3}
!101 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug359, !100, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!102 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 232, i32 3}
!105 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug360, !104, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!106 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug361, !108, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 235, i32 4}
!109 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug362, !110, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 238, i32 4}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 243, i32 3}
!113 = !{ptr @ixgb_identify_phy.__UNIQUE_ID_ddebug363, !112, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!114 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 166, i32 2}
!117 = !{ptr @ixgb_identify_xpak_vendor.__UNIQUE_ID_ddebug354, !116, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 361, i32 2}
!120 = !{ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug369, !119, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 373, i32 3}
!123 = !{ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug370, !122, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!124 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 378, i32 3}
!127 = !{ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug371, !126, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!128 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 379, i32 3}
!131 = !{ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug372, !130, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!132 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ixgb_init_rx_addrs.__UNIQUE_ID_ddebug373, !134, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 385, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 476, i32 2}
!137 = !{ptr @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug382, !136, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 503, i32 3}
!140 = !{ptr @ixgb_hash_mc_addr.__UNIQUE_ID_ddebug383, !139, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!141 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 617, i32 2}
!144 = !{ptr @ixgb_setup_fc.__UNIQUE_ID_ddebug385, !143, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 661, i32 3}
!147 = !{ptr @ixgb_setup_fc.__UNIQUE_ID_ddebug386, !146, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!148 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 950, i32 2}
!151 = !{ptr @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug390, !150, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 954, i32 3}
!154 = !{ptr @ixgb_clear_hw_cntrs.__UNIQUE_ID_ddebug391, !153, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!155 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 1099, i32 2}
!158 = !{ptr @mac_addr_valid.__UNIQUE_ID_ddebug392, !157, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 1103, i32 3}
!161 = !{ptr @mac_addr_valid.__UNIQUE_ID_ddebug393, !160, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!162 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 1108, i32 3}
!165 = !{ptr @mac_addr_valid.__UNIQUE_ID_ddebug394, !164, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!166 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_hw.c", i32 1113, i32 3}
!169 = !{ptr @mac_addr_valid.__UNIQUE_ID_ddebug395, !168, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!170 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148980916, i64 2148980921, i64 2148980934, i64 2148980978, i64 2148981012, i64 2148981033}
!181 = !{i8 0, i8 2}
!182 = !{i64 2156534412}
!183 = !{i64 6408774}
!184 = !{i64 2156536077}
!185 = !{i64 6409192}
!186 = !{i64 2156537057}
!187 = !{i64 2156538534}
!188 = !{i64 2156539514}
!189 = !{i64 2156540160}
!190 = !{i64 2156545098}
!191 = !{i64 2156545898}
!192 = !{i64 2156521696}
!193 = !{i64 2156522496}
!194 = !{i64 2156522880}
!195 = !{i64 2156734893}
!196 = !{i64 2156735229}
!197 = !{i64 2156736045}
!198 = !{i64 2156575518}
!199 = !{i64 2156721007}
!200 = !{i64 2156580731}
!201 = !{i64 2156624997}
!202 = !{i64 2156623199}
!203 = !{i64 2156623818}
!204 = !{i64 2156592728}
!205 = !{i64 2156593297}
!206 = !{i64 2156679610}
!207 = !{i64 2156680193}
!208 = !{i64 2156680778}
!209 = !{i64 2156681363}
!210 = !{i64 2156681948}
!211 = !{i64 2156682533}
!212 = !{i64 2156683118}
!213 = !{i64 2156683703}
!214 = !{i64 2156684288}
!215 = !{i64 2156684873}
!216 = !{i64 2156685458}
!217 = !{i64 2156686043}
!218 = !{i64 2156686628}
!219 = !{i64 2156687213}
!220 = !{i64 2156687798}
!221 = !{i64 2156688383}
!222 = !{i64 2156688966}
!223 = !{i64 2156689549}
!224 = !{i64 2156690132}
!225 = !{i64 2156690713}
!226 = !{i64 2156691294}
!227 = !{i64 2156691877}
!228 = !{i64 2156692466}
!229 = !{i64 2156693049}
!230 = !{i64 2156693632}
!231 = !{i64 2156694213}
!232 = !{i64 2156694796}
!233 = !{i64 2156695379}
!234 = !{i64 2156695964}
!235 = !{i64 2156700610}
!236 = !{i64 2156701195}
!237 = !{i64 2156701780}
!238 = !{i64 2156702365}
!239 = !{i64 2156702950}
!240 = !{i64 2156703535}
!241 = !{i64 2156704120}
!242 = !{i64 2156704705}
!243 = !{i64 2156705290}
!244 = !{i64 2156705875}
!245 = !{i64 2156706460}
!246 = !{i64 2156707045}
!247 = !{i64 2156707630}
!248 = !{i64 2156708213}
!249 = !{i64 2156708796}
!250 = !{i64 2156709375}
!251 = !{i64 2156709962}
!252 = !{i64 2156710547}
!253 = !{i64 2156711134}
!254 = !{i64 2156711717}
!255 = !{i64 2156712298}
!256 = !{i64 2156712879}
!257 = !{i64 2156713462}
!258 = !{i64 2156714045}
!259 = !{i64 2156714630}
!260 = !{i64 2156715215}
!261 = !{i64 2156715802}
!262 = !{i64 2156716389}
!263 = !{i64 2156716978}
!264 = !{i64 2156717567}
!265 = !{i64 2156718148}
!266 = !{i64 2156627936}
!267 = !{i64 2156634822, i64 2156635328, i64 2156634859, i64 2156634915, i64 2156634949, i64 2156634973, i64 2156635014, i64 2156635035, i64 2156635063, i64 2156635097}
!268 = !{i64 2156636410}
!269 = !{i64 2156636939}
!270 = !{i64 2156637457}
!271 = !{i64 2156637957}
!272 = !{i64 2156639730}
!273 = !{i64 2156667798}
!274 = !{i64 2156668385}
!275 = !{i64 2156731506}
!276 = !{i64 2156732482}
!277 = !{i64 2156733643}
!278 = !{i64 2156734239}
!279 = !{i64 2156598226}
!280 = !{i64 2156598801}
!281 = !{i64 2156601529}
!282 = !{i64 2156618118, i64 2156618624, i64 2156618155, i64 2156618211, i64 2156618245, i64 2156618269, i64 2156618310, i64 2156618331, i64 2156618359, i64 2156618393}
!283 = !{i64 2156620080}
!284 = !{i64 2156620444}
!285 = !{i64 2156624420}
!286 = !{i64 2156671429}
!287 = !{i64 2156672010}
!288 = !{i64 2156718733}
!289 = !{i64 2156719068}
!290 = !{i64 2156719869}
!291 = !{i64 2156720204}
!292 = !{i64 2156657984}
!293 = !{i64 2156658548}
!294 = !{i64 2156659883}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{i64 2156660369, i64 2156660875, i64 2156660406, i64 2156660462, i64 2156660496, i64 2156660520, i64 2156660561, i64 2156660582, i64 2156660610, i64 2156660644}
!297 = !{i64 2156661983}
!298 = !{i64 2156663318}
!299 = !{i64 2156663804, i64 2156664310, i64 2156663841, i64 2156663897, i64 2156663931, i64 2156663955, i64 2156663996, i64 2156664017, i64 2156664045, i64 2156664079}
!300 = !{i64 2156645434}
!301 = !{i64 2156646769}
!302 = !{i64 2156647255, i64 2156647761, i64 2156647292, i64 2156647348, i64 2156647382, i64 2156647406, i64 2156647447, i64 2156647468, i64 2156647496, i64 2156647530}
!303 = !{i64 2156648869}
!304 = !{i64 2156650204}
!305 = !{i64 2156650690, i64 2156651196, i64 2156650727, i64 2156650783, i64 2156650817, i64 2156650841, i64 2156650882, i64 2156650903, i64 2156650931, i64 2156650965}
!306 = !{i64 2156652541}
