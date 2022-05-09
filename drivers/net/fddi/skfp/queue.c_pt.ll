; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/queue.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@queue_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_event\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/fddi/skfp/queue.c\00", [34 x i8] zeroinitializer }, align 32
@queue_event._entry_ptr = internal global ptr @queue_event._entry, section ".printk_index", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMT: queue overrun\00", [45 x i8] zeroinitializer }, align 32
@ev_dispatcher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ev_dispatcher\00", [18 x i8] zeroinitializer }, align 32
@ev_dispatcher._entry_ptr = internal global ptr @ev_dispatcher._entry, section ".printk_index", align 4
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid event in dispatcher\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 43, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [33 x i8] c"../drivers/net/fddi/skfp/queue.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 100, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ev_dispatcher._entry, ptr @ev_dispatcher._entry_ptr, ptr @queue_event._entry, ptr @queue_event._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_dispatcher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ev_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9
  %ev_get = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %ev_get to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %q, ptr %ev_get, align 4
  %ev_put = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %ev_put to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %ev_put, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @queue_event(ptr noundef %smc, i32 noundef %class, i32 noundef %event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %class to i16
  %ev_put = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ev_put to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_put, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %1, align 2
  %conv2 = trunc i32 %event to i16
  %3 = load ptr, ptr %ev_put, align 4
  %event5 = getelementptr inbounds %struct.event_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %event5, align 2
  %5 = load ptr, ptr %ev_put, align 4
  %incdec.ptr = getelementptr %struct.event_queue, ptr %5, i32 1
  %cmp = icmp eq ptr %incdec.ptr, %ev_put
  %q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9
  %spec.select = select i1 %cmp, ptr %q, ptr %incdec.ptr
  store ptr %spec.select, ptr %ev_put, align 4
  %ev_get = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %ev_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev_get, align 4
  %cmp17 = icmp eq ptr %spec.select, %7
  br i1 %cmp17, label %do.end, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.3) #7
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timer_event(ptr noundef %smc, i32 noundef %token) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %token, 16
  %conv.i = trunc i32 %shr to i16
  %ev_put.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ev_put.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_put.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv.i, ptr %1, align 2
  %conv2.i = trunc i32 %token to i16
  %3 = load ptr, ptr %ev_put.i, align 4
  %event5.i = getelementptr inbounds %struct.event_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event5.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2.i, ptr %event5.i, align 2
  %5 = load ptr, ptr %ev_put.i, align 4
  %incdec.ptr.i = getelementptr %struct.event_queue, ptr %5, i32 1
  %cmp.i = icmp eq ptr %incdec.ptr.i, %ev_put.i
  %q.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9
  %spec.select.i = select i1 %cmp.i, ptr %q.i, ptr %incdec.ptr.i
  store ptr %spec.select.i, ptr %ev_put.i, align 4
  %ev_get.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %ev_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev_get.i, align 4
  %cmp17.i = icmp eq ptr %spec.select.i, %7
  br i1 %cmp17.i, label %do.end.i, label %entry.queue_event.exit_crit_edge

entry.queue_event.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.3) #7
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %do.end.i, %entry.queue_event.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ev_dispatcher(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9
  %ev_get = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %ev_get to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_get, align 4
  %ev_put = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ev_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ev_put, align 4
  %cmp.not49 = icmp eq ptr %1, %3
  br i1 %cmp.not49, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %ev.050 = phi ptr [ %spec.select, %sw.epilog.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %4 = ptrtoint ptr %ev.050 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ev.050, align 2
  %conv = zext i16 %5 to i32
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %sw.default [
    i16 1, label %sw.bb
    i16 2, label %sw.bb4
    i16 3, label %sw.bb7
    i16 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %event = getelementptr inbounds %struct.event_queue, ptr %ev.050, i32 0, i32 1
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %event, align 2
  %conv3 = zext i16 %8 to i32
  tail call void @ecm(ptr noundef %smc, i32 noundef %conv3) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %event5 = getelementptr inbounds %struct.event_queue, ptr %ev.050, i32 0, i32 1
  %9 = ptrtoint ptr %event5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %event5, align 2
  %conv6 = zext i16 %10 to i32
  tail call void @cfm(ptr noundef %smc, i32 noundef %conv6) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %event8 = getelementptr inbounds %struct.event_queue, ptr %ev.050, i32 0, i32 1
  %11 = ptrtoint ptr %event8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %event8, align 2
  %conv9 = zext i16 %12 to i32
  tail call void @rmt(ptr noundef %smc, i32 noundef %conv9) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %event11 = getelementptr inbounds %struct.event_queue, ptr %ev.050, i32 0, i32 1
  %13 = ptrtoint ptr %event11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %event11, align 2
  %conv12 = zext i16 %14 to i32
  tail call void @smt_event(ptr noundef %smc, i32 noundef %conv12) #4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %15 = add i16 %5, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %16 = icmp ult i16 %15, 2
  br i1 %16, label %if.then, label %do.end

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %conv, -5
  %event18 = getelementptr inbounds %struct.event_queue, ptr %ev.050, i32 0, i32 1
  %17 = ptrtoint ptr %event18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %event18, align 2
  %conv19 = zext i16 %18 to i32
  tail call void @pcm(ptr noundef %smc, i32 noundef %sub, i32 noundef %conv19) #4
  br label %sw.epilog

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 121, ptr noundef nonnull @.str.5) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %incdec.ptr = getelementptr %struct.event_queue, ptr %ev.050, i32 1
  %cmp21 = icmp eq ptr %incdec.ptr, %ev_put
  %spec.select = select i1 %cmp21, ptr %q, ptr %incdec.ptr
  %19 = ptrtoint ptr %ev_get to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select, ptr %ev_get, align 4
  %20 = ptrtoint ptr %ev_put to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ev_put, align 4
  %cmp.not = icmp eq ptr %spec.select, %21
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @smt_online(ptr noundef %smc, i32 noundef %on) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %ev_put.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ev_put.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ev_put.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %1, align 2
  %conv2.i = select i1 %tobool.not, i16 2, i16 1
  %3 = load ptr, ptr %ev_put.i, align 4
  %event5.i = getelementptr inbounds %struct.event_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %event5.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2.i, ptr %event5.i, align 2
  %5 = load ptr, ptr %ev_put.i, align 4
  %incdec.ptr.i = getelementptr %struct.event_queue, ptr %5, i32 1
  %cmp.i = icmp eq ptr %incdec.ptr.i, %ev_put.i
  %q.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9
  %spec.select.i = select i1 %cmp.i, ptr %q.i, ptr %incdec.ptr.i
  store ptr %spec.select.i, ptr %ev_put.i, align 4
  %ev_get.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %ev_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ev_get.i, align 4
  %cmp17.i = icmp eq ptr %spec.select.i, %7
  br i1 %cmp17.i, label %do.end.i, label %entry.queue_event.exit_crit_edge

entry.queue_event.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.3) #7
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %do.end.i, %entry.queue_event.exit_crit_edge
  tail call void @ev_dispatcher(ptr noundef %smc)
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %8 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fddiSMTCF_State, align 2
  ret i16 %9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/queue.c", i32 43, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @queue_event._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @queue_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/fddi/skfp/queue.c", i32 100, i32 4}
!9 = !{ptr @ev_dispatcher._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @ev_dispatcher._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
