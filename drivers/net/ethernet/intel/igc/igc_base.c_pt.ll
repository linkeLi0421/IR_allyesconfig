; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_base.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_bus_info = type { i16, i16 }
%union.anon = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }

@igc_rx_fifo_flush_base.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igc_rx_fifo_flush_base\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/igc/igc_base.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Queue disable timed out after 10ms\0A\00", [60 x i8] zeroinitializer }, align 32
@igc_mac_ops_base = internal global { %struct.igc_mac_operations, [60 x i8] } { %struct.igc_mac_operations { ptr @igc_check_for_copper_link, ptr null, ptr @igc_init_hw_base, ptr null, ptr @igc_rar_set, ptr @igc_read_mac_addr, ptr @igc_get_speed_and_duplex_copper, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@igc_phy_ops_base = internal constant { %struct.igc_phy_operations, [32 x i8] } { %struct.igc_phy_operations { ptr @igc_acquire_phy_base, ptr null, ptr null, ptr null, ptr @igc_read_phy_reg_gpy, ptr @igc_release_phy_base, ptr @igc_phy_hw_reset, ptr @igc_write_phy_reg_gpy }, [32 x i8] zeroinitializer }, align 32
@igc_base_info = dso_local constant { %struct.igc_info, [16 x i8] } { %struct.igc_info { ptr @igc_get_invariants_base, ptr @igc_mac_ops_base, ptr @igc_phy_ops_base, ptr null }, [16 x i8] zeroinitializer }, align 32
@igc_reset_hw_base.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igc_reset_hw_base\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI-E Master disable polling has failed\0A\00", [55 x i8] zeroinitializer }, align 32
@igc_reset_hw_base.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Masking off all interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@igc_reset_hw_base.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing a global reset to MAC\0A\00", [33 x i8] zeroinitializer }, align 32
@igc_reset_hw_base.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Auto Read Done did not complete\0A\00", [63 x i8] zeroinitializer }, align 32
@igc_init_phy_params_base.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igc_init_phy_params_base\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error resetting the PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@igc_init_hw_base.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igc_init_hw_base\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the MTA\0A\00", [47 x i8] zeroinitializer }, align 32
@igc_init_hw_base.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Zeroing the UTA\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 16, i64 3487, i64 4699, i64 4700, i64 4701, i64 4702, i64 4703, i64 5618, i64 5619, i64 5623, i64 5624, i64 5629, i64 12544, i64 12545, i64 12546, i64 21762, i64 21763]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 364, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"igc_mac_ops_base\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 401, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"igc_phy_ops_base\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 409, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"igc_base_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 417, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 29, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 31, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 42, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 51, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 175, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 289, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [45 x i8] c"../drivers/net/ethernet/intel/igc/igc_base.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 294, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @igc_mac_ops_base, ptr @igc_phy_ops_base, ptr @igc_base_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_mac_ops_base to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_phy_ops_base to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_base_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_power_down_phy_copper_base(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @igc_enable_mng_pass_thru(ptr noundef %hw) #3
  br i1 %call, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @igc_check_reset_block(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @igc_power_down_phy_copper(ptr noundef %hw) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igc_enable_mng_pass_thru(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_check_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_power_down_phy_copper(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_rx_fifo_flush_base(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 20488) #3
  %or = or i32 %call, 65536
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #3, !srcloc !46
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 22560) #3
  %and = and i32 %call8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call9 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49192) #3
  %3 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %and22 = and i32 %call9, -33554433
  %5 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %arrayidx25 = getelementptr i8, ptr %4, i32 49192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25, i32 %5) #3, !srcloc !46
  %call9.1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49256) #3
  %6 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %and22.1 = and i32 %call9.1, -33554433
  %8 = tail call i32 @llvm.bswap.i32(i32 %and22.1)
  %arrayidx25.1 = getelementptr i8, ptr %7, i32 49256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25.1, i32 %8) #3, !srcloc !46
  %call9.2 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49320) #3
  %9 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %and22.2 = and i32 %call9.2, -33554433
  %11 = tail call i32 @llvm.bswap.i32(i32 %and22.2)
  %arrayidx25.2 = getelementptr i8, ptr %10, i32 49320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25.2, i32 %11) #3, !srcloc !46
  %call9.3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49384) #3
  %12 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %and22.3 = and i32 %call9.3, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %and22.3)
  %arrayidx25.3 = getelementptr i8, ptr %13, i32 49384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25.3, i32 %14) #3, !srcloc !46
  br label %for.body30

for.body30:                                       ; preds = %for.inc45.for.body30_crit_edge, %for.body.preheader
  %ms_wait.0242 = phi i32 [ %inc46, %for.inc45.for.body30_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %call36 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49192) #3
  %call36.1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49256) #3
  %or37.1 = or i32 %call36.1, %call36
  %call36.2 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49320) #3
  %or37.2 = or i32 %call36.2, %or37.1
  %call36.3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 49384) #3
  %or37.3 = or i32 %call36.3, %or37.2
  %and41 = and i32 %or37.3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %for.end47, label %for.inc45

for.inc45:                                        ; preds = %for.body30
  %inc46 = add nuw nsw i32 %ms_wait.0242, 1
  %exitcond.not = icmp eq i32 %inc46, 10
  br i1 %exitcond.not, label %for.inc45.do.body51_crit_edge, label %for.inc45.for.body30_crit_edge

for.inc45.for.body30_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body30

for.inc45.do.body51_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body51

for.end47:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %ms_wait.0242)
  %cmp48 = icmp eq i32 %ms_wait.0242, 10
  br i1 %cmp48, label %for.end47.do.body51_crit_edge, label %for.end47.do.body65_crit_edge

for.end47.do.body65_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body65

for.end47.do.body51_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body51

do.body51:                                        ; preds = %for.end47.do.body51_crit_edge, %for.inc45.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_rx_fifo_flush_base.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_rx_fifo_flush_base, %if.then57)) #3
          to label %do.body65 [label %if.then57], !srcloc !48

if.then57:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #5
  %call58 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_rx_fifo_flush_base.__UNIQUE_ID_ddebug358, ptr noundef %call58, ptr noundef nonnull @.str.3) #3
  br label %do.body65

do.body65:                                        ; preds = %if.then57, %do.body51, %for.end47.do.body65_crit_edge
  %15 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %and75 = and i32 %or, -262145
  %17 = tail call i32 @llvm.bswap.i32(i32 %and75)
  %arrayidx76 = getelementptr i8, ptr %16, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx76, i32 %17) #3, !srcloc !46
  %call79 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 20484) #3
  %18 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %arrayidx90 = getelementptr i8, ptr %19, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx90, i32 0) #3, !srcloc !46
  %call93 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 256) #3
  %and94 = and i32 %call93, -39
  %or95 = or i32 %and94, 32
  %20 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %or95)
  %arrayidx106 = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx106, i32 %22) #3, !srcloc !46
  %23 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %or119 = or i32 %and94, 34
  %25 = tail call i32 @llvm.bswap.i32(i32 %or119)
  %arrayidx120 = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx120, i32 %25) #3, !srcloc !46
  %call123 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #3
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #3
  %26 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %call9)
  %arrayidx140 = getelementptr i8, ptr %27, i32 49192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx140, i32 %28) #3, !srcloc !46
  %29 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %call9.1)
  %arrayidx140.1 = getelementptr i8, ptr %30, i32 49256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx140.1, i32 %31) #3, !srcloc !46
  %32 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %34 = tail call i32 @llvm.bswap.i32(i32 %call9.2)
  %arrayidx140.2 = getelementptr i8, ptr %33, i32 49320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx140.2, i32 %34) #3, !srcloc !46
  %35 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %37 = tail call i32 @llvm.bswap.i32(i32 %call9.3)
  %arrayidx140.3 = getelementptr i8, ptr %36, i32 49384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx140.3, i32 %37) #3, !srcloc !46
  %38 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %40 = tail call i32 @llvm.bswap.i32(i32 %call93)
  %arrayidx156 = getelementptr i8, ptr %39, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx156, i32 %40) #3, !srcloc !46
  %call159 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #3
  %41 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  %43 = tail call i32 @llvm.bswap.i32(i32 %call79)
  %arrayidx170 = getelementptr i8, ptr %42, i32 20484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx170, i32 %43) #3, !srcloc !46
  %44 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %arrayidx183 = getelementptr i8, ptr %45, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx183, i32 %2) #3, !srcloc !46
  %call186 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16556) #3
  %call187 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16544) #3
  %call188 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16400) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_get_invariants_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 5618, label %entry.igc_init_mac_params_base.exit_crit_edge
    i16 5619, label %entry.igc_init_mac_params_base.exit_crit_edge23
    i16 5624, label %entry.igc_init_mac_params_base.exit_crit_edge24
    i16 5623, label %entry.igc_init_mac_params_base.exit_crit_edge25
    i16 12544, label %entry.igc_init_mac_params_base.exit_crit_edge26
    i16 12545, label %entry.igc_init_mac_params_base.exit_crit_edge27
    i16 12546, label %entry.igc_init_mac_params_base.exit_crit_edge28
    i16 21762, label %entry.igc_init_mac_params_base.exit_crit_edge29
    i16 21763, label %entry.igc_init_mac_params_base.exit_crit_edge30
    i16 3487, label %entry.igc_init_mac_params_base.exit_crit_edge31
    i16 4699, label %entry.igc_init_mac_params_base.exit_crit_edge32
    i16 4700, label %entry.igc_init_mac_params_base.exit_crit_edge33
    i16 4701, label %entry.igc_init_mac_params_base.exit_crit_edge34
    i16 4702, label %entry.igc_init_mac_params_base.exit_crit_edge35
    i16 4703, label %entry.igc_init_mac_params_base.exit_crit_edge36
    i16 5629, label %entry.igc_init_mac_params_base.exit_crit_edge37
  ]

entry.igc_init_mac_params_base.exit_crit_edge37:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge36:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge35:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge34:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge33:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge32:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge31:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge30:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge29:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge28:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge27:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge26:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge25:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge24:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge23:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.igc_init_mac_params_base.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_mac_params_base.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

igc_init_mac_params_base.exit:                    ; preds = %entry.igc_init_mac_params_base.exit_crit_edge, %entry.igc_init_mac_params_base.exit_crit_edge23, %entry.igc_init_mac_params_base.exit_crit_edge24, %entry.igc_init_mac_params_base.exit_crit_edge25, %entry.igc_init_mac_params_base.exit_crit_edge26, %entry.igc_init_mac_params_base.exit_crit_edge27, %entry.igc_init_mac_params_base.exit_crit_edge28, %entry.igc_init_mac_params_base.exit_crit_edge29, %entry.igc_init_mac_params_base.exit_crit_edge30, %entry.igc_init_mac_params_base.exit_crit_edge31, %entry.igc_init_mac_params_base.exit_crit_edge32, %entry.igc_init_mac_params_base.exit_crit_edge33, %entry.igc_init_mac_params_base.exit_crit_edge34, %entry.igc_init_mac_params_base.exit_crit_edge35, %entry.igc_init_mac_params_base.exit_crit_edge36, %entry.igc_init_mac_params_base.exit_crit_edge37
  %type = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %media_type = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %media_type, align 4
  %mta_reg_count.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 128, ptr %mta_reg_count.i, align 4
  %rar_entry_count.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %rar_entry_count.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %rar_entry_count.i, align 4
  %reset_hw.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %reset_hw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @igc_reset_hw_base, ptr %reset_hw.i, align 4
  %acquire_swfw_sync.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 7
  %8 = ptrtoint ptr %acquire_swfw_sync.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @igc_acquire_swfw_sync_i225, ptr %acquire_swfw_sync.i, align 4
  %release_swfw_sync.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 8
  %9 = ptrtoint ptr %release_swfw_sync.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @igc_release_swfw_sync_i225, ptr %release_swfw_sync.i, align 4
  %dev_spec1.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 8
  %10 = ptrtoint ptr %dev_spec1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %dev_spec1.i, align 1
  %setup_physical_interface.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %setup_physical_interface.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @igc_setup_copper_link_base, ptr %setup_physical_interface.i, align 4
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #3
  %12 = trunc i32 %call.i to i16
  %13 = lshr i16 %12, 11
  %14 = and i16 %13, 15
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 9) #3
  %16 = add nuw nsw i16 %15, 6
  %type.i22 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %type.i22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type.i22, align 4
  %conv6.i = zext i16 %16 to i32
  %shl.i = shl nuw nsw i32 1, %conv6.i
  %conv7.i = trunc i32 %shl.i to i16
  %word_size.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %word_size.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv7.i, ptr %word_size.i, align 4
  %opcode_bits.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %opcode_bits.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8, ptr %opcode_bits.i, align 2
  %delay_usec.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %delay_usec.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %delay_usec.i, align 2
  %and8.i = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  %conv9.i = select i1 %tobool.not.i, i16 8, i16 32
  %page_size.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 6
  %21 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv9.i, ptr %page_size.i, align 4
  %conv13.i = select i1 %tobool.not.i, i16 8, i16 16
  %address_bits.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %address_bits.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv13.i, ptr %address_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %conv7.i)
  %cmp16.i = icmp eq i16 %conv7.i, -32768
  br i1 %cmp16.i, label %if.then18.i, label %igc_init_mac_params_base.exit.igc_init_nvm_params_base.exit_crit_edge

igc_init_mac_params_base.exit.igc_init_nvm_params_base.exit_crit_edge: ; preds = %igc_init_mac_params_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %igc_init_nvm_params_base.exit

if.then18.i:                                      ; preds = %igc_init_mac_params_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 128, ptr %page_size.i, align 4
  br label %igc_init_nvm_params_base.exit

igc_init_nvm_params_base.exit:                    ; preds = %if.then18.i, %igc_init_mac_params_base.exit.igc_init_nvm_params_base.exit_crit_edge
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cond = icmp eq i32 %25, 1
  br i1 %cond, label %sw.bb5, label %igc_init_nvm_params_base.exit.sw.epilog8_crit_edge

igc_init_nvm_params_base.exit.sw.epilog8_crit_edge: ; preds = %igc_init_nvm_params_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog8

sw.bb5:                                           ; preds = %igc_init_nvm_params_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @igc_init_nvm_params_i225(ptr noundef %hw) #3
  br label %sw.epilog8

sw.epilog8:                                       ; preds = %sw.bb5, %igc_init_nvm_params_base.exit.sw.epilog8_crit_edge
  %call9 = tail call fastcc i32 @igc_init_phy_params_base(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.epilog8 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_init_nvm_params_i225(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_init_phy_params_base(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_mask = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %autoneg_mask to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 175, ptr %autoneg_mask, align 2
  %reset_delay_us = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %reset_delay_us, align 4
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #3
  %2 = trunc i32 %call to i16
  %3 = lshr i16 %2, 2
  %conv = and i16 %3, 3
  %bus = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %bus, align 4
  %reset = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 6
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %call3 = tail call i32 %6(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end13, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_init_phy_params_base.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_init_phy_params_base, %if.then9)) #3
          to label %cleanup [label %if.then9], !srcloc !48

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_init_phy_params_base.__UNIQUE_ID_ddebug351, ptr noundef %call10, ptr noundef nonnull @.str.10) #3
  br label %cleanup

if.end13:                                         ; preds = %entry
  %call14 = tail call i32 @igc_get_phy_id(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 @igc_check_for_copper_link(ptr noundef %hw) #3
  %type = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.then9, %do.body4
  %retval.0 = phi i32 [ %call14, %if.end13.cleanup_crit_edge ], [ %call3, %if.then9 ], [ 0, %if.end17 ], [ %call3, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_reset_hw_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_disable_pcie_master(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body1

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_reset_hw_base, %if.then6)) #3
          to label %do.body12 [label %if.then6], !srcloc !48

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_reset_hw_base.__UNIQUE_ID_ddebug341, ptr noundef %call7, ptr noundef nonnull @.str.5) #3
  br label %do.body12

do.body12:                                        ; preds = %if.then6, %do.body1, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_reset_hw_base, %if.then24)) #3
          to label %do.body31 [label %if.then24], !srcloc !48

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_reset_hw_base.__UNIQUE_ID_ddebug342, ptr noundef %call25, ptr noundef nonnull @.str.6) #3
  br label %do.body31

do.body31:                                        ; preds = %if.then24, %do.body12
  %hw_addr36 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr36 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %arrayidx = getelementptr i8, ptr %1, i32 5388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -1) #3, !srcloc !46
  %2 = ptrtoint ptr %hw_addr36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %arrayidx52 = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52, i32 0) #3, !srcloc !46
  %4 = ptrtoint ptr %hw_addr36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %arrayidx65 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx65, i32 134217728) #3, !srcloc !46
  %call68 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #3
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #3
  %call69 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 0) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_reset_hw_base, %if.then83)) #3
          to label %do.body90 [label %if.then83], !srcloc !48

if.then83:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #5
  %call84 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_reset_hw_base.__UNIQUE_ID_ddebug346, ptr noundef %call84, ptr noundef nonnull @.str.7) #3
  br label %do.body90

do.body90:                                        ; preds = %if.then83, %do.body31
  %6 = ptrtoint ptr %hw_addr36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %or = or i32 %call69, 67108864
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #3, !srcloc !46
  %call103 = tail call i32 @igc_get_auto_rd_done(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.body90.do.body127_crit_edge, label %do.body107

do.body90.do.body127_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body127

do.body107:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_reset_hw_base, %if.then119)) #3
          to label %do.body127 [label %if.then119], !srcloc !48

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #5
  %call120 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_reset_hw_base.__UNIQUE_ID_ddebug348, ptr noundef %call120, ptr noundef nonnull @.str.8) #3
  br label %do.body127

do.body127:                                       ; preds = %if.then119, %do.body107, %do.body90.do.body127_crit_edge
  %9 = ptrtoint ptr %hw_addr36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  %arrayidx137 = getelementptr i8, ptr %10, i32 5388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx137, i32 -1) #3, !srcloc !46
  %call140 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 5376) #3
  ret i32 %call103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_acquire_swfw_sync_i225(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_release_swfw_sync_i225(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_setup_copper_link_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 0) #3
  %or = and i32 %call, -6209
  %and = or i32 %or, 64
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #3, !srcloc !46
  %call8 = tail call i32 @igc_setup_copper_link(ptr noundef %hw) #3
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_disable_pcie_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_get_auto_rd_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_setup_copper_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_get_phy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_check_for_copper_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_init_hw_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rar_entry_count = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rar_entry_count, align 4
  tail call void @igc_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %1) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_init_hw_base.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_init_hw_base, %if.then)) #3
          to label %do.end7 [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_init_hw_base.__UNIQUE_ID_ddebug352, ptr noundef %call5, ptr noundef nonnull @.str.12) #3
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %mta_reg_count = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mta_reg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp87.not = icmp eq i16 %3, 0
  br i1 %cmp87.not, label %do.end7.do.body23_crit_edge, label %do.body10.lr.ph

do.end7.do.body23_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body23

do.body10.lr.ph:                                  ; preds = %do.end7
  %hw_addr15 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.body10.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body10.lr.ph ], [ %indvars.iv.next, %do.body10.do.body10_crit_edge ]
  %4 = ptrtoint ptr %hw_addr15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw_addr15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %shl = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %shl, 20992
  %arrayidx = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #3, !srcloc !46
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %6 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mta_reg_count, align 4
  %8 = zext i16 %7 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %8
  br i1 %cmp, label %do.body10.do.body10_crit_edge, label %do.body10.do.body23_crit_edge

do.body10.do.body23_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body23

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body10

do.body23:                                        ; preds = %do.body10.do.body23_crit_edge, %do.end7.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_init_hw_base.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_init_hw_base, %if.then35)) #3
          to label %do.end41 [label %if.then35], !srcloc !48

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_init_hw_base.__UNIQUE_ID_ddebug354, ptr noundef %call36, ptr noundef nonnull @.str.13) #3
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23
  %uta_reg_count = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %uta_reg_count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uta_reg_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp4589.not = icmp eq i16 %10, 0
  br i1 %cmp4589.not, label %do.end41.for.end66_crit_edge, label %do.body48.lr.ph

do.end41.for.end66_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

do.body48.lr.ph:                                  ; preds = %do.end41
  %hw_addr54 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %do.body48

do.body48:                                        ; preds = %do.body48.do.body48_crit_edge, %do.body48.lr.ph
  %indvars.iv91 = phi i32 [ 0, %do.body48.lr.ph ], [ %indvars.iv.next92, %do.body48.do.body48_crit_edge ]
  %11 = ptrtoint ptr %hw_addr54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw_addr54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  %shl59 = shl nuw nsw i32 %indvars.iv91, 2
  %add60 = add nuw nsw i32 %shl59, 40960
  %arrayidx61 = getelementptr i8, ptr %12, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx61, i32 0) #3, !srcloc !46
  %indvars.iv.next92 = add nuw nsw i32 %indvars.iv91, 1
  %13 = ptrtoint ptr %uta_reg_count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %uta_reg_count, align 2
  %15 = zext i16 %14 to i32
  %cmp45 = icmp ult i32 %indvars.iv.next92, %15
  br i1 %cmp45, label %do.body48.do.body48_crit_edge, label %do.body48.for.end66_crit_edge

do.body48.for.end66_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end66

do.body48.do.body48_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body48

for.end66:                                        ; preds = %do.body48.for.end66_crit_edge, %do.end41.for.end66_crit_edge
  %call67 = tail call i32 @igc_setup_link(ptr noundef %hw) #3
  tail call void @igc_clear_hw_cntrs_base(ptr noundef %hw) #3
  ret i32 %call67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_rar_set(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_read_mac_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_get_speed_and_duplex_copper(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_init_rx_addrs(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_setup_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @igc_clear_hw_cntrs_base(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_acquire_phy_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %acquire_swfw_sync = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 7
  %0 = ptrtoint ptr %acquire_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acquire_swfw_sync, align 4
  %call = tail call i32 %1(ptr noundef %hw, i16 noundef zeroext 2) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_read_phy_reg_gpy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_release_phy_base(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %release_swfw_sync = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 8
  %0 = ptrtoint ptr %release_swfw_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_swfw_sync, align 4
  tail call void %1(ptr noundef %hw, i16 noundef zeroext 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_phy_hw_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_write_phy_reg_gpy(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 364, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igc_rx_fifo_flush_base.__UNIQUE_ID_ddebug358, !1, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!6 = !{ptr @igc_base_info, !7, !"igc_base_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 417, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 29, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug341, !9, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 31, i32 2}
!14 = !{ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug342, !13, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 42, i32 2}
!17 = !{ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug346, !16, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 51, i32 3}
!20 = !{ptr @igc_reset_hw_base.__UNIQUE_ID_ddebug348, !19, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 175, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @igc_init_phy_params_base.__UNIQUE_ID_ddebug351, !22, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!25 = !{ptr @igc_mac_ops_base, !26, !"igc_mac_ops_base", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 401, i32 34}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 289, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @igc_init_hw_base.__UNIQUE_ID_ddebug352, !28, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 294, i32 2}
!33 = !{ptr @igc_init_hw_base.__UNIQUE_ID_ddebug354, !32, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!34 = !{ptr @igc_phy_ops_base, !35, !"igc_phy_ops_base", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/igc/igc_base.c", i32 409, i32 40}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2156628227}
!46 = !{i64 6047428}
!47 = !{i64 2156631855}
!48 = !{i64 2148765165, i64 2148765170, i64 2148765183, i64 2148765227, i64 2148765261, i64 2148765282}
!49 = !{i64 2156637937}
!50 = !{i64 2156641409}
!51 = !{i64 2156644873}
!52 = !{i64 2156648329}
!53 = !{i64 2156651906}
!54 = !{i64 2156655334}
!55 = !{i64 2156658791}
!56 = !{i64 2156662190}
!57 = !{i64 2156587960}
!58 = !{i64 2156591366}
!59 = !{i64 2156594774}
!60 = !{i64 2156600754}
!61 = !{i64 2156606651}
!62 = !{i64 2156610396}
!63 = !{i64 2156618946}
!64 = !{i64 2156624762}
