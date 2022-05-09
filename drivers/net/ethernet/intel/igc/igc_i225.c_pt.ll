; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_i225.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_i225.c"
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
@igc_acquire_swfw_sync_i225.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"igc_acquire_swfw_sync_i225\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/igc/igc_i225.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Driver can't access resource, SW_FW_SYNC timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@igc_set_eee_i225.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igc_set_eee_i225\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LPI Clock Stop Bit should not be set!\0A\00", [57 x i8] zeroinitializer }, align 32
@igc_set_ltr_i225.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igc_set_ltr_i225\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid effective Rx buffer size %d\0A\00", [59 x i8] zeroinitializer }, align 32
@igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igc_get_hw_semaphore_i225\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", [49 x i8] zeroinitializer }, align 32
@igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Driver can't access the NVM\0A\00", [35 x i8] zeroinitializer }, align 32
@igc_write_nvm_srwr.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"igc_write_nvm_srwr\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvm parameter(s) out of bounds\0A\00", [32 x i8] zeroinitializer }, align 32
@igc_write_nvm_srwr.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Shadow RAM write EEWR timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"igc_update_nvm_checksum_i225\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM read failed\0A\00", [44 x i8] zeroinitializer }, align 32
@igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM Read Error while updating checksum.\0A\00", [55 x i8] zeroinitializer }, align 32
@igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NVM Write Error while updating checksum.\0A\00", [54 x i8] zeroinitializer }, align 32
@igc_update_flash_i225.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igc_update_flash_i225\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update time out\0A\00", [41 x i8] zeroinitializer }, align 32
@igc_update_flash_i225.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igc_update_flash_i225.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update complete\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 134, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 530, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 605, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 74, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 94, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 231, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 253, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 408, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 425, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 435, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 371, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [45 x i8] c"../drivers/net/ethernet/intel/igc/igc_i225.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 382, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_acquire_swfw_sync_i225(ptr noundef %hw, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mask to i32
  %or = mul nuw i32 %conv, 65537
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %if.end6.while.body_crit_edge ]
  %call = tail call fastcc i32 @igc_get_hw_semaphore_i225(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %while.body
  %call3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %and = and i32 %call3, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end24, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
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
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.body14, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_acquire_swfw_sync_i225.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_acquire_swfw_sync_i225, %if.then19)) #4
          to label %out [label %if.then19], !srcloc !56

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_acquire_swfw_sync_i225.__UNIQUE_ID_ddebug340, ptr noundef %call20, ptr noundef nonnull @.str.3) #4
  br label %out

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or25 = or i32 %call3, %conv
  %hw_addr31 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %arrayidx = getelementptr i8, ptr %6, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #4, !srcloc !58
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %if.end24, %if.then19, %do.body14, %while.body.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end24 ], [ -13, %if.then19 ], [ -13, %do.body14 ], [ -13, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_get_hw_semaphore_i225(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %i.0114 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #4
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond = icmp eq i32 %i.0114, %conv
  br i1 %exitcond, label %if.end.if.then4_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0114, i32 %add)
  %cmp2 = icmp eq i32 %i.0114, %add
  br i1 %cmp2, label %while.end.if.then4_crit_edge, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

while.end.if.then4_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %while.end.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %dev_spec = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %dev_spec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_spec, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then4.do.body21_crit_edge, label %if.then6

if.then4.do.body21_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

if.then6:                                         ; preds = %if.then4
  %4 = ptrtoint ptr %dev_spec to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dev_spec, align 4
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.then6
  %i.1115 = phi i32 [ 0, %if.then6 ], [ %inc16, %if.end15.for.body_crit_edge ]
  %call11 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and12 = and i32 %call11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end17, label %if.end15

if.end15:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #4
  %inc16 = add nuw nsw i32 %i.1115, 1
  %exitcond117 = icmp eq i32 %i.1115, %conv
  br i1 %exitcond117, label %if.end15.do.body21_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end15.do.body21_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1115, i32 %add)
  %cmp18 = icmp eq i32 %i.1115, %add
  br i1 %cmp18, label %if.end17.do.body21_crit_edge, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end17.do.body21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body21

do.body21:                                        ; preds = %if.end17.do.body21_crit_edge, %if.end15.do.body21_crit_edge, %if.then4.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_hw_semaphore_i225, %if.then26)) #4
          to label %cleanup [label %if.then26], !srcloc !56

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug337, ptr noundef %call27, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end17.if.end32_crit_edge, %while.end.if.end32_crit_edge
  %hw_addr43 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %for.body36

for.body36:                                       ; preds = %if.end53.for.body36_crit_edge, %if.end32
  %i.3116 = phi i32 [ 0, %if.end32 ], [ %inc55, %if.end53.for.body36_crit_edge ]
  %call37 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %5 = ptrtoint ptr %hw_addr43 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr43, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %or = or i32 %call37, 2
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %6, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #4, !srcloc !58
  %call49 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and50 = and i32 %call49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %for.end56

if.end53:                                         ; preds = %for.body36
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #4
  %inc55 = add nuw nsw i32 %i.3116, 1
  %exitcond118 = icmp eq i32 %i.3116, %conv
  br i1 %exitcond118, label %if.end53.if.then59_crit_edge, label %if.end53.for.body36_crit_edge

if.end53.for.body36_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36

if.end53.if.then59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59

for.end56:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3116, i32 %add)
  %cmp57 = icmp eq i32 %i.3116, %add
  br i1 %cmp57, label %for.end56.if.then59_crit_edge, label %for.end56.cleanup_crit_edge

for.end56.cleanup_crit_edge:                      ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end56.if.then59_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59

if.then59:                                        ; preds = %for.end56.if.then59_crit_edge, %if.end53.if.then59_crit_edge
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_hw_semaphore_i225, %if.then73)) #4
          to label %cleanup [label %if.then73], !srcloc !56

if.then73:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %call74 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug339, ptr noundef %call74, ptr noundef nonnull @.str.10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.then59, %for.end56.cleanup_crit_edge, %if.then26, %do.body21
  %retval.0 = phi i32 [ -1, %if.then26 ], [ -1, %if.then73 ], [ 0, %for.end56.cleanup_crit_edge ], [ -1, %do.body21 ], [ -1, %if.then59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_put_hw_semaphore(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_release_swfw_sync_i225(ptr noundef %hw, i16 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %call = tail call fastcc i32 @igc_get_hw_semaphore_i225(ptr noundef %hw)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %conv = zext i16 %mask to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %call1, %neg
  %hw_addr3 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !58
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igc_get_flash_presence_i225(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_init_nvm_params_i225(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %nvm1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @igc_acquire_nvm_i225, ptr %nvm1, align 4
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @igc_release_nvm_i225, ptr %release, align 4
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
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
  %igc_read_nvm_srrd_i225.sink = phi ptr [ @igc_read_nvm_eerd, %if.else ], [ @igc_read_nvm_srrd_i225, %entry.if.end_crit_edge ]
  %igc_write_nvm_srwr_i225.sink = phi ptr [ null, %if.else ], [ @igc_write_nvm_srwr_i225, %entry.if.end_crit_edge ]
  %igc_validate_nvm_checksum_i225.sink = phi ptr [ null, %if.else ], [ @igc_validate_nvm_checksum_i225, %entry.if.end_crit_edge ]
  %igc_update_nvm_checksum_i225.sink = phi ptr [ null, %if.else ], [ @igc_update_nvm_checksum_i225, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %igc_read_nvm_srrd_i225.sink, ptr %2, align 4
  %4 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %igc_write_nvm_srwr_i225.sink, ptr %4, align 4
  %6 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %igc_validate_nvm_checksum_i225.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %igc_update_nvm_checksum_i225.sink, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_acquire_nvm_i225(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_acquire_swfw_sync_i225(ptr noundef %hw, i16 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_release_nvm_i225(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @igc_get_hw_semaphore_i225(ptr noundef %hw) #4
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %igc_release_swfw_sync_i225.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

igc_release_swfw_sync_i225.exit:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23388) #4
  %and.i = and i32 %call1.i, -2
  %hw_addr3.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %arrayidx.i = getelementptr i8, ptr %1, i32 23388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %2) #4, !srcloc !58
  tail call void @igc_put_hw_semaphore(ptr noundef %hw) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_read_nvm_srrd_i225(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5
  %conv1 = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp32.not = icmp eq i16 %words, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv33, 512
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
  %conv33 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.cond.for.body_crit_edge ]
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
  %sub = sub nsw i32 %conv1, %conv33
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv10 = trunc i32 %2 to i16
  %add.ptr = getelementptr i16, ptr %data, i32 %conv33
  %call12 = tail call i32 @igc_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %conv10, ptr noundef %add.ptr) #4
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
  %status.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call12, %if.end.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_write_nvm_srwr_i225(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5
  %conv1 = zext i16 %words to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %words)
  %cmp32.not = icmp eq i16 %words, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv33, 512
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
  %conv33 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.cond.for.body_crit_edge ]
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
  %sub = sub nsw i32 %conv1, %conv33
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %conv10 = trunc i32 %2 to i16
  %add.ptr = getelementptr i16, ptr %data, i32 %conv33
  %call12 = tail call fastcc i32 @igc_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %conv10, ptr noundef %add.ptr)
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
  %status.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call12, %if.end.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_validate_nvm_checksum_i225(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm, align 4
  %call = tail call i32 %1(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  store ptr @igc_read_nvm_eerd, ptr %read, align 4
  %call6 = tail call i32 @igc_validate_nvm_checksum(ptr noundef %hw) #4
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %read, align 4
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  tail call void %6(ptr noundef %hw) #4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %status.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.end ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_update_nvm_checksum_i225(ptr noundef %hw) #0 align 64 {
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
  store i16 -1, ptr %nvm_data, align 2, !annotation !62
  %call = call i32 @igc_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_nvm_checksum_i225, %if.then6)) #4
          to label %out [label %if.then6], !srcloc !56

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug350, ptr noundef %call7, ptr noundef nonnull @.str.15) #4
  br label %out

if.end10:                                         ; preds = %entry
  %nvm = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5
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

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.cond.preheader
  %i.0110 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %if.end41.for.body_crit_edge ]
  %add107109 = phi i16 [ %checksum.promoted, %for.cond.preheader ], [ %add, %if.end41.for.body_crit_edge ]
  %call16 = call i32 @igc_read_nvm_eerd(ptr noundef %hw, i16 noundef zeroext %i.0110, i16 noundef zeroext 1, ptr noundef nonnull %nvm_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end41, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add107109, ptr %checksum, align 2
  %release = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release, align 4
  call void %7(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_nvm_checksum_i225, %if.then34)) #4
          to label %out [label %if.then34], !srcloc !56

if.then34:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug351, ptr noundef %call35, ptr noundef nonnull @.str.16) #4
  br label %out

if.end41:                                         ; preds = %for.body
  %8 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvm_data, align 2
  %add = add i16 %add107109, %9
  %inc = add nuw nsw i16 %i.0110, 1
  %cmp = icmp ult i16 %i.0110, 62
  br i1 %cmp, label %if.end41.for.body_crit_edge, label %for.end

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end41
  %sub = sub i16 -17734, %add
  %10 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sub, ptr %checksum, align 2
  %call47 = call fastcc i32 @igc_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext 63, i16 noundef zeroext 1, ptr noundef nonnull %checksum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  %release76 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %11 = ptrtoint ptr %release76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release76, align 4
  call void %12(ptr noundef %hw) #4
  br i1 %tobool48.not, label %if.end73, label %if.then49

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_nvm_checksum_i225, %if.then66)) #4
          to label %out [label %if.then66], !srcloc !56

if.then66:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  %call67 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug352, ptr noundef %call67, ptr noundef nonnull @.str.17) #4
  br label %out

if.end73:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call77 = call fastcc i32 @igc_update_flash_i225(ptr noundef %hw)
  br label %out

out:                                              ; preds = %if.end73, %if.then66, %if.then49, %if.then34, %if.then18, %if.end10.out_crit_edge, %if.then6, %do.body1
  %ret_val.0 = phi i32 [ %call, %if.then6 ], [ %call11, %if.end10.out_crit_edge ], [ %call16, %if.then34 ], [ -1, %if.then66 ], [ %call77, %if.end73 ], [ %call, %do.body1 ], [ %call16, %if.then18 ], [ -1, %if.then49 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nvm_data) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %checksum) #4
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_read_nvm_eerd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_set_eee_i225(ptr noundef %hw, i1 noundef zeroext %adv2p5G, i1 noundef zeroext %adv1G, i1 noundef zeroext %adv100M) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3640) #4
  %call3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3632) #4
  %eee_enable = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %eee_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eee_enable, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else35, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3636) #4
  %and = and i32 %call, -29
  %masksel = select i1 %adv100M, i32 4, i32 0
  %masksel83 = select i1 %adv1G, i32 8, i32 0
  %masksel84 = select i1 %adv2p5G, i32 16, i32 0
  %ipcnfg.0 = or i32 %masksel83, %masksel84
  %ipcnfg.1 = or i32 %ipcnfg.0, %masksel
  %ipcnfg.2 = or i32 %ipcnfg.1, %and
  %or19 = or i32 %call3, 458752
  %and20 = and i32 %call4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then.do.body39_crit_edge, label %do.body23

if.then.do.body39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

do.body23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_set_eee_i225.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_set_eee_i225, %if.then29)) #4
          to label %do.body39 [label %if.then29], !srcloc !56

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_set_eee_i225.__UNIQUE_ID_ddebug353, ptr noundef %call30, ptr noundef nonnull @.str.5) #4
  br label %do.body39

if.else35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and36 = and i32 %call, -29
  %and37 = and i32 %call3, -458753
  br label %do.body39

do.body39:                                        ; preds = %if.else35, %if.then29, %do.body23, %if.then.do.body39_crit_edge
  %eeer.0 = phi i32 [ %and37, %if.else35 ], [ %or19, %if.then29 ], [ %or19, %if.then.do.body39_crit_edge ], [ %or19, %do.body23 ]
  %ipcnfg.3 = phi i32 [ %and36, %if.else35 ], [ %ipcnfg.2, %if.then29 ], [ %ipcnfg.2, %if.then.do.body39_crit_edge ], [ %ipcnfg.2, %do.body23 ]
  %hw_addr44 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %ipcnfg.3)
  %arrayidx = getelementptr i8, ptr %3, i32 3640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #4, !srcloc !58
  %5 = ptrtoint ptr %hw_addr44 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %eeer.0)
  %arrayidx60 = getelementptr i8, ptr %6, i32 3632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx60, i32 %7) #4, !srcloc !58
  %call63 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3640) #4
  %call64 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3632) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_set_ltr_i225(ptr noundef %hw, i1 noundef zeroext %link) local_unnamed_addr #0 align 64 {
entry:
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %speed, align 2, !annotation !62
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #4
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %duplex, align 2, !annotation !62
  br i1 %link, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %get_speed_and_duplex = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %get_speed_and_duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_speed_and_duplex, align 4
  %call = call i32 %3(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #4
  %eee_enable = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %eee_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eee_enable, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then.if.end21_crit_edge, label %land.lhs.true

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.not = icmp eq i16 %7, 10
  br i1 %cmp.not, label %land.lhs.true.if.end21_crit_edge, label %if.then3

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 416) #4
  %or = or i32 %call4, 32
  %hw_addr6 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr6, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  call void @arm_heavy_mb() #4
  %10 = call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %9, i32 416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %10) #4, !srcloc !58
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %12)
  %cmp13 = icmp eq i16 %12, 100
  %call16 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 3636) #4
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %and = lshr i32 %call16, 8
  %shr = and i32 %and, 255
  %mul = mul nuw nsw i32 %shr, 500
  br label %if.end21

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %and18 = and i32 %call16, 255
  %mul19 = mul nuw nsw i32 %and18, 500
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15, %land.lhs.true.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %tw_system.0 = phi i32 [ %mul, %if.then15 ], [ %mul19, %if.else ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ 0, %if.then.if.end21_crit_edge ]
  %call22 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 9220) #4
  %and23 = and i32 %call22, 63
  %call24 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 9480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %tobool26.not = icmp sgt i32 %call24, -1
  br i1 %tobool26.not, label %if.end21.if.end54_crit_edge, label %if.end35

if.end21.if.end54_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end35:                                         ; preds = %if.end21
  %call28 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 9480) #4
  %and29 = lshr i32 %call28, 16
  %shr30 = and i32 %and29, 255
  %sub = sub nsw i32 %and23, %shr30
  %size.0 = shl nsw i32 %sub, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %do.body40, label %if.end35.if.end54_crit_edge

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

do.body40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_set_ltr_i225.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_set_ltr_i225, %if.then47)) #4
          to label %cleanup [label %if.then47], !srcloc !56

if.then47:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_set_ltr_i225.__UNIQUE_ID_ddebug357, ptr noundef %call48, ptr noundef nonnull @.str.7, i32 noundef %size.0) #4
  br label %cleanup

if.end54:                                         ; preds = %if.end35.if.end54_crit_edge, %if.end21.if.end54_crit_edge
  %size.0.in168 = phi i32 [ %sub, %if.end35.if.end54_crit_edge ], [ %and23, %if.end21.if.end54_crit_edge ]
  %mul55 = mul nuw nsw i32 %size.0.in168, 8192000
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %speed, align 2
  %conv56 = zext i16 %14 to i32
  %div170 = udiv i32 %mul55, %conv56
  %add = add nuw nsw i32 %div170, %tw_system.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %div170)
  %cmp58 = icmp ult i32 %div170, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add)
  %cmp61 = icmp ult i32 %add, 1048576
  %15 = select i1 %cmp58, i32 10, i32 15
  %div67163 = lshr i32 %div170, %15
  %sub68 = add nsw i32 %div67163, -1
  %16 = select i1 %cmp61, i32 10, i32 15
  %div72164 = lshr i32 %add, %16
  %sub73 = add nsw i32 %div72164, -1
  %call74 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23472) #4
  %and75 = and i32 %call74, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %sub68, i32 %and75)
  %cmp76.not = icmp eq i32 %sub68, %and75
  br i1 %cmp76.not, label %if.end54.if.end94_crit_edge, label %if.then78

if.end54.if.end94_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

if.then78:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %or79 = select i1 %cmp58, i32 34816, i32 35840
  %or80 = or i32 %or79, %sub68
  %hw_addr87 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %hw_addr87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr87, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  call void @arm_heavy_mb() #4
  %19 = call i32 @llvm.bswap.i32(i32 %or80)
  %arrayidx91 = getelementptr i8, ptr %18, i32 23472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91, i32 %19) #4, !srcloc !58
  br label %if.end94

if.end94:                                         ; preds = %if.then78, %if.end54.if.end94_crit_edge
  %call95 = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23476) #4
  %and96 = and i32 %call95, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %sub73, i32 %and96)
  %cmp97.not = icmp eq i32 %sub73, %and96
  br i1 %cmp97.not, label %if.end94.cleanup_crit_edge, label %if.then99

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  %or100 = select i1 %cmp61, i32 34816, i32 35840
  %or102 = or i32 %or100, %sub73
  %hw_addr109 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr109 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr109, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  call void @arm_heavy_mb() #4
  %22 = call i32 @llvm.bswap.i32(i32 %or102)
  %arrayidx113 = getelementptr i8, ptr %21, i32 23476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx113, i32 %22) #4, !srcloc !58
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %if.end94.cleanup_crit_edge, %if.then47, %do.body40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %if.then47 ], [ 0, %if.end94.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %entry.cleanup_crit_edge ], [ -3, %do.body40 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_write_nvm_srwr(ptr noundef %hw, i16 noundef zeroext %offset, i16 noundef zeroext %words, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %word_size = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 2
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
  %hw_addr34 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %for.body

do.body14:                                        ; preds = %lor.lhs.false.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_write_nvm_srwr.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_write_nvm_srwr, %if.then17)) #4
          to label %cleanup [label %if.then17], !srcloc !56

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_write_nvm_srwr.__UNIQUE_ID_ddebug343, ptr noundef %call18, ptr noundef nonnull @.str.12) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc72.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc73, %for.inc72.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0103, %conv
  %shl = shl i32 %add, 2
  %arrayidx = getelementptr i16, ptr %data, i32 %i.0103
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv26 = zext i16 %3 to i32
  %shl27 = shl nuw i32 %conv26, 16
  %or = or i32 %shl, %shl27
  %or28 = or i32 %or, 1
  %4 = ptrtoint ptr %hw_addr34 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %arrayidx38 = getelementptr i8, ptr %5, i32 73752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx38, i32 %6) #4, !srcloc !58
  br label %for.body44

for.body44:                                       ; preds = %if.end48.for.body44_crit_edge, %for.body
  %k.0101 = phi i32 [ 0, %for.body ], [ %inc, %if.end48.for.body44_crit_edge ]
  %call45 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 73752) #4
  %and = and i32 %call45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end48, label %for.inc72

if.end48:                                         ; preds = %for.body44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #4
  %inc = add nuw nsw i32 %k.0101, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %do.body52.critedge, label %if.end48.for.body44_crit_edge

if.end48.for.body44_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body44

do.body52.critedge:                               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_write_nvm_srwr.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_write_nvm_srwr, %if.then64)) #4
          to label %cleanup [label %if.then64], !srcloc !56

if.then64:                                        ; preds = %do.body52.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_write_nvm_srwr.__UNIQUE_ID_ddebug345, ptr noundef %call65, ptr noundef nonnull @.str.13) #4
  br label %cleanup

for.inc72:                                        ; preds = %for.body44
  %inc73 = add nuw nsw i32 %i.0103, 1
  %exitcond104.not = icmp eq i32 %inc73, %conv4
  br i1 %exitcond104.not, label %for.inc72.cleanup_crit_edge, label %for.inc72.for.body_crit_edge

for.inc72.for.body_crit_edge:                     ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc72.cleanup_crit_edge:                      ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc72.cleanup_crit_edge, %if.then64, %do.body52.critedge, %if.then17, %do.body14
  %retval.0 = phi i32 [ -1, %if.then17 ], [ -1, %if.then64 ], [ -1, %do.body14 ], [ -1, %do.body52.critedge ], [ 0, %for.inc72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_validate_nvm_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_update_flash_i225(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_flash_i225, %if.then5)) #4
          to label %out [label %if.then5], !srcloc !56

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_flash_i225.__UNIQUE_ID_ddebug346, ptr noundef %call6, ptr noundef nonnull @.str.19) #4
  br label %out

if.end9:                                          ; preds = %for.body.i
  %call10 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %or = or i32 %call10, 8388608
  %hw_addr16 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_addr16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw_addr16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %3) #4, !srcloc !58
  br label %for.body.i84

for.body.i84:                                     ; preds = %if.end.i87.for.body.i84_crit_edge, %if.end9
  %i.02.i80 = phi i32 [ 0, %if.end9 ], [ %inc.i85, %if.end.i87.for.body.i84_crit_edge ]
  %call.i81 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.i82 = and i32 %call.i81, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %if.end.i87, label %do.body46

if.end.i87:                                       ; preds = %for.body.i84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #4
  %inc.i85 = add nuw nsw i32 %i.02.i80, 1
  %exitcond.not.i86 = icmp eq i32 %inc.i85, 20000
  br i1 %exitcond.not.i86, label %do.body26, label %if.end.i87.for.body.i84_crit_edge

if.end.i87.for.body.i84_crit_edge:                ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i84

do.body26:                                        ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_flash_i225, %if.then38)) #4
          to label %out [label %if.then38], !srcloc !56

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_flash_i225.__UNIQUE_ID_ddebug348, ptr noundef %call39, ptr noundef nonnull @.str.19) #4
  br label %out

do.body46:                                        ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_update_flash_i225, %if.then58)) #4
          to label %out [label %if.then58], !srcloc !56

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_update_flash_i225.__UNIQUE_ID_ddebug349, ptr noundef %call59, ptr noundef nonnull @.str.20) #4
  br label %out

out:                                              ; preds = %if.then58, %do.body46, %if.then38, %do.body26, %if.then5, %do.body1
  %ret_val.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then38 ], [ 0, %if.then58 ], [ -1, %do.body1 ], [ -1, %do.body26 ], [ 0, %do.body46 ]
  ret i32 %ret_val.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igc_acquire_swfw_sync_i225.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 530, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igc_set_eee_i225.__UNIQUE_ID_ddebug353, !7, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 605, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @igc_set_ltr_i225.__UNIQUE_ID_ddebug357, !11, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 74, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug337, !15, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 94, i32 3}
!20 = !{ptr @igc_get_hw_semaphore_i225.__UNIQUE_ID_ddebug339, !19, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 231, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @igc_write_nvm_srwr.__UNIQUE_ID_ddebug343, !22, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 253, i32 4}
!27 = !{ptr @igc_write_nvm_srwr.__UNIQUE_ID_ddebug345, !26, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 408, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug350, !29, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 425, i32 4}
!34 = !{ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug351, !33, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 435, i32 3}
!37 = !{ptr @igc_update_nvm_checksum_i225.__UNIQUE_ID_ddebug352, !36, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 371, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug346, !39, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!42 = !{ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug348, !43, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 380, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igc/igc_i225.c", i32 382, i32 3}
!46 = !{ptr @igc_update_flash_i225.__UNIQUE_ID_ddebug349, !45, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148770993, i64 2148770998, i64 2148771011, i64 2148771055, i64 2148771089, i64 2148771110}
!57 = !{i64 2155976466}
!58 = !{i64 6053256}
!59 = !{i8 0, i8 2}
!60 = !{i64 2155966613}
!61 = !{i64 2155979921}
!62 = !{!"auto-init"}
!63 = !{i64 2156017699}
!64 = !{i64 2156021095}
!65 = !{i64 2156024603}
!66 = !{i64 2156030824}
!67 = !{i64 2156034273}
!68 = !{i64 2155985797}
!69 = !{i64 2155999294}
