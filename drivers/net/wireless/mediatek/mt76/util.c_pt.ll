; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/util.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__mt76_poll\22, \22a\22\09"
module asm "\09.weak\09__crc___mt76_poll\09\09\09\09"
module asm "\09.long\09__crc___mt76_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mt76_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22__mt76_poll\22\09\09\09\09\09"
module asm "__kstrtabns___mt76_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__mt76_poll_msec\22, \22a\22\09"
module asm "\09.weak\09__crc___mt76_poll_msec\09\09\09\09"
module asm "\09.long\09__crc___mt76_poll_msec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mt76_poll_msec:\09\09\09\09\09"
module asm "\09.asciz \09\22__mt76_poll_msec\22\09\09\09\09\09"
module asm "__kstrtabns___mt76_poll_msec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_wcid_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_wcid_alloc\09\09\09\09"
module asm "\09.long\09__crc_mt76_wcid_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_wcid_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_wcid_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_wcid_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76_get_min_avg_rssi\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76_get_min_avg_rssi\09\09\09\09"
module asm "\09.long\09__crc_mt76_get_min_avg_rssi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76_get_min_avg_rssi:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76_get_min_avg_rssi\22\09\09\09\09\09"
module asm "__kstrtabns_mt76_get_min_avg_rssi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__mt76_worker_fn\22, \22a\22\09"
module asm "\09.weak\09__crc___mt76_worker_fn\09\09\09\09"
module asm "\09.long\09__crc___mt76_worker_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mt76_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22__mt76_worker_fn\22\09\09\09\09\09"
module asm "__kstrtabns___mt76_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab___mt76_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns___mt76_poll = external dso_local constant [0 x i8], align 1
@__ksymtab___mt76_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mt76_poll to i32), ptr @__kstrtab___mt76_poll, ptr @__kstrtabns___mt76_poll }, section "___ksymtab_gpl+__mt76_poll", align 4
@__kstrtab___mt76_poll_msec = external dso_local constant [0 x i8], align 1
@__kstrtabns___mt76_poll_msec = external dso_local constant [0 x i8], align 1
@__ksymtab___mt76_poll_msec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mt76_poll_msec to i32), ptr @__kstrtab___mt76_poll_msec, ptr @__kstrtabns___mt76_poll_msec }, section "___ksymtab_gpl+__mt76_poll_msec", align 4
@__kstrtab_mt76_wcid_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_wcid_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_wcid_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_wcid_alloc to i32), ptr @__kstrtab_mt76_wcid_alloc, ptr @__kstrtabns_mt76_wcid_alloc }, section "___ksymtab_gpl+mt76_wcid_alloc", align 4
@mt76_get_min_avg_rssi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/mediatek/mt76/util.c\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mt76_get_min_avg_rssi = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76_get_min_avg_rssi = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76_get_min_avg_rssi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76_get_min_avg_rssi to i32), ptr @__kstrtab_mt76_get_min_avg_rssi, ptr @__kstrtabns_mt76_get_min_avg_rssi }, section "___ksymtab_gpl+mt76_get_min_avg_rssi", align 4
@__kstrtab___mt76_worker_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns___mt76_worker_fn = external dso_local constant [0 x i8], align 1
@__ksymtab___mt76_worker_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mt76_worker_fn to i32), ptr @__kstrtab___mt76_worker_fn, ptr @__kstrtabns___mt76_worker_fn }, section "___ksymtab_gpl+__mt76_worker_fn", align 4
@__UNIQUE_ID_file375 = internal constant [50 x i8] c"mt76.file=drivers/net/wireless/mediatek/mt76/mt76\00", section ".modinfo", align 1
@__UNIQUE_ID_license376 = internal constant [26 x i8] c"mt76.license=Dual BSD/GPL\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private constant [45 x i8] c"../drivers/net/wireless/mediatek/mt76/util.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 90, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file375, ptr @__UNIQUE_ID_license376, ptr @__ksymtab___mt76_poll, ptr @__ksymtab___mt76_poll_msec, ptr @__ksymtab___mt76_worker_fn, ptr @__ksymtab_mt76_get_min_avg_rssi, ptr @__ksymtab_mt76_wcid_alloc, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %timeout, 10
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %div, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %offset) #6
  %and = and i32 %call, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %val)
  %cmp = icmp eq i32 %and, %val
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %dec = add nsw i32 %timeout.addr.0, -1
  %cmp1 = icmp sgt i32 %timeout.addr.0, 0
  br i1 %cmp1, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %timeout, 10
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %div, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %offset) #6
  %and = and i32 %call, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %val)
  %cmp = icmp eq i32 %and, %val
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %dec = add nsw i32 %timeout.addr.0, -1
  %cmp1 = icmp sgt i32 %timeout.addr.0, 0
  br i1 %cmp1, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_wcid_alloc(ptr nocapture noundef %mask, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 31
  %div = sdiv i32 %sub, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp19 = icmp sgt i32 %sub, 31
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %mask, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %iszero = icmp eq i32 %1, -1
  br i1 %iszero, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %neg = xor i32 %1, -1
  %2 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true), !range !38
  %mul = shl i32 %i.020, 5
  %add1 = or i32 %2, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %size)
  %cmp2.not = icmp slt i32 %add1, %size
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le = getelementptr i32, ptr %mask, i32 %i.020
  %shl = shl nuw i32 1, %2
  %or = or i32 %shl, %1
  %3 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %arrayidx.le, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add1, %if.end4 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_get_min_avg_rssi(ptr noundef %dev, i1 noundef zeroext %ext_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rx_lock = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcu_read_lock.exit
  %i.092 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc49, %cleanup.for.body_crit_edge ]
  %min_rssi.091 = phi i32 [ 0, %rcu_read_lock.exit ], [ %min_rssi.3, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 33, i32 %i.092
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx1 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 34, i32 %i.092
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %mul = shl nuw nsw i32 %i.092, 5
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %if.end
  %phy_mask.089 = phi i32 [ %7, %if.end ], [ %shr46, %for.inc.for.body4_crit_edge ]
  %mask.088 = phi i32 [ %5, %if.end ], [ %shr, %for.inc.for.body4_crit_edge ]
  %min_rssi.187 = phi i32 [ %min_rssi.091, %if.end ], [ %min_rssi.2, %for.inc.for.body4_crit_edge ]
  %j.085 = phi i32 [ %mul, %if.end ], [ %inc45, %for.inc.for.body4_crit_edge ]
  %and = and i32 %mask.088, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body4.for.inc_crit_edge, label %if.end7

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %for.body4
  %8 = and i32 %phy_mask.089, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp12.not = xor i1 %9, %ext_phy
  br i1 %cmp12.not, label %if.end15, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end15:                                         ; preds = %if.end7
  %arrayidx17 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 %j.085
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx17, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end15.do.end27_crit_edge

if.end15.do.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

land.lhs.true:                                    ; preds = %if.end15
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b74 = load i1, ptr @mt76_get_min_avg_rssi.__warned, align 1
  br i1 %.b74, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mt76_get_min_avg_rssi.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 90, ptr noundef nonnull @.str.1) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %if.end15.do.end27_crit_edge
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %do.end27.for.inc_crit_edge, label %if.end31

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %do.end27
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #6
  %inactive_count = getelementptr inbounds %struct.mt76_wcid, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %inactive_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inactive_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %inactive_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp32 = icmp slt i32 %13, 5
  br i1 %cmp32, label %if.then34, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %rssi = getelementptr inbounds %struct.mt76_wcid, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rssi, align 4
  %shr.i = lshr i32 %15, 10
  %sub = sub nsw i32 0, %shr.i
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %cur_rssi.0 = phi i32 [ %sub, %if.then34 ], [ 0, %if.end31.if.end37_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #6
  %sext = shl i32 %cur_rssi.0, 24
  %conv39 = ashr exact i32 %sext, 24
  %16 = tail call i32 @llvm.smin.i32(i32 %conv39, i32 %min_rssi.187)
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %do.end27.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %min_rssi.2 = phi i32 [ %min_rssi.187, %if.end7.for.inc_crit_edge ], [ %min_rssi.187, %do.end27.for.inc_crit_edge ], [ %min_rssi.187, %for.body4.for.inc_crit_edge ], [ %16, %if.end37 ]
  %inc45 = add nuw nsw i32 %j.085, 1
  %shr = lshr i32 %mask.088, 1
  %shr46 = lshr i32 %phy_mask.089, 1
  %tobool3.not = icmp ult i32 %mask.088, 2
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %min_rssi.3 = phi i32 [ %min_rssi.091, %for.body.cleanup_crit_edge ], [ %min_rssi.2, %for.inc.cleanup_crit_edge ]
  %inc49 = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc49, 9
  br i1 %exitcond.not, label %for.end50, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end50:                                        ; preds = %cleanup
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i75, label %for.end50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i78

for.end50.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i78:                                ; preds = %for.end50
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, %for.end50.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i.i.i.i.i82 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  tail call fastcc void @local_bh_enable()
  ret i32 %min_rssi.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mt76_worker_fn(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call161 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call161, label %entry.while.end_crit_edge, label %__here.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

__here.lr.ph:                                     ; preds = %entry
  %state = getelementptr inbounds %struct.mt76_worker, ptr %ptr, i32 0, i32 2
  %fn = getelementptr inbounds %struct.mt76_worker, ptr %ptr, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %while.cond.backedge.__here_crit_edge, %__here.lr.ph
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@__mt76_worker_fn, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  %call62 = tail call zeroext i1 @kthread_should_park() #6
  br i1 %call62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kthread_parkme() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %__here120, %if.then67, %if.then63
  %call = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.__here_crit_edge

while.cond.backedge.__here_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end64:                                         ; preds = %__here
  %call65 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @schedule() #6
  br label %while.cond.backedge

if.end68:                                         ; preds = %if.end64
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #6
  br label %__here120

__here120:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change124 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change124 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@__mt76_worker_fn, %__here120) to i32), ptr %task_state_change124, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %10, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  %12 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fn, align 4
  tail call void %13(ptr noundef %ptr) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #6
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_park() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_parkme() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab___mt76_poll, !1, !"__ksymtab___mt76_poll", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 25, i32 1}
!2 = !{ptr @__ksymtab___mt76_poll_msec, !3, !"__ksymtab___mt76_poll_msec", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 43, i32 1}
!4 = !{ptr @__ksymtab_mt76_wcid_alloc, !5, !"__ksymtab_mt76_wcid_alloc", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 65, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 90, i32 11}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mt76_get_min_avg_rssi, !11, !"__ksymtab_mt76_get_min_avg_rssi", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 111, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 118, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 131, i32 3}
!16 = !{ptr @__ksymtab___mt76_worker_fn, !17, !"__ksymtab___mt76_worker_fn", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 139, i32 1}
!18 = !{ptr @__UNIQUE_ID_file375, !19, !"__UNIQUE_ID_file375", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/util.c", i32 141, i32 1}
!20 = !{ptr @__UNIQUE_ID_license376, !19, !"__UNIQUE_ID_license376", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i32 0, i32 33}
!39 = !{i64 2149356722}
!40 = !{i64 2149356988}
!41 = !{i64 2157738792}
!42 = !{i64 2157743811}
