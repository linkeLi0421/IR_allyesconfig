; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }

@aq_a2_fw_ops = external dso_local constant %struct.aq_fw_ops, align 4
@hw_atl2_utils_initfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013atlantic: Bad FW version detected: %x, but continue\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw_atl2_utils_initfw\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c\00", [33 x i8] zeroinitializer }, align 32
@hw_atl2_utils_initfw._entry_ptr = internal global ptr @hw_atl2_utils_initfw._entry, section ".printk_index", align 4
@hw_atl2_utils_initfw._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016atlantic: Detect ATL2FW %x\0A\00", [34 x i8] zeroinitializer }, align 32
@hw_atl2_utils_initfw._entry_ptr.5 = internal global ptr @hw_atl2_utils_initfw._entry.3, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_atl2_utils_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013atlantic: Boot code hanged\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hw_atl2_utils_soft_reset\00", [39 x i8] zeroinitializer }, align 32
@hw_atl2_utils_soft_reset._entry_ptr = internal global ptr @hw_atl2_utils_soft_reset._entry, section ".printk_index", align 4
@hw_atl2_utils_soft_reset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013atlantic: FW Restart timed out\00", [63 x i8] zeroinitializer }, align 32
@hw_atl2_utils_soft_reset._entry_ptr.10 = internal global ptr @hw_atl2_utils_soft_reset._entry.8, section ".printk_index", align 4
@hw_atl2_utils_soft_reset._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013atlantic: FW Restart failed\00", [34 x i8] zeroinitializer }, align 32
@hw_atl2_utils_soft_reset._entry_ptr.13 = internal global ptr @hw_atl2_utils_soft_reset._entry.11, section ".printk_index", align 4
@hw_atl2_utils_soft_reset._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013atlantic: No FW detected. Dynamic FW load not implemented\00", [36 x i8] zeroinitializer }, align 32
@hw_atl2_utils_soft_reset._entry_ptr.16 = internal global ptr @hw_atl2_utils_soft_reset._entry.14, section ".printk_index", align 4
@hw_atl2_utils_soft_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013atlantic: FW Init failed\00", [37 x i8] zeroinitializer }, align 32
@hw_atl2_utils_soft_reset._entry_ptr.19 = internal global ptr @hw_atl2_utils_soft_reset._entry.17, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 46, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 91, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 101, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 109, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 116, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [66 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 123, i32 4 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @hw_atl2_utils_initfw._entry, ptr @hw_atl2_utils_initfw._entry.3, ptr @hw_atl2_utils_initfw._entry_ptr, ptr @hw_atl2_utils_initfw._entry_ptr.5, ptr @hw_atl2_utils_soft_reset._entry, ptr @hw_atl2_utils_soft_reset._entry.11, ptr @hw_atl2_utils_soft_reset._entry.14, ptr @hw_atl2_utils_soft_reset._entry.17, ptr @hw_atl2_utils_soft_reset._entry.8, ptr @hw_atl2_utils_soft_reset._entry_ptr, ptr @hw_atl2_utils_soft_reset._entry_ptr.10, ptr @hw_atl2_utils_soft_reset._entry_ptr.13, ptr @hw_atl2_utils_soft_reset._entry_ptr.16, ptr @hw_atl2_utils_soft_reset._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_initfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_initfw._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_soft_reset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_soft_reset._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_soft_reset._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_utils_soft_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_utils_initfw(ptr noundef %self, ptr nocapture noundef %fw_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl2_utils_get_fw_version(ptr noundef %self) #3
  %fw_ver_actual = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 13
  %0 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %fw_ver_actual, align 4
  %call2 = tail call zeroext i1 @hw_atl_utils_ver_match(i32 noundef 16777216, i32 noundef %call) #3
  br i1 %call2, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_ver_actual, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #6
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %3 = ptrtoint ptr %fw_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aq_a2_fw_ops, ptr %fw_ops, align 4
  %4 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_ver_actual, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5) #6
  %6 = ptrtoint ptr %fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_ops, align 4
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %8 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %aq_fw_ops, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %call12 = tail call i32 %10(ptr noundef %self) #3
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %11 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_features, align 8
  %or = or i32 %12, 134217728
  store i32 %or, ptr %chip_features, align 8
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_utils_get_fw_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hw_atl_utils_ver_match(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_utils_soft_reset(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl2_mif_host_req_int_clr(ptr noundef %self, i32 noundef 1) #3
  tail call void @hw_atl2_mif_mcp_boot_reg_set(ptr noundef %self, i32 noundef 1) #3
  %call = tail call i64 @ktime_get() #3
  %add.i = add i64 %call, 200000000
  %call2147 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and148 = and i32 %call2147, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool.not149 = icmp eq i32 %and148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2147)
  %cmp.not150 = icmp eq i32 %call2147, -1
  %or.cond151 = or i1 %cmp.not150, %tobool.not149
  br i1 %or.cond151, label %entry.land.lhs.true4_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %cond.false.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge
  %call5 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %if.then8, label %cond.false

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %.pre = and i32 %call9, 16777216
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #3
  %call2 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and = and i32 %call2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, -1
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %cond.false.land.lhs.true4_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cond.false.land.lhs.true4_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true4

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then8, %entry.for.end_crit_edge
  %and18.pre-phi = phi i32 [ %and148, %entry.for.end_crit_edge ], [ %.pre, %if.then8 ], [ %and, %cond.false.for.end_crit_edge ]
  %rbl_status.0 = phi i32 [ %call2147, %entry.for.end_crit_edge ], [ %call9, %if.then8 ], [ %call2, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.pre-phi)
  %tobool19.not = icmp eq i32 %and18.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rbl_status.0)
  %cmp20.not = icmp eq i32 %rbl_status.0, -1
  %not..demorgan = or i1 %cmp20.not, %tobool19.not
  br i1 %not..demorgan, label %for.end.err_exit.sink.split_crit_edge, label %if.end25

for.end.err_exit.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit.sink.split

if.end25:                                         ; preds = %for.end
  %call29 = tail call i64 @ktime_get() #3
  %add.i129 = add i64 %call29, 2000000000
  %call.i152 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and.i153 = and i32 %call.i152, -1207959552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i154, label %if.end25.hw_atl2_mcp_boot_complete.exit_crit_edge, label %if.end25.if.end67_crit_edge

if.end25.if.end67_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

if.end25.hw_atl2_mcp_boot_complete.exit_crit_edge: ; preds = %if.end25
  br label %hw_atl2_mcp_boot_complete.exit

hw_atl2_mcp_boot_complete.exit:                   ; preds = %cond.false50.hw_atl2_mcp_boot_complete.exit_crit_edge, %if.end25.hw_atl2_mcp_boot_complete.exit_crit_edge
  %call1.i = tail call i32 @hw_atl2_mif_host_req_int_get(ptr noundef %self) #3
  %and2.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i.not, label %land.lhs.true37, label %hw_atl2_mcp_boot_complete.exit.if.end67_crit_edge

hw_atl2_mcp_boot_complete.exit.if.end67_crit_edge: ; preds = %hw_atl2_mcp_boot_complete.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

land.lhs.true37:                                  ; preds = %hw_atl2_mcp_boot_complete.exit
  %call38 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i129)
  %cmp3.i132 = icmp sgt i64 %call38, %add.i129
  br i1 %cmp3.i132, label %if.then41, label %cond.false50

if.then41:                                        ; preds = %land.lhs.true37
  %call.i135 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and.i136 = and i32 %call.i135, -1207959552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %for.end56, label %if.then41.if.end67_crit_edge

if.then41.if.end67_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

cond.false50:                                     ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #3
  %call.i = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and.i = and i32 %call.i, -1207959552
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false50.hw_atl2_mcp_boot_complete.exit_crit_edge, label %cond.false50.if.end67_crit_edge

cond.false50.if.end67_crit_edge:                  ; preds = %cond.false50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

cond.false50.hw_atl2_mcp_boot_complete.exit_crit_edge: ; preds = %cond.false50
  call void @__sanitizer_cov_trace_pc() #5
  br label %hw_atl2_mcp_boot_complete.exit

for.end56:                                        ; preds = %if.then41
  %call1.i138 = tail call i32 @hw_atl2_mif_host_req_int_get(ptr noundef %self) #3
  %and2.i139 = and i32 %call1.i138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i139)
  %tobool3.not.i140.not = icmp eq i32 %and2.i139, 0
  br i1 %tobool3.not.i140.not, label %for.end56.err_exit.sink.split_crit_edge, label %for.end56.if.end67_crit_edge

for.end56.if.end67_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

for.end56.err_exit.sink.split_crit_edge:          ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit.sink.split

if.end67:                                         ; preds = %for.end56.if.end67_crit_edge, %cond.false50.if.end67_crit_edge, %if.then41.if.end67_crit_edge, %hw_atl2_mcp_boot_complete.exit.if.end67_crit_edge, %if.end25.if.end67_crit_edge
  %call68 = tail call i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef %self) #3
  %and69 = and i32 %call68, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end77, label %if.end67.err_exit.sink.split_crit_edge

if.end67.err_exit.sink.split_crit_edge:           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit.sink.split

if.end77:                                         ; preds = %if.end67
  %call78 = tail call i32 @hw_atl2_mif_host_req_int_get(ptr noundef %self) #3
  %and79 = and i32 %call78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end87, label %if.end77.err_exit.sink.split_crit_edge

if.end77.err_exit.sink.split_crit_edge:           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit.sink.split

if.end87:                                         ; preds = %if.end77
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %tobool88.not = icmp eq ptr %3, null
  br i1 %tobool88.not, label %if.end87.err_exit_crit_edge, label %if.then89

if.end87.err_exit_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit

if.then89:                                        ; preds = %if.end87
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call91 = tail call i32 %5(ptr noundef %self) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then89.err_exit_crit_edge, label %if.then89.err_exit.sink.split_crit_edge

if.then89.err_exit.sink.split_crit_edge:          ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit.sink.split

if.then89.err_exit_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_exit

err_exit.sink.split:                              ; preds = %if.then89.err_exit.sink.split_crit_edge, %if.end77.err_exit.sink.split_crit_edge, %if.end67.err_exit.sink.split_crit_edge, %for.end56.err_exit.sink.split_crit_edge, %for.end.err_exit.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.6, %for.end.err_exit.sink.split_crit_edge ], [ @.str.9, %for.end56.err_exit.sink.split_crit_edge ], [ @.str.12, %if.end67.err_exit.sink.split_crit_edge ], [ @.str.15, %if.end77.err_exit.sink.split_crit_edge ], [ @.str.18, %if.then89.err_exit.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -110, %for.end.err_exit.sink.split_crit_edge ], [ -110, %for.end56.err_exit.sink.split_crit_edge ], [ -5, %if.end67.err_exit.sink.split_crit_edge ], [ -5, %if.end77.err_exit.sink.split_crit_edge ], [ %call91, %if.then89.err_exit.sink.split_crit_edge ]
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink) #6
  br label %err_exit

err_exit:                                         ; preds = %err_exit.sink.split, %if.then89.err_exit_crit_edge, %if.end87.err_exit_crit_edge
  %err.0 = phi i32 [ 0, %if.then89.err_exit_crit_edge ], [ 0, %if.end87.err_exit_crit_edge ], [ %err.0.ph, %err_exit.sink.split ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_host_req_int_clr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_mcp_boot_reg_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_mif_mcp_boot_reg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_mif_host_req_int_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 42, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hw_atl2_utils_initfw._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hw_atl2_utils_initfw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 46, i32 2}
!8 = !{ptr @hw_atl2_utils_initfw._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hw_atl2_utils_initfw._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 91, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hw_atl2_utils_soft_reset._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hw_atl2_utils_soft_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 101, i32 3}
!17 = !{ptr @hw_atl2_utils_soft_reset._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hw_atl2_utils_soft_reset._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 109, i32 3}
!21 = !{ptr @hw_atl2_utils_soft_reset._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hw_atl2_utils_soft_reset._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 116, i32 3}
!25 = !{ptr @hw_atl2_utils_soft_reset._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hw_atl2_utils_soft_reset._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils.c", i32 123, i32 4}
!29 = !{ptr @hw_atl2_utils_soft_reset._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hw_atl2_utils_soft_reset._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
