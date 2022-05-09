; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.iwl_context_info_dram = type { [64 x i64], [64 x i64], [64 x i64] }
%struct.iwl_context_info_version = type { i16, i16, i16, i16 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_context_info = type { %struct.iwl_context_info_version, %struct.iwl_context_info_control, i64, %struct.iwl_context_info_rbd_cfg, %struct.iwl_context_info_hcmd_cfg, [4 x i32], %struct.iwl_context_info_dump_cfg, %struct.iwl_context_info_early_dbg_cfg, %struct.iwl_context_info_pnvm_cfg, [16 x i32], %struct.iwl_context_info_dram, [16 x i32] }
%struct.iwl_context_info_control = type { i32, i32 }
%struct.iwl_context_info_rbd_cfg = type { i64, i64, i64 }
%struct.iwl_context_info_hcmd_cfg = type { i64, i8, [7 x i8] }
%struct.iwl_context_info_dump_cfg = type { i64, i32, i32 }
%struct.iwl_context_info_early_dbg_cfg = type { i64, i32, i32 }
%struct.iwl_context_info_pnvm_cfg = type { i64, i32, i32 }
%struct.iwl_rxq = type { i32, ptr, i32, %union.anon.133, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i8, i8, ptr, i32, %struct.spinlock, %struct.napi_struct, [256 x ptr] }
%union.anon.133 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"paging shouldn't already be initialized (%d pages)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to allocate DMA memory not crossing 2^32 boundary\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_fw_load_int_ctx_info = private unnamed_addr constant [32 x i8] c"iwl_enable_fw_load_int_ctx_info\00", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling ALIVE interrupt only\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", [45 x i8] zeroinitializer }, align 32
@switch.table.iwl_pcie_ctxt_info_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2048, i32 4096, i32 5120, i32 1024], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 69, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 91, i32 6 }
@___asan_gen_.14 = private constant [55 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 19, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 650, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 561, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [37 x i8] c"switch.table.iwl_pcie_ctxt_info_init\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.iwl_pcie_ctxt_info_init], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_pcie_ctxt_info_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_ctxt_info_alloc_dma(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %data, i32 noundef %len, ptr noundef %dram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef %len, ptr noundef %dram, i32 noundef 0) #5
  %block = getelementptr inbounds %struct.iwl_dram_data, ptr %dram, i32 0, i32 1
  %0 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %block, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.iwl_dram_data, ptr %dram, i32 0, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %size, align 4
  %2 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %len)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_ctxt_info_free_paging(ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %paging = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 2
  %0 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %paging, align 4
  %tobool.not = icmp eq ptr %1, null
  %paging_cnt = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %paging_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paging_cnt, align 4
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47 = icmp sgt i32 %3, 0
  br i1 %cmp47, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end, !prof !20

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %paging, align 4
  %arrayidx = getelementptr %struct.iwl_dram_data, ptr %7, i32 %i.048
  %size = getelementptr %struct.iwl_dram_data, ptr %7, i32 %i.048, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %block = getelementptr %struct.iwl_dram_data, ptr %7, i32 %i.048, i32 1
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.048, 1
  %14 = ptrtoint ptr %paging_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %paging_cnt, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %paging, align 4
  tail call void @kfree(ptr noundef %17) #5
  %18 = ptrtoint ptr %paging_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %paging_cnt, align 4
  %19 = ptrtoint ptr %paging to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %paging, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_init_fw_sec(ptr nocapture noundef %trans, ptr nocapture noundef readonly %fw, ptr nocapture noundef writeonly %ctxt_dram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_dram = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33
  %paging = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 2
  %0 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %paging, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %do.end, !prof !20

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %paging_cnt9 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %paging_cnt9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paging_cnt9, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %3) #5
  tail call void @iwl_pcie_ctxt_info_free_paging(ptr noundef %trans)
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  %num_sec.i = getelementptr inbounds %struct.fw_img, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.i = icmp sgt i32 %5, 0
  br i1 %cmp14.i, label %land.lhs.true.lr.ph.i, label %if.end23.iwl_pcie_get_num_sections.exit_crit_edge

if.end23.iwl_pcie_get_num_sections.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit

land.lhs.true.lr.ph.i:                            ; preds = %if.end23
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body.i.land.lhs.true.i_crit_edge, %land.lhs.true.lr.ph.i
  %i.016.i = phi i32 [ 0, %land.lhs.true.lr.ph.i ], [ %inc6.i, %while.body.i.land.lhs.true.i_crit_edge ]
  %offset.i = getelementptr %struct.fw_desc, ptr %7, i32 %i.016.i, i32 2
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %while.body.i [
    i32 -13108, label %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge
    i32 -1431651397, label %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge296
  ]

land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge296: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit

land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit

while.body.i:                                     ; preds = %land.lhs.true.i
  %inc6.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %5
  br i1 %exitcond.not.i, label %while.body.i.iwl_pcie_get_num_sections.exit_crit_edge, label %while.body.i.land.lhs.true.i_crit_edge

while.body.i.land.lhs.true.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

while.body.i.iwl_pcie_get_num_sections.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit

iwl_pcie_get_num_sections.exit:                   ; preds = %while.body.i.iwl_pcie_get_num_sections.exit_crit_edge, %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge, %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge296, %if.end23.iwl_pcie_get_num_sections.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end23.iwl_pcie_get_num_sections.exit_crit_edge ], [ %5, %while.body.i.iwl_pcie_get_num_sections.exit_crit_edge ], [ %i.016.i, %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge ], [ %i.016.i, %land.lhs.true.i.iwl_pcie_get_num_sections.exit_crit_edge296 ]
  %add = add i32 %i.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp14.i184 = icmp sgt i32 %5, %add
  br i1 %cmp14.i184, label %land.lhs.true.lr.ph.i185, label %iwl_pcie_get_num_sections.exit.iwl_pcie_get_num_sections.exit195_crit_edge

iwl_pcie_get_num_sections.exit.iwl_pcie_get_num_sections.exit195_crit_edge: ; preds = %iwl_pcie_get_num_sections.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit195

land.lhs.true.lr.ph.i185:                         ; preds = %iwl_pcie_get_num_sections.exit
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = sub i32 %5, %add
  br label %land.lhs.true.i189

land.lhs.true.i189:                               ; preds = %while.body.i193.land.lhs.true.i189_crit_edge, %land.lhs.true.lr.ph.i185
  %i.016.i186 = phi i32 [ 0, %land.lhs.true.lr.ph.i185 ], [ %inc6.i191, %while.body.i193.land.lhs.true.i189_crit_edge ]
  %start.addr.015.i187 = phi i32 [ %add, %land.lhs.true.lr.ph.i185 ], [ %inc.i190, %while.body.i193.land.lhs.true.i189_crit_edge ]
  %offset.i188 = getelementptr %struct.fw_desc, ptr %12, i32 %start.addr.015.i187, i32 2
  %14 = ptrtoint ptr %offset.i188 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i188, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %15, label %while.body.i193 [
    i32 -13108, label %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge
    i32 -1431651397, label %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge297
  ]

land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge297: ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit195

land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge: ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit195

while.body.i193:                                  ; preds = %land.lhs.true.i189
  %inc.i190 = add nsw i32 %start.addr.015.i187, 1
  %inc6.i191 = add i32 %i.016.i186, 1
  %exitcond.not.i192 = icmp eq i32 %inc6.i191, %13
  br i1 %exitcond.not.i192, label %while.body.i193.iwl_pcie_get_num_sections.exit195_crit_edge, label %while.body.i193.land.lhs.true.i189_crit_edge

while.body.i193.land.lhs.true.i189_crit_edge:     ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i189

while.body.i193.iwl_pcie_get_num_sections.exit195_crit_edge: ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit195

iwl_pcie_get_num_sections.exit195:                ; preds = %while.body.i193.iwl_pcie_get_num_sections.exit195_crit_edge, %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge, %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge297, %iwl_pcie_get_num_sections.exit.iwl_pcie_get_num_sections.exit195_crit_edge
  %i.0.lcssa.i194 = phi i32 [ 0, %iwl_pcie_get_num_sections.exit.iwl_pcie_get_num_sections.exit195_crit_edge ], [ %13, %while.body.i193.iwl_pcie_get_num_sections.exit195_crit_edge ], [ %i.016.i186, %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge ], [ %i.016.i186, %land.lhs.true.i189.iwl_pcie_get_num_sections.exit195_crit_edge297 ]
  %add25 = add i32 %i.0.lcssa.i194, %i.0.lcssa.i
  %add26 = add i32 %add25, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add26)
  %cmp14.i197 = icmp sgt i32 %5, %add26
  br i1 %cmp14.i197, label %land.lhs.true.lr.ph.i198, label %iwl_pcie_get_num_sections.exit195.iwl_pcie_get_num_sections.exit208_crit_edge

iwl_pcie_get_num_sections.exit195.iwl_pcie_get_num_sections.exit208_crit_edge: ; preds = %iwl_pcie_get_num_sections.exit195
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit208

land.lhs.true.lr.ph.i198:                         ; preds = %iwl_pcie_get_num_sections.exit195
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = sub i32 %5, %add26
  br label %land.lhs.true.i202

land.lhs.true.i202:                               ; preds = %while.body.i206.land.lhs.true.i202_crit_edge, %land.lhs.true.lr.ph.i198
  %i.016.i199 = phi i32 [ 0, %land.lhs.true.lr.ph.i198 ], [ %inc6.i204, %while.body.i206.land.lhs.true.i202_crit_edge ]
  %start.addr.015.i200 = phi i32 [ %add26, %land.lhs.true.lr.ph.i198 ], [ %inc.i203, %while.body.i206.land.lhs.true.i202_crit_edge ]
  %offset.i201 = getelementptr %struct.fw_desc, ptr %18, i32 %start.addr.015.i200, i32 2
  %20 = ptrtoint ptr %offset.i201 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i201, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %21, label %while.body.i206 [
    i32 -13108, label %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge
    i32 -1431651397, label %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge298
  ]

land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge298: ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit208

land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge: ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit208

while.body.i206:                                  ; preds = %land.lhs.true.i202
  %inc.i203 = add nsw i32 %start.addr.015.i200, 1
  %inc6.i204 = add i32 %i.016.i199, 1
  %exitcond.not.i205 = icmp eq i32 %inc6.i204, %19
  br i1 %exitcond.not.i205, label %while.body.i206.iwl_pcie_get_num_sections.exit208_crit_edge, label %while.body.i206.land.lhs.true.i202_crit_edge

while.body.i206.land.lhs.true.i202_crit_edge:     ; preds = %while.body.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i202

while.body.i206.iwl_pcie_get_num_sections.exit208_crit_edge: ; preds = %while.body.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_pcie_get_num_sections.exit208

iwl_pcie_get_num_sections.exit208:                ; preds = %while.body.i206.iwl_pcie_get_num_sections.exit208_crit_edge, %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge, %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge298, %iwl_pcie_get_num_sections.exit195.iwl_pcie_get_num_sections.exit208_crit_edge
  %i.0.lcssa.i207 = phi i32 [ 0, %iwl_pcie_get_num_sections.exit195.iwl_pcie_get_num_sections.exit208_crit_edge ], [ %19, %while.body.i206.iwl_pcie_get_num_sections.exit208_crit_edge ], [ %i.016.i199, %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge ], [ %i.016.i199, %land.lhs.true.i202.iwl_pcie_get_num_sections.exit208_crit_edge298 ]
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add25, i32 12) #5
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %iwl_pcie_get_num_sections.exit208.cleanup116.sink.split_crit_edge, label %if.end7.i.i, !prof !21

iwl_pcie_get_num_sections.exit208.cleanup116.sink.split_crit_edge: ; preds = %iwl_pcie_get_num_sections.exit208
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116.sink.split

if.end7.i.i:                                      ; preds = %iwl_pcie_get_num_sections.exit208
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #8
  %26 = ptrtoint ptr %init_dram to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i, ptr %init_dram, align 4
  %tobool32.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool32.not, label %if.end7.i.i.cleanup116_crit_edge, label %if.end34

if.end7.i.i.cleanup116_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

if.end34:                                         ; preds = %if.end7.i.i
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa.i207, i32 12) #5
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end34.cleanup116.sink.split_crit_edge, label %if.end7.i.i239, !prof !21

if.end34.cleanup116.sink.split_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116.sink.split

if.end7.i.i239:                                   ; preds = %if.end34
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i238 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #8
  %30 = ptrtoint ptr %paging to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i238, ptr %paging, align 4
  %tobool38.not = icmp eq ptr %call8.i.i238, null
  br i1 %tobool38.not, label %if.end7.i.i239.cleanup116_crit_edge, label %for.cond.preheader

if.end7.i.i239.cleanup116_crit_edge:              ; preds = %if.end7.i.i239
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

for.cond.preheader:                               ; preds = %if.end7.i.i239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp276 = icmp sgt i32 %i.0.lcssa.i, 0
  br i1 %cmp276, label %for.body.lr.ph, label %for.cond.preheader.for.cond55.preheader_crit_edge

for.cond.preheader.for.cond55.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond55.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fw_cnt = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 1
  br label %for.body

for.cond55.preheader:                             ; preds = %if.end48.for.cond55.preheader_crit_edge, %for.cond.preheader.for.cond55.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i194)
  %cmp56278 = icmp sgt i32 %i.0.lcssa.i194, 0
  br i1 %cmp56278, label %for.body58.lr.ph, label %for.cond55.preheader.for.cond87.preheader_crit_edge

for.cond55.preheader.for.cond87.preheader_crit_edge: ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond87.preheader

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %fw_cnt60 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 1
  br label %for.body58

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %i.0277 = phi i32 [ 0, %for.body.lr.ph ], [ %inc54, %if.end48.for.body_crit_edge ]
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  %arrayidx = getelementptr %struct.fw_desc, ptr %32, i32 %i.0277
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr %struct.fw_desc, ptr %32, i32 %i.0277, i32 1
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = ptrtoint ptr %init_dram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_dram, align 4
  %39 = ptrtoint ptr %fw_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fw_cnt, align 4
  %arrayidx44 = getelementptr %struct.iwl_dram_data, ptr %38, i32 %40
  %call.i.i = tail call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef %36, ptr noundef %arrayidx44, i32 noundef 0) #5
  %block.i = getelementptr %struct.iwl_dram_data, ptr %38, i32 %40, i32 1
  %41 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i, ptr %block.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup116_crit_edge, label %if.end48

for.body.cleanup116_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

if.end48:                                         ; preds = %for.body
  %size.i = getelementptr %struct.iwl_dram_data, ptr %38, i32 %40, i32 2
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %36, ptr %size.i, align 4
  %43 = call ptr @memcpy(ptr %call.i.i, ptr %34, i32 %36)
  %44 = ptrtoint ptr %init_dram to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_dram, align 4
  %46 = ptrtoint ptr %fw_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_cnt, align 4
  %arrayidx51 = getelementptr %struct.iwl_dram_data, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx51, align 4
  %conv = zext i32 %49 to i64
  %50 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %arrayidx52 = getelementptr %struct.iwl_context_info_dram, ptr %ctxt_dram, i32 0, i32 1, i32 %i.0277
  %51 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %arrayidx52, align 1
  %52 = ptrtoint ptr %fw_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_cnt, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %fw_cnt, align 4
  %inc54 = add nuw nsw i32 %i.0277, 1
  %exitcond.not = icmp eq i32 %inc54, %i.0.lcssa.i
  br i1 %exitcond.not, label %if.end48.for.cond55.preheader_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end48.for.cond55.preheader_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond55.preheader

for.cond87.preheader:                             ; preds = %if.end75.for.cond87.preheader_crit_edge, %for.cond55.preheader.for.cond87.preheader_crit_edge
  %fw_cnt91 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i207)
  %cmp88280 = icmp sgt i32 %i.0.lcssa.i207, 0
  br i1 %cmp88280, label %for.body90.lr.ph, label %for.cond87.preheader.cleanup116_crit_edge

for.cond87.preheader.cleanup116_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

for.body90.lr.ph:                                 ; preds = %for.cond87.preheader
  %paging_cnt111 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 3
  br label %for.body90

for.body58:                                       ; preds = %if.end75.for.body58_crit_edge, %for.body58.lr.ph
  %i.1279 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc85, %if.end75.for.body58_crit_edge ]
  %54 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw, align 4
  %56 = ptrtoint ptr %fw_cnt60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_cnt60, align 4
  %add61 = add i32 %57, 1
  %arrayidx62 = getelementptr %struct.fw_desc, ptr %55, i32 %add61
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx62, align 4
  %len68 = getelementptr %struct.fw_desc, ptr %55, i32 %add61, i32 1
  %60 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len68, align 4
  %62 = ptrtoint ptr %init_dram to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_dram, align 4
  %arrayidx71 = getelementptr %struct.iwl_dram_data, ptr %63, i32 %57
  %call.i.i242 = tail call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef %61, ptr noundef %arrayidx71, i32 noundef 0) #5
  %block.i243 = getelementptr %struct.iwl_dram_data, ptr %63, i32 %57, i32 1
  %64 = ptrtoint ptr %block.i243 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i242, ptr %block.i243, align 4
  %tobool.not.i244 = icmp eq ptr %call.i.i242, null
  br i1 %tobool.not.i244, label %for.body58.cleanup116_crit_edge, label %if.end75

for.body58.cleanup116_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

if.end75:                                         ; preds = %for.body58
  %size.i245 = getelementptr %struct.iwl_dram_data, ptr %63, i32 %57, i32 2
  %65 = ptrtoint ptr %size.i245 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %61, ptr %size.i245, align 4
  %66 = call ptr @memcpy(ptr %call.i.i242, ptr %59, i32 %61)
  %67 = ptrtoint ptr %init_dram to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_dram, align 4
  %69 = ptrtoint ptr %fw_cnt60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_cnt60, align 4
  %arrayidx78 = getelementptr %struct.iwl_dram_data, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx78, align 4
  %conv80 = zext i32 %72 to i64
  %73 = tail call i64 @llvm.bswap.i64(i64 %conv80)
  %arrayidx81 = getelementptr [64 x i64], ptr %ctxt_dram, i32 0, i32 %i.1279
  %74 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %arrayidx81, align 1
  %75 = ptrtoint ptr %fw_cnt60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_cnt60, align 4
  %inc83 = add i32 %76, 1
  store i32 %inc83, ptr %fw_cnt60, align 4
  %inc85 = add nuw nsw i32 %i.1279, 1
  %exitcond285.not = icmp eq i32 %inc85, %i.0.lcssa.i194
  br i1 %exitcond285.not, label %if.end75.for.cond87.preheader_crit_edge, label %if.end75.for.body58_crit_edge

if.end75.for.body58_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body58

if.end75.for.cond87.preheader_crit_edge:          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond87.preheader

for.body90:                                       ; preds = %for.inc113.for.body90_crit_edge, %for.body90.lr.ph
  %i.2281 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc114, %for.inc113.for.body90_crit_edge ]
  %77 = ptrtoint ptr %fw_cnt91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_cnt91, align 4
  %add92 = add nuw i32 %i.2281, 2
  %add93 = add i32 %add92, %78
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw, align 4
  %arrayidx95 = getelementptr %struct.fw_desc, ptr %80, i32 %add93
  %81 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx95, align 4
  %len99 = getelementptr %struct.fw_desc, ptr %80, i32 %add93, i32 1
  %83 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len99, align 4
  %85 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %paging, align 4
  %arrayidx101 = getelementptr %struct.iwl_dram_data, ptr %86, i32 %i.2281
  %call.i.i249 = tail call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef %84, ptr noundef %arrayidx101, i32 noundef 0) #5
  %block.i250 = getelementptr %struct.iwl_dram_data, ptr %86, i32 %i.2281, i32 1
  %87 = ptrtoint ptr %block.i250 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i249, ptr %block.i250, align 4
  %tobool.not.i251 = icmp eq ptr %call.i.i249, null
  br i1 %tobool.not.i251, label %for.body90.cleanup116_crit_edge, label %for.inc113

for.body90.cleanup116_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

for.inc113:                                       ; preds = %for.body90
  %size.i252 = getelementptr %struct.iwl_dram_data, ptr %86, i32 %i.2281, i32 2
  %88 = ptrtoint ptr %size.i252 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %84, ptr %size.i252, align 4
  %89 = call ptr @memcpy(ptr %call.i.i249, ptr %82, i32 %84)
  %90 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %paging, align 4
  %arrayidx107 = getelementptr %struct.iwl_dram_data, ptr %91, i32 %i.2281
  %92 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx107, align 4
  %conv109 = zext i32 %93 to i64
  %94 = tail call i64 @llvm.bswap.i64(i64 %conv109)
  %arrayidx110 = getelementptr %struct.iwl_context_info_dram, ptr %ctxt_dram, i32 0, i32 2, i32 %i.2281
  %95 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %94, ptr %arrayidx110, align 1
  %96 = ptrtoint ptr %paging_cnt111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %paging_cnt111, align 4
  %inc112 = add i32 %97, 1
  store i32 %inc112, ptr %paging_cnt111, align 4
  %inc114 = add nuw nsw i32 %i.2281, 1
  %exitcond286.not = icmp eq i32 %inc114, %i.0.lcssa.i207
  br i1 %exitcond286.not, label %for.inc113.cleanup116_crit_edge, label %for.inc113.for.body90_crit_edge

for.inc113.for.body90_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body90

for.inc113.cleanup116_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup116

cleanup116.sink.split:                            ; preds = %if.end34.cleanup116.sink.split_crit_edge, %iwl_pcie_get_num_sections.exit208.cleanup116.sink.split_crit_edge
  %paging.sink = phi ptr [ %init_dram, %iwl_pcie_get_num_sections.exit208.cleanup116.sink.split_crit_edge ], [ %paging, %if.end34.cleanup116.sink.split_crit_edge ]
  %98 = ptrtoint ptr %paging.sink to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %paging.sink, align 4
  br label %cleanup116

cleanup116:                                       ; preds = %cleanup116.sink.split, %for.inc113.cleanup116_crit_edge, %for.body90.cleanup116_crit_edge, %for.body58.cleanup116_crit_edge, %for.cond87.preheader.cleanup116_crit_edge, %for.body.cleanup116_crit_edge, %if.end7.i.i239.cleanup116_crit_edge, %if.end7.i.i.cleanup116_crit_edge
  %retval.2 = phi i32 [ -12, %if.end7.i.i.cleanup116_crit_edge ], [ -12, %if.end7.i.i239.cleanup116_crit_edge ], [ 0, %for.cond87.preheader.cleanup116_crit_edge ], [ -12, %cleanup116.sink.split ], [ 0, %for.inc113.cleanup116_crit_edge ], [ -12, %for.body90.cleanup116_crit_edge ], [ -12, %for.body58.cleanup116_crit_edge ], [ -12, %for.body.cleanup116_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_ctxt_info_init(ptr noundef %trans, ptr nocapture noundef readonly %fw) local_unnamed_addr #0 align 64 {
entry:
  %phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys) #5
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys, align 4, !annotation !22
  %call.i = call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef 1792, ptr noundef nonnull %phys, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phys, align 4
  %ctxt_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24
  %3 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ctxt_info_dma_addr, align 16
  %version2 = getelementptr inbounds %struct.iwl_context_info_version, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %version2 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %version2, align 1
  %call3 = call i32 @iwl_read32(ptr noundef %trans, i32 noundef 40) #5
  %conv = trunc i32 %call3 to i16
  %5 = call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %call.i, align 1
  %size = getelementptr inbounds %struct.iwl_context_info_version, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 -16383, ptr %size, align 1
  %rx_buf_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %8 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_size, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iwl_pcie_ctxt_info_init, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %rb_size.0 = phi i32 [ 2048, %do.end ], [ %switch.load, %switch.lookup ]
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 8
  %num_rbds = getelementptr inbounds %struct.iwl_cfg, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %num_rbds to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_rbds, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i, label %sw.epilog.cond.false90_crit_edge, label %cond.end40

sw.epilog.cond.false90_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false90

cond.end40:                                       ; preds = %sw.epilog
  %conv38 = zext i16 %15 to i32
  %16 = call i32 @llvm.ctlz.i32(i32 %conv38, i1 true) #5, !range !23
  %sub.i.op.i = xor i32 %16, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.op.i)
  %cmp42 = icmp ugt i32 %sub.i.op.i, 12
  br i1 %cmp42, label %do.end59, label %cond.end40.cond.false90_crit_edge, !prof !21

cond.end40.cond.false90_crit_edge:                ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false90

do.end59:                                         ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #5
  br label %cond.false90

cond.false90:                                     ; preds = %do.end59, %cond.end40.cond.false90_crit_edge, %sw.epilog.cond.false90_crit_edge
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 8
  %num_rbds74 = getelementptr inbounds %struct.iwl_cfg, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %num_rbds74 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_rbds74, align 2
  %conv93 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i178 = icmp eq i16 %20, 0
  %21 = call i32 @llvm.ctlz.i32(i32 %conv93, i1 true) #5, !range !23
  %sub.i.op.i179 = shl nuw nsw i32 %21, 4
  %sub.i.op.i179.op = and i32 %sub.i.op.i179, 240
  %sub.i.op.i179.op.op = xor i32 %sub.i.op.i179.op, 240
  %22 = select i1 %tobool.not.i.i178, i32 240, i32 %sub.i.op.i179.op.op
  %or = or i32 %22, %rb_size.0
  %or99 = or i32 %or, 256
  %23 = call i32 @llvm.bswap.i32(i32 %or99)
  %control = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %control, align 1
  %rbd_cfg = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_specific.i, align 128
  %bd_dma = getelementptr inbounds %struct.iwl_rxq, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bd_dma, align 8
  %conv101 = zext i32 %28 to i64
  %29 = call i64 @llvm.bswap.i64(i64 %conv101)
  %30 = ptrtoint ptr %rbd_cfg to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %rbd_cfg, align 1
  %31 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans_specific.i, align 128
  %used_bd_dma = getelementptr inbounds %struct.iwl_rxq, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %used_bd_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used_bd_dma, align 8
  %conv103 = zext i32 %34 to i64
  %35 = call i64 @llvm.bswap.i64(i64 %conv103)
  %used_rbd_addr = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %used_rbd_addr to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %used_rbd_addr, align 1
  %37 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trans_specific.i, align 128
  %rb_stts_dma = getelementptr inbounds %struct.iwl_rxq, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %rb_stts_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rb_stts_dma, align 4
  %conv105 = zext i32 %40 to i64
  %41 = call i64 @llvm.bswap.i64(i64 %conv105)
  %status_wr_ptr = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %status_wr_ptr to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %status_wr_ptr, align 1
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %43 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %44 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr, align 4
  %conv107 = zext i32 %48 to i64
  %49 = call i64 @llvm.bswap.i64(i64 %conv107)
  %hcmd_cfg = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %hcmd_cfg to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %hcmd_cfg, align 1
  %cmd_queue_size = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %cmd_queue_size to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %cmd_queue_size, align 1
  %dram = getelementptr inbounds %struct.iwl_context_info, ptr %call.i, i32 0, i32 10
  %call109 = call i32 @iwl_pcie_init_fw_sec(ptr noundef %trans, ptr noundef %fw, ptr noundef %dram)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end113, label %if.then111

if.then111:                                       ; preds = %cond.false90
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %54 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctxt_info_dma_addr, align 16
  call void @dma_free_attrs(ptr noundef %53, i32 noundef 1792, ptr noundef nonnull %call.i, i32 noundef %55, i32 noundef 0) #5
  br label %cleanup

if.end113:                                        ; preds = %cond.false90
  %56 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 20
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %56, align 128
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %59, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_fw_load_int_ctx_info, ptr noundef nonnull @.str.3) #5
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %60 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %msix_enabled.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i181 = icmp eq i8 %61, 0
  br i1 %tobool.not.i181, label %if.then.i182, label %if.else.i

if.then.i182:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %62 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -2147483647, ptr %inta_mask.i, align 4
  call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -2147483647) #5
  br label %iwl_enable_fw_load_int_ctx_info.exit

if.else.i:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -2) #5
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %63 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %hw_mask.i.i, align 4
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %64 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fh_init_mask.i, align 32
  %neg.i.i = xor i32 %65, -1
  call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i.i) #5
  %fh_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %66 = ptrtoint ptr %fh_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %fh_mask.i.i, align 8
  br label %iwl_enable_fw_load_int_ctx_info.exit

iwl_enable_fw_load_int_ctx_info.exit:             ; preds = %if.else.i, %if.then.i182
  %dest_tlv.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %67 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dest_tlv.i, align 4
  %tobool.not.i183 = icmp eq ptr %68, null
  br i1 %tobool.not.i183, label %lor.rhs.i, label %iwl_enable_fw_load_int_ctx_info.exit.if.then115_crit_edge

iwl_enable_fw_load_int_ctx_info.exit.if.then115_crit_edge: ; preds = %iwl_enable_fw_load_int_ctx_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

lor.rhs.i:                                        ; preds = %iwl_enable_fw_load_int_ctx_info.exit
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %69 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.not.i.i = icmp eq i32 %70, 0
  br i1 %cmp.not.i.i, label %iwl_pcie_dbg_on.exit, label %lor.rhs.i.if.then115_crit_edge

lor.rhs.i.if.then115_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

iwl_pcie_dbg_on.exit:                             ; preds = %lor.rhs.i
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %71 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp2.i.i.not = icmp eq i32 %72, 0
  br i1 %cmp2.i.i.not, label %iwl_pcie_dbg_on.exit.if.end116_crit_edge, label %iwl_pcie_dbg_on.exit.if.then115_crit_edge

iwl_pcie_dbg_on.exit.if.then115_crit_edge:        ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then115

iwl_pcie_dbg_on.exit.if.end116_crit_edge:         ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then115:                                       ; preds = %iwl_pcie_dbg_on.exit.if.then115_crit_edge, %lor.rhs.i.if.then115_crit_edge, %iwl_enable_fw_load_int_ctx_info.exit.if.then115_crit_edge
  call void @iwl_pcie_apply_destination(ptr noundef %trans) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %iwl_pcie_dbg_on.exit.if.end116_crit_edge
  %73 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctxt_info_dma_addr, align 16
  %conv118 = zext i32 %74 to i64
  call void @iwl_write64(ptr noundef %trans, i64 noundef 64, i64 noundef %conv118) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then111, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call109, %if.then111 ], [ 0, %if.end116 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_apply_destination(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_ctxt_info_free(ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %ctxt_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24
  %5 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctxt_info_dma_addr, align 16
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef 1792, ptr noundef nonnull %2, i32 noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ctxt_info_dma_addr, align 16
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %0, align 128
  %init_dram.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33
  %9 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_dram.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %fw_cnt.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 1
  %11 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_cnt.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp47.i = icmp sgt i32 %12, 0
  br i1 %cmp47.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i, !prof !20

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 561, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_dram.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_dram_data, ptr %16, i32 %i.048.i
  %size.i = getelementptr %struct.iwl_dram_data, ptr %16, i32 %i.048.i, i32 2
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %block.i = getelementptr %struct.iwl_dram_data, ptr %16, i32 %i.048.i, i32 1
  %19 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #5
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %23 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %25 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_dram.i, align 4
  tail call void @kfree(ptr noundef %26) #5
  %27 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %fw_cnt.i, align 4
  %28 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %init_dram.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %do.end.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr nocapture noundef readonly %trans, i32 noundef %size, ptr noundef %phys, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %depth)
  %cmp = icmp sgt i32 %depth, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %common.ret

if.end21:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %size, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #5
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end21.common.ret_crit_edge, label %if.end24

if.end21.common.ret_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %common.ret

if.end24:                                         ; preds = %if.end21
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys, align 4
  %conv = zext i32 %3 to i64
  %conv25.mask = and i32 %size, 65535
  %conv2.i = zext i32 %conv25.mask to i64
  %add.i = add nuw nsw i64 %conv, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp.i = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp.i, label %if.then33, label %if.end24.common.ret_crit_edge, !prof !21

if.end24.common.ret_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %common.ret

common.ret:                                       ; preds = %if.then33, %if.end24.common.ret_crit_edge, %if.end21.common.ret_crit_edge, %do.end
  %common.ret.op = phi ptr [ %call34, %if.then33 ], [ null, %do.end ], [ null, %if.end21.common.ret_crit_edge ], [ %call.i, %if.end24.common.ret_crit_edge ]
  ret ptr %common.ret.op

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nsw i32 %depth, 1
  %call34 = tail call fastcc ptr @_iwl_pcie_ctxt_info_dma_alloc_coherent(ptr noundef %trans, i32 noundef %size, ptr noundef %phys, i32 noundef %add)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %size, ptr noundef nonnull %call.i, i32 noundef %3, i32 noundef 0) #5
  br label %common.ret
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c", i32 69, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c", i32 91, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info.c", i32 19, i32 6}
!6 = !{ptr @__func__.iwl_enable_fw_load_int_ctx_info, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 650, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 561, i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"auto-init"}
!23 = !{i32 0, i32 33}
!24 = !{i8 0, i8 2}
