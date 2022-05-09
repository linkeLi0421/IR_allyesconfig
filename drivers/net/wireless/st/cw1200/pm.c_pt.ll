; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/pm.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cw1200_can_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_cw1200_can_suspend\09\09\09\09"
module asm "\09.long\09__crc_cw1200_can_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cw1200_can_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cw1200_can_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cw1200_can_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cw1200_udp_port_filter = type { %struct.wsm_udp_port_filter_hdr, [4 x %struct.wsm_udp_port_filter] }
%struct.wsm_udp_port_filter_hdr = type { i8, [3 x i8] }
%struct.wsm_udp_port_filter = type { i8, i8, i16 }
%struct.cw1200_ether_type_filter = type { %struct.wsm_ether_type_filter_hdr, [4 x %struct.wsm_ether_type_filter] }
%struct.wsm_ether_type_filter_hdr = type { i8, [3 x i8] }
%struct.wsm_ether_type_filter = type { i8, i8, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.cw1200_suspend_state = type { i32, i32, i32, i32, i8, i8 }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { i8, i8, i16 }

@cw1200_pm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pm->lock\00", [22 x i8] zeroinitializer }, align 32
@cw1200_pm_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&pm->stay_awake)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cw1200_can_suspend.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw1200_core\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cw1200_can_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/st/cw1200/pm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Suspend interrupted.\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_cw1200_can_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cw1200_can_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cw1200_can_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cw1200_can_suspend to i32), ptr @__kstrtab_cw1200_can_suspend, ptr @__kstrtabns_cw1200_can_suspend }, section "___ksymtab_gpl+cw1200_can_suspend", align 4
@cw1200_udp_port_filter_on = internal global { %struct.cw1200_udp_port_filter, [44 x i8] } { %struct.cw1200_udp_port_filter { %struct.wsm_udp_port_filter_hdr { i8 2, [3 x i8] zeroinitializer }, [4 x %struct.wsm_udp_port_filter] [%struct.wsm_udp_port_filter { i8 2, i8 0, i16 17152 }, %struct.wsm_udp_port_filter { i8 2, i8 0, i16 17408 }, %struct.wsm_udp_port_filter zeroinitializer, %struct.wsm_udp_port_filter zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@cw1200_ether_type_filter_on = internal global { %struct.cw1200_ether_type_filter, [44 x i8] } { %struct.cw1200_ether_type_filter { %struct.wsm_ether_type_filter_hdr { i8 4, [3 x i8] zeroinitializer }, [4 x %struct.wsm_ether_type_filter] [%struct.wsm_ether_type_filter { i8 1, i8 0, i16 8 }, %struct.wsm_ether_type_filter { i8 1, i8 0, i16 -29048 }, %struct.wsm_ether_type_filter { i8 1, i8 0, i16 -19320 }, %struct.wsm_ether_type_filter { i8 1, i8 0, i16 1544 }] }, [44 x i8] zeroinitializer }, align 32
@cw1200_wow_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 265, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PM request failed: %d. WoW is disabled.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cw1200_wow_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw1200_wow_suspend._entry_ptr = internal global ptr @cw1200_wow_suspend._entry, section ".printk_index", align 4
@cw1200_udp_port_filter_off = internal global { %struct.wsm_udp_port_filter_hdr, [28 x i8] } zeroinitializer, align 32
@cw1200_ether_type_filter_off = internal global { %struct.wsm_ether_type_filter_hdr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 99, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 101, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 150, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"cw1200_udp_port_filter_on\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 31, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"cw1200_ether_type_filter_on\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 55, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 264, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"cw1200_udp_port_filter_off\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 47, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"cw1200_ether_type_filter_off\00", align 1
@___asan_gen_.60 = private constant [39 x i8] c"../drivers/net/wireless/st/cw1200/pm.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 77, i32 41 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_cw1200_can_suspend, ptr @cw1200_wow_suspend._entry, ptr @cw1200_wow_suspend._entry_ptr, ptr @cw1200_pm_init.__key, ptr @.str, ptr @cw1200_pm_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cw1200_udp_port_filter_on, ptr @cw1200_ether_type_filter_on, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cw1200_udp_port_filter_off, ptr @cw1200_ether_type_filter_off], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_pm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_pm_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_udp_port_filter_on to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_ether_type_filter_on to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_wow_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_udp_port_filter_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_ether_type_filter_off to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_pm_init(ptr noundef %pm, ptr nocapture noundef readnone %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @cw1200_pm_init.__key, i16 noundef signext 3) #8
  %stay_awake = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %stay_awake, ptr noundef nonnull @cw1200_pm_stay_awake_tmo, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @cw1200_pm_init.__key.1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cw1200_pm_stay_awake_tmo(ptr nocapture noundef %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_pm_deinit(ptr noundef %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stay_awake = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %stay_awake) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cw1200_pm_stay_awake(ptr noundef %pm, i32 noundef %tmo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %expires = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %pprev.i.i = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %4, null
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %tmo)
  %cmp = icmp slt i32 %sub, %tmo
  %or.cond = select i1 %tobool.not.i.i.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stay_awake = getelementptr inbounds %struct.cw1200_pm_state, ptr %pm, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, %tmo
  %call3 = tail call i32 @mod_timer(ptr noundef %stay_awake, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_can_suspend(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bh_rx = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bh_rx, i32 noundef 4) #8
  %0 = ptrtoint ptr %bh_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw1200_can_suspend.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cw1200_can_suspend, %if.then5)) #8
          to label %return [label %if.then5], !srcloc !38

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw1200_can_suspend.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %return

return:                                           ; preds = %if.then5, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %entry.return_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_wow_suspend(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %wowlan) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry110 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %pm_state2 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 58
  %lock = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 58, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %pprev.i.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 58, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.cleanup241_crit_edge

entry.cleanup241_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

if.end:                                           ; preds = %entry
  %num_queued = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %num_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup241_crit_edge

if.end.cleanup241_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

if.end6:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  %call7 = tail call i32 @mutex_trylock(ptr noundef %conf_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup241_crit_edge, label %if.end10

if.end6.cleanup241_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

if.end10:                                         ; preds = %if.end6
  %channel_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %channel_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.revert1_crit_edge

if.end10.revert1_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert1

if.end13:                                         ; preds = %if.end10
  %join_pending = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 99
  %8 = ptrtoint ptr %join_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %join_pending, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.revert1_crit_edge

if.end13.revert1_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert1

if.end16:                                         ; preds = %if.end13
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  %call18 = tail call i32 @down_trylock(ptr noundef %scan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.revert1_crit_edge

if.end16.revert1_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert1

if.end21:                                         ; preds = %if.end16
  tail call void @wsm_lock_tx_async(ptr noundef %1) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 200) #8
  %hw_bufs_used = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 81
  %10 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %if.end21.if.end63_crit_edge, label %if.then34

if.end21.if.end63_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then34:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %bh_evt_wq = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 76
  %call36409 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %13 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool39.not410 = icmp eq i32 %14, 0
  br i1 %tobool39.not410, label %if.end60.thread, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  br label %cleanup

if.end60.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end63

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  %__ret35.1411 = phi i32 [ %__ret35.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then34.cleanup_crit_edge ]
  %call57 = call i32 @schedule_timeout(i32 noundef %__ret35.1411) #8
  %call36 = call i32 @prepare_to_wait_event(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %15 = ptrtoint ptr %hw_bufs_used to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_bufs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool39.not = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool44.not = icmp eq i32 %call57, 0
  %17 = select i1 %tobool39.not, i1 %tobool44.not, i1 false
  %__ret35.1 = select i1 %17, i32 1, i32 %call57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret35.1)
  %tobool50.not = icmp eq i32 %__ret35.1, 0
  %18 = select i1 %tobool39.not, i1 true, i1 %tobool50.not
  br i1 %18, label %if.end60, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %bh_evt_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret35.1)
  %cmp = icmp slt i32 %__ret35.1, 1
  br i1 %cmp, label %if.end60.revert2_crit_edge, label %if.end60.if.end63_crit_edge

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end60.revert2_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert2

if.end63:                                         ; preds = %if.end60.if.end63_crit_edge, %if.end60.thread, %if.end21.if.end63_crit_edge
  %19 = load i8, ptr @cw1200_udp_port_filter_on, align 1
  %conv.i = zext i8 %19 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 4
  %call.i = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4123, ptr noundef nonnull @cw1200_udp_port_filter_on, i32 noundef %add.i) #8
  %20 = load i8, ptr @cw1200_ether_type_filter_on, align 1
  %conv.i341 = zext i8 %20 to i32
  %mul.i342 = shl nuw nsw i32 %conv.i341, 2
  %add.i343 = add nuw nsw i32 %mul.i342, 4
  %call.i344 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4122, ptr noundef nonnull @cw1200_ether_type_filter_on, i32 noundef %add.i343) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 20) #11
  %tobool67.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool67.not, label %if.end63.revert3_crit_edge, label %if.end69

if.end63.revert3_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert3

if.end69:                                         ; preds = %if.end63
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vif, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p2p, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool70.not = icmp eq i8 %25, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %if.end69.if.end154_crit_edge

if.end69.if.end154_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

land.lhs.true71:                                  ; preds = %if.end69
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %26 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp72 = icmp eq i32 %27, 4
  br i1 %cmp72, label %land.lhs.true73, label %land.lhs.true71.if.end154_crit_edge

land.lhs.true71.if.end154_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

land.lhs.true73:                                  ; preds = %land.lhs.true71
  %powersave_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %powersave_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp74.not = icmp eq i8 %29, 1
  br i1 %cmp74.not, label %land.lhs.true73.if.end154_crit_edge, label %if.then76

land.lhs.true73.if.end154_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then76:                                        ; preds = %land.lhs.true73
  %prev_ps_mode = getelementptr inbounds %struct.cw1200_suspend_state, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %prev_ps_mode to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %prev_ps_mode, align 1
  %31 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %powersave_mode, align 4
  %call82 = call i32 @cw1200_set_pm(ptr noundef %1, ptr noundef %powersave_mode) #8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 222) #8
  %ps_mode_switch_in_progress = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 140
  %32 = ptrtoint ptr %ps_mode_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ps_mode_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool91.not = icmp eq i32 %33, 0
  br i1 %tobool91.not, label %if.then76.if.end154_crit_edge, label %if.then109

if.then76.if.end154_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then109:                                       ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry110) #8
  %34 = call ptr @memset(ptr %__wq_entry110, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry110, i32 noundef 0) #8
  %ps_mode_switch_done = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 141
  %call114413 = call i32 @prepare_to_wait_event(ptr noundef %ps_mode_switch_done, ptr noundef nonnull %__wq_entry110, i32 noundef 1) #8
  %35 = ptrtoint ptr %ps_mode_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ps_mode_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool117.not414 = icmp eq i32 %36, 0
  br i1 %tobool117.not414, label %if.then109.for.end144_crit_edge, label %if.then109.if.end136_crit_edge

if.then109.if.end136_crit_edge:                   ; preds = %if.then109
  br label %if.end136

if.then109.for.end144_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

if.end136:                                        ; preds = %cleanup141.if.end136_crit_edge, %if.then109.if.end136_crit_edge
  %__ret111.1416 = phi i32 [ %__ret111.1, %cleanup141.if.end136_crit_edge ], [ 100, %if.then109.if.end136_crit_edge ]
  %call114415 = phi i32 [ %call114, %cleanup141.if.end136_crit_edge ], [ %call114413, %if.then109.if.end136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114415)
  %tobool137.not = icmp eq i32 %call114415, 0
  br i1 %tobool137.not, label %cleanup141, label %if.end136.if.end148_crit_edge

if.end136.if.end148_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

cleanup141:                                       ; preds = %if.end136
  %call140 = call i32 @schedule_timeout(i32 noundef %__ret111.1416) #8
  %call114 = call i32 @prepare_to_wait_event(ptr noundef %ps_mode_switch_done, ptr noundef nonnull %__wq_entry110, i32 noundef 1) #8
  %37 = ptrtoint ptr %ps_mode_switch_in_progress to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ps_mode_switch_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool117.not = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool123.not = icmp eq i32 %call140, 0
  %39 = select i1 %tobool117.not, i1 %tobool123.not, i1 false
  %__ret111.1 = select i1 %39, i32 1, i32 %call140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret111.1)
  %tobool130.not = icmp eq i32 %__ret111.1, 0
  %40 = select i1 %tobool117.not, i1 true, i1 %tobool130.not
  br i1 %40, label %cleanup141.for.end144_crit_edge, label %cleanup141.if.end136_crit_edge

cleanup141.if.end136_crit_edge:                   ; preds = %cleanup141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

cleanup141.for.end144_crit_edge:                  ; preds = %cleanup141
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

for.end144:                                       ; preds = %cleanup141.for.end144_crit_edge, %if.then109.for.end144_crit_edge
  %__ret111.1.lcssa = phi i32 [ 100, %if.then109.for.end144_crit_edge ], [ %__ret111.1, %cleanup141.for.end144_crit_edge ]
  call void @finish_wait(ptr noundef %ps_mode_switch_done, ptr noundef nonnull %__wq_entry110) #8
  br label %if.end148

if.end148:                                        ; preds = %for.end144, %if.end136.if.end148_crit_edge
  %__ret111.2399 = phi i32 [ %__ret111.1.lcssa, %for.end144 ], [ %call114415, %if.end136.if.end148_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret111.2399)
  %cmp150 = icmp slt i32 %__ret111.2399, 1
  br i1 %cmp150, label %if.end148.revert4_crit_edge, label %if.end148.if.end154_crit_edge

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.end148.revert4_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert4

if.end154:                                        ; preds = %if.end148.if.end154_crit_edge, %if.then76.if.end154_crit_edge, %land.lhs.true73.if.end154_crit_edge, %land.lhs.true71.if.end154_crit_edge, %if.end69.if.end154_crit_edge
  %bss_loss_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 132
  %call.i345 = call zeroext i1 @cancel_delayed_work(ptr noundef %bss_loss_work) #8
  br i1 %call.i345, label %if.then.i, label %if.end154.cw1200_suspend_work.exit_crit_edge

if.end154.cw1200_suspend_work.exit_crit_edge:     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_suspend_work.exit

if.then.i:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %expires.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 132, i32 1, i32 1
  %41 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %42, %43
  %44 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  br label %cw1200_suspend_work.exit

cw1200_suspend_work.exit:                         ; preds = %if.then.i, %if.end154.cw1200_suspend_work.exit_crit_edge
  %tmo.0.i = phi i32 [ %44, %if.then.i ], [ -1, %if.end154.cw1200_suspend_work.exit_crit_edge ]
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %tmo.0.i, ptr %call7.i.i, align 8
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 101
  %call.i346 = call zeroext i1 @cancel_delayed_work(ptr noundef %join_timeout) #8
  br i1 %call.i346, label %if.then.i349, label %cw1200_suspend_work.exit.cw1200_suspend_work.exit351_crit_edge

cw1200_suspend_work.exit.cw1200_suspend_work.exit351_crit_edge: ; preds = %cw1200_suspend_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_suspend_work.exit351

if.then.i349:                                     ; preds = %cw1200_suspend_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  %expires.i347 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 101, i32 1, i32 1
  %46 = ptrtoint ptr %expires.i347 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %expires.i347, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i348 = sub i32 %47, %48
  %49 = call i32 @llvm.smax.i32(i32 %sub.i348, i32 0) #8
  br label %cw1200_suspend_work.exit351

cw1200_suspend_work.exit351:                      ; preds = %if.then.i349, %cw1200_suspend_work.exit.cw1200_suspend_work.exit351_crit_edge
  %tmo.0.i350 = phi i32 [ %49, %if.then.i349 ], [ -1, %cw1200_suspend_work.exit.cw1200_suspend_work.exit351_crit_edge ]
  %join_tmo = getelementptr inbounds %struct.cw1200_suspend_state, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %join_tmo to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %tmo.0.i350, ptr %join_tmo, align 4
  %probe_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 12
  %call.i352 = call zeroext i1 @cancel_delayed_work(ptr noundef %probe_work) #8
  br i1 %call.i352, label %if.then.i355, label %cw1200_suspend_work.exit351.cw1200_suspend_work.exit357_crit_edge

cw1200_suspend_work.exit351.cw1200_suspend_work.exit357_crit_edge: ; preds = %cw1200_suspend_work.exit351
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_suspend_work.exit357

if.then.i355:                                     ; preds = %cw1200_suspend_work.exit351
  call void @__sanitizer_cov_trace_pc() #10
  %expires.i353 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 12, i32 1, i32 1
  %51 = ptrtoint ptr %expires.i353 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %expires.i353, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i354 = sub i32 %52, %53
  %54 = call i32 @llvm.smax.i32(i32 %sub.i354, i32 0) #8
  br label %cw1200_suspend_work.exit357

cw1200_suspend_work.exit357:                      ; preds = %if.then.i355, %cw1200_suspend_work.exit351.cw1200_suspend_work.exit357_crit_edge
  %tmo.0.i356 = phi i32 [ %54, %if.then.i355 ], [ -1, %cw1200_suspend_work.exit351.cw1200_suspend_work.exit357_crit_edge ]
  %direct_probe = getelementptr inbounds %struct.cw1200_suspend_state, ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %direct_probe to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %tmo.0.i356, ptr %direct_probe, align 8
  %link_id_gc_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 115
  %call.i358 = call zeroext i1 @cancel_delayed_work(ptr noundef %link_id_gc_work) #8
  br i1 %call.i358, label %if.then.i361, label %cw1200_suspend_work.exit357.cw1200_suspend_work.exit363_crit_edge

cw1200_suspend_work.exit357.cw1200_suspend_work.exit363_crit_edge: ; preds = %cw1200_suspend_work.exit357
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_suspend_work.exit363

if.then.i361:                                     ; preds = %cw1200_suspend_work.exit357
  call void @__sanitizer_cov_trace_pc() #10
  %expires.i359 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 115, i32 1, i32 1
  %56 = ptrtoint ptr %expires.i359 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %expires.i359, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i360 = sub i32 %57, %58
  %59 = call i32 @llvm.smax.i32(i32 %sub.i360, i32 0) #8
  br label %cw1200_suspend_work.exit363

cw1200_suspend_work.exit363:                      ; preds = %if.then.i361, %cw1200_suspend_work.exit357.cw1200_suspend_work.exit363_crit_edge
  %tmo.0.i362 = phi i32 [ %59, %if.then.i361 ], [ -1, %cw1200_suspend_work.exit357.cw1200_suspend_work.exit363_crit_edge ]
  %link_id_gc = getelementptr inbounds %struct.cw1200_suspend_state, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %link_id_gc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %tmo.0.i362, ptr %link_id_gc, align 4
  %clear_recent_scan_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 87
  %call160 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %clear_recent_scan_work) #8
  %recent_scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 86
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %recent_scan, i32 noundef 4) #8
  %61 = ptrtoint ptr %recent_scan to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %recent_scan, align 4
  %join_status161 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %62 = ptrtoint ptr %join_status161 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %join_status161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp162 = icmp eq i32 %63, 4
  br i1 %cmp162, label %land.lhs.true164, label %cw1200_suspend_work.exit363.if.end172_crit_edge

cw1200_suspend_work.exit363.if.end172_crit_edge:  ; preds = %cw1200_suspend_work.exit363
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

land.lhs.true164:                                 ; preds = %cw1200_suspend_work.exit363
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 105
  %64 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %join_dtim_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool165.not = icmp eq i32 %65, 0
  br i1 %tobool165.not, label %land.lhs.true164.if.end172_crit_edge, label %land.lhs.true166

land.lhs.true164.if.end172_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

land.lhs.true166:                                 ; preds = %land.lhs.true164
  %has_multicast_subscription = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 50
  %66 = ptrtoint ptr %has_multicast_subscription to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %has_multicast_subscription, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool167.not = icmp eq i8 %67, 0
  br i1 %tobool167.not, label %if.then168, label %land.lhs.true166.if.end172_crit_edge

land.lhs.true166.if.end172_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then168:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_skipping = getelementptr inbounds %struct.cw1200_suspend_state, ptr %call7.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %beacon_skipping to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %beacon_skipping, align 8
  %69 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %join_dtim_period, align 4
  %mul = mul i32 %70, 3
  call fastcc void @wsm_set_beacon_wakeup_period(ptr noundef %1, i32 noundef %70, i32 noundef %mul)
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %land.lhs.true166.if.end172_crit_edge, %land.lhs.true164.if.end172_crit_edge, %cw1200_suspend_work.exit363.if.end172_crit_edge
  %call173 = call i32 @cw1200_bh_suspend(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end172.revert5_crit_edge

if.end172.revert5_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert5

if.end176:                                        ; preds = %if.end172
  %pprev.i.i364 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 128, i32 0, i32 1
  %71 = ptrtoint ptr %pprev.i.i364 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %pprev.i.i364, align 4
  %tobool.not.i.i365.not = icmp eq ptr %72, null
  br i1 %tobool.not.i.i365.not, label %if.end180, label %revert6

if.end180:                                        ; preds = %if.end176
  %73 = ptrtoint ptr %pm_state2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i, ptr %pm_state2, align 4
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwbus_ops, align 4
  %power_mgmt = getelementptr inbounds %struct.hwbus_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %power_mgmt, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwbus_priv, align 4
  %call181 = call i32 %77(ptr noundef %79, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end189, label %do.end186

do.end186:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call181) #12
  %call188 = call i32 @cw1200_wow_resume(ptr noundef %hw)
  br label %cleanup241

if.end189:                                        ; preds = %if.end180
  %bh_rx = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 68
  %call.i.i340 = call zeroext i1 @__kasan_check_read(ptr noundef %bh_rx, i32 noundef 4) #8
  %84 = ptrtoint ptr %bh_rx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %bh_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool191.not = icmp eq i32 %85, 0
  br i1 %tobool191.not, label %if.end189.cleanup241_crit_edge, label %if.then192

if.end189.cleanup241_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %call193 = call i32 @cw1200_wow_resume(ptr noundef %hw)
  br label %cleanup241

revert6:                                          ; preds = %if.end176
  %call195 = call i32 @cw1200_bh_resume(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %revert6.revert5_crit_edge, label %do.end209, !prof !40

revert6.revert5_crit_edge:                        ; preds = %revert6
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert5

do.end209:                                        ; preds = %revert6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 279, i32 noundef 9, ptr noundef null) #8
  br label %revert5

revert5:                                          ; preds = %do.end209, %revert6.revert5_crit_edge, %if.end172.revert5_crit_edge
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i = icmp slt i32 %87, 0
  br i1 %cmp.i, label %revert5.cw1200_resume_work.exit_crit_edge, label %if.end.i

revert5.cw1200_resume_work.exit_crit_edge:        ; preds = %revert5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit

if.end.i:                                         ; preds = %revert5
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %88 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %workqueue.i, align 4
  %call.i.i367 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %89, ptr noundef %bss_loss_work, i32 noundef %87) #8
  br label %cw1200_resume_work.exit

cw1200_resume_work.exit:                          ; preds = %if.end.i, %revert5.cw1200_resume_work.exit_crit_edge
  %90 = ptrtoint ptr %join_tmo to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %join_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i368 = icmp slt i32 %91, 0
  br i1 %cmp.i368, label %cw1200_resume_work.exit.cw1200_resume_work.exit372_crit_edge, label %if.end.i371

cw1200_resume_work.exit.cw1200_resume_work.exit372_crit_edge: ; preds = %cw1200_resume_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit372

if.end.i371:                                      ; preds = %cw1200_resume_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i369 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %92 = ptrtoint ptr %workqueue.i369 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %workqueue.i369, align 4
  %call.i.i370 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %93, ptr noundef %join_timeout, i32 noundef %91) #8
  br label %cw1200_resume_work.exit372

cw1200_resume_work.exit372:                       ; preds = %if.end.i371, %cw1200_resume_work.exit.cw1200_resume_work.exit372_crit_edge
  %94 = ptrtoint ptr %direct_probe to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %direct_probe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i373 = icmp slt i32 %95, 0
  br i1 %cmp.i373, label %cw1200_resume_work.exit372.cw1200_resume_work.exit377_crit_edge, label %if.end.i376

cw1200_resume_work.exit372.cw1200_resume_work.exit377_crit_edge: ; preds = %cw1200_resume_work.exit372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit377

if.end.i376:                                      ; preds = %cw1200_resume_work.exit372
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i374 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %96 = ptrtoint ptr %workqueue.i374 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %workqueue.i374, align 4
  %call.i.i375 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %probe_work, i32 noundef %95) #8
  br label %cw1200_resume_work.exit377

cw1200_resume_work.exit377:                       ; preds = %if.end.i376, %cw1200_resume_work.exit372.cw1200_resume_work.exit377_crit_edge
  %98 = ptrtoint ptr %link_id_gc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %link_id_gc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i378 = icmp slt i32 %99, 0
  br i1 %cmp.i378, label %cw1200_resume_work.exit377.revert4_crit_edge, label %if.end.i381

cw1200_resume_work.exit377.revert4_crit_edge:     ; preds = %cw1200_resume_work.exit377
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert4

if.end.i381:                                      ; preds = %cw1200_resume_work.exit377
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue.i379 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %100 = ptrtoint ptr %workqueue.i379 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %workqueue.i379, align 4
  %call.i.i380 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %link_id_gc_work, i32 noundef %99) #8
  br label %revert4

revert4:                                          ; preds = %if.end.i381, %cw1200_resume_work.exit377.revert4_crit_edge, %if.end148.revert4_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %revert3

revert3:                                          ; preds = %revert4, %if.end63.revert3_crit_edge
  %102 = load i8, ptr @cw1200_udp_port_filter_off, align 1
  %conv.i383 = zext i8 %102 to i32
  %mul.i384 = shl nuw nsw i32 %conv.i383, 2
  %add.i385 = add nuw nsw i32 %mul.i384, 4
  %call.i386 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4123, ptr noundef nonnull @cw1200_udp_port_filter_off, i32 noundef %add.i385) #8
  %103 = load i8, ptr @cw1200_ether_type_filter_off, align 1
  %conv.i387 = zext i8 %103 to i32
  %mul.i388 = shl nuw nsw i32 %conv.i387, 2
  %add.i389 = add nuw nsw i32 %mul.i388, 4
  %call.i390 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4122, ptr noundef nonnull @cw1200_ether_type_filter_off, i32 noundef %add.i389) #8
  br label %revert2

revert2:                                          ; preds = %revert3, %if.end60.revert2_crit_edge
  call void @wsm_unlock_tx(ptr noundef %1) #8
  call void @up(ptr noundef %scan) #8
  br label %revert1

revert1:                                          ; preds = %revert2, %if.end16.revert1_crit_edge, %if.end13.revert1_crit_edge, %if.end10.revert1_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup241

cleanup241:                                       ; preds = %revert1, %if.then192, %if.end189.cleanup241_crit_edge, %do.end186, %if.end6.cleanup241_crit_edge, %if.end.cleanup241_crit_edge, %entry.cleanup241_crit_edge
  %retval.0 = phi i32 [ -16, %revert1 ], [ -16, %do.end186 ], [ -11, %if.then192 ], [ -11, %entry.cleanup241_crit_edge ], [ -16, %if.end.cleanup241_crit_edge ], [ -16, %if.end6.cleanup241_crit_edge ], [ 0, %if.end189.cleanup241_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_lock_tx_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_set_pm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wsm_set_beacon_wakeup_period(ptr noundef %priv, i32 noundef %dtim_interval, i32 noundef %listen_interval) unnamed_addr #4 align 64 {
entry:
  %val = alloca %struct.anon.143, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = getelementptr inbounds %struct.anon.143, ptr %val, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.143, ptr %val, i32 0, i32 2
  %conv = trunc i32 %dtim_interval to i8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %conv1 = trunc i32 %listen_interval to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %dtim_interval)
  %cmp = icmp ugt i32 %dtim_interval, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %listen_interval)
  %cmp3 = icmp ugt i32 %listen_interval, 65535
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @wsm_write_mib(ptr noundef %priv, i16 noundef zeroext 4103, ptr noundef nonnull %val, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_bh_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_wow_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca %struct.anon.143, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %pm_state2 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %pm_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_state2, align 4
  store ptr null, ptr %pm_state2, align 4
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_ops, align 4
  %power_mgmt = getelementptr inbounds %struct.hwbus_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %power_mgmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_mgmt, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_priv, align 4
  %call = tail call i32 %7(ptr noundef %9, i1 noundef zeroext false) #8
  %scan = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85
  tail call void @up(ptr noundef %scan) #8
  %call4 = tail call i32 @cw1200_bh_resume(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 321, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vif = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vif, align 4
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p2p, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool24.not = icmp eq i8 %13, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %join_status = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 97
  %14 = ptrtoint ptr %join_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %join_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp eq i32 %15, 4
  br i1 %cmp, label %if.then25, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %prev_ps_mode = getelementptr inbounds %struct.cw1200_suspend_state, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %prev_ps_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prev_ps_mode, align 1
  %powersave_mode = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %powersave_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %powersave_mode, align 4
  %call27 = tail call i32 @cw1200_set_pm(ptr noundef %1, ptr noundef %powersave_mode) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %beacon_skipping = getelementptr inbounds %struct.cw1200_suspend_state, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %beacon_skipping to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %beacon_skipping, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %if.end28.if.end35_crit_edge, label %if.then30

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  %beacon_int = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 46
  %21 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %beacon_int, align 4
  %join_dtim_period = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 105
  %23 = ptrtoint ptr %join_dtim_period to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %join_dtim_period, align 4
  %mul = mul i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %cmp31 = icmp sgt i32 %mul, 1000
  %spec.select = select i1 %cmp31, i32 1, i32 %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %25 = getelementptr inbounds %struct.anon.143, ptr %val.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.anon.143, ptr %val.i, i32 0, i32 2
  %conv.i = trunc i32 %spec.select to i8
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %val.i, align 2
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.select)
  %cmp.i = icmp ugt i32 %spec.select, 255
  br i1 %cmp.i, label %if.then30.wsm_set_beacon_wakeup_period.exit_crit_edge, label %if.else.i

if.then30.wsm_set_beacon_wakeup_period.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsm_set_beacon_wakeup_period.exit

if.else.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4103, ptr noundef nonnull %val.i, i32 noundef 4) #8
  br label %wsm_set_beacon_wakeup_period.exit

wsm_set_beacon_wakeup_period.exit:                ; preds = %if.else.i, %if.then30.wsm_set_beacon_wakeup_period.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %30 = ptrtoint ptr %beacon_skipping to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %beacon_skipping, align 4
  br label %if.end35

if.end35:                                         ; preds = %wsm_set_beacon_wakeup_period.exit, %if.end28.if.end35_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i77 = icmp slt i32 %32, 0
  br i1 %cmp.i77, label %if.end35.cw1200_resume_work.exit_crit_edge, label %if.end.i

if.end35.cw1200_resume_work.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %bss_loss_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 132
  %workqueue.i = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %workqueue.i, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %bss_loss_work, i32 noundef %32) #8
  br label %cw1200_resume_work.exit

cw1200_resume_work.exit:                          ; preds = %if.end.i, %if.end35.cw1200_resume_work.exit_crit_edge
  %join_tmo = getelementptr inbounds %struct.cw1200_suspend_state, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %join_tmo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %join_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i78 = icmp slt i32 %36, 0
  br i1 %cmp.i78, label %cw1200_resume_work.exit.cw1200_resume_work.exit82_crit_edge, label %if.end.i81

cw1200_resume_work.exit.cw1200_resume_work.exit82_crit_edge: ; preds = %cw1200_resume_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit82

if.end.i81:                                       ; preds = %cw1200_resume_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  %join_timeout = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 101
  %workqueue.i79 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %workqueue.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %workqueue.i79, align 4
  %call.i.i80 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %join_timeout, i32 noundef %36) #8
  br label %cw1200_resume_work.exit82

cw1200_resume_work.exit82:                        ; preds = %if.end.i81, %cw1200_resume_work.exit.cw1200_resume_work.exit82_crit_edge
  %direct_probe = getelementptr inbounds %struct.cw1200_suspend_state, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %direct_probe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %direct_probe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i83 = icmp slt i32 %40, 0
  br i1 %cmp.i83, label %cw1200_resume_work.exit82.cw1200_resume_work.exit87_crit_edge, label %if.end.i86

cw1200_resume_work.exit82.cw1200_resume_work.exit87_crit_edge: ; preds = %cw1200_resume_work.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit87

if.end.i86:                                       ; preds = %cw1200_resume_work.exit82
  call void @__sanitizer_cov_trace_pc() #10
  %probe_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 85, i32 12
  %workqueue.i84 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %41 = ptrtoint ptr %workqueue.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %workqueue.i84, align 4
  %call.i.i85 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %probe_work, i32 noundef %40) #8
  br label %cw1200_resume_work.exit87

cw1200_resume_work.exit87:                        ; preds = %if.end.i86, %cw1200_resume_work.exit82.cw1200_resume_work.exit87_crit_edge
  %link_id_gc = getelementptr inbounds %struct.cw1200_suspend_state, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %link_id_gc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_id_gc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i88 = icmp slt i32 %44, 0
  br i1 %cmp.i88, label %cw1200_resume_work.exit87.cw1200_resume_work.exit92_crit_edge, label %if.end.i91

cw1200_resume_work.exit87.cw1200_resume_work.exit92_crit_edge: ; preds = %cw1200_resume_work.exit87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cw1200_resume_work.exit92

if.end.i91:                                       ; preds = %cw1200_resume_work.exit87
  call void @__sanitizer_cov_trace_pc() #10
  %link_id_gc_work = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 115
  %workqueue.i89 = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 16
  %45 = ptrtoint ptr %workqueue.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %workqueue.i89, align 4
  %call.i.i90 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %link_id_gc_work, i32 noundef %44) #8
  br label %cw1200_resume_work.exit92

cw1200_resume_work.exit92:                        ; preds = %if.end.i91, %cw1200_resume_work.exit87.cw1200_resume_work.exit92_crit_edge
  %47 = load i8, ptr @cw1200_udp_port_filter_off, align 1
  %conv.i93 = zext i8 %47 to i32
  %mul.i = shl nuw nsw i32 %conv.i93, 2
  %add.i = add nuw nsw i32 %mul.i, 4
  %call.i94 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4123, ptr noundef nonnull @cw1200_udp_port_filter_off, i32 noundef %add.i) #8
  %48 = load i8, ptr @cw1200_ether_type_filter_off, align 1
  %conv.i95 = zext i8 %48 to i32
  %mul.i96 = shl nuw nsw i32 %conv.i95, 2
  %add.i97 = add nuw nsw i32 %mul.i96, 4
  %call.i98 = call i32 @wsm_write_mib(ptr noundef %1, i16 noundef zeroext 4122, ptr noundef nonnull @cw1200_ether_type_filter_off, i32 noundef %add.i97) #8
  call void @wsm_unlock_tx(ptr noundef %1) #8
  %conf_mutex = getelementptr inbounds %struct.cw1200_common, ptr %1, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_bh_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wsm_unlock_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wsm_write_mib(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @cw1200_pm_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 99, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cw1200_pm_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 101, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 150, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cw1200_can_suspend.__UNIQUE_ID_ddebug348, !7, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!12 = !{ptr @__ksymtab_cw1200_can_suspend, !13, !"__ksymtab_cw1200_can_suspend", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 155, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 264, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cw1200_wow_suspend._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @cw1200_wow_suspend._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cw1200_udp_port_filter_on, !22, !"cw1200_udp_port_filter_on", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 31, i32 38}
!23 = !{ptr @cw1200_ether_type_filter_on, !24, !"cw1200_ether_type_filter_on", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 55, i32 40}
!25 = !{ptr @cw1200_udp_port_filter_off, !26, !"cw1200_udp_port_filter_off", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 47, i32 39}
!27 = !{ptr @cw1200_ether_type_filter_off, !28, !"cw1200_ether_type_filter_off", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/st/cw1200/pm.c", i32 77, i32 41}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148960529, i64 2148960534, i64 2148960547, i64 2148960591, i64 2148960625, i64 2148960646}
!39 = !{i8 0, i8 2}
!40 = !{!"branch_weights", i32 2000, i32 1}
