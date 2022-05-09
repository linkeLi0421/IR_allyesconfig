; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_prph_scratch_version = type { i16, i16, i16, i16 }
%struct.iwl_rxq = type { i32, ptr, i32, %union.anon.133, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i8, i8, ptr, i32, %struct.spinlock, %struct.napi_struct, [256 x ptr] }
%union.anon.133 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_prph_scratch_ctrl_cfg = type <{ %struct.iwl_prph_scratch_version, %struct.iwl_prph_scratch_control, %struct.iwl_prph_scratch_pnvm_cfg, %struct.iwl_prph_scratch_hwm_cfg, %struct.iwl_prph_scratch_rbd_cfg, %struct.iwl_prph_scratch_uefi_cfg }>
%struct.iwl_prph_scratch_control = type { i32, i32 }
%struct.iwl_prph_scratch_pnvm_cfg = type { i64, i32, i32 }
%struct.iwl_prph_scratch_hwm_cfg = type { i64, i32, i32 }
%struct.iwl_prph_scratch_rbd_cfg = type <{ i64, i32 }>
%struct.iwl_prph_scratch_uefi_cfg = type { i64, i32, i32 }
%struct.iwl_prph_scratch = type <{ %struct.iwl_prph_scratch_ctrl_cfg, [12 x i32], %struct.iwl_context_info_dram }>
%struct.iwl_context_info_dram = type { [64 x i64], [64 x i64], [64 x i64] }
%struct.iwl_context_info_gen3 = type <{ i16, i16, i32, i64, i64, i64, i64, i64, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i64, i32, i32 }>
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_pcie_ctx_info_gen3_set_pnvm = private unnamed_addr constant [38 x i8] c"iwl_trans_pcie_ctx_info_gen3_set_pnvm\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate PNVM DMA %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_pcie_ctx_info_gen3_set_reduce_power = private unnamed_addr constant [46 x i8] c"iwl_trans_pcie_ctx_info_gen3_set_reduce_power\00", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate reduce power DMA %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_ctxt_info_dbg_enable = private unnamed_addr constant [30 x i8] c"iwl_pcie_ctxt_info_dbg_enable\00", align 1
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WRT: Applying DRAM buffer destination\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WRT: Applying SMEM buffer destination\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WRT: Applying NPK buffer destination\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"WRT: Applying DRAM destination (debug_token_config=%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"WRT: Applying DRAM destination (alloc_id=%u, num_frags=%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WRT: Invalid buffer destination\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_fw_load_int_ctx_info = private unnamed_addr constant [32 x i8] c"iwl_enable_fw_load_int_ctx_info\00", align 1
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling ALIVE interrupt only\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 290, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 296, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 329, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 28, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 43, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 49, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 61, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 64, i32 4 }
@___asan_gen_.37 = private constant [60 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 71, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 650, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 561, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_ctxt_info_gen3_init(ptr noundef %trans, ptr noundef %fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %min_txq_size = getelementptr inbounds %struct.iwl_cfg, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %min_txq_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_txq_size, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %rx_buf_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %5 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_buf_size, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 3, label %sw.bb5
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %control_flags.0 = phi i32 [ 917504, %entry.sw.epilog_crit_edge ], [ 9371648, %sw.bb2 ], [ 983040, %sw.bb1 ], [ 11468800, %sw.bb5 ]
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %prph_scratch_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 1660, ptr noundef %prph_scratch_dma_addr, i32 noundef 3264, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %version9 = getelementptr inbounds %struct.iwl_prph_scratch_version, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %version9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %version9, align 1
  %call10 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 40) #3
  %conv = trunc i32 %call10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %call.i, align 1
  %size = getelementptr inbounds %struct.iwl_prph_scratch_version, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 -24831, ptr %size, align 1
  %14 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans_specific.i, align 128
  %bd_dma = getelementptr inbounds %struct.iwl_rxq, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_dma, align 8
  %conv15 = zext i32 %17 to i64
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv15)
  %rbd_cfg = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %rbd_cfg to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %rbd_cfg, align 1
  %hwm_cfg = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 3
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %20 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.end.if.end7.i_crit_edge

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.end
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %22 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.i.not.i = icmp eq i32 %23, 0
  br i1 %cmp2.i.not.i, label %if.then.i, label %iwl_trans_dbg_ini_valid.exit.i.if.end7.i_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end7.i_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then.i:                                        ; preds = %iwl_trans_dbg_ini_valid.exit.i
  tail call void @iwl_pcie_alloc_fw_monitor(ptr noundef %trans, i8 noundef zeroext 0) #3
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge, label %if.then2.i

if.then.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %iwl_pcie_ctxt_info_dbg_enable.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %fw_mon1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_ctxt_info_dbg_enable, ptr noundef nonnull @.str.3) #3
  %28 = ptrtoint ptr %fw_mon1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_mon1.i, align 4
  %conv.i = zext i32 %29 to i64
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #3
  %31 = ptrtoint ptr %hwm_cfg to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %hwm_cfg, align 1
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #3
  %hwm_size.i = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %hwm_size.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %hwm_size.i, align 1
  br label %if.then71.i

if.end7.i:                                        ; preds = %iwl_trans_dbg_ini_valid.exit.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %buf_location.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 12, i32 1, i32 2
  %36 = ptrtoint ptr %buf_location.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %buf_location.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %38, label %do.end66.i [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb18.i
    i32 2, label %sw.bb27.i
  ]

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_ctxt_info_dbg_enable, ptr noundef nonnull @.str.4) #3
  br label %if.then71.i

sw.bb18.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_ctxt_info_dbg_enable, ptr noundef nonnull @.str.5) #3
  br label %if.then71.i

sw.bb27.i:                                        ; preds = %if.end7.i
  %arrayidx29.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 1
  %44 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool30.not.i = icmp eq i32 %45, 0
  br i1 %tobool30.not.i, label %sw.bb27.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge, label %if.then31.i

sw.bb27.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge: ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %iwl_pcie_ctxt_info_dbg_enable.exit

if.then31.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #5
  %frags.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 1, i32 1
  %46 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %frags.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %conv38.i = zext i32 %49 to i64
  %50 = tail call i64 @llvm.bswap.i64(i64 %conv38.i) #3
  %51 = ptrtoint ptr %hwm_cfg to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %hwm_cfg, align 1
  %size40.i = getelementptr inbounds %struct.iwl_dram_data, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %size40.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size40.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #3
  %hwm_size41.i = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %hwm_size41.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %hwm_size41.i, align 1
  %ucode_preset.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 23
  %56 = ptrtoint ptr %ucode_preset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ucode_preset.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %debug_token_config.i = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %debug_token_config.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %debug_token_config.i, align 1
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_ctxt_info_dbg_enable, ptr noundef nonnull @.str.6, i32 noundef %58) #3
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %64 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx29.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %63, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_ctxt_info_dbg_enable, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %65) #3
  br label %if.then71.i

do.end66.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %67, i32 noundef 0, ptr noundef nonnull @.str.8) #3
  br label %iwl_pcie_ctxt_info_dbg_enable.exit

if.then71.i:                                      ; preds = %if.then31.i, %sw.bb18.i, %sw.bb.i, %if.then2.i
  %dbg_flags.1.ph.i = phi i32 [ 272, %if.then2.i ], [ 528, %sw.bb.i ], [ 2064, %sw.bb18.i ], [ 272, %if.then31.i ]
  %or73.i = or i32 %dbg_flags.1.ph.i, %control_flags.0
  br label %iwl_pcie_ctxt_info_dbg_enable.exit

iwl_pcie_ctxt_info_dbg_enable.exit:               ; preds = %if.then71.i, %do.end66.i, %sw.bb27.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge, %if.then.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge
  %control_flags.1 = phi i32 [ %control_flags.0, %if.then.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge ], [ %or73.i, %if.then71.i ], [ %control_flags.0, %do.end66.i ], [ %control_flags.0, %sw.bb27.i.iwl_pcie_ctxt_info_dbg_enable.exit_crit_edge ]
  %68 = tail call i32 @llvm.bswap.i32(i32 %control_flags.1)
  %control = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %call.i, i32 0, i32 1
  %69 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %control, align 1
  %dram = getelementptr inbounds %struct.iwl_prph_scratch, ptr %call.i, i32 0, i32 2
  %call17 = tail call i32 @iwl_pcie_init_fw_sec(ptr noundef %trans, ptr noundef %fw, ptr noundef %dram) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end, label %iwl_pcie_ctxt_info_dbg_enable.exit.err_free_prph_scratch_crit_edge

iwl_pcie_ctxt_info_dbg_enable.exit.err_free_prph_scratch_crit_edge: ; preds = %iwl_pcie_ctxt_info_dbg_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_prph_scratch

do.end:                                           ; preds = %iwl_pcie_ctxt_info_dbg_enable.exit
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 8
  %prph_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 1
  %call.i191 = tail call ptr @dma_alloc_attrs(ptr noundef %71, i32 noundef 4096, ptr noundef %prph_info_dma_addr, i32 noundef 3264, i32 noundef 0) #3
  %tobool23.not = icmp eq ptr %call.i191, null
  br i1 %tobool23.not, label %do.end.err_free_prph_scratch_crit_edge, label %if.end25

do.end.err_free_prph_scratch_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_prph_scratch

if.end25:                                         ; preds = %do.end
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 8
  %ctxt_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24
  %call.i192 = tail call ptr @dma_alloc_attrs(ptr noundef %73, i32 noundef 104, ptr noundef %ctxt_info_dma_addr, i32 noundef 3264, i32 noundef 0) #3
  %tobool28.not = icmp eq ptr %call.i192, null
  br i1 %tobool28.not, label %if.end25.err_free_prph_info_crit_edge, label %if.end30

if.end25.err_free_prph_info_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_free_prph_info

if.end30:                                         ; preds = %if.end25
  %74 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %prph_info_dma_addr, align 4
  %conv32 = zext i32 %75 to i64
  %76 = tail call i64 @llvm.bswap.i64(i64 %conv32)
  %prph_info_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 3
  %77 = ptrtoint ptr %prph_info_base_addr to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %prph_info_base_addr, align 1
  %78 = ptrtoint ptr %prph_scratch_dma_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %prph_scratch_dma_addr, align 8
  %conv34 = zext i32 %79 to i64
  %80 = tail call i64 @llvm.bswap.i64(i64 %conv34)
  %prph_scratch_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 24
  %81 = ptrtoint ptr %prph_scratch_base_addr to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %80, ptr %prph_scratch_base_addr, align 1
  %prph_scratch_size = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 25
  %82 = ptrtoint ptr %prph_scratch_size to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 2080768000, ptr %prph_scratch_size, align 1
  %83 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %trans_specific.i, align 128
  %rb_stts_dma = getelementptr inbounds %struct.iwl_rxq, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %rb_stts_dma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rb_stts_dma, align 4
  %conv36 = zext i32 %86 to i64
  %87 = tail call i64 @llvm.bswap.i64(i64 %conv36)
  %cr_head_idx_arr_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 4
  %88 = ptrtoint ptr %cr_head_idx_arr_base_addr to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %cr_head_idx_arr_base_addr, align 1
  %89 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %prph_info_dma_addr, align 4
  %add = add i32 %90, 2048
  %conv38 = zext i32 %add to i64
  %91 = tail call i64 @llvm.bswap.i64(i64 %conv38)
  %tr_tail_idx_arr_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 5
  %92 = ptrtoint ptr %tr_tail_idx_arr_base_addr to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %91, ptr %tr_tail_idx_arr_base_addr, align 1
  %93 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %prph_info_dma_addr, align 4
  %add40 = add i32 %94, 3072
  %conv41 = zext i32 %add40 to i64
  %95 = tail call i64 @llvm.bswap.i64(i64 %conv41)
  %cr_tail_idx_arr_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 6
  %96 = ptrtoint ptr %cr_tail_idx_arr_base_addr to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %cr_tail_idx_arr_base_addr, align 1
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %97 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %98 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.iwl_txq, ptr %100, i32 0, i32 17
  %101 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dma_addr, align 4
  %conv43 = zext i32 %102 to i64
  %103 = tail call i64 @llvm.bswap.i64(i64 %conv43)
  %mtr_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 10
  %104 = ptrtoint ptr %mtr_base_addr to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 %103, ptr %mtr_base_addr, align 1
  %105 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %trans_specific.i, align 128
  %used_bd_dma = getelementptr inbounds %struct.iwl_rxq, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %used_bd_dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %used_bd_dma, align 8
  %conv45 = zext i32 %108 to i64
  %109 = tail call i64 @llvm.bswap.i64(i64 %conv45)
  %mcr_base_addr = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 11
  %110 = ptrtoint ptr %mcr_base_addr to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %mcr_base_addr, align 1
  %111 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #3, !range !35
  %112 = trunc i32 %111 to i16
  %conv59 = sub nsw i16 28, %112
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  %mtr_size = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 12
  %114 = ptrtoint ptr %mtr_size to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %mtr_size, align 1
  %115 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg, align 8
  %num_rbds = getelementptr inbounds %struct.iwl_cfg, ptr %116, i32 0, i32 29
  %117 = ptrtoint ptr %num_rbds to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %num_rbds, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i.i = icmp eq i16 %118, 0
  %119 = call i16 @llvm.ctlz.i16(i16 %118, i1 true), !range !36
  %120 = xor i16 %119, 15
  %conv83 = select i1 %tobool.not.i.i, i16 -1, i16 %120
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv83)
  %mcr_size = getelementptr inbounds %struct.iwl_context_info_gen3, ptr %call.i192, i32 0, i32 13
  %122 = ptrtoint ptr %mcr_size to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %121, ptr %mcr_size, align 1
  %123 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 20
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i192, ptr %123, align 128
  %prph_info84 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 21
  %125 = ptrtoint ptr %prph_info84 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i191, ptr %prph_info84, align 4
  %prph_scratch85 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 22
  %126 = ptrtoint ptr %prph_scratch85 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i, ptr %prph_scratch85, align 8
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 8
  %iml_len = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 26
  %129 = ptrtoint ptr %iml_len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %iml_len, align 4
  %iml_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 3
  %call.i194 = tail call ptr @dma_alloc_attrs(ptr noundef %128, i32 noundef %130, ptr noundef %iml_dma_addr, i32 noundef 3264, i32 noundef 0) #3
  %iml = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 23
  %131 = ptrtoint ptr %iml to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i194, ptr %iml, align 4
  %tobool89.not = icmp eq ptr %call.i194, null
  br i1 %tobool89.not, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 8
  %134 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %123, align 128
  %136 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ctxt_info_dma_addr, align 16
  tail call void @dma_free_attrs(ptr noundef %133, i32 noundef 104, ptr noundef %135, i32 noundef %137, i32 noundef 0) #3
  %138 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %123, align 128
  br label %err_free_prph_info

if.end91:                                         ; preds = %if.end30
  %iml93 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 27
  %139 = ptrtoint ptr %iml93 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iml93, align 8
  %141 = ptrtoint ptr %iml_len to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %iml_len, align 4
  %143 = call ptr @memcpy(ptr %call.i194, ptr %140, i32 %142)
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %145, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_fw_load_int_ctx_info, ptr noundef nonnull @.str.9) #3
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %146 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %msix_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i196 = icmp eq i8 %147, 0
  br i1 %tobool.not.i196, label %if.then.i197, label %if.else.i

if.then.i197:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #5
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %148 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -2147483647, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -2147483647) #3
  br label %iwl_enable_fw_load_int_ctx_info.exit

if.else.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -2) #3
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %149 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %hw_mask.i.i, align 4
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %150 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fh_init_mask.i, align 32
  %neg.i.i = xor i32 %151, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i.i) #3
  %fh_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %152 = ptrtoint ptr %fh_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %fh_mask.i.i, align 8
  br label %iwl_enable_fw_load_int_ctx_info.exit

iwl_enable_fw_load_int_ctx_info.exit:             ; preds = %if.else.i, %if.then.i197
  %153 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ctxt_info_dma_addr, align 16
  %conv96 = zext i32 %154 to i64
  tail call void @iwl_write64(ptr noundef %trans, i64 noundef 280, i64 noundef %conv96) #3
  %155 = ptrtoint ptr %iml_dma_addr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %iml_dma_addr, align 4
  %conv98 = zext i32 %156 to i64
  tail call void @iwl_write64(ptr noundef %trans, i64 noundef 288, i64 noundef %conv98) #3
  %157 = ptrtoint ptr %iml_len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %iml_len, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 296, i32 noundef %158) #3
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %159 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %160, i32 0, i32 34
  %161 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %162(ptr noundef %trans, i32 noundef 0, i32 noundef 2, i32 noundef 2) #3
  br label %cleanup

err_free_prph_info:                               ; preds = %if.then90, %if.end25.err_free_prph_info_crit_edge
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 8
  %165 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %prph_info_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %164, i32 noundef 4096, ptr noundef nonnull %call.i191, i32 noundef %166, i32 noundef 0) #3
  br label %err_free_prph_scratch

err_free_prph_scratch:                            ; preds = %err_free_prph_info, %do.end.err_free_prph_scratch_crit_edge, %iwl_pcie_ctxt_info_dbg_enable.exit.err_free_prph_scratch_crit_edge
  %ret.1 = phi i32 [ %call17, %iwl_pcie_ctxt_info_dbg_enable.exit.err_free_prph_scratch_crit_edge ], [ -12, %err_free_prph_info ], [ -12, %do.end.err_free_prph_scratch_crit_edge ]
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 8
  %169 = ptrtoint ptr %prph_scratch_dma_addr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %prph_scratch_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %168, i32 noundef 1660, ptr noundef nonnull %call.i, i32 noundef %170, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %err_free_prph_scratch, %iwl_enable_fw_load_int_ctx_info.exit, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_prph_scratch ], [ 0, %iwl_enable_fw_load_int_ctx_info.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_init_fw_sec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_ctxt_info_gen3_free(ptr nocapture noundef %trans, i1 noundef zeroext %alive) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iml = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 23
  %0 = ptrtoint ptr %iml to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iml, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %iml_len = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 26
  %4 = ptrtoint ptr %iml_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iml_len, align 4
  %iml_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %iml_dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iml_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #3
  %8 = ptrtoint ptr %iml_dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iml_dma_addr, align 4
  %9 = ptrtoint ptr %iml to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %iml, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init_dram.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33
  %10 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_dram.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %fw_cnt.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_cnt.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp47.i = icmp sgt i32 %13, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %if.then.i.iwl_pcie_ctxt_info_free_fw_img.exit_crit_edge, label %do.end.i, !prof !38

if.then.i.iwl_pcie_ctxt_info_free_fw_img.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %iwl_pcie_ctxt_info_free_fw_img.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 561, i32 noundef 9, ptr noundef null) #3
  br label %iwl_pcie_ctxt_info_free_fw_img.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %16 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_dram.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_dram_data, ptr %17, i32 %i.048.i
  %size.i = getelementptr %struct.iwl_dram_data, ptr %17, i32 %i.048.i, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %block.i = getelementptr %struct.iwl_dram_data, ptr %17, i32 %i.048.i, i32 1
  %20 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %block.i, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #3
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %24 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_dram.i, align 4
  tail call void @kfree(ptr noundef %27) #3
  %28 = ptrtoint ptr %fw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %fw_cnt.i, align 4
  %29 = ptrtoint ptr %init_dram.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %init_dram.i, align 4
  br label %iwl_pcie_ctxt_info_free_fw_img.exit

iwl_pcie_ctxt_info_free_fw_img.exit:              ; preds = %for.end.i, %do.end.i, %if.then.i.iwl_pcie_ctxt_info_free_fw_img.exit_crit_edge
  br i1 %alive, label %iwl_pcie_ctxt_info_free_fw_img.exit.cleanup_crit_edge, label %if.end6

iwl_pcie_ctxt_info_free_fw_img.exit.cleanup_crit_edge: ; preds = %iwl_pcie_ctxt_info_free_fw_img.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %iwl_pcie_ctxt_info_free_fw_img.exit
  %30 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 20
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  %tobool7.not = icmp eq ptr %32, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %dev10 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %33 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev10, align 8
  %ctxt_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24
  %35 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctxt_info_dma_addr, align 16
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef 104, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #3
  %37 = ptrtoint ptr %ctxt_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ctxt_info_dma_addr, align 16
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %30, align 128
  %39 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev10, align 8
  %prph_scratch = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 22
  %41 = ptrtoint ptr %prph_scratch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prph_scratch, align 8
  %prph_scratch_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %prph_scratch_dma_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prph_scratch_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %40, i32 noundef 1660, ptr noundef %42, i32 noundef %44, i32 noundef 0) #3
  %45 = ptrtoint ptr %prph_scratch_dma_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %prph_scratch_dma_addr, align 8
  %46 = ptrtoint ptr %prph_scratch to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %prph_scratch, align 8
  %47 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev10, align 8
  %prph_info = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 21
  %49 = ptrtoint ptr %prph_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prph_info, align 4
  %prph_info_dma_addr = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prph_info_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef 4096, ptr noundef %50, i32 noundef %52, i32 noundef 0) #3
  %53 = ptrtoint ptr %prph_info_dma_addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %prph_info_dma_addr, align 4
  %54 = ptrtoint ptr %prph_info to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %prph_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %iwl_pcie_ctxt_info_free_fw_img.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_pcie_ctx_info_gen3_set_pnvm(ptr noundef %trans, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prph_scratch = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 22
  %0 = ptrtoint ptr %prph_scratch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prph_scratch, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ult i32 %5, 19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pnvm_loaded = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 20
  %6 = ptrtoint ptr %pnvm_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %pnvm_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then1, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then1:                                         ; preds = %if.end
  %pnvm_size = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %pnvm_size to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %pnvm_size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end26, label %do.end, !prof !38

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end26:                                         ; preds = %if.then1
  %pnvm_dram = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 195
  %call27 = tail call i32 @iwl_pcie_ctxt_info_alloc_dma(ptr noundef %trans, ptr noundef %data, i32 noundef %len, ptr noundef %pnvm_dram) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_ctx_info_gen3_set_pnvm, ptr noundef nonnull @.str.1, i32 noundef %call27) #3
  br label %cleanup

if.end37:                                         ; preds = %if.end26.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %pnvm_dram38 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 195
  %11 = ptrtoint ptr %pnvm_dram38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pnvm_dram38, align 8
  %conv = zext i32 %12 to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %pnvm_cfg39 = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pnvm_cfg39 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %pnvm_cfg39, align 1
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 197
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %pnvm_size42 = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pnvm_size42 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %pnvm_size42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end33, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -16, %do.end ], [ %call27, %do.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_ctxt_info_alloc_dma(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_trans_pcie_ctx_info_gen3_set_reduce_power(ptr noundef %trans, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prph_scratch = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 22
  %0 = ptrtoint ptr %prph_scratch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prph_scratch, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ult i32 %5, 19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %reduce_power_loaded = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 20
  %6 = ptrtoint ptr %reduce_power_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reduce_power_loaded, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then1:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end26, label %do.end, !prof !38

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end26:                                         ; preds = %if.then1
  %reduce_power_dram = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 198
  %call27 = tail call i32 @iwl_pcie_ctxt_info_alloc_dma(ptr noundef %trans, ptr noundef %data, i32 noundef %len, ptr noundef %reduce_power_dram) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_ctx_info_gen3_set_reduce_power, ptr noundef nonnull @.str.2, i32 noundef %call27) #3
  br label %cleanup

if.end37:                                         ; preds = %if.end26.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %reduce_power_dram38 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 198
  %12 = ptrtoint ptr %reduce_power_dram38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reduce_power_dram38, align 4
  %conv = zext i32 %13 to i64
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %reduce_power_cfg39 = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %reduce_power_cfg39 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %reduce_power_cfg39, align 1
  %size41 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 200
  %16 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size41, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %size43 = getelementptr inbounds %struct.iwl_prph_scratch_ctrl_cfg, ptr %1, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %size43 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %size43, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end33, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -16, %do.end ], [ %call27, %do.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_alloc_fw_monitor(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 290, i32 7}
!2 = !{ptr @__func__.iwl_trans_pcie_ctx_info_gen3_set_pnvm, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 296, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.iwl_trans_pcie_ctx_info_gen3_set_reduce_power, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 329, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.iwl_pcie_ctxt_info_dbg_enable, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 28, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 43, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 49, i32 3}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 61, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 64, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/ctxt-info-gen3.c", i32 71, i32 3}
!21 = !{ptr @__func__.iwl_enable_fw_load_int_ctx_info, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 650, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 561, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i32 0, i32 33}
!36 = !{i16 0, i16 17}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 2000, i32 1}
