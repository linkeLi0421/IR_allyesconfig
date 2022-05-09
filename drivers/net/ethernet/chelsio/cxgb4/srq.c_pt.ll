; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/srq.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_get_srq_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_get_srq_entry\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_get_srq_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_get_srq_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_get_srq_entry\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_get_srq_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.srq_data = type { i32, ptr, %struct.completion, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_srq_table_req = type { %struct.work_request_hdr, %union.opcode_tid, i8, [2 x i8], i8, i64, i32, i16, i16 }
%union.opcode_tid = type { i32 }
%struct.srq_entry = type { i8, i8, i8, i16, i16, i16, i32 }
%struct.cpl_srq_table_rpl = type { %union.opcode_tid, i8, [2 x i8], i8, i64, i32, i16, i16 }

@t4_init_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@cxgb4_get_srq_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb4/srq.c\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb4_get_srq_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_get_srq_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_get_srq_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_get_srq_entry to i32), ptr @__kstrtab_cxgb4_get_srq_entry, ptr @__kstrtabns_cxgb4_get_srq_entry }, section "___ksymtab+cxgb4_get_srq_entry", align 4
@do_srq_table_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unexpected SRQ_TABLE_RPL status %u for entry %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_srq_table_rpl\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_srq_table_rpl._entry_ptr = internal global ptr @do_srq_table_rpl._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 49, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 105, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/srq.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 120, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 87, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_cxgb4_get_srq_entry, ptr @do_srq_table_rpl._entry, ptr @do_srq_table_rpl._entry_ptr, ptr @t4_init_srq.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_srq_table_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_init_srq(i32 noundef %srq_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 156, i32 noundef 3520, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %srq_size, ptr %call.i.i, align 4
  %comp = getelementptr inbounds %struct.srq_data, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.srq_data, ptr %call.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #4
  %lock = getelementptr inbounds %struct.srq_data, ptr %call.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @t4_init_srq.__key) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_get_srq_entry(ptr nocapture noundef readonly %dev, i32 noundef %srq_idx, ptr noundef %entryp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %srq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srq, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 32
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !27

do.body3.i.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #4, !srcloc !28
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %11, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %12 = getelementptr inbounds i8, ptr %9, i32 16
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 83886104, ptr %9, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %wr_lo, align 8
  %abs_id = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %17 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %abs_id, align 2
  %conv = zext i16 %18 to i32
  %shl9 = shl nuw nsw i32 %conv, 14
  %or = or i32 %shl9, %srq_idx
  %or10 = or i32 %or, 469762048
  %ot = getelementptr inbounds %struct.cpl_srq_table_req, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or10, ptr %ot, align 8
  %conv11 = trunc i32 %srq_idx to i8
  %idx = getelementptr inbounds %struct.cpl_srq_table_req, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv11, ptr %idx, align 1
  %lock = getelementptr inbounds %struct.srq_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %entryp12 = getelementptr inbounds %struct.srq_data, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %entryp12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entryp, ptr %entryp12, align 4
  %call13 = tail call i32 @t4_mgmt_tx(ptr noundef %1, ptr noundef nonnull %call.i) #4
  %comp = getelementptr inbounds %struct.srq_data, ptr %3, i32 0, i32 2
  %call14 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 500) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %. = select i1 %tobool15.not, i32 -110, i32 0
  %idx18 = getelementptr inbounds %struct.srq_entry, ptr %entryp, i32 0, i32 1
  %22 = ptrtoint ptr %idx18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %idx18, align 1
  %conv19 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %srq_idx)
  %cmp.not = icmp eq i32 %conv19, %srq_idx
  br i1 %cmp.not, label %__skb_put_zero.exit.if.end54_crit_edge, label %land.rhs

__skb_put_zero.exit.if.end54_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

land.rhs:                                         ; preds = %__skb_put_zero.exit
  %.b86 = load i1, ptr @cxgb4_get_srq_entry.__already_done, align 1
  br i1 %.b86, label %land.rhs.if.end54_crit_edge, label %if.then29, !prof !27

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cxgb4_get_srq_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 9, ptr noundef null) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then29, %land.rhs.if.end54_crit_edge, %__skb_put_zero.exit.if.end54_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %., %if.end54 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_mgmt_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_srq_table_rpl(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpl, align 8
  %srq = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 83
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srq, align 8
  %status = getelementptr inbounds %struct.cpl_srq_table_rpl, ptr %rpl, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %5)
  %cmp.not = icmp eq i8 %5, 60
  br i1 %cmp.not, label %if.end, label %do.end, !prof !27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and1 = and i32 %1, 16383
  %conv = zext i8 %5 to i32
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %and1) #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %entryp = getelementptr inbounds %struct.srq_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %entryp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entryp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %9, align 4
  %conv6 = trunc i32 %1 to i8
  %idx7 = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %idx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %idx7, align 1
  %rsvd_pdid = getelementptr inbounds %struct.cpl_srq_table_rpl, ptr %rpl, i32 0, i32 4
  %12 = ptrtoint ptr %rsvd_pdid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rsvd_pdid, align 8
  %14 = trunc i64 %13 to i16
  %conv10 = and i16 %14, 255
  %pdid = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %pdid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10, ptr %pdid, align 4
  %qlen_qbase = getelementptr inbounds %struct.cpl_srq_table_rpl, ptr %rpl, i32 0, i32 5
  %16 = ptrtoint ptr %qlen_qbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen_qbase, align 8
  %shr11 = lshr i32 %17, 28
  %conv13 = trunc i32 %shr11 to i8
  %qlen = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %qlen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %qlen, align 2
  %19 = load i32, ptr %qlen_qbase, align 8
  %and16 = and i32 %19, 67108863
  %qbase = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %qbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and16, ptr %qbase, align 4
  %cur_msn = getelementptr inbounds %struct.cpl_srq_table_rpl, ptr %rpl, i32 0, i32 6
  %21 = ptrtoint ptr %cur_msn to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cur_msn, align 4
  %cur_msn17 = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 4
  %23 = ptrtoint ptr %cur_msn17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %cur_msn17, align 2
  %max_msn = getelementptr inbounds %struct.cpl_srq_table_rpl, ptr %rpl, i32 0, i32 7
  %24 = ptrtoint ptr %max_msn to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_msn, align 2
  %max_msn18 = getelementptr inbounds %struct.srq_entry, ptr %9, i32 0, i32 5
  %26 = ptrtoint ptr %max_msn18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %max_msn18, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  %comp = getelementptr inbounds %struct.srq_data, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @t4_init_srq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/srq.c", i32 49, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb4/srq.c", i32 105, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_cxgb4_get_srq_entry, !7, !"__ksymtab_cxgb4_get_srq_entry", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/srq.c", i32 110, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/srq.c", i32 120, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @do_srq_table_rpl._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @do_srq_table_rpl._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @init_completion.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../include/linux/completion.h", i32 87, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2154745506, i64 2154745994, i64 2154745543, i64 2154745599, i64 2154745633, i64 2154745657, i64 2154745698, i64 2154745719, i64 2154745747, i64 2154745781}
