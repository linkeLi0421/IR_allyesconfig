; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_mac.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.zd_reg_alpha2_map = type { i32, [2 x i8] }
%struct.tx_retry_rate = type { i32, [10 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.zd_mac = type { %struct.zd_chip, %struct.spinlock, %struct.spinlock, ptr, ptr, %struct.housekeeping, %struct.beacon, %struct.work_struct, %struct.work_struct, %struct.zd_mc_hash, [64 x i8], i8, i8, i8, i32, i32, i32, %struct.sk_buff_head, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, i8, i32 }
%struct.zd_chip = type { %struct.zd_usb, %struct.zd_rf, %struct.mutex, i16, [14 x i8], [14 x i8], [3 x [14 x i8]], i16, i16 }
%struct.zd_usb = type { %struct.zd_usb_interrupt, %struct.zd_usb_rx, %struct.zd_usb_tx, ptr, %struct.usb_anchor, ptr, i32, [64 x i8], i8 }
%struct.zd_usb_interrupt = type { %struct.read_regs_int, %struct.spinlock, ptr, ptr, i32, i32, %struct.atomic_t, i8 }
%struct.read_regs_int = type { %struct.completion, ptr, i32, [64 x i8], i32, i16 }
%struct.zd_usb_rx = type { %struct.spinlock, %struct.mutex, %struct.delayed_work, %struct.tasklet_struct, [9600 x i8], i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.zd_usb_tx = type { %struct.atomic_t, %struct.spinlock, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, i32, i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.housekeeping = type { %struct.delayed_work }
%struct.beacon = type { %struct.delayed_work, ptr, i32, i16, i8 }
%struct.zd_mc_hash = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.zd_ioreq32 = type { i16, i32 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tx_status = type { i8, i8, i8, i8, [6 x i8], i8, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rx_status = type { i8, i8, i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.zd_ctrlset = type <{ i8, i16, i8, i16, i16, i8, i16 }>

@zd_mac_init_hw.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd_mac_init_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_mac.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [300 x i8], [84 x i8] } { [300 x i8] c"!({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); })\00", [84 x i8] zeroinitializer }, align 32
@zd_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@zd_op_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to set radio on\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zd_op_start\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd_op_start._entry_ptr = internal global ptr @zd_op_start._entry, section ".printk_index", align 4
@zd_restore_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 365, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s() \0A\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_restore_settings\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@zd_restore_settings._entry_ptr = internal global ptr @zd_restore_settings._entry, section ".printk_index", align 4
@zd_restore_settings._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 377, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() set_mac_and_bssid failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@zd_restore_settings._entry_ptr.14 = internal global ptr @zd_restore_settings._entry.12, section ".printk_index", align 4
@zd_restore_settings._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 384, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s() zd_chip_set_channel failed, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@zd_restore_settings._entry_ptr.17 = internal global ptr @zd_restore_settings._entry.15, section ".printk_index", align 4
@zd_restore_settings._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 393, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s() zd_chip_set_multicast_hash failed, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@zd_restore_settings._entry_ptr.20 = internal global ptr @zd_restore_settings._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zd_mac_tx_failed.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd_mac_tx_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [208 x i8], [48 x i8] } { [208 x i8] c"0<=first_idx && first_idx<(sizeof(zd_retry_rates) / sizeof((zd_retry_rates)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((zd_retry_rates)), typeof(&(zd_retry_rates)[0])))); }))))\00", [48 x i8] zeroinitializer }, align 32
@zd_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 33 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 34 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 35 }, %struct.ieee80211_rate { i32 0, i16 60, i16 27, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 31, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 26, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 30, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 25, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 29, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 28, i16 0 }], [48 x i8] zeroinitializer }, align 32
@zd_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@zd_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @zd_op_tx, ptr @zd_op_start, ptr @zd_op_stop, ptr null, ptr null, ptr null, ptr @zd_op_add_interface, ptr null, ptr @zd_op_remove_interface, ptr @zd_op_config, ptr @zd_op_bss_info_changed, ptr null, ptr null, ptr @zd_op_prepare_multicast, ptr @zd_op_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zd_op_get_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@zd_mac_alloc_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1364, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() out of memory\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd_mac_alloc_hw\00", [16 x i8] zeroinitializer }, align 32
@zd_mac_alloc_hw._entry_ptr = internal global ptr @zd_mac_alloc_hw._entry, section ".printk_index", align 4
@zd_mac_alloc_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mac->lock\00", [21 x i8] zeroinitializer }, align 32
@zd_mac_alloc_hw.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&mac->process_intr)\00", [58 x i8] zeroinitializer }, align 32
@reg_alpha2_map = internal constant { [8 x %struct.zd_reg_alpha2_map], [32 x i8] } { [8 x %struct.zd_reg_alpha2_map] [%struct.zd_reg_alpha2_map { i32 16, [2 x i8] c"US" }, %struct.zd_reg_alpha2_map { i32 32, [2 x i8] c"CA" }, %struct.zd_reg_alpha2_map { i32 48, [2 x i8] c"DE" }, %struct.zd_reg_alpha2_map { i32 65, [2 x i8] c"JP" }, %struct.zd_reg_alpha2_map { i32 64, [2 x i8] c"JP" }, %struct.zd_reg_alpha2_map { i32 73, [2 x i8] c"JP" }, %struct.zd_reg_alpha2_map { i32 49, [2 x i8] c"ES" }, %struct.zd_reg_alpha2_map { i32 50, [2 x i8] c"FR" }], [32 x i8] zeroinitializer }, align 32
@zd_retry_rates = internal constant { <{ %struct.tx_retry_rate, { i32, <{ i32, [9 x i32] }> }, { i32, <{ i32, i32, [8 x i32] }> }, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate }>, [144 x i8] } { <{ %struct.tx_retry_rate, { i32, <{ i32, [9 x i32] }> }, { i32, <{ i32, i32, [8 x i32] }> }, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate, %struct.tx_retry_rate }> <{ %struct.tx_retry_rate { i32 1, [10 x i32] zeroinitializer }, { i32, <{ i32, [9 x i32] }> } { i32 2, <{ i32, [9 x i32] }> <{ i32 1, [9 x i32] zeroinitializer }> }, { i32, <{ i32, i32, [8 x i32] }> } { i32 3, <{ i32, i32, [8 x i32] }> <{ i32 2, i32 1, [8 x i32] zeroinitializer }> }, %struct.tx_retry_rate { i32 4, [10 x i32] [i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 5, [10 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 6, [10 x i32] [i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 5, [10 x i32] [i32 6, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 6, [10 x i32] [i32 7, i32 6, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 6, [10 x i32] [i32 8, i32 6, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 7, [10 x i32] [i32 9, i32 8, i32 6, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 8, [10 x i32] [i32 10, i32 9, i32 8, i32 6, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0] }, %struct.tx_retry_rate { i32 9, [10 x i32] [i32 11, i32 10, i32 9, i32 8, i32 6, i32 3, i32 2, i32 1, i32 0, i32 0] } }>, [144 x i8] zeroinitializer }, align 32
@zd_mac_tx_status.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.3, i8 0, i8 113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd_mac_tx_status\00", [47 x i8] zeroinitializer }, align 32
@zd_mac_tx_status.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.3, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"1 <= retry && retry <= retries->count\00", [58 x i8] zeroinitializer }, align 32
@zd_mac_config_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 748, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CR_BCN_FIFO_SEMAPHORE not ready\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zd_mac_config_beacon\00", [43 x i8] zeroinitializer }, align 32
@zd_mac_config_beacon._entry_ptr = internal global ptr @zd_mac_config_beacon._entry, section ".printk_index", align 4
@zd_mac_config_beacon._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 751, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Giving up beacon config.\0A\00", [38 x i8] zeroinitializer }, align 32
@zd_mac_config_beacon._entry_ptr.35 = internal global ptr @zd_mac_config_beacon._entry.33, section ".printk_index", align 4
@zd_mac_config_beacon._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 803, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not release CR_BCN_FIFO_SEMAPHORE!\0A\00", [54 x i8] zeroinitializer }, align 32
@zd_mac_config_beacon._entry_ptr.38 = internal global ptr @zd_mac_config_beacon._entry.36, section ".printk_index", align 4
@zd_mac_config_beacon._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 843, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CR_BCN_FIFO_SEMAPHORE stuck, resetting device...\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zd_mac_config_beacon._entry_ptr.42 = internal global ptr @zd_mac_config_beacon._entry.39, section ".printk_index", align 4
@zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.3, i8 0, i8 -85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zd_mac_free_cur_beacon_locked\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mutex_is_locked(&mac->chip.mutex)\00", [62 x i8] zeroinitializer }, align 32
@zd_check_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 156, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s() %s: signal value from device not in range 0..100, but %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd_check_signal\00", [16 x i8] zeroinitializer }, align 32
@zd_check_signal._entry_ptr = internal global ptr @zd_check_signal._entry, section ".printk_index", align 4
@fill_ctrlset.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.3, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fill_ctrlset\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"frag_len <= 0xffff\00", [45 x i8] zeroinitializer }, align 32
@fill_ctrlset.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.3, i8 0, i8 -36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"packet_length <= 0xffff\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@zd_calc_tx_length_us.rate_divisor = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01\02\0B\0B\00\00\00\000\18\0C\066$\12\09", [16 x i8] zeroinitializer }, align 32
@zd_op_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1286, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() changes: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd_op_bss_info_changed\00", [41 x i8] zeroinitializer }, align 32
@zd_op_bss_info_changed._entry_ptr = internal global ptr @zd_op_bss_info_changed._entry, section ".printk_index", align 4
@zd_op_prepare_multicast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1210, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s() mc addr %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zd_op_prepare_multicast\00", [40 x i8] zeroinitializer }, align 32
@zd_op_prepare_multicast._entry_ptr = internal global ptr @zd_op_prepare_multicast._entry, section ".printk_index", align 4
@zd_op_configure_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1258, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_rx_filter error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zd_op_configure_filter\00", [41 x i8] zeroinitializer }, align 32
@zd_op_configure_filter._entry_ptr = internal global ptr @zd_op_configure_filter._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@zd_process_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1193, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s() Unsupported interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd_process_intr\00", [16 x i8] zeroinitializer }, align 32
@zd_process_intr._entry_ptr = internal global ptr @zd_process_intr._entry, section ".printk_index", align 4
@beacon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&mac->beacon.watchdog_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@beacon_init.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&mac->beacon.watchdog_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@beacon_watchdog_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1446, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s() beacon interrupt stalled, restarting. (interval: %d, dtim: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beacon_watchdog_handler\00", [40 x i8] zeroinitializer }, align 32
@beacon_watchdog_handler._entry_ptr = internal global ptr @beacon_watchdog_handler._entry, section ".printk_index", align 4
@beacon_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.65, ptr @.str.2, i32 1478, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"beacon_enable\00", [18 x i8] zeroinitializer }, align 32
@beacon_enable._entry_ptr = internal global ptr @beacon_enable._entry, section ".printk_index", align 4
@beacon_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.66, ptr @.str.2, i32 1487, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_disable\00", [17 x i8] zeroinitializer }, align 32
@beacon_disable._entry_ptr = internal global ptr @beacon_disable._entry, section ".printk_index", align 4
@housekeeping_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"(work_completion)(&(&mac->housekeeping.link_led_work)->work)\00", [35 x i8] zeroinitializer }, align 32
@housekeeping_init.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"&(&mac->housekeeping.link_led_work)->timer\00", [53 x i8] zeroinitializer }, align 32
@link_led_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1513, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s() zd_chip_control_leds error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link_led_handler\00", [47 x i8] zeroinitializer }, align 32
@link_led_handler._entry_ptr = internal global ptr @link_led_handler._entry, section ".printk_index", align 4
@housekeeping_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.72, ptr @.str.2, i32 1527, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"housekeeping_enable\00", [44 x i8] zeroinitializer }, align 32
@housekeeping_enable._entry_ptr = internal global ptr @housekeeping_enable._entry, section ".printk_index", align 4
@housekeeping_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.73, ptr @.str.2, i32 1534, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"housekeeping_disable\00", [43 x i8] zeroinitializer }, align 32
@housekeeping_disable._entry_ptr = internal global ptr @housekeeping_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 73]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 3]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 196, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 304, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 365, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 377, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 383, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 392, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 527, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"zd_rates\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 39, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"zd_channels\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 108, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"zd_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1344, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1364, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1371, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1414, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"reg_alpha2_map\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 27, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"zd_retry_rates\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 93, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 455, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 457, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 747, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 750, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 802, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 842, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 687, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 154, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 860, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 881, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 2737, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"rate_divisor\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 599, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1286, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1210, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1258, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1984, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1193, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1473, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1443, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1478, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1487, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1522, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1513, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1527, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [48 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1534, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @beacon_disable._entry, ptr @beacon_disable._entry_ptr, ptr @beacon_enable._entry, ptr @beacon_enable._entry_ptr, ptr @beacon_watchdog_handler._entry, ptr @beacon_watchdog_handler._entry_ptr, ptr @housekeeping_disable._entry, ptr @housekeeping_disable._entry_ptr, ptr @housekeeping_enable._entry, ptr @housekeeping_enable._entry_ptr, ptr @link_led_handler._entry, ptr @link_led_handler._entry_ptr, ptr @zd_check_signal._entry, ptr @zd_check_signal._entry_ptr, ptr @zd_mac_alloc_hw._entry, ptr @zd_mac_alloc_hw._entry_ptr, ptr @zd_mac_config_beacon._entry, ptr @zd_mac_config_beacon._entry.33, ptr @zd_mac_config_beacon._entry.36, ptr @zd_mac_config_beacon._entry.39, ptr @zd_mac_config_beacon._entry_ptr, ptr @zd_mac_config_beacon._entry_ptr.35, ptr @zd_mac_config_beacon._entry_ptr.38, ptr @zd_mac_config_beacon._entry_ptr.42, ptr @zd_op_bss_info_changed._entry, ptr @zd_op_bss_info_changed._entry_ptr, ptr @zd_op_configure_filter._entry, ptr @zd_op_configure_filter._entry_ptr, ptr @zd_op_prepare_multicast._entry, ptr @zd_op_prepare_multicast._entry_ptr, ptr @zd_op_start._entry, ptr @zd_op_start._entry_ptr, ptr @zd_process_intr._entry, ptr @zd_process_intr._entry_ptr, ptr @zd_restore_settings._entry, ptr @zd_restore_settings._entry.12, ptr @zd_restore_settings._entry.15, ptr @zd_restore_settings._entry.18, ptr @zd_restore_settings._entry_ptr, ptr @zd_restore_settings._entry_ptr.14, ptr @zd_restore_settings._entry_ptr.17, ptr @zd_restore_settings._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @zd_rates, ptr @zd_channels, ptr @zd_ops, ptr @.str.23, ptr @.str.24, ptr @zd_mac_alloc_hw.__key, ptr @.str.25, ptr @zd_mac_alloc_hw.__key.26, ptr @.str.27, ptr @reg_alpha2_map, ptr @zd_retry_rates, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @zd_calc_tx_length_us.rate_divisor, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @skb_queue_head_init.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @beacon_init.__key, ptr @.str.60, ptr @beacon_init.__key.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @housekeeping_init.__key, ptr @.str.67, ptr @housekeeping_init.__key.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_op_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_restore_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_restore_settings._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_restore_settings._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_restore_settings._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_alloc_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_alloc_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_alloc_hw.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_alpha2_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_retry_rates to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_config_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_config_beacon._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_config_beacon._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_mac_config_beacon._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_check_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_calc_tx_length_us.rate_divisor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_op_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_op_prepare_multicast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_op_configure_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_process_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_init.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_watchdog_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_init.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_led_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_mac_preinit_hw(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call1 = call i32 @zd_chip_read_mac_addr_fw(ptr noundef %2, ptr noundef nonnull %addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %perm_addr.i, ptr %addr, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_read_mac_addr_fw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_mac_init_hw(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %alpha2 = alloca [2 x i8], align 1
  %default_regdomain = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alpha2) #8
  %2 = ptrtoint ptr %alpha2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %alpha2, align 1, !annotation !170
  %3 = getelementptr inbounds [2 x i8], ptr %alpha2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %default_regdomain) #8
  %5 = ptrtoint ptr %default_regdomain to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %default_regdomain, align 1, !annotation !170
  %call2 = tail call i32 @zd_chip_enable_int(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @zd_chip_init_hw(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.end.disable_int_crit_edge

if.end.disable_int_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

do.body:                                          ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !171
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not = icmp eq i32 %and.i, 0
  br i1 %tobool17.not, label %do.body.do.end41_crit_edge, label %do.body23, !prof !172

do.body.do.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.body23:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_init_hw.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_init_hw, %do.end38)) #8
          to label %if.then35 [label %do.end38], !srcloc !173

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_init_hw.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 196, ptr noundef nonnull @.str.4) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  tail call void @dump_stack() #11
  br label %do.end41

do.end41:                                         ; preds = %do.end38, %do.body.do.end41_crit_edge
  %call42 = call i32 @zd_read_regdomain(ptr noundef %1, ptr noundef nonnull %default_regdomain) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %do.end41.disable_int_crit_edge

do.end41.disable_int_crit_edge:                   ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end45:                                         ; preds = %do.end41
  %lock = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %7 = ptrtoint ptr %default_regdomain to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %default_regdomain, align 1
  %default_regdomain46 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %default_regdomain46 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %default_regdomain46, align 1
  %regdomain = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %regdomain to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %regdomain, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call.i = call i32 @zd_iowrite32(ptr noundef %1, i16 noundef zeroext -27016, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.disable_int_crit_edge

if.end45.disable_int_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end51:                                         ; preds = %if.end45
  %11 = ptrtoint ptr %regdomain to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regdomain, align 4
  %call53 = call fastcc i32 @zd_reg2alpha2(i8 noundef zeroext %12, ptr noundef nonnull %alpha2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.disable_int_crit_edge

if.end51.disable_int_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %call58 = call i32 @regulatory_hint(ptr noundef %14, ptr noundef nonnull %alpha2) #8
  br label %disable_int

disable_int:                                      ; preds = %if.end56, %if.end51.disable_int_crit_edge, %if.end45.disable_int_crit_edge, %do.end41.disable_int_crit_edge, %if.end.disable_int_crit_edge
  %r.0 = phi i32 [ %call3, %if.end.disable_int_crit_edge ], [ %call42, %do.end41.disable_int_crit_edge ], [ %call.i, %if.end45.disable_int_crit_edge ], [ 1, %if.end51.disable_int_crit_edge ], [ %call58, %if.end56 ]
  call void @zd_chip_disable_int(ptr noundef %1) #8
  br label %out

out:                                              ; preds = %disable_int, %entry.out_crit_edge
  %r.1 = phi i32 [ %call2, %entry.out_crit_edge ], [ %r.0, %disable_int ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %default_regdomain) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alpha2) #8
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_enable_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_read_regdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc i32 @zd_reg2alpha2(i8 noundef zeroext %regdomain, ptr nocapture noundef writeonly %alpha2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %regdomain to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %regdomain, label %entry.cleanup_crit_edge [
    i8 16, label %entry.if.then_crit_edge
    i8 32, label %if.then.fold.split
    i8 48, label %if.then.fold.split18
    i8 65, label %if.then.fold.split19
    i8 64, label %if.then.fold.split20
    i8 73, label %if.then.fold.split21
    i8 49, label %if.then.fold.split22
    i8 50, label %if.then.fold.split23
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split, %entry.if.then_crit_edge
  %i.016.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split18 ], [ 3, %if.then.fold.split19 ], [ 4, %if.then.fold.split20 ], [ 5, %if.then.fold.split21 ], [ 6, %if.then.fold.split22 ], [ 7, %if.then.fold.split23 ]
  %alpha23 = getelementptr [8 x %struct.zd_reg_alpha2_map], ptr @reg_alpha2_map, i32 0, i32 %i.016.lcssa, i32 1
  %1 = ptrtoint ptr %alpha23 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %alpha23, align 4
  %3 = ptrtoint ptr %alpha2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %alpha2, align 1
  %arrayidx7 = getelementptr [8 x %struct.zd_reg_alpha2_map], ptr @reg_alpha2_map, i32 0, i32 %i.016.lcssa, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %alpha2, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_chip_disable_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_mac_clear(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %0 = load ptr, ptr @zd_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %0) #8
  tail call void @zd_chip_clear(ptr noundef %mac) #8
  %1 = call ptr @memset(ptr %mac, i32 255, i32 12364)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_chip_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_op_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %hash.i = alloca %struct.zd_mc_hash, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %initialized = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %initialized, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @zd_usb_init_hw(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @zd_chip_enable_int(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @zd_chip_set_basic_rates(ptr noundef %1, i16 noundef zeroext -241) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.disable_int_crit_edge, label %if.end13

if.end9.disable_int_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end13:                                         ; preds = %if.end9
  %lock.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %pass_ctrl.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %pass_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %pass_ctrl.i, align 4
  %5 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 604045311, i32 -67043329
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call6.i = tail call i32 @zd_iowrite32(ptr noundef %1, i16 noundef zeroext -26996, i32 noundef %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool15.not = icmp eq i32 %call6.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.disable_int_crit_edge

if.end13.disable_int_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end17:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash.i) #8
  %6 = getelementptr inbounds %struct.zd_mc_hash, ptr %hash.i, i32 0, i32 1
  %7 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %hash.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147483648, ptr %6, align 4
  %call.i = call i32 @zd_chip_set_multicast_hash(ptr noundef %1, ptr noundef nonnull %hash.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.disable_int_crit_edge

if.end17.disable_int_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_int

if.end21:                                         ; preds = %if.end17
  call void @msleep(i32 noundef 10) #8
  %call22 = call i32 @zd_chip_switch_radio_on(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %disable_int

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @zd_chip_enable_rxtx(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.disable_radio_crit_edge, label %if.end30

if.end26.disable_radio_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_radio

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @zd_chip_enable_hwint(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %disable_rxtx, label %if.end34

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @housekeeping_enable(ptr noundef %1)
  call fastcc void @beacon_enable(ptr noundef %1)
  %flags = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 16
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %cleanup

disable_rxtx:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @zd_chip_disable_rxtx(ptr noundef %1) #8
  br label %disable_radio

disable_radio:                                    ; preds = %disable_rxtx, %if.end26.disable_radio_crit_edge
  %r.0 = phi i32 [ %call27, %if.end26.disable_radio_crit_edge ], [ %call31, %disable_rxtx ]
  %call35 = call i32 @zd_chip_switch_radio_off(ptr noundef %1) #8
  br label %disable_int

disable_int:                                      ; preds = %disable_radio, %do.end, %if.end17.disable_int_crit_edge, %if.end13.disable_int_crit_edge, %if.end9.disable_int_crit_edge
  %r.1 = phi i32 [ %call10, %if.end9.disable_int_crit_edge ], [ %call6.i, %if.end13.disable_int_crit_edge ], [ %call.i, %if.end17.disable_int_crit_edge ], [ %call22, %do.end ], [ %r.0, %disable_radio ]
  call void @zd_chip_disable_int(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_int, %if.end34, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call7, %if.end6.cleanup_crit_edge ], [ %r.1, %disable_int ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_set_basic_rates(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_switch_radio_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_enable_rxtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_enable_hwint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @housekeeping_enable(ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.72) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %2 = load ptr, ptr @zd_workqueue, align 4
  %housekeeping = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %housekeeping, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @beacon_enable(ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.zd_usb, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.65) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %beacon = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6
  %last_update = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %last_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %4 = load ptr, ptr @zd_workqueue, align 4
  %call = tail call i32 @round_jiffies_relative(i32 noundef 100) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %beacon, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_chip_disable_rxtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_switch_radio_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_op_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ack_wait_queue2 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 17
  %flags = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  tail call void @zd_chip_disable_rxtx(ptr noundef %1) #8
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.66) #11
  %beacon.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %beacon.i) #8
  tail call fastcc void @zd_mac_free_cur_beacon(ptr noundef %1) #8
  %4 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf.i, align 4
  %dev.i14 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev.i14, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.73) #11
  %housekeeping.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5
  %call.i15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %housekeeping.i) #8
  %call2.i = tail call i32 @zd_chip_control_leds(ptr noundef %1, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %6 = load ptr, ptr @zd_workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %6) #8
  %call3 = tail call i32 @zd_chip_disable_hwint(ptr noundef %1) #8
  %call4 = tail call i32 @zd_chip_switch_radio_off(ptr noundef %1) #8
  tail call void @zd_chip_disable_int(ptr noundef %1) #8
  %call516 = tail call ptr @skb_dequeue(ptr noundef %ack_wait_queue2) #8
  %tobool.not17 = icmp eq ptr %call516, null
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call518 = phi ptr [ %call5, %while.body.while.body_crit_edge ], [ %call516, %entry.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call518, i32 noundef 1) #8
  %call5 = tail call ptr @skb_dequeue(ptr noundef %ack_wait_queue2) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_disable_hwint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_restore_settings(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %multicast_hash = alloca %struct.zd_mc_hash, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %multicast_hash) #8
  %intf = getelementptr inbounds %struct.zd_usb, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #11
  %lock = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %multicast_hash1 = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 9
  %2 = ptrtoint ptr %multicast_hash1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %multicast_hash1, align 4
  %4 = ptrtoint ptr %multicast_hash to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %multicast_hash, align 8
  %short_preamble2 = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 21
  %5 = ptrtoint ptr %short_preamble2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %short_preamble2, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %interval = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval, align 4
  %period = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %period to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %period, align 2
  %channel6 = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 13
  %10 = ptrtoint ptr %channel6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel6, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call = tail call fastcc i32 @set_mac_and_bssid(ptr noundef %mac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call17 = tail call i32 @zd_chip_set_channel(ptr noundef %mac, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end28

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev27, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef %call17) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %mac, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %call.i = tail call i32 @zd_chip_set_rts_cts_rate_locked(ptr noundef %mac, i32 noundef %bf.cast) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  %call30 = call i32 @zd_chip_set_multicast_hash(ptr noundef %mac, ptr noundef nonnull %multicast_hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end41

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev40, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef %call30) #11
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %type = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 14
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %19, label %if.end41.cleanup_crit_edge [
    i32 7, label %if.end41.if.then51_crit_edge
    i32 1, label %if.end41.if.then51_crit_edge114
    i32 3, label %if.end41.if.then51_crit_edge115
  ]

if.end41.if.then51_crit_edge115:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end41.if.then51_crit_edge114:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end41.if.then51_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %if.end41.if.then51_crit_edge, %if.end41.if.then51_crit_edge114, %if.end41.if.then51_crit_edge115
  %vif = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 4
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vif, align 4
  %cmp52.not = icmp eq ptr %22, null
  br i1 %cmp52.not, label %if.then51.if.end61_crit_edge, label %if.then54

if.then51.if.end61_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then54:                                        ; preds = %if.then51
  %hw = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 3
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %call.i113 = call ptr @ieee80211_beacon_get_tim(ptr noundef %24, ptr noundef nonnull %22, ptr noundef null, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i113, null
  br i1 %tobool.not, label %if.then54.if.end61_crit_edge, label %if.then57

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  call fastcc void @zd_mac_config_beacon(ptr noundef %26, ptr noundef nonnull %call.i113, i1 noundef zeroext false)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.then54.if.end61_crit_edge, %if.then51.if.end61_crit_edge
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %call66 = call i32 @zd_set_beacon_interval(ptr noundef %mac, i16 noundef zeroext %7, i8 noundef zeroext %9, i32 noundef %28) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %last_update = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last_update, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end41.cleanup_crit_edge, %do.end36, %do.end23, %do.end11
  %retval.0 = phi i32 [ %call, %do.end11 ], [ %call17, %do.end23 ], [ %call30, %do.end36 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %multicast_hash) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_mac_and_bssid(ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 2
  %call = tail call i32 @zd_write_mac_addr(ptr noundef %mac, ptr noundef %addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 14
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %pass_ctrl.i = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 21
  %4 = ptrtoint ptr %pass_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %pass_ctrl.i, align 4
  %5 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 604045311, i32 -67043329
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call6.i = tail call i32 @zd_iowrite32(ptr noundef %mac, i16 noundef zeroext -26996, i32 noundef %spec.select.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif, align 4
  %addr9 = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 2
  %call11 = tail call i32 @zd_write_bssid(ptr noundef %mac, ptr noundef %addr9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %if.then5 ], [ %call11, %if.else ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_set_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_set_multicast_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zd_mac_config_beacon(ptr nocapture noundef readonly %hw, ptr noundef %beacon, i1 noundef zeroext %in_intr) unnamed_addr #0 align 64 {
entry:
  %ioreq.i26 = alloca %struct.zd_ioreq32, align 8
  %ioreq.i14 = alloca %struct.zd_ioreq32, align 8
  %ioreq.i11 = alloca %struct.zd_ioreq32, align 8
  %addr.addr.i5 = alloca i16, align 2
  %addr.addr.i = alloca i16, align 2
  %ioreq.i = alloca %struct.zd_ioreq32, align 8
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !170
  %len = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %add = add i32 %4, 4
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cur_beacon.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_beacon.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i = icmp eq i32 %8, %10
  br i1 %cmp.not.i, label %zd_mac_match_cur_beacon.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

zd_mac_match_cur_beacon.exit:                     ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %data9.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 19
  %13 = ptrtoint ptr %data9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data9.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %12, ptr %14, i32 %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool11.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool11.not.i, label %zd_mac_match_cur_beacon.exit.out_nofree_crit_edge, label %zd_mac_match_cur_beacon.exit.if.end_crit_edge

zd_mac_match_cur_beacon.exit.if.end_crit_edge:    ; preds = %zd_mac_match_cur_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

zd_mac_match_cur_beacon.exit.out_nofree_crit_edge: ; preds = %zd_mac_match_cur_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nofree

if.end:                                           ; preds = %zd_mac_match_cur_beacon.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %is_zd1211b.i = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %narrow = add nuw nsw i8 %bf.lshr.i, 1
  %add4 = zext i8 %narrow to i32
  %add5 = add i32 %add, %add4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add5, i32 8) #8
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end.out_nofree_crit_edge, label %if.end7.i, !prof !174

if.end.out_nofree_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nofree

if.end7.i:                                        ; preds = %if.end
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.out_nofree_crit_edge, label %if.end8

if.end7.i.out_nofree_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nofree

if.end8:                                          ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i) #8
  %19 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -7596165200785440768, ptr %ioreq.i, align 8, !annotation !170
  %call.i = call i32 @_zd_iowrite32v_locked(ptr noundef %1, ptr noundef nonnull %ioreq.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i)
  %20 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -26988, ptr %addr.addr.i, align 2
  %call.i4 = call i32 @zd_ioread32v_locked(ptr noundef %1, ptr noundef nonnull %tmp, ptr noundef nonnull %addr.addr.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp15 = icmp slt i32 %call.i4, 0
  br i1 %cmp15, label %if.end12.release_sema_crit_edge, label %if.end17

if.end12.release_sema_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_sema

if.end17:                                         ; preds = %if.end12
  br i1 %in_intr, label %land.lhs.true, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end17
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.release_sema_crit_edge

land.lhs.true.release_sema_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_sema

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp, align 4
  %and2449 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2449)
  %tobool25.not50 = icmp eq i32 %and2449, 0
  br i1 %tobool25.not50, label %if.end21.while.end_crit_edge, label %while.body.lr.ph

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end21
  %add23 = add i32 %24, 10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %add22.neg = sub i32 -50, %23
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %message_jiffies.051 = phi i32 [ %add23, %while.body.lr.ph ], [ %message_jiffies.1, %if.end46.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i5)
  %27 = ptrtoint ptr %addr.addr.i5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -26988, ptr %addr.addr.i5, align 2
  %call.i6 = call i32 @zd_ioread32v_locked(ptr noundef %1, ptr noundef nonnull %tmp, ptr noundef nonnull %addr.addr.i5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp28 = icmp slt i32 %call.i6, 0
  br i1 %cmp28, label %while.body.release_sema_crit_edge, label %if.end30

while.body.release_sema_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_sema

if.end30:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %28, %message_jiffies.051
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp31 = icmp sgt i32 %sub, -1
  br i1 %cmp31, label %if.then32, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then32:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add33 = add i32 %29, 10
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub35 = add i32 %add22.neg, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub35)
  %cmp36 = icmp sgt i32 %sub35, -1
  br i1 %cmp36, label %do.end40, label %if.then32.if.end46_crit_edge

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf, align 4
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.34) #11
  call fastcc void @zd_mac_free_cur_beacon_locked(ptr noundef %1)
  call void @kfree_skb_reason(ptr noundef %beacon, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @kfree(ptr noundef nonnull %call8.i) #8
  %35 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf, align 4
  %dev149 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev149, ptr noundef nonnull @.str.40) #11
  %37 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf, align 4
  call void @usb_queue_reset_device(ptr noundef %38) #8
  br label %cleanup

if.end46:                                         ; preds = %if.then32.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %message_jiffies.1 = phi i32 [ %add33, %if.then32.if.end46_crit_edge ], [ %message_jiffies.051, %if.end30.if.end46_crit_edge ]
  call void @msleep(i32 noundef 20) #8
  %39 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp, align 4
  %and24 = and i32 %40, 2
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end46.while.end_crit_edge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %if.end21.while.end_crit_edge
  %41 = ptrtoint ptr %call8.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -27024, ptr %call8.i, align 128
  %sub47 = add i32 %4, 3
  %value = getelementptr inbounds %struct.zd_ioreq32, ptr %call8.i, i32 0, i32 1
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub47, ptr %value, align 4
  %43 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i8 = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i8)
  %tobool51.not = icmp sgt i8 %bf.load.i8, -1
  br i1 %tobool51.not, label %while.end.if.end59_crit_edge, label %if.then52

while.end.if.end59_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx53 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 1
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -27036, ptr %arrayidx53, align 8
  %value57 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 1, i32 1
  %45 = ptrtoint ptr %value57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub47, ptr %value57, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %while.end.if.end59_crit_edge
  %req_pos.0 = phi i32 [ 2, %if.then52 ], [ 1, %while.end.if.end59_crit_edge ]
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp6152.not = icmp eq i32 %47, 0
  br i1 %cmp6152.not, label %if.end59.for.cond68.preheader_crit_edge, label %for.body.lr.ph

if.end59.for.cond68.preheader_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.body.lr.ph:                                   ; preds = %if.end59
  %data = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  br label %for.body

for.cond68.preheader:                             ; preds = %for.body.for.cond68.preheader_crit_edge, %if.end59.for.cond68.preheader_crit_edge
  %req_pos.1.lcssa = phi i32 [ %req_pos.0, %if.end59.for.cond68.preheader_crit_edge ], [ %inc66, %for.body.for.cond68.preheader_crit_edge ]
  %arrayidx72 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %req_pos.1.lcssa
  %52 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -27024, ptr %arrayidx72, align 8
  %value75 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %req_pos.1.lcssa, i32 1
  %53 = ptrtoint ptr %value75 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %value75, align 4
  %inc76 = add i32 %req_pos.1.lcssa, 1
  %arrayidx72.1 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76
  %54 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -27024, ptr %arrayidx72.1, align 8
  %value75.1 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76, i32 1
  %55 = ptrtoint ptr %value75.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %value75.1, align 4
  %inc76.1 = add i32 %req_pos.1.lcssa, 2
  %arrayidx72.2 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76.1
  %56 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -27024, ptr %arrayidx72.2, align 8
  %value75.2 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76.1, i32 1
  %57 = ptrtoint ptr %value75.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %value75.2, align 4
  %inc76.2 = add i32 %req_pos.1.lcssa, 3
  %arrayidx72.3 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76.2
  %58 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -27024, ptr %arrayidx72.3, align 8
  %value75.3 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %inc76.2, i32 1
  %59 = ptrtoint ptr %value75.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %value75.3, align 4
  %inc76.3 = add i32 %req_pos.1.lcssa, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc76.3, i32 %add5)
  %cmp81.not = icmp eq i32 %inc76.3, %add5
  br i1 %cmp81.not, label %do.end94, label %do.body86, !prof !172

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %for.body.for.body_crit_edge ]
  %req_pos.153 = phi i32 [ %req_pos.0, %for.body.lr.ph ], [ %inc66, %for.body.for.body_crit_edge ]
  %arrayidx62 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %req_pos.153
  %60 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -27024, ptr %arrayidx62, align 8
  %add.ptr = getelementptr i8, ptr %49, i32 %j.054
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %62 to i32
  %value65 = getelementptr %struct.zd_ioreq32, ptr %call8.i, i32 %req_pos.153, i32 1
  %63 = ptrtoint ptr %value65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv, ptr %value65, align 4
  %inc66 = add i32 %req_pos.153, 1
  %inc67 = add nuw i32 %j.054, 1
  %cmp61 = icmp ult i32 %inc67, %51
  br i1 %cmp61, label %for.body.for.body_crit_edge, label %for.body.for.cond68.preheader_crit_edge

for.body.for.cond68.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body86:                                        ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/zydas/zd1211rw/zd_mac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 780, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

do.end94:                                         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 @zd_iowrite32a_locked(ptr noundef %1, ptr noundef nonnull %call8.i, i32 noundef %add5) #8
  br label %release_sema

release_sema:                                     ; preds = %do.end94, %while.body.release_sema_crit_edge, %land.lhs.true.release_sema_crit_edge, %if.end12.release_sema_crit_edge
  %r.0 = phi i32 [ %call.i4, %if.end12.release_sema_crit_edge ], [ %call96, %do.end94 ], [ -16, %land.lhs.true.release_sema_crit_edge ], [ %call.i6, %while.body.release_sema_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i11) #8
  %65 = ptrtoint ptr %ioreq.i11 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 -7596165200785440767, ptr %ioreq.i11, align 8, !annotation !170
  %call.i13 = call i32 @_zd_iowrite32v_locked(ptr noundef %1, ptr noundef nonnull %ioreq.i11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13)
  %cmp10157 = icmp sgt i32 %call.i13, -1
  %brmerge158 = or i1 %cmp10157, %in_intr
  br i1 %brmerge158, label %release_sema.while.end113_crit_edge, label %lor.lhs.false.lr.ph

release_sema.while.end113_crit_edge:              ; preds = %release_sema
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

lor.lhs.false.lr.ph:                              ; preds = %release_sema
  %add97.neg = sub i32 -50, %64
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end110.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub106 = add i32 %add97.neg, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub106)
  %cmp107 = icmp sgt i32 %sub106, -1
  br i1 %cmp107, label %lor.lhs.false.if.end124.thread_crit_edge, label %if.end110

lor.lhs.false.if.end124.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.thread

if.end110:                                        ; preds = %lor.lhs.false
  call void @msleep(i32 noundef 20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i14) #8
  %67 = ptrtoint ptr %ioreq.i14 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 -7596165200785440767, ptr %ioreq.i14, align 8, !annotation !170
  %call.i16 = call i32 @_zd_iowrite32v_locked(ptr noundef %1, ptr noundef nonnull %ioreq.i14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i14) #8
  %cmp101 = icmp sgt i32 %call.i16, -1
  br i1 %cmp101, label %if.end110.while.end113_crit_edge, label %if.end110.lor.lhs.false_crit_edge

if.end110.lor.lhs.false_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end110.while.end113_crit_edge:                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end113

while.end113:                                     ; preds = %if.end110.while.end113_crit_edge, %release_sema.while.end113_crit_edge
  %ret.0.lcssa = phi i32 [ %call.i13, %release_sema.while.end113_crit_edge ], [ %call.i16, %if.end110.while.end113_crit_edge ]
  %68 = call i32 @llvm.smax.i32(i32 %ret.0.lcssa, i32 -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp114 = icmp slt i32 %68, 0
  br i1 %cmp114, label %while.end113.if.end124.thread_crit_edge, label %if.end124

while.end113.if.end124.thread_crit_edge:          ; preds = %while.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.thread

if.end124.thread:                                 ; preds = %while.end113.if.end124.thread_crit_edge, %lor.lhs.false.if.end124.thread_crit_edge
  %intf122 = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %intf122 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intf122, align 4
  %dev123 = getelementptr inbounds %struct.usb_interface, ptr %70, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.37) #11
  br label %if.then130

if.end124:                                        ; preds = %while.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp125 = icmp slt i32 %r.0, 0
  br i1 %cmp125, label %if.end124.if.then130_crit_edge, label %if.end135

if.end124.if.then130_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then130

if.then130:                                       ; preds = %if.end124.if.then130_crit_edge, %if.end124.thread
  %call.i17 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i17, label %if.then130.zd_mac_free_cur_beacon_locked.exit_crit_edge, label %do.body3.i, !prof !172

if.then130.zd_mac_free_cur_beacon_locked.exit_crit_edge: ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_mac_free_cur_beacon_locked.exit

do.body3.i:                                       ; preds = %if.then130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_config_beacon, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !173

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.44) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  call void @dump_stack() #11
  br label %zd_mac_free_cur_beacon_locked.exit

zd_mac_free_cur_beacon_locked.exit:               ; preds = %do.end.i, %if.then130.zd_mac_free_cur_beacon_locked.exit_crit_edge
  %71 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur_beacon.i, align 4
  call void @kfree_skb_reason(ptr noundef %72, i32 noundef 0) #8
  %73 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %cur_beacon.i, align 4
  br label %out

if.end135:                                        ; preds = %if.end124
  %call.i20 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i20, label %if.end135.zd_mac_free_cur_beacon_locked.exit25_crit_edge, label %do.body3.i21, !prof !172

if.end135.zd_mac_free_cur_beacon_locked.exit25_crit_edge: ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_mac_free_cur_beacon_locked.exit25

do.body3.i21:                                     ; preds = %if.end135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_config_beacon, %do.end.i23)) #8
          to label %if.then14.i22 [label %do.end.i23], !srcloc !173

if.then14.i22:                                    ; preds = %do.body3.i21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.44) #8
  br label %do.end.i23

do.end.i23:                                       ; preds = %if.then14.i22, %do.body3.i21
  call void @dump_stack() #11
  br label %zd_mac_free_cur_beacon_locked.exit25

zd_mac_free_cur_beacon_locked.exit25:             ; preds = %do.end.i23, %if.end135.zd_mac_free_cur_beacon_locked.exit25_crit_edge
  %74 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur_beacon.i, align 4
  call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #8
  %76 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %beacon, ptr %cur_beacon.i, align 4
  %shl = shl i32 %add, 19
  %or = or i32 %shl, 1024
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreq.i26) #8
  %77 = ptrtoint ptr %ioreq.i26 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -7628816293788909569, ptr %ioreq.i26, align 8, !annotation !170
  %value2.i27 = getelementptr inbounds %struct.zd_ioreq32, ptr %ioreq.i26, i32 0, i32 1
  %78 = ptrtoint ptr %value2.i27 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %value2.i27, align 4
  %call.i28 = call i32 @_zd_iowrite32v_locked(ptr noundef %1, ptr noundef nonnull %ioreq.i26, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreq.i26) #8
  br label %out

out:                                              ; preds = %zd_mac_free_cur_beacon_locked.exit25, %zd_mac_free_cur_beacon_locked.exit, %if.end8.out_crit_edge
  %beacon.addr.0 = phi ptr [ %beacon, %if.end8.out_crit_edge ], [ %beacon, %zd_mac_free_cur_beacon_locked.exit ], [ null, %zd_mac_free_cur_beacon_locked.exit25 ]
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %out_nofree

out_nofree:                                       ; preds = %out, %if.end7.i.out_nofree_crit_edge, %if.end.out_nofree_crit_edge, %zd_mac_match_cur_beacon.exit.out_nofree_crit_edge
  %beacon.addr.1 = phi ptr [ %beacon.addr.0, %out ], [ %beacon, %zd_mac_match_cur_beacon.exit.out_nofree_crit_edge ], [ %beacon, %if.end7.i.out_nofree_crit_edge ], [ %beacon, %if.end.out_nofree_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %beacon.addr.1, i32 noundef 0) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out_nofree, %do.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_set_beacon_interval(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_mac_tx_failed(ptr nocapture noundef readonly %urb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %ack_wait_queue = getelementptr inbounds %struct.zd_mac, ptr %7, i32 0, i32 17
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %failure = getelementptr inbounds %struct.tx_status, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %failure to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %failure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %retry2 = getelementptr inbounds %struct.tx_status, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %retry2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %retry2, align 1
  %conv = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv, %lnot.ext
  %lock = getelementptr inbounds %struct.zd_mac, ptr %7, i32 0, i32 17, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ack_pending = getelementptr inbounds %struct.zd_mac, ptr %7, i32 0, i32 21
  %mac18 = getelementptr inbounds %struct.tx_status, ptr %9, i32 0, i32 4
  %add.ptr1.i = getelementptr %struct.tx_status, ptr %9, i32 0, i32 4, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp66 = icmp eq i32 %add, 0
  %sub = add nsw i32 %add, -1
  %rate76 = getelementptr inbounds %struct.tx_status, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %ack_wait_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %skb.0153 = load ptr, ptr %ack_wait_queue, align 4
  %cmp9.not154 = icmp eq ptr %skb.0153, %ack_wait_queue
  br i1 %cmp9.not154, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp9.not157 = phi i1 [ %cmp9.not, %cleanup.for.body_crit_edge ], [ %cmp9.not154, %entry.for.body_crit_edge ]
  %skb.0156 = phi ptr [ %skb.0, %cleanup.for.body_crit_edge ], [ %skb.0153, %entry.for.body_crit_edge ]
  %position.0155 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %position.0155, 1
  %15 = ptrtoint ptr %failure to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %failure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %ack_pending, align 4
  %18 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true15

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %prev.i = getelementptr inbounds %struct.anon.41, ptr %skb.0156, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %20, %ack_wait_queue
  br i1 %cmp.i, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0156, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr1, align 4
  %25 = ptrtoint ptr %mac18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac18, align 4
  %xor.i = xor i32 %26, %24
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %22, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i, align 2
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %30, %28
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i146 = icmp eq i32 %or.i, 0
  br i1 %cmp.i146, label %if.end29, label %if.end.cleanup_crit_edge, !prof !172

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb.0156, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 8
  %conv31 = sext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %33)
  %cmp35 = icmp ult i8 %33, 12
  br i1 %cmp35, label %if.end29.do.end64_crit_edge, label %do.body46, !prof !172

if.end29.do.end64_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.body46:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_tx_failed.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_tx_failed, %do.end61)) #8
          to label %if.then58 [label %do.end61], !srcloc !173

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_tx_failed.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 527, ptr noundef nonnull @.str.22) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body46
  tail call void @dump_stack() #11
  br label %do.end64

do.end64:                                         ; preds = %do.end61, %if.end29.do.end64_crit_edge
  br i1 %cmp66, label %do.end64.cleanup_crit_edge, label %lor.lhs.false

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end64
  %arrayidx65 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv31
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp68 = icmp sgt i32 %add, %35
  br i1 %cmp68, label %lor.lhs.false.cleanup_crit_edge, label %if.end71

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false
  %arrayidx72 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv31, i32 1, i32 %sub
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx72, align 4
  %hw_value = getelementptr [12 x %struct.ieee80211_rate], ptr @zd_rates, i32 0, i32 %37, i32 2
  %38 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_value, align 2
  %40 = ptrtoint ptr %rate76 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rate76, align 1
  %42 = trunc i16 %39 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp78.not = icmp eq i8 %41, %42
  br i1 %cmp78.not, label %if.end71.for.end_crit_edge, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %if.end71.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end64.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge
  %43 = ptrtoint ptr %skb.0156 to i32
  call void @__asan_load4_noabort(i32 %43)
  %skb.0 = load ptr, ptr %skb.0156, align 4
  %cmp9.not = icmp eq ptr %skb.0, %ack_wait_queue
  br i1 %cmp9.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end71.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp9.not.lcssa = phi i1 [ %cmp9.not154, %entry.for.end_crit_edge ], [ %cmp9.not, %cleanup.for.end_crit_edge ], [ %cmp9.not157, %if.end71.for.end_crit_edge ]
  %position.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end71.for.end_crit_edge ], [ %inc, %cleanup.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %position.1)
  %cmp91.not148 = icmp slt i32 %position.1, 1
  %or.cond = select i1 %cmp9.not.lcssa, i1 true, i1 %cmp91.not148
  br i1 %or.cond, label %for.end.if.end113_crit_edge, label %for.body93.lr.ph

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

for.body93.lr.ph:                                 ; preds = %for.end
  %qlen.i.i = getelementptr inbounds %struct.zd_mac, ptr %7, i32 0, i32 17, i32 1
  %ack_signal = getelementptr inbounds %struct.zd_mac, ptr %7, i32 0, i32 22
  br label %for.body93

for.body93:                                       ; preds = %cond.end.for.body93_crit_edge, %for.body93.lr.ph
  %i.0149 = phi i32 [ 1, %for.body93.lr.ph ], [ %inc111, %cond.end.for.body93_crit_edge ]
  %44 = ptrtoint ptr %ack_wait_queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ack_wait_queue, align 4
  %cmp.i.i = icmp eq ptr %45, %ack_wait_queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %45
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %for.body93.__skb_dequeue.exit_crit_edge, label %if.then.i

for.body93.__skb_dequeue.exit_crit_edge:          ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %48 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %prev17.i.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %49, ptr %51, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %for.body93.__skb_dequeue.exit_crit_edge
  %54 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load96 = load i8, ptr %ack_pending, align 4
  %55 = and i8 %bf.load96, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool100.not = icmp eq i8 %55, 0
  br i1 %tobool100.not, label %__skb_dequeue.exit.cond.end_crit_edge, label %cond.true

__skb_dequeue.exit.cond.end_crit_edge:            ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %ack_signal to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ack_signal, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__skb_dequeue.exit.cond.end_crit_edge
  %cond = phi i32 [ %57, %cond.true ], [ 0, %__skb_dequeue.exit.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0149, i32 %position.1)
  %cmp101 = icmp eq i32 %i.0149, %position.1
  %spec.select145 = select i1 %cmp101, ptr %9, ptr null
  tail call fastcc void @zd_mac_tx_status(ptr noundef %5, ptr noundef %spec.store.select.i.i, i32 noundef %cond, ptr noundef %spec.select145)
  %58 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load108 = load i8, ptr %ack_pending, align 4
  %bf.clear109 = and i8 %bf.load108, -17
  store i8 %bf.clear109, ptr %ack_pending, align 4
  %inc111 = add i32 %i.0149, 1
  %cmp91.not = icmp sgt i32 %inc111, %position.1
  br i1 %cmp91.not, label %cond.end.if.end113_crit_edge, label %cond.end.for.body93_crit_edge

cond.end.for.body93_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body93

cond.end.if.end113_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end113:                                        ; preds = %cond.end.if.end113_crit_edge, %for.end.if.end113_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zd_mac_tx_status(ptr noundef %hw, ptr noundef %skb, i32 noundef %ackssi, ptr noundef readonly %tx_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %count.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %3 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %5 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %tobool.not = icmp eq ptr %tx_status, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end:                                           ; preds = %entry
  %failure = getelementptr inbounds %struct.tx_status, ptr %tx_status, i32 0, i32 6
  %6 = ptrtoint ptr %failure to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %failure, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %retry2 = getelementptr inbounds %struct.tx_status, ptr %tx_status, i32 0, i32 5
  %8 = ptrtoint ptr %retry2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retry2, align 1
  %conv = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv, %lnot.ext
  br i1 %tobool1.not, label %if.end.if.then4_crit_edge, label %if.else

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %retry.0174 = phi i32 [ %add, %if.end.if.then4_crit_edge ], [ 1, %entry.if.then4_crit_edge ]
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %or = or i32 %11, 512
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i, align 8
  %and = and i32 %13, -513
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %retry.0173 = phi i32 [ %add, %if.else ], [ %retry.0174, %if.then4 ]
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then4 ]
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %cb.i, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 8
  %conv7 = sext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %16)
  %cmp9 = icmp ugt i8 %16, 11
  br i1 %cmp9, label %do.body19, label %if.end6.do.end34_crit_edge, !prof !174

if.end6.do.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.body19:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_tx_status.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_tx_status, %do.end)) #8
          to label %if.then30 [label %do.end], !srcloc !173

if.then30:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_tx_status.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 455, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body19
  tail call void @dump_stack() #11
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.end6.do.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0173)
  %cmp37.not = icmp eq i32 %retry.0173, 0
  br i1 %cmp37.not, label %do.end34.do.body52_crit_edge, label %land.rhs39, !prof !174

do.end34.do.body52_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

land.rhs39:                                       ; preds = %do.end34
  %arrayidx35 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv7
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retry.0173, i32 %18)
  %cmp40 = icmp sgt i32 %retry.0173, %18
  br i1 %cmp40, label %land.rhs39.do.body52_crit_edge, label %land.rhs39.do.end72_crit_edge, !prof !174

land.rhs39.do.end72_crit_edge:                    ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

land.rhs39.do.body52_crit_edge:                   ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

do.body52:                                        ; preds = %land.rhs39.do.body52_crit_edge, %do.end34.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_tx_status.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_tx_status, %do.end69)) #8
          to label %if.then66 [label %do.end69], !srcloc !173

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_tx_status.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 457, ptr noundef nonnull @.str.30) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body52
  tail call void @dump_stack() #11
  br label %do.end72

do.end72:                                         ; preds = %do.end69, %land.rhs39.do.end72_crit_edge
  %rate = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv7, i32 1
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %conv74 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv74, ptr %0, align 8
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load = load i16, ptr %count.i, align 1
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retry.0173)
  %cmp84179 = icmp ugt i32 %retry.0173, 1
  br i1 %cmp84179, label %for.body.preheader, label %do.end72.for.cond99.preheader_crit_edge

do.end72.for.cond99.preheader_crit_edge:          ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond99.preheader

for.body.preheader:                               ; preds = %do.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retry.0173)
  %.not = icmp eq i32 %retry.0173, 2
  %23 = select i1 %.not, i32 2, i32 3
  %arrayidx88 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv7, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx88, align 4
  %conv89 = trunc i32 %25 to i8
  %arrayidx91 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %26 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv89, ptr %arrayidx91, align 1
  %count95 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %count95 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load96 = load i16, ptr %count95, align 1
  %bf.clear97 = and i16 %bf.load96, 2047
  %bf.set98 = or i16 %bf.clear97, 2048
  store i16 %bf.set98, ptr %count95, align 1
  br i1 %.not, label %for.body.preheader.for.cond99.preheader_crit_edge, label %for.body.1

for.body.preheader.for.cond99.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.body.1, %for.body.preheader.for.cond99.preheader_crit_edge, %do.end72.for.cond99.preheader_crit_edge
  %i.0.lcssa = phi i32 [ 1, %do.end72.for.cond99.preheader_crit_edge ], [ %23, %for.body.1 ], [ %23, %for.body.preheader.for.cond99.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %retry.0173)
  %cmp103182 = icmp slt i32 %i.0.lcssa, %retry.0173
  br i1 %cmp103182, label %for.body106.lr.ph, label %for.cond99.preheader.if.then124_crit_edge

for.cond99.preheader.if.then124_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124

for.body106.lr.ph:                                ; preds = %for.cond99.preheader
  %sub = add nsw i32 %retry.0173, -1
  %arrayidx108 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv7, i32 1, i32 %sub
  %28 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx108, align 4
  %conv109 = trunc i32 %29 to i8
  %arrayidx111 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.0.lcssa
  %30 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv109, ptr %arrayidx111, align 1
  %count115 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.0.lcssa, i32 1
  %31 = ptrtoint ptr %count115 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load116 = load i16, ptr %count115, align 1
  %bf.clear117 = and i16 %bf.load116, 2047
  %bf.set118 = or i16 %bf.clear117, 2048
  store i16 %bf.set118, ptr %count115, align 1
  %inc120 = add nuw nsw i32 %i.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.lcssa)
  %cmp100 = icmp ne i32 %i.0.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120, i32 %retry.0173)
  %cmp103 = icmp ult i32 %inc120, %retry.0173
  %or.cond167 = select i1 %cmp100, i1 %cmp103, i1 false
  br i1 %or.cond167, label %for.body106.1, label %for.body106.lr.ph.for.end121_crit_edge

for.body106.lr.ph.for.end121_crit_edge:           ; preds = %for.body106.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end121

for.body.1:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx88.1 = getelementptr [12 x %struct.tx_retry_rate], ptr @zd_retry_rates, i32 0, i32 %conv7, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx88.1, align 4
  %conv89.1 = trunc i32 %33 to i8
  %arrayidx91.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %34 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv89.1, ptr %arrayidx91.1, align 1
  %count95.1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %35 = ptrtoint ptr %count95.1 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load96.1 = load i16, ptr %count95.1, align 1
  %bf.clear97.1 = and i16 %bf.load96.1, 2047
  %bf.set98.1 = or i16 %bf.clear97.1, 2048
  store i16 %bf.set98.1, ptr %count95.1, align 1
  br label %for.cond99.preheader

for.body106.1:                                    ; preds = %for.body106.lr.ph
  %arrayidx111.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc120
  %36 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv109, ptr %arrayidx111.1, align 1
  %count115.1 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc120, i32 1
  %37 = ptrtoint ptr %count115.1 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load116.1 = load i16, ptr %count115.1, align 1
  %bf.clear117.1 = and i16 %bf.load116.1, 2047
  %bf.set118.1 = or i16 %bf.clear117.1, 2048
  store i16 %bf.set118.1, ptr %count115.1, align 1
  %inc120.1 = add nuw nsw i32 %i.0.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.lcssa)
  %cmp100.1 = icmp ult i32 %i.0.lcssa, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120.1, i32 %retry.0173)
  %cmp103.1 = icmp ult i32 %inc120.1, %retry.0173
  %or.cond167.1 = select i1 %cmp100.1, i1 %cmp103.1, i1 false
  br i1 %or.cond167.1, label %for.body106.2, label %for.body106.1.for.end121_crit_edge

for.body106.1.for.end121_crit_edge:               ; preds = %for.body106.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end121

for.body106.2:                                    ; preds = %for.body106.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx111.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc120.1
  %38 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv109, ptr %arrayidx111.2, align 1
  %count115.2 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %inc120.1, i32 1
  %39 = ptrtoint ptr %count115.2 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load116.2 = load i16, ptr %count115.2, align 1
  %bf.clear117.2 = and i16 %bf.load116.2, 2047
  %bf.set118.2 = or i16 %bf.clear117.2, 2048
  store i16 %bf.set118.2, ptr %count115.2, align 1
  %inc120.2 = add nuw nsw i32 %i.0.lcssa, 3
  br label %for.end121

for.end121:                                       ; preds = %for.body106.2, %for.body106.1.for.end121_crit_edge, %for.body106.lr.ph.for.end121_crit_edge
  %inc120.lcssa = phi i32 [ %inc120, %for.body106.lr.ph.for.end121_crit_edge ], [ %inc120.1, %for.body106.1.for.end121_crit_edge ], [ %inc120.2, %for.body106.2 ]
  %cmp100.lcssa = phi i1 [ %cmp100, %for.body106.lr.ph.for.end121_crit_edge ], [ %cmp100.1, %for.body106.1.for.end121_crit_edge ], [ false, %for.body106.2 ]
  br i1 %cmp100.lcssa, label %for.end121.if.then124_crit_edge, label %for.end121.if.end128_crit_edge

for.end121.if.end128_crit_edge:                   ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

for.end121.if.then124_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124

if.then124:                                       ; preds = %for.end121.if.then124_crit_edge, %for.cond99.preheader.if.then124_crit_edge
  %i.1.lcssa190 = phi i32 [ %inc120.lcssa, %for.end121.if.then124_crit_edge ], [ %i.0.lcssa, %for.cond99.preheader.if.then124_crit_edge ]
  %arrayidx126 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %0, i32 0, i32 %i.1.lcssa190
  %40 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayidx126, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %for.end121.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %ackssi)
  %41 = icmp ugt i32 %ackssi, 100
  br i1 %41, label %do.end.i, label %if.end128.zd_check_signal.exit_crit_edge, !prof !174

if.end128.zd_check_signal.exit_crit_edge:         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_check_signal.exit

do.end.i:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %42 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv.i.i, align 8
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.46, i32 noundef %ackssi) #11
  br label %zd_check_signal.exit

zd_check_signal.exit:                             ; preds = %do.end.i, %if.end128.zd_check_signal.exit_crit_edge
  %46 = tail call i32 @llvm.smin.i32(i32 %ackssi, i32 100) #8
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #8
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %add.ptr.i, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %hw, ptr noundef %skb) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zd_mac_tx_to_dev(ptr noundef %skb, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_driver_data, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %count.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %5 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %6 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %7 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %8 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !172

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %lor.rhs.if.then_crit_edge, !prof !172

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %1, ptr noundef %skb) #8
  br label %if.end

if.else:                                          ; preds = %lor.rhs
  %ack_wait_queue = getelementptr inbounds %struct.zd_mac, ptr %3, i32 0, i32 17
  tail call void @skb_queue_tail(ptr noundef %ack_wait_queue, ptr noundef %skb) #8
  %qlen.i = getelementptr inbounds %struct.zd_mac, ptr %3, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %12)
  %cmp24 = icmp ugt i32 %12, 50
  br i1 %cmp24, label %while.body.lr.ph, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph:                                 ; preds = %if.else
  %ack_pending = getelementptr inbounds %struct.zd_mac, ptr %3, i32 0, i32 21
  %ack_signal = getelementptr inbounds %struct.zd_mac, ptr %3, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %cond.end.while.body_crit_edge, %while.body.lr.ph
  %call7 = tail call ptr @skb_dequeue(ptr noundef %ack_wait_queue) #8
  %13 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %ack_pending, align 4
  %14 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ack_signal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ack_signal, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ 0, %while.body.cond.end_crit_edge ]
  tail call fastcc void @zd_mac_tx_status(ptr noundef %1, ptr noundef %call7, i32 noundef %cond, ptr noundef null)
  %17 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load10 = load i8, ptr %ack_pending, align 4
  %bf.clear11 = and i8 %bf.load10, -17
  store i8 %bf.clear11, ptr %ack_pending, align 4
  %18 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i, align 4
  %cmp = icmp ugt i32 %19, 50
  br i1 %cmp, label %cond.end.while.body_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_mac_rx(ptr noundef %hw, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %length)
  %cmp = icmp ult i32 %length, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %length, -5
  %add.ptr = getelementptr i8, ptr %buffer, i32 %sub
  %frame_status = getelementptr inbounds %struct.rx_status, ptr %add.ptr, i32 0, i32 4
  %2 = ptrtoint ptr %frame_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frame_status, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then1

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then1:                                         ; preds = %if.end
  %pass_failed_fcs = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %pass_failed_fcs to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pass_failed_fcs, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %and5 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.then1.cleanup_crit_edge, label %if.then1.if.end9_crit_edge

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then1.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %stats.sroa.5.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ 32, %if.then1.if.end9_crit_edge ]
  %channel.i = getelementptr inbounds %struct.zd_chip, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel.i, align 1
  %conv11 = zext i8 %7 to i32
  %sub12 = add nsw i32 %conv11, -1
  %center_freq = getelementptr [14 x %struct.ieee80211_channel], ptr @zd_channels, i32 0, i32 %sub12, i32 1
  %8 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq, align 4
  %conv13 = trunc i32 %9 to i16
  %bf.shl = shl i16 %conv13, 3
  %signal_strength = getelementptr inbounds %struct.rx_status, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_strength, align 1
  %conv16 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %11)
  %12 = icmp ugt i8 %11, 100
  br i1 %12, label %do.end.i, label %if.end9.zd_check_signal.exit_crit_edge, !prof !174

if.end9.zd_check_signal.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_check_signal.exit

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.46, i32 noundef %conv16) #11
  br label %zd_check_signal.exit

zd_check_signal.exit:                             ; preds = %do.end.i, %if.end9.zd_check_signal.exit_crit_edge
  %15 = tail call i32 @llvm.smin.i32(i32 %conv16, i32 100) #8
  %conv18 = trunc i32 %15 to i8
  %call19 = tail call zeroext i8 @zd_rx_rate(ptr noundef %buffer, ptr noundef %add.ptr) #8
  %n_bitrates = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20, i32 4
  %16 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp21117 = icmp sgt i32 %17, 0
  br i1 %cmp21117, label %for.body.lr.ph, label %zd_check_signal.exit.for.end_crit_edge

zd_check_signal.exit.for.end_crit_edge:           ; preds = %zd_check_signal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %zd_check_signal.exit
  %bitrates = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitrates, align 4
  %20 = zext i8 %call19 to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %stats.sroa.9101.0118 = phi i8 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %19, i32 %i.0119, i32 2
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %20)
  %cmp27 = icmp eq i16 %22, %20
  %conv30 = trunc i32 %i.0119 to i8
  %spec.select = select i1 %cmp27, i8 %conv30, i8 %stats.sroa.9101.0118
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %zd_check_signal.exit.for.end_crit_edge
  %stats.sroa.9101.0.lcssa = phi i8 [ 0, %zd_check_signal.exit.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %sub32 = add i32 %length, -10
  %add.ptr33 = getelementptr i8, ptr %buffer, i32 5
  br i1 %tobool.not, label %land.lhs.true35, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true35:                                  ; preds = %for.end
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %25 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr33, align 2
  %27 = and i16 %26, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11264, i16 %27)
  %cmp.i.i = icmp eq i16 %27, -11264
  br i1 %cmp.i.i, label %if.end.i, label %land.lhs.true35.if.end45_crit_edge

land.lhs.true35.if.end45_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end.i:                                         ; preds = %land.lhs.true35
  %ack_wait_queue.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 17
  %lock.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 17, i32 2
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %ack_pending.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 21
  %addr1.i = getelementptr i8, ptr %buffer, i32 9
  %add.ptr1.i.i = getelementptr i8, ptr %buffer, i32 13
  %28 = ptrtoint ptr %ack_wait_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %skb.0.i120 = load ptr, ptr %ack_wait_queue.i, align 4
  %cmp7.not.i121 = icmp eq ptr %skb.0.i120, %ack_wait_queue.i
  br i1 %cmp7.not.i121, label %if.end.i.land.lhs.true38_crit_edge, label %for.body.i.lr.ph

if.end.i.land.lhs.true38_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true38

for.body.i.lr.ph:                                 ; preds = %if.end.i
  %29 = ptrtoint ptr %ack_pending.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %ack_pending.i, align 4
  %30 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %skb.0.i123 = phi ptr [ %skb.0.i120, %for.body.i.lr.ph ], [ %skb.0.i, %cleanup.i.for.body.i_crit_edge ]
  %position.0.i122 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %inc.i = add i32 %position.0.i122, 1
  br i1 %tobool.not.i, label %for.body.i.if.end12.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %prev.i.i = getelementptr inbounds %struct.anon.41, ptr %skb.0.i123, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %cmp.i89.i = icmp eq ptr %32, %ack_wait_queue.i
  br i1 %cmp.i89.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %for.body.i.if.end12.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i123, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr2.i, align 4
  %37 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr1.i, align 4
  %xor.i.i = xor i32 %38, %36
  %add.ptr.i.i = getelementptr %struct.ieee80211_hdr, ptr %34, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i.i, align 2
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %42, %40
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i90.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i90.i, label %for.cond22.preheader.i, label %if.end12.i.cleanup.i_crit_edge

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %43 = ptrtoint ptr %skb.0.i123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %skb.0.i = load ptr, ptr %skb.0.i123, align 4
  %cmp7.not.i = icmp eq ptr %skb.0.i, %ack_wait_queue.i
  br i1 %cmp7.not.i, label %cleanup.i.land.lhs.true38_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.land.lhs.true38_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true38

for.cond22.preheader.i:                           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp23100.i = icmp sgt i32 %inc.i, 1
  br i1 %cmp23100.i, label %for.body25.lr.ph.i, label %for.cond22.preheader.i.for.end38.i_crit_edge

for.cond22.preheader.i.for.end38.i_crit_edge:     ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i

for.body25.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %qlen.i.i.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 17, i32 1
  %ack_signal.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 22
  br label %for.body25.i

for.body25.i:                                     ; preds = %cond.end.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.0101.i = phi i32 [ 1, %for.body25.lr.ph.i ], [ %inc37.i, %cond.end.i.for.body25.i_crit_edge ]
  %44 = ptrtoint ptr %ack_wait_queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ack_wait_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %45, %ack_wait_queue.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %45
  %tobool.not.i.i = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body25.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i

for.body25.i.__skb_dequeue.exit.i_crit_edge:      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit.i

if.then.i.i:                                      ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %48 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %prev17.i.i.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %49, ptr %51, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i, %for.body25.i.__skb_dequeue.exit.i_crit_edge
  %54 = ptrtoint ptr %ack_pending.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load28.i = load i8, ptr %ack_pending.i, align 4
  %55 = and i8 %bf.load28.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool32.not.i = icmp eq i8 %55, 0
  br i1 %tobool32.not.i, label %__skb_dequeue.exit.i.cond.end.i_crit_edge, label %cond.true.i

__skb_dequeue.exit.i.cond.end.i_crit_edge:        ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %ack_signal.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ack_signal.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %__skb_dequeue.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %57, %cond.true.i ], [ 0, %__skb_dequeue.exit.i.cond.end.i_crit_edge ]
  tail call fastcc void @zd_mac_tx_status(ptr noundef %hw, ptr noundef %spec.store.select.i.i.i, i32 noundef %cond.i, ptr noundef null) #8
  %58 = ptrtoint ptr %ack_pending.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load34.i = load i8, ptr %ack_pending.i, align 4
  %bf.clear35.i = and i8 %bf.load34.i, -17
  store i8 %bf.clear35.i, ptr %ack_pending.i, align 4
  %inc37.i = add nuw nsw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %i.0101.i, %position.0.i122
  br i1 %exitcond.not.i, label %cond.end.i.for.end38.i_crit_edge, label %cond.end.i.for.body25.i_crit_edge

cond.end.i.for.body25.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

cond.end.i.for.end38.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i

for.end38.i:                                      ; preds = %cond.end.i.for.end38.i_crit_edge, %for.cond22.preheader.i.for.end38.i_crit_edge
  %59 = ptrtoint ptr %ack_pending.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load40.i = load i8, ptr %ack_pending.i, align 4
  %bf.set42.i = or i8 %bf.load40.i, 16
  store i8 %bf.set42.i, ptr %ack_pending.i, align 4
  %ack_signal44.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 22
  %60 = ptrtoint ptr %ack_signal44.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %15, ptr %ack_signal44.i, align 4
  %type.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 14
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp45.i = icmp eq i32 %62, 3
  br i1 %cmp45.i, label %if.then47.i, label %for.end38.i.land.lhs.true38_crit_edge

for.end38.i.land.lhs.true38_crit_edge:            ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true38

if.then47.i:                                      ; preds = %for.end38.i
  %63 = ptrtoint ptr %ack_wait_queue.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ack_wait_queue.i, align 4
  %cmp.i.i91.i = icmp eq ptr %64, %ack_wait_queue.i
  %spec.store.select.i.i92.i = select i1 %cmp.i.i91.i, ptr null, ptr %64
  %tobool.not.i93.i = icmp eq ptr %spec.store.select.i.i92.i, null
  br i1 %tobool.not.i93.i, label %if.then47.i.__skb_dequeue.exit99.i_crit_edge, label %if.then.i98.i

if.then47.i.__skb_dequeue.exit99.i_crit_edge:     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_dequeue.exit99.i

if.then.i98.i:                                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  %qlen.i.i94.i = getelementptr inbounds %struct.zd_mac, ptr %24, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %qlen.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qlen.i.i94.i, align 4
  %sub.i.i95.i = add i32 %66, -1
  store volatile i32 %sub.i.i95.i, ptr %qlen.i.i94.i, align 4
  %67 = ptrtoint ptr %spec.store.select.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spec.store.select.i.i92.i, align 8
  %prev9.i.i96.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i92.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev9.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev9.i.i96.i, align 4
  store ptr null, ptr %prev9.i.i96.i, align 4
  store ptr null, ptr %spec.store.select.i.i92.i, align 8
  %prev17.i.i97.i = getelementptr inbounds %struct.anon.41, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %prev17.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %70, ptr %prev17.i.i97.i, align 4
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %68, ptr %70, align 8
  br label %__skb_dequeue.exit99.i

__skb_dequeue.exit99.i:                           ; preds = %if.then.i98.i, %if.then47.i.__skb_dequeue.exit99.i_crit_edge
  %73 = ptrtoint ptr %ack_signal44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ack_signal44.i, align 4
  tail call fastcc void @zd_mac_tx_status(ptr noundef %hw, ptr noundef %spec.store.select.i.i92.i, i32 noundef %74, ptr noundef null) #8
  %75 = ptrtoint ptr %ack_pending.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load51.i = load i8, ptr %ack_pending.i, align 4
  %bf.clear52.i = and i8 %bf.load51.i, -17
  store i8 %bf.clear52.i, ptr %ack_pending.i, align 4
  br label %land.lhs.true38

land.lhs.true38:                                  ; preds = %__skb_dequeue.exit99.i, %for.end38.i.land.lhs.true38_crit_edge, %cleanup.i.land.lhs.true38_crit_edge, %if.end.i.land.lhs.true38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #8
  %pass_ctrl = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 21
  %76 = ptrtoint ptr %pass_ctrl to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load39 = load i8, ptr %pass_ctrl, align 4
  %77 = and i8 %bf.load39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool43.not = icmp eq i8 %77, 0
  br i1 %tobool43.not, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.if.end45_crit_edge

land.lhs.true38.if.end45_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true38.if.end45_crit_edge, %land.lhs.true35.if.end45_crit_edge, %for.end.if.end45_crit_edge
  %78 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %add.ptr33, align 1
  %80 = and i16 %79, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %80)
  %cmp.i = icmp eq i16 %80, -30720
  %81 = and i16 %79, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %81)
  %cmp.i99 = icmp eq i16 %81, 3
  %xor97 = xor i1 %cmp.i, %cmp.i99
  %cond = select i1 %xor97, i32 2, i32 0
  %add = add i32 %cond, %sub32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %cmp52 = icmp eq ptr %call.i.i, null
  br i1 %cmp52, label %if.end45.cleanup_crit_edge, label %if.end55

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  br i1 %xor97, label %if.then57, label %if.end55.if.end58_crit_edge

if.end55.if.end58_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %data.i100 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i100, align 4
  %add.ptr.i = getelementptr i8, ptr %83, i32 2
  store ptr %add.ptr.i, ptr %data.i100, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %84 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %85, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55.if.end58_crit_edge
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub32) #8
  %86 = call ptr @memcpy(ptr %call.i, ptr %add.ptr33, i32 %sub32)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %87 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %stats.sroa.5.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %stats.sroa.5.0.cb.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %stats.sroa.5.0, ptr %stats.sroa.5.0.cb.i.sroa_idx, align 8
  %stats.sroa.7.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %89 = ptrtoint ptr %stats.sroa.7.0.cb.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %bf.shl, ptr %stats.sroa.7.0.cb.i.sroa_idx, align 4
  %stats.sroa.9.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 30
  %90 = call ptr @memset(ptr %stats.sroa.9.0.cb.i.sroa_idx, i32 0, i32 3)
  %stats.sroa.9101.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 33
  %91 = ptrtoint ptr %stats.sroa.9101.0.cb.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %stats.sroa.9101.0.lcssa, ptr %stats.sroa.9101.0.cb.i.sroa_idx, align 1
  %stats.sroa.10.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 34
  %stats.sroa.11103.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 38
  %92 = ptrtoint ptr %stats.sroa.10.0.cb.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 0, ptr %stats.sroa.10.0.cb.i.sroa_idx, align 2
  %93 = ptrtoint ptr %stats.sroa.11103.0.cb.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv18, ptr %stats.sroa.11103.0.cb.i.sroa_idx, align 2
  %stats.sroa.13.0.cb.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 39
  %94 = call ptr @memset(ptr %stats.sroa.13.0.cb.i.sroa_idx, i32 0, i32 9)
  tail call void @ieee80211_rx_irqsafe(ptr noundef %hw, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end45.cleanup_crit_edge, %land.lhs.true38.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then1.cleanup_crit_edge ], [ 0, %land.lhs.true38.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @zd_rx_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zd_mac_alloc_hw(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 12364, ptr noundef nonnull @zd_ops, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 12364)
  %lock = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @zd_mac_alloc_hw.__key, i16 noundef signext 3) #8
  %hw6 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %hw6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %hw6, align 4
  %type = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %channels = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 18
  %5 = call ptr @memcpy(ptr %channels, ptr @zd_channels, i32 784)
  %rates = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 19
  %6 = call ptr @memcpy(ptr %rates, ptr @zd_rates, i32 144)
  %band = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20
  %n_bitrates = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20, i32 4
  %7 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %n_bitrates, align 4
  %bitrates = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rates, ptr %bitrates, align 4
  %n_channels = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 20, i32 3
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 14, ptr %n_channels, align 4
  %10 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %channels, ptr %band, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %band, ptr %bands, align 16
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i.i75 = or i32 %15, 2062
  store i32 %or.i.i75, ptr %flags.i, align 4
  %16 = load ptr, ptr %wiphy, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 142, ptr %interface_modes, align 4
  %18 = load ptr, ptr %wiphy, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %18, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %21 = or i8 %20, 32
  store i8 %21, ptr %arrayidx.i, align 1
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %max_signal to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 100, ptr %max_signal, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %queues, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %extra_tx_headroom, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 16
  %26 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 18, ptr %max_rate_tries, align 1
  %ack_wait_queue = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 17
  %lock.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %27 = ptrtoint ptr %ack_wait_queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ack_wait_queue, ptr %ack_wait_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 17, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ack_wait_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen.i.i, align 4
  %ack_pending = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %ack_pending to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %ack_pending, align 4
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %ack_pending, align 4
  tail call void @zd_chip_init(ptr noundef %1, ptr noundef nonnull %call.i, ptr noundef %intf) #8
  %housekeeping.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %housekeeping.i, i32 noundef 0) #8
  %31 = ptrtoint ptr %housekeeping.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %housekeeping.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @housekeeping_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i76 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry11.i, ptr %prev.i.i76, align 4
  %func.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @link_led_handler, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 5, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.69, ptr noundef nonnull @housekeeping_init.__key.68) #8
  %beacon.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6
  tail call void @__init_work(ptr noundef %beacon.i, i32 noundef 0) #8
  %35 = ptrtoint ptr %beacon.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %beacon.i, align 4
  %lockdep_map.i77 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i77, ptr noundef nonnull @.str.60, ptr noundef nonnull @beacon_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i78 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %entry11.i78 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry11.i78, ptr %entry11.i78, align 4
  %prev.i.i79 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry11.i78, ptr %prev.i.i79, align 4
  %func.i80 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %func.i80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @beacon_watchdog_handler, ptr %func.i80, align 4
  %timer.i81 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i81, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.62, ptr noundef nonnull @beacon_init.__key.61) #8
  %process_intr = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 8
  tail call void @__init_work(ptr noundef %process_intr, i32 noundef 0) #8
  %39 = ptrtoint ptr %process_intr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %process_intr, align 4
  %lockdep_map = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @zd_mac_alloc_hw.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry23 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 8, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @zd_process_intr, ptr %func, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %43 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56, i32 1
  %45 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev27, ptr %parent.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zd_chip_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_process_intr(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -352
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %add.ptr6 = getelementptr i8, ptr %work, i32 56
  %0 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr6, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %2 = and i16 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end11, label %if.then

if.then:                                          ; preds = %entry
  %flags.i = getelementptr i8, ptr %work, i32 128
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %vif.i = getelementptr i8, ptr %work, i32 -260
  %5 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 3
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %hw.i = getelementptr i8, ptr %work, i32 -264
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %call539.i = tail call i32 @ieee80211_queue_stopped(ptr noundef %10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call539.i)
  %tobool6.not40.i = icmp eq i32 %call539.i, 0
  br i1 %tobool6.not40.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %zd_op_tx.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %13 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vif.i, align 4
  %call9.i = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %12, ptr noundef %14) #8
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %while.body.i.while.end.i_crit_edge, label %if.end12.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end12.i:                                       ; preds = %while.body.i
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i.i.i, align 8
  %call2.i.i = tail call fastcc i32 @fill_ctrlset(ptr noundef %18, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.i.fail.i.i_crit_edge

if.end12.i.fail.i.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i.i

if.end.i.i:                                       ; preds = %if.end12.i
  %rate_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call9.i, i32 0, i32 3, i32 24
  %19 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %rate_driver_data.i.i, align 8
  %call3.i.i = tail call i32 @zd_usb_tx(ptr noundef %18, ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.zd_op_tx.exit.i_crit_edge, label %if.end.i.i.fail.i.i_crit_edge

if.end.i.i.fail.i.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i.i

if.end.i.i.zd_op_tx.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_op_tx.exit.i

fail.i.i:                                         ; preds = %if.end.i.i.fail.i.i_crit_edge, %if.end12.i.fail.i.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call9.i) #8
  br label %zd_op_tx.exit.i

zd_op_tx.exit.i:                                  ; preds = %fail.i.i, %if.end.i.i.zd_op_tx.exit.i_crit_edge
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 4
  %call5.i = tail call i32 @ieee80211_queue_stopped(ptr noundef %21, i32 noundef 0) #8
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %zd_op_tx.exit.i.while.body.i_crit_edge, label %zd_op_tx.exit.i.while.end.i_crit_edge

zd_op_tx.exit.i.while.end.i_crit_edge:            ; preds = %zd_op_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

zd_op_tx.exit.i.while.body.i_crit_edge:           ; preds = %zd_op_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %zd_op_tx.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  %24 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vif.i, align 4
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %23, ptr noundef %25, ptr noundef null, ptr noundef null) #8
  %tobool17.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not.i, label %while.end.i.if.end21.i_crit_edge, label %if.then18.i

while.end.i.if.end21.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 4
  tail call fastcc void @zd_mac_config_beacon(ptr noundef %27, ptr noundef nonnull %call.i.i, i1 noundef zeroext true) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %while.end.i.if.end21.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr i8, ptr %work, i32 -52
  %29 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_update.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr i8, ptr %work, i32 -744
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #11
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.end21.i, %lor.lhs.false.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -11148
  %call13 = tail call i32 @zd_chip_enable_hwint(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_write_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_write_bssid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite32a_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zd_mac_free_cur_beacon_locked(ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %mac, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call, label %entry.do.end16_crit_edge, label %do.body3, !prof !172

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_free_cur_beacon_locked, %do.end)) #8
          to label %if.then14 [label %do.end], !srcloc !173

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.44) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #11
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  %cur_beacon = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %cur_beacon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_beacon, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %cur_beacon to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cur_beacon, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_queue_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_zd_iowrite32v_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_ioread32v_locked(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_set_rts_cts_rate_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_op_tx(ptr noundef %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @fill_ctrlset(ptr noundef %1, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end:                                           ; preds = %entry
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hw, ptr %rate_driver_data, align 8
  %call3 = tail call i32 @zd_usb_tx(ptr noundef %1, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd_op_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %type = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.sw.bb_crit_edge
    i32 7, label %if.end.sw.bb_crit_edge11
    i32 2, label %if.end.sw.bb_crit_edge12
    i32 1, label %if.end.sw.bb_crit_edge13
    i32 3, label %if.end.sw.bb_crit_edge14
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge11:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge11, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13, %if.end.sw.bb_crit_edge14
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %type, align 4
  %vif4 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vif4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vif, ptr %vif4, align 4
  %call5 = tail call fastcc i32 @set_mac_and_bssid(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_op_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %type = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %vif1 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %vif1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vif1, align 4
  %call2 = tail call i32 @zd_set_beacon_interval(ptr noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #8
  %call4 = tail call i32 @zd_write_mac_addr(ptr noundef %1, ptr noundef null) #8
  tail call fastcc void @zd_mac_free_cur_beacon(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd_op_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %5 to i8
  %channel = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %channel, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 4
  %hw_value5 = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value5, align 2
  %conv6 = trunc i16 %10 to i8
  %call7 = tail call i32 @zd_chip_set_channel(ptr noundef %1, i8 noundef zeroext %conv6) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_op_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %intf = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %changes) #11
  %type = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %5, label %if.else [
    i32 7, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge81
    i32 3, label %entry.if.then_crit_edge82
  ]

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge81, %entry.if.then_crit_edge82
  %and = and i32 %changes, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %if.then6

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.then
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %vif, ptr noundef null, ptr noundef null) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then6.if.end15_crit_edge, label %if.then9

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @zd_chip_disable_hwint(ptr noundef %1) #8
  tail call fastcc void @zd_mac_config_beacon(ptr noundef %hw, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  %call14 = tail call i32 @zd_chip_enable_hwint(ptr noundef %1) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then6.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %and16 = and i32 %changes, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end33_crit_edge, label %if.then18

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then18:                                        ; preds = %if.end15
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %7 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_beacon, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  br i1 %tobool19.not, label %if.then18.if.end21_crit_edge, label %if.then20

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %9 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dtim_period, align 8
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %11 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %beacon_int, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18.if.end21_crit_edge
  %interval.0 = phi i16 [ %12, %if.then20 ], [ 0, %if.then18.if.end21_crit_edge ]
  %period.0 = phi i8 [ %10, %if.then20 ], [ 0, %if.then18.if.end21_crit_edge ]
  %lock = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %period23 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %period23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %period.0, ptr %period23, align 2
  %interval25 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %interval25 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %interval.0, ptr %interval25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_update = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_update, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %call30 = tail call i32 @zd_set_beacon_interval(ptr noundef %1, i16 noundef zeroext %interval.0, i8 noundef zeroext %period.0, i32 noundef %18) #8
  br label %if.end33

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bss_conf, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %land.rhs.i, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.rhs.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %or.i.i = or i32 %22, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  %phi.cast = zext i1 %cmp.i.i to i32
  br label %if.end33

if.end33:                                         ; preds = %land.rhs.i, %if.else.if.end33_crit_edge, %if.end21, %if.end15.if.end33_crit_edge
  %associated.0 = phi i32 [ 1, %if.end21 ], [ 1, %if.end15.if.end33_crit_edge ], [ 0, %if.else.if.end33_crit_edge ], [ %phi.cast, %land.rhs.i ]
  %lock34 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock34) #8
  %associated35 = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %associated35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %associated.0, ptr %associated35, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock34) #8
  %and37 = and i32 %changes, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end33.if.end47_crit_edge, label %if.then39

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock34) #8
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 15
  %27 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_short_preamble, align 1, !range !176
  %short_preamble = getelementptr inbounds %struct.zd_mac, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %short_preamble, align 4
  %bf.shl = shl nuw i8 %28, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %short_preamble, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock34) #8
  %30 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use_short_preamble, align 1, !range !176
  %32 = zext i8 %31 to i32
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %call.i80 = tail call i32 @zd_chip_set_rts_cts_rate_locked(ptr noundef %1, i32 noundef %32) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end33.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @zd_op_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) #0 align 64 {
entry:
  %hash.sroa.0 = alloca i32, align 4
  %hash.sroa.6 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.sroa.6)
  %2 = ptrtoint ptr %hash.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hash.sroa.0, align 4
  %3 = ptrtoint ptr %hash.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2147483648, ptr %hash.sroa.6, align 4
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %ha.016 = load ptr, ptr %mc_list, align 4
  %cmp.not17 = icmp eq ptr %ha.016, %mc_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %do.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.lr.ph:                                     ; preds = %entry
  %intf = getelementptr inbounds %struct.zd_usb, ptr %1, i32 0, i32 3
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %ha.018 = phi ptr [ %ha.016, %do.end.lr.ph ], [ %ha.0, %do.end.do.end_crit_edge ]
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.018, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %addr) #11
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.018, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = lshr i8 %8, 2
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i = icmp sgt i8 %8, -1
  %sub.i = add nsw i32 %10, -32
  %high.sink7.i = select i1 %cmp.i, ptr %hash.sroa.0, ptr %hash.sroa.6
  %shl2.sink.v.i = select i1 %cmp.i, i32 %10, i32 %sub.i
  %shl2.sink.i = shl nuw i32 1, %shl2.sink.v.i
  %11 = ptrtoint ptr %high.sink7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %high.sink7.i, align 4
  %or3.i = or i32 %shl2.sink.i, %12
  store i32 %or3.i, ptr %high.sink7.i, align 4
  %13 = ptrtoint ptr %ha.018 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0 = load ptr, ptr %ha.018, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %hash.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %hash.sroa.0.0.hash.sroa.0.0.hash.sroa.0.0. = load i32, ptr %hash.sroa.0, align 4
  %conv = zext i32 %hash.sroa.0.0.hash.sroa.0.0.hash.sroa.0.0. to i64
  %15 = ptrtoint ptr %hash.sroa.6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %hash.sroa.6.0.hash.sroa.6.0.hash.sroa.6.4. = load i32, ptr %hash.sroa.6, align 4
  %conv10 = zext i32 %hash.sroa.6.0.hash.sroa.6.0.hash.sroa.6.4. to i64
  %shl = shl nuw i64 %conv10, 32
  %or = or i64 %shl, %conv
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.sroa.6)
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd_op_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  %hash = alloca %struct.zd_mc_hash, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash) #8
  %0 = getelementptr inbounds %struct.zd_mc_hash, ptr %hash, i32 0, i32 1
  %conv = trunc i64 %multicast to i32
  %1 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %hash, align 8
  %shr = lshr i64 %multicast, 32
  %conv1 = trunc i64 %shr to i32
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv1, ptr %0, align 4
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_flags, align 4
  %and2 = and i32 %6, 118
  store i32 %and2, ptr %new_flags, align 4
  %and3 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %0, align 4
  %8 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %hash, align 8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %lock = getelementptr inbounds %struct.zd_mac, ptr %4, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %9 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_flags, align 4
  %pass_failed_fcs = getelementptr inbounds %struct.zd_mac, ptr %4, i32 0, i32 21
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %pass_failed_fcs to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %pass_failed_fcs, align 4
  %13 = shl i8 %11, 4
  %bf.shl = and i8 %13, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %pass_failed_fcs, align 4
  %14 = load i32, ptr %new_flags, align 4
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 32
  %bf.clear22 = and i8 %bf.set, -33
  %bf.set23 = or i8 %bf.clear22, %16
  store i8 %bf.set23, ptr %pass_failed_fcs, align 4
  %multicast_hash = getelementptr inbounds %struct.zd_mac, ptr %4, i32 0, i32 9
  %17 = ptrtoint ptr %hash to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hash, align 8
  %19 = ptrtoint ptr %multicast_hash to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %multicast_hash, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  %call26 = call i32 @zd_chip_set_multicast_hash(ptr noundef %4, ptr noundef nonnull %hash) #8
  %and27 = and i32 %changed_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body4.if.end38_crit_edge, label %if.then29

do.body4.if.end38_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then29:                                        ; preds = %do.body4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %20 = ptrtoint ptr %pass_failed_fcs to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %pass_failed_fcs, align 4
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %spec.select.i = select i1 %tobool.not.i, i32 604045311, i32 -67043329
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #8
  %call6.i = call i32 @zd_iowrite32(ptr noundef %4, i16 noundef zeroext -26996, i32 noundef %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool31.not = icmp eq i32 %call6.i, 0
  br i1 %tobool31.not, label %if.then29.if.end38_crit_edge, label %do.end35

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.zd_usb, ptr %4, i32 0, i32 3
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call6.i) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.then29.if.end38_crit_edge, %do.body4.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @zd_op_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @zd_chip_get_tsf(ptr noundef %1) #8
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_ctrlset(ptr nocapture noundef readonly %mac, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, 4
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 11) #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp = icmp ugt i32 %add, 65535
  br i1 %cmp, label %do.body4, label %entry.do.end18_crit_edge, !prof !174

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_ctrlset.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fill_ctrlset, %do.end)) #8
          to label %if.then15 [label %do.end], !srcloc !173

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_ctrlset.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 860, ptr noundef nonnull @.str.48) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body4
  tail call void @dump_stack() #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %6)
  %cmp.i = icmp eq i16 %6, -23552
  br i1 %cmp.i, label %do.end18.if.end21_crit_edge, label %if.then20

do.end18.if.end21_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %duration_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %duration_id, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end18.if.end21_crit_edge
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i117 = icmp slt i8 %10, 0
  br i1 %cmp.i117, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end21
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !172

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 2737, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 3
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %14, i32 0, i32 53, i32 %bf.lshr.i
  %16 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %10 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %19, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i118 = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i118, i32 0, i32 2
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %21 to i8
  %22 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %call, align 1
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %24 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool24.not = icmp eq i16 %24, 0
  br i1 %tobool24.not, label %ieee80211_get_tx_rate.exit.if.end28_crit_edge, label %if.then25

ieee80211_get_tx_rate.exit.if.end28_crit_edge:    ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hw_value_short = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i118, i32 0, i32 3
  %25 = ptrtoint ptr %hw_value_short to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_value_short, align 4
  %conv26 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26, ptr %call, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %ieee80211_get_tx_rate.exit.if.end28_crit_edge
  %conv29 = trunc i32 %add to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %tx_length = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %tx_length to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %tx_length, align 1
  %control.i = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 2
  %30 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %control.i, align 1
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb.i, align 8
  %33 = trunc i32 %32 to i8
  %34 = lshr i8 %33, 4
  %35 = and i8 %34, 1
  store i8 %35, ptr %control.i, align 1
  %36 = load i32, ptr %cb.i, align 8
  %and4.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end28.if.end11.i_crit_edge, label %if.then6.i

if.end28.if.end11.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %37 = or i8 %35, 2
  %38 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %control.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end28.if.end11.i_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 2
  %41 = and i16 %40, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %41)
  %cmp.i.i = icmp eq i16 %41, -23552
  br i1 %cmp.i.i, label %if.then12.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %control.i, align 1
  %44 = or i8 %43, 4
  store i8 %44, ptr %control.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.end11.i.if.end17.i_crit_edge
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load.i119 = load i16, ptr %flags, align 1
  %46 = and i16 %bf.load.i119, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool21.not.i = icmp eq i16 %46, 0
  br i1 %tobool21.not.i, label %if.end17.i.if.end27.i_crit_edge, label %if.then22.i

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %control.i, align 1
  %49 = or i8 %48, 32
  store i8 %49, ptr %control.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end27.i_crit_edge
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load31.i = load i16, ptr %flags, align 1
  %51 = and i16 %bf.load31.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool35.not.i = icmp eq i16 %51, 0
  br i1 %tobool35.not.i, label %if.end27.i.cs_set_control.exit_crit_edge, label %if.then36.i

if.end27.i.cs_set_control.exit_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs_set_control.exit

if.then36.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %control.i, align 1
  %54 = or i8 %53, -128
  store i8 %54, ptr %control.i, align 1
  br label %cs_set_control.exit

cs_set_control.exit:                              ; preds = %if.then36.i, %if.end27.i.cs_set_control.exit_crit_edge
  %add31 = add i32 %3, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add31)
  %cmp33 = icmp ugt i32 %add31, 65535
  br i1 %cmp33, label %do.body44, label %cs_set_control.exit.do.end64_crit_edge, !prof !174

cs_set_control.exit.do.end64_crit_edge:           ; preds = %cs_set_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64

do.body44:                                        ; preds = %cs_set_control.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_ctrlset.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fill_ctrlset, %do.end61)) #8
          to label %if.then58 [label %do.end61], !srcloc !173

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_ctrlset.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 881, ptr noundef nonnull @.str.49) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body44
  tail call void @dump_stack() #11
  br label %do.end64

do.end64:                                         ; preds = %do.end61, %cs_set_control.exit.do.end64_crit_edge
  %is_zd1211b.i = getelementptr inbounds %struct.zd_usb, ptr %mac, i32 0, i32 8
  %55 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i120 = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i120)
  %tobool66.not = icmp sgt i8 %bf.load.i120, -1
  %phi.cast = trunc i32 %add31 to i16
  %cond = select i1 %tobool66.not, i16 %phi.cast, i16 21
  %56 = tail call i16 @llvm.bswap.i16(i16 %cond)
  %packet_length68 = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %packet_length68 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %packet_length68, align 1
  %service = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 5
  %58 = ptrtoint ptr %service to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %service, align 1
  %59 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %call, align 1
  %61 = and i8 %60, 31
  %62 = ptrtoint ptr %tx_length to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %tx_length, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %conv.i122 = zext i16 %64 to i32
  %mul.i = shl nuw nsw i32 %conv.i122, 3
  %conv1.i = zext i8 %61 to i32
  %and.i = and i32 %conv1.i, 15
  %arrayidx.i = getelementptr [16 x i8], ptr @zd_calc_tx_length_us.rate_divisor, i32 0, i32 %and.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %66 to i32
  %67 = and i32 %conv1.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp.i123 = icmp eq i32 %67, 4
  br i1 %cmp.i123, label %do.end64.cleanup_crit_edge, label %if.end.i

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end64
  %trunc = trunc i8 %60 to i5
  %68 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.77)
  switch i5 %trunc, label %if.end.i.zd_calc_tx_length_us.exit_crit_edge [
    i5 2, label %sw.bb.i
    i5 3, label %sw.bb6.i
  ]

if.end.i.zd_calc_tx_length_us.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_calc_tx_length_us.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul5.i = shl nuw nsw i32 %conv.i122, 4
  %add.i = or i32 %mul5.i, 10
  br label %zd_calc_tx_length_us.exit

sw.bb6.i:                                         ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %service, null
  br i1 %tobool.not.i, label %sw.bb6.i.if.end19.i_crit_edge, label %if.then7.i

sw.bb6.i.if.end19.i_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then7.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %mul.i, 11
  %69 = add nsw i32 %rem.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %70 = icmp ult i32 %69, 3
  %spec.store.select = select i1 %70, i8 -128, i8 0
  %71 = ptrtoint ptr %service to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.store.select, ptr %service, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then7.i, %sw.bb6.i.if.end19.i_crit_edge
  %add20.i = add nuw nsw i32 %mul.i, 10
  br label %zd_calc_tx_length_us.exit

zd_calc_tx_length_us.exit:                        ; preds = %if.end19.i, %sw.bb.i, %if.end.i.zd_calc_tx_length_us.exit_crit_edge
  %bits.0.i = phi i32 [ %mul.i, %if.end.i.zd_calc_tx_length_us.exit_crit_edge ], [ %add20.i, %if.end19.i ], [ %add.i, %sw.bb.i ]
  %div.i = udiv i32 %bits.0.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp76 = icmp slt i32 %div.i, 0
  br i1 %cmp76, label %zd_calc_tx_length_us.exit.cleanup_crit_edge, label %if.end79

zd_calc_tx_length_us.exit.cleanup_crit_edge:      ; preds = %zd_calc_tx_length_us.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %zd_calc_tx_length_us.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv80 = trunc i32 %div.i to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv80)
  %current_length = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 4
  %73 = ptrtoint ptr %current_length to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %current_length, align 1
  %next_frame_length = getelementptr inbounds %struct.zd_ctrlset, ptr %call, i32 0, i32 6
  %74 = ptrtoint ptr %next_frame_length to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 0, ptr %next_frame_length, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %zd_calc_tx_length_us.exit.cleanup_crit_edge, %do.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end79 ], [ %div.i, %zd_calc_tx_length_us.exit.cleanup_crit_edge ], [ -22, %do.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zd_mac_free_cur_beacon(ptr noundef %mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %mac, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #8
  br i1 %call.i, label %entry.zd_mac_free_cur_beacon_locked.exit_crit_edge, label %do.body3.i, !prof !172

entry.zd_mac_free_cur_beacon_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zd_mac_free_cur_beacon_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_mac_free_cur_beacon, %do.end.i)) #8
          to label %if.then14.i [label %do.end.i], !srcloc !173

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.44) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #11
  br label %zd_mac_free_cur_beacon_locked.exit

zd_mac_free_cur_beacon_locked.exit:               ; preds = %do.end.i, %entry.zd_mac_free_cur_beacon_locked.exit_crit_edge
  %cur_beacon.i = getelementptr inbounds %struct.zd_mac, ptr %mac, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_beacon.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %cur_beacon.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cur_beacon.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @zd_chip_get_tsf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_queue_stopped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @beacon_watchdog_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10992
  %flags = getelementptr i8, ptr %work, i32 284
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.rearm_crit_edge, label %if.end

entry.rearm_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rearm

if.end:                                           ; preds = %entry
  %type = getelementptr i8, ptr %work, i32 276
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.rearm_crit_edge

if.end.rearm_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rearm

lor.lhs.false:                                    ; preds = %if.end
  %vif = getelementptr i8, ptr %work, i32 -104
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.rearm_crit_edge, label %if.end3

lor.lhs.false.rearm_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %rearm

if.end3:                                          ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %work, i32 -196
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %interval5 = getelementptr inbounds %struct.beacon, ptr %work, i32 0, i32 3
  %6 = ptrtoint ptr %interval5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval5, align 4
  %conv = zext i16 %7 to i32
  %period7 = getelementptr inbounds %struct.beacon, ptr %work, i32 0, i32 4
  %8 = ptrtoint ptr %period7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %period7, align 2
  %conv8 = zext i8 %9 to i32
  %last_update = getelementptr inbounds %struct.beacon, ptr %work, i32 0, i32 2
  %10 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_update, align 4
  %mul = shl nuw nsw i32 %conv, 10
  %div = udiv i32 %mul, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13.not = icmp eq i16 %7, 0
  br i1 %cmp13.not, label %if.end3.rearm_crit_edge, label %land.lhs.true

if.end3.rearm_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rearm

land.lhs.true:                                    ; preds = %if.end3
  %mul11 = mul i32 %call2.i, 3
  %add = add i32 %mul11, %11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %do.end, label %land.lhs.true.rearm_crit_edge

land.lhs.true.rearm_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %rearm

do.end:                                           ; preds = %land.lhs.true
  %intf = getelementptr i8, ptr %work, i32 -588
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv8) #11
  %call19 = tail call i32 @zd_chip_disable_hwint(ptr noundef %add.ptr) #8
  %hw = getelementptr i8, ptr %work, i32 -108
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %16, ptr noundef %18, ptr noundef null, ptr noundef null) #8
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %do.end.if.end26_crit_edge, label %if.then23

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @zd_mac_free_cur_beacon(ptr noundef %add.ptr)
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  tail call fastcc void @zd_mac_config_beacon(ptr noundef %20, ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.end.if.end26_crit_edge
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %call31 = tail call i32 @zd_set_beacon_interval(ptr noundef %add.ptr, i16 noundef zeroext %7, i8 noundef zeroext %9, i32 noundef %22) #8
  %call33 = tail call i32 @zd_chip_enable_hwint(ptr noundef %add.ptr) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_update, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %rearm

rearm:                                            ; preds = %if.end26, %land.lhs.true.rearm_crit_edge, %if.end3.rearm_crit_edge, %lor.lhs.false.rearm_crit_edge, %if.end.rearm_crit_edge, %entry.rearm_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %25 = load ptr, ptr @zd_workqueue, align 4
  %call40 = tail call i32 @round_jiffies_relative(i32 noundef 100) #8
  %call.i67 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work, i32 noundef %call40) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @link_led_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 384
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.requeue_crit_edge, label %if.end

entry.requeue_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %requeue

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -10892
  %lock = getelementptr i8, ptr %work, i32 -96
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %associated = getelementptr i8, ptr %work, i32 380
  %2 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %associated, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool3.not, i32 1, i32 2
  %call4 = tail call i32 @zd_chip_control_leds(ptr noundef %add.ptr, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.requeue_crit_edge, label %do.end

if.end.requeue_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %requeue

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr i8, ptr %work, i32 -488
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %call4) #11
  br label %requeue

requeue:                                          ; preds = %do.end, %if.end.requeue_crit_edge, %entry.requeue_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zd_workqueue to i32))
  %6 = load ptr, ptr @zd_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 100) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_chip_control_leds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 196, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @zd_mac_init_hw.__UNIQUE_ID_ddebug357, !1, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 304, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @zd_op_start._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @zd_op_start._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 365, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @zd_restore_settings._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @zd_restore_settings._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 377, i32 3}
!22 = !{ptr @zd_restore_settings._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @zd_restore_settings._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 383, i32 3}
!26 = !{ptr @zd_restore_settings._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @zd_restore_settings._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 392, i32 3}
!30 = !{ptr @zd_restore_settings._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @zd_restore_settings._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 527, i32 3}
!34 = !{ptr @zd_mac_tx_failed.__UNIQUE_ID_ddebug360, !33, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!35 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1364, i32 3}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @zd_mac_alloc_hw._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @zd_mac_alloc_hw._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @zd_mac_alloc_hw.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1371, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @zd_mac_alloc_hw.__key.26, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1414, i32 2}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @reg_alpha2_map, !48, !"reg_alpha2_map", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 27, i32 33}
!49 = !{ptr @zd_retry_rates, !50, !"zd_retry_rates", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 93, i32 35}
!51 = !{ptr @zd_rates, !52, !"zd_rates", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 39, i32 36}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 455, i32 2}
!55 = !{ptr @zd_mac_tx_status.__UNIQUE_ID_ddebug358, !54, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!56 = !{ptr @zd_mac_tx_status.__UNIQUE_ID_ddebug359, !57, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 457, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 747, i32 4}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @zd_mac_config_beacon._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @zd_mac_config_beacon._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 750, i32 5}
!66 = !{ptr @zd_mac_config_beacon._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @zd_mac_config_beacon._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 802, i32 3}
!70 = !{ptr @zd_mac_config_beacon._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @zd_mac_config_beacon._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 842, i32 2}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @zd_mac_config_beacon._entry.39, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @zd_mac_config_beacon._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 687, i32 2}
!79 = !{ptr @zd_mac_free_cur_beacon_locked.__UNIQUE_ID_ddebug361, !78, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!80 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @zd_channels, !82, !"zd_channels", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 108, i32 39}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 154, i32 2}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @zd_check_signal._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @zd_check_signal._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @zd_ops, !89, !"zd_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1344, i32 35}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 860, i32 2}
!92 = !{ptr @fill_ctrlset.__UNIQUE_ID_ddebug362, !91, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!93 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fill_ctrlset.__UNIQUE_ID_ddebug363, !95, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 881, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @zd_calc_tx_length_us.rate_divisor, !101, !"rate_divisor", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 599, i32 18}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1286, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @zd_op_bss_info_changed._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @zd_op_bss_info_changed._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1210, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @zd_op_prepare_multicast._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @zd_op_prepare_multicast._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1258, i32 4}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @zd_op_configure_filter._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @zd_op_configure_filter._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @skb_queue_head_init.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1193, i32 3}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @zd_process_intr._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @zd_process_intr._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @beacon_init.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1473, i32 2}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @beacon_init.__key.61, !126, !"__key", i1 false, i1 false}
!129 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1443, i32 3}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @beacon_watchdog_handler._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @beacon_watchdog_handler._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1478, i32 2}
!137 = !{ptr @beacon_enable._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @beacon_enable._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1487, i32 2}
!141 = !{ptr @beacon_disable._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @beacon_disable._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @housekeeping_init.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1522, i32 2}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @housekeeping_init.__key.68, !144, !"__key", i1 false, i1 false}
!147 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1513, i32 3}
!150 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @link_led_handler._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @link_led_handler._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1527, i32 2}
!155 = !{ptr @housekeeping_enable._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @housekeeping_enable._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_mac.c", i32 1534, i32 2}
!159 = !{ptr @housekeeping_disable._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @housekeeping_disable._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
!171 = !{i64 927219}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2149078052, i64 2149078057, i64 2149078070, i64 2149078114, i64 2149078148, i64 2149078169}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2157677884, i64 2157678393, i64 2157677921, i64 2157677977, i64 2157678011, i64 2157678035, i64 2157678076, i64 2157678097, i64 2157678125, i64 2157678159}
!176 = !{i8 0, i8 2}
