; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@e1000e_acquire_nvm.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"e1000e\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"e1000e_acquire_nvm\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/intel/e1000e/nvm.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not acquire NVM grant\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e1000e_read_nvm_eerd\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NVM read error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@e1000e_write_nvm_spi.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.5, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e1000e_write_nvm_spi\00", [43 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"e1000_read_pba_string_generic\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PBA string buffer was null\0A\00", [36 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVM Read Error\0A\00", [16 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NVM PBA number is not stored as string\0A\00", [56 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PBA string buffer too small\0A\00", [35 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NVM PBA number section invalid length\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000_read_pba_string_generic.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"e1000e_validate_nvm_checksum_generic\00", [59 x i8] zeroinitializer }, align 32
@e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVM Checksum Invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"e1000e_update_nvm_checksum_generic\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_ready_nvm_eeprom.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"e1000_ready_nvm_eeprom\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPI NVM Status error\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 169, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 302, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 313, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 346, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 421, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 427, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 442, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 446, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 483, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 555, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 562, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 586, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 594, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [43 x i8] c"../drivers/net/ethernet/intel/e1000e/nvm.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 274, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_poll_eerd_eewr_done(ptr nocapture noundef readonly %hw, i32 noundef %ee_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ee_reg)
  %cmp1 = icmp eq i32 %ee_reg, 0
  %hw_addr.i9 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %if.end4.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw_addr.i9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i9, align 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 4140
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #4, !srcloc !66
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.0 = phi i32 [ %3, %if.then ], [ %5, %if.else ]
  %and = and i32 %reg.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_acquire_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %3 = or i32 %2, 1073741824
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %4) #4
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool2.not34 = icmp sgt i32 %7, -1
  br i1 %tobool2.not34, label %entry.if.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %timeout.035 = phi i32 [ %dec, %if.end.if.end_crit_edge ], [ 1000, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #4
  %9 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #4, !srcloc !66
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %dec = add i32 %timeout.035, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.end.if.end_crit_edge, label %while.end

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.end:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then5, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %and6 = and i32 %12, -65
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and6) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_acquire_nvm.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_acquire_nvm, %if.then12)) #4
          to label %cleanup [label %if.then12], !srcloc !68

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_acquire_nvm.__UNIQUE_ID_ddebug353, ptr noundef %16, ptr noundef nonnull @.str.3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then5, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then12 ], [ 0, %while.end.cleanup_crit_edge ], [ -1, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_release_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %if.then.i, label %entry.e1000_stop_nvm.exit_crit_edge

entry.e1000_stop_nvm.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_stop_nvm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = and i32 %2, -50331649
  %6 = or i32 %5, 33554432
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %7) #4
  %8 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %delay_usec.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %11 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i.i = zext i16 %12 to i32
  tail call void %13(i32 noundef %conv11.i.i) #4
  br label %e1000_stop_nvm.exit

e1000_stop_nvm.exit:                              ; preds = %if.then.i, %entry.e1000_stop_nvm.exit_crit_edge
  %14 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %17 = and i32 %16, -1073741825
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %18) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
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
  %hw_addr.i9.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_nvm_eerd, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !68

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug355, ptr noundef %5, ptr noundef nonnull @.str.5) #4
  br label %cleanup

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end50.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.080, %conv
  %shl = shl i32 %add, 2
  %add25 = or i32 %shl, 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 20, i32 noundef %add25) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body
  %i.011.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %hw_addr.i9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end50

if.end4.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.body30, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.body30:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_read_nvm_eerd, %if.then42)) #4
          to label %cleanup [label %if.then42], !srcloc !68

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %netdev44 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %netdev44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug356, ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef -1) #4
  br label %cleanup

if.end50:                                         ; preds = %for.body.i
  %15 = ptrtoint ptr %hw_addr.i9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_addr.i9.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %shr = lshr i32 %18, 16
  %conv52 = trunc i32 %shr to i16
  %arrayidx = getelementptr i16, ptr %data, i32 %i.080
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv52, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %if.end50.cleanup_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %if.then42, %do.body30, %if.then17, %do.body14
  %retval.0 = phi i32 [ -1, %if.then17 ], [ -1, %if.then42 ], [ -1, %do.body14 ], [ -1, %do.body30 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_write_nvm_spi(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 5
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
  %hw_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %delay_usec.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  %opcode_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %address_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %offset)
  %cmp38 = icmp ugt i16 %offset, 127
  %page_size = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 9
  %release70 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 2
  br label %while.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_write_nvm_spi.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_write_nvm_spi, %if.then17)) #4
          to label %cleanup75 [label %if.then17], !srcloc !68

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_write_nvm_spi.__UNIQUE_ID_ddebug357, ptr noundef %5, ptr noundef nonnull @.str.5) #4
  br label %cleanup75

while.body:                                       ; preds = %cleanup71.while.body_crit_edge, %while.body.lr.ph
  %widx.0185 = phi i16 [ 0, %while.body.lr.ph ], [ %widx.2, %cleanup71.while.body_crit_edge ]
  %6 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nvm1, align 4
  %call25 = tail call i32 %7(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %while.body.cleanup75_crit_edge

while.body.cleanup75_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup75

if.end28:                                         ; preds = %while.body
  %call29 = tail call fastcc i32 @e1000_ready_nvm_eeprom(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %release70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release70, align 4
  tail call void %9(ptr noundef %hw) #4
  br label %cleanup75

if.end33:                                         ; preds = %if.end28
  %10 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %if.then.i, label %if.end33.e1000_standby_nvm.exit_crit_edge

if.end33.e1000_standby_nvm.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_standby_nvm.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %or.i = or i32 %15, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i) #4
  %16 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %19 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i = zext i16 %20 to i32
  tail call void %21(i32 noundef %conv11.i) #4
  %and.i = and i32 %15, -3
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i) #4
  %22 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %25 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv28.i = zext i16 %26 to i32
  tail call void %27(i32 noundef %conv28.i) #4
  br label %e1000_standby_nvm.exit

e1000_standby_nvm.exit:                           ; preds = %if.then.i, %if.end33.e1000_standby_nvm.exit_crit_edge
  %28 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext 6, i16 noundef zeroext %29)
  %30 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i123 = icmp eq i32 %34, 2
  br i1 %cmp.i123, label %if.then.i127, label %e1000_standby_nvm.exit.e1000_standby_nvm.exit147_crit_edge

e1000_standby_nvm.exit.e1000_standby_nvm.exit147_crit_edge: ; preds = %e1000_standby_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_standby_nvm.exit147

if.then.i127:                                     ; preds = %e1000_standby_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %or.i124 = or i32 %35, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i124) #4
  %36 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i47.i125 = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i125) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %39 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i134 = zext i16 %40 to i32
  tail call void %41(i32 noundef %conv11.i134) #4
  %and.i136 = and i32 %35, -3
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i136) #4
  %42 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i49.i137 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i137) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %45 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv28.i145 = zext i16 %46 to i32
  tail call void %47(i32 noundef %conv28.i145) #4
  br label %e1000_standby_nvm.exit147

e1000_standby_nvm.exit147:                        ; preds = %if.then.i127, %e1000_standby_nvm.exit.e1000_standby_nvm.exit147_crit_edge
  %48 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %address_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %49)
  %cmp35 = icmp eq i16 %49, 8
  %or.cond119 = and i1 %cmp38, %cmp35
  %conv44 = select i1 %or.cond119, i16 10, i16 2
  %50 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %conv44, i16 noundef zeroext %51)
  %add = add i16 %widx.0185, %offset
  %mul = shl i16 %add, 1
  %52 = ptrtoint ptr %address_bits to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %address_bits, align 4
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %mul, i16 noundef zeroext %53)
  %54 = zext i16 %widx.0185 to i32
  %umax = call i16 @llvm.umax.i16(i16 %widx.0185, i16 %words)
  %wide.trip.count = zext i16 %umax to i32
  br label %while.cond50

while.cond50:                                     ; preds = %while.body55.while.cond50_crit_edge, %e1000_standby_nvm.exit147
  %indvars.iv = phi i32 [ %indvars.iv.next, %while.body55.while.cond50_crit_edge ], [ %54, %e1000_standby_nvm.exit147 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %wide.trip.count)
  %exitcond.not = icmp eq i32 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %while.cond50.cleanup71_crit_edge, label %while.body55

while.cond50.cleanup71_crit_edge:                 ; preds = %while.cond50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

while.body55:                                     ; preds = %while.cond50
  %arrayidx = getelementptr i16, ptr %data, i32 %indvars.iv
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx, align 2
  %or58 = tail call i16 @llvm.bswap.i16(i16 %56)
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %or58, i16 noundef zeroext 16)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %add62 = add nuw nsw i32 %indvars.iv.next, %conv
  %mul63 = shl nuw nsw i32 %add62, 1
  %57 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %page_size, align 4
  %conv64 = zext i16 %58 to i32
  %rem = urem i32 %mul63, %conv64
  %cmp65 = icmp eq i32 %rem, 0
  br i1 %cmp65, label %if.then67, label %while.body55.while.cond50_crit_edge

while.body55.while.cond50_crit_edge:              ; preds = %while.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond50

if.then67:                                        ; preds = %while.body55
  %59 = trunc i32 %indvars.iv.next to i16
  %60 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i149) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %63 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp.i151 = icmp eq i32 %64, 2
  br i1 %cmp.i151, label %if.then.i155, label %if.then67.cleanup71_crit_edge

if.then67.cleanup71_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

if.then.i155:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #4
  %or.i152 = or i32 %65, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i152) #4
  %66 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i47.i153 = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i153) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %69 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i162 = zext i16 %70 to i32
  tail call void %71(i32 noundef %conv11.i162) #4
  %and.i164 = and i32 %65, -3
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i164) #4
  %72 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr.i.i, align 4
  %add.ptr.i49.i165 = getelementptr i8, ptr %73, i32 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i165) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %75 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %delay_usec.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv28.i173 = zext i16 %76 to i32
  tail call void %77(i32 noundef %conv28.i173) #4
  br label %cleanup71

cleanup71:                                        ; preds = %if.then.i155, %if.then67.cleanup71_crit_edge, %while.cond50.cleanup71_crit_edge
  %widx.2 = phi i16 [ %59, %if.then67.cleanup71_crit_edge ], [ %59, %if.then.i155 ], [ %umax, %while.cond50.cleanup71_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %78 = ptrtoint ptr %release70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %release70, align 4
  tail call void %79(ptr noundef %hw) #4
  %cmp23 = icmp ult i16 %widx.2, %words
  br i1 %cmp23, label %cleanup71.while.body_crit_edge, label %cleanup71.cleanup75_crit_edge

cleanup71.cleanup75_crit_edge:                    ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup75

cleanup71.while.body_crit_edge:                   ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup75:                                        ; preds = %cleanup71.cleanup75_crit_edge, %if.then31, %while.body.cleanup75_crit_edge, %if.then17, %do.body14
  %retval.2 = phi i32 [ -1, %if.then17 ], [ -1, %do.body14 ], [ %call29, %if.then31 ], [ 0, %cleanup71.cleanup75_crit_edge ], [ %call25, %while.body.cleanup75_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_ready_nvm_eeprom(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

if.then:                                          ; preds = %entry
  %5 = and i32 %2, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %6) #4
  %7 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  %opcode_bits = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 8
  %delay_usec.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  br label %while.body

while.body:                                       ; preds = %e1000_standby_nvm.exit.while.body_crit_edge, %if.then
  %timeout.042 = phi i16 [ 5000, %if.then ], [ %dec, %e1000_standby_nvm.exit.while.body_crit_edge ]
  %11 = ptrtoint ptr %opcode_bits to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %opcode_bits, align 2
  tail call fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext 5, i16 noundef zeroext %12)
  %13 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %16 = and i32 %15, -201326593
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body
  %i.016.i = phi i32 [ 0, %while.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %eecd.015.i = phi i32 [ %17, %while.body ], [ %and.i.i, %for.body.i.for.body.i_crit_edge ]
  %or.i.i = or i32 %eecd.015.i, 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i.i) #4
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %21 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i.i = zext i16 %22 to i32
  tail call void %23(i32 noundef %conv11.i.i) #4
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #4, !srcloc !66
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %and.i.i = and i32 %27, -6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i.i) #4
  %28 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %31 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i12.i = zext i16 %32 to i32
  tail call void %33(i32 noundef %conv11.i12.i) #4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %e1000_shift_in_eec_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

e1000_shift_in_eec_bits.exit:                     ; preds = %for.body.i
  %34 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not = icmp eq i32 %34, 0
  br i1 %tobool7.not, label %e1000_shift_in_eec_bits.exit.cleanup22_crit_edge, label %if.end

e1000_shift_in_eec_bits.exit.cleanup22_crit_edge: ; preds = %e1000_shift_in_eec_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

if.end:                                           ; preds = %e1000_shift_in_eec_bits.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #4
  %36 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i = icmp eq i32 %40, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.e1000_standby_nvm.exit_crit_edge

if.end.e1000_standby_nvm.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_standby_nvm.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #4
  %or.i = or i32 %41, 2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i) #4
  %42 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %45 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i = zext i16 %46 to i32
  tail call void %47(i32 noundef %conv11.i) #4
  %and.i = and i32 %41, -3
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i) #4
  %48 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %49, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %51 = ptrtoint ptr %delay_usec.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %delay_usec.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv28.i = zext i16 %52 to i32
  tail call void %53(i32 noundef %conv28.i) #4
  br label %e1000_standby_nvm.exit

e1000_standby_nvm.exit:                           ; preds = %if.then.i, %if.end.e1000_standby_nvm.exit_crit_edge
  %dec = add nsw i16 %timeout.042, -1
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %do.body11.critedge, label %e1000_standby_nvm.exit.while.body_crit_edge

e1000_standby_nvm.exit.while.body_crit_edge:      ; preds = %e1000_standby_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body11.critedge:                               ; preds = %e1000_standby_nvm.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_ready_nvm_eeprom.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_ready_nvm_eeprom, %if.then16)) #4
          to label %cleanup22 [label %if.then16], !srcloc !68

if.then16:                                        ; preds = %do.body11.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %55, i32 0, i32 64
  %56 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_ready_nvm_eeprom.__UNIQUE_ID_ddebug354, ptr noundef %57, ptr noundef nonnull @.str.20) #4
  br label %cleanup22

cleanup22:                                        ; preds = %if.then16, %do.body11.critedge, %e1000_shift_in_eec_bits.exit.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ -1, %if.then16 ], [ 0, %entry.cleanup22_crit_edge ], [ -1, %do.body11.critedge ], [ 0, %e1000_shift_in_eec_bits.exit.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_shift_out_eec_bits(ptr noundef %hw, i16 noundef zeroext %data, i16 noundef zeroext %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %conv = zext i16 %count to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %type = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %or = or i32 %3, 8
  %spec.select50 = select i1 %cmp, i32 %or, i32 %3
  %conv3 = zext i16 %data to i32
  %delay_usec = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %eecd.1 = phi i32 [ %spec.select50, %entry ], [ %and.i, %do.body.do.body_crit_edge ]
  %mask.0 = phi i32 [ %shl, %entry ], [ %shr, %do.body.do.body_crit_edge ]
  %and = and i32 %eecd.1, -5
  %and4 = and i32 %mask.0, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %spec.select = or i32 %masksel, %and
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %spec.select) #4
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %9 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv18 = zext i16 %10 to i32
  tail call void %11(i32 noundef %conv18) #4
  %or.i = or i32 %spec.select, 1
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %or.i) #4
  %12 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %15 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i = zext i16 %16 to i32
  tail call void %17(i32 noundef %conv11.i) #4
  %and.i = and i32 %spec.select, -2
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and.i) #4
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %21 = ptrtoint ptr %delay_usec to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %delay_usec, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv11.i45 = zext i16 %22 to i32
  tail call void %23(i32 noundef %conv11.i45) #4
  %shr = lshr i32 %mask.0, 1
  %tobool20.not = icmp ult i32 %mask.0, 2
  br i1 %tobool20.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %and21 = and i32 %eecd.1, -6
  tail call void @__ew32(ptr noundef %hw, i32 noundef 16, i32 noundef %and21) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_pba_string_generic(ptr noundef %hw, ptr noundef %pba_num, i32 noundef %pba_num_size) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  %pba_ptr = alloca i16, align 2
  %length = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_ptr) #4
  %1 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pba_ptr, align 2, !annotation !69
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %length, align 2, !annotation !69
  %cmp = icmp eq ptr %pba_num, null
  br i1 %cmp, label %do.body1, label %if.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !68

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %8(ptr noundef %hw, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end32, label %do.body12

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then24)) #4
          to label %cleanup [label %if.then24], !srcloc !68

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev26 = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev26, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug359, ptr noundef %12, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %call.i384 = call i32 %14(ptr noundef %hw, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %pba_ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %tobool34.not = icmp eq i32 %call.i384, 0
  br i1 %tobool34.not, label %if.end57, label %do.body37

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then49)) #4
          to label %cleanup [label %if.then49], !srcloc !68

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %netdev51 = getelementptr inbounds %struct.e1000_adapter, ptr %16, i32 0, i32 64
  %17 = ptrtoint ptr %netdev51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev51, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug360, ptr noundef %18, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end57:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nvm_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1286, i16 %20)
  %cmp58.not = icmp eq i16 %20, -1286
  br i1 %cmp58.not, label %if.end170, label %do.body62

do.body62:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then74)) #4
          to label %do.end81 [label %if.then74], !srcloc !68

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %netdev76 = getelementptr inbounds %struct.e1000_adapter, ptr %22, i32 0, i32 64
  %23 = ptrtoint ptr %netdev76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev76, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug361, ptr noundef %24, ptr noundef nonnull @.str.11) #4
  br label %do.end81

do.end81:                                         ; preds = %if.then74, %do.body62
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %pba_num_size)
  %cmp82 = icmp ult i32 %pba_num_size, 11
  br i1 %cmp82, label %do.body86, label %if.end106

do.body86:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then98)) #4
          to label %cleanup [label %if.then98], !srcloc !68

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %netdev100 = getelementptr inbounds %struct.e1000_adapter, ptr %26, i32 0, i32 64
  %27 = ptrtoint ptr %netdev100 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev100, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug362, ptr noundef %28, ptr noundef nonnull @.str.12) #4
  br label %cleanup

if.end106:                                        ; preds = %do.end81
  %29 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nvm_data, align 2
  %31 = lshr i16 %30, 12
  %conv108 = trunc i16 %31 to i8
  %32 = lshr i16 %30, 8
  %33 = trunc i16 %32 to i8
  %conv112 = and i8 %33, 15
  %arrayidx113 = getelementptr i8, ptr %pba_num, i32 1
  %34 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv112, ptr %arrayidx113, align 1
  %35 = trunc i16 %30 to i8
  %36 = lshr i8 %35, 4
  %arrayidx118 = getelementptr i8, ptr %pba_num, i32 2
  %37 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx118, align 1
  %conv121 = and i8 %35, 15
  %arrayidx122 = getelementptr i8, ptr %pba_num, i32 3
  %38 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv121, ptr %arrayidx122, align 1
  %39 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pba_ptr, align 2
  %41 = lshr i16 %40, 12
  %conv126 = trunc i16 %41 to i8
  %arrayidx127 = getelementptr i8, ptr %pba_num, i32 4
  %42 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv126, ptr %arrayidx127, align 1
  %43 = lshr i16 %40, 8
  %44 = trunc i16 %43 to i8
  %conv131 = and i8 %44, 15
  %arrayidx132 = getelementptr i8, ptr %pba_num, i32 5
  %45 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv131, ptr %arrayidx132, align 1
  %arrayidx133 = getelementptr i8, ptr %pba_num, i32 6
  %46 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 45, ptr %arrayidx133, align 1
  %arrayidx134 = getelementptr i8, ptr %pba_num, i32 7
  %47 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx134, align 1
  %48 = trunc i16 %40 to i8
  %49 = lshr i8 %48, 4
  %arrayidx139 = getelementptr i8, ptr %pba_num, i32 8
  %50 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx139, align 1
  %conv142 = and i8 %48, 15
  %arrayidx143 = getelementptr i8, ptr %pba_num, i32 9
  %51 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv142, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr i8, ptr %pba_num, i32 10
  %52 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv108)
  %cmp150 = icmp ult i8 %conv108, 10
  %add = or i8 %conv108, 48
  %add166 = add nuw nsw i8 %conv108, 55
  %add.sink = select i1 %cmp150, i8 %add, i8 %add166
  %53 = ptrtoint ptr %pba_num to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add.sink, ptr %pba_num, align 1
  %54 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %55)
  %cmp150.1 = icmp ult i8 %55, 10
  br i1 %cmp150.1, label %if.end106.for.inc.1.sink.split_crit_edge, label %if.else.1

if.end106.for.inc.1.sink.split_crit_edge:         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

if.else.1:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %55)
  %cmp160.1 = icmp ult i8 %55, 16
  br i1 %cmp160.1, label %if.else.1.for.inc.1.sink.split_crit_edge, label %if.else.1.for.inc.1_crit_edge

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.else.1.for.inc.1.sink.split_crit_edge:         ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %if.else.1.for.inc.1.sink.split_crit_edge, %if.end106.for.inc.1.sink.split_crit_edge
  %.sink = phi i8 [ 55, %if.else.1.for.inc.1.sink.split_crit_edge ], [ 48, %if.end106.for.inc.1.sink.split_crit_edge ]
  %add.1 = add nuw nsw i8 %55, %.sink
  %56 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add.1, ptr %arrayidx113, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %if.else.1.for.inc.1_crit_edge
  %57 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %58)
  %cmp150.2 = icmp ult i8 %58, 10
  br i1 %cmp150.2, label %for.inc.1.for.inc.2.sink.split_crit_edge, label %if.else.2

for.inc.1.for.inc.2.sink.split_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp160.2 = icmp ult i8 %58, 16
  br i1 %cmp160.2, label %if.else.2.for.inc.2.sink.split_crit_edge, label %if.else.2.for.inc.2_crit_edge

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.else.2.for.inc.2.sink.split_crit_edge:         ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %if.else.2.for.inc.2.sink.split_crit_edge, %for.inc.1.for.inc.2.sink.split_crit_edge
  %.sink406 = phi i8 [ 55, %if.else.2.for.inc.2.sink.split_crit_edge ], [ 48, %for.inc.1.for.inc.2.sink.split_crit_edge ]
  %add.2 = add nuw nsw i8 %58, %.sink406
  %59 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %add.2, ptr %arrayidx118, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %if.else.2.for.inc.2_crit_edge
  %60 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %61)
  %cmp150.3 = icmp ult i8 %61, 10
  br i1 %cmp150.3, label %for.inc.2.for.inc.3.sink.split_crit_edge, label %if.else.3

for.inc.2.for.inc.3.sink.split_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.sink.split

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %61)
  %cmp160.3 = icmp ult i8 %61, 16
  br i1 %cmp160.3, label %if.else.3.for.inc.3.sink.split_crit_edge, label %if.else.3.for.inc.3_crit_edge

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.else.3.for.inc.3.sink.split_crit_edge:         ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.sink.split

for.inc.3.sink.split:                             ; preds = %if.else.3.for.inc.3.sink.split_crit_edge, %for.inc.2.for.inc.3.sink.split_crit_edge
  %.sink407 = phi i8 [ 55, %if.else.3.for.inc.3.sink.split_crit_edge ], [ 48, %for.inc.2.for.inc.3.sink.split_crit_edge ]
  %add.3 = add nuw nsw i8 %61, %.sink407
  %62 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %add.3, ptr %arrayidx122, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3.sink.split, %if.else.3.for.inc.3_crit_edge
  %63 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %64)
  %cmp150.4 = icmp ult i8 %64, 10
  br i1 %cmp150.4, label %for.inc.3.for.inc.4.sink.split_crit_edge, label %if.else.4

for.inc.3.for.inc.4.sink.split_crit_edge:         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.sink.split

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %64)
  %cmp160.4 = icmp ult i8 %64, 16
  br i1 %cmp160.4, label %if.else.4.for.inc.4.sink.split_crit_edge, label %if.else.4.for.inc.4_crit_edge

if.else.4.for.inc.4_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.else.4.for.inc.4.sink.split_crit_edge:         ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.sink.split

for.inc.4.sink.split:                             ; preds = %if.else.4.for.inc.4.sink.split_crit_edge, %for.inc.3.for.inc.4.sink.split_crit_edge
  %.sink408 = phi i8 [ 55, %if.else.4.for.inc.4.sink.split_crit_edge ], [ 48, %for.inc.3.for.inc.4.sink.split_crit_edge ]
  %add.4 = add nuw nsw i8 %64, %.sink408
  %65 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add.4, ptr %arrayidx127, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.4.sink.split, %if.else.4.for.inc.4_crit_edge
  %66 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %67)
  %cmp150.5 = icmp ult i8 %67, 10
  br i1 %cmp150.5, label %for.inc.4.for.inc.5.sink.split_crit_edge, label %if.else.5

for.inc.4.for.inc.5.sink.split_crit_edge:         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.sink.split

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %cmp160.5 = icmp ult i8 %67, 16
  br i1 %cmp160.5, label %if.else.5.for.inc.5.sink.split_crit_edge, label %if.else.5.for.inc.5_crit_edge

if.else.5.for.inc.5_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.else.5.for.inc.5.sink.split_crit_edge:         ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.sink.split

for.inc.5.sink.split:                             ; preds = %if.else.5.for.inc.5.sink.split_crit_edge, %for.inc.4.for.inc.5.sink.split_crit_edge
  %.sink409 = phi i8 [ 55, %if.else.5.for.inc.5.sink.split_crit_edge ], [ 48, %for.inc.4.for.inc.5.sink.split_crit_edge ]
  %add.5 = add nuw nsw i8 %67, %.sink409
  %68 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %add.5, ptr %arrayidx132, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.5.sink.split, %if.else.5.for.inc.5_crit_edge
  %69 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %70)
  %cmp150.6 = icmp ult i8 %70, 10
  br i1 %cmp150.6, label %for.inc.5.for.inc.6.sink.split_crit_edge, label %if.else.6

for.inc.5.for.inc.6.sink.split_crit_edge:         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.sink.split

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %70)
  %cmp160.6 = icmp ult i8 %70, 16
  br i1 %cmp160.6, label %if.else.6.for.inc.6.sink.split_crit_edge, label %if.else.6.for.inc.6_crit_edge

if.else.6.for.inc.6_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.else.6.for.inc.6.sink.split_crit_edge:         ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.sink.split

for.inc.6.sink.split:                             ; preds = %if.else.6.for.inc.6.sink.split_crit_edge, %for.inc.5.for.inc.6.sink.split_crit_edge
  %.sink410 = phi i8 [ 55, %if.else.6.for.inc.6.sink.split_crit_edge ], [ 48, %for.inc.5.for.inc.6.sink.split_crit_edge ]
  %add.6 = add nuw nsw i8 %70, %.sink410
  %71 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %add.6, ptr %arrayidx133, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6.sink.split, %if.else.6.for.inc.6_crit_edge
  %72 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %73)
  %cmp150.7 = icmp ult i8 %73, 10
  br i1 %cmp150.7, label %for.inc.6.for.inc.7.sink.split_crit_edge, label %if.else.7

for.inc.6.for.inc.7.sink.split_crit_edge:         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.sink.split

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %73)
  %cmp160.7 = icmp ult i8 %73, 16
  br i1 %cmp160.7, label %if.else.7.for.inc.7.sink.split_crit_edge, label %if.else.7.for.inc.7_crit_edge

if.else.7.for.inc.7_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.else.7.for.inc.7.sink.split_crit_edge:         ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.sink.split

for.inc.7.sink.split:                             ; preds = %if.else.7.for.inc.7.sink.split_crit_edge, %for.inc.6.for.inc.7.sink.split_crit_edge
  %.sink411 = phi i8 [ 55, %if.else.7.for.inc.7.sink.split_crit_edge ], [ 48, %for.inc.6.for.inc.7.sink.split_crit_edge ]
  %add.7 = add nuw nsw i8 %73, %.sink411
  %74 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %add.7, ptr %arrayidx134, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.7.sink.split, %if.else.7.for.inc.7_crit_edge
  %75 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %76)
  %cmp150.8 = icmp ult i8 %76, 10
  br i1 %cmp150.8, label %for.inc.7.for.inc.8.sink.split_crit_edge, label %if.else.8

for.inc.7.for.inc.8.sink.split_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.sink.split

if.else.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %76)
  %cmp160.8 = icmp ult i8 %76, 16
  br i1 %cmp160.8, label %if.else.8.for.inc.8.sink.split_crit_edge, label %if.else.8.for.inc.8_crit_edge

if.else.8.for.inc.8_crit_edge:                    ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8

if.else.8.for.inc.8.sink.split_crit_edge:         ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.sink.split

for.inc.8.sink.split:                             ; preds = %if.else.8.for.inc.8.sink.split_crit_edge, %for.inc.7.for.inc.8.sink.split_crit_edge
  %.sink412 = phi i8 [ 55, %if.else.8.for.inc.8.sink.split_crit_edge ], [ 48, %for.inc.7.for.inc.8.sink.split_crit_edge ]
  %add.8 = add nuw nsw i8 %76, %.sink412
  %77 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %add.8, ptr %arrayidx139, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.8.sink.split, %if.else.8.for.inc.8_crit_edge
  %78 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %79)
  %cmp150.9 = icmp ult i8 %79, 10
  br i1 %cmp150.9, label %if.then152.9, label %if.else.9

if.else.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %79)
  %cmp160.9 = icmp ult i8 %79, 16
  br i1 %cmp160.9, label %if.then162.9, label %if.else.9.cleanup_crit_edge

if.else.9.cleanup_crit_edge:                      ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then162.9:                                     ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #6
  %add166.9 = add nuw nsw i8 %79, 55
  %80 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %add166.9, ptr %arrayidx143, align 1
  br label %cleanup

if.then152.9:                                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  %add.9 = add nuw nsw i8 %79, 48
  %81 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %add.9, ptr %arrayidx143, align 1
  br label %cleanup

if.end170:                                        ; preds = %if.end57
  %82 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %pba_ptr, align 2
  %84 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read.i, align 4
  %call.i386 = call i32 %85(ptr noundef %hw, i16 noundef zeroext %83, i16 noundef zeroext 1, ptr noundef nonnull %length) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool172.not = icmp eq i32 %call.i386, 0
  br i1 %tobool172.not, label %if.end195, label %do.body175

do.body175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then187)) #4
          to label %cleanup [label %if.then187], !srcloc !68

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %netdev189 = getelementptr inbounds %struct.e1000_adapter, ptr %87, i32 0, i32 64
  %88 = ptrtoint ptr %netdev189 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev189, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug363, ptr noundef %89, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end195:                                        ; preds = %if.end170
  %90 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %length, align 2
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values)
  switch i16 %91, label %if.end224 [
    i16 -1, label %if.end195.do.body204_crit_edge
    i16 0, label %if.end195.do.body204_crit_edge416
  ]

if.end195.do.body204_crit_edge416:                ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body204

if.end195.do.body204_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body204

do.body204:                                       ; preds = %if.end195.do.body204_crit_edge, %if.end195.do.body204_crit_edge416
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then216)) #4
          to label %cleanup [label %if.then216], !srcloc !68

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #6
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 4
  %netdev218 = getelementptr inbounds %struct.e1000_adapter, ptr %94, i32 0, i32 64
  %95 = ptrtoint ptr %netdev218 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev218, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug364, ptr noundef %96, ptr noundef nonnull @.str.13) #4
  br label %cleanup

if.end224:                                        ; preds = %if.end195
  %conv196 = zext i16 %91 to i32
  %mul = shl nuw nsw i32 %conv196, 1
  %sub = add nsw i32 %mul, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %pba_num_size)
  %cmp226 = icmp ugt i32 %sub, %pba_num_size
  br i1 %cmp226, label %do.body230, label %if.end250

do.body230:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then242)) #4
          to label %cleanup [label %if.then242], !srcloc !68

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw, align 4
  %netdev244 = getelementptr inbounds %struct.e1000_adapter, ptr %98, i32 0, i32 64
  %99 = ptrtoint ptr %netdev244 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev244, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug365, ptr noundef %100, ptr noundef nonnull @.str.12) #4
  br label %cleanup

if.end250:                                        ; preds = %if.end224
  %101 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pba_ptr, align 2
  %inc251 = add i16 %102, 1
  store i16 %inc251, ptr %pba_ptr, align 2
  %dec = add i16 %91, -1
  %103 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %dec, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp255400.not = icmp eq i16 %dec, 0
  br i1 %cmp255400.not, label %if.end250.for.end302_crit_edge, label %if.end250.for.body257_crit_edge

if.end250.for.body257_crit_edge:                  ; preds = %if.end250
  br label %for.body257

if.end250.for.end302_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end302

for.body257:                                      ; preds = %if.end286.for.body257_crit_edge, %if.end250.for.body257_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end286.for.body257_crit_edge ], [ 0, %if.end250.for.body257_crit_edge ]
  %104 = ptrtoint ptr %pba_ptr to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %pba_ptr, align 2
  %106 = trunc i32 %indvars.iv to i16
  %add260 = add i16 %105, %106
  %107 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read.i, align 4
  %call.i388 = call i32 %108(ptr noundef %hw, i16 noundef zeroext %add260, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %tobool263.not = icmp eq i32 %call.i388, 0
  br i1 %tobool263.not, label %if.end286, label %do.body266

do.body266:                                       ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000_read_pba_string_generic, %if.then278)) #4
          to label %cleanup [label %if.then278], !srcloc !68

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %netdev280 = getelementptr inbounds %struct.e1000_adapter, ptr %110, i32 0, i32 64
  %111 = ptrtoint ptr %netdev280 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %netdev280, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug366, ptr noundef %112, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end286:                                        ; preds = %for.body257
  %113 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %nvm_data, align 2
  %115 = lshr i16 %114, 8
  %conv289 = trunc i16 %115 to i8
  %mul291 = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx292 = getelementptr i8, ptr %pba_num, i32 %mul291
  %116 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv289, ptr %arrayidx292, align 1
  %conv295 = trunc i16 %114 to i8
  %add298 = or i32 %mul291, 1
  %arrayidx299 = getelementptr i8, ptr %pba_num, i32 %add298
  %117 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv295, ptr %arrayidx299, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %118 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %length, align 2
  %120 = zext i16 %119 to i32
  %cmp255 = icmp ult i32 %indvars.iv.next, %120
  br i1 %cmp255, label %if.end286.for.body257_crit_edge, label %for.end302.loopexit

if.end286.for.body257_crit_edge:                  ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body257

for.end302.loopexit:                              ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo = shl nuw i32 %indvars.iv.next, 1
  br label %for.end302

for.end302:                                       ; preds = %for.end302.loopexit, %if.end250.for.end302_crit_edge
  %conv253.lcssa = phi i32 [ 0, %if.end250.for.end302_crit_edge ], [ %phi.bo, %for.end302.loopexit ]
  %arrayidx305 = getelementptr i8, ptr %pba_num, i32 %conv253.lcssa
  %121 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx305, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end302, %if.then278, %do.body266, %if.then242, %do.body230, %if.then216, %do.body204, %if.then187, %do.body175, %if.then152.9, %if.then162.9, %if.else.9.cleanup_crit_edge, %if.then98, %do.body86, %if.then49, %do.body37, %if.then24, %do.body12, %if.then4, %do.body1
  %retval.0 = phi i32 [ 0, %for.end302 ], [ -16, %if.then4 ], [ %call.i, %if.then24 ], [ %call.i384, %if.then49 ], [ 17, %if.then98 ], [ %call.i386, %if.then187 ], [ -18, %if.then216 ], [ -17, %if.then242 ], [ %call.i388, %if.then278 ], [ -16, %do.body1 ], [ %call.i, %do.body12 ], [ %call.i384, %do.body37 ], [ 17, %do.body86 ], [ %call.i386, %do.body175 ], [ -18, %do.body204 ], [ -17, %do.body230 ], [ %call.i388, %do.body266 ], [ 0, %if.then152.9 ], [ 0, %if.then162.9 ], [ 0, %if.else.9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_ptr) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000_read_mac_addr_generic(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 21508
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %3 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %4, i32 21504
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #4, !srcloc !66
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %conv4 = trunc i32 %6 to i8
  %arrayidx = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx, align 1
  %shr.1 = lshr i32 %6, 8
  %conv4.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %6, 16
  %conv4.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %6, 24
  %conv4.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.3, ptr %arrayidx.3, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %conv13 = trunc i32 %11 to i8
  %arrayidx17 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx17, align 1
  %shr12.1 = lshr i32 %11, 8
  %conv13.1 = trunc i32 %shr12.1 to i8
  %arrayidx17.1 = getelementptr %struct.e1000_hw, ptr %hw, i32 0, i32 3, i32 2, i32 5
  %13 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13.1, ptr %arrayidx17.1, align 1
  %uglygep = getelementptr i8, ptr %hw, i32 104
  %14 = call ptr @memcpy(ptr %uglygep, ptr %arrayidx, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_validate_nvm_checksum_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %nvm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nvm_data) #4
  %0 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nvm_data, align 2, !annotation !69
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %checksum.056 = phi i32 [ 0, %entry ], [ %phi.cast, %if.end10.for.body_crit_edge ]
  %i.055 = phi i16 [ 0, %entry ], [ %inc, %if.end10.for.body_crit_edge ]
  %1 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %2(ptr noundef %hw, i16 noundef zeroext %i.055, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_validate_nvm_checksum_generic, %if.then7)) #4
          to label %cleanup [label %if.then7], !srcloc !68

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug367, ptr noundef %6, ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %7 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nvm_data, align 2
  %conv11 = zext i16 %8 to i32
  %add = add nuw nsw i32 %checksum.056, %conv11
  %inc = add nuw nsw i16 %i.055, 1
  %phi.cast = and i32 %add, 65535
  %cmp = icmp ult i16 %i.055, 63
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %phi.cast)
  %cmp15.not = icmp eq i32 %phi.cast, 47802
  br i1 %cmp15.not, label %for.end.cleanup_crit_edge, label %do.body19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_validate_nvm_checksum_generic, %if.then31)) #4
          to label %cleanup [label %if.then31], !srcloc !68

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %netdev33 = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %netdev33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug368, ptr noundef %12, ptr noundef nonnull @.str.15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %for.end.cleanup_crit_edge, %if.then7, %do.body2
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ -1, %if.then31 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i, %do.body2 ], [ -1, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @e1000e_update_nvm_checksum_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  store i16 -1, ptr %nvm_data, align 2, !annotation !69
  %read.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %i.058 = phi i16 [ 0, %entry ], [ %inc, %if.end10.for.body_crit_edge ]
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = call i32 %3(ptr noundef %hw, i16 noundef zeroext %i.058, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %do.body2

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_update_nvm_checksum_generic, %if.then7)) #4
          to label %cleanup [label %if.then7], !srcloc !68

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug369, ptr noundef %7, ptr noundef nonnull @.str.17) #4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %8 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvm_data, align 2
  %10 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %checksum, align 2
  %add = add i16 %11, %9
  store i16 %add, ptr %checksum, align 2
  %inc = add nuw nsw i16 %i.058, 1
  %cmp = icmp ult i16 %i.058, 62
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end10
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %checksum, align 2
  %sub = sub i16 -17734, %13
  store i16 %sub, ptr %checksum, align 2
  %write.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 6, i32 0, i32 7
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 4
  %call.i55 = call i32 %15(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %checksum) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool17.not = icmp eq i32 %call.i55, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %do.body20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e1000e_update_nvm_checksum_generic, %if.then32)) #4
          to label %cleanup [label %if.then32], !srcloc !68

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %netdev34 = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 64
  %18 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug370, ptr noundef %19, ptr noundef nonnull @.str.18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body20, %for.end.cleanup_crit_edge, %if.then7, %do.body2
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ %call.i55, %if.then32 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i, %do.body2 ], [ %call.i55, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_reload_nvm_generic(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  %hw_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %3 = or i32 %2, 2097152
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @__ew32(ptr noundef %hw, i32 noundef 24, i32 noundef %4) #4
  %5 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

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

declare ptr @memcpy(ptr, ptr, i32)

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
!1 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 169, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @e1000e_acquire_nvm.__UNIQUE_ID_ddebug353, !1, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 302, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug355, !7, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 313, i32 4}
!12 = !{ptr @e1000e_read_nvm_eerd.__UNIQUE_ID_ddebug356, !11, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 346, i32 3}
!15 = !{ptr @e1000e_write_nvm_spi.__UNIQUE_ID_ddebug357, !14, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 421, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug358, !17, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 427, i32 3}
!22 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug359, !21, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!23 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug360, !24, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 433, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 442, i32 3}
!27 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug361, !26, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 446, i32 4}
!30 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug362, !29, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!31 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug363, !32, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 478, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 483, i32 3}
!35 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug364, !34, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!36 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug365, !37, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 488, i32 3}
!38 = !{ptr @e1000_read_pba_string_generic.__UNIQUE_ID_ddebug366, !39, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 499, i32 4}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 555, i32 4}
!42 = !{ptr @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug367, !41, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 562, i32 3}
!45 = !{ptr @e1000e_validate_nvm_checksum_generic.__UNIQUE_ID_ddebug368, !44, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 586, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug369, !47, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 594, i32 3}
!52 = !{ptr @e1000e_update_nvm_checksum_generic.__UNIQUE_ID_ddebug370, !51, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/e1000e/nvm.c", i32 274, i32 4}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @e1000_ready_nvm_eeprom.__UNIQUE_ID_ddebug354, !54, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 1906325}
!67 = !{i64 2156915174}
!68 = !{i64 2148906527, i64 2148906532, i64 2148906545, i64 2148906589, i64 2148906623, i64 2148906644}
!69 = !{!"auto-init"}
