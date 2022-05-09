; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/smttimer.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/smttimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.fddi_addr = type { [6 x i8] }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_timer_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %t, align 4
  %st_fast = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10, i32 1
  %tm_active = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10, i32 1, i32 4
  %1 = ptrtoint ptr %tm_active to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %tm_active, align 4
  %2 = ptrtoint ptr %st_fast to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %st_fast, align 4
  tail call void @hwt_init(ptr noundef %smc) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_timer_stop(ptr noundef %smc, ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_active = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %tm_active to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tm_active, align 4
  %t = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10
  %1 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t, align 4
  %cmp = icmp eq ptr %2, %timer
  br i1 %cmp, label %land.lhs.true, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.for.cond.preheader_crit_edge

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hwt_stop(ptr noundef %smc) #2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %prev.0 = phi ptr [ %6, %for.body.for.cond_crit_edge ], [ %t, %for.cond.preheader ]
  %5 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.0, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp eq ptr %6, %timer
  br i1 %cmp4, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

if.then5:                                         ; preds = %for.body
  %7 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timer, align 4
  %9 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %prev.0, align 4
  %10 = load ptr, ptr %timer, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.then9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %tm_delta = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 2
  %11 = ptrtoint ptr %tm_delta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_delta, align 4
  %tm_delta11 = getelementptr inbounds %struct.smt_timer, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %tm_delta11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_delta11, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %tm_delta11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then5.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_timer_start(ptr noundef %smc, ptr noundef %timer, i32 noundef %time, i32 noundef %token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %div59 = lshr i32 %time, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %time)
  %tobool.not = icmp ult i32 %time, 16
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %div59
  %tm_active.i = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %tm_active.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tm_active.i, align 4
  %t.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10
  %1 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t.i, align 4
  %cmp.i = icmp eq ptr %2, %timer
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @hwt_stop(ptr noundef %smc) #2
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %prev.0.i = phi ptr [ %6, %for.body.i.for.cond.i_crit_edge ], [ %t.i, %for.cond.i.preheader ]
  %5 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.0.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %for.cond.i.smt_timer_stop.exit_crit_edge, label %for.body.i

for.cond.i.smt_timer_stop.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %smt_timer_stop.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp4.i = icmp eq ptr %6, %timer
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.i

if.then5.i:                                       ; preds = %for.body.i
  %7 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timer, align 4
  %9 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %prev.0.i, align 4
  %10 = load ptr, ptr %timer, align 4
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %if.then5.i.smt_timer_stop.exit_crit_edge, label %if.then9.i

if.then5.i.smt_timer_stop.exit_crit_edge:         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %smt_timer_stop.exit

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #4
  %tm_delta.i = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 2
  %11 = ptrtoint ptr %tm_delta.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_delta.i, align 4
  %tm_delta11.i = getelementptr inbounds %struct.smt_timer, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %tm_delta11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_delta11.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %tm_delta11.i, align 4
  br label %smt_timer_stop.exit

smt_timer_stop.exit:                              ; preds = %if.then9.i, %if.then5.i.smt_timer_stop.exit_crit_edge, %for.cond.i.smt_timer_stop.exit_crit_edge
  %tm_smc = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 1
  %15 = ptrtoint ptr %tm_smc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %smc, ptr %tm_smc, align 4
  %tm_token = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 3
  %16 = ptrtoint ptr %tm_token to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %token, ptr %tm_token, align 4
  %17 = ptrtoint ptr %tm_active.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %tm_active.i, align 4
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.i, align 4
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %smt_timer_stop.exit
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %timer, ptr %t.i, align 4
  %21 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %timer, align 4
  %tm_delta = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 2
  %22 = ptrtoint ptr %tm_delta to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %tm_delta, align 4
  br label %cleanup

if.end5:                                          ; preds = %smt_timer_stop.exit
  %call.i = tail call i32 @hwt_read(ptr noundef %smc) #2
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.i, align 4
  %tobool.not45.not.i = icmp eq ptr %24, null
  br i1 %tobool.not45.not.i, label %if.end5.while.end.i_crit_edge, label %while.body.i.preheader

if.end5.while.end.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end.i

while.body.i.preheader:                           ; preds = %if.end5
  %tm_delta.i6179 = getelementptr inbounds %struct.smt_timer, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %tm_delta.i6179 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_delta.i6179, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %26)
  %cmp.not.i80 = icmp ult i32 %call.i, %26
  br i1 %cmp.not.i80, label %while.body.i.preheader.if.end.thread.i_crit_edge, label %while.body.i.preheader.if.end.i64_crit_edge

while.body.i.preheader.if.end.i64_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end.i64

while.body.i.preheader.if.end.thread.i_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i

while.body.i:                                     ; preds = %if.end.i64
  %sub.i = sub i32 %delta.046.i82, %30
  %tm_delta.i61 = getelementptr inbounds %struct.smt_timer, ptr %33, i32 0, i32 2
  %27 = ptrtoint ptr %tm_delta.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_delta.i61, align 4
  %cmp.not.i = icmp ult i32 %sub.i, %28
  br i1 %cmp.not.i, label %while.body.i.if.end.thread.i_crit_edge, label %while.body.i.if.end.i64_crit_edge

while.body.i.if.end.i64_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i64

while.body.i.if.end.thread.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %while.body.i.if.end.thread.i_crit_edge, %while.body.i.preheader.if.end.thread.i_crit_edge
  %tm.047.i.lcssa78 = phi ptr [ %24, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %33, %while.body.i.if.end.thread.i_crit_edge ]
  %last.048.i.lcssa = phi ptr [ %t.i, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %tm.047.i81, %while.body.i.if.end.thread.i_crit_edge ]
  %delta.046.i.lcssa = phi i32 [ %call.i, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %sub.i, %while.body.i.if.end.thread.i_crit_edge ]
  %.lcssa71 = phi i32 [ %26, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %28, %while.body.i.if.end.thread.i_crit_edge ]
  %tm_delta.i61.le = getelementptr inbounds %struct.smt_timer, ptr %tm.047.i.lcssa78, i32 0, i32 2
  %sub7.i = sub i32 %.lcssa71, %delta.046.i.lcssa
  %29 = ptrtoint ptr %tm_delta.i61.le to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub7.i, ptr %tm_delta.i61.le, align 4
  br label %while.end.i

if.end.i64:                                       ; preds = %while.body.i.if.end.i64_crit_edge, %while.body.i.preheader.if.end.i64_crit_edge
  %30 = phi i32 [ %28, %while.body.i.if.end.i64_crit_edge ], [ %26, %while.body.i.preheader.if.end.i64_crit_edge ]
  %delta.046.i82 = phi i32 [ %sub.i, %while.body.i.if.end.i64_crit_edge ], [ %call.i, %while.body.i.preheader.if.end.i64_crit_edge ]
  %tm.047.i81 = phi ptr [ %33, %while.body.i.if.end.i64_crit_edge ], [ %24, %while.body.i.preheader.if.end.i64_crit_edge ]
  %tm_active.i62 = getelementptr inbounds %struct.smt_timer, ptr %tm.047.i81, i32 0, i32 4
  %31 = ptrtoint ptr %tm_active.i62 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %tm_active.i62, align 4
  %32 = ptrtoint ptr %tm.047.i81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tm.047.i81, align 4
  %tobool.not.i63 = icmp eq ptr %33, null
  br i1 %tobool.not.i63, label %if.end.i64.while.end.i_crit_edge, label %while.body.i

if.end.i64.while.end.i_crit_edge:                 ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i64.while.end.i_crit_edge, %if.end.thread.i, %if.end5.while.end.i_crit_edge
  %tm.0.lcssa.i = phi ptr [ null, %if.end5.while.end.i_crit_edge ], [ %tm.047.i.lcssa78, %if.end.thread.i ], [ null, %if.end.i64.while.end.i_crit_edge ]
  %last.0.lcssa.i = phi ptr [ %t.i, %if.end5.while.end.i_crit_edge ], [ %last.048.i.lcssa, %if.end.thread.i ], [ %tm.047.i81, %if.end.i64.while.end.i_crit_edge ]
  %34 = ptrtoint ptr %last.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %last.0.lcssa.i, align 4
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  store ptr %tm.0.lcssa.i, ptr %t.i, align 4
  %tobool12.not50.i = icmp eq ptr %36, null
  br i1 %tobool12.not50.i, label %while.end.i.for.cond.preheader_crit_edge, label %while.end.i.for.body.i65_crit_edge

while.end.i.for.body.i65_crit_edge:               ; preds = %while.end.i
  br label %for.body.i65

while.end.i.for.cond.preheader_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %while.end.i.for.body.i65_crit_edge
  %tm.251.i = phi ptr [ %38, %for.body.i65.for.body.i65_crit_edge ], [ %36, %while.end.i.for.body.i65_crit_edge ]
  %37 = ptrtoint ptr %tm.251.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tm.251.i, align 4
  %tm_token.i = getelementptr inbounds %struct.smt_timer, ptr %tm.251.i, i32 0, i32 3
  %39 = ptrtoint ptr %tm_token.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_token.i, align 4
  tail call void @timer_event(ptr noundef %smc, i32 noundef %40) #2
  %tobool12.not.i = icmp eq ptr %38, null
  br i1 %tobool12.not.i, label %for.body.i65.for.cond.preheader_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i65

for.body.i65.for.cond.preheader_crit_edge:        ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.body.i65.for.cond.preheader_crit_edge, %while.end.i.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %prev.0 = phi ptr [ %42, %for.body.for.cond_crit_edge ], [ %t.i, %for.cond.preheader ]
  %delta.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %41 = ptrtoint ptr %prev.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.0, align 4
  %tobool8.not = icmp eq ptr %42, null
  br i1 %tobool8.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  %43 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %timer, ptr %prev.0, align 4
  %44 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %timer, align 4
  %sub66 = sub i32 %spec.store.select, %delta.0
  %tm_delta1667 = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 2
  %45 = ptrtoint ptr %tm_delta1667 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub66, ptr %tm_delta1667, align 4
  br label %if.end22

for.body:                                         ; preds = %for.cond
  %tm_delta9 = getelementptr inbounds %struct.smt_timer, ptr %42, i32 0, i32 2
  %46 = ptrtoint ptr %tm_delta9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_delta9, align 4
  %add = add i32 %47, %delta.0
  %cmp = icmp ugt i32 %add, %spec.store.select
  br i1 %cmp, label %if.then18, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %tm_delta9.le = getelementptr inbounds %struct.smt_timer, ptr %42, i32 0, i32 2
  %48 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %timer, ptr %prev.0, align 4
  %49 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %42, ptr %timer, align 4
  %sub = sub i32 %spec.store.select, %delta.0
  %tm_delta16 = getelementptr inbounds %struct.smt_timer, ptr %timer, i32 0, i32 2
  %50 = ptrtoint ptr %tm_delta16 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub, ptr %tm_delta16, align 4
  %51 = ptrtoint ptr %tm_delta9.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_delta9.le, align 4
  %sub21 = sub i32 %52, %sub
  store i32 %sub21, ptr %tm_delta9.le, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.end.thread
  %53 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %t.i, align 4
  %tm_delta25 = getelementptr inbounds %struct.smt_timer, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %tm_delta25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_delta25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then2
  %.sink = phi i32 [ %56, %if.end22 ], [ %spec.store.select, %if.then2 ]
  tail call void @hwt_start(ptr noundef %smc, i32 noundef %.sink) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_force_irq(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %st_fast = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10, i32 1
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %st_fast, i32 noundef 32, i32 noundef 262146)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_timer_done(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hwt_read(ptr noundef %smc) #2
  %t.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 10
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t.i, align 4
  %tobool.not45.not.i = icmp eq ptr %1, null
  br i1 %tobool.not45.not.i, label %entry.while.end.i_crit_edge, label %while.body.i.preheader

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end.i

while.body.i.preheader:                           ; preds = %entry
  %tm_delta.i7 = getelementptr inbounds %struct.smt_timer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tm_delta.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_delta.i7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp.not.i8 = icmp ult i32 %call.i, %3
  br i1 %cmp.not.i8, label %while.body.i.preheader.if.end.thread.i_crit_edge, label %while.body.i.preheader.if.end.i_crit_edge

while.body.i.preheader.if.end.i_crit_edge:        ; preds = %while.body.i.preheader
  br label %if.end.i

while.body.i.preheader.if.end.thread.i_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i

while.body.i:                                     ; preds = %if.end.i
  %sub.i = sub i32 %delta.046.i10, %7
  %tm_delta.i = getelementptr inbounds %struct.smt_timer, ptr %10, i32 0, i32 2
  %4 = ptrtoint ptr %tm_delta.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_delta.i, align 4
  %cmp.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.not.i, label %while.body.i.if.end.thread.i_crit_edge, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

while.body.i.if.end.thread.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %while.body.i.if.end.thread.i_crit_edge, %while.body.i.preheader.if.end.thread.i_crit_edge
  %tm.047.i.lcssa6 = phi ptr [ %1, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %10, %while.body.i.if.end.thread.i_crit_edge ]
  %last.048.i.lcssa = phi ptr [ %t.i, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %tm.047.i9, %while.body.i.if.end.thread.i_crit_edge ]
  %delta.046.i.lcssa = phi i32 [ %call.i, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %sub.i, %while.body.i.if.end.thread.i_crit_edge ]
  %.lcssa = phi i32 [ %3, %while.body.i.preheader.if.end.thread.i_crit_edge ], [ %5, %while.body.i.if.end.thread.i_crit_edge ]
  %tm_delta.i.le = getelementptr inbounds %struct.smt_timer, ptr %tm.047.i.lcssa6, i32 0, i32 2
  %sub7.i = sub i32 %.lcssa, %delta.046.i.lcssa
  %6 = ptrtoint ptr %tm_delta.i.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub7.i, ptr %tm_delta.i.le, align 4
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.body.i.preheader.if.end.i_crit_edge
  %7 = phi i32 [ %5, %while.body.i.if.end.i_crit_edge ], [ %3, %while.body.i.preheader.if.end.i_crit_edge ]
  %delta.046.i10 = phi i32 [ %sub.i, %while.body.i.if.end.i_crit_edge ], [ %call.i, %while.body.i.preheader.if.end.i_crit_edge ]
  %tm.047.i9 = phi ptr [ %10, %while.body.i.if.end.i_crit_edge ], [ %1, %while.body.i.preheader.if.end.i_crit_edge ]
  %tm_active.i = getelementptr inbounds %struct.smt_timer, ptr %tm.047.i9, i32 0, i32 4
  %8 = ptrtoint ptr %tm_active.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %tm_active.i, align 4
  %9 = ptrtoint ptr %tm.047.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tm.047.i9, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.while.end.i_crit_edge, label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.end.thread.i, %entry.while.end.i_crit_edge
  %tm.0.lcssa.i = phi ptr [ null, %entry.while.end.i_crit_edge ], [ %tm.047.i.lcssa6, %if.end.thread.i ], [ null, %if.end.i.while.end.i_crit_edge ]
  %last.0.lcssa.i = phi ptr [ %t.i, %entry.while.end.i_crit_edge ], [ %last.048.i.lcssa, %if.end.thread.i ], [ %tm.047.i9, %if.end.i.while.end.i_crit_edge ]
  %11 = ptrtoint ptr %last.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %last.0.lcssa.i, align 4
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.i, align 4
  store ptr %tm.0.lcssa.i, ptr %t.i, align 4
  %tobool12.not50.i = icmp eq ptr %13, null
  br i1 %tobool12.not50.i, label %while.end.i.for.end.i_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %tm.251.i = phi ptr [ %15, %for.body.i.for.body.i_crit_edge ], [ %13, %while.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %tm.251.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tm.251.i, align 4
  %tm_token.i = getelementptr inbounds %struct.smt_timer, ptr %tm.251.i, i32 0, i32 3
  %16 = ptrtoint ptr %tm_token.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_token.i, align 4
  tail call void @timer_event(ptr noundef %smc, i32 noundef %17) #2
  %tobool12.not.i = icmp eq ptr %15, null
  br i1 %tobool12.not.i, label %for.end.ithread-pre-split, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end.ithread-pre-split:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %t.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.ithread-pre-split, %while.end.i.for.end.i_crit_edge
  %19 = phi ptr [ %.pr, %for.end.ithread-pre-split ], [ %tm.0.lcssa.i, %while.end.i.for.end.i_crit_edge ]
  %tobool17.not.i = icmp eq ptr %19, null
  br i1 %tobool17.not.i, label %for.end.i.timer_done.exit_crit_edge, label %if.then18.i

for.end.i.timer_done.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %timer_done.exit

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %tm_delta21.i = getelementptr inbounds %struct.smt_timer, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %tm_delta21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_delta21.i, align 4
  tail call void @hwt_start(ptr noundef %smc, i32 noundef %21) #2
  br label %timer_done.exit

timer_done.exit:                                  ; preds = %if.then18.i, %for.end.i.timer_done.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwt_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
