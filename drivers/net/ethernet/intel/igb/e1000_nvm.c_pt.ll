; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_nvm.c"
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
%struct.e1000_fw_version = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@igb_acquire_nvm.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igb_acquire_nvm\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/igb/e1000_nvm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not acquire NVM grant\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_read_nvm_spi.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igb_read_nvm_spi\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_read_nvm_eerd.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igb_read_nvm_eerd\00", [46 x i8] zeroinitializer }, align 32
@igb_write_nvm_spi.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.5, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igb_write_nvm_spi\00", [46 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_read_part_string\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PBA string buffer was null\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_part_string.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVM PBA number is not stored as string\0A\00", [56 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PBA string buffer too small\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_part_string.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVM PBA number section invalid length\0A\00", [57 x i8] zeroinitializer }, align 32
@igb_read_part_string.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_read_part_string.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_validate_nvm_checksum.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_validate_nvm_checksum\00", [38 x i8] zeroinitializer }, align 32
@igb_validate_nvm_checksum.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVM Checksum Invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_update_nvm_checksum\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@igb_ready_nvm_eeprom.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igb_ready_nvm_eeprom\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPI NVM Status error\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 179, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 318, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 376, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 421, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 495, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 502, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 517, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 521, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 558, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 633, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 640, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 666, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 674, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [46 x i8] c"../drivers/net/ethernet/intel/igb/e1000_nvm.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 286, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_acquire_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !66

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call, 64
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and76 = and i32 %call11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool13.not77 = icmp eq i32 %and76, 0
  br i1 %tobool13.not77, label %if.end.if.end15_crit_edge, label %if.end.if.end62_crit_edge

if.end.if.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.end.if.end15_crit_edge:                        ; preds = %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end15.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %timeout.078 = phi i32 [ %dec, %if.end15.if.end15_crit_edge ], [ 1000, %if.end.if.end15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #4
  %call16 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %dec = add i32 %timeout.078, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  %tobool12.not.not = xor i1 %tobool12.not, true
  %and = and i32 %call16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool12.not.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.end15.if.end15_crit_edge, label %while.end

if.end15.if.end15_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

while.end:                                        ; preds = %if.end15
  br i1 %tobool12.not, label %if.then18, label %while.end.if.end62_crit_edge

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then18:                                        ; preds = %while.end
  %4 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool27.not = icmp eq ptr %5, null
  br i1 %tobool27.not, label %if.then18.if.end41_crit_edge, label %do.body37, !prof !66

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.body37:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %and19 = and i32 %call16, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %arrayidx40 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx40, i32 %6) #4, !srcloc !68
  br label %if.end41

if.end41:                                         ; preds = %do.body37, %if.then18.if.end41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_acquire_nvm.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_acquire_nvm, %if.then55)) #4
          to label %if.end62 [label %if.then55], !srcloc !70

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_acquire_nvm.__UNIQUE_ID_ddebug343, ptr noundef %call56, ptr noundef nonnull @.str.3) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.end41, %while.end.if.end62_crit_edge, %if.end.if.end62_crit_edge
  %ret_val.0 = phi i32 [ 0, %while.end.if.end62_crit_edge ], [ -1, %if.then55 ], [ -1, %if.end41 ], [ 0, %if.end.if.end62_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_release_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then.i, label %entry.e1000_stop_nvm.exit_crit_edge

entry.e1000_stop_nvm.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_stop_nvm.exit

if.then.i:                                        ; preds = %entry
  %hw_addr2.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.body6.i.i, !prof !66

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

do.body6.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = and i32 %call.i, -4
  %and.i.i = or i32 %or.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %4) #4, !srcloc !68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body6.i.i, %if.then.i.if.end.i.i_crit_edge
  %call.i.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %delay_usec.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv21.i.i = zext i16 %6 to i32
  tail call void %7(i32 noundef %conv21.i.i) #4
  br label %e1000_stop_nvm.exit

e1000_stop_nvm.exit:                              ; preds = %if.end.i.i, %entry.e1000_stop_nvm.exit_crit_edge
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr2, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %e1000_stop_nvm.exit.if.end_crit_edge, label %do.body6, !prof !66

e1000_stop_nvm.exit.if.end_crit_edge:             ; preds = %e1000_stop_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %e1000_stop_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %10) #4, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %do.body6, %e1000_stop_nvm.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_nvm_spi(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %offset to i32
  %conv2 = zext i16 %1 to i32
  %conv4 = zext i16 %words to i32
  %sub = sub nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp8 = icmp slt i32 %sub, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp12 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.body14_crit_edge, label %if.end21

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_nvm_spi.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_nvm_spi, %if.then17)) #4
          to label %out [label %if.then17], !srcloc !70

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_nvm_spi.__UNIQUE_ID_ddebug349, ptr noundef %call18, ptr noundef nonnull @.str.5) #4
  br label %out

if.end21:                                         ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm1, align 4
  %call22 = tail call i32 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.body.preheader, label %if.end25.release_crit_edge

if.end25.release_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

for.body.preheader:                               ; preds = %if.end25
  tail call fastcc void @igb_standby_nvm(ptr noundef %hw)
  %address_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 7
  %4 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %address_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp31 = icmp eq i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %offset)
  %cmp34 = icmp ugt i16 %offset, 127
  %or.cond79 = and i1 %cmp34, %cmp31
  %conv40 = select i1 %or.cond79, i16 11, i16 3
  %opcode_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %conv40, i16 noundef zeroext %7)
  %mul = shl i16 %offset, 1
  %8 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %address_bits, align 4
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %mul, i16 noundef zeroext %9)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call47 = tail call fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %hw, i16 noundef zeroext 16)
  %or50 = tail call i16 @llvm.bswap.i16(i16 %call47)
  %arrayidx = getelementptr i16, ptr %data, i32 %i.082
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or50, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.release_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.release_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

release:                                          ; preds = %for.body.release_crit_edge, %if.end25.release_crit_edge
  %release53 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %release53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release53, align 4
  tail call void %12(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %release, %if.end21.out_crit_edge, %if.then17, %do.body14
  %ret_val.0 = phi i32 [ %call22, %if.end21.out_crit_edge ], [ %call26, %release ], [ -1, %if.then17 ], [ -1, %do.body14 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then:                                          ; preds = %entry
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.body8, !prof !66

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %do.body8, %if.then.if.end_crit_edge
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #4
  %opcode_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end
  %timeout.057 = phi i16 [ 5000, %if.end ], [ %dec, %if.end21.while.body_crit_edge ]
  %6 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext %7)
  %call16 = tail call fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %hw, i16 noundef zeroext 8)
  %8 = and i16 %call16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool19.not = icmp eq i16 %8, 0
  br i1 %tobool19.not, label %while.body.out_crit_edge, label %if.end21

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end21:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #4
  tail call fastcc void @igb_standby_nvm(ptr noundef %hw)
  %dec = add nsw i16 %timeout.057, -1
  %tobool14.not = icmp eq i16 %dec, 0
  br i1 %tobool14.not, label %do.body25.critedge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body25.critedge:                               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_ready_nvm_eeprom.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_ready_nvm_eeprom, %if.then35)) #4
          to label %out [label %if.then35], !srcloc !70

if.then35:                                        ; preds = %do.body25.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_ready_nvm_eeprom.__UNIQUE_ID_ddebug348, ptr noundef %call36, ptr noundef nonnull @.str.20) #4
  br label %out

out:                                              ; preds = %if.then35, %do.body25.critedge, %while.body.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ -1, %if.then35 ], [ -1, %do.body25.critedge ], [ 0, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_standby_nvm(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end65_crit_edge

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then:                                          ; preds = %entry
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.body8, !prof !66

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %do.body8, %if.then.if.end_crit_edge
  %call13 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %delay_usec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv22 = zext i16 %6 to i32
  tail call void %7(i32 noundef %conv22) #4
  %8 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %if.end.if.end45_crit_edge, label %do.body41, !prof !66

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx44 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx44, i32 %10) #4, !srcloc !68
  br label %if.end45

if.end45:                                         ; preds = %do.body41, %if.end.if.end45_crit_edge
  %call48 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %11 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv63 = zext i16 %12 to i32
  tail call void %13(i32 noundef %conv63) #4
  br label %if.end65

if.end65:                                         ; preds = %if.end45, %entry.if.end65_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %data, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %conv = zext i16 %count to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %or = or i32 %call, 8
  %spec.select98 = select i1 %cmp, i32 %or, i32 %call
  %conv3 = zext i16 %data to i32
  %hw_addr10 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %delay_usec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end.i82.do.body_crit_edge, %entry
  %eecd.1 = phi i32 [ %spec.select98, %entry ], [ %and.i, %if.end.i82.do.body_crit_edge ]
  %mask.0 = phi i32 [ %shl, %entry ], [ %shr, %if.end.i82.do.body_crit_edge ]
  %and = and i32 %eecd.1, -5
  %and4 = and i32 %mask.0, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %spec.select = or i32 %masksel, %and
  %2 = ptrtoint ptr %hw_addr10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr10, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body.if.end19_crit_edge, label %do.body16, !prof !66

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %arrayidx = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !68
  br label %if.end19

if.end19:                                         ; preds = %do.body16, %do.body.if.end19_crit_edge
  %call22 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %5 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv32 = zext i16 %6 to i32
  tail call void %7(i32 noundef %conv32) #4
  %8 = ptrtoint ptr %hw_addr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr10, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end19.if.end.i_crit_edge, label %do.body6.i, !prof !66

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body6.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %arrayidx.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %10) #4, !srcloc !68
  br label %if.end.i

if.end.i:                                         ; preds = %do.body6.i, %if.end19.if.end.i_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %11 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv21.i = zext i16 %12 to i32
  tail call void %13(i32 noundef %conv21.i) #4
  %and.i = and i32 %spec.select, -2
  %14 = ptrtoint ptr %hw_addr10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr10, align 4
  %tobool.not.i77 = icmp eq ptr %15, null
  br i1 %tobool.not.i77, label %if.end.i.if.end.i82_crit_edge, label %do.body6.i79, !prof !66

if.end.i.if.end.i82_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i82

do.body6.i79:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i78 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i78, i32 %16) #4, !srcloc !68
  br label %if.end.i82

if.end.i82:                                       ; preds = %do.body6.i79, %if.end.i.if.end.i82_crit_edge
  %call.i80 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %17 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv21.i89 = zext i16 %18 to i32
  tail call void %19(i32 noundef %conv21.i89) #4
  %shr = lshr i32 %mask.0, 1
  %tobool35.not = icmp ult i32 %mask.0, 2
  br i1 %tobool35.not, label %do.end36, label %if.end.i82.do.body_crit_edge

if.end.i82.do.body_crit_edge:                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end36:                                         ; preds = %if.end.i82
  %20 = ptrtoint ptr %hw_addr10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr10, align 4
  %tobool45.not = icmp eq ptr %21, null
  br i1 %tobool45.not, label %do.end36.if.end59_crit_edge, label %do.body55, !prof !66

do.end36.if.end59_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

do.body55:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #6
  %and37 = and i32 %eecd.1, -6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %and37)
  %arrayidx58 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx58, i32 %22) #4, !srcloc !68
  br label %if.end59

if.end59:                                         ; preds = %do.body55, %do.end36.if.end59_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @igb_shift_in_eec_bits(ptr noundef %hw, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %conv = zext i16 %count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp33.not = icmp eq i16 %count, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %call, -13
  %hw_addr2.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %delay_usec.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.i21.for.body_crit_edge, %for.body.lr.ph
  %data.036 = phi i16 [ 0, %for.body.lr.ph ], [ %9, %if.end.i21.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.i21.for.body_crit_edge ]
  %eecd.034 = phi i32 [ %and, %for.body.lr.ph ], [ %and.i, %if.end.i21.for.body_crit_edge ]
  %shl = shl i16 %data.036, 1
  %0 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %do.body6.i, !prof !66

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.body6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %eecd.034, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %2) #4, !srcloc !68
  br label %if.end.i

if.end.i:                                         ; preds = %do.body6.i, %for.body.if.end.i_crit_edge
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %3 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv21.i = zext i16 %4 to i32
  tail call void %5(i32 noundef %conv21.i) #4
  %call4 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %6 = trunc i32 %call4 to i16
  %7 = lshr i16 %6, 3
  %8 = and i16 %7, 1
  %9 = or i16 %8, %shl
  %and.i = and i32 %call4, -6
  %10 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr2.i, align 4
  %tobool.not.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i16, label %if.end.i.if.end.i21_crit_edge, label %do.body6.i18, !prof !66

if.end.i.if.end.i21_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i21

do.body6.i18:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i17 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i17, i32 %12) #4, !srcloc !68
  br label %if.end.i21

if.end.i21:                                       ; preds = %do.body6.i18, %if.end.i.if.end.i21_crit_edge
  %call.i19 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 8) #4
  %13 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv21.i28 = zext i16 %14 to i32
  tail call void %15(i32 noundef %conv21.i28) #4
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end.i21.for.end_crit_edge, label %if.end.i21.for.body_crit_edge

if.end.i21.for.body_crit_edge:                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.i21.for.end_crit_edge:                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end.i21.for.end_crit_edge, %entry.for.end_crit_edge
  %data.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %9, %if.end.i21.for.end_crit_edge ]
  ret i16 %data.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %1 to i32
  %conv4 = zext i16 %words to i32
  %sub = sub nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp8 = icmp slt i32 %sub, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp12 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.body14_crit_edge, label %for.body.lr.ph

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %hw_addr32 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_nvm_eerd.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_nvm_eerd, %if.then17)) #4
          to label %out [label %if.then17], !srcloc !70

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_nvm_eerd.__UNIQUE_ID_ddebug350, ptr noundef %call18, ptr noundef nonnull @.str.5) #4
  br label %out

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end52.for.body_crit_edge ]
  %2 = ptrtoint ptr %hw_addr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr32, align 4
  %tobool33.not = icmp eq ptr %3, null
  br i1 %tobool33.not, label %for.body.if.then.i.preheader_crit_edge, label %do.body43, !prof !66

for.body.if.then.i.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.preheader

do.body43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i32 %i.075, %conv
  %shl = shl i32 %add, 2
  %add26 = or i32 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %arrayidx = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !68
  br label %if.then.i.preheader

if.then.i.preheader:                              ; preds = %do.body43, %for.body.if.then.i.preheader_crit_edge
  br label %if.then.i

if.then.i:                                        ; preds = %if.end4.i.if.then.i_crit_edge, %if.then.i.preheader
  %i.01.i = phi i32 [ %inc.i, %if.end4.i.if.then.i_crit_edge ], [ 0, %if.then.i.preheader ]
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 20) #4
  %and.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end52

if.end4.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %if.end4.i.out_crit_edge, label %if.end4.i.if.then.i_crit_edge

if.end4.i.if.then.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.end4.i.out_crit_edge:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end52:                                         ; preds = %if.then.i
  %call53 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 20) #4
  %shr = lshr i32 %call53, 16
  %conv54 = trunc i32 %shr to i16
  %arrayidx55 = getelementptr i16, ptr %data, i32 %i.075
  %6 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv54, ptr %arrayidx55, align 2
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %if.end52.out_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end52.out_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %if.end52.out_crit_edge, %if.end4.i.out_crit_edge, %if.then17, %do.body14
  %ret_val.1 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ -1, %if.end4.i.out_crit_edge ], [ 0, %if.end52.out_crit_edge ]
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_nvm_spi(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp.not = icmp ugt i16 %1, %offset
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %1 to i32
  %conv4 = zext i16 %words to i32
  %sub = sub nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp8 = icmp slt i32 %sub, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp12 = icmp eq i16 %words, 0
  %or.cond = or i1 %cmp12, %cmp8
  br i1 %or.cond, label %lor.lhs.false.do.body14_crit_edge, label %while.body.lr.ph

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

while.body.lr.ph:                                 ; preds = %lor.lhs.false
  %opcode_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 8
  %address_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %offset)
  %cmp39 = icmp ugt i16 %offset, 127
  %page_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 9
  %release71 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  br label %while.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_nvm_spi.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_nvm_spi, %if.then17)) #4
          to label %cleanup76 [label %if.then17], !srcloc !70

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_nvm_spi.__UNIQUE_ID_ddebug352, ptr noundef %call18, ptr noundef nonnull @.str.5) #4
  br label %cleanup76

while.body:                                       ; preds = %cleanup72.while.body_crit_edge, %while.body.lr.ph
  %widx.0131 = phi i16 [ 0, %while.body.lr.ph ], [ %widx.2, %cleanup72.while.body_crit_edge ]
  %2 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm1, align 4
  %call26 = tail call i32 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %while.body.cleanup76_crit_edge

while.body.cleanup76_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

if.end29:                                         ; preds = %while.body
  %call30 = tail call fastcc i32 @igb_ready_nvm_eeprom(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %release71 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release71, align 4
  tail call void %5(ptr noundef %hw) #4
  br label %cleanup76

if.end34:                                         ; preds = %if.end29
  tail call fastcc void @igb_standby_nvm(ptr noundef %hw)
  %6 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext 6, i16 noundef zeroext %7)
  tail call fastcc void @igb_standby_nvm(ptr noundef %hw)
  %8 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %address_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp36 = icmp eq i16 %9, 8
  %or.cond121 = and i1 %cmp39, %cmp36
  %conv45 = select i1 %or.cond121, i16 10, i16 2
  %10 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %conv45, i16 noundef zeroext %11)
  %add = add i16 %widx.0131, %offset
  %mul = shl i16 %add, 1
  %12 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %address_bits, align 4
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %mul, i16 noundef zeroext %13)
  %14 = zext i16 %widx.0131 to i32
  %umax = call i16 @llvm.umax.i16(i16 %widx.0131, i16 %words)
  %wide.trip.count = zext i16 %umax to i32
  br label %while.cond51

while.cond51:                                     ; preds = %while.body56.while.cond51_crit_edge, %if.end34
  %indvars.iv = phi i32 [ %indvars.iv.next, %while.body56.while.cond51_crit_edge ], [ %14, %if.end34 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %while.cond51.cleanup72_crit_edge, label %while.body56

while.cond51.cleanup72_crit_edge:                 ; preds = %while.cond51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup72

while.body56:                                     ; preds = %while.cond51
  %arrayidx = getelementptr i16, ptr %data, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %or59 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call fastcc void @igb_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %or59, i16 noundef zeroext 16)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %add63 = add nuw nsw i32 %indvars.iv.next, %conv
  %mul64 = shl nuw nsw i32 %add63, 1
  %17 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %page_size, align 4
  %conv65 = zext i16 %18 to i32
  %rem = urem i32 %mul64, %conv65
  %cmp66 = icmp eq i32 %rem, 0
  br i1 %cmp66, label %cleanup.thread, label %while.body56.while.cond51_crit_edge

while.body56.while.cond51_crit_edge:              ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond51

cleanup.thread:                                   ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #6
  %19 = trunc i32 %indvars.iv.next to i16
  tail call fastcc void @igb_standby_nvm(ptr noundef %hw)
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup.thread, %while.cond51.cleanup72_crit_edge
  %widx.2 = phi i16 [ %19, %cleanup.thread ], [ %umax, %while.cond51.cleanup72_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %20 = ptrtoint ptr %release71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release71, align 4
  tail call void %21(ptr noundef %hw) #4
  %cmp24 = icmp ult i16 %widx.2, %words
  br i1 %cmp24, label %cleanup72.while.body_crit_edge, label %cleanup72.cleanup76_crit_edge

cleanup72.cleanup76_crit_edge:                    ; preds = %cleanup72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup76

cleanup72.while.body_crit_edge:                   ; preds = %cleanup72
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup76:                                        ; preds = %cleanup72.cleanup76_crit_edge, %if.then32, %while.body.cleanup76_crit_edge, %if.then17, %do.body14
  %retval.2 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ %call30, %if.then32 ], [ 0, %cleanup72.cleanup76_crit_edge ], [ %call26, %while.body.cleanup76_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_part_string(ptr noundef %hw, ptr noundef %part_num, i32 noundef %part_num_size) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  %pointer = alloca i16, align 2
  %length = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pointer) #4
  %1 = ptrtoint ptr %pointer to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pointer, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %length, align 2, !annotation !80
  %cmp = icmp eq ptr %part_num, null
  br i1 %cmp, label %do.body1, label %if.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !70

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug353, ptr noundef %call5, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %call9 = call i32 %4(ptr noundef %hw, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end32, label %do.body13

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then25)) #4
          to label %cleanup [label %if.then25], !srcloc !70

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug354, ptr noundef %call26, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %call36 = call i32 %6(ptr noundef %hw, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %pointer) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end59, label %do.body40

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then52)) #4
          to label %cleanup [label %if.then52], !srcloc !70

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug355, ptr noundef %call53, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end59:                                         ; preds = %if.end32
  %7 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nvm_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1286, i16 %8)
  %cmp60.not = icmp eq i16 %8, -1286
  br i1 %cmp60.not, label %if.end170, label %do.body64

do.body64:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then76)) #4
          to label %do.end82 [label %if.then76], !srcloc !70

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %call77 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug356, ptr noundef %call77, ptr noundef nonnull @.str.11) #4
  br label %do.end82

do.end82:                                         ; preds = %if.then76, %do.body64
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %part_num_size)
  %cmp83 = icmp ult i32 %part_num_size, 11
  br i1 %cmp83, label %do.body87, label %if.end106

do.body87:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then99)) #4
          to label %cleanup [label %if.then99], !srcloc !70

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  %call100 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug357, ptr noundef %call100, ptr noundef nonnull @.str.12) #4
  br label %cleanup

if.end106:                                        ; preds = %do.end82
  %9 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nvm_data, align 2
  %11 = lshr i16 %10, 12
  %conv108 = trunc i16 %11 to i8
  %12 = lshr i16 %10, 8
  %13 = trunc i16 %12 to i8
  %conv112 = and i8 %13, 15
  %arrayidx113 = getelementptr i8, ptr %part_num, i32 1
  %14 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv112, ptr %arrayidx113, align 1
  %15 = trunc i16 %10 to i8
  %16 = lshr i8 %15, 4
  %arrayidx118 = getelementptr i8, ptr %part_num, i32 2
  %17 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx118, align 1
  %conv121 = and i8 %15, 15
  %arrayidx122 = getelementptr i8, ptr %part_num, i32 3
  %18 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv121, ptr %arrayidx122, align 1
  %19 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pointer, align 2
  %21 = lshr i16 %20, 12
  %conv126 = trunc i16 %21 to i8
  %arrayidx127 = getelementptr i8, ptr %part_num, i32 4
  %22 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv126, ptr %arrayidx127, align 1
  %23 = lshr i16 %20, 8
  %24 = trunc i16 %23 to i8
  %conv131 = and i8 %24, 15
  %arrayidx132 = getelementptr i8, ptr %part_num, i32 5
  %25 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv131, ptr %arrayidx132, align 1
  %arrayidx133 = getelementptr i8, ptr %part_num, i32 6
  %26 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 45, ptr %arrayidx133, align 1
  %arrayidx134 = getelementptr i8, ptr %part_num, i32 7
  %27 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx134, align 1
  %28 = trunc i16 %20 to i8
  %29 = lshr i8 %28, 4
  %arrayidx139 = getelementptr i8, ptr %part_num, i32 8
  %30 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx139, align 1
  %conv142 = and i8 %28, 15
  %arrayidx143 = getelementptr i8, ptr %part_num, i32 9
  %31 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv142, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr i8, ptr %part_num, i32 10
  %32 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv108)
  %cmp150 = icmp ult i8 %conv108, 10
  %add = or i8 %conv108, 48
  %add166 = add nuw nsw i8 %conv108, 55
  %add.sink = select i1 %cmp150, i8 %add, i8 %add166
  %33 = ptrtoint ptr %part_num to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %add.sink, ptr %part_num, align 1
  %34 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %35)
  %cmp150.1 = icmp ult i8 %35, 10
  br i1 %cmp150.1, label %if.end106.for.inc.1.sink.split_crit_edge, label %if.else.1

if.end106.for.inc.1.sink.split_crit_edge:         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

if.else.1:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %35)
  %cmp160.1 = icmp ult i8 %35, 16
  br i1 %cmp160.1, label %if.else.1.for.inc.1.sink.split_crit_edge, label %if.else.1.for.inc.1_crit_edge

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.else.1.for.inc.1.sink.split_crit_edge:         ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.else.1.for.inc.1.sink.split_crit_edge, %if.end106.for.inc.1.sink.split_crit_edge
  %.sink = phi i8 [ 55, %if.else.1.for.inc.1.sink.split_crit_edge ], [ 48, %if.end106.for.inc.1.sink.split_crit_edge ]
  %add.1 = add nuw nsw i8 %35, %.sink
  %36 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add.1, ptr %arrayidx113, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.else.1.for.inc.1_crit_edge
  %37 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %cmp150.2 = icmp ult i8 %38, 10
  br i1 %cmp150.2, label %for.inc.1.for.inc.2.sink.split_crit_edge, label %if.else.2

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %38)
  %cmp160.2 = icmp ult i8 %38, 16
  br i1 %cmp160.2, label %if.else.2.for.inc.2.sink.split_crit_edge, label %if.else.2.for.inc.2_crit_edge

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.else.2.for.inc.2.sink.split_crit_edge:         ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %if.else.2.for.inc.2.sink.split_crit_edge, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink403 = phi i8 [ 55, %if.else.2.for.inc.2.sink.split_crit_edge ], [ 48, %for.inc.1.for.inc.2.sink.split_crit_edge ]
  %add.2 = add nuw nsw i8 %38, %.sink403
  %39 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %add.2, ptr %arrayidx118, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %if.else.2.for.inc.2_crit_edge
  %40 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %41)
  %cmp150.3 = icmp ult i8 %41, 10
  br i1 %cmp150.3, label %for.inc.2.for.inc.3.sink.split_crit_edge, label %if.else.3

for.inc.2.for.inc.3.sink.split_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.sink.split

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %41)
  %cmp160.3 = icmp ult i8 %41, 16
  br i1 %cmp160.3, label %if.else.3.for.inc.3.sink.split_crit_edge, label %if.else.3.for.inc.3_crit_edge

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.else.3.for.inc.3.sink.split_crit_edge:         ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.sink.split

for.inc.3.sink.split:                             ; preds = %if.else.3.for.inc.3.sink.split_crit_edge, %for.inc.2.for.inc.3.sink.split_crit_edge
  %.sink404 = phi i8 [ 55, %if.else.3.for.inc.3.sink.split_crit_edge ], [ 48, %for.inc.2.for.inc.3.sink.split_crit_edge ]
  %add.3 = add nuw nsw i8 %41, %.sink404
  %42 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add.3, ptr %arrayidx122, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3.sink.split, %if.else.3.for.inc.3_crit_edge
  %43 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %44)
  %cmp150.4 = icmp ult i8 %44, 10
  br i1 %cmp150.4, label %for.inc.3.for.inc.4.sink.split_crit_edge, label %if.else.4

for.inc.3.for.inc.4.sink.split_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.sink.split

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %44)
  %cmp160.4 = icmp ult i8 %44, 16
  br i1 %cmp160.4, label %if.else.4.for.inc.4.sink.split_crit_edge, label %if.else.4.for.inc.4_crit_edge

if.else.4.for.inc.4_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.else.4.for.inc.4.sink.split_crit_edge:         ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.sink.split

for.inc.4.sink.split:                             ; preds = %if.else.4.for.inc.4.sink.split_crit_edge, %for.inc.3.for.inc.4.sink.split_crit_edge
  %.sink405 = phi i8 [ 55, %if.else.4.for.inc.4.sink.split_crit_edge ], [ 48, %for.inc.3.for.inc.4.sink.split_crit_edge ]
  %add.4 = add nuw nsw i8 %44, %.sink405
  %45 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add.4, ptr %arrayidx127, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.4.sink.split, %if.else.4.for.inc.4_crit_edge
  %46 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %47)
  %cmp150.5 = icmp ult i8 %47, 10
  br i1 %cmp150.5, label %for.inc.4.for.inc.5.sink.split_crit_edge, label %if.else.5

for.inc.4.for.inc.5.sink.split_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.sink.split

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %47)
  %cmp160.5 = icmp ult i8 %47, 16
  br i1 %cmp160.5, label %if.else.5.for.inc.5.sink.split_crit_edge, label %if.else.5.for.inc.5_crit_edge

if.else.5.for.inc.5_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.else.5.for.inc.5.sink.split_crit_edge:         ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.sink.split

for.inc.5.sink.split:                             ; preds = %if.else.5.for.inc.5.sink.split_crit_edge, %for.inc.4.for.inc.5.sink.split_crit_edge
  %.sink406 = phi i8 [ 55, %if.else.5.for.inc.5.sink.split_crit_edge ], [ 48, %for.inc.4.for.inc.5.sink.split_crit_edge ]
  %add.5 = add nuw nsw i8 %47, %.sink406
  %48 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %add.5, ptr %arrayidx132, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.5.sink.split, %if.else.5.for.inc.5_crit_edge
  %49 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %50)
  %cmp150.6 = icmp ult i8 %50, 10
  br i1 %cmp150.6, label %for.inc.5.for.inc.6.sink.split_crit_edge, label %if.else.6

for.inc.5.for.inc.6.sink.split_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.sink.split

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %50)
  %cmp160.6 = icmp ult i8 %50, 16
  br i1 %cmp160.6, label %if.else.6.for.inc.6.sink.split_crit_edge, label %if.else.6.for.inc.6_crit_edge

if.else.6.for.inc.6_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.else.6.for.inc.6.sink.split_crit_edge:         ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.sink.split

for.inc.6.sink.split:                             ; preds = %if.else.6.for.inc.6.sink.split_crit_edge, %for.inc.5.for.inc.6.sink.split_crit_edge
  %.sink407 = phi i8 [ 55, %if.else.6.for.inc.6.sink.split_crit_edge ], [ 48, %for.inc.5.for.inc.6.sink.split_crit_edge ]
  %add.6 = add nuw nsw i8 %50, %.sink407
  %51 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %add.6, ptr %arrayidx133, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6.sink.split, %if.else.6.for.inc.6_crit_edge
  %52 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %53)
  %cmp150.7 = icmp ult i8 %53, 10
  br i1 %cmp150.7, label %for.inc.6.for.inc.7.sink.split_crit_edge, label %if.else.7

for.inc.6.for.inc.7.sink.split_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.sink.split

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %53)
  %cmp160.7 = icmp ult i8 %53, 16
  br i1 %cmp160.7, label %if.else.7.for.inc.7.sink.split_crit_edge, label %if.else.7.for.inc.7_crit_edge

if.else.7.for.inc.7_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.else.7.for.inc.7.sink.split_crit_edge:         ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.sink.split

for.inc.7.sink.split:                             ; preds = %if.else.7.for.inc.7.sink.split_crit_edge, %for.inc.6.for.inc.7.sink.split_crit_edge
  %.sink408 = phi i8 [ 55, %if.else.7.for.inc.7.sink.split_crit_edge ], [ 48, %for.inc.6.for.inc.7.sink.split_crit_edge ]
  %add.7 = add nuw nsw i8 %53, %.sink408
  %54 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %add.7, ptr %arrayidx134, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.7.sink.split, %if.else.7.for.inc.7_crit_edge
  %55 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %56)
  %cmp150.8 = icmp ult i8 %56, 10
  br i1 %cmp150.8, label %for.inc.7.for.inc.8.sink.split_crit_edge, label %if.else.8

for.inc.7.for.inc.8.sink.split_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.sink.split

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %56)
  %cmp160.8 = icmp ult i8 %56, 16
  br i1 %cmp160.8, label %if.else.8.for.inc.8.sink.split_crit_edge, label %if.else.8.for.inc.8_crit_edge

if.else.8.for.inc.8_crit_edge:                    ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8

if.else.8.for.inc.8.sink.split_crit_edge:         ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.sink.split

for.inc.8.sink.split:                             ; preds = %if.else.8.for.inc.8.sink.split_crit_edge, %for.inc.7.for.inc.8.sink.split_crit_edge
  %.sink409 = phi i8 [ 55, %if.else.8.for.inc.8.sink.split_crit_edge ], [ 48, %for.inc.7.for.inc.8.sink.split_crit_edge ]
  %add.8 = add nuw nsw i8 %56, %.sink409
  %57 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %add.8, ptr %arrayidx139, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.8.sink.split, %if.else.8.for.inc.8_crit_edge
  %58 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %59)
  %cmp150.9 = icmp ult i8 %59, 10
  br i1 %cmp150.9, label %if.then152.9, label %if.else.9

if.else.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp160.9 = icmp ult i8 %59, 16
  br i1 %cmp160.9, label %if.then162.9, label %if.else.9.cleanup_crit_edge

if.else.9.cleanup_crit_edge:                      ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then162.9:                                     ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #6
  %add166.9 = add nuw nsw i8 %59, 55
  %60 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %add166.9, ptr %arrayidx143, align 1
  br label %cleanup

if.then152.9:                                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  %add.9 = add nuw nsw i8 %59, 48
  %61 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %add.9, ptr %arrayidx143, align 1
  br label %cleanup

if.end170:                                        ; preds = %if.end59
  %62 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read, align 4
  %64 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pointer, align 2
  %call174 = call i32 %63(ptr noundef %hw, i16 noundef zeroext %65, i16 noundef zeroext 1, ptr noundef nonnull %length) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end197, label %do.body178

do.body178:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then190)) #4
          to label %cleanup [label %if.then190], !srcloc !70

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #6
  %call191 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug358, ptr noundef %call191, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end197:                                        ; preds = %if.end170
  %66 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %length, align 2
  %68 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i16 %67, label %if.end225 [
    i16 -1, label %if.end197.do.body206_crit_edge
    i16 0, label %if.end197.do.body206_crit_edge413
  ]

if.end197.do.body206_crit_edge413:                ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body206

if.end197.do.body206_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body206

do.body206:                                       ; preds = %if.end197.do.body206_crit_edge, %if.end197.do.body206_crit_edge413
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then218)) #4
          to label %cleanup [label %if.then218], !srcloc !70

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #6
  %call219 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug359, ptr noundef %call219, ptr noundef nonnull @.str.13) #4
  br label %cleanup

if.end225:                                        ; preds = %if.end197
  %conv198 = zext i16 %67 to i32
  %mul = shl nuw nsw i32 %conv198, 1
  %sub = add nsw i32 %mul, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %part_num_size)
  %cmp227 = icmp ugt i32 %sub, %part_num_size
  br i1 %cmp227, label %do.body231, label %if.end250

do.body231:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then243)) #4
          to label %cleanup [label %if.then243], !srcloc !70

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #6
  %call244 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug360, ptr noundef %call244, ptr noundef nonnull @.str.12) #4
  br label %cleanup

if.end250:                                        ; preds = %if.end225
  %69 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %pointer, align 2
  %inc251 = add i16 %70, 1
  store i16 %inc251, ptr %pointer, align 2
  %dec = add i16 %67, -1
  %71 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %dec, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp255397.not = icmp eq i16 %dec, 0
  br i1 %cmp255397.not, label %if.end250.for.end304_crit_edge, label %if.end250.for.body257_crit_edge

if.end250.for.body257_crit_edge:                  ; preds = %if.end250
  br label %for.body257

if.end250.for.end304_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end304

for.body257:                                      ; preds = %if.end288.for.body257_crit_edge, %if.end250.for.body257_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end288.for.body257_crit_edge ], [ 0, %if.end250.for.body257_crit_edge ]
  %72 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read, align 4
  %74 = ptrtoint ptr %pointer to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pointer, align 2
  %76 = trunc i32 %indvars.iv to i16
  %add263 = add i16 %75, %76
  %call265 = call i32 %73(ptr noundef %hw, i16 noundef zeroext %add263, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end288, label %do.body269

do.body269:                                       ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_part_string.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_part_string, %if.then281)) #4
          to label %cleanup [label %if.then281], !srcloc !70

if.then281:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #6
  %call282 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_part_string.__UNIQUE_ID_ddebug361, ptr noundef %call282, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end288:                                        ; preds = %for.body257
  %77 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nvm_data, align 2
  %79 = lshr i16 %78, 8
  %conv291 = trunc i16 %79 to i8
  %mul293 = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx294 = getelementptr i8, ptr %part_num, i32 %mul293
  %80 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv291, ptr %arrayidx294, align 1
  %conv297 = trunc i16 %78 to i8
  %add300 = or i32 %mul293, 1
  %arrayidx301 = getelementptr i8, ptr %part_num, i32 %add300
  %81 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv297, ptr %arrayidx301, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %82 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %length, align 2
  %84 = zext i16 %83 to i32
  %cmp255 = icmp ult i32 %indvars.iv.next, %84
  br i1 %cmp255, label %if.end288.for.body257_crit_edge, label %for.end304.loopexit

if.end288.for.body257_crit_edge:                  ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body257

for.end304.loopexit:                              ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo = shl nuw i32 %indvars.iv.next, 1
  br label %for.end304

for.end304:                                       ; preds = %for.end304.loopexit, %if.end250.for.end304_crit_edge
  %conv253.lcssa = phi i32 [ 0, %if.end250.for.end304_crit_edge ], [ %phi.bo, %for.end304.loopexit ]
  %arrayidx307 = getelementptr i8, ptr %part_num, i32 %conv253.lcssa
  %85 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx307, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end304, %if.then281, %do.body269, %if.then243, %do.body231, %if.then218, %do.body206, %if.then190, %do.body178, %if.then152.9, %if.then162.9, %if.else.9.cleanup_crit_edge, %if.then99, %do.body87, %if.then52, %do.body40, %if.then25, %do.body13, %if.then4, %do.body1
  %retval.0 = phi i32 [ 17, %if.then99 ], [ %call9, %if.then25 ], [ %call36, %if.then52 ], [ %call174, %if.then190 ], [ %call265, %if.then281 ], [ 0, %for.end304 ], [ 16, %if.then4 ], [ 18, %if.then218 ], [ 17, %if.then243 ], [ 16, %do.body1 ], [ %call9, %do.body13 ], [ %call36, %do.body40 ], [ 17, %do.body87 ], [ %call174, %do.body178 ], [ 18, %do.body206 ], [ 17, %do.body231 ], [ %call265, %do.body269 ], [ 0, %if.then152.9 ], [ 0, %if.then162.9 ], [ 0, %if.else.9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pointer) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_mac_addr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 21508) #4
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 21504) #4
  %conv4 = trunc i32 %call1 to i8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv4, ptr %arrayidx, align 1
  %shr.1 = lshr i32 %call1, 8
  %conv4.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %call1, 16
  %conv4.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %call1, 24
  %conv4.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.3, ptr %arrayidx.3, align 1
  %conv13 = trunc i32 %call to i8
  %arrayidx17 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 4
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %arrayidx17, align 1
  %shr12.1 = lshr i32 %call, 8
  %conv13.1 = trunc i32 %shr12.1 to i8
  %arrayidx17.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2, i32 5
  %5 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13.1, ptr %arrayidx17.1, align 1
  %uglygep = getelementptr i8, ptr %hw, i32 68
  %6 = call ptr @memcpy(ptr %uglygep, ptr %arrayidx, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_validate_nvm_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !80
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %checksum.054 = phi i32 [ 0, %entry ], [ %phi.cast, %if.end11.for.body_crit_edge ]
  %i.053 = phi i16 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = call i32 %2(ptr noundef %hw, i16 noundef zeroext %i.053, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_nvm_checksum, %if.then7)) #4
          to label %out [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug362, ptr noundef %call8, ptr noundef nonnull @.str.10) #4
  br label %out

if.end11:                                         ; preds = %for.body
  %3 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nvm_data, align 2
  %conv12 = zext i16 %4 to i32
  %add = add nuw nsw i32 %checksum.054, %conv12
  %inc = add nuw nsw i16 %i.053, 1
  %phi.cast = and i32 %add, 65535
  %cmp = icmp ult i16 %i.053, 63
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %cmp16.not = icmp eq i32 %phi.cast, 47802
  br i1 %cmp16.not, label %for.end.out_crit_edge, label %do.body20

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_validate_nvm_checksum, %if.then32)) #4
          to label %out [label %if.then32], !srcloc !70

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug363, ptr noundef %call33, ptr noundef nonnull @.str.15) #4
  br label %out

out:                                              ; preds = %if.then32, %do.body20, %for.end.out_crit_edge, %if.then7, %do.body2
  %ret_val.1 = phi i32 [ %call, %if.then7 ], [ 0, %for.end.out_crit_edge ], [ -1, %if.then32 ], [ %call, %do.body2 ], [ -1, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_update_nvm_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %checksum = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %checksum) #4
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %checksum, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %1 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %nvm_data, align 2, !annotation !80
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.057 = phi i16 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %hw, i16 noundef zeroext %i.057, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum, %if.then7)) #4
          to label %out [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum.__UNIQUE_ID_ddebug364, ptr noundef %call8, ptr noundef nonnull @.str.17) #4
  br label %out

if.end11:                                         ; preds = %for.body
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvm_data, align 2
  %6 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %checksum, align 2
  %add = add i16 %7, %5
  store i16 %add, ptr %checksum, align 2
  %inc = add nuw nsw i16 %i.057, 1
  %cmp = icmp ult i16 %i.057, 62
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11
  %8 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %checksum, align 2
  %sub = sub i16 -17734, %9
  store i16 %sub, ptr %checksum, align 2
  %write = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %call19 = call i32 %11(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %checksum) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end.out_crit_edge, label %do.body23

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum, %if.then35)) #4
          to label %out [label %if.then35], !srcloc !70

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum.__UNIQUE_ID_ddebug365, ptr noundef %call36, ptr noundef nonnull @.str.18) #4
  br label %out

out:                                              ; preds = %if.then35, %do.body23, %for.end.out_crit_edge, %if.then7, %do.body2
  %ret_val.0 = phi i32 [ %call, %if.then7 ], [ %call19, %if.then35 ], [ 0, %for.end.out_crit_edge ], [ %call, %do.body2 ], [ %call19, %do.body23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_get_fw_version(ptr noundef %hw, ptr noundef %fw_vers) local_unnamed_addr #0 align 64 {
entry:
  %eeprom_verh = alloca i16, align 2
  %eeprom_verl = alloca i16, align 2
  %etrack_test = alloca i16, align 2
  %fw_version = alloca i16, align 2
  %comb_verh = alloca i16, align 2
  %comb_verl = alloca i16, align 2
  %comb_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_verh) #4
  %0 = ptrtoint ptr %eeprom_verh to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %eeprom_verh, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom_verl) #4
  %1 = ptrtoint ptr %eeprom_verl to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %eeprom_verl, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %etrack_test) #4
  %2 = ptrtoint ptr %etrack_test to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %etrack_test, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_version) #4
  %3 = ptrtoint ptr %fw_version to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %fw_version, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comb_verh) #4
  %4 = ptrtoint ptr %comb_verh to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %comb_verh, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comb_verl) #4
  %5 = ptrtoint ptr %comb_verl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %comb_verl, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %comb_offset) #4
  %6 = ptrtoint ptr %comb_offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %comb_offset, align 2, !annotation !80
  %7 = call ptr @memset(ptr %fw_vers, i32 0, i32 20)
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %call = call i32 %9(ptr noundef %hw, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %etrack_test) #4
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge172
    i32 3, label %entry.sw.bb2_crit_edge173
    i32 6, label %sw.bb18
    i32 4, label %entry.sw.bb23_crit_edge
  ]

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23

entry.sw.bb2_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.sw.bb2_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 @igb_read_invm_version(ptr noundef %hw, ptr noundef %fw_vers) #4
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge172, %entry.sw.bb2_crit_edge173
  %13 = ptrtoint ptr %etrack_test to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %etrack_test, align 2
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp.not = icmp eq i16 %15, -32768
  br i1 %cmp.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 4
  %call7 = call i32 %17(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %fw_version) #4
  %18 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_version, align 2
  %20 = lshr i16 %19, 12
  %eep_major = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 1
  %21 = ptrtoint ptr %eep_major to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %eep_major, align 4
  %22 = lshr i16 %19, 4
  %23 = and i16 %22, 255
  %eep_minor = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 2
  %24 = ptrtoint ptr %eep_minor to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %eep_minor, align 2
  %25 = and i16 %19, 15
  %eep_build = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 3
  %26 = ptrtoint ptr %eep_build to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %eep_build, align 4
  br label %etrack_id

sw.bb18:                                          ; preds = %entry
  %call19 = call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %hw) #4
  br i1 %call19, label %sw.bb18.sw.bb23_crit_edge, label %if.then20

sw.bb18.sw.bb23_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23

if.then20:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = call i32 @igb_read_invm_version(ptr noundef %hw, ptr noundef %fw_vers) #4
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb18.sw.bb23_crit_edge, %entry.sw.bb23_crit_edge
  %27 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read, align 4
  %call27 = call i32 %28(ptr noundef %hw, i16 noundef zeroext 61, i16 noundef zeroext 1, ptr noundef nonnull %comb_offset) #4
  %29 = ptrtoint ptr %comb_offset to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %comb_offset, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %30, label %if.then34 [
    i16 0, label %sw.bb23.sw.epilog_crit_edge
    i16 -1, label %sw.bb23.sw.epilog_crit_edge174
  ]

sw.bb23.sw.epilog_crit_edge174:                   ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb23
  %32 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read, align 4
  %add39 = add i16 %30, 132
  %call41 = call i32 %33(ptr noundef %hw, i16 noundef zeroext %add39, i16 noundef zeroext 1, ptr noundef nonnull %comb_verh) #4
  %34 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read, align 4
  %36 = ptrtoint ptr %comb_offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %comb_offset, align 2
  %add46 = add i16 %37, 131
  %call48 = call i32 %35(ptr noundef %hw, i16 noundef zeroext %add46, i16 noundef zeroext 1, ptr noundef nonnull %comb_verl) #4
  %38 = ptrtoint ptr %comb_verh to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %comb_verh, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not = icmp eq i16 %39, 0
  br i1 %tobool.not, label %if.then34.sw.epilog_crit_edge, label %land.lhs.true50

if.then34.sw.epilog_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true50:                                  ; preds = %if.then34
  %40 = ptrtoint ptr %comb_verl to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %comb_verl, align 2
  %.fr = freeze i16 %39
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.fr)
  %cmp55.not = icmp eq i16 %.fr, -1
  br i1 %cmp55.not, label %land.lhs.true50.sw.epilog_crit_edge, label %switch.early.test

land.lhs.true50.sw.epilog_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.early.test:                                ; preds = %land.lhs.true50
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %41, label %if.then61 [
    i16 -1, label %switch.early.test.sw.epilog_crit_edge
    i16 0, label %switch.early.test.sw.epilog_crit_edge175
  ]

switch.early.test.sw.epilog_crit_edge175:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.early.test.sw.epilog_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then61:                                        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  %or_valid = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 7
  %43 = ptrtoint ptr %or_valid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %or_valid, align 1
  %44 = lshr i16 %41, 8
  %or_major = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 8
  %45 = ptrtoint ptr %or_major to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %or_major, align 2
  %or = call i16 @llvm.fshl.i16(i16 %41, i16 %.fr, i16 8)
  %or_build = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 9
  %46 = ptrtoint ptr %or_build to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %or, ptr %or_build, align 4
  %47 = and i16 %.fr, 255
  %or_patch = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 10
  %48 = ptrtoint ptr %or_patch to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %or_patch, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then61, %switch.early.test.sw.epilog_crit_edge, %switch.early.test.sw.epilog_crit_edge175, %land.lhs.true50.sw.epilog_crit_edge, %if.then34.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge174, %sw.bb2.sw.epilog_crit_edge
  %49 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read, align 4
  %call77 = call i32 %50(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %fw_version) #4
  %51 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fw_version, align 2
  %53 = lshr i16 %52, 12
  %eep_major82 = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 1
  %54 = ptrtoint ptr %eep_major82 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %eep_major82, align 4
  %55 = and i16 %52, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp85 = icmp eq i16 %55, 0
  %and92 = lshr i16 %52, 4
  %storemerge.in = select i1 %cmp85, i16 %52, i16 %and92
  %storemerge = and i16 %storemerge.in, 255
  %56 = ptrtoint ptr %eeprom_verl to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %storemerge, ptr %eeprom_verl, align 2
  %div169 = lshr i16 %storemerge, 4
  %narrow = mul nuw nsw i16 %div169, 10
  %57 = and i16 %storemerge.in, 15
  %narrow170 = add nuw nsw i16 %narrow, %57
  %eep_minor108 = getelementptr inbounds %struct.e1000_fw_version, ptr %fw_vers, i32 0, i32 2
  %58 = ptrtoint ptr %eep_minor108 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %narrow170, ptr %eep_minor108, align 2
  br label %etrack_id

etrack_id:                                        ; preds = %sw.epilog, %if.then
  %59 = ptrtoint ptr %etrack_test to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %etrack_test, align 2
  %61 = and i16 %60, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %61)
  %cmp111 = icmp eq i16 %61, -32768
  br i1 %cmp111, label %if.then113, label %etrack_id.cleanup_crit_edge

etrack_id.cleanup_crit_edge:                      ; preds = %etrack_id
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then113:                                       ; preds = %etrack_id
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read, align 4
  %call117 = call i32 %63(ptr noundef %hw, i16 noundef zeroext 66, i16 noundef zeroext 1, ptr noundef nonnull %eeprom_verl) #4
  %64 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read, align 4
  %call121 = call i32 %65(ptr noundef %hw, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %eeprom_verh) #4
  %66 = ptrtoint ptr %eeprom_verh to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %eeprom_verh, align 2
  %conv122 = zext i16 %67 to i32
  %shl123 = shl nuw i32 %conv122, 16
  %68 = ptrtoint ptr %eeprom_verl to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %eeprom_verl, align 2
  %conv124 = zext i16 %69 to i32
  %or125 = or i32 %shl123, %conv124
  %70 = ptrtoint ptr %fw_vers to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or125, ptr %fw_vers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %etrack_id.cleanup_crit_edge, %if.then20, %sw.bb, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comb_offset) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comb_verl) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %comb_verh) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_version) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %etrack_test) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_verl) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom_verh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_invm_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 179, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igb_acquire_nvm.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 318, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igb_read_nvm_spi.__UNIQUE_ID_ddebug349, !7, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 376, i32 3}
!12 = !{ptr @igb_read_nvm_eerd.__UNIQUE_ID_ddebug350, !11, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 421, i32 3}
!15 = !{ptr @igb_write_nvm_spi.__UNIQUE_ID_ddebug352, !14, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 495, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug353, !17, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 502, i32 3}
!22 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug354, !21, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!23 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug355, !24, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 508, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 517, i32 3}
!27 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug356, !26, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 521, i32 4}
!30 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug357, !29, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!31 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug358, !32, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 553, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 558, i32 3}
!35 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug359, !34, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!36 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug360, !37, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 564, i32 3}
!38 = !{ptr @igb_read_part_string.__UNIQUE_ID_ddebug361, !39, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 576, i32 4}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 633, i32 4}
!42 = !{ptr @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug362, !41, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 640, i32 3}
!45 = !{ptr @igb_validate_nvm_checksum.__UNIQUE_ID_ddebug363, !44, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 666, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @igb_update_nvm_checksum.__UNIQUE_ID_ddebug364, !47, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 674, i32 3}
!52 = !{ptr @igb_update_nvm_checksum.__UNIQUE_ID_ddebug365, !51, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/igb/e1000_nvm.c", i32 286, i32 4}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @igb_ready_nvm_eeprom.__UNIQUE_ID_ddebug348, !54, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2156033578}
!68 = !{i64 6042637}
!69 = !{i64 2156037737}
!70 = !{i64 2148849228, i64 2148849233, i64 2148849246, i64 2148849290, i64 2148849324, i64 2148849345}
!71 = !{i64 2156020833}
!72 = !{i64 2156056206}
!73 = !{i64 2156059754}
!74 = !{i64 2156047755}
!75 = !{i64 2156051939}
!76 = !{i64 2156025096}
!77 = !{i64 2156016626}
!78 = !{i64 2156029280}
!79 = !{i64 2156071659}
!80 = !{!"auto-init"}
