; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/e1000_i210.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/e1000_i210.c"
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
@igb_acquire_swfw_sync_i210.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"igb_acquire_swfw_sync_i210\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/igb/e1000_i210.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@igb_valid_led_default_i210.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"igb_valid_led_default_i210\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@igb_get_cfg_done_i210.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_get_cfg_done_i210\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MNG configuration cycle has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igb_get_hw_semaphore_i210\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", [49 x i8] zeroinitializer }, align 32
@igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the NVM\0A\00", [35 x i8] zeroinitializer }, align 32
@igb_write_nvm_srwr.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igb_write_nvm_srwr\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igb_update_nvm_checksum_i210\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM read failed\0A\00", [44 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@igb_update_flash_i210.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igb_update_flash_i210\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update time out\0A\00", [41 x i8] zeroinitializer }, align 32
@igb_update_flash_i210.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igb_update_flash_i210.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update complete\0A\00", [41 x i8] zeroinitializer }, align 32
@igb_read_invm_i210.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igb_read_invm_i210\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC Addr not found in iNVM\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_read_invm_i210.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NVM word 0x%02x is not mapped.\0A\00", [32 x i8] zeroinitializer }, align 32
@igb_read_invm_word_i210.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igb_read_invm_word_i210\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Read INVM Word 0x%02x = %x\0A\00", [36 x i8] zeroinitializer }, align 32
@igb_read_invm_word_i210.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Requested word 0x%02x not found in OTP\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.27 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 4, i64 11, i64 12, i64 13, i64 14, i64 15, i64 19, i64 28, i64 31]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 142, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 705, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 908, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 56, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 76, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 240, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 585, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 599, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 609, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 674, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 685, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 380, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 430, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 345, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [47 x i8] c"../drivers/net/ethernet/intel/igb/e1000_i210.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 353, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_acquire_swfw_sync_i210(ptr noundef %hw, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mask to i32
  %or = mul nuw i32 %conv, 65537
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc, %if.end6.while.body_crit_edge ]
  %call = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %while.body
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %and = and i32 %call3, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end24, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body14, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_acquire_swfw_sync_i210.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_acquire_swfw_sync_i210, %if.then19)) #4
          to label %out [label %if.then19], !srcloc !70

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_acquire_swfw_sync_i210.__UNIQUE_ID_ddebug340, ptr noundef %call20, ptr noundef nonnull @.str.3) #4
  br label %out

if.end24:                                         ; preds = %if.end
  %hw_addr31 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr31, align 4
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %if.end24.if.end45_crit_edge, label %do.body42, !prof !71

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.body42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %or25 = or i32 %call3, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %arrayidx = getelementptr i8, ptr %6, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #4, !srcloc !73
  br label %if.end45

if.end45:                                         ; preds = %do.body42, %if.end24.if.end45_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %if.end45, %if.then19, %do.body14, %while.body.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end45 ], [ -13, %if.then19 ], [ -13, %do.body14 ], [ -13, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %i.0126 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #4
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond = icmp eq i32 %i.0126, %conv
  br i1 %exitcond, label %if.end.if.then4_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0126, i32 %add)
  %cmp2 = icmp eq i32 %i.0126, %add
  br i1 %cmp2, label %while.end.if.then4_crit_edge, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

while.end.if.then4_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %while.end.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %clear_semaphore_once = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 11, i32 0, i32 3
  %3 = ptrtoint ptr %clear_semaphore_once to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clear_semaphore_once, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then4.do.body21_crit_edge, label %if.then6

if.then4.do.body21_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

if.then6:                                         ; preds = %if.then4
  %5 = ptrtoint ptr %clear_semaphore_once to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %clear_semaphore_once, align 1
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.then6
  %i.1127 = phi i32 [ 0, %if.then6 ], [ %inc16, %if.end15.for.body_crit_edge ]
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and12 = and i32 %call11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end17, label %if.end15

if.end15:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #4
  %inc16 = add nuw nsw i32 %i.1127, 1
  %exitcond129 = icmp eq i32 %i.1127, %conv
  br i1 %exitcond129, label %if.end15.do.body21_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end15.do.body21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1127, i32 %add)
  %cmp18 = icmp eq i32 %i.1127, %add
  br i1 %cmp18, label %if.end17.do.body21_crit_edge, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end17.do.body21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

do.body21:                                        ; preds = %if.end17.do.body21_crit_edge, %if.end15.do.body21_crit_edge, %if.then4.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_hw_semaphore_i210, %if.then26)) #4
          to label %cleanup [label %if.then26], !srcloc !70

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug337, ptr noundef %call27, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end17.if.end32_crit_edge, %while.end.if.end32_crit_edge
  %hw_addr43 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body36

for.body36:                                       ; preds = %if.end64.for.body36_crit_edge, %if.end32
  %i.3128 = phi i32 [ 0, %if.end32 ], [ %inc66, %if.end64.for.body36_crit_edge ]
  %call37 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %7 = ptrtoint ptr %hw_addr43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr43, align 4
  %tobool44.not = icmp eq ptr %8, null
  br i1 %tobool44.not, label %for.body36.if.end57_crit_edge, label %do.body54, !prof !71

for.body36.if.end57_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

do.body54:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call37, 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %8, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %9) #4, !srcloc !73
  br label %if.end57

if.end57:                                         ; preds = %do.body54, %for.body36.if.end57_crit_edge
  %call60 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and61 = and i32 %call60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end64, label %for.end67

if.end64:                                         ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #4
  %inc66 = add nuw nsw i32 %i.3128, 1
  %exitcond130 = icmp eq i32 %i.3128, %conv
  br i1 %exitcond130, label %if.end64.if.then70_crit_edge, label %if.end64.for.body36_crit_edge

if.end64.for.body36_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36

if.end64.if.then70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

for.end67:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3128, i32 %add)
  %cmp68 = icmp eq i32 %i.3128, %add
  br i1 %cmp68, label %for.end67.if.then70_crit_edge, label %for.end67.cleanup_crit_edge

for.end67.cleanup_crit_edge:                      ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end67.if.then70_crit_edge:                    ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then70

if.then70:                                        ; preds = %for.end67.if.then70_crit_edge, %if.end64.if.then70_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_hw_semaphore_i210, %if.then84)) #4
          to label %cleanup [label %if.then84], !srcloc !70

if.then84:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %call85 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug339, ptr noundef %call85, ptr noundef nonnull @.str.10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.then70, %for.end67.cleanup_crit_edge, %if.then26, %do.body21
  %retval.0 = phi i32 [ -1, %if.then26 ], [ -1, %if.then84 ], [ 0, %for.end67.cleanup_crit_edge ], [ -1, %do.body21 ], [ -1, %if.then70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igb_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_release_swfw_sync_i210(ptr noundef %hw, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %call = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %hw)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %while.end.if.end_crit_edge, label %do.body8, !prof !71

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %do.body8, %while.end.if.end_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_invm_version(ptr noundef %hw, ptr nocapture noundef writeonly %invm_ver) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #4
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0159 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.0159, 2
  %add = add nuw nsw i32 %mul, 74016
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %arrayidx = getelementptr [64 x i32], ptr %buffer, i32 0, i32 %i.0159
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.inc49.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %i.1160 = phi i32 [ %inc50, %for.inc49.for.body3_crit_edge ], [ 1, %for.body.for.body3_crit_edge ]
  %sub = sub nuw nsw i32 62, %i.1160
  %arrayidx4 = getelementptr [64 x i32], ptr %buffer, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1160)
  %cmp8 = icmp eq i32 %i.1160, 1
  br i1 %cmp8, label %land.lhs.true, label %for.body3.if.else16_crit_edge

for.body3.if.else16_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else16

land.lhs.true:                                    ; preds = %for.body3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %3, 8184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %land.lhs.true.if.then52_crit_edge, label %land.lhs.true11.critedge

land.lhs.true.if.then52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then52

land.lhs.true11.critedge:                         ; preds = %land.lhs.true
  %and12 = and i32 %3, 8380416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %land.lhs.true11.critedge.if.else16_crit_edge

land.lhs.true11.critedge.if.else16_crit_edge:     ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else16

if.then14:                                        ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %and15 = lshr i32 %3, 3
  %shr = and i32 %and15, 1023
  br label %if.then52

if.else16:                                        ; preds = %land.lhs.true11.critedge.if.else16_crit_edge, %for.body3.if.else16_crit_edge
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %and21 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  %6 = and i32 %5, 8187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp ne i32 %6, 0
  %or.cond141 = select i1 %cmp22, i1 true, i1 %cmp8
  %or.cond150 = select i1 %7, i1 %or.cond141, i1 false
  br i1 %or.cond150, label %if.else34, label %if.then30

if.then30:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  %add6.le = sub nuw nsw i32 63, %i.1160
  %arrayidx7.le = getelementptr [64 x i32], ptr %buffer, i32 0, i32 %add6.le
  %8 = ptrtoint ptr %arrayidx7.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.le, align 4
  %and31 = lshr i32 %9, 13
  %shr32 = and i32 %and31, 1023
  br label %if.then52

if.else34:                                        ; preds = %if.else16
  %10 = and i32 %5, 8380419
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.then42, label %for.inc49

if.then42:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %and43 = lshr i32 %5, 3
  %shr44 = and i32 %and43, 1023
  br label %if.then52

for.inc49:                                        ; preds = %if.else34
  %inc50 = add nuw nsw i32 %i.1160, 1
  %exitcond172.not = icmp eq i32 %inc50, 62
  br i1 %exitcond172.not, label %for.inc49.if.end60_crit_edge, label %for.inc49.for.body3_crit_edge

for.inc49.for.body3_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3

for.inc49.if.end60_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then52:                                        ; preds = %if.then42, %if.then30, %if.then14, %land.lhs.true.if.then52_crit_edge
  %version.0.ph = phi i32 [ %shr44, %if.then42 ], [ %shr32, %if.then30 ], [ %shr, %if.then14 ], [ 0, %land.lhs.true.if.then52_crit_edge ]
  %and54 = lshr i32 %version.0.ph, 4
  %12 = trunc i32 %and54 to i8
  %invm_major = getelementptr inbounds %struct.e1000_fw_version, ptr %invm_ver, i32 0, i32 4
  %13 = ptrtoint ptr %invm_major to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %invm_major, align 2
  %14 = trunc i32 %version.0.ph to i8
  %conv59 = and i8 %14, 15
  %invm_minor = getelementptr inbounds %struct.e1000_fw_version, ptr %invm_ver, i32 0, i32 5
  %15 = ptrtoint ptr %invm_minor to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv59, ptr %invm_minor, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %for.inc49.if.end60_crit_edge
  %status.0147 = phi i32 [ 0, %if.then52 ], [ -19, %for.inc49.if.end60_crit_edge ]
  br label %for.body64

for.body64:                                       ; preds = %for.inc99.for.body64_crit_edge, %if.end60
  %i.2161 = phi i32 [ 1, %if.end60 ], [ %inc100, %for.inc99.for.body64_crit_edge ]
  %sub65 = sub nuw nsw i32 62, %i.2161
  %arrayidx66 = getelementptr [64 x i32], ptr %buffer, i32 0, i32 %sub65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2161)
  %cmp70 = icmp eq i32 %i.2161, 1
  br i1 %cmp70, label %land.lhs.true72, label %for.body64.if.else77_crit_edge

for.body64.if.else77_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else77

land.lhs.true72:                                  ; preds = %for.body64
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx66, align 4
  %and73 = and i32 %17, 528482304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %land.lhs.true72.for.end101.sink.split_crit_edge, label %land.lhs.true72.if.else77_crit_edge

land.lhs.true72.if.else77_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else77

land.lhs.true72.for.end101.sink.split_crit_edge:  ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end101.sink.split

if.else77:                                        ; preds = %land.lhs.true72.if.else77_crit_edge, %for.body64.if.else77_crit_edge
  %18 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx66, align 4
  %and78 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %cmp79 = icmp eq i32 %and78, 0
  %20 = and i32 %19, 528482307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp ne i32 %20, 0
  %or.cond144 = select i1 %cmp79, i1 true, i1 %cmp70
  %or.cond151 = select i1 %21, i1 %or.cond144, i1 false
  br i1 %or.cond151, label %for.inc99, label %if.then92

if.then92:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #6
  %add68.le = sub nuw nsw i32 63, %i.2161
  %arrayidx69.le = getelementptr [64 x i32], ptr %buffer, i32 0, i32 %add68.le
  %22 = ptrtoint ptr %arrayidx69.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx69.le, align 4
  %and93 = lshr i32 %23, 23
  %24 = trunc i32 %and93 to i8
  %conv95 = and i8 %24, 63
  br label %for.end101.sink.split

for.inc99:                                        ; preds = %if.else77
  %inc100 = add nuw nsw i32 %i.2161, 1
  %exitcond173.not = icmp eq i32 %inc100, 62
  br i1 %exitcond173.not, label %for.inc99.for.end101_crit_edge, label %for.inc99.for.body64_crit_edge

for.inc99.for.body64_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body64

for.inc99.for.end101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end101

for.end101.sink.split:                            ; preds = %if.then92, %land.lhs.true72.for.end101.sink.split_crit_edge
  %conv95.sink = phi i8 [ %conv95, %if.then92 ], [ 0, %land.lhs.true72.for.end101.sink.split_crit_edge ]
  %invm_img_type96 = getelementptr inbounds %struct.e1000_fw_version, ptr %invm_ver, i32 0, i32 6
  %25 = ptrtoint ptr %invm_img_type96 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv95.sink, ptr %invm_img_type96, align 4
  br label %for.end101

for.end101:                                       ; preds = %for.end101.sink.split, %for.inc99.for.end101_crit_edge
  %status.1 = phi i32 [ 0, %for.end101.sink.split ], [ %status.0147, %for.inc99.for.end101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #4
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_valid_led_default_i210(ptr noundef %hw, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_valid_led_default_i210.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_valid_led_default_i210, %if.then6)) #4
          to label %out [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_valid_led_default_i210.__UNIQUE_ID_ddebug357, ptr noundef %call7, ptr noundef nonnull @.str.5) #4
  br label %out

if.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end10.out_crit_edge [
    i16 0, label %if.end10.if.then15_crit_edge
    i16 -1, label %if.end10.if.then15_crit_edge27
  ]

if.end10.if.then15_crit_edge27:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then15:                                        ; preds = %if.end10.if.then15_crit_edge, %if.end10.if.then15_crit_edge27
  %media_type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 12
  %5 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cond = icmp eq i32 %6, 3
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 280, ptr %data, align 2
  br label %out

sw.default:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2073, ptr %data, align 2
  br label %out

out:                                              ; preds = %sw.default, %sw.bb, %if.end10.out_crit_edge, %if.then6, %do.body1
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_read_xmdio_reg(ptr noundef %hw, i16 noundef zeroext %addr, i8 noundef zeroext %dev_addr, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  %conv.i = zext i8 %dev_addr to i16
  %call.i = tail call i32 %1(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__igb_access_xmdio_reg.exit_crit_edge

entry.__igb_access_xmdio_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %addr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.__igb_access_xmdio_reg.exit_crit_edge

if.end.i.__igb_access_xmdio_reg.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end7.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  %or.i = or i16 %conv.i, 16384
  %call13.i = tail call i32 %5(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %or.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge

if.end7.i.__igb_access_xmdio_reg.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end16.i:                                       ; preds = %if.end7.i
  %read_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %call21.i = tail call i32 %7(ptr noundef %hw, i32 noundef 14, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool27.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge

if.end16.i.__igb_access_xmdio_reg.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end29.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %call33.i = tail call i32 %9(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext 0) #4
  br label %__igb_access_xmdio_reg.exit

__igb_access_xmdio_reg.exit:                      ; preds = %if.end29.i, %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge, %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge, %if.end.i.__igb_access_xmdio_reg.exit_crit_edge, %entry.__igb_access_xmdio_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__igb_access_xmdio_reg.exit_crit_edge ], [ %call4.i, %if.end.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call13.i, %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call21.i, %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call33.i, %if.end29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_write_xmdio_reg(ptr noundef %hw, i16 noundef zeroext %addr, i8 noundef zeroext %dev_addr, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 12
  %0 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg.i, align 4
  %conv.i = zext i8 %dev_addr to i16
  %call.i = tail call i32 %1(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__igb_access_xmdio_reg.exit_crit_edge

entry.__igb_access_xmdio_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg.i, align 4
  %call4.i = tail call i32 %3(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %addr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.__igb_access_xmdio_reg.exit_crit_edge

if.end.i.__igb_access_xmdio_reg.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end7.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  %or.i = or i16 %conv.i, 16384
  %call13.i = tail call i32 %5(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext %or.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge

if.end7.i.__igb_access_xmdio_reg.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end16.i:                                       ; preds = %if.end7.i
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %call25.i = tail call i32 %7(ptr noundef %hw, i32 noundef 14, i16 noundef zeroext %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool27.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge

if.end16.i.__igb_access_xmdio_reg.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__igb_access_xmdio_reg.exit

if.end29.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %call33.i = tail call i32 %9(ptr noundef %hw, i32 noundef 13, i16 noundef zeroext 0) #4
  br label %__igb_access_xmdio_reg.exit

__igb_access_xmdio_reg.exit:                      ; preds = %if.end29.i, %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge, %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge, %if.end.i.__igb_access_xmdio_reg.exit_crit_edge, %entry.__igb_access_xmdio_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__igb_access_xmdio_reg.exit_crit_edge ], [ %call4.i, %if.end.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call13.i, %if.end7.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call25.i, %if.end16.i.__igb_access_xmdio_reg.exit_crit_edge ], [ %call33.i, %if.end29.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_init_nvm_params_i210(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %nvm1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @igb_acquire_nvm_i210, ptr %nvm1, align 4
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @igb_release_nvm_i210, ptr %release, align 4
  %valid_led_default = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 6
  %2 = ptrtoint ptr %valid_led_default to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @igb_valid_led_default_i210, ptr %valid_led_default, align 4
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.i = and i32 %call.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ 4, %if.else ], [ 3, %entry.if.end_crit_edge ]
  %igb_read_nvm_srrd_i210.sink = phi ptr [ @igb_read_invm_i210, %if.else ], [ @igb_read_nvm_srrd_i210, %entry.if.end_crit_edge ]
  %igb_write_nvm_srwr_i210.sink = phi ptr [ null, %if.else ], [ @igb_write_nvm_srwr_i210, %entry.if.end_crit_edge ]
  %igb_validate_nvm_checksum_i210.sink = phi ptr [ null, %if.else ], [ @igb_validate_nvm_checksum_i210, %entry.if.end_crit_edge ]
  %igb_update_nvm_checksum_i210.sink = phi ptr [ null, %if.else ], [ @igb_update_nvm_checksum_i210, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %igb_read_nvm_srrd_i210.sink, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %igb_write_nvm_srwr_i210.sink, ptr %7, align 4
  %9 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %igb_validate_nvm_checksum_i210.sink, ptr %9, align 4
  %11 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %igb_update_nvm_checksum_i210.sink, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_acquire_nvm_i210(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igb_acquire_swfw_sync_i210(ptr noundef %hw, i16 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_release_nvm_i210(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @igb_get_hw_semaphore_i210(ptr noundef %hw) #4
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %call1.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %hw_addr3.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool4.not.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i, label %while.end.i.igb_release_swfw_sync_i210.exit_crit_edge, label %do.body8.i, !prof !71

while.end.i.igb_release_swfw_sync_i210.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igb_release_swfw_sync_i210.exit

do.body8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %call1.i, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %2) #4, !srcloc !73
  br label %igb_release_swfw_sync_i210.exit

igb_release_swfw_sync_i210.exit:                  ; preds = %do.body8.i, %while.end.i.igb_release_swfw_sync_i210.exit_crit_edge
  tail call void @igb_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_nvm_srrd_i210(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %conv1 = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp33.not = icmp eq i16 %words, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv34, 512
  %conv = and i32 %add, 65535
  %cmp = icmp ult i32 %conv, %conv1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv34 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm, align 4
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub = sub nsw i32 %conv1, %conv34
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv10 = trunc i32 %2 to i16
  %add.ptr = getelementptr i16, ptr %data, i32 %conv34
  %call12 = tail call i32 @igb_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %conv10, ptr noundef %add.ptr) #4
  %3 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %release, align 4
  tail call void %4(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool15.not = icmp eq i32 %call12, 0
  br i1 %tobool15.not, label %for.cond, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %status.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 13, %for.body.for.end_crit_edge ], [ %call12, %if.end.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_write_nvm_srwr_i210(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %conv1 = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp33.not = icmp eq i16 %words, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv34, 512
  %conv = and i32 %add, 65535
  %cmp = icmp ult i32 %conv, %conv1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv34 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm, align 4
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub = sub nsw i32 %conv1, %conv34
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv10 = trunc i32 %2 to i16
  %add.ptr = getelementptr i16, ptr %data, i32 %conv34
  %call12 = tail call fastcc i32 @igb_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %conv10, ptr noundef %add.ptr)
  %3 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %release, align 4
  tail call void %4(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool15.not = icmp eq i32 %call12, 0
  br i1 %tobool15.not, label %for.cond, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %status.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 13, %for.body.for.end_crit_edge ], [ %call12, %if.end.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_validate_nvm_checksum_i210(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm, align 4
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  store ptr @igb_read_nvm_eerd, ptr %read, align 4
  %call6 = tail call i32 @igb_validate_nvm_checksum(ptr noundef %hw) #4
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %read, align 4
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  tail call void %6(ptr noundef %hw) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call6, %if.then ], [ 13, %entry.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_update_nvm_checksum_i210(ptr noundef %hw) #0 align 64 {
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
  store i16 -1, ptr %nvm_data, align 2, !annotation !77
  %call = call i32 @igb_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_i210, %if.then6)) #4
          to label %out [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug350, ptr noundef %call7, ptr noundef nonnull @.str.15) #4
  br label %out

if.end10:                                         ; preds = %entry
  %nvm = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm, align 4
  %call11 = call i32 %3(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.cond.preheader:                               ; preds = %if.end10
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %4)
  %checksum.promoted = load i16, ptr %checksum, align 2
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.cond.preheader
  %i.0109 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %if.end40.for.body_crit_edge ]
  %add106108 = phi i16 [ %checksum.promoted, %for.cond.preheader ], [ %add, %if.end40.for.body_crit_edge ]
  %call15 = call i32 @igb_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %i.0109, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end40, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add106108, ptr %checksum, align 2
  %release = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release, align 4
  call void %7(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_i210, %if.then33)) #4
          to label %out [label %if.then33], !srcloc !70

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug351, ptr noundef %call34, ptr noundef nonnull @.str.16) #4
  br label %out

if.end40:                                         ; preds = %for.body
  %8 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvm_data, align 2
  %add = add i16 %add106108, %9
  %inc = add nuw nsw i16 %i.0109, 1
  %cmp = icmp ult i16 %i.0109, 62
  br i1 %cmp, label %if.end40.for.body_crit_edge, label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end40
  %sub = sub i16 -17734, %add
  %10 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sub, ptr %checksum, align 2
  %call46 = call fastcc i32 @igb_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %checksum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %release75 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %release75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release75, align 4
  call void %12(ptr noundef %hw) #4
  br i1 %tobool47.not, label %if.end72, label %if.then48

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_nvm_checksum_i210, %if.then65)) #4
          to label %out [label %if.then65], !srcloc !70

if.then65:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %call66 = call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug352, ptr noundef %call66, ptr noundef nonnull @.str.17) #4
  br label %out

if.end72:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call76 = call fastcc i32 @igb_update_flash_i210(ptr noundef %hw)
  br label %out

out:                                              ; preds = %if.end72, %if.then65, %if.then48, %if.then33, %if.then17, %if.end10.out_crit_edge, %if.then6, %do.body1
  %ret_val.0 = phi i32 [ %call, %if.then6 ], [ %call15, %if.then33 ], [ -1, %if.then65 ], [ %call76, %if.end72 ], [ -13, %if.end10.out_crit_edge ], [ %call, %do.body1 ], [ %call15, %if.then17 ], [ -1, %if.then48 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_read_invm_i210(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %0 = zext i16 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %offset, label %do.body59 [
    i16 0, label %sw.bb
    i16 15, label %sw.bb24
    i16 19, label %sw.bb30
    i16 28, label %sw.bb36
    i16 31, label %sw.bb42
    i16 4, label %sw.bb48
    i16 11, label %sw.bb54
    i16 12, label %sw.bb55
    i16 13, label %sw.bb56
    i16 14, label %sw.bb57
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %data)
  %arrayidx5 = getelementptr i16, ptr %data, i32 1
  %call6 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef %arrayidx5)
  %or = or i32 %call6, %call
  %arrayidx11 = getelementptr i16, ptr %data, i32 2
  %call12 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 2, ptr noundef %arrayidx11)
  %or13 = or i32 %or, %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13)
  %tobool.not = icmp eq i32 %or13, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.body14

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_invm_i210.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_invm_i210, %if.then19)) #4
          to label %sw.epilog [label %if.then19], !srcloc !70

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_invm_i210.__UNIQUE_ID_ddebug348, ptr noundef %call20, ptr noundef nonnull @.str.22) #4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %call26 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 15, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.bb24.sw.epilog_crit_edge, label %if.then28

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 29251, ptr %data, align 2
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %call32 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 19, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %sw.bb30.sw.epilog_crit_edge, label %if.then34

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 193, ptr %data, align 2
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %call38 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 28, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %sw.bb36.sw.epilog_crit_edge, label %if.then40

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 388, ptr %data, align 2
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %call44 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 31, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.bb42.sw.epilog_crit_edge, label %if.then46

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 8204, ptr %data, align 2
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  %call50 = tail call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 4, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %sw.bb48.sw.epilog_crit_edge, label %if.then52

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then52:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data, align 2
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %subsystem_device_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 14
  %6 = ptrtoint ptr %subsystem_device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device_id, align 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %data, align 2
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %subsystem_vendor_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 13
  %9 = ptrtoint ptr %subsystem_vendor_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_vendor_id, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %data, align 2
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 12
  %12 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device_id, align 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %data, align 2
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vendor_id = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 15
  %15 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor_id, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %data, align 2
  br label %sw.epilog

do.body59:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_invm_i210.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_invm_i210, %if.then71)) #4
          to label %do.end78 [label %if.then71], !srcloc !70

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_invm_i210.__UNIQUE_ID_ddebug349, ptr noundef %call72, ptr noundef nonnull @.str.23, i32 noundef %conv) #4
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %do.body59
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end78, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %if.then52, %sw.bb48.sw.epilog_crit_edge, %if.then46, %sw.bb42.sw.epilog_crit_edge, %if.then40, %sw.bb36.sw.epilog_crit_edge, %if.then34, %sw.bb30.sw.epilog_crit_edge, %if.then28, %sw.bb24.sw.epilog_crit_edge, %if.then19, %do.body14, %sw.bb.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ 0, %do.end78 ], [ 0, %sw.bb57 ], [ 0, %sw.bb56 ], [ 0, %sw.bb55 ], [ 0, %sw.bb54 ], [ 0, %if.then52 ], [ 0, %sw.bb48.sw.epilog_crit_edge ], [ 0, %if.then46 ], [ 0, %sw.bb42.sw.epilog_crit_edge ], [ 0, %if.then40 ], [ 0, %sw.bb36.sw.epilog_crit_edge ], [ 0, %if.then34 ], [ 0, %sw.bb30.sw.epilog_crit_edge ], [ 0, %if.then28 ], [ 0, %sw.bb24.sw.epilog_crit_edge ], [ %or13, %if.then19 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %or13, %do.body14 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_pll_workaround_i210(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_word = alloca i16, align 2
  %phy_word = alloca i16, align 2
  %pci_word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_word) #4
  %0 = ptrtoint ptr %nvm_word to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_word, align 2, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_word) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_word) #4
  %1 = ptrtoint ptr %pci_word to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pci_word, align 2, !annotation !77
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 22528) #4
  %call1 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 3588) #4
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body7, !prof !71

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call1, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %3, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %do.body7, %entry.if.end_crit_edge
  %call12 = call fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext 10, ptr noundef nonnull %nvm_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %nvm_word to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8239, ptr %nvm_word, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %6 = ptrtoint ptr %nvm_word to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nvm_word, align 2
  %8 = or i16 %7, 16
  %call17 = tail call i32 @igb_write_phy_reg_82580(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 252) #4
  %9 = ptrtoint ptr %phy_word to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 255, ptr %phy_word, align 2
  %conv102 = zext i16 %8 to i32
  %shl = shl nuw i32 %conv102, 16
  %or103 = or i32 %shl, 160
  %10 = call i32 @llvm.bswap.i32(i32 %or103)
  %conv134 = zext i16 %7 to i32
  %shl135 = shl nuw i32 %conv134, 16
  %or136 = or i32 %shl135, 160
  %11 = call i32 @llvm.bswap.i32(i32 %or136)
  %12 = call i32 @llvm.bswap.i32(i32 %call)
  br label %for.body

for.body:                                         ; preds = %if.end182.for.body_crit_edge, %if.end15
  %i.0242 = phi i32 [ 0, %if.end15 ], [ %inc, %if.end182.for.body_crit_edge ]
  %call19 = call i32 @igb_read_phy_reg_82580(ptr noundef %hw, i32 noundef 14, ptr noundef nonnull %phy_word) #4
  %13 = ptrtoint ptr %phy_word to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_word, align 2
  %15 = and i16 %14, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %15)
  %cmp22.not = icmp eq i16 %15, 255
  br i1 %cmp22.not, label %if.else, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.else:                                          ; preds = %for.body
  %call26 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 0) #4
  %16 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %if.else.if.end49_crit_edge, label %do.body44, !prof !71

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

do.body44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  call void @arm_heavy_mb() #4
  %or47 = or i32 %call26, -2147483648
  %18 = call i32 @llvm.bswap.i32(i32 %or47)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %18) #4, !srcloc !73
  br label %if.end49

if.end49:                                         ; preds = %do.body44, %if.else.if.end49_crit_edge
  %call52 = call i32 @igb_rd32(ptr noundef %hw, i32 noundef 24) #4
  %19 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool61.not = icmp eq ptr %20, null
  br i1 %tobool61.not, label %if.end49.if.end75_crit_edge, label %do.body71, !prof !71

if.end49.if.end75_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

do.body71:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %or53 = or i32 %call52, 1310720
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  call void @arm_heavy_mb() #4
  %21 = call i32 @llvm.bswap.i32(i32 %or53)
  %arrayidx74 = getelementptr i8, ptr %20, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx74, i32 %21) #4, !srcloc !73
  br label %if.end75

if.end75:                                         ; preds = %do.body71, %if.end49.if.end75_crit_edge
  %22 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool85.not = icmp eq ptr %23, null
  br i1 %tobool85.not, label %if.end75.if.end99_crit_edge, label %do.body95, !prof !71

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

do.body95:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  call void @arm_heavy_mb() #4
  %arrayidx98 = getelementptr i8, ptr %23, i32 22528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx98, i32 0) #4, !srcloc !73
  br label %if.end99

if.end99:                                         ; preds = %do.body95, %if.end75.if.end99_crit_edge
  %24 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool111.not = icmp eq ptr %25, null
  br i1 %tobool111.not, label %if.end99.if.end125_crit_edge, label %do.body121, !prof !71

if.end99.if.end125_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

do.body121:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  call void @arm_heavy_mb() #4
  %arrayidx124 = getelementptr i8, ptr %25, i32 73764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx124, i32 %10) #4, !srcloc !73
  br label %if.end125

if.end125:                                        ; preds = %do.body121, %if.end99.if.end125_crit_edge
  call void @igb_read_pci_cfg(ptr noundef %hw, i32 noundef 68, ptr noundef nonnull %pci_word) #4
  %26 = ptrtoint ptr %pci_word to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pci_word, align 2
  %28 = or i16 %27, 3
  store i16 %28, ptr %pci_word, align 2
  call void @igb_write_pci_cfg(ptr noundef %hw, i32 noundef 68, ptr noundef nonnull %pci_word) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %29 = ptrtoint ptr %pci_word to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pci_word, align 2
  %31 = and i16 %30, -4
  store i16 %31, ptr %pci_word, align 2
  call void @igb_write_pci_cfg(ptr noundef %hw, i32 noundef 68, ptr noundef nonnull %pci_word) #4
  %32 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool144.not = icmp eq ptr %33, null
  br i1 %tobool144.not, label %if.end125.if.end158_crit_edge, label %do.body154, !prof !71

if.end125.if.end158_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

do.body154:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  call void @arm_heavy_mb() #4
  %arrayidx157 = getelementptr i8, ptr %33, i32 73764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx157, i32 %11) #4, !srcloc !73
  br label %if.end158

if.end158:                                        ; preds = %do.body154, %if.end125.if.end158_crit_edge
  %34 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool168.not = icmp eq ptr %35, null
  br i1 %tobool168.not, label %if.end158.if.end182_crit_edge, label %do.body178, !prof !71

if.end158.if.end182_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

do.body178:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  call void @arm_heavy_mb() #4
  %arrayidx181 = getelementptr i8, ptr %35, i32 22528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx181, i32 %12) #4, !srcloc !73
  br label %if.end182

if.end182:                                        ; preds = %do.body178, %if.end158.if.end182_crit_edge
  %inc = add nuw nsw i32 %i.0242, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %if.end182.for.end_crit_edge, label %if.end182.for.body_crit_edge

if.end182.for.body_crit_edge:                     ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end182.for.end_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end182.for.end_crit_edge, %for.body.for.end_crit_edge
  %ret_val.1 = phi i32 [ -2, %if.end182.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ]
  %call185 = call i32 @igb_write_phy_reg_82580(ptr noundef %hw, i32 noundef 22, i16 noundef zeroext 0) #4
  %36 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hw_addr3, align 4
  %tobool193.not = icmp eq ptr %37, null
  br i1 %tobool193.not, label %for.end.if.end207_crit_edge, label %do.body203, !prof !71

for.end.if.end207_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end207

do.body203:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  call void @arm_heavy_mb() #4
  %38 = call i32 @llvm.bswap.i32(i32 %call1)
  %arrayidx206 = getelementptr i8, ptr %37, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx206, i32 %38) #4, !srcloc !73
  br label %if.end207

if.end207:                                        ; preds = %do.body203, %for.end.if.end207_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_word) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_word) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_word) #4
  ret i32 %ret_val.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_read_invm_word_i210(ptr noundef %hw, i8 noundef zeroext %address, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv30 = zext i8 %address to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0104 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = zext i16 %i.0104 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 74016
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef %add) #4
  %conv3 = and i32 %call, 7
  %0 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %conv3, label %if.end14 [
    i32 0, label %for.body.do.body53_crit_edge
    i32 2, label %if.end14.thread
  ]

for.body.do.body53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53

if.end14.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add12 = add nuw nsw i16 %i.0104, 1
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv3)
  %cmp16 = icmp eq i32 %conv3, 4
  %add20 = add nuw nsw i16 %i.0104, 8
  %spec.select = select i1 %cmp16, i16 %add20, i16 %i.0104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv3)
  %cmp24 = icmp eq i32 %conv3, 1
  %and27 = lshr i32 %call, 9
  %conv28 = and i32 %and27, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %conv28, i32 %conv30)
  %cmp31 = icmp eq i32 %conv28, %conv30
  %or.cond = select i1 %cmp24, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then33, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %shr35 = lshr i32 %call, 16
  %conv36 = trunc i32 %shr35 to i16
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv36, ptr %data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_invm_word_i210.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_invm_word_i210, %if.then41)) #4
          to label %if.end73 [label %if.then41], !srcloc !70

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %conv44 = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_invm_word_i210.__UNIQUE_ID_ddebug346, ptr noundef %call42, ptr noundef nonnull @.str.25, i32 noundef %conv30, i32 noundef %conv44) #4
  br label %if.end73

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.thread
  %spec.select97 = phi i16 [ %add12, %if.end14.thread ], [ %spec.select, %if.end14.for.inc_crit_edge ]
  %inc = add nuw nsw i16 %spec.select97, 1
  %cmp = icmp ult i16 %spec.select97, 63
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body53_crit_edge

for.inc.do.body53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body53:                                        ; preds = %for.inc.do.body53_crit_edge, %for.body.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_read_invm_word_i210.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_read_invm_word_i210, %if.then65)) #4
          to label %if.end73 [label %if.then65], !srcloc !70

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  %call66 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_read_invm_word_i210.__UNIQUE_ID_ddebug347, ptr noundef %call66, ptr noundef nonnull @.str.26, i32 noundef %conv30) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %do.body53, %if.then41, %if.then33
  %status.0102 = phi i32 [ -19, %if.then65 ], [ 0, %if.then41 ], [ 0, %if.then33 ], [ -19, %do.body53 ]
  ret i32 %status.0102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_write_phy_reg_82580(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_82580(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_read_pci_cfg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_write_pci_cfg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_get_cfg_done_i210(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.019 = phi i32 [ 100, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %call = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 73776) #4
  %and = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %dec = add nsw i32 %timeout.019, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body4.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body4.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_get_cfg_done_i210.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_get_cfg_done_i210, %if.then9)) #4
          to label %if.end14 [label %if.then9], !srcloc !70

if.then9:                                         ; preds = %do.body4.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_get_cfg_done_i210.__UNIQUE_ID_ddebug366, ptr noundef %call10, ptr noundef nonnull @.str.7) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.body4.critedge, %while.body.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
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
  %hw_addr34 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_write_nvm_srwr.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_write_nvm_srwr, %if.then17)) #4
          to label %out [label %if.then17], !srcloc !70

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_write_nvm_srwr.__UNIQUE_ID_ddebug343, ptr noundef %call18, ptr noundef nonnull @.str.12) #4
  br label %out

for.body:                                         ; preds = %for.inc83.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc84, %for.inc83.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.0104
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %hw_addr34 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr34, align 4
  %tobool35.not = icmp eq ptr %5, null
  br i1 %tobool35.not, label %for.body.for.body55.preheader_crit_edge, label %do.body45, !prof !71

for.body.for.body55.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body55.preheader

do.body45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i32 %i.0104, %conv
  %shl = shl i32 %add, 2
  %conv26 = zext i16 %3 to i32
  %shl27 = shl nuw i32 %conv26, 16
  %or = or i32 %shl, %shl27
  %or28 = or i32 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %arrayidx48 = getelementptr i8, ptr %5, i32 73752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx48, i32 %6) #4, !srcloc !73
  br label %for.body55.preheader

for.body55.preheader:                             ; preds = %do.body45, %for.body.for.body55.preheader_crit_edge
  br label %for.body55

for.body55:                                       ; preds = %if.end59.for.body55_crit_edge, %for.body55.preheader
  %k.0102 = phi i32 [ %inc, %if.end59.for.body55_crit_edge ], [ 0, %for.body55.preheader ]
  %call56 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 73752) #4
  %and = and i32 %call56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end59, label %for.body55.for.inc83_crit_edge

for.body55.for.inc83_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc83

if.end59:                                         ; preds = %for.body55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #4
  %inc = add nuw nsw i32 %k.0102, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %if.end59.for.inc83_crit_edge, label %if.end59.for.body55_crit_edge

if.end59.for.body55_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body55

if.end59.for.inc83_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc83

for.inc83:                                        ; preds = %if.end59.for.inc83_crit_edge, %for.body55.for.inc83_crit_edge
  %inc84 = add nuw nsw i32 %i.0104, 1
  %exitcond106.not = icmp eq i32 %inc84, %conv4
  br i1 %exitcond106.not, label %for.inc83.out_crit_edge, label %for.inc83.for.body_crit_edge

for.inc83.for.body_crit_edge:                     ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc83.out_crit_edge:                          ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %for.inc83.out_crit_edge, %if.then17, %do.body14
  %ret_val.2 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ 0, %for.inc83.out_crit_edge ]
  ret i32 %ret_val.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_validate_nvm_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igb_update_flash_i210(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.i = and i32 %call.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 1073740) #4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %do.body1, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.body1:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_flash_i210, %if.then5)) #4
          to label %out [label %if.then5], !srcloc !70

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_flash_i210.__UNIQUE_ID_ddebug353, ptr noundef %call6, ptr noundef nonnull @.str.19) #4
  br label %out

if.end9:                                          ; preds = %for.body.i
  %call10 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %hw_addr16 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw_addr16, align 4
  %tobool17.not = icmp eq ptr %2, null
  br i1 %tobool17.not, label %if.end9.for.body.i96.preheader_crit_edge, label %do.body27, !prof !71

if.end9.for.body.i96.preheader_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i96.preheader

do.body27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call10, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %3) #4, !srcloc !73
  br label %for.body.i96.preheader

for.body.i96.preheader:                           ; preds = %do.body27, %if.end9.for.body.i96.preheader_crit_edge
  br label %for.body.i96

for.body.i96:                                     ; preds = %if.end.i99.for.body.i96_crit_edge, %for.body.i96.preheader
  %i.02.i92 = phi i32 [ %inc.i97, %if.end.i99.for.body.i96_crit_edge ], [ 0, %for.body.i96.preheader ]
  %call.i93 = tail call i32 @igb_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.i94 = and i32 %call.i93, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %if.end.i99, label %do.body57

if.end.i99:                                       ; preds = %for.body.i96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #4
  %inc.i97 = add nuw nsw i32 %i.02.i92, 1
  %exitcond.not.i98 = icmp eq i32 %inc.i97, 20000
  br i1 %exitcond.not.i98, label %do.body37, label %if.end.i99.for.body.i96_crit_edge

if.end.i99.for.body.i96_crit_edge:                ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i96

do.body37:                                        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_flash_i210, %if.then49)) #4
          to label %out [label %if.then49], !srcloc !70

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_flash_i210.__UNIQUE_ID_ddebug355, ptr noundef %call50, ptr noundef nonnull @.str.19) #4
  br label %out

do.body57:                                        ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_update_flash_i210, %if.then69)) #4
          to label %out [label %if.then69], !srcloc !70

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = tail call ptr @igb_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igb_update_flash_i210.__UNIQUE_ID_ddebug356, ptr noundef %call70, ptr noundef nonnull @.str.20) #4
  br label %out

out:                                              ; preds = %if.then69, %do.body57, %if.then49, %do.body37, %if.then5, %do.body1
  %ret_val.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then49 ], [ 0, %if.then69 ], [ -1, %do.body1 ], [ -1, %do.body37 ], [ 0, %do.body57 ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 142, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igb_acquire_swfw_sync_i210.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 705, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igb_valid_led_default_i210.__UNIQUE_ID_ddebug357, !7, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 908, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @igb_get_cfg_done_i210.__UNIQUE_ID_ddebug366, !11, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 56, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug337, !15, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 76, i32 3}
!20 = !{ptr @igb_get_hw_semaphore_i210.__UNIQUE_ID_ddebug339, !19, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 240, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @igb_write_nvm_srwr.__UNIQUE_ID_ddebug343, !22, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 262, i32 4}
!27 = distinct !{null, !26, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 585, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug350, !29, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 599, i32 5}
!34 = !{ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug351, !33, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 609, i32 4}
!37 = !{ptr @igb_update_nvm_checksum_i210.__UNIQUE_ID_ddebug352, !36, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 674, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug353, !39, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!42 = !{ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug355, !43, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 683, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 685, i32 3}
!46 = !{ptr @igb_update_flash_i210.__UNIQUE_ID_ddebug356, !45, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 380, i32 4}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @igb_read_invm_i210.__UNIQUE_ID_ddebug348, !48, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 430, i32 3}
!53 = !{ptr @igb_read_invm_i210.__UNIQUE_ID_ddebug349, !52, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 345, i32 5}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @igb_read_invm_word_i210.__UNIQUE_ID_ddebug346, !55, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/igb/e1000_i210.c", i32 353, i32 3}
!60 = !{ptr @igb_read_invm_word_i210.__UNIQUE_ID_ddebug347, !59, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148853748, i64 2148853753, i64 2148853766, i64 2148853810, i64 2148853844, i64 2148853865}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2156045822}
!73 = !{i64 6047157}
!74 = !{i8 0, i8 2}
!75 = !{i64 2156035319}
!76 = !{i64 2156053434}
!77 = !{!"auto-init"}
!78 = !{i64 2156097815}
!79 = !{i64 2156101440}
!80 = !{i64 2156105032}
!81 = !{i64 2156108528}
!82 = !{i64 2156112020}
!83 = !{i64 2156115555}
!84 = !{i64 2156119052}
!85 = !{i64 2156122550}
!86 = !{i64 2156059409}
!87 = !{i64 2156086919}
