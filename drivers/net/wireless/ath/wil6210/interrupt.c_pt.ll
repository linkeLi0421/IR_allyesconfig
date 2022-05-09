; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/interrupt.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/interrupt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@wil6210_mask_halp.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wil6210_mask_halp\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/ath/wil6210/interrupt.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[ IRQ]mask_halp\0A\00", [44 x i8] zeroinitializer }, align 32
@wil_mask_irq.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wil_mask_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[ IRQ]mask_irq\0A\00", [45 x i8] zeroinitializer }, align 32
@wil_unmask_irq.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil_unmask_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ IRQ]unmask_irq\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_configure_interrupt_moderation.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wil_configure_interrupt_moderation\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DBG[ IRQ]configure_interrupt_moderation\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: set ITR_TX_CNT_TRSH = %d usec\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: set ITR_TX_IDL_CNT_TRSH = %d usec\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: set ITR_RX_CNT_TRSH = %d usec\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: set ITR_RX_IDL_CNT_TRSH = %d usec\0A\00", [57 x i8] zeroinitializer }, align 32
@wil6210_set_halp.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil6210_set_halp\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DBG[ IRQ]set_halp\0A\00", [45 x i8] zeroinitializer }, align 32
@wil6210_clear_halp.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil6210_clear_halp\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ IRQ]clear_halp\0A\00", [43 x i8] zeroinitializer }, align 32
@wil6210_init_irq.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil6210_init_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[MISC]init_irq: %s, n_msi=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@wil6210_fini_irq.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil6210_fini_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DBG[MISC]fini_irq:\0A\00", [44 x i8] zeroinitializer }, align 32
@wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wil6210_mask_irq_misc\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[ IRQ]mask_irq_misc: mask_halp(%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil6210_mask_irq_pseudo\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[ IRQ]mask_irq_pseudo\0A\00", [38 x i8] zeroinitializer }, align 32
@wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil6210_unmask_irq_pseudo\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ IRQ]unmask_irq_pseudo\0A\00", [36 x i8] zeroinitializer }, align 32
@wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil6210_unmask_irq_misc\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DBG[ IRQ]unmask_irq_misc: unmask_halp(%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@wil6210_unmask_halp.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil6210_unmask_halp\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DBG[ IRQ]unmask_halp\0A\00", [42 x i8] zeroinitializer }, align 32
@wil6210_irq_tx_edma.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil6210_irq_tx_edma\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[ IRQ]ISR TX 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: spurious IRQ: TX\0A\00", [42 x i8] zeroinitializer }, align 32
@wil6210_irq_tx_edma.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[ IRQ]TX status ring\0A\00", [39 x i8] zeroinitializer }, align 32
@wil6210_irq_tx_edma.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.40, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[TXRX]NAPI(Tx) schedule\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Got Tx status ring IRQ while in reset\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: un-handled TX ISR bits 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_irq_tx = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/wil6210/trace.h\00", [55 x i8] zeroinitializer }, align 32
@trace_wil6210_irq_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@wil6210_irq_rx_edma.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wil6210_irq_rx_edma\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[ IRQ]ISR RX 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: spurious IRQ: RX\0A\00", [42 x i8] zeroinitializer }, align 32
@wil6210_irq_rx_edma.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[ IRQ]RX status ring\0A\00", [39 x i8] zeroinitializer }, align 32
@wil6210_irq_rx_edma.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[TXRX]NAPI(Rx) schedule\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Got Rx interrupt while stopping interface\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Got Rx interrupt while in reset\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: un-handled RX ISR bits 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_irq_rx = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_irq_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wil6210_irq_tx.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.37, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6210_irq_tx\00", [17 x i8] zeroinitializer }, align 32
@wil6210_irq_tx.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[ IRQ]TX done\0A\00", [46 x i8] zeroinitializer }, align 32
@wil6210_irq_tx.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.40, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Got Tx interrupt while in reset\0A\00", [59 x i8] zeroinitializer }, align 32
@wil6210_irq_rx.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.47, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wil6210_irq_rx\00", [17 x i8] zeroinitializer }, align 32
@wil6210_irq_rx.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DBG[ IRQ]RX done / RX_HTRSH received, ISR (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@wil6210_irq_rx.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.50, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil6210_tx\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wil6210_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wil6210_misc\00", [19 x i8] zeroinitializer }, align 32
@wil6210_irq_misc.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wil6210_irq_misc\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DBG[ IRQ]ISR MISC 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: spurious IRQ: MISC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Firmware error detected, assert codes FW 0x%08x, UCODE 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@wil6210_irq_misc.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.66, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DBG[ IRQ]IRQ: FW ready\0A\00", [40 x i8] zeroinitializer }, align 32
@wil6210_irq_misc.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[ IRQ]irq_misc: HALP IRQ invoked\0A\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_irq_misc = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_irq_misc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: rx mbox entry too small (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.wil_validate_mbox_regs = private unnamed_addr constant [23 x i8] c"wil_validate_mbox_regs\00", align 1
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: tx mbox entry too small (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@wil6210_irq_misc_thread.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wil6210_irq_misc_thread\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[ IRQ]Thread ISR MISC 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: notify platform driver about FW crash\00", [54 x i8] zeroinitializer }, align 32
@wil6210_irq_misc_thread.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ IRQ]MBOX event\0A\00", [43 x i8] zeroinitializer }, align 32
@wil6210_irq_misc_thread.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.74, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DBG[ IRQ]un-handled MISC ISR bits 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@wil6210_irq_misc_thread.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[ IRQ]set suspend_resp_comp to true\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_wil6210_irq_misc_thread = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_irq_misc_thread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOURCE=wil6210\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EVENT=FW_ERROR\00", [17 x i8] zeroinitializer }, align 32
@__const.wil_notify_fw_error.envp = private unnamed_addr constant [3 x ptr] [ptr @.str.76, ptr @.str.77, ptr null], align 4
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Notify about firmware error\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.wil_notify_fw_error = private unnamed_addr constant [20 x i8] c"wil_notify_fw_error\00", align 1
@wil6210_hardirq.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wil6210_hardirq\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DBG[ IRQ]Pseudo IRQ 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [163 x i8], [61 x i8] } { [163 x i8] c"%s: IRQ when it should be masked: pseudo 0x%08x\0ARx   icm:icr:imv 0x%08x 0x%08x 0x%08x\0ATx   icm:icr:imv 0x%08x 0x%08x 0x%08x\0AMisc icm:icr:imv 0x%08x 0x%08x 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.wil6210_debug_irq_mask = private unnamed_addr constant [23 x i8] c"wil6210_debug_irq_mask\00", align 1
@__tracepoint_wil6210_irq_pseudo = external dso_local global %struct.tracepoint, align 4
@trace_wil6210_irq_pseudo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wil6210_thread_irq.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wil6210_thread_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DBG[ IRQ]Thread IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@wil6210_thread_irq.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.75, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 110, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 179, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 191, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 240, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 251, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 260, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 269, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 278, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 859, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 867, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 878, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 901, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 101, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 118, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 170, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 153, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 162, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 411, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 414, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 420, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 423, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 427, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 432, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireless/ath/wil6210/trace.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 134, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 108, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 360, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 363, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 369, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 373, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 377, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 381, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 386, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 457, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 466, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 475, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 298, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 314, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 810, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 815, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 821, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 545, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 548, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 558, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 570, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 586, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 520, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 525, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 608, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 616, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 624, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 630, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 640, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 497, i32 9 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 498, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 501, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 764, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 732, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [48 x i8] c"../drivers/net/wireless/ath/wil6210/interrupt.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 653, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_mask_halp(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_halp.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_mask_halp, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_halp.__UNIQUE_ID_ddebug375, ptr noundef %1, ptr noundef nonnull @.str.3) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_unmask_irq_tx(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 7116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_unmask_irq_tx_edma(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 246056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_unmask_irq_rx(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %connected_vifs = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connected_vifs, i32 noundef 4) #7
  %0 = ptrtoint ptr %connected_vifs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %connected_vifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.inv = icmp slt i32 %1, 1
  %cond = select i1 %cmp.inv, i32 16777216, i32 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 7144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_unmask_irq_rx_edma(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 246028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_mask_irq(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_mask_irq.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_mask_irq, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_mask_irq.__UNIQUE_ID_ddebug380, ptr noundef %1, ptr noundef nonnull @.str.5) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 7112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %5, i32 246052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %7, i32 7140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %9, i32 246024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_mask_irq, %if.then.i)) #7
          to label %wil6210_mask_irq_misc.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, ptr noundef %11, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  br label %wil6210_mask_irq_misc.exit

wil6210_mask_irq_misc.exit:                       ; preds = %if.then.i, %do.end5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %13, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_mask_irq, %if.then.i23)) #7
          to label %wil6210_mask_irq_pseudo.exit [label %if.then.i23], !srcloc !208

if.then.i23:                                      ; preds = %wil6210_mask_irq_misc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i22 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev.i22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376, ptr noundef %15, ptr noundef nonnull @.str.29) #7
  br label %wil6210_mask_irq_pseudo.exit

wil6210_mask_irq_pseudo.exit:                     ; preds = %if.then.i23, %wil6210_mask_irq_misc.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %17, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_unmask_irq(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_unmask_irq.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_unmask_irq, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_unmask_irq.__UNIQUE_ID_ddebug381, ptr noundef %1, ptr noundef nonnull @.str.7) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 7120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 7092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 7148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -9) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %9, i32 246032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 246004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_unmask_irq, %if.then.i)) #7
          to label %wil6210_unmask_irq_pseudo.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, ptr noundef %13, ptr noundef nonnull @.str.31) #7
  br label %wil6210_unmask_irq_pseudo.exit

wil6210_unmask_irq_pseudo.exit:                   ; preds = %if.then.i, %do.end5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.31) #7
  %status.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -117440513) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %16 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %wil6210_unmask_irq_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i32 = getelementptr i8, ptr %19, i32 246056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 33554432) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %21, i32 246028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 16777216) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  br label %if.end9

if.else:                                          ; preds = %wil6210_unmask_irq_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i36 = getelementptr i8, ptr %19, i32 7116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %connected_vifs.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connected_vifs.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %connected_vifs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %connected_vifs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.inv.i = icmp slt i32 %23, 1
  %cond.i = select i1 %cmp.inv.i, i32 16777216, i32 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %25, i32 7144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %cond.i) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  tail call void @arm_heavy_mb() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_unmask_irq, %if.then.i40)) #7
          to label %wil6210_unmask_irq_misc.exit [label %if.then.i40], !srcloc !208

if.then.i40:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i39 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %26 = ptrtoint ptr %main_ndev.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev.i39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26) #7
  br label %wil6210_unmask_irq_misc.exit

wil6210_unmask_irq_misc.exit:                     ; preds = %if.then.i40, %if.end9
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %29, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 184) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_configure_interrupt_moderation_edma(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 246068
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %3 = or i32 %2, 838860800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 246068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %7, i32 245960
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %9 = or i32 %8, 1241579520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i11 = getelementptr i8, ptr %11, i32 245960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i11, i32 %9) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %rx_max_burst_duration = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 32
  %12 = ptrtoint ptr %rx_max_burst_duration to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_max_burst_duration, align 8
  %or = or i32 %13, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %15 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 245760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %18, i32 245764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %14) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %20, i32 221912
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %22 = and i32 %21, 33488895
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %24, i32 221912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %22) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %26, i32 221912
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i5.i19 = getelementptr i8, ptr %30, i32 221912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i19, i32 %28) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil_configure_interrupt_moderation(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_configure_interrupt_moderation.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_configure_interrupt_moderation, %if.then)) #7
          to label %do.end7 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_configure_interrupt_moderation.__UNIQUE_ID_ddebug382, ptr noundef %5, ptr noundef nonnull @.str.9) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.9) #7
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp eq i32 %7, 6
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 7484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %tx_max_burst_duration = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 30
  %10 = ptrtoint ptr %tx_max_burst_duration to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_burst_duration, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %14, i32 7476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %12) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %tx_max_burst_duration to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_max_burst_duration, align 64
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %18, i32 7484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %20, i32 7528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 134217728) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %tx_interframe_timeout = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 31
  %21 = ptrtoint ptr %tx_interframe_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_interframe_timeout, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %25, i32 7520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %23) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %tx_interframe_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_interframe_timeout, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %29, i32 7528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %31, i32 7500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 134217728) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %rx_max_burst_duration = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 32
  %32 = ptrtoint ptr %rx_max_burst_duration to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_max_burst_duration, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %35 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %36, i32 7492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %34) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %rx_max_burst_duration to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_max_burst_duration, align 8
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %40, i32 7500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %42, i32 7516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 134217728) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %rx_interframe_timeout = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 33
  %43 = ptrtoint ptr %rx_interframe_timeout to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_interframe_timeout, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %47, i32 7508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %45) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %rx_interframe_timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_interframe_timeout, align 4
  tail call void (ptr, ptr, ...) @__wil_info(ptr noundef %wil, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %51, i32 7516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 50331648) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_clear_irq(ptr nocapture noundef readonly %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csr = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 7124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !210
  %3 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 7096
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !210
  %6 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 246008
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %8) #7, !srcloc !210
  %9 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 246036
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %11) #7, !srcloc !210
  %12 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 7152
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_set_halp(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_set_halp.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_set_halp, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_set_halp.__UNIQUE_ID_ddebug405, ptr noundef %1, ptr noundef nonnull @.str.15) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 7160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_clear_halp(ptr noundef %wil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_clear_halp.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_clear_halp, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_clear_halp.__UNIQUE_ID_ddebug406, ptr noundef %1, ptr noundef nonnull @.str.17) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 7152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_halp.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_clear_halp, %if.then.i)) #7
          to label %wil6210_unmask_halp.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_halp.__UNIQUE_ID_ddebug378, ptr noundef %5, ptr noundef nonnull @.str.35) #7
  br label %wil6210_unmask_halp.exit

wil6210_unmask_halp.exit:                         ; preds = %if.then.i, %do.end5
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil6210_init_irq(ptr noundef %wil, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_init_irq.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_init_irq, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %2 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool5.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_init_irq.__UNIQUE_ID_ddebug407, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, i32 noundef %3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %n_msi9 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %4 = ptrtoint ptr %n_msi9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_msi9, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond11, i32 noundef %5) #7
  %use_enhanced_dma_hw = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 67
  %6 = ptrtoint ptr %use_enhanced_dma_hw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_enhanced_dma_hw, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool15.not, ptr @wil6210_irq_tx, ptr @wil6210_irq_tx_edma
  %spec.select49 = select i1 %tobool15.not, ptr @wil6210_irq_rx, ptr @wil6210_irq_rx_edma
  %8 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %8, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 68, i32 19
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select49, ptr %10, align 4
  %12 = ptrtoint ptr %n_msi9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_msi9, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then24, label %if.else26

if.then24:                                        ; preds = %do.end8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 8
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef %15, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.59, ptr noundef %wil) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then24.if.end31_crit_edge

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end.i:                                         ; preds = %if.then24
  %add.i = add i32 %irq, 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %call.i28.i = tail call i32 @request_threaded_irq(i32 noundef %add.i, ptr noundef %17, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.60, ptr noundef %wil) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool3.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.free0.i_crit_edge

if.end.i.free0.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free0.i

if.end5.i:                                        ; preds = %if.end.i
  %add6.i = add i32 %irq, 2
  %call7.i = tail call i32 @request_threaded_irq(i32 noundef %add6.i, ptr noundef nonnull @wil6210_irq_misc, ptr noundef nonnull @wil6210_irq_misc_thread, i32 noundef 128, ptr noundef nonnull @.str.61, ptr noundef %wil) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end31_crit_edge, label %free1.i

if.end5.i.if.end31_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

free1.i:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call ptr @free_irq(i32 noundef %add.i, ptr noundef %wil) #7
  br label %free0.i

free0.i:                                          ; preds = %free1.i, %if.end.i.free0.i_crit_edge
  %rc.0.i = phi i32 [ %call.i28.i, %if.end.i.free0.i_crit_edge ], [ %call7.i, %free1.i ]
  %call13.i = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %wil) #7
  br label %if.end31

if.else26:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  %cond29 = select i1 %tobool28.not, i32 128, i32 0
  %call30 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @wil6210_hardirq, ptr noundef nonnull @wil6210_thread_irq, i32 noundef %cond29, ptr noundef nonnull @.str, ptr noundef %wil) #7
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %free0.i, %if.end5.i.if.end31_crit_edge, %if.then24.if.end31_crit_edge
  %rc.0 = phi i32 [ %call30, %if.else26 ], [ %rc.0.i, %free0.i ], [ %call.i.i, %if.then24.if.end31_crit_edge ], [ 0, %if.end5.i.if.end31_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_tx_edma(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 246052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 246036
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call fastcc void @trace_wil6210_irq_tx(i32 noundef %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx_edma, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug389, ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %5) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.37, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then20, label %if.end21, !prof !219

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %do.end8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.if.then95_crit_edge, label %do.body32, !prof !219

if.end21.if.then95_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

do.body32:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx_edma, %if.then44)) #7
          to label %do.end50 [label %if.then44], !srcloc !208

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev45 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug390, ptr noundef %9, ptr noundef nonnull @.str.39) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.39) #7
  %and53 = and i32 %5, -3
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool55.not = icmp eq i32 %and1.i, 0
  br i1 %tobool55.not, label %if.else, label %do.body65, !prof !219

do.body65:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx_edma, %if.then77)) #7
          to label %do.end83 [label %if.then77], !srcloc !208

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev78 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev78 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev78, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug391, ptr noundef %13, ptr noundef nonnull @.str.40) #7
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %do.body65
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.40) #7
  %napi_tx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 53
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #7
  br i1 %call.i, label %if.then.i, label %do.end83.if.end87_crit_edge

do.end83.if.end87_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then.i:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi_tx) #7
  br label %if.end87

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36) #7
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then.i, %do.end83.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool88.not = icmp eq i32 %and53, 0
  br i1 %tobool88.not, label %if.end87.if.end96_crit_edge, label %if.end87.if.then95_crit_edge, !prof !220

if.end87.if.then95_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then95:                                        ; preds = %if.end87.if.then95_crit_edge, %if.end21.if.then95_crit_edge
  %isr.0144 = phi i32 [ %and53, %if.end87.if.then95_crit_edge ], [ %5, %if.end21.if.then95_crit_edge ]
  %need_unmask.0.off0142 = phi i1 [ %tobool55.not, %if.end87.if.then95_crit_edge ], [ true, %if.end21.if.then95_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.36, i32 noundef %isr.0144) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end87.if.end96_crit_edge
  %need_unmask.0.off0143 = phi i1 [ %need_unmask.0.off0142, %if.then95 ], [ %tobool55.not, %if.end87.if.end96_crit_edge ]
  %isr_count_tx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_tx, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %isr_count_tx, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %isr_count_tx, ptr %isr_count_tx, i32 1, ptr elementtype(i32) %isr_count_tx) #7, !srcloc !221
  br i1 %need_unmask.0.off0143, label %if.end96.cleanup.sink.split_crit_edge, label %if.end96.cleanup_crit_edge, !prof !219

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end96.cleanup.sink.split_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end96.cleanup.sink.split_crit_edge, %if.then20
  %retval.0.ph = phi i32 [ 0, %if.then20 ], [ 1, %if.end96.cleanup.sink.split_crit_edge ]
  tail call void @wil6210_unmask_irq_tx_edma(ptr noundef %cookie)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end96.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end96.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_rx_edma(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 246024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 246008
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call fastcc void @trace_wil6210_irq_rx(i32 noundef %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx_edma, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug386, ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %5) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.47, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then20, label %if.end21, !prof !219

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %do.end8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.if.then108_crit_edge, label %do.body32, !prof !219

if.end21.if.then108_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

do.body32:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx_edma, %if.then44)) #7
          to label %do.end50 [label %if.then44], !srcloc !208

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev45 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug387, ptr noundef %9, ptr noundef nonnull @.str.49) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.49) #7
  %and53 = and i32 %5, -2
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool55.not = icmp eq i32 %and1.i, 0
  br i1 %tobool55.not, label %if.else98, label %if.then62, !prof !219

if.then62:                                        ; preds = %do.end50
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool66.not = icmp eq i32 %14, 0
  br i1 %tobool66.not, label %if.else, label %do.body76, !prof !219

do.body76:                                        ; preds = %if.then62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx_edma, %if.then88)) #7
          to label %do.end94 [label %if.then88], !srcloc !208

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev89 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev89 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug388, ptr noundef %16, ptr noundef nonnull @.str.50) #7
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.body76
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.50) #7
  %napi_rx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 52
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #7
  br i1 %call.i, label %if.then.i, label %do.end94.if.end100_crit_edge

do.end94.if.end100_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then.i:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi_rx) #7
  br label %if.end100

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46) #7
  br label %if.end100

if.else98:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.46) #7
  br label %if.end100

if.end100:                                        ; preds = %if.else98, %if.else, %if.then.i, %do.end94.if.end100_crit_edge
  %need_unmask.0.off0 = phi i1 [ true, %if.else ], [ true, %if.else98 ], [ false, %do.end94.if.end100_crit_edge ], [ false, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool101.not = icmp eq i32 %and53, 0
  br i1 %tobool101.not, label %if.end100.if.end109_crit_edge, label %if.end100.if.then108_crit_edge, !prof !220

if.end100.if.then108_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %if.end100.if.then108_crit_edge, %if.end21.if.then108_crit_edge
  %isr.0160 = phi i32 [ %and53, %if.end100.if.then108_crit_edge ], [ %5, %if.end21.if.then108_crit_edge ]
  %need_unmask.0.off0158 = phi i1 [ %need_unmask.0.off0, %if.end100.if.then108_crit_edge ], [ true, %if.end21.if.then108_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.46, i32 noundef %isr.0160) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end100.if.end109_crit_edge
  %need_unmask.0.off0159 = phi i1 [ %need_unmask.0.off0158, %if.then108 ], [ %need_unmask.0.off0, %if.end100.if.end109_crit_edge ]
  %isr_count_rx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 71
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_rx, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %isr_count_rx, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %isr_count_rx, ptr %isr_count_rx, i32 1, ptr elementtype(i32) %isr_count_rx) #7, !srcloc !221
  br i1 %need_unmask.0.off0159, label %if.end109.cleanup.sink.split_crit_edge, label %if.end109.cleanup_crit_edge, !prof !219

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109.cleanup.sink.split_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end109.cleanup.sink.split_crit_edge, %if.then20
  %retval.0.ph = phi i32 [ 0, %if.then20 ], [ 1, %if.end109.cleanup.sink.split_crit_edge ]
  tail call void @wil6210_unmask_irq_rx_edma(ptr noundef %cookie)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end109.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end109.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_tx(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 7112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 7096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call fastcc void @trace_wil6210_irq_tx(i32 noundef %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx.__UNIQUE_ID_ddebug392, ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %5) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.37, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then20, label %if.end21, !prof !219

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.54) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %do.end8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.if.then96_crit_edge, label %do.body32, !prof !219

if.end21.if.then96_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

do.body32:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx, %if.then44)) #7
          to label %do.end50 [label %if.then44], !srcloc !208

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev45 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx.__UNIQUE_ID_ddebug393, ptr noundef %9, ptr noundef nonnull @.str.55) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.55) #7
  %and54 = and i32 %5, -33554432
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool56.not = icmp eq i32 %and1.i, 0
  br i1 %tobool56.not, label %if.else, label %do.body66, !prof !219

do.body66:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_tx, %if.then78)) #7
          to label %do.end84 [label %if.then78], !srcloc !208

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev79 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %12 = ptrtoint ptr %main_ndev79 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_tx.__UNIQUE_ID_ddebug394, ptr noundef %13, ptr noundef nonnull @.str.40) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %do.body66
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.40) #7
  %napi_tx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 53
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #7
  br i1 %call.i, label %if.then.i, label %do.end84.if.end88_crit_edge

do.end84.if.end88_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then.i:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi_tx) #7
  br label %if.end88

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #7
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then.i, %do.end84.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool89.not = icmp eq i32 %and54, 0
  br i1 %tobool89.not, label %if.end88.if.end97_crit_edge, label %if.end88.if.then96_crit_edge, !prof !220

if.end88.if.then96_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then96:                                        ; preds = %if.end88.if.then96_crit_edge, %if.end21.if.then96_crit_edge
  %isr.0146 = phi i32 [ %and54, %if.end88.if.then96_crit_edge ], [ %5, %if.end21.if.then96_crit_edge ]
  %need_unmask.0.off0144 = phi i1 [ %tobool56.not, %if.end88.if.then96_crit_edge ], [ true, %if.end21.if.then96_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.54, i32 noundef %isr.0146) #7
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end88.if.end97_crit_edge
  %need_unmask.0.off0145 = phi i1 [ %need_unmask.0.off0144, %if.then96 ], [ %tobool56.not, %if.end88.if.end97_crit_edge ]
  %isr_count_tx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_tx, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %isr_count_tx, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %isr_count_tx, ptr %isr_count_tx, i32 1, ptr elementtype(i32) %isr_count_tx) #7, !srcloc !221
  br i1 %need_unmask.0.off0145, label %if.end97.cleanup.sink.split_crit_edge, label %if.end97.cleanup_crit_edge, !prof !219

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end97.cleanup.sink.split_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end97.cleanup.sink.split_crit_edge, %if.then20
  %retval.0.ph = phi i32 [ 0, %if.then20 ], [ 1, %if.end97.cleanup.sink.split_crit_edge ]
  tail call void @wil6210_unmask_irq_tx(ptr noundef %cookie)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end97.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end97.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_rx(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 7140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 7124
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call fastcc void @trace_wil6210_irq_rx(i32 noundef %5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %6 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx.__UNIQUE_ID_ddebug383, ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %5) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.47, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then20, label %if.end21, !prof !219

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.57) #7
  br label %cleanup.sink.split

if.end21:                                         ; preds = %do.end8
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.if.then108_crit_edge, label %do.body32, !prof !219

if.end21.if.then108_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

do.body32:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx, %if.then44)) #7
          to label %do.end50 [label %if.then44], !srcloc !208

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev45 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx.__UNIQUE_ID_ddebug384, ptr noundef %9, ptr noundef nonnull @.str.58, i32 noundef %5) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.58, i32 noundef %5) #7
  %and53 = and i32 %5, -4
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool55.not = icmp eq i32 %and1.i, 0
  br i1 %tobool55.not, label %if.else98, label %if.then62, !prof !219

if.then62:                                        ; preds = %do.end50
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool66.not = icmp eq i32 %14, 0
  br i1 %tobool66.not, label %if.else, label %do.body76, !prof !219

do.body76:                                        ; preds = %if.then62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_rx, %if.then88)) #7
          to label %do.end94 [label %if.then88], !srcloc !208

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev89 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %15 = ptrtoint ptr %main_ndev89 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %main_ndev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_rx.__UNIQUE_ID_ddebug385, ptr noundef %16, ptr noundef nonnull @.str.50) #7
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.body76
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.50) #7
  %napi_rx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 52
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #7
  br i1 %call.i, label %if.then.i, label %do.end94.if.end100_crit_edge

do.end94.if.end100_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then.i:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi_rx) #7
  br label %if.end100

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57) #7
  br label %if.end100

if.else98:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__wil_err_ratelimited(ptr noundef %cookie, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.57) #7
  br label %if.end100

if.end100:                                        ; preds = %if.else98, %if.else, %if.then.i, %do.end94.if.end100_crit_edge
  %need_unmask.0.off0 = phi i1 [ true, %if.else ], [ true, %if.else98 ], [ false, %do.end94.if.end100_crit_edge ], [ false, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool101.not = icmp eq i32 %and53, 0
  br i1 %tobool101.not, label %if.end100.if.end109_crit_edge, label %if.end100.if.then108_crit_edge, !prof !220

if.end100.if.then108_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %if.end100.if.then108_crit_edge, %if.end21.if.then108_crit_edge
  %isr.0162 = phi i32 [ %and53, %if.end100.if.then108_crit_edge ], [ %5, %if.end21.if.then108_crit_edge ]
  %need_unmask.0.off0160 = phi i1 [ %need_unmask.0.off0, %if.end100.if.then108_crit_edge ], [ true, %if.end21.if.then108_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.57, i32 noundef %isr.0162) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end100.if.end109_crit_edge
  %need_unmask.0.off0161 = phi i1 [ %need_unmask.0.off0160, %if.then108 ], [ %need_unmask.0.off0, %if.end100.if.end109_crit_edge ]
  %isr_count_rx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 71
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %isr_count_rx, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %isr_count_rx, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %isr_count_rx, ptr %isr_count_rx, i32 1, ptr elementtype(i32) %isr_count_rx) #7, !srcloc !221
  br i1 %need_unmask.0.off0161, label %if.end109.cleanup.sink.split_crit_edge, label %if.end109.cleanup_crit_edge, !prof !219

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109.cleanup.sink.split_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end109.cleanup.sink.split_crit_edge, %if.then20
  %retval.0.ph = phi i32 [ 0, %if.then20 ], [ 1, %if.end109.cleanup.sink.split_crit_edge ]
  tail call void @wil6210_unmask_irq_rx(ptr noundef %cookie)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end109.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end109.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_hardirq(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 7272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !213
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp1 = icmp eq i32 %and, 255
  %4 = select i1 %cmp, i1 true, i1 %cmp1, !prof !219
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end, !prof !219

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then.i:                                        ; preds = %if.end
  %use_enhanced_dma_hw.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 67
  %8 = ptrtoint ptr %use_enhanced_dma_hw.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_enhanced_dma_hw.i, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr3.i = getelementptr i8, ptr %11, i32 246012
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !213
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 246008
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !213
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 246020
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !213
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %22 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %23, i32 246040
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !213
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %27, i32 246036
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !213
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %30 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %31, i32 246048
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77.i) #7, !srcloc !213
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr21.i = getelementptr i8, ptr %11, i32 7128
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !213
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %36 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %37, i32 7124
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #7, !srcloc !213
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %40 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csr.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %41, i32 7136
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #7, !srcloc !213
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %44 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %45, i32 7100
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !213
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %48 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %49, i32 7096
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !213
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %52 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %53, i32 7108
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #7, !srcloc !213
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then2.i
  %icm_rx.0.i = phi i32 [ %13, %if.then2.i ], [ %35, %if.else.i ]
  %icr_rx.0.i = phi i32 [ %17, %if.then2.i ], [ %39, %if.else.i ]
  %imv_rx.0.i = phi i32 [ %21, %if.then2.i ], [ %43, %if.else.i ]
  %icm_tx.0.i = phi i32 [ %25, %if.then2.i ], [ %47, %if.else.i ]
  %icr_tx.0.i = phi i32 [ %29, %if.then2.i ], [ %51, %if.else.i ]
  %imv_tx.0.i = phi i32 [ %33, %if.then2.i ], [ %55, %if.else.i ]
  %56 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %csr.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %57, i32 7156
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %59 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %60, i32 7152
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #7, !srcloc !213
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %63 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csr.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %64, i32 7164
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #7, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %and.i = and i32 %62, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool46.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool46.not.i, label %wil6210_debug_irq_mask.exit, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

wil6210_debug_irq_mask.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.wil6210_debug_irq_mask, i32 noundef %3, i32 noundef %icm_rx.0.i, i32 noundef %icr_rx.0.i, i32 noundef %imv_rx.0.i, i32 noundef %icm_tx.0.i, i32 noundef %icr_tx.0.i, i32 noundef %imv_tx.0.i, i32 noundef %67, i32 noundef %62, i32 noundef %66) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call fastcc void @trace_wil6210_irq_pseudo(i32 noundef %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_hardirq.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_hardirq, %if.then23)) #7
          to label %do.end26 [label %if.then23], !srcloc !208

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %68 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_hardirq.__UNIQUE_ID_ddebug404, ptr noundef %69, ptr noundef nonnull @.str.80, i32 noundef %3) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %if.end12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.80, i32 noundef %3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_hardirq, %if.then.i79)) #7
          to label %wil6210_mask_irq_pseudo.exit [label %if.then.i79], !srcloc !208

if.then.i79:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %70 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376, ptr noundef %71, ptr noundef nonnull @.str.29) #7
  br label %wil6210_mask_irq_pseudo.exit

wil6210_mask_irq_pseudo.exit:                     ; preds = %if.then.i79, %do.end26
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %73, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #7
  %and29 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %wil6210_mask_irq_pseudo.exit.if.end34_crit_edge, label %land.lhs.true

wil6210_mask_irq_pseudo.exit.if.end34_crit_edge:  ; preds = %wil6210_mask_irq_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %wil6210_mask_irq_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq_rx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 68, i32 19
  %74 = ptrtoint ptr %irq_rx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %irq_rx, align 4
  %call31 = tail call i32 %75(i32 noundef %irq, ptr noundef %cookie) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 2
  %spec.select = select i1 %cmp32, i32 2, i32 1
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true, %wil6210_mask_irq_pseudo.exit.if.end34_crit_edge
  %rc.0 = phi i32 [ 1, %wil6210_mask_irq_pseudo.exit.if.end34_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and35 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %irq_tx = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 68, i32 10
  %76 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_tx, align 8
  %call39 = tail call i32 %77(i32 noundef %irq, ptr noundef %cookie) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 2
  %spec.select76 = select i1 %cmp40, i32 2, i32 %rc.0
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true37, %if.end34.if.end42_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end34.if.end42_crit_edge ], [ %spec.select76, %land.lhs.true37 ]
  %and43 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end49, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %call46 = tail call i32 @wil6210_irq_misc(i32 noundef %irq, ptr noundef %cookie)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rc.1)
  %cmp50.not = icmp eq i32 %rc.1, 2
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp50.not
  br i1 %or.cond, label %land.lhs.true45.cleanup_crit_edge, label %land.lhs.true45.if.then51_crit_edge

land.lhs.true45.if.then51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rc.1)
  %cmp50.not.old = icmp eq i32 %rc.1, 2
  br i1 %cmp50.not.old, label %if.end49.cleanup_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %land.lhs.true45.if.then51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_hardirq, %if.then.i83)) #7
          to label %wil6210_unmask_irq_pseudo.exit [label %if.then.i83], !srcloc !208

if.then.i83:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i82 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %78 = ptrtoint ptr %main_ndev.i82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %main_ndev.i82, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, ptr noundef %79, ptr noundef nonnull @.str.31) #7
  br label %wil6210_unmask_irq_pseudo.exit

wil6210_unmask_irq_pseudo.exit:                   ; preds = %if.then.i83, %if.then51
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.31) #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %81, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 -117440513) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %wil6210_unmask_irq_pseudo.exit, %if.end49.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %wil6210_debug_irq_mask.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %wil6210_debug_irq_mask.exit ], [ 1, %wil6210_unmask_irq_pseudo.exit ], [ 2, %if.end49.cleanup_crit_edge ], [ 2, %land.lhs.true45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_thread_irq(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_thread_irq.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_thread_irq, %if.then)) #7
          to label %do.end6 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_thread_irq.__UNIQUE_ID_ddebug402, ptr noundef %1, ptr noundef nonnull @.str.83) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.83) #7
  %isr_misc = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 34
  %2 = ptrtoint ptr %isr_misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isr_misc, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %do.end6.if.end12_crit_edge, label %if.then10

do.end6.if.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @wil6210_irq_misc_thread(i32 noundef %irq, ptr noundef %cookie)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end6.if.end12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_thread_irq, %if.then.i)) #7
          to label %wil6210_unmask_irq_pseudo.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, ptr noundef %5, ptr noundef nonnull @.str.31) #7
  br label %wil6210_unmask_irq_pseudo.exit

wil6210_unmask_irq_pseudo.exit:                   ; preds = %if.then.i, %if.end12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.31) #7
  %status.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %6 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -117440513) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %suspend_resp_rcvd = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 93
  %8 = ptrtoint ptr %suspend_resp_rcvd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspend_resp_rcvd, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %wil6210_unmask_irq_pseudo.exit.if.end38_crit_edge, label %do.body17

wil6210_unmask_irq_pseudo.exit.if.end38_crit_edge: ; preds = %wil6210_unmask_irq_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.body17:                                        ; preds = %wil6210_unmask_irq_pseudo.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_thread_irq.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_thread_irq, %if.then29)) #7
          to label %do.end35 [label %if.then29], !srcloc !208

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev30 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_thread_irq.__UNIQUE_ID_ddebug403, ptr noundef %11, ptr noundef nonnull @.str.75) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.75) #7
  %suspend_resp_comp = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 94
  %12 = ptrtoint ptr %suspend_resp_comp to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspend_resp_comp, align 1
  %wq = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %wil6210_unmask_irq_pseudo.exit.if.end38_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wil6210_fini_irq(ptr noundef %wil, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_fini_irq.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_fini_irq, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_fini_irq.__UNIQUE_ID_ddebug408, ptr noundef %1, ptr noundef nonnull @.str.23) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.23) #7
  tail call void @wil_mask_irq(ptr noundef %wil)
  %call7 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %wil) #7
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 4
  %2 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then8, label %do.end5.if.end12_crit_edge

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %irq, 1
  %call9 = tail call ptr @free_irq(i32 noundef %add, ptr noundef %wil) #7
  %add10 = add i32 %irq, 2
  %call11 = tail call ptr @free_irq(i32 noundef %add10, ptr noundef %wil) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.end5.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_irq_tx(i32 noundef %x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_tx, i32 0, i32 1), ptr blockaddress(@trace_wil6210_irq_tx, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !208

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !220

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !222
  %call42 = tail call i32 @__traceiter_wil6210_irq_tx(ptr noundef null, i32 noundef %x) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !223
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !220

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_irq_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_wil6210_irq_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 137, ptr noundef nonnull @.str.44) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_irq_tx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_irq_rx(i32 noundef %x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_rx, i32 0, i32 1), ptr blockaddress(@trace_wil6210_irq_rx, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !208

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !220

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !226
  %call42 = tail call i32 @__traceiter_wil6210_irq_rx(ptr noundef null, i32 noundef %x) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !220

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_rx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_rx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_irq_rx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_wil6210_irq_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 132, ptr noundef nonnull @.str.44) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
declare dso_local i32 @__traceiter_wil6210_irq_rx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err_ratelimited(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_misc(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then.i)) #7
          to label %wil6210_mask_irq_misc.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #7
  br label %wil6210_mask_irq_misc.exit

wil6210_mask_irq_misc.exit:                       ; preds = %if.then.i, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %2 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -9) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i.i, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 7152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !213
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call fastcc void @trace_wil6210_irq_misc(i32 noundef %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !208

if.then:                                          ; preds = %wil6210_mask_irq_misc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %8 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc.__UNIQUE_ID_ddebug395, ptr noundef %9, ptr noundef nonnull @.str.63, i32 noundef %7) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %wil6210_mask_irq_misc.exit
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.63, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then.i130)) #7
          to label %wil6210_unmask_irq_misc.exit [label %if.then.i130], !srcloc !208

if.then.i130:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i129 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %10 = ptrtoint ptr %main_ndev.i129 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %main_ndev.i129, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, ptr noundef %11, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  br label %wil6210_unmask_irq_misc.exit

wil6210_unmask_irq_misc.exit:                     ; preds = %if.then.i130, %if.then12
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %13, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132, i32 176) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  br label %cleanup.sink.split

if.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool14.not = icmp sgt i32 %7, -1
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %rgf_fw_assert_code_addr = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 97
  %14 = ptrtoint ptr %rgf_fw_assert_code_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rgf_fw_assert_code_addr, align 8
  %16 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i.i, align 4
  %sub.i = add i32 %15, -8912896
  %add.ptr.i = getelementptr i8, ptr %17, i32 %sub.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !213
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  %rgf_ucode_assert_code_addr = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 98
  %20 = ptrtoint ptr %rgf_ucode_assert_code_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rgf_ucode_assert_code_addr, align 4
  %22 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i.i, align 4
  %sub.i134 = add i32 %21, -8912896
  %add.ptr.i135 = getelementptr i8, ptr %23, i32 %sub.i134
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #7, !srcloc !213
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.62, i32 noundef %19, i32 noundef %25) #7
  %status = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %and19 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end51_crit_edge, label %do.body24

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.body24:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then36)) #7
          to label %do.end42 [label %if.then36], !srcloc !208

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev37 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %26 = ptrtoint ptr %main_ndev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %main_ndev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc.__UNIQUE_ID_ddebug396, ptr noundef %27, ptr noundef nonnull @.str.66) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.66) #7
  %mbox_ctl.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 36
  %28 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %29, i32 700
  tail call void @wil_memcpy_fromio_32(ptr noundef %mbox_ctl.i, ptr noundef %add.ptr.i137, i32 noundef 32) #7
  %rx.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 36, i32 1
  tail call void @wil_mbox_ring_le2cpus(ptr noundef %rx.i) #7
  tail call void @wil_mbox_ring_le2cpus(ptr noundef %mbox_ctl.i) #7
  %entry_size.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 36, i32 1, i32 1
  %30 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %entry_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %31)
  %cmp.i = icmp ult i16 %31, 16
  br i1 %cmp.i, label %do.end42.wil_validate_mbox_regs.exit_crit_edge, label %if.end.i

do.end42.wil_validate_mbox_regs.exit_crit_edge:   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_validate_mbox_regs.exit

if.end.i:                                         ; preds = %do.end42
  %entry_size7.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 36, i32 0, i32 1
  %32 = ptrtoint ptr %entry_size7.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %entry_size7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %33)
  %cmp9.i = icmp ult i16 %33, 16
  br i1 %cmp9.i, label %if.end.i.wil_validate_mbox_regs.exit_crit_edge, label %if.then46

if.end.i.wil_validate_mbox_regs.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wil_validate_mbox_regs.exit

wil_validate_mbox_regs.exit:                      ; preds = %if.end.i.wil_validate_mbox_regs.exit_crit_edge, %do.end42.wil_validate_mbox_regs.exit_crit_edge
  %.sink.i = phi i16 [ %31, %do.end42.wil_validate_mbox_regs.exit_crit_edge ], [ %33, %if.end.i.wil_validate_mbox_regs.exit_crit_edge ]
  %.str.69.sink.i = phi ptr [ @.str.68, %do.end42.wil_validate_mbox_regs.exit_crit_edge ], [ @.str.69, %if.end.i.wil_validate_mbox_regs.exit_crit_edge ]
  %conv8.i = zext i16 %.sink.i to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull %.str.69.sink.i, ptr noundef nonnull @__func__.wil_validate_mbox_regs, i32 noundef %conv8.i) #7
  br label %if.end49

if.then46:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %status47 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status47) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %wil_validate_mbox_regs.exit
  %and50 = and i32 %7, -268435457
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end18.if.end51_crit_edge
  %isr.0 = phi i32 [ %and50, %if.end49 ], [ %7, %if.end18.if.end51_crit_edge ]
  %and52 = and i32 %isr.0, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end85_crit_edge, label %if.then54

if.end51.if.end85_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then54:                                        ; preds = %if.end51
  %and55 = and i32 %isr.0, -134217729
  %handle_icr = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 89, i32 3
  %34 = ptrtoint ptr %handle_icr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %handle_icr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool56.not = icmp eq i8 %35, 0
  br i1 %tobool56.not, label %if.then54.if.end85_crit_edge, label %if.then57

if.then54.if.end85_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then57:                                        ; preds = %if.then54
  %36 = ptrtoint ptr %handle_icr to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %handle_icr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then74)) #7
          to label %do.end80 [label %if.then74], !srcloc !208

if.then74:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev75 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %37 = ptrtoint ptr %main_ndev75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %main_ndev75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc.__UNIQUE_ID_ddebug397, ptr noundef %38, ptr noundef nonnull @.str.67) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %if.then57
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.67) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then.i140)) #7
          to label %wil6210_mask_irq_misc.exit143 [label %if.then.i140], !srcloc !208

if.then.i140:                                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i139 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %39 = ptrtoint ptr %main_ndev.i139 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %main_ndev.i139, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, ptr noundef %40, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  br label %wil6210_mask_irq_misc.exit143

wil6210_mask_irq_misc.exit143:                    ; preds = %if.then.i140, %do.end80
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i142 = getelementptr i8, ptr %42, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142, i32 -1) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %comp = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 89, i32 2
  tail call void @complete(ptr noundef %comp) #7
  br label %if.end85

if.end85:                                         ; preds = %wil6210_mask_irq_misc.exit143, %if.then54.if.end85_crit_edge, %if.end51.if.end85_crit_edge
  %isr.1 = phi i32 [ %and55, %wil6210_mask_irq_misc.exit143 ], [ %and55, %if.then54.if.end85_crit_edge ], [ %isr.0, %if.end51.if.end85_crit_edge ]
  %isr_misc = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 34
  %43 = ptrtoint ptr %isr_misc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %isr.1, ptr %isr_misc, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr.1)
  %tobool86.not = icmp eq i32 %isr.1, 0
  br i1 %tobool86.not, label %if.else, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc, %if.then.i145)) #7
          to label %wil6210_unmask_irq_misc.exit148 [label %if.then.i145], !srcloc !208

if.then.i145:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i144 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %44 = ptrtoint ptr %main_ndev.i144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %main_ndev.i144, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, ptr noundef %45, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  br label %wil6210_unmask_irq_misc.exit148

wil6210_unmask_irq_misc.exit148:                  ; preds = %if.then.i145, %if.else
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i147 = getelementptr i8, ptr %47, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147, i32 176) #7, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %wil6210_unmask_irq_misc.exit148, %wil6210_unmask_irq_misc.exit
  %retval.0.ph = phi i32 [ 0, %wil6210_unmask_irq_misc.exit ], [ 1, %wil6210_unmask_irq_misc.exit148 ]
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end85.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end85.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wil6210_irq_misc_thread(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  %envp.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_misc = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 34
  %0 = ptrtoint ptr %isr_misc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_misc, align 16
  tail call fastcc void @trace_wil6210_irq_misc_thread(i32 noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc_thread, %if.then)) #7
          to label %do.end6 [label %if.then], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %2 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug398, ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %1) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.71, i32 noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool9.not = icmp sgt i32 %1, -1
  br i1 %tobool9.not, label %do.end6.if.end18_crit_edge, label %if.then10

do.end6.if.end18_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10:                                        ; preds = %do.end6
  %recovery_state = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 19
  %4 = ptrtoint ptr %recovery_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %recovery_state, align 8
  tail call void @wil_fw_core_dump(ptr noundef %cookie) #7
  %main_ndev.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev.i, align 4
  %dev1.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 133
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #7
  %7 = call ptr @memcpy(ptr %envp.i, ptr @__const.wil_notify_fw_error.envp, i32 12)
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.wil_notify_fw_error) #7
  %call.i = call i32 @kobject_uevent_env(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull %envp.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #7
  %and11 = and i32 %1, 2147483647
  %notify = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 83, i32 4
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %cookie, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #7
  %10 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify, align 4
  %platform_handle = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 82
  %12 = ptrtoint ptr %platform_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_handle, align 8
  %call16 = call i32 %11(ptr noundef %13, i32 noundef 0) #7
  br label %if.end18

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void @wil_fw_error_recovery(ptr noundef %cookie) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13, %do.end6.if.end18_crit_edge
  %isr.0 = phi i32 [ %and11, %if.then13 ], [ %and11, %if.else ], [ %1, %do.end6.if.end18_crit_edge ]
  %and19 = and i32 %isr.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end46_crit_edge, label %do.body24

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.body24:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc_thread, %if.then36)) #7
          to label %do.end42 [label %if.then36], !srcloc !208

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev37 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %14 = ptrtoint ptr %main_ndev37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %main_ndev37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug399, ptr noundef %15, ptr noundef nonnull @.str.73) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.73) #7
  call void @wmi_recv_cmd(ptr noundef %cookie) #7
  %and45 = and i32 %isr.0, -536870913
  br label %if.end46

if.end46:                                         ; preds = %do.end42, %if.end18.if.end46_crit_edge
  %isr.1 = phi i32 [ %and45, %do.end42 ], [ %isr.0, %if.end18.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr.1)
  %tobool47.not = icmp eq i32 %isr.1, 0
  br i1 %tobool47.not, label %if.end46.if.end72_crit_edge, label %do.body51

if.end46.if.end72_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.body51:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc_thread, %if.then63)) #7
          to label %do.end69 [label %if.then63], !srcloc !208

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev64 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %16 = ptrtoint ptr %main_ndev64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main_ndev64, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug400, ptr noundef %17, ptr noundef nonnull @.str.74, i32 noundef %isr.1) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then63, %do.body51
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.74, i32 noundef %isr.1) #7
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end46.if.end72_crit_edge
  %18 = ptrtoint ptr %isr_misc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %isr_misc, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc_thread, %if.then.i)) #7
          to label %wil6210_unmask_irq_misc.exit [label %if.then.i], !srcloc !208

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev.i141 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %19 = ptrtoint ptr %main_ndev.i141 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %main_ndev.i141, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  br label %wil6210_unmask_irq_misc.exit

wil6210_unmask_irq_misc.exit:                     ; preds = %if.then.i, %if.end72
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  call void @arm_heavy_mb() #7
  %csr.i.i = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 5
  %21 = ptrtoint ptr %csr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 176) #7, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  call void @arm_heavy_mb() #7
  %n_msi = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 4
  %23 = ptrtoint ptr %n_msi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_msi, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp = icmp eq i32 %24, 3
  br i1 %cmp, label %land.lhs.true, label %wil6210_unmask_irq_misc.exit.if.end99_crit_edge

wil6210_unmask_irq_misc.exit.if.end99_crit_edge:  ; preds = %wil6210_unmask_irq_misc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

land.lhs.true:                                    ; preds = %wil6210_unmask_irq_misc.exit
  %suspend_resp_rcvd = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 93
  %25 = ptrtoint ptr %suspend_resp_rcvd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %suspend_resp_rcvd, align 4, !range !212
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool74.not = icmp eq i8 %26, 0
  br i1 %tobool74.not, label %land.lhs.true.if.end99_crit_edge, label %do.body78

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.body78:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil6210_irq_misc_thread, %if.then90)) #7
          to label %do.end96 [label %if.then90], !srcloc !208

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %main_ndev91 = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 3
  %27 = ptrtoint ptr %main_ndev91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %main_ndev91, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug401, ptr noundef %28, ptr noundef nonnull @.str.75) #7
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %do.body78
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %cookie, ptr noundef nonnull @.str.75) #7
  %suspend_resp_comp = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 94
  %29 = ptrtoint ptr %suspend_resp_comp to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %suspend_resp_comp, align 1
  %wq = getelementptr inbounds %struct.wil6210_priv, ptr %cookie, i32 0, i32 21
  call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %land.lhs.true.if.end99_crit_edge, %wil6210_unmask_irq_misc.exit.if.end99_crit_edge
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_irq_misc(i32 noundef %x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc, i32 0, i32 1), ptr blockaddress(@trace_wil6210_irq_misc, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !208

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !220

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !228
  %call42 = tail call i32 @__traceiter_wil6210_irq_misc(ptr noundef null, i32 noundef %x) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !229
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !220

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_irq_misc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_wil6210_irq_misc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 142, ptr noundef nonnull @.str.44) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_irq_misc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_memcpy_fromio_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_mbox_ring_le2cpus(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_irq_misc_thread(i32 noundef %x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc_thread, i32 0, i32 1), ptr blockaddress(@trace_wil6210_irq_misc_thread, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !208

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !220

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !230
  %call42 = tail call i32 @__traceiter_wil6210_irq_misc_thread(ptr noundef null, i32 noundef %x) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !220

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc_thread, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_misc_thread, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_irq_misc_thread.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_wil6210_irq_misc_thread.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 147, ptr noundef nonnull @.str.44) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
declare dso_local void @wil_fw_core_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_fw_error_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wmi_recv_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wil6210_irq_misc_thread(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wil6210_irq_pseudo(i32 noundef %x) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_pseudo, i32 0, i32 1), ptr blockaddress(@trace_wil6210_irq_pseudo, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !208

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !220

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !232
  %call42 = tail call i32 @__traceiter_wil6210_irq_pseudo(ptr noundef null, i32 noundef %x) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !233
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !220

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !198) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_pseudo, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wil6210_irq_pseudo, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wil6210_irq_pseudo.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_wil6210_irq_pseudo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 115, ptr noundef nonnull @.str.44) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !198) #7
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
declare dso_local i32 @__traceiter_wil6210_irq_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !99, !101, !102, !104, !106, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !127, !129, !131, !133, !135, !137, !138, !139, !141, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !159, !160, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !196}
!llvm.named.register.sp = !{!198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 110, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wil6210_mask_halp.__UNIQUE_ID_ddebug375, !1, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 179, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wil_mask_irq.__UNIQUE_ID_ddebug380, !7, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 191, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wil_unmask_irq.__UNIQUE_ID_ddebug381, !11, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 240, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wil_configure_interrupt_moderation.__UNIQUE_ID_ddebug382, !15, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 251, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 260, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 269, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 278, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 859, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wil6210_set_halp.__UNIQUE_ID_ddebug405, !27, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 867, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wil6210_clear_halp.__UNIQUE_ID_ddebug406, !31, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 878, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wil6210_init_irq.__UNIQUE_ID_ddebug407, !35, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!38 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 901, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wil6210_fini_irq.__UNIQUE_ID_ddebug408, !41, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 101, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wil6210_mask_irq_misc.__UNIQUE_ID_ddebug374, !45, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!48 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 118, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wil6210_mask_irq_pseudo.__UNIQUE_ID_ddebug376, !51, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 170, i32 2}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @wil6210_unmask_irq_pseudo.__UNIQUE_ID_ddebug379, !55, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 153, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wil6210_unmask_irq_misc.__UNIQUE_ID_ddebug377, !59, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 162, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wil6210_unmask_halp.__UNIQUE_ID_ddebug378, !63, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 411, i32 2}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug389, !67, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 414, i32 3}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 420, i32 3}
!74 = !{ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug390, !73, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 423, i32 4}
!77 = !{ptr @wil6210_irq_tx_edma.__UNIQUE_ID_ddebug391, !76, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 427, i32 4}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 432, i32 3}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 134, i32 1}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 360, i32 2}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug386, !91, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 363, i32 3}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 369, i32 3}
!98 = !{ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug387, !97, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 373, i32 5}
!101 = !{ptr @wil6210_irq_rx_edma.__UNIQUE_ID_ddebug388, !100, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 377, i32 5}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 381, i32 4}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 386, i32 3}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 129, i32 1}
!110 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 457, i32 2}
!113 = !{ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug392, !112, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 466, i32 3}
!116 = !{ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug393, !115, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!117 = !{ptr @wil6210_irq_tx.__UNIQUE_ID_ddebug394, !118, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 471, i32 4}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 475, i32 4}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 298, i32 2}
!123 = !{ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug383, !122, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 314, i32 3}
!126 = !{ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug384, !125, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!127 = !{ptr @wil6210_irq_rx.__UNIQUE_ID_ddebug385, !128, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 321, i32 5}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 810, i32 5}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 815, i32 5}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 821, i32 20}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 545, i32 2}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug395, !136, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 548, i32 3}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 558, i32 3}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 570, i32 3}
!145 = !{ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug396, !144, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 586, i32 4}
!148 = !{ptr @wil6210_irq_misc.__UNIQUE_ID_ddebug397, !147, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 139, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 520, i32 3}
!154 = !{ptr @__func__.wil_validate_mbox_regs, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 525, i32 3}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 608, i32 2}
!159 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug398, !158, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 616, i32 4}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 624, i32 3}
!165 = !{ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug399, !164, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 630, i32 3}
!168 = !{ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug400, !167, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 640, i32 3}
!171 = !{ptr @wil6210_irq_misc_thread.__UNIQUE_ID_ddebug401, !170, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 144, i32 1}
!174 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 497, i32 9}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 498, i32 9}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 501, i32 2}
!181 = !{ptr @__func__.wil_notify_fw_error, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 764, i32 2}
!184 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @wil6210_hardirq.__UNIQUE_ID_ddebug404, !183, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!186 = !{ptr @.str.81, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 732, i32 3}
!188 = !{ptr @__func__.wil6210_debug_irq_mask, !187, !"<string literal>", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/wil6210/trace.h", i32 104, i32 1}
!191 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 653, i32 2}
!194 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @wil6210_thread_irq.__UNIQUE_ID_ddebug402, !193, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!196 = !{ptr @wil6210_thread_irq.__UNIQUE_ID_ddebug403, !197, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/wil6210/interrupt.c", i32 661, i32 3}
!198 = !{!"sp"}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 2148740316, i64 2148740321, i64 2148740334, i64 2148740378, i64 2148740412, i64 2148740433}
!209 = !{i64 2157237773}
!210 = !{i64 4221124}
!211 = !{i64 2157238112}
!212 = !{i8 0, i8 2}
!213 = !{i64 4221542}
!214 = !{i64 2157237326}
!215 = !{i64 2157735164}
!216 = !{i64 2157735363}
!217 = !{i64 2157736482}
!218 = !{i64 2157633233}
!219 = !{!"branch_weights", i32 1, i32 2000}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2148258501, i64 2148258527, i64 2148258556, i64 2148258590, i64 2148258621, i64 2148258644}
!222 = !{i64 2157494340}
!223 = !{i64 2157494533}
!224 = !{i64 2149321382}
!225 = !{i64 2149322418}
!226 = !{i64 2157478667}
!227 = !{i64 2157478860}
!228 = !{i64 2157510089}
!229 = !{i64 2157510286}
!230 = !{i64 2157526212}
!231 = !{i64 2157526423}
!232 = !{i64 2157458717}
!233 = !{i64 2157458918}
