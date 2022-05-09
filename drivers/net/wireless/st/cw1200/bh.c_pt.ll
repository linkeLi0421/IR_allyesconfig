; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/bh.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/bh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cw1200_irq_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_cw1200_irq_handler\09\09\09\09"
module asm "\09.long\09__crc_cw1200_irq_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cw1200_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22cw1200_irq_handler\22\09\09\09\09\09"
module asm "__kstrtabns_cw1200_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.wsm_hdr = type { i16, i16 }
%struct.cw1200_debug_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cw1200_bh\00", [22 x i8] zeroinitializer }, align 32
@cw1200_register_bh.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->bh_work)\00", [62 x i8] zeroinitializer }, align 32
@cw1200_register_bh.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cw1200_register_bh\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/st/cw1200/bh.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[BH] register.\0A\00", [16 x i8] zeroinitializer }, align 32
@cw1200_register_bh.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->bh_wq\00", [19 x i8] zeroinitializer }, align 32
@cw1200_register_bh.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->bh_evt_wq\00", [47 x i8] zeroinitializer }, align 32
@cw1200_unregister_bh.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_unregister_bh\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BH] unregistered.\0A\00", [44 x i8] zeroinitializer }, align 32
@cw1200_irq_handler.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cw1200_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[BH] irq.\0A\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_cw1200_irq_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_cw1200_irq_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_cw1200_irq_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cw1200_irq_handler to i32), ptr @__kstrtab_cw1200_irq_handler, ptr @__kstrtabns_cw1200_irq_handler }, section "___ksymtab_gpl+cw1200_irq_handler", align 4
@cw1200_bh_wakeup.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_bh_wakeup\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[BH] wakeup.\0A\00", [18 x i8] zeroinitializer }, align 32
@cw1200_bh_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013[BH] wakeup failed (BH error)\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_bh_wakeup._entry_ptr = internal global ptr @cw1200_bh_wakeup._entry, section ".printk_index", align 4
@cw1200_bh_suspend.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw1200_bh_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[BH] suspend.\0A\00", [17 x i8] zeroinitializer }, align 32
@cw1200_bh_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 126, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BH error -- can't suspend\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw1200_bh_suspend._entry_ptr = internal global ptr @cw1200_bh_suspend._entry, section ".printk_index", align 4
@cw1200_bh_resume.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cw1200_bh_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[BH] resume.\0A\00", [18 x i8] zeroinitializer }, align 32
@cw1200_bh_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 141, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BH error -- can't resume\0A\00", [38 x i8] zeroinitializer }, align 32
@cw1200_bh_resume._entry_ptr = internal global ptr @cw1200_bh_resume._entry, section ".printk_index", align 4
@cw1200_enable_powersave.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_enable_powersave\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BH] Powerave is %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@cw1200_bh.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.29, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BH] Device wakedown. No data.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_bh.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.30, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[BH] waiting ...\0A\00", [46 x i8] zeroinitializer }, align 32
@cw1200_bh.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.31, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[BH] - rx: %d, tx: %d, term: %d, bh_err: %d, suspend: %d, status: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cw1200_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str, ptr @.str.4, i32 478, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missed interrupt? (%d frames outstanding)\0A\00", [53 x i8] zeroinitializer }, align 32
@cw1200_bh._entry_ptr = internal global ptr @cw1200_bh._entry, section ".printk_index", align 4
@cw1200_bh._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str, ptr @.str.4, i32 502, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Timeout waiting for TX confirm (%d/%d pending, %ld vs %lu).\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_bh._entry_ptr.35 = internal global ptr @cw1200_bh._entry.33, section ".printk_index", align 4
@cw1200_bh.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.36, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BH] Device wakedown. Timeout.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_bh.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.37, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BH] Device suspend.\0A\00", [42 x i8] zeroinitializer }, align 32
@cw1200_bh.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.38, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BH] Device wakedown. Suspend.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_bh._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str, ptr @.str.4, i32 529, ptr @.str.41, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to wait for resume: %ld.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cw1200_bh._entry_ptr.42 = internal global ptr @cw1200_bh._entry.39, section ".printk_index", align 4
@cw1200_bh.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str, ptr @.str.4, ptr @.str.43, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BH] Device resume.\0A\00", [43 x i8] zeroinitializer }, align 32
@cw1200_bh._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str, ptr @.str.4, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013[BH] Fatal error, exiting.\0A\00", [34 x i8] zeroinitializer }, align 32
@cw1200_bh._entry_ptr.46 = internal global ptr @cw1200_bh._entry.44, section ".printk_index", align 4
@cw1200_bh_read_ctrl_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[BH] Failed to read control register.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw1200_bh_read_ctrl_reg\00", [40 x i8] zeroinitializer }, align 32
@cw1200_bh_read_ctrl_reg._entry_ptr = internal global ptr @cw1200_bh_read_ctrl_reg._entry, section ".printk_index", align 4
@cw1200_bh_rx_helper.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_bh_rx_helper\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid read len: %zu (%04x)\00", [35 x i8] zeroinitializer }, align 32
@cw1200_bh_rx_helper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cw1200_bh_rx_helper.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Read aligned len: %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_bh_rx_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.4, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013rx blew up, len %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_bh_rx_helper._entry_ptr = internal global ptr @cw1200_bh_rx_helper._entry, section ".printk_index", align 4
@cw1200_bh_rx_helper.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.53, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<-- \00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@cw1200_bh_tx_helper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cw1200_bh_tx_helper.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cw1200_bh_tx_helper\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Write aligned len: %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_bh_tx_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013tx blew up, len %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@cw1200_bh_tx_helper._entry_ptr = internal global ptr @cw1200_bh_tx_helper._entry, section ".printk_index", align 4
@cw1200_bh_tx_helper.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.55, ptr @.str.4, ptr @.str.58, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"--> \00", [27 x i8] zeroinitializer }, align 32
@cw1200_device_wakeup.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_device_wakeup\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BH] Device wakeup.\0A\00", [43 x i8] zeroinitializer }, align 32
@cw1200_device_wakeup.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.59, ptr @.str.4, ptr @.str.61, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BH] Device awake.\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 56, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 63, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 65, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 75, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 76, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 91, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 96, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 112, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 114, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 124, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 126, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 139, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 141, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 227, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 433, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 450, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 460, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 476, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 499, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 507, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 514, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 516, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 527, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 532, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 606, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 183, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 253, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 268, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 283, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 297, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 387, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 393, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 399, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 194, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [39 x i8] c"../drivers/net/wireless/st/cw1200/bh.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 216, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__ksymtab_cw1200_irq_handler, ptr @cw1200_bh._entry, ptr @cw1200_bh._entry.33, ptr @cw1200_bh._entry.39, ptr @cw1200_bh._entry.44, ptr @cw1200_bh._entry_ptr, ptr @cw1200_bh._entry_ptr.35, ptr @cw1200_bh._entry_ptr.42, ptr @cw1200_bh._entry_ptr.46, ptr @cw1200_bh_read_ctrl_reg._entry, ptr @cw1200_bh_read_ctrl_reg._entry_ptr, ptr @cw1200_bh_resume._entry, ptr @cw1200_bh_resume._entry_ptr, ptr @cw1200_bh_rx_helper._entry, ptr @cw1200_bh_rx_helper._entry_ptr, ptr @cw1200_bh_suspend._entry, ptr @cw1200_bh_suspend._entry_ptr, ptr @cw1200_bh_tx_helper._entry, ptr @cw1200_bh_tx_helper._entry_ptr, ptr @cw1200_bh_wakeup._entry, ptr @cw1200_bh_wakeup._entry_ptr, ptr @.str, ptr @cw1200_register_bh.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cw1200_register_bh.__key.6, ptr @.str.7, ptr @cw1200_register_bh.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_bh.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_bh.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_register_bh.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_read_ctrl_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_rx_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_bh_tx_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_register_bh(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 1) #6
  %bh_workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 72
  %0 = ptrtoint ptr %bh_workqueue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %bh_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %bh_work = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 73
  tail call void @__init_work(ptr noundef %bh_work, i32 noundef 0) #6
  %1 = ptrtoint ptr %bh_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %bh_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 73, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cw1200_register_bh.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 73, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 73, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 73, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cw1200_bh_work, ptr %func, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_register_bh.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_register_bh, %if.then12)) #6
          to label %do.end15 [label %if.then12], !srcloc !148

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_register_bh.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.5) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body
  %bh_rx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_rx, i32 noundef 4) #6
  %5 = ptrtoint ptr %bh_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %bh_rx, align 4
  %bh_tx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 69
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_tx, i32 noundef 4) #6
  %6 = ptrtoint ptr %bh_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %bh_tx, align 4
  %bh_term = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 70
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_term, i32 noundef 4) #6
  %7 = ptrtoint ptr %bh_term to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %bh_term, align 4
  %bh_suspend = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 71
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_suspend, i32 noundef 4) #6
  %8 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %bh_suspend, align 4
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %9 = ptrtoint ptr %bh_error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bh_error, align 4
  %hw_bufs_used = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %10 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %hw_bufs_used, align 4
  %buf_id_tx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 77
  %11 = ptrtoint ptr %buf_id_tx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf_id_tx, align 4
  %buf_id_rx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 78
  %12 = ptrtoint ptr %buf_id_rx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf_id_rx, align 1
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__init_waitqueue_head(ptr noundef %bh_wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @cw1200_register_bh.__key.6) #6
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  tail call void @__init_waitqueue_head(ptr noundef %bh_evt_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @cw1200_register_bh.__key.8) #6
  %13 = ptrtoint ptr %bh_workqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %bh_work) #6
  %lnot25 = xor i1 %call.i, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  br i1 %call.i, label %do.end15.cleanup_crit_edge, label %do.end43, !prof !149

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %lnot.ext26, %do.end43 ], [ %lnot.ext26, %do.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw1200_bh_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1492
  tail call fastcc void @cw1200_bh(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_unregister_bh(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bh_term = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 70
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_term, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %bh_term, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_term, ptr %bh_term, i32 1, ptr elementtype(i32) %bh_term) #6, !srcloc !150
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %bh_workqueue = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 72
  %1 = ptrtoint ptr %bh_workqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bh_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #6
  %3 = ptrtoint ptr %bh_workqueue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bh_workqueue, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_unregister_bh.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_unregister_bh, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_unregister_bh.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.11) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_irq_handler(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_irq_handler.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_irq_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_irq_handler.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.13) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @__cw1200_irq_enable(ptr noundef %priv, i32 noundef 0) #6
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %0 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6:                                          ; preds = %do.end
  %bh_rx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_rx, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %bh_rx, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_rx, ptr %bh_rx, i32 1, ptr elementtype(i32) %bh_rx) #6, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cw1200_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_bh_wakeup(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_wakeup.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_wakeup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_wakeup.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %0 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %if.end12

if.end9:                                          ; preds = %do.end
  %bh_tx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 69
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_tx, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %bh_tx, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_tx, ptr %bh_tx, i32 1, ptr elementtype(i32) %bh_tx) #6, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge, %do.end6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_bh_suspend(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_suspend.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_suspend.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %0 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %return

if.end7:                                          ; preds = %do.end
  %bh_suspend = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 71
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_suspend, i32 noundef 4) #6
  %6 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %bh_suspend, align 4
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 134) #6
  %7 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %lor.rhs, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.rhs:                                          ; preds = %if.end7
  %call.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %9 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %lor.rhs.return_crit_edge, label %if.then30

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then30:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  %call3299 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %12 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool35.not100 = icmp eq i32 %13, 0
  br i1 %tobool35.not100, label %if.then30.lor.end40_crit_edge, label %if.then30.if.end62.thread95_crit_edge

if.then30.if.end62.thread95_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

if.then30.lor.end40_crit_edge:                    ; preds = %if.then30
  br label %lor.end40

lor.end40:                                        ; preds = %cleanup.lor.end40_crit_edge, %if.then30.lor.end40_crit_edge
  %__ret31.0101 = phi i32 [ %call59, %cleanup.lor.end40_crit_edge ], [ 100, %if.then30.lor.end40_crit_edge ]
  %call.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %14 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp39 = icmp eq i32 %15, 2
  br i1 %cmp39, label %lor.end40.if.end62.thread95_crit_edge, label %16

lor.end40.if.end62.thread95_crit_edge:            ; preds = %lor.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

if.end62.thread95:                                ; preds = %cleanup.if.end62.thread95_crit_edge, %lor.end40.if.end62.thread95_crit_edge, %if.then30.if.end62.thread95_crit_edge
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %return

16:                                               ; preds = %lor.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.0101)
  %tobool51.not = icmp eq i32 %__ret31.0101, 0
  br i1 %tobool51.not, label %if.end62, label %cleanup

cleanup:                                          ; preds = %16
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret31.0101) #6
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %17 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bh_error, align 4
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %cleanup.lor.end40_crit_edge, label %cleanup.if.end62.thread95_crit_edge

cleanup.if.end62.thread95_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

cleanup.lor.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end40

if.end62:                                         ; preds = %16
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %return

return:                                           ; preds = %if.end62, %if.end62.thread95, %lor.rhs.return_crit_edge, %if.end7.return_crit_edge, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %if.end62.thread95 ], [ 0, %lor.rhs.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ -110, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_bh_resume(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_resume.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_resume.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.23) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 74
  %0 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %return

if.end7:                                          ; preds = %do.end
  %bh_suspend = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 71
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh_suspend, i32 noundef 4) #6
  %6 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 3, ptr %bh_suspend, align 4
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 75
  tail call void @__wake_up(ptr noundef %bh_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 149) #6
  %7 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %lor.rhs, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.rhs:                                          ; preds = %if.end7
  %call.i.i82 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %9 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %lor.rhs.return_crit_edge, label %if.then30

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then30:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  %call3299 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %12 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool35.not100 = icmp eq i32 %13, 0
  br i1 %tobool35.not100, label %if.then30.lor.end40_crit_edge, label %if.then30.if.end62.thread95_crit_edge

if.then30.if.end62.thread95_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

if.then30.lor.end40_crit_edge:                    ; preds = %if.then30
  br label %lor.end40

lor.end40:                                        ; preds = %cleanup.lor.end40_crit_edge, %if.then30.lor.end40_crit_edge
  %__ret31.0101 = phi i32 [ %call59, %cleanup.lor.end40_crit_edge ], [ 100, %if.then30.lor.end40_crit_edge ]
  %call.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %14 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp39 = icmp eq i32 %15, 0
  br i1 %cmp39, label %lor.end40.if.end62.thread95_crit_edge, label %16

lor.end40.if.end62.thread95_crit_edge:            ; preds = %lor.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

if.end62.thread95:                                ; preds = %cleanup.if.end62.thread95_crit_edge, %lor.end40.if.end62.thread95_crit_edge, %if.then30.if.end62.thread95_crit_edge
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %return

16:                                               ; preds = %lor.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.0101)
  %tobool51.not = icmp eq i32 %__ret31.0101, 0
  br i1 %tobool51.not, label %if.end62, label %cleanup

cleanup:                                          ; preds = %16
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret31.0101) #6
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %17 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bh_error, align 4
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %cleanup.lor.end40_crit_edge, label %cleanup.if.end62.thread95_crit_edge

cleanup.if.end62.thread95_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.thread95

cleanup.lor.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end40

if.end62:                                         ; preds = %16
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %return

return:                                           ; preds = %if.end62, %if.end62.thread95, %lor.rhs.return_crit_edge, %if.end7.return_crit_edge, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %if.end62.thread95 ], [ 0, %lor.rhs.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ -110, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsm_release_tx_buffer(ptr noundef %priv, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_bufs_used1 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %0 = ptrtoint ptr %hw_bufs_used1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_bufs_used1, align 4
  %sub = sub i32 %1, %count
  store i32 %sub, ptr %hw_bufs_used1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.else, !prof !154

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %if.end28

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wsm_caps = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88
  %2 = ptrtoint ptr %wsm_caps to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wsm_caps, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp24.not = icmp sge i32 %1, %conv
  %spec.select = zext i1 %cmp24.not to i32
  br label %if.end28

if.end28:                                         ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ -1, %do.end ], [ %spec.select, %if.else ]
  %4 = ptrtoint ptr %hw_bufs_used1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_bufs_used1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  tail call void @__wake_up(ptr noundef %bh_evt_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_enable_powersave(ptr nocapture noundef writeonly %priv, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_enable_powersave.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_enable_powersave, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_enable_powersave.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frombool = zext i1 %enable to i8
  %powersave_enabled = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 82
  %0 = ptrtoint ptr %powersave_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %powersave_enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cw1200_bh(ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %tmp.i10.i51 = alloca i32, align 4
  %tmp.i.i52 = alloca i32, align 4
  %tmp.i10.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i48 = alloca i32, align 4
  %tmp.i46 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tx = alloca i32, align 4
  %ctrl_reg = alloca i16, align 2
  %pending_tx = alloca i32, align 4
  %tx_burst = alloca i32, align 4
  %dummy = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %timestamp = alloca i32, align 4
  %__wq_entry284 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #6
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl_reg) #6
  %1 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ctrl_reg, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending_tx) #6
  %2 = ptrtoint ptr %pending_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pending_tx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_burst) #6
  %3 = ptrtoint ptr %tx_burst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tx_burst, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dummy, align 4, !annotation !155
  %hw_bufs_used = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 81
  %powersave_enabled = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 82
  %device_can_sleep = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 83
  %recent_scan = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 86
  %hw_type = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 8
  %bh_rx = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 68
  %bh_tx = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 69
  %bh_term = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 70
  %bh_suspend = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 71
  %bh_error = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 74
  %bh_wq = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 75
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 76
  %wsm_caps = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 88
  %pending_frame_id = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 98
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 6
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %arg, i32 0, i32 7
  %arrayidx = getelementptr %struct.cw1200_common, ptr %arg, i32 0, i32 18, i32 0
  %arrayidx.1 = getelementptr %struct.cw1200_common, ptr %arg, i32 0, i32 18, i32 1
  %arrayidx.2 = getelementptr %struct.cw1200_common, ptr %arg, i32 0, i32 18, i32 2
  %arrayidx.3 = getelementptr %struct.cw1200_common, ptr %arg, i32 0, i32 18, i32 3
  br label %for.cond

for.cond:                                         ; preds = %done, %entry
  %5 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.if.else_crit_edge

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.cond
  %7 = ptrtoint ptr %powersave_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %powersave_enabled, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %device_can_sleep, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %recent_scan, i32 noundef 4) #6
  %11 = ptrtoint ptr %recent_scan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %recent_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !148

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.29) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tmp.i, align 4
  %call.i = call i32 @cw1200_reg_write(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %14 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %device_can_sleep, align 1
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.cond.if.else_crit_edge
  %15 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  %. = select i1 %tobool14.not, i32 2147483647, i32 100
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end
  %status.0 = phi i32 [ 100, %do.end ], [ %., %if.else ]
  %17 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not = icmp eq i32 %18, -1
  br i1 %cmp.not, label %if.end18.do.body28_crit_edge, label %land.lhs.true19

if.end18.do.body28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

land.lhs.true19:                                  ; preds = %if.end18
  %call.i.i7 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_rx, i32 noundef 4) #6
  %19 = ptrtoint ptr %bh_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bh_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true19.do.body28_crit_edge

land.lhs.true19.do.body28_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %call.i.i8 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_tx, i32 noundef 4) #6
  %21 = ptrtoint ptr %bh_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bh_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24 = icmp eq i32 %22, 0
  br i1 %cmp24, label %if.then25, label %land.lhs.true22.do.body28_crit_edge

land.lhs.true22.do.body28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 @cw1200_reg_read(ptr noundef %arg, i16 noundef zeroext 0, ptr noundef nonnull %dummy, i32 noundef 4) #6
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %land.lhs.true22.do.body28_crit_edge, %land.lhs.true19.do.body28_crit_edge, %if.end18.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then40)) #6
          to label %do.end43 [label %if.then40], !srcloc !148

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.30) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 458) #6
  %call.i.i12 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_rx, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_rx, i32 1, i32 3, i32 1) #6
  %23 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_rx) #6, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  %call.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_tx, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_tx, i32 1, i32 3, i32 1) #6
  %24 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_tx) #6, !srcloc !158
  %asmresult.i.i14 = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %asmresult.i.i14, ptr %tx, align 4
  %call.i.i15 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_term, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_term, i32 1, i32 3, i32 1) #6
  %26 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_term) #6, !srcloc !158
  %asmresult.i.i16 = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  %27 = ptrtoint ptr %pending_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pending_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool55.not = icmp eq i32 %28, 0
  br i1 %tobool55.not, label %cond.false, label %do.end43.cond.end_crit_edge

do.end43.cond.end_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %29 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bh_suspend, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end43.cond.end_crit_edge
  %cond = phi i32 [ %30, %cond.false ], [ 0, %do.end43.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool58.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %cond.end.if.end136_crit_edge

cond.end.if.end136_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

lor.lhs.false:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i14)
  %tobool59.not = icmp eq i32 %asmresult.i.i14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i16)
  %tobool61.not = icmp eq i32 %asmresult.i.i16, 0
  %or.cond = select i1 %tobool59.not, i1 %tobool61.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool63.not = icmp eq i32 %cond, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool63.not, i1 false
  br i1 %or.cond1, label %lor.rhs, label %lor.lhs.false.if.end136_crit_edge

lor.lhs.false.if.end136_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

lor.rhs:                                          ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool64.not = icmp eq i32 %32, 0
  br i1 %tobool64.not, label %if.then81, label %lor.rhs.if.end136_crit_edge

lor.rhs.if.end136_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then81:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  br label %for.cond83

for.cond83:                                       ; preds = %cleanup, %if.then81
  %__ret82.0 = phi i32 [ %status.0, %if.then81 ], [ %call133, %cleanup ]
  %call84 = call i32 @prepare_to_wait_event(ptr noundef %bh_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %call.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_rx, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_rx, i32 1, i32 3, i32 1) #6
  %34 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_rx) #6, !srcloc !158
  %asmresult.i.i19 = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  %call.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_tx, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_tx, i32 1, i32 3, i32 1) #6
  %35 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_tx) #6, !srcloc !158
  %asmresult.i.i21 = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  %call.i.i22 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_term, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @llvm.prefetch.p0(ptr %bh_term, i32 1, i32 3, i32 1) #6
  %36 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %bh_term) #6, !srcloc !158
  %asmresult.i.i23 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !159
  br i1 %tobool55.not, label %cond.false94, label %for.cond83.cond.end97_crit_edge

for.cond83.cond.end97_crit_edge:                  ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end97

cond.false94:                                     ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i24 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %37 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %bh_suspend, align 4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false94, %for.cond83.cond.end97_crit_edge
  %cond98 = phi i32 [ %38, %cond.false94 ], [ 0, %for.cond83.cond.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i19)
  %tobool100.not = icmp eq i32 %asmresult.i.i19, 0
  br i1 %tobool100.not, label %lor.lhs.false101, label %cond.end97.lor.end110.thread_crit_edge

cond.end97.lor.end110.thread_crit_edge:           ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end110.thread

lor.lhs.false101:                                 ; preds = %cond.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i21)
  %tobool102.not = icmp eq i32 %asmresult.i.i21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i23)
  %tobool104.not = icmp eq i32 %asmresult.i.i23, 0
  %or.cond2 = select i1 %tobool102.not, i1 %tobool104.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond98)
  %tobool106.not = icmp eq i32 %cond98, 0
  %or.cond3 = select i1 %or.cond2, i1 %tobool106.not, i1 false
  br i1 %or.cond3, label %lor.end110, label %lor.lhs.false101.lor.end110.thread_crit_edge

lor.lhs.false101.lor.end110.thread_crit_edge:     ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end110.thread

lor.end110.thread:                                ; preds = %lor.lhs.false101.lor.end110.thread_crit_edge, %cond.end97.lor.end110.thread_crit_edge
  %asmresult.i.i21.le = extractvalue { i32, i32 } %35, 0
  %39 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %asmresult.i.i21.le, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret82.0)
  %tobool116.not66 = icmp eq i32 %__ret82.0, 0
  %spec.store.select45667 = select i1 %tobool116.not66, i32 1, i32 %__ret82.0
  br label %for.end

lor.end110:                                       ; preds = %lor.lhs.false101
  %40 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool109.not = icmp eq i32 %41, 0
  br i1 %tobool109.not, label %42, label %for.end.loopexit.split.loop.exit137

42:                                               ; preds = %lor.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret82.0)
  %tobool122.not = icmp eq i32 %__ret82.0, 0
  br i1 %tobool122.not, label %for.end.loopexit.split.loop.exit, label %if.end129

if.end129:                                        ; preds = %42
  %tobool130.not = icmp eq i32 %call84, 0
  br i1 %tobool130.not, label %cleanup, label %__out.loopexit

cleanup:                                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %call133 = call i32 @schedule_timeout(i32 noundef %__ret82.0) #6
  br label %for.cond83

for.end.loopexit.split.loop.exit:                 ; preds = %42
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx, align 4
  br label %for.end

for.end.loopexit.split.loop.exit137:              ; preds = %lor.end110
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret82.0)
  %tobool116.not.le = icmp eq i32 %__ret82.0, 0
  %spec.store.select456.le = select i1 %tobool116.not.le, i32 1, i32 %__ret82.0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit137, %for.end.loopexit.split.loop.exit, %lor.end110.thread
  %cond98206 = phi i32 [ %cond98, %lor.end110.thread ], [ 0, %for.end.loopexit.split.loop.exit ], [ 0, %for.end.loopexit.split.loop.exit137 ]
  %__ret82.2.ph = phi i32 [ %spec.store.select45667, %lor.end110.thread ], [ 0, %for.end.loopexit.split.loop.exit ], [ %spec.store.select456.le, %for.end.loopexit.split.loop.exit137 ]
  call void @finish_wait(ptr noundef %bh_wq, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out.loopexit:                                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx, align 4
  br label %__out

__out:                                            ; preds = %__out.loopexit, %for.end
  %cond98205 = phi i32 [ %cond98206, %for.end ], [ 0, %__out.loopexit ]
  %__ret82.272 = phi i32 [ %__ret82.2.ph, %for.end ], [ %call84, %__out.loopexit ]
  %asmresult.i.i23230 = extractvalue { i32, i32 } %36, 0
  %asmresult.i.i19238 = extractvalue { i32, i32 } %34, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end136

if.end136:                                        ; preds = %__out, %lor.rhs.if.end136_crit_edge, %lor.lhs.false.if.end136_crit_edge, %cond.end.if.end136_crit_edge
  %__ret.1 = phi i32 [ %status.0, %lor.rhs.if.end136_crit_edge ], [ %__ret82.272, %__out ], [ %status.0, %lor.lhs.false.if.end136_crit_edge ], [ %status.0, %cond.end.if.end136_crit_edge ]
  %suspend.0 = phi i32 [ 0, %lor.rhs.if.end136_crit_edge ], [ %cond98205, %__out ], [ %cond, %lor.lhs.false.if.end136_crit_edge ], [ %cond, %cond.end.if.end136_crit_edge ]
  %term.0 = phi i32 [ 0, %lor.rhs.if.end136_crit_edge ], [ %asmresult.i.i23230, %__out ], [ %asmresult.i.i16, %lor.lhs.false.if.end136_crit_edge ], [ %asmresult.i.i16, %cond.end.if.end136_crit_edge ]
  %rx.0 = phi i32 [ 0, %lor.rhs.if.end136_crit_edge ], [ %asmresult.i.i19238, %__out ], [ 0, %lor.lhs.false.if.end136_crit_edge ], [ %asmresult.i.i, %cond.end.if.end136_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then150)) #6
          to label %do.end154 [label %if.then150], !srcloc !148

if.then150:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx, align 4
  %48 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bh_error, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.31, i32 noundef %rx.0, i32 noundef %47, i32 noundef %term.0, i32 noundef %suspend.0, i32 noundef %49, i32 noundef %__ret.1) #6
  br label %do.end154

do.end154:                                        ; preds = %if.then150, %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__ret.1)
  %cmp155 = icmp sgt i32 %__ret.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret.1)
  %cmp157.not = icmp eq i32 %__ret.1, -512
  %or.cond4 = or i1 %cmp155, %cmp157.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %term.0)
  %tobool159.not = icmp eq i32 %term.0, 0
  %or.cond5 = select i1 %or.cond4, i1 %tobool159.not, i1 false
  br i1 %or.cond5, label %lor.lhs.false160, label %do.end154.for.end427_crit_edge

do.end154.for.end427_crit_edge:                   ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427

lor.lhs.false160:                                 ; preds = %do.end154
  %50 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool162.not = icmp eq i32 %51, 0
  br i1 %tobool162.not, label %if.end164, label %lor.lhs.false160.for.end427_crit_edge

lor.lhs.false160.for.end427_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427

if.end164:                                        ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool165.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool165.not, label %if.then166, label %if.else230

if.then166:                                       ; preds = %if.end164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timestamp) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %53 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %timestamp, align 4
  %54 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool168.not = icmp eq i32 %55, 0
  br i1 %tobool168.not, label %if.then166.if.else197_crit_edge, label %land.lhs.true169

if.then166.if.else197_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else197

land.lhs.true169:                                 ; preds = %if.then166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx.0)
  %tobool170.not = icmp eq i32 %rx.0, 0
  br i1 %tobool170.not, label %land.lhs.true169.do.end176_crit_edge, label %lor.lhs.false171

land.lhs.true169.do.end176_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end176

lor.lhs.false171:                                 ; preds = %land.lhs.true169
  %56 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool172.not = icmp eq i32 %57, 0
  br i1 %tobool172.not, label %lor.lhs.false171.do.end176_crit_edge, label %lor.lhs.false171.if.else197_crit_edge

lor.lhs.false171.if.else197_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else197

lor.lhs.false171.do.end176_crit_edge:             ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end176

do.end176:                                        ; preds = %lor.lhs.false171.do.end176_crit_edge, %land.lhs.true169.do.end176_crit_edge
  %58 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arg, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %55) #9
  %62 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pending_frame_id, align 4
  %call180 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx, ptr noundef nonnull %timestamp, i32 noundef %63) #6
  %conv = zext i1 %call180 to i32
  %64 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pending_frame_id, align 4
  %call180.1 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.1, ptr noundef nonnull %timestamp, i32 noundef %65) #6
  %conv.1 = zext i1 %call180.1 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %66 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pending_frame_id, align 4
  %call180.2 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.2, ptr noundef nonnull %timestamp, i32 noundef %67) #6
  %conv.2 = zext i1 %call180.2 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %68 = ptrtoint ptr %pending_frame_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pending_frame_id, align 4
  %call180.3 = call zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef %arrayidx.3, ptr noundef nonnull %timestamp, i32 noundef %69) #6
  %conv.3 = zext i1 %call180.3 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %70 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %timestamp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3)
  %tobool184.not = icmp eq i32 %add.3, 0
  br i1 %tobool184.not, label %do.end176.cleanup225.thread_crit_edge, label %land.lhs.true185

do.end176.cleanup225.thread_crit_edge:            ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup225.thread

land.lhs.true185:                                 ; preds = %do.end176
  %add183 = add i32 %71, 250
  %sub = sub i32 %add183, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp186 = icmp slt i32 %sub, 0
  br i1 %cmp186, label %cleanup225, label %land.lhs.true185.cleanup225.thread_crit_edge

land.lhs.true185.cleanup225.thread_crit_edge:     ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup225.thread

if.else197:                                       ; preds = %lor.lhs.false171.if.else197_crit_edge, %if.then166.if.else197_crit_edge
  %73 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %device_can_sleep, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool199.not = icmp eq i8 %74, 0
  br i1 %tobool199.not, label %land.lhs.true200, label %if.else197.cleanup225.thread_crit_edge

if.else197.cleanup225.thread_crit_edge:           ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup225.thread

land.lhs.true200:                                 ; preds = %if.else197
  %call.i.i28 = call zeroext i1 @__kasan_check_read(ptr noundef %recent_scan, i32 noundef 4) #6
  %75 = ptrtoint ptr %recent_scan to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %recent_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool203.not = icmp eq i32 %76, 0
  br i1 %tobool203.not, label %do.body205, label %land.lhs.true200.cleanup225.thread_crit_edge

land.lhs.true200.cleanup225.thread_crit_edge:     ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup225.thread

do.body205:                                       ; preds = %land.lhs.true200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then217)) #6
          to label %do.end220 [label %if.then217], !srcloc !148

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.36) #6
  br label %do.end220

do.end220:                                        ; preds = %if.then217, %do.body205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i46) #6
  %77 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tmp.i46, align 4
  %call.i47 = call i32 @cw1200_reg_write(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i46, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i46) #6
  %78 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %device_can_sleep, align 1
  br label %cleanup225.thread

cleanup225.thread:                                ; preds = %do.end220, %land.lhs.true200.cleanup225.thread_crit_edge, %if.else197.cleanup225.thread_crit_edge, %land.lhs.true185.cleanup225.thread_crit_edge, %do.end176.cleanup225.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #6
  br label %done

cleanup225:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arg, align 4
  %wiphy193 = getelementptr inbounds %struct.ieee80211_hw, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wiphy193 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy193, align 8
  %dev194 = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 56
  %83 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hw_bufs_used, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev194, ptr noundef nonnull @.str.34, i32 noundef %84, i32 noundef %add.3, i32 noundef %71, i32 noundef %85) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timestamp) #6
  br label %for.end427

if.else230:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend.0)
  %tobool231.not = icmp eq i32 %suspend.0, 0
  br i1 %tobool231.not, label %if.else230.rx339_crit_edge, label %do.body233

if.else230.rx339_crit_edge:                       ; preds = %if.else230
  br label %rx339

do.body233:                                       ; preds = %if.else230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then245)) #6
          to label %do.end248 [label %if.then245], !srcloc !148

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.37) #6
  br label %do.end248

do.end248:                                        ; preds = %if.then245, %do.body233
  %86 = ptrtoint ptr %powersave_enabled to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %powersave_enabled, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool250.not = icmp eq i8 %87, 0
  br i1 %tobool250.not, label %do.end248.if.end270_crit_edge, label %do.body252

do.end248.if.end270_crit_edge:                    ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end270

do.body252:                                       ; preds = %do.end248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then264)) #6
          to label %do.end267 [label %if.then264], !srcloc !148

if.then264:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.38) #6
  br label %do.end267

do.end267:                                        ; preds = %if.then264, %do.body252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48) #6
  %88 = ptrtoint ptr %tmp.i48 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tmp.i48, align 4
  %call.i49 = call i32 @cw1200_reg_write(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i48, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48) #6
  %89 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %device_can_sleep, align 1
  br label %if.end270

if.end270:                                        ; preds = %do.end267, %do.end248.if.end270_crit_edge
  %call.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_suspend, i32 noundef 4) #6
  %90 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 2, ptr %bh_suspend, align 4
  call void @__wake_up(ptr noundef %bh_evt_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 525) #6
  %call.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %91 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp281 = icmp eq i32 %92, 3
  br i1 %cmp281, label %if.end270.do.body318_crit_edge, label %if.then283

if.end270.do.body318_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body318

if.then283:                                       ; preds = %if.end270
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry284) #6
  %93 = call ptr @memset(ptr %__wq_entry284, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry284, i32 noundef 0) #6
  %call289169 = call i32 @prepare_to_wait_event(ptr noundef %bh_wq, ptr noundef nonnull %__wq_entry284, i32 noundef 1) #6
  %call.i.i40170 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %94 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %bh_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp292171 = icmp eq i32 %95, 3
  br i1 %cmp292171, label %if.then283.if.end306.thread91_crit_edge, label %if.then283.if.end295_crit_edge

if.then283.if.end295_crit_edge:                   ; preds = %if.then283
  br label %if.end295

if.then283.if.end306.thread91_crit_edge:          ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end306.thread91

if.end295:                                        ; preds = %cleanup299.if.end295_crit_edge, %if.then283.if.end295_crit_edge
  %call289172 = phi i32 [ %call289, %cleanup299.if.end295_crit_edge ], [ %call289169, %if.then283.if.end295_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289172)
  %tobool296.not = icmp eq i32 %call289172, 0
  br i1 %tobool296.not, label %cleanup299, label %if.end306

cleanup299:                                       ; preds = %if.end295
  call void @schedule() #6
  %call289 = call i32 @prepare_to_wait_event(ptr noundef %bh_wq, ptr noundef nonnull %__wq_entry284, i32 noundef 1) #6
  %call.i.i40 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_suspend, i32 noundef 4) #6
  %96 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %bh_suspend, align 4
  %cmp292 = icmp eq i32 %97, 3
  br i1 %cmp292, label %cleanup299.if.end306.thread91_crit_edge, label %cleanup299.if.end295_crit_edge

cleanup299.if.end295_crit_edge:                   ; preds = %cleanup299
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295

cleanup299.if.end306.thread91_crit_edge:          ; preds = %cleanup299
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end306.thread91

if.end306.thread91:                               ; preds = %cleanup299.if.end306.thread91_crit_edge, %if.then283.if.end306.thread91_crit_edge
  call void @finish_wait(ptr noundef %bh_wq, ptr noundef nonnull %__wq_entry284) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry284) #6
  br label %do.body318

if.end306:                                        ; preds = %if.end295
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry284) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289172)
  %cmp308 = icmp slt i32 %call289172, 0
  br i1 %cmp308, label %do.end313, label %if.end306.do.body318_crit_edge

if.end306.do.body318_crit_edge:                   ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body318

do.end313:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arg, align 4
  %wiphy315 = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %wiphy315 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wiphy315, align 8
  %dev316 = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev316, ptr noundef nonnull @.str.40, i32 noundef %call289172) #9
  br label %for.end427

do.body318:                                       ; preds = %if.end306.do.body318_crit_edge, %if.end306.thread91, %if.end270.do.body318_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh, %if.then330)) #6
          to label %do.end333 [label %if.then330], !srcloc !148

if.then330:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.43) #6
  br label %do.end333

do.end333:                                        ; preds = %if.then330, %do.body318
  %call.i.i44 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_suspend, i32 noundef 4) #6
  %102 = ptrtoint ptr %bh_suspend to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 0, ptr %bh_suspend, align 4
  call void @__wake_up(ptr noundef %bh_evt_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %call.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %bh_rx, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %bh_rx, i32 1, i32 3, i32 1) #6
  %103 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_rx, ptr %bh_rx, i32 1, ptr elementtype(i32) %bh_rx) #6, !srcloc !150
  br label %done

rx339.loopexit:                                   ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %149, ptr %tx, align 4
  %105 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i12.i57177, ptr %ctrl_reg, align 2
  br label %rx339

rx339:                                            ; preds = %rx339.loopexit, %if.else230.rx339_crit_edge
  %106 = ptrtoint ptr %pending_tx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pending_tx, align 4
  %108 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx, align 4
  %add340 = add i32 %109, %107
  store i32 %add340, ptr %tx, align 4
  store i32 0, ptr %pending_tx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %110 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !155
  %call.i.i50 = call i32 @cw1200_reg_read(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i.i, i32 noundef 4) #6
  %111 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tmp.i.i, align 4
  %113 = and i32 %112, -61696
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  %conv.i.i = trunc i32 %114 to i16
  %115 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i.i, ptr %ctrl_reg, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool.not.i = icmp eq i32 %call.i.i50, 0
  br i1 %tobool.not.i, label %rx339.if.end344_crit_edge, label %if.then.i

rx339.if.end344_crit_edge:                        ; preds = %rx339
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end344

if.then.i:                                        ; preds = %rx339
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i10.i) #6
  %116 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %tmp.i10.i, align 4, !annotation !155
  %call.i11.i = call i32 @cw1200_reg_read(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i10.i, i32 noundef 4) #6
  %117 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tmp.i10.i, align 4
  %119 = and i32 %118, -61696
  %120 = call i32 @llvm.bswap.i32(i32 %119) #6
  %conv.i12.i = trunc i32 %120 to i16
  %121 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i12.i, ptr %ctrl_reg, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool2.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end344_crit_edge, label %cw1200_bh_read_ctrl_reg.exit

if.then.i.if.end344_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end344

cw1200_bh_read_ctrl_reg.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  br label %for.end427

if.end344:                                        ; preds = %if.then.i.if.end344_crit_edge, %rx339.if.end344_crit_edge
  %122 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ctrl_reg, align 2
  %124 = and i16 %123, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool346.not = icmp eq i16 %124, 0
  br i1 %tobool346.not, label %if.end344.if.end363_crit_edge, label %if.then347

if.end344.if.end363_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end363

if.then347:                                       ; preds = %if.end344
  %call348 = call fastcc i32 @cw1200_bh_rx_helper(ptr noundef %arg, ptr noundef nonnull %ctrl_reg, ptr noundef nonnull %tx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %cmp349 = icmp slt i32 %call348, 0
  br i1 %cmp349, label %if.then347.for.end427_crit_edge, label %if.end352

if.then347.for.end427_crit_edge:                  ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427

if.end352:                                        ; preds = %if.then347
  %125 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %ctrl_reg, align 2
  %127 = and i16 %126, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool355.not = icmp eq i16 %127, 0
  br i1 %tobool355.not, label %if.end352.if.end363_crit_edge, label %if.then356

if.end352.if.end363_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end363

if.then356:                                       ; preds = %if.end352
  %call357 = call fastcc i32 @cw1200_bh_rx_helper(ptr noundef %arg, ptr noundef nonnull %ctrl_reg, ptr noundef nonnull %tx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %cmp358 = icmp slt i32 %call357, 0
  br i1 %cmp358, label %if.then356.for.end427_crit_edge, label %if.then356.if.end363_crit_edge

if.then356.if.end363_crit_edge:                   ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end363

if.then356.for.end427_crit_edge:                  ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427

if.end363:                                        ; preds = %if.then356.if.end363_crit_edge, %if.end352.if.end363_crit_edge, %if.end344.if.end363_crit_edge
  %128 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr = load i32, ptr %tx, align 4
  %129 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %129)
  %ctrl_reg.promoted = load i16, ptr %ctrl_reg, align 2
  br label %tx364

tx364:                                            ; preds = %if.end420.tx364_crit_edge, %if.end363
  %conv.i12.i57176 = phi i16 [ %conv.i12.i57177, %if.end420.tx364_crit_edge ], [ %ctrl_reg.promoted, %if.end363 ]
  %130 = phi i32 [ %149, %if.end420.tx364_crit_edge ], [ %.pr, %if.end363 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool365.not = icmp eq i32 %130, 0
  br i1 %tobool365.not, label %tx364.done_rx_crit_edge, label %if.then366

tx364.done_rx_crit_edge:                          ; preds = %tx364
  call void @__sanitizer_cov_trace_pc() #8
  br label %done_rx

if.then366:                                       ; preds = %tx364
  %131 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hw_bufs_used, align 4
  %133 = ptrtoint ptr %wsm_caps to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %wsm_caps, align 4
  %conv369 = zext i16 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv369)
  %cmp370 = icmp sgt i32 %132, %conv369
  br i1 %cmp370, label %do.body379, label %do.end387, !prof !154

do.body379:                                       ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/bh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #6, !srcloc !160
  unreachable

do.end387:                                        ; preds = %if.then366
  %sub392 = sub i32 %conv369, %132
  %135 = ptrtoint ptr %tx_burst to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub392, ptr %tx_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub392)
  %cmp393 = icmp sgt i32 %sub392, 0
  br i1 %cmp393, label %if.end397, label %if.then396

if.then396:                                       ; preds = %do.end387
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %pending_tx to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %pending_tx, align 4
  br label %done_rx

if.end397:                                        ; preds = %do.end387
  %call398 = call fastcc i32 @cw1200_bh_tx_helper(ptr noundef %arg, ptr noundef nonnull %pending_tx, ptr noundef nonnull %tx_burst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %cmp399 = icmp slt i32 %call398, 0
  br i1 %cmp399, label %if.end397.for.end427.loopexit_crit_edge, label %if.end402

if.end397.for.end427.loopexit_crit_edge:          ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427.loopexit

if.end402:                                        ; preds = %if.end397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i52) #6
  %137 = ptrtoint ptr %tmp.i.i52 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %tmp.i.i52, align 4, !annotation !155
  %call.i.i53 = call i32 @cw1200_reg_read(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i.i52, i32 noundef 4) #6
  %138 = ptrtoint ptr %tmp.i.i52 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tmp.i.i52, align 4
  %140 = and i32 %139, -61696
  %141 = call i32 @llvm.bswap.i32(i32 %140) #6
  %conv.i.i54 = trunc i32 %141 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %tobool.not.i55 = icmp eq i32 %call.i.i53, 0
  br i1 %tobool.not.i55, label %if.end402.done_rx_crit_edge, label %if.then.i59

if.end402.done_rx_crit_edge:                      ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #8
  br label %done_rx

if.then.i59:                                      ; preds = %if.end402
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i10.i51) #6
  %142 = ptrtoint ptr %tmp.i10.i51 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %tmp.i10.i51, align 4, !annotation !155
  %call.i11.i56 = call i32 @cw1200_reg_read(ptr noundef %arg, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i10.i51, i32 noundef 4) #6
  %143 = ptrtoint ptr %tmp.i10.i51 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tmp.i10.i51, align 4
  %145 = and i32 %144, -61696
  %146 = call i32 @llvm.bswap.i32(i32 %145) #6
  %conv.i12.i57 = trunc i32 %146 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10.i51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i56)
  %tobool2.not.i58 = icmp eq i32 %call.i11.i56, 0
  br i1 %tobool2.not.i58, label %if.then.i59.done_rx_crit_edge, label %cw1200_bh_read_ctrl_reg.exit63

if.then.i59.done_rx_crit_edge:                    ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %done_rx

cw1200_bh_read_ctrl_reg.exit63:                   ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i12.i57.le = trunc i32 %146 to i16
  %147 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call398, ptr %tx, align 4
  %148 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i12.i57.le, ptr %ctrl_reg, align 2
  %call4.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  br label %for.end427

done_rx:                                          ; preds = %if.then.i59.done_rx_crit_edge, %if.end402.done_rx_crit_edge, %if.then396, %tx364.done_rx_crit_edge
  %conv.i12.i57177 = phi i16 [ %conv.i.i54, %if.end402.done_rx_crit_edge ], [ %conv.i12.i57, %if.then.i59.done_rx_crit_edge ], [ %conv.i12.i57176, %tx364.done_rx_crit_edge ], [ %conv.i12.i57176, %if.then396 ]
  %149 = phi i32 [ %call398, %if.end402.done_rx_crit_edge ], [ %call398, %if.then.i59.done_rx_crit_edge ], [ 0, %tx364.done_rx_crit_edge ], [ 0, %if.then396 ]
  %150 = ptrtoint ptr %bh_error to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bh_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool413.not = icmp eq i32 %151, 0
  br i1 %tobool413.not, label %if.end415, label %done_rx.for.end427.loopexit_crit_edge

done_rx.for.end427.loopexit_crit_edge:            ; preds = %done_rx
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end427.loopexit

if.end415:                                        ; preds = %done_rx
  %152 = and i16 %conv.i12.i57177, 4095
  %tobool418.not = icmp eq i16 %152, 0
  br i1 %tobool418.not, label %if.end420, label %rx339.loopexit

if.end420:                                        ; preds = %if.end415
  %tobool421.not = icmp eq i32 %149, 0
  br i1 %tobool421.not, label %done.loopexit, label %if.end420.tx364_crit_edge

if.end420.tx364_crit_edge:                        ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  br label %tx364

done.loopexit:                                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %tx, align 4
  %154 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i12.i57177, ptr %ctrl_reg, align 2
  br label %done

done:                                             ; preds = %done.loopexit, %do.end333, %cleanup225.thread
  %155 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %lock, align 4
  %159 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hwbus_priv, align 4
  call void %158(ptr noundef %160) #6
  %call424 = call i32 @__cw1200_irq_enable(ptr noundef %arg, i32 noundef 1) #6
  %161 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %unlock, align 4
  %165 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hwbus_priv, align 4
  call void %164(ptr noundef %166) #6
  br label %for.cond

for.end427.loopexit:                              ; preds = %done_rx.for.end427.loopexit_crit_edge, %if.end397.for.end427.loopexit_crit_edge
  %conv.i12.i57178 = phi i16 [ %conv.i12.i57176, %if.end397.for.end427.loopexit_crit_edge ], [ %conv.i12.i57177, %done_rx.for.end427.loopexit_crit_edge ]
  %167 = phi i32 [ 0, %if.end397.for.end427.loopexit_crit_edge ], [ %149, %done_rx.for.end427.loopexit_crit_edge ]
  %168 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %tx, align 4
  %169 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv.i12.i57178, ptr %ctrl_reg, align 2
  br label %for.end427

for.end427:                                       ; preds = %for.end427.loopexit, %cw1200_bh_read_ctrl_reg.exit63, %if.then356.for.end427_crit_edge, %if.then347.for.end427_crit_edge, %cw1200_bh_read_ctrl_reg.exit, %do.end313, %cleanup225, %lor.lhs.false160.for.end427_crit_edge, %do.end154.for.end427_crit_edge
  %tobool159.not223 = phi i1 [ true, %for.end427.loopexit ], [ true, %cw1200_bh_read_ctrl_reg.exit63 ], [ true, %cw1200_bh_read_ctrl_reg.exit ], [ true, %cleanup225 ], [ true, %do.end313 ], [ true, %if.then347.for.end427_crit_edge ], [ true, %if.then356.for.end427_crit_edge ], [ %tobool159.not, %do.end154.for.end427_crit_edge ], [ true, %lor.lhs.false160.for.end427_crit_edge ]
  %170 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hwbus_ops, align 4
  %lock429 = getelementptr inbounds %struct.hwbus_ops, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %lock429 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %lock429, align 4
  %174 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hwbus_priv, align 4
  call void %173(ptr noundef %175) #6
  %call431 = call i32 @__cw1200_irq_enable(ptr noundef %arg, i32 noundef 0) #6
  %176 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hwbus_ops, align 4
  %unlock433 = getelementptr inbounds %struct.hwbus_ops, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %unlock433 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %unlock433, align 4
  %180 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hwbus_priv, align 4
  call void %179(ptr noundef %181) #6
  br i1 %tobool159.not223, label %do.end439, label %for.end427.cleanup444_crit_edge

for.end427.cleanup444_crit_edge:                  ; preds = %for.end427
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup444

do.end439:                                        ; preds = %for.end427
  call void @__sanitizer_cov_trace_pc() #8
  %call441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  %182 = ptrtoint ptr %bh_error to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %bh_error, align 4
  br label %cleanup444

cleanup444:                                       ; preds = %do.end439, %for.end427.cleanup444_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_burst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending_tx) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl_reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_reg_read(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cw1200_queue_get_xmit_timestamp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_bh_rx_helper(ptr noundef %priv, ptr nocapture noundef %ctrl_reg, ptr nocapture noundef writeonly %tx) unnamed_addr #0 align 64 {
entry:
  %skb_rx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_rx) #6
  %0 = ptrtoint ptr %skb_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb_rx, align 4
  %1 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ctrl_reg, align 2
  %3 = shl i16 %2, 1
  %4 = and i16 %3, 8190
  %mul = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup432_crit_edge, label %if.end

entry.cleanup432_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup432

if.end:                                           ; preds = %entry
  %5 = add nsw i16 %4, -8183
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8179, i16 %5)
  %6 = icmp ult i16 %5, -8179
  br i1 %6, label %do.end, label %if.end41, !prof !154

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_rx_helper, %if.then36)) #6
          to label %err [label %if.then36], !srcloc !148

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ctrl_reg, align 2
  %conv37 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.50, i32 noundef %mul, i32 noundef %conv37) #6
  br label %err

if.end41:                                         ; preds = %if.end
  %add = add nuw nsw i32 %mul, 2
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwbus_ops, align 4
  %align_size = getelementptr inbounds %struct.hwbus_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %align_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %align_size, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %13 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_priv, align 4
  %call42 = tail call i32 %12(ptr noundef %14, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %call42)
  %cmp43 = icmp ugt i32 %call42, 8182
  br i1 %cmp43, label %land.rhs, label %if.end41.if.end114_crit_edge

if.end41.if.end114_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

land.rhs:                                         ; preds = %if.end41
  %.b491 = load i1, ptr @cw1200_bh_rx_helper.__already_done, align 1
  br i1 %.b491, label %land.rhs.do.body98_crit_edge, label %if.then61, !prof !149

land.rhs.do.body98_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98

if.then61:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cw1200_bh_rx_helper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 267, i32 noundef 9, ptr noundef null) #6
  br label %do.body98

do.body98:                                        ; preds = %if.then61, %land.rhs.do.body98_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_rx_helper, %if.then110)) #6
          to label %if.end114 [label %if.then110], !srcloc !148

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.51, i32 noundef %call42) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %do.body98, %if.end41.if.end114_crit_edge
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %call42, i32 noundef 2592) #6
  %15 = ptrtoint ptr %skb_rx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %skb_rx, align 4
  %tobool117.not = icmp eq ptr %call.i.i, null
  br i1 %tobool117.not, label %do.end135, label %if.end151.critedge, !prof !154

do.end135:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 273, i32 noundef 9, ptr noundef null) #6
  br label %err

if.end151.critedge:                               ; preds = %if.end114
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  %16 = ptrtoint ptr %skb_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb_rx, align 4
  %call152 = tail call ptr @skb_put(ptr noundef %17, i32 noundef %add) #6
  %data153 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data153 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data153, align 4
  %tobool155.not = icmp eq ptr %19, null
  br i1 %tobool155.not, label %do.end173, label %if.end189.critedge, !prof !154

do.end173:                                        ; preds = %if.end151.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %err

if.end189.critedge:                               ; preds = %if.end151.critedge
  %call191 = tail call i32 @cw1200_data_read(ptr noundef %priv, ptr noundef nonnull %19, i32 noundef %call42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end229, label %do.end208, !prof !149

do.end208:                                        ; preds = %if.end189.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 282, i32 noundef 9, ptr noundef null) #6
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call42) #9
  br label %err

if.end229:                                        ; preds = %if.end189.critedge
  %div490 = lshr i32 %call42, 1
  %sub = add nsw i32 %div490, -1
  %arrayidx = getelementptr i16, ptr %19, i32 %sub
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ctrl_reg, align 2
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv230 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv230)
  %cmp232 = icmp ult i32 %add, %conv230
  br i1 %cmp232, label %do.end249, label %if.end265.critedge, !prof !154

do.end249:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %err

if.end265.critedge:                               ; preds = %if.end229
  %wsm_enable_wsm_dumps = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 96
  %27 = ptrtoint ptr %wsm_enable_wsm_dumps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wsm_enable_wsm_dumps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool266.not = icmp eq i32 %28, 0
  br i1 %tobool266.not, label %if.end265.critedge.if.end284_crit_edge, label %do.body268

if.end265.critedge.if.end284_crit_edge:           ; preds = %if.end265.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end284

do.body268:                                       ; preds = %if.end265.critedge
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_rx_helper, %if.then280)) #6
          to label %if.end284 [label %if.then280], !srcloc !148

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %19, i32 noundef %conv230, i1 noundef zeroext true) #6
  br label %if.end284

if.end284:                                        ; preds = %if.then280, %do.body268, %if.end265.critedge.if.end284_crit_edge
  %id = getelementptr inbounds %struct.wsm_hdr, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %id, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %and286 = and i16 %31, 4095
  %32 = ptrtoint ptr %skb_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb_rx, align 4
  tail call void @skb_trim(ptr noundef %33, i32 noundef %conv230) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %and286)
  %cmp293 = icmp eq i16 %and286, 2048
  br i1 %cmp293, label %if.then295, label %if.end339

if.then295:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx296 = getelementptr i8, ptr %19, i32 4
  %sub297 = add nsw i32 %conv230, -4
  %call298 = tail call i32 @wsm_handle_exception(ptr noundef %priv, ptr noundef %arrayidx296, i32 noundef %sub297) #6
  br label %err

if.end339:                                        ; preds = %if.end284
  %34 = lshr i16 %31, 13
  %35 = trunc i16 %34 to i8
  %36 = add nuw nsw i8 %35, 1
  %conv343 = and i8 %36, 7
  %wsm_rx_seq344 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 79
  %37 = ptrtoint ptr %wsm_rx_seq344 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv343, ptr %wsm_rx_seq344, align 2
  %38 = and i16 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool347.not = icmp eq i16 %38, 0
  br i1 %tobool347.not, label %if.end339.if.end390_crit_edge, label %if.then348

if.end339.if.end390_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end390

if.then348:                                       ; preds = %if.end339
  %hw_bufs_used1.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %39 = ptrtoint ptr %hw_bufs_used1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_bufs_used1.i, align 4
  %sub.i = add i32 %40, -1
  store i32 %sub.i, ptr %hw_bufs_used1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i, !prof !154

do.end.i:                                         ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %if.end28.i

if.else.i:                                        ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  %wsm_caps.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 88
  %41 = ptrtoint ptr %wsm_caps.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %wsm_caps.i, align 4
  %conv.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i)
  %cmp24.not.i = icmp sge i32 %40, %conv.i
  %spec.select.i = zext i1 %cmp24.not.i to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %do.end.i
  %ret.0.i = phi i32 [ -1, %do.end.i ], [ %spec.select.i, %if.else.i ]
  %43 = ptrtoint ptr %hw_bufs_used1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_bufs_used1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool30.not.i = icmp eq i32 %44, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.wsm_release_tx_buffer.exit_crit_edge

if.end28.i.wsm_release_tx_buffer.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wsm_release_tx_buffer.exit

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %bh_evt_wq.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  tail call void @__wake_up(ptr noundef %bh_evt_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %wsm_release_tx_buffer.exit

wsm_release_tx_buffer.exit:                       ; preds = %if.then31.i, %if.end28.i.wsm_release_tx_buffer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp351 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp351, label %do.end368, label %if.else384, !prof !154

do.end368:                                        ; preds = %wsm_release_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 320, i32 noundef 9, ptr noundef null) #6
  br label %cleanup432

if.else384:                                       ; preds = %wsm_release_tx_buffer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp385.not = icmp eq i32 %ret.0.i, 0
  br i1 %cmp385.not, label %if.else384.if.end390_crit_edge, label %if.then387

if.else384.if.end390_crit_edge:                   ; preds = %if.else384
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end390

if.then387:                                       ; preds = %if.else384
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %tx, align 4
  br label %if.end390

if.end390:                                        ; preds = %if.then387, %if.else384.if.end390_crit_edge, %if.end339.if.end390_crit_edge
  %call392 = call i32 @wsm_handle_rx(ptr noundef %priv, i16 noundef zeroext %and286, ptr noundef nonnull %19, ptr noundef nonnull %skb_rx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %if.end425.critedge, label %do.end409, !prof !149

do.end409:                                        ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef null) #6
  br label %err

if.end425.critedge:                               ; preds = %if.end390
  %46 = ptrtoint ptr %skb_rx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb_rx, align 4
  %tobool426.not = icmp eq ptr %47, null
  br i1 %tobool426.not, label %if.end425.critedge.cleanup432_crit_edge, label %if.then427

if.end425.critedge.cleanup432_crit_edge:          ; preds = %if.end425.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup432

if.then427:                                       ; preds = %if.end425.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef nonnull %47) #6
  br label %cleanup432

err:                                              ; preds = %do.end409, %if.then295, %do.end249, %do.end208, %do.end173, %do.end135, %if.then36, %do.end
  %48 = ptrtoint ptr %skb_rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb_rx, align 4
  %tobool429.not = icmp eq ptr %49, null
  br i1 %tobool429.not, label %err.cleanup432_crit_edge, label %if.then430

err.cleanup432_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup432

if.then430:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef nonnull %49) #6
  br label %cleanup432

cleanup432:                                       ; preds = %if.then430, %err.cleanup432_crit_edge, %if.then427, %if.end425.critedge.cleanup432_crit_edge, %do.end368, %entry.cleanup432_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup432_crit_edge ], [ -1, %do.end368 ], [ 0, %if.then427 ], [ 0, %if.end425.critedge.cleanup432_crit_edge ], [ -1, %if.then430 ], [ -1, %err.cleanup432_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_rx) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_bh_tx_helper(ptr noundef %priv, ptr nocapture noundef writeonly %pending_tx, ptr noundef %tx_burst) unnamed_addr #0 align 64 {
entry:
  %tx_len = alloca i32, align 4
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_len) #6
  %0 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_len, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !155
  %device_can_sleep = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 83
  %2 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_can_sleep, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cw1200_device_wakeup(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else, !prof !154

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 356, i32 noundef 9, ptr noundef null) #6
  %4 = ptrtoint ptr %pending_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %pending_tx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %device_can_sleep to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %device_can_sleep, align 1
  br label %if.end29

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %pending_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pending_tx, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then24, %entry.if.end29_crit_edge
  %hw_bufs_used.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 81
  %7 = ptrtoint ptr %hw_bufs_used.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_bufs_used.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %hw_bufs_used.i, align 4
  %call30 = call i32 @wsm_get_tx(ptr noundef %priv, ptr noundef nonnull %data, ptr noundef nonnull %tx_len, ptr noundef %tx_burst) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then32, label %if.end68

if.then32:                                        ; preds = %if.end29
  %9 = ptrtoint ptr %hw_bufs_used.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_bufs_used.i, align 4
  %sub.i = add i32 %10, -1
  store i32 %sub.i, ptr %hw_bufs_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then32.if.end28.i_crit_edge, !prof !154

if.then32.if.end28.i_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  %11 = ptrtoint ptr %hw_bufs_used.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %hw_bufs_used.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %if.then32.if.end28.i_crit_edge
  %12 = phi i32 [ %sub.i, %if.then32.if.end28.i_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool30.not.i = icmp eq i32 %12, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.wsm_release_tx_buffer.exit_crit_edge

if.end28.i.wsm_release_tx_buffer.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wsm_release_tx_buffer.exit

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %bh_evt_wq.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 76
  call void @__wake_up(ptr noundef %bh_evt_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %wsm_release_tx_buffer.exit

wsm_release_tx_buffer.exit:                       ; preds = %if.then31.i, %if.end28.i.wsm_release_tx_buffer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp35 = icmp slt i32 %call30, 0
  br i1 %cmp35, label %do.end51, label %wsm_release_tx_buffer.exit.cleanup_crit_edge, !prof !154

wsm_release_tx_buffer.exit.cleanup_crit_edge:     ; preds = %wsm_release_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %wsm_release_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 371, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end68:                                         ; preds = %if.end29
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp70 = icmp ult i32 %16, 4
  br i1 %cmp70, label %do.body78, label %do.body87, !prof !154

do.body78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/bh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 377, 0\0A.popsection", ""() #6, !srcloc !161
  unreachable

do.body87:                                        ; preds = %if.end68
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp88.not = icmp eq i32 %16, %conv
  br i1 %cmp88.not, label %do.end105, label %do.body97, !prof !149

do.body97:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/st/cw1200/bh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 378, 0\0A.popsection", ""() #6, !srcloc !162
  unreachable

do.end105:                                        ; preds = %do.body87
  %bh_tx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 69
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh_tx, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %bh_tx, i32 1, i32 3, i32 1) #6
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh_tx, ptr %bh_tx, i32 1, ptr elementtype(i32) %bh_tx) #6, !srcloc !150
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %21 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwbus_ops, align 4
  %align_size = getelementptr inbounds %struct.hwbus_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %align_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %align_size, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %25 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwbus_priv, align 4
  %27 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_len, align 4
  %call106 = call i32 %24(ptr noundef %26, i32 noundef %28) #6
  %29 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call106, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8182, i32 %call106)
  %cmp107 = icmp ugt i32 %call106, 8182
  br i1 %cmp107, label %land.rhs, label %do.end105.if.end176_crit_edge

do.end105.if.end176_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

land.rhs:                                         ; preds = %do.end105
  %.b290 = load i1, ptr @cw1200_bh_tx_helper.__already_done, align 1
  br i1 %.b290, label %land.rhs.do.body161_crit_edge, label %if.then124, !prof !149

land.rhs.do.body161_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body161

if.then124:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cw1200_bh_tx_helper.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 386, i32 noundef 9, ptr noundef null) #6
  br label %do.body161

do.body161:                                       ; preds = %if.then124, %land.rhs.do.body161_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_tx_helper.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_tx_helper, %if.then172)) #6
          to label %if.end176 [label %if.then172], !srcloc !148

if.then172:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_bh_tx_helper.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.56, i32 noundef %31) #6
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %do.body161, %do.end105.if.end176_crit_edge
  %id = getelementptr inbounds %struct.wsm_hdr, ptr %14, i32 0, i32 1
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id, align 2
  %34 = and i16 %33, -225
  store i16 %34, ptr %id, align 2
  %wsm_tx_seq = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 80
  %35 = ptrtoint ptr %wsm_tx_seq to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wsm_tx_seq, align 1
  %and180 = zext i8 %36 to i16
  %37 = shl nuw nsw i16 %and180, 5
  %38 = and i16 %37, 224
  %or = or i16 %38, %34
  store i16 %or, ptr %id, align 2
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_len, align 4
  %call187 = call i32 @cw1200_data_write(ptr noundef %priv, ptr noundef %40, i32 noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end226, label %do.end204, !prof !149

do.end204:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  %43 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_len, align 4
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %44) #9
  %call225 = call i32 @wsm_release_tx_buffer(ptr noundef %priv, i32 noundef 1)
  br label %cleanup

if.end226:                                        ; preds = %if.end176
  %wsm_enable_wsm_dumps = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 96
  %45 = ptrtoint ptr %wsm_enable_wsm_dumps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wsm_enable_wsm_dumps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool227.not = icmp eq i32 %46, 0
  br i1 %tobool227.not, label %if.end226.if.end247_crit_edge, label %do.body229

if.end226.if.end247_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

do.body229:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_bh_tx_helper.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_bh_tx_helper, %if.then241)) #6
          to label %if.end247 [label %if.then241], !srcloc !148

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %14, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv243 = zext i16 %51 to i32
  call void @print_hex_dump(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.58, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %48, i32 noundef %conv243, i1 noundef zeroext true) #6
  br label %if.end247

if.end247:                                        ; preds = %if.then241, %do.body229, %if.end226.if.end247_crit_edge
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  call void @wsm_txed(ptr noundef %priv, ptr noundef %53) #6
  %54 = ptrtoint ptr %wsm_tx_seq to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %wsm_tx_seq, align 1
  %56 = add i8 %55, 1
  %57 = and i8 %56, 7
  store i8 %57, ptr %wsm_tx_seq, align 1
  %58 = ptrtoint ptr %tx_burst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp253 = icmp sgt i32 %59, 1
  br i1 %cmp253, label %if.then255, label %if.end247.cleanup_crit_edge

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then255:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  %debug.i = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 15
  %60 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %debug.i, align 4
  %tx_burst.i = getelementptr inbounds %struct.cw1200_debug_priv, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %tx_burst.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_burst.i, align 4
  %inc.i295 = add i32 %63, 1
  store i32 %inc.i295, ptr %tx_burst.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then255, %if.end247.cleanup_crit_edge, %do.end204, %do.end51, %wsm_release_tx_buffer.exit.cleanup_crit_edge, %if.else26, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %do.end204 ], [ 1, %if.then255 ], [ 0, %if.else26 ], [ 0, %if.end247.cleanup_crit_edge ], [ %call30, %do.end51 ], [ %call30, %wsm_release_tx_buffer.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_len) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_reg_write(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_data_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_handle_exception(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_handle_rx(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_device_wakeup(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i10.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i143 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_device_wakeup.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_device_wakeup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !148

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_device_wakeup.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.60) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw_refclk = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_refclk, align 4
  %conv = trunc i32 %1 to i16
  %call3 = tail call i32 @cw1200_dpll_from_clk(i16 noundef zeroext %conv) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %call3) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 6, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end37, label %do.end21, !prof !149

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end37:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i143) #6
  %4 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1048576, ptr %tmp.i143, align 4
  %call.i144 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i143, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool40.not = icmp eq i32 %call.i144, 0
  br i1 %tobool40.not, label %if.end72, label %do.end56, !prof !149

do.end56:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 205, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end72:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !155
  %call.i.i = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i.i, i32 noundef 4) #6
  %6 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp.i.i, align 4
  %8 = and i32 %7, -61696
  %9 = call i32 @llvm.bswap.i32(i32 %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end72.if.end107_crit_edge, label %if.then.i

if.end72.if.end107_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then.i:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i10.i) #6
  %10 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tmp.i10.i, align 4, !annotation !155
  %call.i11.i = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i10.i, i32 noundef 4) #6
  %11 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i10.i, align 4
  %13 = and i32 %12, -61696
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool2.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end107_crit_edge, label %do.end91

if.then.i.if.end107_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.end91:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end107:                                        ; preds = %if.then.i.if.end107_crit_edge, %if.end72.if.end107_crit_edge
  %ctrl_reg.0.ph.in = phi i32 [ %14, %if.then.i.if.end107_crit_edge ], [ %9, %if.end72.if.end107_crit_edge ]
  %15 = and i32 %ctrl_reg.0.ph.in, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool109.not = icmp eq i32 %15, 0
  br i1 %tobool109.not, label %if.end107.cleanup_crit_edge, label %do.body111

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_device_wakeup.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_device_wakeup, %if.then123)) #6
          to label %cleanup [label %if.then123], !srcloc !148

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cw1200_device_wakeup.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.61) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %do.body111, %if.end107.cleanup_crit_edge, %do.end91, %do.end56, %do.end21
  %retval.0 = phi i32 [ %call.i, %do.end21 ], [ %call.i144, %do.end56 ], [ %call.i11.i, %do.end91 ], [ 1, %if.then123 ], [ 0, %if.end107.cleanup_crit_edge ], [ 1, %do.body111 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_get_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_data_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_txed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_dpll_from_clk(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 56, i32 39}
!2 = !{ptr @cw1200_register_bh.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 63, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 65, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cw1200_register_bh.__UNIQUE_ID_ddebug348, !6, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!11 = !{ptr @cw1200_register_bh.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 75, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cw1200_register_bh.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 76, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 91, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cw1200_unregister_bh.__UNIQUE_ID_ddebug349, !18, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 96, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cw1200_irq_handler.__UNIQUE_ID_ddebug350, !22, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!25 = !{ptr @__ksymtab_cw1200_irq_handler, !26, !"__ksymtab_cw1200_irq_handler", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 108, i32 1}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 112, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cw1200_bh_wakeup.__UNIQUE_ID_ddebug351, !28, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 114, i32 3}
!33 = !{ptr @cw1200_bh_wakeup._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cw1200_bh_wakeup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 124, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cw1200_bh_suspend.__UNIQUE_ID_ddebug352, !36, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 126, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cw1200_bh_suspend._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @cw1200_bh_suspend._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 139, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cw1200_bh_resume.__UNIQUE_ID_ddebug353, !46, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 141, i32 3}
!51 = !{ptr @cw1200_bh_resume._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cw1200_bh_resume._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 227, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cw1200_enable_powersave.__UNIQUE_ID_ddebug356, !54, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!57 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 433, i32 4}
!61 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug362, !60, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 450, i32 3}
!64 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug363, !63, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 460, i32 3}
!67 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug364, !66, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 476, i32 5}
!70 = !{ptr @cw1200_bh._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cw1200_bh._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 499, i32 6}
!74 = !{ptr @cw1200_bh._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cw1200_bh._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 507, i32 5}
!78 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug365, !77, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 514, i32 4}
!81 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug366, !80, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 516, i32 5}
!84 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug367, !83, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 527, i32 5}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cw1200_bh._entry.39, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @cw1200_bh._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 532, i32 4}
!92 = !{ptr @cw1200_bh.__UNIQUE_ID_ddebug368, !91, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 606, i32 3}
!95 = !{ptr @cw1200_bh._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cw1200_bh._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 183, i32 4}
!99 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cw1200_bh_read_ctrl_reg._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cw1200_bh_read_ctrl_reg._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 253, i32 3}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug357, !103, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 267, i32 6}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 268, i32 3}
!110 = !{ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug358, !109, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 283, i32 3}
!113 = !{ptr @cw1200_bh_rx_helper._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cw1200_bh_rx_helper._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 297, i32 3}
!117 = !{ptr @cw1200_bh_rx_helper.__UNIQUE_ID_ddebug359, !116, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!118 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 386, i32 6}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 387, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cw1200_bh_tx_helper.__UNIQUE_ID_ddebug360, !122, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 393, i32 3}
!127 = !{ptr @cw1200_bh_tx_helper._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cw1200_bh_tx_helper._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 399, i32 3}
!131 = !{ptr @cw1200_bh_tx_helper.__UNIQUE_ID_ddebug361, !130, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 194, i32 2}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cw1200_device_wakeup.__UNIQUE_ID_ddebug354, !133, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/st/cw1200/bh.c", i32 216, i32 3}
!138 = !{ptr @cw1200_device_wakeup.__UNIQUE_ID_ddebug355, !137, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148966012, i64 2148966017, i64 2148966030, i64 2148966074, i64 2148966108, i64 2148966129}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2148352635, i64 2148352661, i64 2148352690, i64 2148352724, i64 2148352755, i64 2148352778}
!151 = !{i64 2148438070}
!152 = !{i64 2148353355, i64 2148353387, i64 2148353416, i64 2148353450, i64 2148353481, i64 2148353504}
!153 = !{i64 2148438299}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{!"auto-init"}
!156 = !{i8 0, i8 2}
!157 = !{i64 2148612535}
!158 = !{i64 859403, i64 859420, i64 859444, i64 859470, i64 859488}
!159 = !{i64 2148612905}
!160 = !{i64 2157528465, i64 2157528965, i64 2157528502, i64 2157528558, i64 2157528592, i64 2157528616, i64 2157528657, i64 2157528678, i64 2157528706, i64 2157528740}
!161 = !{i64 2157484336, i64 2157484836, i64 2157484373, i64 2157484429, i64 2157484463, i64 2157484487, i64 2157484528, i64 2157484549, i64 2157484577, i64 2157484611}
!162 = !{i64 2157486223, i64 2157486723, i64 2157486260, i64 2157486316, i64 2157486350, i64 2157486374, i64 2157486415, i64 2157486436, i64 2157486464, i64 2157486498}
