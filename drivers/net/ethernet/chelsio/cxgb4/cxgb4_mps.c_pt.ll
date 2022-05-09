; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_mps.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_mps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.mps_entries_ref = type { %struct.list_head, [6 x i8], [6 x i8], i16, %struct.refcount_struct }

@cxgb4_init_mps_ref_entries.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adap->mps_ref_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_mps.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 222, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @cxgb4_init_mps_ref_entries.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_mps_ref_entries.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_free_mac_filt(ptr noundef %adap, i32 noundef %viid, i32 noundef %naddr, ptr noundef %addr, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %naddr)
  %cmp20.not = icmp eq i32 %naddr, 0
  br i1 %cmp20.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mps_ref_lock.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 45
  %mps_ref.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %addr, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mps_ref_lock.i) #5
  %2 = ptrtoint ptr %mps_ref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mps_ref.i, align 8
  %cmp.not11.i = icmp eq ptr %3, %mps_ref.i
  br i1 %cmp.not11.i, label %for.body.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge, label %for.body.lr.ph.i

for.body.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cxgb4_mps_ref_dec_by_mac.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mps_entry.012.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %tmp.013.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %mps_entry.012.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.013.i = load ptr, ptr %mps_entry.012.i, align 4
  %addr8.i = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.012.i, i32 0, i32 1
  %9 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr8.i, align 4
  %xor.i.i = xor i32 %10, %5
  %add.ptr.i.i = getelementptr %struct.mps_entries_ref, ptr %mps_entry.012.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %12, %7
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mask9.i = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.012.i, i32 0, i32 2
  %13 = ptrtoint ptr %mask9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask9.i, align 4
  %xor.i1.i = xor i32 %14, -1
  %add.ptr.i2.i = getelementptr %struct.mps_entries_ref, ptr %mps_entry.012.i, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i2.i, align 2
  %xor37.i4.i = xor i16 %16, -1
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor3.i5.i, %xor.i1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  br i1 %cmp.i7.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %refcnt.i = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.012.i, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge, label %if.then10.i.i.i.i, !prof !14

if.end5.i.i.i.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cxgb4_mps_ref_dec_by_mac.exit.thread

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #5
  br label %cxgb4_mps_ref_dec_by_mac.exit.thread

if.end.i:                                         ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mps_entry.012.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.012.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %mps_entry.012.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mps_entry.012.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %if.then

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.013.i, %mps_ref.i
  br i1 %cmp.not.i, label %for.inc.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cxgb4_mps_ref_dec_by_mac.exit.thread

cxgb4_mps_ref_dec_by_mac.exit.thread:             ; preds = %for.inc.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge, %for.body.cxgb4_mps_ref_dec_by_mac.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mps_ref_lock.i) #5
  br label %for.inc

if.then:                                          ; preds = %if.end.i.i.i, %if.end.i.if.then_crit_edge
  %24 = ptrtoint ptr %mps_entry.012.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %mps_entry.012.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.012.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mps_entry.012.i) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %mps_ref_lock.i) #5
  %26 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbox, align 8
  %call3 = tail call i32 @t4_free_mac_filt(ptr noundef %adap, i32 noundef %27, i32 noundef %viid, i32 noundef 1, ptr noundef %arrayidx, i1 noundef zeroext %sleep_ok) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %cxgb4_mps_ref_dec_by_mac.exit.thread
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %naddr
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %naddr, %for.inc.cleanup_crit_edge ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_free_mac_filt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_alloc_mac_filt(ptr noundef %adap, i32 noundef %viid, i1 noundef zeroext %free, i32 noundef %naddr, ptr noundef %addr, ptr noundef %idx, ptr noundef %hash, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox, align 8
  %call = tail call i32 @t4_alloc_mac_filt(ptr noundef %adap, i32 noundef %1, i32 noundef %viid, i1 noundef zeroext %free, i32 noundef %naddr, ptr noundef %addr, ptr noundef %idx, ptr noundef %hash, i1 noundef zeroext %sleep_ok) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %naddr)
  %cmp334 = icmp ne i32 %naddr, 0
  %or.cond = and i1 %cmp, %cmp334
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %idx, i32 %i.035
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp4.not = icmp eq i16 %3, -1
  br i1 %cmp4.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %arrayidx7 = getelementptr ptr, ptr %addr, i32 %i.035
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %call9 = tail call fastcc i32 @cxgb4_mps_ref_inc(ptr noundef %adap, ptr noundef %5, i16 noundef zeroext %3, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then6.for.inc_crit_edge, label %if.then11

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @cxgb4_free_mac_filt(ptr noundef %adap, i32 noundef %viid, i32 noundef %naddr, ptr noundef %addr, i1 noundef zeroext %sleep_ok)
  br label %cleanup

for.inc:                                          ; preds = %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %naddr
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then11 ], [ %call, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_alloc_mac_filt(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_mps_ref_inc(ptr noundef %adap, ptr nocapture noundef readonly %mac_addr, i16 noundef zeroext %idx, ptr noundef readonly %mask) unnamed_addr #0 align 64 {
entry:
  %bitmask.sroa.0 = alloca i32, align 4
  %bitmask.sroa.4 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmask.sroa.0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bitmask.sroa.4)
  %0 = ptrtoint ptr %bitmask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bitmask.sroa.0, align 4
  %1 = ptrtoint ptr %bitmask.sroa.4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %bitmask.sroa.4, align 2
  %mps_ref_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %mps_ref_lock) #5
  %mps_ref = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %mps_entry.0.in = phi ptr [ %mps_ref, %entry ], [ %mps_entry.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %mps_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %mps_entry.0 = load ptr, ptr %mps_entry.0.in, align 4
  %cmp.not = icmp eq ptr %mps_entry.0, %mps_ref
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %idx2 = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.0, i32 0, i32 3
  %3 = ptrtoint ptr %idx2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx2, align 4
  %cmp4 = icmp eq i16 %4, %idx
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.0, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #5, !srcloc !16
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !17

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.unlock_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !14

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.unlock_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #5
  br label %unlock

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 28) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.unlock_crit_edge, label %if.end12

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end12:                                         ; preds = %for.end
  %mask13 = getelementptr inbounds %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 2
  %tobool14.not = icmp eq ptr %mask, null
  %bitmask.mask = select i1 %tobool14.not, ptr %bitmask.sroa.0, ptr %mask
  %8 = ptrtoint ptr %bitmask.mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitmask.mask, align 4
  %10 = ptrtoint ptr %mask13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mask13, align 4
  %mask.sroa.gep = getelementptr i8, ptr %mask, i32 4
  %bitmask.mask.sroa.sel = select i1 %tobool14.not, ptr %bitmask.sroa.4, ptr %mask.sroa.gep
  %11 = ptrtoint ptr %bitmask.mask.sroa.sel to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %bitmask.mask.sroa.sel, align 1
  %add.ptr1.i = getelementptr %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  %addr = getelementptr inbounds %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr, align 8
  %add.ptr.i37 = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i37, align 2
  %add.ptr1.i38 = getelementptr %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %add.ptr1.i38 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i38, align 4
  %idx17 = getelementptr inbounds %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %idx17 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %idx, ptr %idx17, align 4
  %refcnt18 = getelementptr inbounds %struct.mps_entries_ref, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt18, i32 noundef 4) #5
  %21 = ptrtoint ptr %refcnt18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %refcnt18, align 8
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %23, ptr noundef %mps_ref) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.unlock_crit_edge

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mps_ref, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %23, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i.i, %if.end12.unlock_crit_edge, %for.end.unlock_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.unlock_crit_edge
  %ret.0 = phi i32 [ -12, %for.end.unlock_crit_edge ], [ 0, %if.else.i.i.i.unlock_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %if.end12.unlock_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mps_ref_lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmask.sroa.0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bitmask.sroa.4)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_update_mac_filt(ptr noundef %pi, i32 noundef %viid, ptr noundef %tcam_idx, ptr noundef %addr, i1 noundef zeroext %persistent, ptr noundef %smt_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cxgb4_change_mac(ptr noundef %pi, i32 noundef %viid, ptr noundef %tcam_idx, ptr noundef %addr, i1 noundef zeroext %persistent, ptr noundef %smt_idx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  %2 = ptrtoint ptr %tcam_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcam_idx, align 4
  %conv = trunc i32 %3 to i16
  %call1 = tail call fastcc i32 @cxgb4_mps_ref_inc(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %conv, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_change_mac(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_free_raw_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %idx, i8 noundef zeroext %lookup_type, i8 noundef zeroext %port_id, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %idx to i16
  %call = tail call fastcc i32 @cxgb4_mps_ref_dec(ptr noundef %adap, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @t4_free_raw_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %idx, i8 noundef zeroext %lookup_type, i8 noundef zeroext %port_id, i1 noundef zeroext %sleep_ok) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_mps_ref_dec(ptr noundef %adap, i16 noundef zeroext %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mps_ref_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %mps_ref_lock) #5
  %mps_ref = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %mps_entry.0.in = phi ptr [ %mps_ref, %entry ], [ %mps_entry.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %mps_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mps_entry.0 = load ptr, ptr %mps_entry.0.in, align 4
  %cmp.not = icmp eq ptr %mps_entry.0, %mps_ref
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %idx8 = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.0, i32 0, i32 3
  %1 = ptrtoint ptr %idx8 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %idx8, align 4
  %cmp10 = icmp eq i16 %2, %idx
  br i1 %cmp10, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.mps_entries_ref, ptr %mps_entry.0, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !14

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mps_entry.0) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %mps_entry.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mps_entry.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %mps_entry.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mps_entry.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mps_entry.0) #5
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end5.i.i.i.cleanup_crit_edge ], [ -16, %if.then10.i.i.i ], [ 0, %list_del.exit ], [ -22, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mps_ref_lock) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_free_raw_mac_filt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_alloc_raw_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %idx, i8 noundef zeroext %lookup_type, i8 noundef zeroext %port_id, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t4_alloc_raw_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %idx, i8 noundef zeroext %lookup_type, i8 noundef zeroext %port_id, i1 noundef zeroext %sleep_ok) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i16
  %call1 = tail call fastcc i32 @cxgb4_mps_ref_inc(ptr noundef %adap, ptr noundef %addr, i16 noundef zeroext %conv, ptr noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @t4_free_raw_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %idx, i8 noundef zeroext %lookup_type, i8 noundef zeroext %port_id, i1 noundef zeroext %sleep_ok) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then3 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_alloc_raw_mac_filt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_free_encap_mac_filt(ptr noundef %adap, i32 noundef %viid, i32 noundef %idx, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %idx to i16
  %call = tail call fastcc i32 @cxgb4_mps_ref_dec(ptr noundef %adap, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @t4_free_encap_mac_filt(ptr noundef %adap, i32 noundef %viid, i32 noundef %idx, i1 noundef zeroext %sleep_ok) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_free_encap_mac_filt(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_alloc_encap_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %vni, i32 noundef %vni_mask, i8 noundef zeroext %dip_hit, i8 noundef zeroext %lookup_type, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t4_alloc_encap_mac_filt(ptr noundef %adap, i32 noundef %viid, ptr noundef %addr, ptr noundef %mask, i32 noundef %vni, i32 noundef %vni_mask, i8 noundef zeroext %dip_hit, i8 noundef zeroext %lookup_type, i1 noundef zeroext %sleep_ok) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i16
  %call1 = tail call fastcc i32 @cxgb4_mps_ref_inc(ptr noundef %adap, ptr noundef %addr, i16 noundef zeroext %conv, ptr noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @t4_free_encap_mac_filt(ptr noundef %adap, i32 noundef %viid, i32 noundef -12, i1 noundef zeroext %sleep_ok) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then3 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_alloc_encap_mac_filt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_init_mps_ref_entries(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mps_ref_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 45
  tail call void @__raw_spin_lock_init(ptr noundef %mps_ref_lock, ptr noundef nonnull @.str, ptr noundef nonnull @cxgb4_init_mps_ref_entries.__key, i16 noundef signext 3) #5
  %mps_ref = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44
  %0 = ptrtoint ptr %mps_ref to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %mps_ref, ptr %mps_ref, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mps_ref, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_free_mps_ref_entries(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mps_ref = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 44
  %0 = ptrtoint ptr %mps_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mps_ref, align 4
  %cmp.i.not = icmp eq ptr %1, %mps_ref
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mps_ref_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %mps_ref_lock) #5
  %2 = ptrtoint ptr %mps_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mps_ref, align 8
  %cmp.not25 = icmp eq ptr %3, %mps_ref
  br i1 %cmp.not25, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %mps_entry.026 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %mps_entry.026 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %mps_entry.026, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mps_entry.026) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.026, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %mps_entry.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mps_entry.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %mps_entry.026 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %mps_entry.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mps_entry.026, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mps_entry.026) #5
  %cmp.not = icmp eq ptr %tmp.0, %mps_ref
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mps_ref_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @cxgb4_init_mps_ref_entries.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_mps.c", i32 222, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2148342505}
!13 = !{i64 2148256969, i64 2148257001, i64 2148257030, i64 2148257064, i64 2148257095, i64 2148257118}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149564254}
!16 = !{i64 2148254504, i64 2148254536, i64 2148254565, i64 2148254599, i64 2148254630, i64 2148254653}
!17 = !{!"branch_weights", i32 1, i32 2000}
