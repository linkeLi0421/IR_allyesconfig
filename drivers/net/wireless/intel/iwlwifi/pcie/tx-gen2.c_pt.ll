; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.153, %struct.anon.154, %struct.iwl_dma_ptr }
%struct.anon.153 = type { i8, i8, i32 }
%struct.anon.154 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_pcie_txq_entry = type { ptr, ptr, ptr, %struct.iwl_cmd_meta }
%struct.iwl_cmd_meta = type { ptr, i32, i32 }
%struct.iwl_cmd_header_wide = type { i8, i8, i16, i16, i8, i8 }
%struct.iwl_pcie_first_tb_buf = type { [64 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Command %s (%#x) is too large (%d bytes)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No space in command queue\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_gen2_enqueue_hcmd = private unnamed_addr constant [27 x i8] c"iwl_pcie_gen2_enqueue_hcmd\00", align 1
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Sending command %s (%.2x.%.2x), seq: 0x%04X, %d bytes at %d[%d]:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_pcie_gen2_enqueue_hcmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_iwlwifi_dev_hcmd = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", [38 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_hcmd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 68, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 105, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 121, i32 3 }
@___asan_gen_.19 = private constant [53 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 187, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 326, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant [61 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 18, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_gen2_enqueue_hcmd(ptr noundef %trans, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %0 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %and.i = lshr i32 %5, 8
  %conv.i = trunc i32 %and.i to i8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %arrayidx7 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.inc.thread, label %if.end30

if.end30:                                         ; preds = %entry
  %conv16 = zext i16 %9 to i32
  %10 = tail call i32 @llvm.smin.i32(i32 %conv16, i32 12)
  %11 = trunc i32 %10 to i16
  %conv26 = sub i16 %9, %11
  %add.ptr = getelementptr i8, ptr %7, i32 %10
  %arrayidx31 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %13 to i32
  %and = and i32 %conv32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %and67 = and i32 %conv32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end30
  br i1 %tobool68.not, label %if.then34.for.inc_crit_edge, label %if.then34.do.end_crit_edge, !prof !33

if.then34.do.end_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %if.then34.1.do.end_crit_edge, %if.then34.do.end_crit_edge
  %dup_buf.0806.lcssa = phi ptr [ null, %if.then34.do.end_crit_edge ], [ %dup_buf.2840858, %if.then34.1.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #5
  br label %if.then505

if.else:                                          ; preds = %if.end30
  br i1 %tobool68.not, label %if.else.for.inc_crit_edge, label %if.end103

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end87:                                         ; preds = %if.then69.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #5
  br label %if.then505

if.end103:                                        ; preds = %if.else
  %conv106 = zext i16 %conv26 to i32
  %call107 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %conv106, i32 noundef 2592) #5
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %if.end103.cleanup507_crit_edge, label %if.end103.for.inc_crit_edge

if.end103.for.inc_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end103.cleanup507_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup507

do.end129:                                        ; preds = %if.else111.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef null) #5
  br label %if.then505

for.inc:                                          ; preds = %if.end103.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then34.for.inc_crit_edge
  %copy_size.2.in = phi i16 [ %11, %if.end103.for.inc_crit_edge ], [ %11, %if.then34.for.inc_crit_edge ], [ %9, %if.else.for.inc_crit_edge ]
  %had_nocopy.1.off0 = phi i1 [ true, %if.end103.for.inc_crit_edge ], [ true, %if.then34.for.inc_crit_edge ], [ false, %if.else.for.inc_crit_edge ]
  %dup_buf.1 = phi ptr [ %call107, %if.end103.for.inc_crit_edge ], [ null, %if.then34.for.inc_crit_edge ], [ null, %if.else.for.inc_crit_edge ]
  %copy_size.2 = add i16 %copy_size.2.in, 8
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx7, align 2
  %add157 = add i16 %15, 8
  %arrayidx5.1 = getelementptr [2 x ptr], ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.1, align 4
  %arrayidx7.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx7.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.1 = icmp eq i16 %19, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.thread:                                   ; preds = %entry
  %arrayidx5.1830 = getelementptr [2 x ptr], ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx5.1830 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.1830, align 4
  %arrayidx7.1831 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx7.1831 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx7.1831, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.1832 = icmp eq i16 %23, 0
  br i1 %tobool.not.1832, label %for.inc.thread.do.body200_crit_edge, label %for.inc.thread.if.then13.1_crit_edge

for.inc.thread.if.then13.1_crit_edge:             ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.1

for.inc.thread.do.body200_crit_edge:              ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.2)
  %cmp11.1 = icmp ult i16 %copy_size.2, 20
  br i1 %cmp11.1, label %if.end.1.if.then13.1_crit_edge, label %if.end.1.if.end30.1_crit_edge

if.end.1.if.end30.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.1

if.end.1.if.then13.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.1

if.then13.1:                                      ; preds = %if.end.1.if.then13.1_crit_edge, %for.inc.thread.if.then13.1_crit_edge
  %cmddata.sroa.0.1833868 = phi ptr [ %add.ptr, %if.end.1.if.then13.1_crit_edge ], [ %7, %for.inc.thread.if.then13.1_crit_edge ]
  %cmdlen.sroa.0.1835866 = phi i16 [ %conv26, %if.end.1.if.then13.1_crit_edge ], [ 0, %for.inc.thread.if.then13.1_crit_edge ]
  %copy_size.3837864 = phi i16 [ %copy_size.2, %if.end.1.if.then13.1_crit_edge ], [ 8, %for.inc.thread.if.then13.1_crit_edge ]
  %cmd_size.1838863 = phi i16 [ %add157, %if.end.1.if.then13.1_crit_edge ], [ 8, %for.inc.thread.if.then13.1_crit_edge ]
  %had_nocopy.2.off0839861 = phi i1 [ %had_nocopy.1.off0, %if.end.1.if.then13.1_crit_edge ], [ false, %for.inc.thread.if.then13.1_crit_edge ]
  %dup_buf.2840859 = phi ptr [ %dup_buf.1, %if.end.1.if.then13.1_crit_edge ], [ null, %for.inc.thread.if.then13.1_crit_edge ]
  %arrayidx5.1841857 = phi ptr [ %arrayidx5.1, %if.end.1.if.then13.1_crit_edge ], [ %arrayidx5.1830, %for.inc.thread.if.then13.1_crit_edge ]
  %24 = phi ptr [ %17, %if.end.1.if.then13.1_crit_edge ], [ %21, %for.inc.thread.if.then13.1_crit_edge ]
  %arrayidx7.1843855 = phi ptr [ %arrayidx7.1, %if.end.1.if.then13.1_crit_edge ], [ %arrayidx7.1831, %for.inc.thread.if.then13.1_crit_edge ]
  %25 = phi i16 [ %19, %if.end.1.if.then13.1_crit_edge ], [ %23, %for.inc.thread.if.then13.1_crit_edge ]
  %conv.1 = zext i16 %copy_size.3837864 to i32
  %sub.1 = sub nsw i32 20, %conv.1
  %conv16.1 = zext i16 %25 to i32
  %26 = tail call i32 @llvm.smin.i32(i32 %sub.1, i32 %conv16.1)
  %27 = trunc i32 %26 to i16
  %conv26.1 = sub i16 %25, %27
  %add.ptr.1 = getelementptr i8, ptr %24, i32 %26
  %conv29.1 = add i16 %copy_size.3837864, %27
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.then13.1, %if.end.1.if.end30.1_crit_edge
  %cmddata.sroa.0.1833867 = phi ptr [ %cmddata.sroa.0.1833868, %if.then13.1 ], [ %add.ptr, %if.end.1.if.end30.1_crit_edge ]
  %cmdlen.sroa.0.1835865 = phi i16 [ %cmdlen.sroa.0.1835866, %if.then13.1 ], [ %conv26, %if.end.1.if.end30.1_crit_edge ]
  %cmd_size.1838862 = phi i16 [ %cmd_size.1838863, %if.then13.1 ], [ %add157, %if.end.1.if.end30.1_crit_edge ]
  %had_nocopy.2.off0839860 = phi i1 [ %had_nocopy.2.off0839861, %if.then13.1 ], [ %had_nocopy.1.off0, %if.end.1.if.end30.1_crit_edge ]
  %dup_buf.2840858 = phi ptr [ %dup_buf.2840859, %if.then13.1 ], [ %dup_buf.1, %if.end.1.if.end30.1_crit_edge ]
  %arrayidx5.1841856 = phi ptr [ %arrayidx5.1841857, %if.then13.1 ], [ %arrayidx5.1, %if.end.1.if.end30.1_crit_edge ]
  %arrayidx7.1843854 = phi ptr [ %arrayidx7.1843855, %if.then13.1 ], [ %arrayidx7.1, %if.end.1.if.end30.1_crit_edge ]
  %cmddata.sroa.7.0 = phi ptr [ %add.ptr.1, %if.then13.1 ], [ %17, %if.end.1.if.end30.1_crit_edge ]
  %cmdlen.sroa.8.0 = phi i16 [ %conv26.1, %if.then13.1 ], [ %19, %if.end.1.if.end30.1_crit_edge ]
  %copy_size.1.1 = phi i16 [ %conv29.1, %if.then13.1 ], [ %copy_size.2, %if.end.1.if.end30.1_crit_edge ]
  %arrayidx31.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx31.1, align 1
  %conv32.1 = zext i8 %29 to i32
  %and.1 = and i32 %conv32.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool33.not.1 = icmp eq i32 %and.1, 0
  %and67.1 = and i32 %conv32.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.1)
  %tobool68.not.1 = icmp eq i32 %and67.1, 0
  br i1 %tobool33.not.1, label %if.else.1, label %if.then34.1

if.then34.1:                                      ; preds = %if.end30.1
  br i1 %tobool68.not.1, label %if.then34.1.if.end152.1_crit_edge, label %if.then34.1.do.end_crit_edge, !prof !33

if.then34.1.do.end_crit_edge:                     ; preds = %if.then34.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then34.1.if.end152.1_crit_edge:                ; preds = %if.then34.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.1

if.else.1:                                        ; preds = %if.end30.1
  br i1 %tobool68.not.1, label %if.else111.1, label %if.then69.1

if.then69.1:                                      ; preds = %if.else.1
  %tobool71.not.1 = icmp eq ptr %dup_buf.2840858, null
  br i1 %tobool71.not.1, label %if.end103.1, label %do.end87, !prof !33

if.end103.1:                                      ; preds = %if.then69.1
  %conv106.1 = zext i16 %cmdlen.sroa.8.0 to i32
  %call107.1 = tail call ptr @kmemdup(ptr noundef %cmddata.sroa.7.0, i32 noundef %conv106.1, i32 noundef 2592) #5
  %tobool108.not.1 = icmp eq ptr %call107.1, null
  br i1 %tobool108.not.1, label %if.end103.1.cleanup507_crit_edge, label %if.end103.1.if.end152.1_crit_edge

if.end103.1.if.end152.1_crit_edge:                ; preds = %if.end103.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.1

if.end103.1.cleanup507_crit_edge:                 ; preds = %if.end103.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup507

if.else111.1:                                     ; preds = %if.else.1
  br i1 %had_nocopy.2.off0839860, label %do.end129, label %if.end145.1, !prof !34

if.end145.1:                                      ; preds = %if.else111.1
  call void @__sanitizer_cov_trace_pc() #7
  %add149.1 = add i16 %cmdlen.sroa.8.0, %copy_size.1.1
  br label %if.end152.1

if.end152.1:                                      ; preds = %if.end145.1, %if.end103.1.if.end152.1_crit_edge, %if.then34.1.if.end152.1_crit_edge
  %copy_size.2.1 = phi i16 [ %copy_size.1.1, %if.end103.1.if.end152.1_crit_edge ], [ %add149.1, %if.end145.1 ], [ %copy_size.1.1, %if.then34.1.if.end152.1_crit_edge ]
  %dup_buf.1.1 = phi ptr [ %call107.1, %if.end103.1.if.end152.1_crit_edge ], [ %dup_buf.2840858, %if.end145.1 ], [ %dup_buf.2840858, %if.then34.1.if.end152.1_crit_edge ]
  %30 = ptrtoint ptr %arrayidx7.1843854 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx7.1843854, align 2
  %add157.1 = add i16 %31, %cmd_size.1838862
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end152.1, %for.inc.for.inc.1_crit_edge
  %arrayidx7.1844 = phi ptr [ %arrayidx7.1, %for.inc.for.inc.1_crit_edge ], [ %arrayidx7.1843854, %if.end152.1 ]
  %arrayidx5.1842 = phi ptr [ %arrayidx5.1, %for.inc.for.inc.1_crit_edge ], [ %arrayidx5.1841856, %if.end152.1 ]
  %cmdlen.sroa.0.1836 = phi i16 [ %conv26, %for.inc.for.inc.1_crit_edge ], [ %cmdlen.sroa.0.1835865, %if.end152.1 ]
  %cmddata.sroa.0.1834 = phi ptr [ %add.ptr, %for.inc.for.inc.1_crit_edge ], [ %cmddata.sroa.0.1833867, %if.end152.1 ]
  %cmddata.sroa.7.1 = phi ptr [ %17, %for.inc.for.inc.1_crit_edge ], [ %cmddata.sroa.7.0, %if.end152.1 ]
  %cmdlen.sroa.8.1 = phi i16 [ 0, %for.inc.for.inc.1_crit_edge ], [ %cmdlen.sroa.8.0, %if.end152.1 ]
  %copy_size.3.1 = phi i16 [ %copy_size.2, %for.inc.for.inc.1_crit_edge ], [ %copy_size.2.1, %if.end152.1 ]
  %cmd_size.1.1 = phi i16 [ %add157, %for.inc.for.inc.1_crit_edge ], [ %add157.1, %if.end152.1 ]
  %dup_buf.2.1 = phi ptr [ %dup_buf.1, %for.inc.for.inc.1_crit_edge ], [ %dup_buf.1.1, %if.end152.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 324, i16 %copy_size.3.1)
  %cmp161 = icmp ugt i16 %copy_size.3.1, 324
  br i1 %cmp161, label %do.end178, label %for.inc.1.do.body200_crit_edge, !prof !34

for.inc.1.do.body200_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200

do.end178:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv160 = zext i16 %copy_size.3.1 to i32
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %call180 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %33) #5
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call180, i32 noundef %35, i32 noundef %conv160) #5
  br label %if.then505

do.body200:                                       ; preds = %for.inc.1.do.body200_crit_edge, %for.inc.thread.do.body200_crit_edge
  %dup_buf.2.1886 = phi ptr [ %dup_buf.2.1, %for.inc.1.do.body200_crit_edge ], [ null, %for.inc.thread.do.body200_crit_edge ]
  %cmd_size.1.1885 = phi i16 [ %cmd_size.1.1, %for.inc.1.do.body200_crit_edge ], [ 8, %for.inc.thread.do.body200_crit_edge ]
  %cmdlen.sroa.8.1884 = phi i16 [ %cmdlen.sroa.8.1, %for.inc.1.do.body200_crit_edge ], [ 0, %for.inc.thread.do.body200_crit_edge ]
  %cmddata.sroa.7.1883 = phi ptr [ %cmddata.sroa.7.1, %for.inc.1.do.body200_crit_edge ], [ %21, %for.inc.thread.do.body200_crit_edge ]
  %cmddata.sroa.0.1834882 = phi ptr [ %cmddata.sroa.0.1834, %for.inc.1.do.body200_crit_edge ], [ %7, %for.inc.thread.do.body200_crit_edge ]
  %cmdlen.sroa.0.1836881 = phi i16 [ %cmdlen.sroa.0.1836, %for.inc.1.do.body200_crit_edge ], [ 0, %for.inc.thread.do.body200_crit_edge ]
  %arrayidx5.1842880 = phi ptr [ %arrayidx5.1842, %for.inc.1.do.body200_crit_edge ], [ %arrayidx5.1830, %for.inc.thread.do.body200_crit_edge ]
  %arrayidx7.1844879 = phi ptr [ %arrayidx7.1844, %for.inc.1.do.body200_crit_edge ], [ %arrayidx7.1831, %for.inc.thread.do.body200_crit_edge ]
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 4
  %call205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 15
  %36 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %write_ptr, align 4
  %n_window.i = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 18
  %38 = ptrtoint ptr %n_window.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_window.i, align 4
  %sub.i = add i32 %39, 65535
  %and.i725 = and i32 %37, 65535
  %conv211 = and i32 %and.i725, %sub.i
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %40 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %43 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  %idx.addr.0.i = select i1 %tobool.not.i, i32 %37, i32 %conv211
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size.i, align 2
  %conv1.i = zext i16 %47 to i32
  %mul.i = mul i32 %idx.addr.0.i, %conv1.i
  %add.ptr.i = getelementptr i8, ptr %45, i32 %mul.i
  %48 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 256)
  %call214 = tail call i32 @iwl_txq_space(ptr noundef %trans, ptr noundef %3) #5
  %flags215 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %49 = ptrtoint ptr %flags215 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags215, align 4
  %and216 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  %cond = select i1 %tobool217.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call214, i32 %cond)
  %cmp218 = icmp slt i32 %call214, %cond
  br i1 %cmp218, label %if.then220, label %if.end228

if.then220:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call205) #5
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.2) #5
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %53 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %op_mode, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %cmd_queue_full.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %cmd_queue_full.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmd_queue_full.i, align 4
  tail call void %58(ptr noundef %54) #5
  br label %if.then505

if.end228:                                        ; preds = %do.body200
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %entries, align 4
  %arrayidx229 = getelementptr %struct.iwl_pcie_txq_entry, ptr %60, i32 %conv211
  %61 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx229, align 4
  %meta = getelementptr %struct.iwl_pcie_txq_entry, ptr %60, i32 %conv211, i32 3
  %63 = call ptr @memset(ptr %meta, i32 0, i32 12)
  %64 = ptrtoint ptr %flags215 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags215, align 4
  %and234 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %if.end228.if.end237_crit_edge, label %if.then236

if.end228.if.end237_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end237

if.then236:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cmd, ptr %meta, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %if.end228.if.end237_crit_edge
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 4
  %conv.i728 = trunc i32 %68 to i8
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i728, ptr %62, align 1
  %group_id242 = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %group_id242 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i, ptr %group_id242, align 1
  %71 = load i32, ptr %id, align 4
  %and.i729 = lshr i32 %71, 16
  %conv.i730 = trunc i32 %and.i729 to i8
  %version = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %62, i32 0, i32 5
  %72 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv.i730, ptr %version, align 1
  %sub247 = add i16 %cmd_size.1.1885, -8
  %73 = tail call i16 @llvm.bswap.i16(i16 %sub247)
  %length = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %62, i32 0, i32 3
  %74 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %length, align 1
  %reserved = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %62, i32 0, i32 4
  %75 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %reserved, align 1
  %76 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %q_id, align 1
  %78 = and i8 %77, 31
  %and255 = zext i8 %78 to i32
  %shl = shl nuw nsw i32 %and255, 8
  %79 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %write_ptr, align 4
  %and257 = and i32 %80, 255
  %or = or i32 %shl, %and257
  %conv258 = trunc i32 %or to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv258)
  %sequence = getelementptr inbounds %struct.iwl_cmd_header_wide, ptr %62, i32 0, i32 2
  %82 = ptrtoint ptr %sequence to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %sequence, align 1
  %83 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool267.not = icmp eq i16 %84, 0
  br i1 %tobool267.not, label %if.end237.cleanup_crit_edge, label %if.end269

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end269:                                        ; preds = %if.end237
  %arrayidx271 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %85 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx271, align 1
  %87 = and i8 %86, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool274.not = icmp eq i8 %87, 0
  %conv278 = zext i16 %84 to i32
  br i1 %tobool274.not, label %if.then275, label %if.then302

if.then275:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr279 = getelementptr i8, ptr %62, i32 8
  %88 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd, align 4
  %90 = call ptr @memcpy(ptr %add.ptr279, ptr %89, i32 %conv278)
  %add282 = add nuw nsw i32 %conv278, 8
  %add284 = add i16 %84, 8
  br label %cleanup

if.then302:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  %91 = tail call i32 @llvm.smin.i32(i32 %conv278, i32 316)
  %add.ptr295 = getelementptr i8, ptr %62, i32 8
  %92 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cmd, align 4
  %94 = call ptr @memcpy(ptr %add.ptr295, ptr %93, i32 %91)
  %add298 = add nuw nsw i32 %91, 8
  %95 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx7, align 2
  %conv307 = zext i16 %96 to i32
  %97 = tail call i32 @llvm.smin.i32(i32 %conv307, i32 12)
  %98 = trunc i32 %97 to i16
  %conv317 = add nuw nsw i16 %98, 8
  br label %cleanup

cleanup:                                          ; preds = %if.then302, %if.then275, %if.end237.cleanup_crit_edge
  %copy_size.6 = phi i16 [ %add284, %if.then275 ], [ 8, %if.end237.cleanup_crit_edge ], [ %conv317, %if.then302 ]
  %cmd_pos.1 = phi i32 [ %add282, %if.then275 ], [ 8, %if.end237.cleanup_crit_edge ], [ %add298, %if.then302 ]
  %99 = ptrtoint ptr %arrayidx7.1844879 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx7.1844879, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool267.not.1 = icmp eq i16 %100, 0
  br i1 %tobool267.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end269.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.end269.1:                                      ; preds = %cleanup
  %arrayidx271.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %arrayidx271.1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx271.1, align 1
  %103 = and i8 %102, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool274.not.1 = icmp eq i8 %103, 0
  br i1 %tobool274.not.1, label %if.then275.1, label %if.end286.1

if.end286.1:                                      ; preds = %if.end269.1
  %sub287.1 = sub nsw i32 324, %cmd_pos.1
  %conv290.1 = zext i16 %100 to i32
  %104 = tail call i32 @llvm.smin.i32(i32 %sub287.1, i32 %conv290.1)
  %add.ptr295.1 = getelementptr i8, ptr %62, i32 %cmd_pos.1
  %105 = ptrtoint ptr %arrayidx5.1842880 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx5.1842880, align 4
  %107 = call ptr @memcpy(ptr %add.ptr295.1, ptr %106, i32 %104)
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.6)
  %cmp300.1 = icmp ult i16 %copy_size.6, 20
  br i1 %cmp300.1, label %if.then302.1, label %if.end286.1.cleanup.1_crit_edge

if.end286.1.cleanup.1_crit_edge:                  ; preds = %if.end286.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.then302.1:                                     ; preds = %if.end286.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv299.1 = zext i16 %copy_size.6 to i32
  %sub304.1 = sub nsw i32 20, %conv299.1
  %108 = ptrtoint ptr %arrayidx7.1844879 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx7.1844879, align 2
  %conv307.1 = zext i16 %109 to i32
  %110 = tail call i32 @llvm.smin.i32(i32 %sub304.1, i32 %conv307.1)
  %111 = trunc i32 %110 to i16
  %conv317.1 = add i16 %copy_size.6, %111
  br label %cleanup.1

if.then275.1:                                     ; preds = %if.end269.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv278.1 = zext i16 %100 to i32
  %add.ptr279.1 = getelementptr i8, ptr %62, i32 %cmd_pos.1
  %112 = ptrtoint ptr %arrayidx5.1842880 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx5.1842880, align 4
  %114 = call ptr @memcpy(ptr %add.ptr279.1, ptr %113, i32 %conv278.1)
  %add284.1 = add i16 %100, %copy_size.6
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then275.1, %if.then302.1, %if.end286.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %copy_size.6.1 = phi i16 [ %add284.1, %if.then275.1 ], [ %copy_size.6, %cleanup.cleanup.1_crit_edge ], [ %conv317.1, %if.then302.1 ], [ %copy_size.6, %if.end286.1.cleanup.1_crit_edge ]
  %conv246 = zext i16 %cmd_size.1.1885 to i32
  %dev326 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %115 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev326, align 8
  %117 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id, align 4
  %call328 = tail call ptr @iwl_get_cmd_string(ptr noundef %trans, i32 noundef %118) #5
  %conv329 = and i32 %and.i, 255
  %119 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %62, align 1
  %conv331 = zext i8 %120 to i32
  %121 = ptrtoint ptr %sequence to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %sequence, align 1
  %123 = tail call i16 @llvm.bswap.i16(i16 %122)
  %conv334 = zext i16 %123 to i32
  %124 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %write_ptr, align 4
  %126 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %q_id, align 1
  %conv340 = zext i8 %127 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %116, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_gen2_enqueue_hcmd, ptr noundef nonnull @.str.3, ptr noundef %call328, i32 noundef %conv329, i32 noundef %conv331, i32 noundef %conv334, i32 noundef %conv246, i32 noundef %125, i32 noundef %conv211, i32 noundef %conv340) #5
  %128 = tail call i16 @llvm.umin.i16(i16 %copy_size.6.1, i16 20)
  %first_tb_bufs = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 1
  %129 = ptrtoint ptr %first_tb_bufs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %first_tb_bufs, align 4
  %arrayidx352 = getelementptr %struct.iwl_pcie_first_tb_buf, ptr %130, i32 %conv211
  %conv353 = zext i16 %128 to i32
  %131 = call ptr @memcpy(ptr %arrayidx352, ptr %62, i32 %conv353)
  %first_tb_dma.i = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 2
  %132 = ptrtoint ptr %first_tb_dma.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %first_tb_dma.i, align 4
  %mul.i731 = shl nuw nsw i32 %conv211, 6
  %add.i = add i32 %133, %mul.i731
  %call355 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i, i32 noundef %add.i, i16 noundef zeroext %128) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %copy_size.6.1)
  %cmp358 = icmp ugt i16 %copy_size.6.1, 20
  br i1 %cmp358, label %if.then360, label %cleanup.1.if.end378_crit_edge

cleanup.1.if.end378_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end378

if.then360:                                       ; preds = %cleanup.1
  %conv343 = zext i16 %copy_size.6.1 to i32
  %134 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev326, align 8
  %add.ptr363 = getelementptr i8, ptr %62, i32 %conv353
  %sub366 = sub nuw nsw i32 %conv343, %conv353
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr363) #5
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then360
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.free_dup_buf.thread781.sink.split_crit_edge, label %if.then.i732, !prof !33

land.rhs.i.free_dup_buf.thread781.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf.thread781.sink.split

if.then.i732:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %135) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i732.dev_name.exit.i_crit_edge

if.then.i732.dev_name.exit.i_crit_edge:           ; preds = %if.then.i732
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i732
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %135, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i732.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %139, %if.end.i.i ], [ %137, %if.then.i732.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %free_dup_buf.thread781.sink.split

dma_map_single_attrs.exit:                        ; preds = %if.then360
  tail call void @debug_dma_map_single(ptr noundef %135, ptr noundef %add.ptr363, i32 noundef %sub366) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %140 = load ptr, ptr @mem_map, align 4
  %141 = ptrtoint ptr %add.ptr363 to i32
  %sub.i733 = add i32 %141, 1073741824
  %shr.i = lshr i32 %sub.i733, 12
  %add.ptr.i734 = getelementptr %struct.page, ptr %140, i32 %shr.i
  %and.i735 = and i32 %141, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %135, ptr noundef %add.ptr.i734, i32 noundef %and.i735, i32 noundef %sub366, i32 noundef 1, i32 noundef 0) #5
  %142 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev326, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %143, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.free_dup_buf.thread781_crit_edge, label %if.end372

dma_map_single_attrs.exit.free_dup_buf.thread781_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf.thread781

if.end372:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv376 = trunc i32 %sub366 to i16
  %call377 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i, i32 noundef %call41.i, i16 noundef zeroext %conv376) #5
  br label %if.end378

if.end378:                                        ; preds = %if.end372, %cleanup.1.if.end378_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmdlen.sroa.0.1836881)
  %tobool386.not = icmp eq i16 %cmdlen.sroa.0.1836881, 0
  br i1 %tobool386.not, label %if.end378.for.inc417_crit_edge, label %if.end388

if.end378.for.inc417_crit_edge:                   ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc417

if.end388:                                        ; preds = %if.end378
  %arrayidx390 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 0
  %144 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx390, align 1
  %conv391 = zext i8 %145 to i32
  %and392 = and i32 %conv391, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392)
  %tobool393.not = icmp eq i32 %and392, 0
  br i1 %tobool393.not, label %if.end388.for.inc417_crit_edge, label %if.end395

if.end388.for.inc417_crit_edge:                   ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc417

if.end395:                                        ; preds = %if.end388
  %and399 = and i32 %conv391, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399)
  %tobool400.not = icmp eq i32 %and399, 0
  %spec.select723 = select i1 %tobool400.not, ptr %cmddata.sroa.0.1834882, ptr %dup_buf.2.1886
  %146 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev326, align 8
  %call.i736 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %spec.select723) #5
  br i1 %call.i736, label %if.end395.land.rhs.i738_crit_edge, label %dma_map_single_attrs.exit753

if.end395.land.rhs.i738_crit_edge:                ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i738

land.rhs.i738:                                    ; preds = %if.end395.1.land.rhs.i738_crit_edge, %if.end395.land.rhs.i738_crit_edge
  %.lcssa = phi ptr [ %147, %if.end395.land.rhs.i738_crit_edge ], [ %159, %if.end395.1.land.rhs.i738_crit_edge ]
  %.b1.i737 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i737, label %land.rhs.i738.free_dup_buf.thread781.sink.split_crit_edge, label %if.then.i742, !prof !33

land.rhs.i738.free_dup_buf.thread781.sink.split_crit_edge: ; preds = %land.rhs.i738
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf.thread781.sink.split

if.then.i742:                                     ; preds = %land.rhs.i738
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i739 = tail call ptr @dev_driver_string(ptr noundef %.lcssa) #5
  %init_name.i.i740 = getelementptr inbounds %struct.device, ptr %.lcssa, i32 0, i32 3
  %148 = ptrtoint ptr %init_name.i.i740 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %init_name.i.i740, align 8
  %tobool.not.i.i741 = icmp eq ptr %149, null
  br i1 %tobool.not.i.i741, label %if.end.i.i743, label %if.then.i742.dev_name.exit.i745_crit_edge

if.then.i742.dev_name.exit.i745_crit_edge:        ; preds = %if.then.i742
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i745

if.end.i.i743:                                    ; preds = %if.then.i742
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %.lcssa, align 4
  br label %dev_name.exit.i745

dev_name.exit.i745:                               ; preds = %if.end.i.i743, %if.then.i742.dev_name.exit.i745_crit_edge
  %retval.0.i.i744 = phi ptr [ %151, %if.end.i.i743 ], [ %149, %if.then.i742.dev_name.exit.i745_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i739, ptr noundef %retval.0.i.i744) #5
  br label %free_dup_buf.thread781.sink.split

dma_map_single_attrs.exit753:                     ; preds = %if.end395
  %conv405 = zext i16 %cmdlen.sroa.0.1836881 to i32
  tail call void @debug_dma_map_single(ptr noundef %147, ptr noundef %spec.select723, i32 noundef %conv405) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %152 = load ptr, ptr @mem_map, align 4
  %153 = ptrtoint ptr %spec.select723 to i32
  %sub.i746 = add i32 %153, 1073741824
  %shr.i747 = lshr i32 %sub.i746, 12
  %add.ptr.i748 = getelementptr %struct.page, ptr %152, i32 %shr.i747
  %and.i749 = and i32 %153, 4095
  %call41.i750 = tail call i32 @dma_map_page_attrs(ptr noundef %147, ptr noundef %add.ptr.i748, i32 noundef %and.i749, i32 noundef %conv405, i32 noundef 1, i32 noundef 0) #5
  %154 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev326, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %155, i32 noundef %call41.i750) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i750)
  %cmp.i754 = icmp eq i32 %call41.i750, -1
  br i1 %cmp.i754, label %dma_map_single_attrs.exit753.free_dup_buf.thread781_crit_edge, label %if.end411

dma_map_single_attrs.exit753.free_dup_buf.thread781_crit_edge: ; preds = %dma_map_single_attrs.exit753
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf.thread781

if.end411:                                        ; preds = %dma_map_single_attrs.exit753
  call void @__sanitizer_cov_trace_pc() #7
  %call413 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i, i32 noundef %call41.i750, i16 noundef zeroext %cmdlen.sroa.0.1836881) #5
  br label %for.inc417

for.inc417:                                       ; preds = %if.end411, %if.end388.for.inc417_crit_edge, %if.end378.for.inc417_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmdlen.sroa.8.1884)
  %tobool386.not.1 = icmp eq i16 %cmdlen.sroa.8.1884, 0
  br i1 %tobool386.not.1, label %for.inc417.for.inc417.1_crit_edge, label %if.end388.1

for.inc417.for.inc417.1_crit_edge:                ; preds = %for.inc417
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc417.1

if.end388.1:                                      ; preds = %for.inc417
  %arrayidx390.1 = getelementptr %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %156 = ptrtoint ptr %arrayidx390.1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx390.1, align 1
  %conv391.1 = zext i8 %157 to i32
  %and392.1 = and i32 %conv391.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392.1)
  %tobool393.not.1 = icmp eq i32 %and392.1, 0
  br i1 %tobool393.not.1, label %if.end388.1.for.inc417.1_crit_edge, label %if.end395.1

if.end388.1.for.inc417.1_crit_edge:               ; preds = %if.end388.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc417.1

if.end395.1:                                      ; preds = %if.end388.1
  %and399.1 = and i32 %conv391.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399.1)
  %tobool400.not.1 = icmp eq i32 %and399.1, 0
  %spec.select723.1 = select i1 %tobool400.not.1, ptr %cmddata.sroa.7.1883, ptr %dup_buf.2.1886
  %158 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev326, align 8
  %call.i736.1 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %spec.select723.1) #5
  br i1 %call.i736.1, label %if.end395.1.land.rhs.i738_crit_edge, label %dma_map_single_attrs.exit753.1

if.end395.1.land.rhs.i738_crit_edge:              ; preds = %if.end395.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i738

dma_map_single_attrs.exit753.1:                   ; preds = %if.end395.1
  %conv405.1 = zext i16 %cmdlen.sroa.8.1884 to i32
  tail call void @debug_dma_map_single(ptr noundef %159, ptr noundef %spec.select723.1, i32 noundef %conv405.1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %160 = load ptr, ptr @mem_map, align 4
  %161 = ptrtoint ptr %spec.select723.1 to i32
  %sub.i746.1 = add i32 %161, 1073741824
  %shr.i747.1 = lshr i32 %sub.i746.1, 12
  %add.ptr.i748.1 = getelementptr %struct.page, ptr %160, i32 %shr.i747.1
  %and.i749.1 = and i32 %161, 4095
  %call41.i750.1 = tail call i32 @dma_map_page_attrs(ptr noundef %159, ptr noundef %add.ptr.i748.1, i32 noundef %and.i749.1, i32 noundef %conv405.1, i32 noundef 1, i32 noundef 0) #5
  %162 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev326, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %163, i32 noundef %call41.i750.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i750.1)
  %cmp.i754.1 = icmp eq i32 %call41.i750.1, -1
  br i1 %cmp.i754.1, label %dma_map_single_attrs.exit753.1.free_dup_buf.thread781_crit_edge, label %if.end411.1

dma_map_single_attrs.exit753.1.free_dup_buf.thread781_crit_edge: ; preds = %dma_map_single_attrs.exit753.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf.thread781

if.end411.1:                                      ; preds = %dma_map_single_attrs.exit753.1
  call void @__sanitizer_cov_trace_pc() #7
  %call413.1 = tail call i32 @iwl_txq_gen2_set_tb(ptr noundef %trans, ptr noundef %add.ptr.i, i32 noundef %call41.i750.1, i16 noundef zeroext %cmdlen.sroa.8.1884) #5
  br label %for.inc417.1

for.inc417.1:                                     ; preds = %if.end411.1, %if.end388.1.for.inc417.1_crit_edge, %for.inc417.for.inc417.1_crit_edge
  %164 = ptrtoint ptr %flags215 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags215, align 4
  %flags424 = getelementptr %struct.iwl_pcie_txq_entry, ptr %60, i32 %conv211, i32 3, i32 1
  %166 = ptrtoint ptr %flags424 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %flags424, align 4
  %167 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %entries, align 4
  %free_buf = getelementptr %struct.iwl_pcie_txq_entry, ptr %168, i32 %conv211, i32 2
  %169 = ptrtoint ptr %free_buf to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %free_buf, align 4
  %tobool427.not = icmp eq ptr %170, null
  br i1 %tobool427.not, label %for.inc417.1.if.end483_crit_edge, label %land.rhs

for.inc417.1.if.end483_crit_edge:                 ; preds = %for.inc417.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end483

land.rhs:                                         ; preds = %for.inc417.1
  %.b721 = load i1, ptr @iwl_pcie_gen2_enqueue_hcmd.__already_done, align 1
  br i1 %.b721, label %land.rhs.if.then479_crit_edge, label %if.then443, !prof !33

land.rhs.if.then479_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then479

if.then443:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @iwl_pcie_gen2_enqueue_hcmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef null) #5
  br label %if.then479

if.then479:                                       ; preds = %if.then443, %land.rhs.if.then479_crit_edge
  %171 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %entries, align 4
  %free_buf482 = getelementptr %struct.iwl_pcie_txq_entry, ptr %172, i32 %conv211, i32 2
  %173 = ptrtoint ptr %free_buf482 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %free_buf482, align 4
  tail call void @kfree_sensitive(ptr noundef %174) #5
  br label %if.end483

if.end483:                                        ; preds = %if.then479, %for.inc417.1.if.end483_crit_edge
  %175 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %entries, align 4
  %free_buf486 = getelementptr %struct.iwl_pcie_txq_entry, ptr %176, i32 %conv211, i32 2
  %177 = ptrtoint ptr %free_buf486 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %dup_buf.2.1886, ptr %free_buf486, align 4
  %178 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev326, align 8
  tail call fastcc void @trace_iwlwifi_dev_hcmd(ptr noundef %179, ptr noundef %cmd, i16 noundef zeroext %cmd_size.1.1885, ptr noundef %62)
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 16
  %180 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %read_ptr, align 4
  %182 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %183)
  %cmp490 = icmp eq i32 %181, %183
  br i1 %cmp490, label %land.lhs.true, label %if.end483.free_dup_buf_crit_edge

if.end483.free_dup_buf_crit_edge:                 ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf

land.lhs.true:                                    ; preds = %if.end483
  %wd_timeout = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 12
  %184 = ptrtoint ptr %wd_timeout to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %wd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool492.not = icmp eq i32 %185, 0
  br i1 %tobool492.not, label %land.lhs.true.free_dup_buf_crit_edge, label %if.then493

land.lhs.true.free_dup_buf_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_dup_buf

if.then493:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %stuck_timer = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %186 = load volatile i32, ptr @jiffies, align 128
  %add495 = add i32 %186, %185
  %call496 = tail call i32 @mod_timer(ptr noundef %stuck_timer, i32 noundef %add495) #5
  br label %free_dup_buf

free_dup_buf.thread781.sink.split:                ; preds = %dev_name.exit.i745, %land.rhs.i738.free_dup_buf.thread781.sink.split_crit_edge, %dev_name.exit.i, %land.rhs.i.free_dup_buf.thread781.sink.split_crit_edge
  %187 = ptrtoint ptr %dev326 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev326, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %188, i32 noundef -1) #5
  br label %free_dup_buf.thread781

free_dup_buf.thread781:                           ; preds = %free_dup_buf.thread781.sink.split, %dma_map_single_attrs.exit753.1.free_dup_buf.thread781_crit_edge, %dma_map_single_attrs.exit753.free_dup_buf.thread781_crit_edge, %dma_map_single_attrs.exit.free_dup_buf.thread781_crit_edge
  tail call void @iwl_txq_gen2_tfd_unmap(ptr noundef %trans, ptr noundef %meta, ptr noundef %add.ptr.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call205) #5
  br label %if.then505

free_dup_buf:                                     ; preds = %if.then493, %land.lhs.true.free_dup_buf_crit_edge, %if.end483.free_dup_buf_crit_edge
  %reg_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #5
  %189 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %write_ptr, align 4
  %inc.i = add i32 %190, 1
  %191 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %trans_cfg.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i757 = add i32 %196, -1
  %and.i758 = and i32 %sub.i757, %inc.i
  store i32 %and.i758, ptr %write_ptr, align 4
  tail call void @iwl_txq_inc_wr_ptr(ptr noundef %trans, ptr noundef %3) #5
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call205) #5
  br label %cleanup507

if.then505:                                       ; preds = %free_dup_buf.thread781, %if.then220, %do.end178, %do.end129, %do.end87, %do.end
  %dup_buf.0789 = phi ptr [ %dup_buf.2.1886, %free_dup_buf.thread781 ], [ %dup_buf.2.1886, %if.then220 ], [ %dup_buf.2.1, %do.end178 ], [ %dup_buf.2840858, %do.end129 ], [ %dup_buf.2840858, %do.end87 ], [ %dup_buf.0806.lcssa, %do.end ]
  %idx.3779 = phi i32 [ -12, %free_dup_buf.thread781 ], [ -28, %if.then220 ], [ -22, %do.end178 ], [ -22, %do.end129 ], [ -22, %do.end87 ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef %dup_buf.0789) #5
  br label %cleanup507

cleanup507:                                       ; preds = %if.then505, %free_dup_buf, %if.end103.1.cleanup507_crit_edge, %if.end103.cleanup507_crit_edge
  %retval.0 = phi i32 [ %idx.3779, %if.then505 ], [ %conv211, %free_dup_buf ], [ -12, %if.end103.1.cleanup507_crit_edge ], [ -12, %if.end103.cleanup507_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_space(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_gen2_set_tb(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_gen2_tfd_unmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_hcmd(ptr noundef %dev, ptr noundef %cmd, i16 noundef zeroext %total_size, ptr noundef %hdr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_hcmd, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !35

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !33

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !36
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_hcmd(ptr noundef null, ptr noundef %dev, ptr noundef %cmd, i16 noundef zeroext %total_size, ptr noundef %hdr) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !37
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !33

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_hcmd, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_hcmd.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_iwlwifi_dev_hcmd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 50, ptr noundef nonnull @.str.7) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #5
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_inc_wr_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_hcmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !17, !18, !19, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c", i32 68, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c", i32 105, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c", i32 121, i32 3}
!6 = !{ptr @__func__.iwl_pcie_gen2_enqueue_hcmd, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c", i32 187, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/tx-gen2.c", i32 237, i32 6}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-iwlwifi.h", i32 18, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2148860142, i64 2148860147, i64 2148860160, i64 2148860204, i64 2148860238, i64 2148860259}
!36 = !{i64 2159493248}
!37 = !{i64 2159493493}
!38 = !{i64 2149683523}
!39 = !{i64 2149684559}
