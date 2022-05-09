; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/smt.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/smt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_smt_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_smt_release\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_smt_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_smt_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_smt_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_smt_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_smt_alloc_switching\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_smt_alloc_switching\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_smt_alloc_switching\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_smt_alloc_switching:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_smt_alloc_switching\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_smt_alloc_switching:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smt_data = type { i32, %struct.rwlock_t, [0 x %struct.smt_entry] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.smt_entry = type { i16, i16, i16, [6 x i8], i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpl_smt_write_rpl = type { %union.opcode_tid, i8, [3 x i8] }
%union.opcode_tid = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.190, i32 }
%struct.atomic_t = type { i32 }
%union.anon.190 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_smt_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i16, [6 x i8], i16, [6 x i8] }

@t4_init_smt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@t4_init_smt.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&s->smtab[i].lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb4_smt_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_smt_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_smt_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_smt_release to i32), ptr @__kstrtab_cxgb4_smt_release, ptr @__kstrtabns_cxgb4_smt_release }, section "___ksymtab+cxgb4_smt_release", align 4
@do_smt_write_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 130, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unexpected SMT_WRITE_RPL status %u for entry %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_smt_write_rpl\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb4/smt.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_smt_write_rpl._entry_ptr = internal global ptr @do_smt_write_rpl._entry, section ".printk_index", align 4
@__kstrtab_cxgb4_smt_alloc_switching = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_smt_alloc_switching = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_smt_alloc_switching = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_smt_alloc_switching to i32), ptr @__kstrtab_cxgb4_smt_alloc_switching, ptr @__kstrtabns_cxgb4_smt_alloc_switching }, section "___ksymtab+cxgb4_smt_alloc_switching", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 54, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 59, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/smt.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 128, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_cxgb4_smt_alloc_switching, ptr @__ksymtab_cxgb4_smt_release, ptr @do_smt_write_rpl._entry, ptr @do_smt_write_rpl._entry_ptr, ptr @t4_init_smt.__key, ptr @.str, ptr @t4_init_smt.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_smt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_smt.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_smt_write_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_init_smt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 15408, i32 noundef 3520, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %call.i.i, align 4
  %lock = getelementptr inbounds %struct.smt_data, ptr %call.i.i, i32 0, i32 1
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @t4_init_smt.__key) #5
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp36.not = icmp eq i32 %2, 0
  br i1 %cmp36.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %conv = trunc i32 %i.037 to i16
  %arrayidx = getelementptr %struct.smt_data, ptr %call.i.i, i32 0, i32 2, i32 %i.037
  %idx = getelementptr %struct.smt_data, ptr %call.i.i, i32 0, i32 2, i32 %i.037, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %idx, align 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %arrayidx, align 4
  %src_mac = getelementptr %struct.smt_data, ptr %call.i.i, i32 0, i32 2, i32 %i.037, i32 3
  %5 = call ptr @memset(ptr %src_mac, i32 0, i32 6)
  %lock11 = getelementptr %struct.smt_data, ptr %call.i.i, i32 0, i32 2, i32 %i.037, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock11, ptr noundef nonnull @.str.2, ptr noundef nonnull @t4_init_smt.__key.1, i16 noundef signext 3) #5
  %refcnt = getelementptr %struct.smt_data, ptr %call.i.i, i32 0, i32 2, i32 %i.037, i32 4
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %refcnt, align 4
  %inc = add nuw i32 %i.037, 1
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_smt_release(ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smt_entry, ptr %e, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %refcnt = getelementptr inbounds %struct.smt_entry, ptr %e, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %t4_smte_free.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

t4_smte_free.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %e, align 4
  br label %if.end

if.end:                                           ; preds = %t4_smte_free.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_smt_write_rpl(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.cpl_smt_write_rpl, ptr %rpl, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %smt = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 36
  %2 = ptrtoint ptr %smt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smt, align 64
  %4 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpl, align 4
  %and1 = and i32 %5, 16383
  %arrayidx = getelementptr %struct.smt_data, ptr %3, i32 0, i32 2, i32 %and1
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %and1) #9
  %lock = getelementptr %struct.smt_data, ptr %3, i32 0, i32 2, i32 %and1, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_smt_alloc_switching(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %smac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %smt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %smt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smt.i, align 64
  %lock.i = getelementptr inbounds %struct.smt_data, ptr %3, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #5
  %smtab.i.i = getelementptr inbounds %struct.smt_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx2.i.i = getelementptr %struct.smt_data, ptr %3, i32 0, i32 2, i32 %5
  %cmp.not33.i.i = icmp eq ptr %smtab.i.i, %arrayidx2.i.i
  br i1 %cmp.not33.i.i, label %entry.t4_smt_alloc_switching.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.t4_smt_alloc_switching.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t4_smt_alloc_switching.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %e.035.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %smtab.i.i, %entry.for.body.i.i_crit_edge ]
  %first_free.034.i.i = phi ptr [ %first_free.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %entry.for.body.i.i_crit_edge ]
  %refcnt.i.i = getelementptr inbounds %struct.smt_entry, ptr %e.035.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.i.i = icmp eq i32 %7, 0
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.i.i = icmp eq ptr %first_free.034.i.i, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %e.035.i.i, ptr %first_free.034.i.i
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %8 = ptrtoint ptr %e.035.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %e.035.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp5.i.i = icmp eq i16 %9, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  %src_mac.i.i = getelementptr inbounds %struct.smt_entry, ptr %e.035.i.i, i32 0, i32 3
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src_mac.i.i, ptr noundef dereferenceable(6) %smac, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.i, label %find_or_alloc_smte.exit.i, label %if.then7.i.i.for.inc.i.i_crit_edge

if.then7.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %if.then.i.i
  %first_free.1.i.i = phi ptr [ %first_free.034.i.i, %if.then7.i.i.for.inc.i.i_crit_edge ], [ %first_free.034.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %incdec.ptr.i.i = getelementptr %struct.smt_entry, ptr %e.035.i.i, i32 1
  %cmp.not.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool14.not.i.i = icmp eq ptr %first_free.1.i.i, null
  br i1 %tobool14.not.i.i, label %for.end.i.i.t4_smt_alloc_switching.exit_crit_edge, label %find_or_alloc_smte.exit.thread9.i

for.end.i.i.t4_smt_alloc_switching.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t4_smt_alloc_switching.exit

find_or_alloc_smte.exit.thread9.i:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %first_free.1.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %first_free.1.i.i, align 4
  br label %if.then.i

find_or_alloc_smte.exit.i:                        ; preds = %if.then7.i.i
  %tobool.not.i = icmp eq ptr %e.035.i.i, null
  br i1 %tobool.not.i, label %find_or_alloc_smte.exit.i.t4_smt_alloc_switching.exit_crit_edge, label %find_or_alloc_smte.exit.i.if.then.i_crit_edge

find_or_alloc_smte.exit.i.if.then.i_crit_edge:    ; preds = %find_or_alloc_smte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

find_or_alloc_smte.exit.i.t4_smt_alloc_switching.exit_crit_edge: ; preds = %find_or_alloc_smte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t4_smt_alloc_switching.exit

if.then.i:                                        ; preds = %find_or_alloc_smte.exit.i.if.then.i_crit_edge, %find_or_alloc_smte.exit.thread9.i
  %retval.0.i12.i = phi ptr [ %first_free.1.i.i, %find_or_alloc_smte.exit.thread9.i ], [ %e.035.i.i, %find_or_alloc_smte.exit.i.if.then.i_crit_edge ]
  %lock1.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock1.i) #5
  %refcnt.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 4
  %11 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %13 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %refcnt.i, align 4
  %14 = ptrtoint ptr %retval.0.i12.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %retval.0.i12.i, align 4
  %pfvf5.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 2
  %15 = ptrtoint ptr %pfvf5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %pfvf5.i, align 4
  %src_mac.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %src_mac.i, ptr %smac, i32 6)
  %17 = ptrtoint ptr %smt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smt.i, align 64
  %chip.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %19 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip.i.i, align 8
  %21 = and i32 %20, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %21)
  %cmp.i.i = icmp ult i32 %21, 96
  br i1 %cmp.i.i, label %if.then.i2.i, label %if.else33.i.i

if.then.i2.i:                                     ; preds = %if.then3.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i1.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i1.i, label %if.then.i2.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i2.i.if.end.i_crit_edge:                  ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i2.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !27

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !28
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i2 = getelementptr i8, ptr %25, i32 40
  store ptr %add.ptr.i.i.i2, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %27, 40
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 83886104, ptr %25, align 8
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %wr_mid.i.i, align 4
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %wr_lo.i.i, align 8
  %idx.i.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 1
  %31 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %33 = lshr i32 %conv.i.i, 1
  %and9.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i4.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pfvf1.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %pfvf1.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %pfvf1.i.i, align 8
  %src_mac1.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 4
  %35 = call ptr @memcpy(ptr %src_mac1.i.i, ptr %src_mac.i, i32 6)
  %pfvf0.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 5
  %36 = ptrtoint ptr %pfvf0.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %pfvf0.i.i, align 8
  %src_mac0.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 6
  %37 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %idx.i.i, align 2
  %conv15.i.i = zext i16 %38 to i32
  %sub.i.i = add nsw i32 %conv15.i.i, -1
  %src_mac16.i.i = getelementptr %struct.smt_data, ptr %18, i32 0, i32 2, i32 %sub.i.i, i32 3
  %39 = call ptr @memcpy(ptr %src_mac0.i.i, ptr %src_mac16.i.i, i32 6)
  br label %if.end58.i.i

if.else.i4.i:                                     ; preds = %__skb_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pfvf018.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 5
  %40 = ptrtoint ptr %pfvf018.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %pfvf018.i.i, align 8
  %src_mac019.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %src_mac019.i.i, ptr %src_mac.i, i32 6)
  %pfvf123.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 3
  %42 = ptrtoint ptr %pfvf123.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %pfvf123.i.i, align 8
  %src_mac124.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %25, i32 0, i32 4
  %43 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %idx.i.i, align 2
  %conv28.i.i = zext i16 %44 to i32
  %add.i.i = add nuw nsw i32 %conv28.i.i, 1
  %src_mac30.i.i = getelementptr %struct.smt_data, ptr %18, i32 0, i32 2, i32 %add.i.i, i32 3
  %45 = call ptr @memcpy(ptr %src_mac124.i.i, ptr %src_mac30.i.i, i32 6)
  br label %if.end58.i.i

if.else33.i.i:                                    ; preds = %if.then3.i
  %call.i1.i.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool35.not.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool35.not.i.i, label %if.else33.i.i.if.end.i_crit_edge, label %if.end37.i.i

if.else33.i.i.if.end.i_crit_edge:                 ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end37.i.i:                                     ; preds = %if.else33.i.i
  %data_len.i.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i3.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i3.i.i, label %__skb_put.exit9.i.i, label %do.body3.i4.i.i, !prof !27

do.body3.i4.i.i:                                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #5, !srcloc !28
  unreachable

__skb_put.exit9.i.i:                              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i.i, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i5.i.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %49, i32 48
  store ptr %add.ptr.i6.i.i, ptr %tail.i.i5.i.i, align 8
  %len9.i7.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i1.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %len9.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len9.i7.i.i, align 4
  %add.i8.i.i = add i32 %51, 48
  store i32 %add.i8.i.i, ptr %len9.i7.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 83886112, ptr %49, align 8
  %wr_mid43.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %49, i32 0, i32 1
  %53 = ptrtoint ptr %wr_mid43.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %wr_mid43.i.i, align 4
  %wr_lo45.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %wr_lo45.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %wr_lo45.i.i, align 8
  %pfvf048.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %49, i32 0, i32 5
  %55 = ptrtoint ptr %pfvf048.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %pfvf048.i.i, align 8
  %src_mac049.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %49, i32 0, i32 6
  %idx52.i.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 1
  %56 = ptrtoint ptr %idx52.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %idx52.i.i, align 2
  %idxprom.i.i = zext i16 %57 to i32
  %src_mac54.i.i = getelementptr %struct.smt_data, ptr %18, i32 0, i32 2, i32 %idxprom.i.i, i32 3
  %58 = call ptr @memcpy(ptr %src_mac049.i.i, ptr %src_mac54.i.i, i32 6)
  %59 = load i16, ptr %idx52.i.i, align 2
  %conv57.i.i = zext i16 %59 to i32
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %__skb_put.exit9.i.i, %if.else.i4.i, %if.then11.i.i
  %req.0.i.i = phi ptr [ %25, %if.then11.i.i ], [ %25, %if.else.i4.i ], [ %49, %__skb_put.exit9.i.i ]
  %skb.0.i.i = phi ptr [ %call.i.i.i, %if.then11.i.i ], [ %call.i.i.i, %if.else.i4.i ], [ %call.i1.i.i, %__skb_put.exit9.i.i ]
  %row.0.i.i = phi i32 [ %33, %if.then11.i.i ], [ %33, %if.else.i4.i ], [ %conv57.i.i, %__skb_put.exit9.i.i ]
  %idx59.i.i = getelementptr inbounds %struct.smt_entry, ptr %retval.0.i12.i, i32 0, i32 1
  %60 = ptrtoint ptr %idx59.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %idx59.i.i, align 2
  %conv60.i.i = zext i16 %61 to i32
  %abs_id.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %62 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %abs_id.i.i, align 2
  %conv61.i.i = zext i16 %63 to i32
  %shl.i.i = shl nuw nsw i32 %conv61.i.i, 14
  %or.i.i = or i32 %shl.i.i, %conv60.i.i
  %or62.i.i = or i32 %or.i.i, 335544320
  %ot.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %req.0.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %ot.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or62.i.i, ptr %ot.i.i, align 8
  %conv63.i.i = shl i32 %row.0.i.i, 20
  %shl64.i.i = and i32 %conv63.i.i, 267386880
  %params67.i.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %req.0.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %params67.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl64.i.i, ptr %params67.i.i, align 4
  %call68.i.i = tail call i32 @t4_mgmt_tx(ptr noundef %1, ptr noundef nonnull %skb.0.i.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i32 %12, 1
  %66 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc.i, ptr %refcnt.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end58.i.i, %if.else33.i.i.if.end.i_crit_edge, %if.then.i2.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock1.i) #5
  br label %t4_smt_alloc_switching.exit

t4_smt_alloc_switching.exit:                      ; preds = %if.end.i, %find_or_alloc_smte.exit.i.t4_smt_alloc_switching.exit_crit_edge, %for.end.i.i.t4_smt_alloc_switching.exit_crit_edge, %entry.t4_smt_alloc_switching.exit_crit_edge
  %retval.0.i7.i = phi ptr [ %retval.0.i12.i, %if.end.i ], [ null, %find_or_alloc_smte.exit.i.t4_smt_alloc_switching.exit_crit_edge ], [ null, %for.end.i.i.t4_smt_alloc_switching.exit_crit_edge ], [ null, %entry.t4_smt_alloc_switching.exit_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #5
  ret ptr %retval.0.i7.i
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_mgmt_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @t4_init_smt.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/smt.c", i32 54, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @t4_init_smt.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb4/smt.c", i32 59, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_cxgb4_smt_release, !7, !"__ksymtab_cxgb4_smt_release", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/smt.c", i32 118, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/smt.c", i32 128, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @do_smt_write_rpl._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @do_smt_write_rpl._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_cxgb4_smt_alloc_switching, !17, !"__ksymtab_cxgb4_smt_alloc_switching", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/smt.c", i32 248, i32 1}
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
!28 = !{i64 2154748122, i64 2154748610, i64 2154748159, i64 2154748215, i64 2154748249, i64 2154748273, i64 2154748314, i64 2154748335, i64 2154748363, i64 2154748397}
