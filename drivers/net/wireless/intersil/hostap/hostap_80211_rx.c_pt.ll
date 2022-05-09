; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_80211_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hostap_80211_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_80211_rx\09\09\09\09"
module asm "\09.long\09__crc_hostap_80211_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_80211_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_80211_rx\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_80211_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hostap_80211_rx_status = type { i32, i8, i8, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.99 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.prism2_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.124, i32 }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.linux_wlan_ng_prism_hdr = type { i32, i32, [16 x i8], %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val, %struct.linux_wlan_ng_val }
%struct.linux_wlan_ng_val = type { i32, i16, i16, i32 }
%struct.linux_wlan_ng_cap_hdr = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.hostap_radiotap_rx = type { %struct.ieee80211_radiotap_header, i64, i8, i8, i16, i16, i8, i8 }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.hostap_ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.126 }
%union.anon.126 = type { %struct.anon.134 }
%struct.anon.134 = type { [8 x i8], i16, i16, [0 x i8] }
%struct.hostap_bss_info = type { %struct.list_head, i32, i32, [6 x i8], i16, [32 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32 }
%struct.hostap_interface = type { %struct.list_head, ptr, ptr, %struct.net_device_stats, %struct.iw_spy_data, %struct.iw_public_data, i32, %union.anon.125 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%union.anon.125 = type { %struct.hostap_interface_wds }
%struct.hostap_interface_wds = type { [6 x i8] }
%struct.ap_data = type { i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.list_head, [256 x ptr], ptr, i32, i32, i32, %struct.mac_restrictions, i32, %struct.work_struct, ptr, %struct.work_struct, ptr, i16, [128 x ptr], i16, i16, i16, ptr, ptr }
%struct.mac_restrictions = type { i32, i32, %struct.list_head, %struct.spinlock }

@hostap_dump_rx_80211._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: RX signal=%d noise=%d rate=%d len=%d jiffies=%ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_dump_rx_80211\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intersil/hostap/hostap_80211_rx.c\00", [41 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr = internal global ptr @hostap_dump_rx_80211._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hostap_dump_rx_80211._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017   FC=0x%04x (type=%d:%d)%s%s\00", [32 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.5 = internal global ptr @hostap_dump_rx_80211._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" [ToDS]\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [FromDS]\00", [22 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.11 = internal global ptr @hostap_dump_rx_80211._entry.9, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" dur=0x%04x seq=0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.14 = internal global ptr @hostap_dump_rx_80211._entry.12, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017   A1=%pM\00", [20 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.17 = internal global ptr @hostap_dump_rx_80211._entry.15, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A2=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.20 = internal global ptr @hostap_dump_rx_80211._entry.18, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A3=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.23 = internal global ptr @hostap_dump_rx_80211._entry.21, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A4=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.26 = internal global ptr @hostap_dump_rx_80211._entry.24, section ".printk_index", align 4
@hostap_dump_rx_80211._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hostap_dump_rx_80211._entry_ptr.28 = internal global ptr @hostap_dump_rx_80211._entry.27, section ".printk_index", align 4
@prism2_rx_80211._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: dropped management frame with header version %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prism2_rx_80211\00", [16 x i8] zeroinitializer }, align 32
@prism2_rx_80211._entry_ptr = internal global ptr @prism2_rx_80211._entry, section ".printk_index", align 4
@prism2_rx_80211._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: prism2_rx_80211 failed to reallocate skb buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@prism2_rx_80211._entry_ptr.33 = internal global ptr @prism2_rx_80211._entry.31, section ".printk_index", align 4
@freq_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 2417, i32 2422, i32 2427, i32 2432, i32 2437, i32 2442, i32 2447, i32 2452, i32 2457, i32 2462, i32 2467, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: failed to decrypt mgmt::auth from %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hostap_80211_rx\00", [16 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr = internal global ptr @hostap_80211_rx._entry, section ".printk_index", align 4
@hostap_80211_rx._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017%s: RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x)\0A\00", [55 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.38 = internal global ptr @hostap_80211_rx._entry.36, section ".printk_index", align 4
@hostap_80211_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017%s: Rx cannot get skb from fragment cache (morefrag=%d seq=%u frag=%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.41 = internal global ptr @hostap_80211_rx._entry.39, section ".printk_index", align 4
@hostap_80211_rx._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: host decrypted and reassembled frame did not fit skb\0A\00", [36 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.44 = internal global ptr @hostap_80211_rx._entry.42, section ".printk_index", align 4
@hostap_80211_rx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: encryption configured, but RX frame not encrypted (SA=%pM)\0A\00", [62 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.47 = internal global ptr @hostap_80211_rx._entry.45, section ".printk_index", align 4
@hostap_80211_rx._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017%s: dropped unencrypted RX data frame from %pM (drop_unencrypted=1)\0A\00", [57 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.50 = internal global ptr @hostap_80211_rx._entry.48, section ".printk_index", align 4
@hostap_80211_rx._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s: dropped frame from unauthorized port (IEEE 802.1X): ethertype=0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.53 = internal global ptr @hostap_80211_rx._entry.51, section ".printk_index", align 4
@rfc1042_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: skb_clone failed for multicast frame\0A\00", [52 x i8] zeroinitializer }, align 32
@hostap_80211_rx._entry_ptr.56 = internal global ptr @hostap_80211_rx._entry.54, section ".printk_index", align 4
@__kstrtab_hostap_80211_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_80211_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_80211_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_80211_rx to i32), ptr @__kstrtab_hostap_80211_rx, ptr @__kstrtabns_hostap_80211_rx }, section "___ksymtab+hostap_80211_rx", align 4
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@hostap_rx_frame_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: TKIP countermeasures: dropped received packet from %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hostap_rx_frame_decrypt\00", [40 x i8] zeroinitializer }, align 32
@hostap_rx_frame_decrypt._entry_ptr = internal global ptr @hostap_rx_frame_decrypt._entry, section ".printk_index", align 4
@hostap_rx_frame_decrypt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: decryption failed (SA=%pM) res=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@hostap_rx_frame_decrypt._entry_ptr.62 = internal global ptr @hostap_rx_frame_decrypt._entry.60, section ".printk_index", align 4
@hostap_rx_frame_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s: unknown management frame (type=0x%02x, stype=0x%02x) dropped\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_rx_frame_mgmt\00", [43 x i8] zeroinitializer }, align 32
@hostap_rx_frame_mgmt._entry_ptr = internal global ptr @hostap_rx_frame_mgmt._entry, section ".printk_index", align 4
@hostap_rx_frame_mgmt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017%s: hostap_rx_frame_mgmt: dropped unhandled management frame in non-Host AP mode (type=%d:%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@hostap_rx_frame_mgmt._entry_ptr.67 = internal global ptr @hostap_rx_frame_mgmt._entry.65, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hostap_rx_frame_wds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: received WDS[4 addr] frame from unknown TA=%pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hostap_rx_frame_wds\00", [44 x i8] zeroinitializer }, align 32
@hostap_rx_frame_wds._entry_ptr = internal global ptr @hostap_rx_frame_wds._entry, section ".printk_index", align 4
@prism2_frag_cache_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: expiring fragment cache entry seq=%u last_frag=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prism2_frag_cache_find\00", [41 x i8] zeroinitializer }, align 32
@prism2_frag_cache_find._entry_ptr = internal global ptr @prism2_frag_cache_find._entry, section ".printk_index", align 4
@prism2_frag_cache_invalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: could not invalidate fragment cache entry (seq=%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"prism2_frag_cache_invalidate\00", [35 x i8] zeroinitializer }, align 32
@prism2_frag_cache_invalidate._entry_ptr = internal global ptr @prism2_frag_cache_invalidate._entry, section ".printk_index", align 4
@hostap_rx_frame_decrypt_msdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: MSDU decryption/MIC verification failed (SA=%pM keyidx=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hostap_rx_frame_decrypt_msdu\00", [35 x i8] zeroinitializer }, align 32
@hostap_rx_frame_decrypt_msdu._entry_ptr = internal global ptr @hostap_rx_frame_decrypt_msdu._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 802, i64 803]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 8]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 12, i64 0, i64 2, i64 4, i64 7]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 48, i64 221]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 10, i64 256, i64 512]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 29, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 38, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 45, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 49, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 52, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 53, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 54, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 56, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 57, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 96, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 119, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"freq_list\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/intersil/hostap/hostap.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 11, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 825, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 903, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 924, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 936, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 988, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 998, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1026, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"rfc1042_header\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 14, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"bridge_tunnel_header\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 17, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1076, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 662, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 664, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 675, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 502, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 523, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 586, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 231, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 315, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [58 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 703, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__ksymtab_hostap_80211_rx, ptr @hostap_80211_rx._entry, ptr @hostap_80211_rx._entry.36, ptr @hostap_80211_rx._entry.39, ptr @hostap_80211_rx._entry.42, ptr @hostap_80211_rx._entry.45, ptr @hostap_80211_rx._entry.48, ptr @hostap_80211_rx._entry.51, ptr @hostap_80211_rx._entry.54, ptr @hostap_80211_rx._entry_ptr, ptr @hostap_80211_rx._entry_ptr.38, ptr @hostap_80211_rx._entry_ptr.41, ptr @hostap_80211_rx._entry_ptr.44, ptr @hostap_80211_rx._entry_ptr.47, ptr @hostap_80211_rx._entry_ptr.50, ptr @hostap_80211_rx._entry_ptr.53, ptr @hostap_80211_rx._entry_ptr.56, ptr @hostap_dump_rx_80211._entry, ptr @hostap_dump_rx_80211._entry.12, ptr @hostap_dump_rx_80211._entry.15, ptr @hostap_dump_rx_80211._entry.18, ptr @hostap_dump_rx_80211._entry.21, ptr @hostap_dump_rx_80211._entry.24, ptr @hostap_dump_rx_80211._entry.27, ptr @hostap_dump_rx_80211._entry.3, ptr @hostap_dump_rx_80211._entry.9, ptr @hostap_dump_rx_80211._entry_ptr, ptr @hostap_dump_rx_80211._entry_ptr.11, ptr @hostap_dump_rx_80211._entry_ptr.14, ptr @hostap_dump_rx_80211._entry_ptr.17, ptr @hostap_dump_rx_80211._entry_ptr.20, ptr @hostap_dump_rx_80211._entry_ptr.23, ptr @hostap_dump_rx_80211._entry_ptr.26, ptr @hostap_dump_rx_80211._entry_ptr.28, ptr @hostap_dump_rx_80211._entry_ptr.5, ptr @hostap_rx_frame_decrypt._entry, ptr @hostap_rx_frame_decrypt._entry.60, ptr @hostap_rx_frame_decrypt._entry_ptr, ptr @hostap_rx_frame_decrypt._entry_ptr.62, ptr @hostap_rx_frame_decrypt_msdu._entry, ptr @hostap_rx_frame_decrypt_msdu._entry_ptr, ptr @hostap_rx_frame_mgmt._entry, ptr @hostap_rx_frame_mgmt._entry.65, ptr @hostap_rx_frame_mgmt._entry_ptr, ptr @hostap_rx_frame_mgmt._entry_ptr.67, ptr @hostap_rx_frame_wds._entry, ptr @hostap_rx_frame_wds._entry_ptr, ptr @prism2_frag_cache_find._entry, ptr @prism2_frag_cache_find._entry_ptr, ptr @prism2_frag_cache_invalidate._entry, ptr @prism2_frag_cache_invalidate._entry_ptr, ptr @prism2_rx_80211._entry, ptr @prism2_rx_80211._entry.31, ptr @prism2_rx_80211._entry_ptr, ptr @prism2_rx_80211._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @freq_list, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @rfc1042_header, ptr @bridge_tunnel_header, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_rx_80211._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_rx_80211._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_rx_80211._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_80211_rx._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_decrypt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_mgmt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_wds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_frag_cache_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_frag_cache_invalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_rx_frame_decrypt_msdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_dump_rx_80211(ptr noundef %name, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %rx_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %signal = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal, align 4
  %conv = zext i8 %3 to i32
  %noise = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %4 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %noise, align 1
  %conv1 = zext i8 %5 to i32
  %rate = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 3
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rate, align 2
  %conv2 = zext i16 %7 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %9, i32 noundef %10) #13
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp ult i32 %12, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv9 = zext i16 %15 to i32
  %and = lshr i32 %conv9, 2
  %16 = and i32 %and, 3
  %and12 = lshr i32 %conv9, 4
  %17 = and i32 %and12, 15
  %and15 = and i32 %conv9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %and17 = and i32 %conv9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.7, ptr @.str.8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv9, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %cond, ptr noundef nonnull %cond19) #13
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %19)
  %cmp22 = icmp ult i32 %19, 24
  br i1 %cmp22, label %if.end.cleanup.sink.split_crit_edge, label %do.end33

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end33:                                         ; preds = %if.end
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %duration_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %duration_id, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv35 = zext i16 %22 to i32
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %seq_ctrl, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv36 = zext i16 %25 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv35, i32 noundef %conv36) #13
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %addr1) #13
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %addr2) #13
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %addr3) #13
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %27)
  %cmp56 = icmp ugt i32 %27, 29
  br i1 %cmp56, label %do.end61, label %do.end33.cleanup.sink.split_crit_edge

do.end33.cleanup.sink.split_crit_edge:            ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end61:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %addr4) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end61, %do.end33.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prism2_rx_80211(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readonly %rx_stats, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %type2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type2, align 16
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.else13 [
    i16 802, label %if.then
    i16 803, label %entry.if.end15_crit_edge
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %monitor_type = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 66
  %5 = ptrtoint ptr %monitor_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %monitor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp eq i32 %6, 1
  %not.cmp4 = xor i1 %cmp4, true
  %.322 = select i1 %cmp4, i32 144, i32 64
  br label %if.end15

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then, %entry.if.end15_crit_edge
  %cmp54 = phi i1 [ false, %if.else13 ], [ %cmp4, %if.then ], [ false, %entry.if.end15_crit_edge ]
  %cmp137 = phi i1 [ false, %if.else13 ], [ %not.cmp4, %if.then ], [ false, %entry.if.end15_crit_edge ]
  %cmp156 = phi i1 [ false, %if.else13 ], [ false, %if.then ], [ true, %entry.if.end15_crit_edge ]
  %tobool182.not = phi i1 [ true, %if.else13 ], [ false, %if.then ], [ false, %entry.if.end15_crit_edge ]
  %phdrlen.0 = phi i32 [ 0, %if.else13 ], [ %.322, %if.then ], [ 24, %entry.if.end15_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp16 = icmp eq i32 %type, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %11 = lshr i16 %10, 8
  %12 = and i16 %11, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %land.lhs.true.if.end23_crit_edge, label %do.end

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and = zext i16 %12 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %dev, i32 noundef %and) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %8, align 2
  %call25 = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %14) #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub = add i32 %sub.ptr.sub.i.neg, %phdrlen.0
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end23.skb_tailroom.exit_crit_edge

if.end23.skb_tailroom.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i323 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i324 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i325.neg = sub i32 %sub.ptr.rhs.cast.i324, %sub.ptr.lhs.cast.i323
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end23.skb_tailroom.exit_crit_edge
  %cond.i.neg = phi i32 [ %sub.ptr.sub.i325.neg, %cond.false.i ], [ 0, %if.end23.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp29 = icmp sgt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.neg)
  %cmp31 = icmp sgt i32 %cond.i.neg, 0
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.then33, label %skb_tailroom.exit.if.end53_crit_edge

skb_tailroom.exit.if.end53_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then33:                                        ; preds = %skb_tailroom.exit
  %25 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %26 = tail call i32 @llvm.smax.i32(i32 %cond.i.neg, i32 0)
  %call42 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %25, i32 noundef %26, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then33.if.end53_crit_edge, label %do.end47

if.then33.if.end53_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end47:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %dev) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end53:                                         ; preds = %if.then33.if.end53_crit_edge, %skb_tailroom.exit.if.end53_crit_edge
  br i1 %cmp54, label %if.then56, label %if.else136

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %phdrlen.0) #10
  %27 = call ptr @memset(ptr %call57, i32 0, i32 %phdrlen.0)
  %28 = ptrtoint ptr %call57 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 68, ptr %call57, align 1
  %msglen = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 1
  %29 = ptrtoint ptr %msglen to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 144, ptr %msglen, align 1
  %devname = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 2
  %30 = call ptr @memcpy(ptr %devname, ptr %dev, i32 16)
  %hosttime = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 3
  %31 = ptrtoint ptr %hosttime to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 4164, ptr %hosttime, align 1
  %status = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 0, ptr %status, align 1
  %len = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 4, ptr %len, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %data64 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %data64 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %data64, align 1
  %mactime = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 4
  %36 = ptrtoint ptr %mactime to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 8260, ptr %mactime, align 1
  %status67 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %status67 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 0, ptr %status67, align 1
  %len69 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %len69 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 4, ptr %len69, align 1
  %39 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_stats, align 4
  %data71 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %data71 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %data71, align 1
  %channel = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 5
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 12356, ptr %channel, align 1
  %status74 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %status74 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 1, ptr %status74, align 1
  %len76 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %len76 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 4, ptr %len76, align 1
  %data78 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %data78 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %data78, align 1
  %rssi = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 6
  %46 = ptrtoint ptr %rssi to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 16452, ptr %rssi, align 1
  %status81 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %status81 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 1, ptr %status81, align 1
  %len83 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %len83 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 4, ptr %len83, align 1
  %data85 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %data85 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %data85, align 1
  %sq = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 7
  %50 = ptrtoint ptr %sq to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 20548, ptr %sq, align 1
  %status88 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %status88 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 1, ptr %status88, align 1
  %len90 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 7, i32 2
  %52 = ptrtoint ptr %len90 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 4, ptr %len90, align 1
  %data92 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %data92 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %data92, align 1
  %signal = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 8
  %54 = ptrtoint ptr %signal to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 24644, ptr %signal, align 1
  %status95 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %status95 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 0, ptr %status95, align 1
  %len97 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %len97 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 4, ptr %len97, align 1
  %signal98 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %57 = ptrtoint ptr %signal98 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %signal98, align 4
  %conv99 = zext i8 %58 to i32
  %data101 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 8, i32 3
  %59 = ptrtoint ptr %data101 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %conv99, ptr %data101, align 1
  %noise = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 9
  %60 = ptrtoint ptr %noise to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 28740, ptr %noise, align 1
  %status104 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 9, i32 1
  %61 = ptrtoint ptr %status104 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 0, ptr %status104, align 1
  %len106 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 9, i32 2
  %62 = ptrtoint ptr %len106 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 4, ptr %len106, align 1
  %noise107 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %63 = ptrtoint ptr %noise107 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %noise107, align 1
  %conv108 = zext i8 %64 to i32
  %data110 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 9, i32 3
  %65 = ptrtoint ptr %data110 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %conv108, ptr %data110, align 1
  %rate = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 10
  %66 = ptrtoint ptr %rate to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 32836, ptr %rate, align 1
  %status113 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 10, i32 1
  %67 = ptrtoint ptr %status113 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 0, ptr %status113, align 1
  %len115 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 10, i32 2
  %68 = ptrtoint ptr %len115 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 4, ptr %len115, align 1
  %rate116 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 3
  %69 = ptrtoint ptr %rate116 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rate116, align 2
  %71 = udiv i16 %70, 5
  %div = zext i16 %71 to i32
  %data119 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 10, i32 3
  %72 = ptrtoint ptr %data119 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %div, ptr %data119, align 1
  %istx = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 11
  %73 = ptrtoint ptr %istx to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 36932, ptr %istx, align 1
  %status122 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 11, i32 1
  %74 = ptrtoint ptr %status122 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 0, ptr %status122, align 1
  %len124 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 11, i32 2
  %75 = ptrtoint ptr %len124 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 4, ptr %len124, align 1
  %data126 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 11, i32 3
  %76 = ptrtoint ptr %data126 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 0, ptr %data126, align 1
  %frmlen = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 12
  %77 = ptrtoint ptr %frmlen to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 41028, ptr %frmlen, align 1
  %status129 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %status129 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %status129, align 1
  %len131 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 12, i32 2
  %79 = ptrtoint ptr %len131 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 4, ptr %len131, align 1
  %len132 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len132 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len132, align 4
  %sub133 = sub i32 %81, %phdrlen.0
  %data135 = getelementptr inbounds %struct.linux_wlan_ng_prism_hdr, ptr %call57, i32 0, i32 12, i32 3
  %82 = ptrtoint ptr %data135 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %sub133, ptr %data135, align 1
  br label %if.end178

if.else136:                                       ; preds = %if.end53
  br i1 %cmp137, label %if.then139, label %if.else155

if.then139:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #12
  %call141 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %phdrlen.0) #10
  %83 = call ptr @memset(ptr %call141, i32 0, i32 %phdrlen.0)
  %84 = ptrtoint ptr %call141 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 -2145316863, ptr %call141, align 1
  %length = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 1
  %85 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %phdrlen.0, ptr %length, align 1
  %86 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_stats, align 4
  %conv143 = zext i32 %87 to i64
  %mactime144 = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 2
  %88 = ptrtoint ptr %mactime144 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %conv143, ptr %mactime144, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %conv145 = zext i32 %89 to i64
  %hosttime146 = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 3
  %90 = ptrtoint ptr %hosttime146 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %conv145, ptr %hosttime146, align 1
  %phytype = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 4
  %91 = ptrtoint ptr %phytype to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 4, ptr %phytype, align 1
  %channel147 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 33
  %92 = ptrtoint ptr %channel147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %channel147, align 4
  %channel148 = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 5
  %94 = ptrtoint ptr %channel148 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %channel148, align 1
  %rate149 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 3
  %95 = ptrtoint ptr %rate149 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rate149, align 2
  %conv150 = zext i16 %96 to i32
  %datarate = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 6
  %97 = ptrtoint ptr %datarate to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %conv150, ptr %datarate, align 1
  %antenna = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 7
  %98 = ptrtoint ptr %antenna to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 0, ptr %antenna, align 1
  %priority = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 8
  %99 = ptrtoint ptr %priority to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 0, ptr %priority, align 1
  %ssi_type = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 9
  %100 = ptrtoint ptr %ssi_type to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 3, ptr %ssi_type, align 1
  %signal151 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %101 = ptrtoint ptr %signal151 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %signal151, align 4
  %conv152 = zext i8 %102 to i32
  %ssi_signal = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 10
  %103 = ptrtoint ptr %ssi_signal to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %conv152, ptr %ssi_signal, align 1
  %noise153 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %104 = ptrtoint ptr %noise153 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %noise153, align 1
  %conv154 = zext i8 %105 to i32
  %ssi_noise = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 11
  %106 = ptrtoint ptr %ssi_noise to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %conv154, ptr %ssi_noise, align 1
  %preamble = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 12
  %107 = ptrtoint ptr %preamble to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 0, ptr %preamble, align 1
  %encoding = getelementptr inbounds %struct.linux_wlan_ng_cap_hdr, ptr %call141, i32 0, i32 13
  %108 = ptrtoint ptr %encoding to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 1, ptr %encoding, align 1
  br label %if.end178

if.else155:                                       ; preds = %if.else136
  br i1 %cmp156, label %if.then158, label %if.else155.if.end178_crit_edge

if.else155.if.end178_crit_edge:                   ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then158:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #12
  %call160 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %phdrlen.0) #10
  %109 = call ptr @memset(ptr %call160, i32 0, i32 %phdrlen.0)
  %conv161 = trunc i32 %phdrlen.0 to i16
  %110 = shl nuw i16 %conv161, 8
  %it_len = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call160, i32 0, i32 2
  %111 = ptrtoint ptr %it_len to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %it_len, align 1
  %it_present = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %call160, i32 0, i32 3
  %112 = ptrtoint ptr %it_present to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 1828716544, ptr %it_present, align 1
  %113 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_stats, align 4
  %conv165 = zext i32 %114 to i64
  %115 = tail call i64 @llvm.bswap.i64(i64 %conv165)
  %tsft = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 1
  %116 = ptrtoint ptr %tsft to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %tsft, align 1
  %channel166 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 33
  %117 = ptrtoint ptr %channel166 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %channel166, align 4
  %sub167 = add i32 %118, -1
  %arrayidx = getelementptr [14 x i32], ptr @freq_list, i32 0, i32 %sub167
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx, align 4
  %conv168 = trunc i32 %120 to i16
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv168)
  %chan_freq = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 4
  %122 = ptrtoint ptr %chan_freq to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %121, ptr %chan_freq, align 1
  %chan_flags = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 5
  %123 = ptrtoint ptr %chan_flags to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 -24576, ptr %chan_flags, align 1
  %rate169 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 3
  %124 = ptrtoint ptr %rate169 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %rate169, align 2
  %126 = udiv i16 %125, 5
  %conv172 = trunc i16 %126 to i8
  %rate173 = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 2
  %127 = ptrtoint ptr %rate173 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv172, ptr %rate173, align 1
  %signal174 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %128 = ptrtoint ptr %signal174 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %signal174, align 4
  %dbm_antsignal = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 6
  %130 = ptrtoint ptr %dbm_antsignal to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %dbm_antsignal, align 1
  %noise175 = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %131 = ptrtoint ptr %noise175 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %noise175, align 1
  %dbm_antnoise = getelementptr inbounds %struct.hostap_radiotap_rx, ptr %call160, i32 0, i32 7
  %133 = ptrtoint ptr %dbm_antnoise to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %dbm_antnoise, align 1
  br label %if.end178

if.end178:                                        ; preds = %if.then158, %if.else155.if.end178_crit_edge, %if.then139, %if.then56
  %len179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %134 = ptrtoint ptr %len179 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len179, align 4
  %sub180 = sub i32 %135, %phdrlen.0
  %136 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %dev, ptr %136, align 8
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 4
  %140 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i328 = ptrtoint ptr %139 to i32
  %sub.ptr.rhs.cast.i329 = ptrtoint ptr %141 to i32
  %sub.ptr.sub.i330 = sub i32 %sub.ptr.lhs.cast.i328, %sub.ptr.rhs.cast.i329
  %conv.i = trunc i32 %sub.ptr.sub.i330 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %142 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call181 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %call25) #10
  br i1 %tobool182.not, label %if.end178.if.end185_crit_edge, label %if.then183

if.end178.if.end185_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  %call184 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %phdrlen.0) #10
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end178.if.end185_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %143 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %144 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 4, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %145 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call187 = tail call i32 @netif_rx(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %do.end47, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end47 ], [ %sub180, %if.end185 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_80211_get_hdrlen(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_80211_rx(ptr nocapture noundef %dev, ptr noundef %skb, ptr noundef %rx_stats) #0 align 64 {
entry:
  %dst = alloca [6 x i8], align 1
  %crypt = alloca ptr, align 4
  %sta = alloca ptr, align 4
  %wstats = alloca %struct.iw_quality, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #10
  %0 = call ptr @memset(ptr %dst, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypt) #10
  %1 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %crypt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta) #10
  %2 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sta, align 4
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1, align 4
  %stats = getelementptr i8, ptr %dev, i32 2320
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stats, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %stats, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr i8, ptr %dev, i32 2328
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %10, %8
  store i32 %add, ptr %rx_bytes, align 4
  %ddev = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp = icmp ult i32 %15, 10
  br i1 %cmp, label %entry.rx_dropped_crit_edge, label %if.end

entry.rx_dropped_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %14, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv = zext i16 %18 to i32
  %and = and i16 %18, 12
  %and7 = and i16 %18, 240
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %seq_ctrl, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv9 = zext i16 %21 to i32
  %and10 = and i32 %conv9, 15
  %call12 = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %17) #10
  %spy_data = getelementptr i8, ptr %12, i32 2412
  %22 = ptrtoint ptr %spy_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spy_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp13 = icmp sgt i32 %23, 0
  br i1 %cmp13, label %if.then15, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wstats) #10
  %24 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 1
  %25 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 2
  %26 = getelementptr inbounds %struct.iw_quality, ptr %wstats, i32 0, i32 3
  %signal = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %27 = ptrtoint ptr %wstats to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %wstats, align 1
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %signal, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %24, align 1
  %noise = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %31 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %noise, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %25, align 1
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 30, ptr %26, align 1
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  call void @wireless_spy_update(ptr noundef %12, ptr noundef %addr2, ptr noundef nonnull %wstats) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wstats) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %ap = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 22
  %35 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ap, align 4
  %call18 = call i32 @hostap_update_rx_stats(ptr noundef %36, ptr noundef %14, ptr noundef %rx_stats) #10
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 30
  %37 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp19 = icmp eq i32 %38, 6
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @prism2_rx_80211(ptr noundef %12, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef 0) #10
  %stats.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36
  %39 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 2
  %41 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %42, %call.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %cleanup523

if.end22:                                         ; preds = %if.end17
  %host_decrypt = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 78
  %43 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %if.end22.if.end60_crit_edge, label %if.then23

if.end22.if.end60_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then23:                                        ; preds = %if.end22
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %add25 = add i32 %call12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add25)
  %cmp26.not = icmp ult i32 %46, %add25
  br i1 %cmp26.not, label %if.then23.if.end32_crit_edge, label %if.then28

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %48, i32 %add25
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %51 = lshr i8 %50, 6
  %52 = zext i8 %51 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then23.if.end32_crit_edge
  %idx.0 = phi i32 [ %52, %if.then28 ], [ 0, %if.then23.if.end32_crit_edge ]
  %arrayidx34 = getelementptr %struct.local_info, ptr %4, i32 0, i32 75, i32 2, i32 %idx.0
  %53 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx34, align 4
  %55 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %crypt, align 4
  %56 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sta, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %57 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr1, align 2
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool38.not = icmp eq i8 %59, 0
  br i1 %tobool38.not, label %if.end32.if.then40_crit_edge, label %lor.lhs.false

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end32
  %bcrx_sta_key = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 81
  %60 = ptrtoint ptr %bcrx_sta_key to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bcrx_sta_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool39.not = icmp eq i32 %61, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %call41 = call i32 @hostap_handle_sta_crypto(ptr noundef %4, ptr noundef %14, ptr noundef nonnull %crypt, ptr noundef nonnull %sta) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %lor.lhs.false.if.end42_crit_edge
  %62 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %crypt, align 4
  %tobool43.not = icmp eq ptr %63, null
  br i1 %tobool43.not, label %if.end42.if.end51_crit_edge, label %land.lhs.true

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end42
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %cmp44 = icmp eq ptr %65, null
  br i1 %cmp44, label %land.lhs.true.if.then50_crit_edge, label %lor.lhs.false46

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

lor.lhs.false46:                                  ; preds = %land.lhs.true
  %decrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %decrypt_mpdu, align 4
  %cmp48 = icmp eq ptr %67, null
  br i1 %cmp48, label %lor.lhs.false46.if.then50_crit_edge, label %lor.lhs.false46.if.end51_crit_edge

lor.lhs.false46.if.end51_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

lor.lhs.false46.if.then50_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false46.if.then50_crit_edge, %land.lhs.true.if.then50_crit_edge
  %68 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %crypt, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %lor.lhs.false46.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  %69 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crypt, align 4
  %tobool52.not = icmp ne ptr %70, null
  %and55 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %or.cond = select i1 %tobool52.not, i1 true, i1 %tobool56.not
  br i1 %or.cond, label %if.end51.if.end60_crit_edge, label %cleanup

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

cleanup:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %rx_discards_wep_undecryptable = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 28, i32 18
  %71 = ptrtoint ptr %rx_discards_wep_undecryptable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_discards_wep_undecryptable, align 4
  %inc58 = add i32 %72, 1
  store i32 %inc58, ptr %rx_discards_wep_undecryptable, align 4
  br label %rx_dropped

if.end60:                                         ; preds = %if.end51.if.end60_crit_edge, %if.end22.if.end60_crit_edge
  %trunc = trunc i16 %and to i4
  %73 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.76)
  switch i4 %trunc, label %if.end60.if.end88_crit_edge [
    i4 -8, label %if.end92
    i4 0, label %land.lhs.true68
  ]

if.end60.if.end88_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

land.lhs.true68:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 176, i16 %and7)
  %cmp70 = icmp ne i16 %and7, 176
  %and74 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %or.cond784 = select i1 %cmp70, i1 true, i1 %tobool75.not
  br i1 %or.cond784, label %land.lhs.true68.if.end88_crit_edge, label %land.lhs.true76

land.lhs.true68.if.end88_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

land.lhs.true76:                                  ; preds = %land.lhs.true68
  %74 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool78.not = icmp eq i32 %75, 0
  br i1 %tobool78.not, label %land.lhs.true76.if.end88_crit_edge, label %land.lhs.true79

land.lhs.true76.if.end88_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %76 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %crypt, align 4
  %call80 = call fastcc i32 @hostap_rx_frame_decrypt(ptr noundef %4, ptr noundef %skb, ptr noundef %77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end, label %land.lhs.true79.if.end88_crit_edge

land.lhs.true79.if.end88_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

do.end:                                           ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  %addr285 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %12, ptr noundef %addr285) #13
  br label %rx_dropped

if.end88:                                         ; preds = %land.lhs.true79.if.end88_crit_edge, %land.lhs.true76.if.end88_crit_edge, %land.lhs.true68.if.end88_crit_edge, %if.end60.if.end88_crit_edge
  %78 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp.i = icmp eq i32 %79, 3
  br i1 %cmp.i, label %if.then.i, label %if.end88.if.end.i_crit_edge

if.end88.if.end.i_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data, align 4
  %call.i797 = call i32 @hostap_update_sta_ps(ptr noundef %4, ptr noundef %81) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end88.if.end.i_crit_edge
  %hostapd.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 68
  %82 = ptrtoint ptr %hostapd.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hostapd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i = icmp ne i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cmp1.i = icmp eq i16 %and, 0
  %or.cond.i = and i1 %cmp1.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then3.i, label %if.end24.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %and7)
  %cmp5.i = icmp eq i16 %and7, 128
  br i1 %cmp5.i, label %land.lhs.true7.i, label %if.then3.i.if.end16.i_crit_edge

if.then3.i.if.end16.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

land.lhs.true7.i:                                 ; preds = %if.then3.i
  %84 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp9.i = icmp eq i32 %85, 3
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true7.i.if.end16.i_crit_edge

land.lhs.true7.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %call12.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.if.end16.i_crit_edge, label %if.then14.i

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = getelementptr inbounds %struct.anon, ptr %call12.i, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  call void @hostap_rx(ptr noundef %88, ptr noundef nonnull %call12.i, ptr noundef %rx_stats) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then11.i.if.end16.i_crit_edge, %land.lhs.true7.i.if.end16.i_crit_edge, %if.then3.i.if.end16.i_crit_edge
  %apdevstats.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 71
  %89 = ptrtoint ptr %apdevstats.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %apdevstats.i, align 4
  %inc.i798 = add i32 %90, 1
  store i32 %inc.i798, ptr %apdevstats.i, align 4
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %rx_bytes.i799 = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 71, i32 2
  %93 = ptrtoint ptr %rx_bytes.i799 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_bytes.i799, align 4
  %add.i800 = add i32 %94, %92
  store i32 %add.i800, ptr %rx_bytes.i799, align 4
  %apdev.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 70
  %95 = ptrtoint ptr %apdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %apdev.i, align 4
  %cmp18.i = icmp eq ptr %96, null
  br i1 %cmp18.i, label %if.end16.i.rx_dropped_crit_edge, label %if.end21.i

if.end16.i.rx_dropped_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = call i32 @prism2_rx_80211(ptr noundef nonnull %96, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef 1) #10
  br label %rx_exit

if.end24.i:                                       ; preds = %if.end.i
  %97 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp26.i = icmp eq i32 %98, 3
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.end24.i
  %99 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.77)
  switch i4 %trunc, label %do.end.i [
    i4 0, label %if.then28.i.if.end41.i_crit_edge
    i4 4, label %if.then28.i.if.end41.i_crit_edge902
  ]

if.then28.i.if.end41.i_crit_edge902:              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then28.i.if.end41.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

do.end.i:                                         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %103 = lshr exact i16 %and, 2
  %104 = zext i16 %103 to i32
  %105 = lshr exact i16 %and7, 4
  %106 = zext i16 %105 to i32
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %102, i32 noundef %104, i32 noundef %106) #13
  br label %rx_dropped

if.end41.i:                                       ; preds = %if.then28.i.if.end41.i_crit_edge, %if.then28.i.if.end41.i_crit_edge902
  %107 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  call void @hostap_rx(ptr noundef %109, ptr noundef %skb, ptr noundef %rx_stats) #10
  br label %rx_exit

if.else.i:                                        ; preds = %if.end24.i
  br i1 %cmp1.i, label %land.lhs.true45.i, label %if.else.i.do.end69.i_crit_edge

if.else.i.do.end69.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69.i

land.lhs.true45.i:                                ; preds = %if.else.i
  %110 = add nsw i16 %and7, -16
  %111 = lshr exact i16 %110, 4
  %trunc880 = trunc i16 %111 to i12
  %112 = zext i12 %trunc880 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.78)
  switch i12 %trunc880, label %land.lhs.true45.i.do.end69.i_crit_edge [
    i12 7, label %land.lhs.true45.i.if.then52.i_crit_edge
    i12 4, label %land.lhs.true45.i.if.then52.i_crit_edge903
    i12 0, label %land.lhs.true45.i.rx_dropped_crit_edge
    i12 2, label %land.lhs.true45.i.rx_dropped_crit_edge904
  ]

land.lhs.true45.i.rx_dropped_crit_edge904:        ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

land.lhs.true45.i.rx_dropped_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

land.lhs.true45.i.if.then52.i_crit_edge903:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52.i

land.lhs.true45.i.if.then52.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52.i

land.lhs.true45.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69.i

if.then52.i:                                      ; preds = %land.lhs.true45.i.if.then52.i_crit_edge, %land.lhs.true45.i.if.then52.i_crit_edge903
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %114)
  %cmp.i.i = icmp ult i32 %114, 36
  br i1 %cmp.i.i, label %if.then52.i.rx_dropped_crit_edge, label %if.end.i.i

if.then52.i.rx_dropped_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end.i.i:                                       ; preds = %if.then52.i
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  %sub.i.i = add i32 %114, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp337.i.i = icmp sgt i32 %sub.i.i, 1
  br i1 %cmp337.i.i, label %while.body.preheader.i.i, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i
  %variable.i.i = getelementptr inbounds %struct.hostap_ieee80211_mgmt, ptr %116, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %rsn_len.047.i.i = phi i32 [ %rsn_len.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %wpa_len.046.i.i = phi i32 [ %wpa_len.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %ssid_len.045.i.i = phi i32 [ %ssid_len.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %rsn.044.i.i = phi ptr [ %rsn.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ null, %while.body.preheader.i.i ]
  %wpa.043.i.i = phi ptr [ %wpa.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ null, %while.body.preheader.i.i ]
  %ssid.042.i.i = phi ptr [ %ssid.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ null, %while.body.preheader.i.i ]
  %pos.040.i.i = phi ptr [ %add.ptr60.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %variable.i.i, %while.body.preheader.i.i ]
  %chan.039.i.i = phi i32 [ %chan.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %left.038.i.i = phi i32 [ %sub56.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %sub.i.i, %while.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i8, ptr %pos.040.i.i, i32 1
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %118 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %left.038.i.i, i32 %add.i.i)
  %cmp4.i.i = icmp ult i32 %left.038.i.i, %add.i.i
  br i1 %cmp4.i.i, label %while.body.i.i.rx_dropped_crit_edge, label %if.end7.i.i

while.body.i.i.rx_dropped_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end7.i.i:                                      ; preds = %while.body.i.i
  %119 = ptrtoint ptr %pos.040.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pos.040.i.i, align 1
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %120, label %if.end7.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 -35, label %sw.bb11.i.i
    i8 48, label %sw.bb40.i.i
    i8 3, label %sw.bb44.i.i
  ]

if.end7.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %pos.040.i.i, i32 2
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp14.i.i = icmp ugt i8 %118, 3
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %sw.bb11.i.i.sw.epilog.i.i_crit_edge

sw.bb11.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb11.i.i
  %arrayidx16.i.i = getelementptr i8, ptr %pos.040.i.i, i32 2
  %122 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx16.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp18.i.i = icmp eq i8 %123, 0
  br i1 %cmp18.i.i, label %land.lhs.true20.i.i, label %land.lhs.true.i.i.sw.epilog.i.i_crit_edge

land.lhs.true.i.i.sw.epilog.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx21.i.i = getelementptr i8, ptr %pos.040.i.i, i32 3
  %124 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %125)
  %cmp23.i.i = icmp eq i8 %125, 80
  br i1 %cmp23.i.i, label %land.lhs.true25.i.i, label %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge

land.lhs.true20.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true20.i.i
  %arrayidx26.i.i = getelementptr i8, ptr %pos.040.i.i, i32 4
  %126 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx26.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %127)
  %cmp28.i.i = icmp eq i8 %127, -14
  br i1 %cmp28.i.i, label %land.lhs.true30.i.i, label %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge

land.lhs.true25.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

land.lhs.true30.i.i:                              ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx31.i.i = getelementptr i8, ptr %pos.040.i.i, i32 5
  %128 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx31.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %129)
  %cmp33.i.i = icmp eq i8 %129, 1
  %spec.select.i.i = select i1 %cmp33.i.i, ptr %pos.040.i.i, ptr %wpa.043.i.i
  %spec.select1.i.i = select i1 %cmp33.i.i, i32 %add.i.i, i32 %wpa_len.046.i.i
  br label %sw.epilog.i.i

sw.bb40.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb44.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp47.not.i.i = icmp eq i8 %118, 0
  br i1 %cmp47.not.i.i, label %sw.bb44.i.i.sw.epilog.i.i_crit_edge, label %if.then49.i.i

sw.bb44.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

if.then49.i.i:                                    ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx50.i.i = getelementptr i8, ptr %pos.040.i.i, i32 2
  %130 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx50.i.i, align 1
  %conv51.i.i = zext i8 %131 to i32
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then49.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge, %sw.bb40.i.i, %land.lhs.true30.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge, %sw.bb11.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge
  %chan.1.i.i = phi i32 [ %chan.039.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %conv51.i.i, %if.then49.i.i ], [ %chan.039.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %chan.039.i.i, %sw.bb40.i.i ], [ %chan.039.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %chan.039.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %chan.039.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %chan.039.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %chan.039.i.i, %sw.bb.i.i ], [ %chan.039.i.i, %land.lhs.true30.i.i ]
  %ssid.1.i.i = phi ptr [ %ssid.042.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %ssid.042.i.i, %if.then49.i.i ], [ %ssid.042.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %ssid.042.i.i, %sw.bb40.i.i ], [ %ssid.042.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %ssid.042.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %ssid.042.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %ssid.042.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %add.ptr.i.i, %sw.bb.i.i ], [ %ssid.042.i.i, %land.lhs.true30.i.i ]
  %wpa.1.i.i = phi ptr [ %wpa.043.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %if.then49.i.i ], [ %wpa.043.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %sw.bb40.i.i ], [ %wpa.043.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %wpa.043.i.i, %sw.bb.i.i ], [ %spec.select.i.i, %land.lhs.true30.i.i ]
  %rsn.1.i.i = phi ptr [ %rsn.044.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %rsn.044.i.i, %if.then49.i.i ], [ %rsn.044.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %pos.040.i.i, %sw.bb40.i.i ], [ %rsn.044.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %rsn.044.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %rsn.044.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %rsn.044.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %rsn.044.i.i, %sw.bb.i.i ], [ %rsn.044.i.i, %land.lhs.true30.i.i ]
  %ssid_len.1.i.i = phi i32 [ %ssid_len.045.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %ssid_len.045.i.i, %if.then49.i.i ], [ %ssid_len.045.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %ssid_len.045.i.i, %sw.bb40.i.i ], [ %ssid_len.045.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %ssid_len.045.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %ssid_len.045.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %ssid_len.045.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %conv.i.i, %sw.bb.i.i ], [ %ssid_len.045.i.i, %land.lhs.true30.i.i ]
  %wpa_len.1.i.i = phi i32 [ %wpa_len.046.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %if.then49.i.i ], [ %wpa_len.046.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %sw.bb40.i.i ], [ %wpa_len.046.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %wpa_len.046.i.i, %sw.bb.i.i ], [ %spec.select1.i.i, %land.lhs.true30.i.i ]
  %rsn_len.1.i.i = phi i32 [ %rsn_len.047.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge ], [ %rsn_len.047.i.i, %if.then49.i.i ], [ %rsn_len.047.i.i, %sw.bb44.i.i.sw.epilog.i.i_crit_edge ], [ %add.i.i, %sw.bb40.i.i ], [ %rsn_len.047.i.i, %land.lhs.true25.i.i.sw.epilog.i.i_crit_edge ], [ %rsn_len.047.i.i, %land.lhs.true20.i.i.sw.epilog.i.i_crit_edge ], [ %rsn_len.047.i.i, %land.lhs.true.i.i.sw.epilog.i.i_crit_edge ], [ %rsn_len.047.i.i, %sw.bb11.i.i.sw.epilog.i.i_crit_edge ], [ %rsn_len.047.i.i, %sw.bb.i.i ], [ %rsn_len.047.i.i, %land.lhs.true30.i.i ]
  %sub56.i.i = sub nsw i32 %left.038.i.i, %add.i.i
  %add.ptr60.i.i = getelementptr i8, ptr %pos.040.i.i, i32 %add.i.i
  %cmp3.i.i = icmp sgt i32 %sub56.i.i, 1
  br i1 %cmp3.i.i, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %sw.epilog.i.i.while.end.i.i_crit_edge

sw.epilog.i.i.while.end.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %sw.epilog.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge
  %chan.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.while.end.i.i_crit_edge ], [ %chan.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %ssid.0.lcssa.i.i = phi ptr [ null, %if.end.i.i.while.end.i.i_crit_edge ], [ %ssid.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %wpa.0.lcssa.i.i = phi ptr [ null, %if.end.i.i.while.end.i.i_crit_edge ], [ %wpa.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %rsn.0.lcssa.i.i = phi ptr [ null, %if.end.i.i.while.end.i.i_crit_edge ], [ %rsn.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %ssid_len.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.while.end.i.i_crit_edge ], [ %ssid_len.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %wpa_len.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.while.end.i.i_crit_edge ], [ %wpa_len.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %rsn_len.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.while.end.i.i_crit_edge ], [ %rsn_len.1.i.i, %sw.epilog.i.i.while.end.i.i_crit_edge ]
  %132 = call i32 @llvm.umin.i32(i32 %wpa_len.0.lcssa.i.i, i32 64) #10
  %133 = call i32 @llvm.umin.i32(i32 %rsn_len.0.lcssa.i.i, i32 64) #10
  %134 = call i32 @llvm.umin.i32(i32 %ssid_len.0.lcssa.i.i, i32 32) #10
  %lock.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #10
  %bssid.i.i = getelementptr inbounds %struct.hostap_ieee80211_mgmt, ptr %116, i32 0, i32 4
  %bss_list.i.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 128
  %135 = ptrtoint ptr %bss_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %ptr.027.i.i.i = load ptr, ptr %bss_list.i.i.i, align 4
  %cmp.i.not28.i.i.i = icmp eq ptr %ptr.027.i.i.i, %bss_list.i.i.i
  br i1 %cmp.i.not28.i.i.i, label %while.end.i.i.if.then76.i.i_crit_edge, label %for.body.lr.ph.i.i.i

while.end.i.i.if.then76.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76.i.i

for.body.lr.ph.i.i.i:                             ; preds = %while.end.i.i
  %cmp4.i.i.i = icmp eq ptr %ssid.0.lcssa.i.i, null
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %ptr.029.i.i.i = phi ptr [ %ptr.027.i.i.i, %for.body.lr.ph.i.i.i ], [ %ptr.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %bssid2.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.029.i.i.i, i32 0, i32 3
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid2.i.i.i, ptr noundef dereferenceable(6) %bssid.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %ssid_len5.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.029.i.i.i, i32 0, i32 6
  %136 = ptrtoint ptr %ssid_len5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ssid_len5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %134)
  %cmp6.i.i.i = icmp eq i32 %137, %134
  br i1 %cmp6.i.i.i, label %land.lhs.true7.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %ssid8.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.029.i.i.i, i32 0, i32 5
  %bcmp25.i.i.i = call i32 @bcmp(ptr nonnull %ssid.0.lcssa.i.i, ptr %ssid8.i.i.i, i32 %134) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp25.i.i.i)
  %cmp11.i.i.i = icmp eq i32 %bcmp25.i.i.i, 0
  br i1 %cmp11.i.i.i, label %land.lhs.true7.i.i.i.if.then.i.i.i_crit_edge, label %land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

land.lhs.true7.i.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.029.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge

if.then.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.029.i.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %140 = ptrtoint ptr %ptr.029.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ptr.029.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev1.i.i.i.i.i.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %141, ptr %139, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge
  %144 = ptrtoint ptr %bss_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bss_list.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ptr.029.i.i.i, ptr noundef %bss_list.i.i.i, ptr noundef %145) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.__hostap_get_bss.exit.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.__hostap_get_bss.exit.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hostap_get_bss.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %ptr.029.i.i.i, ptr %prev1.i.i2.i.i.i.i, align 4
  %147 = ptrtoint ptr %ptr.029.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %ptr.029.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.029.i.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %bss_list.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %149 = ptrtoint ptr %bss_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %ptr.029.i.i.i, ptr %bss_list.i.i.i, align 4
  br label %__hostap_get_bss.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %150 = ptrtoint ptr %ptr.029.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %ptr.0.i.i.i = load ptr, ptr %ptr.029.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %ptr.0.i.i.i, %bss_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.inc.i.i.i.if.then76.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.if.then76.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76.i.i

__hostap_get_bss.exit.i.i:                        ; preds = %if.end.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.__hostap_get_bss.exit.i.i_crit_edge
  %cmp74.i.i = icmp eq ptr %ptr.029.i.i.i, null
  br i1 %cmp74.i.i, label %__hostap_get_bss.exit.i.i.if.then76.i.i_crit_edge, label %__hostap_get_bss.exit.i.i.if.then81.i.i_crit_edge

__hostap_get_bss.exit.i.i.if.then81.i.i_crit_edge: ; preds = %__hostap_get_bss.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81.i.i

__hostap_get_bss.exit.i.i.if.then76.i.i_crit_edge: ; preds = %__hostap_get_bss.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76.i.i

if.then76.i.i:                                    ; preds = %__hostap_get_bss.exit.i.i.if.then76.i.i_crit_edge, %for.inc.i.i.i.if.then76.i.i_crit_edge, %while.end.i.i.if.then76.i.i_crit_edge
  %num_bss_info.i.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 129
  %151 = ptrtoint ptr %num_bss_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_bss_info.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %152)
  %cmp.i2.i.i = icmp sgt i32 %152, 63
  br i1 %cmp.i2.i.i, label %if.then.i4.i.i, label %if.else.i.i.i

if.then.i4.i.i:                                   ; preds = %if.then76.i.i
  %prev.i.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 128, i32 1
  %153 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %154) #10
  br i1 %call.i.i.i3.i.i, label %if.end.i.i.i7.i.i, label %if.then.i4.i.i.list_del.exit.i.i.i_crit_edge

if.then.i4.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.then.i4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i.i

if.end.i.i.i7.i.i:                                ; preds = %if.then.i4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %prev.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %prev.i.i.i5.i.i, align 4
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %154, align 4
  %prev1.i.i.i.i6.i.i = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i.i.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %156, ptr %prev1.i.i.i.i6.i.i, align 4
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %158, ptr %156, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i7.i.i, %if.then.i4.i.i.list_del.exit.i.i.i_crit_edge
  %161 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 256 to ptr), ptr %154, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %162 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %163 = ptrtoint ptr %num_bss_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_bss_info.i.i.i, align 4
  %dec.i.i.i = add i32 %164, -1
  store i32 %dec.i.i.i, ptr %num_bss_info.i.i.i, align 4
  br label %if.end4.i.i.i

if.else.i.i.i:                                    ; preds = %if.then76.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %165 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %165, i32 noundef 2592, i32 noundef 204) #15
  %cmp2.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp2.i.i.i, label %if.else.i.i.i.if.end96.i.i_crit_edge, label %if.else.i.i.i.if.end4.i.i.i_crit_edge

if.else.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.else.i.i.i.if.end96.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i.i

if.end4.i.i.i:                                    ; preds = %if.else.i.i.i.if.end4.i.i.i_crit_edge, %list_del.exit.i.i.i
  %bss.0.i.i.i = phi ptr [ %154, %list_del.exit.i.i.i ], [ %call7.i.i.i.i, %if.else.i.i.i.if.end4.i.i.i_crit_edge ]
  %166 = call ptr @memset(ptr %bss.0.i.i.i, i32 0, i32 204)
  %bssid5.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.0.i.i.i, i32 0, i32 3
  %167 = call ptr @memcpy(ptr %bssid5.i.i.i, ptr %bssid.i.i, i32 6)
  %ssid6.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.0.i.i.i, i32 0, i32 5
  %168 = call ptr @memcpy(ptr %ssid6.i.i.i, ptr %ssid.0.lcssa.i.i, i32 %134)
  %ssid_len8.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.0.i.i.i, i32 0, i32 6
  %169 = ptrtoint ptr %ssid_len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %134, ptr %ssid_len8.i.i.i, align 4
  %170 = ptrtoint ptr %num_bss_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_bss_info.i.i.i, align 4
  %inc.i.i.i = add i32 %171, 1
  store i32 %inc.i.i.i, ptr %num_bss_info.i.i.i, align 4
  %172 = ptrtoint ptr %bss_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bss_list.i.i.i, align 4
  %call.i.i24.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bss.0.i.i.i, ptr noundef %bss_list.i.i.i, ptr noundef %173) #10
  br i1 %call.i.i24.i.i.i, label %if.end.i.i25.i.i.i, label %if.end4.i.i.i.if.end80.i.i_crit_edge

if.end4.i.i.i.if.end80.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i.i

if.end.i.i25.i.i.i:                               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %bss.0.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %175 = ptrtoint ptr %bss.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %173, ptr %bss.0.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %bss.0.i.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %bss_list.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %177 = ptrtoint ptr %bss_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %bss.0.i.i.i, ptr %bss_list.i.i.i, align 4
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.end.i.i25.i.i.i, %if.end4.i.i.i.if.end80.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %bss.0.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end80.i.i.if.end96.i.i_crit_edge, label %if.end80.i.i.if.then81.i.i_crit_edge

if.end80.i.i.if.then81.i.i_crit_edge:             ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81.i.i

if.end80.i.i.if.end96.i.i_crit_edge:              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i.i

if.then81.i.i:                                    ; preds = %if.end80.i.i.if.then81.i.i_crit_edge, %__hostap_get_bss.exit.i.i.if.then81.i.i_crit_edge
  %bss.028.i.i = phi ptr [ %bss.0.i.i.i, %if.end80.i.i.if.then81.i.i_crit_edge ], [ %ptr.029.i.i.i, %__hostap_get_bss.exit.i.i.if.then81.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %last_update.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %last_update.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %last_update.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %181, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  %capab_info.i.i = getelementptr inbounds %struct.hostap_ieee80211_mgmt, ptr %116, i32 0, i32 6, i32 0, i32 2
  %182 = ptrtoint ptr %capab_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %capab_info.i.i, align 1
  %184 = call i16 @llvm.bswap.i16(i16 %183) #10
  %capab_info83.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 4
  %185 = ptrtoint ptr %capab_info83.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %capab_info83.i.i, align 2
  %tobool84.not.i.i = icmp eq ptr %wpa.0.lcssa.i.i, null
  br i1 %tobool84.not.i.i, label %if.then81.i.i.if.end88.i.i_crit_edge, label %if.then85.i.i

if.then81.i.i.if.end88.i.i_crit_edge:             ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i.i

if.then85.i.i:                                    ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %wpa_ie.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 7
  %186 = call ptr @memcpy(ptr %wpa_ie.i.i, ptr %wpa.0.lcssa.i.i, i32 %132)
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then85.i.i, %if.then81.i.i.if.end88.i.i_crit_edge
  %.sink.i.i = phi i32 [ %132, %if.then85.i.i ], [ 0, %if.then81.i.i.if.end88.i.i_crit_edge ]
  %187 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %.sink.i.i, ptr %187, align 4
  %tobool89.not.i.i = icmp eq ptr %rsn.0.lcssa.i.i, null
  br i1 %tobool89.not.i.i, label %if.end88.i.i.if.end94.i.i_crit_edge, label %if.then90.i.i

if.end88.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.i.i

if.then90.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rsn_ie.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 9
  %189 = call ptr @memcpy(ptr %rsn_ie.i.i, ptr %rsn.0.lcssa.i.i, i32 %133)
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %if.then90.i.i, %if.end88.i.i.if.end94.i.i_crit_edge
  %.sink55.i.i = phi i32 [ %133, %if.then90.i.i ], [ 0, %if.end88.i.i.if.end94.i.i_crit_edge ]
  %190 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 10
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %.sink55.i.i, ptr %190, align 4
  %chan95.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %bss.028.i.i, i32 0, i32 11
  %192 = ptrtoint ptr %chan95.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %chan.0.lcssa.i.i, ptr %chan95.i.i, align 4
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.end94.i.i, %if.end80.i.i.if.end96.i.i_crit_edge, %if.else.i.i.i.if.end96.i.i_crit_edge
  %prev.i9.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 128, i32 1
  %num_bss_info.i10.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 129
  %193 = ptrtoint ptr %num_bss_info.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_bss_info.i10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp7.i.i.i = icmp sgt i32 %194, 0
  br i1 %cmp7.i.i.i, label %if.end96.i.i.while.body.i.i.i_crit_edge, label %if.end96.i.i.__hostap_expire_bss.exit.i.i_crit_edge

if.end96.i.i.__hostap_expire_bss.exit.i.i_crit_edge: ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hostap_expire_bss.exit.i.i

if.end96.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end96.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %list_del.exit.i18.i.i.while.body.i.i.i_crit_edge, %if.end96.i.i.while.body.i.i.i_crit_edge
  %195 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev.i9.i.i, align 4
  %last_update.i.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %last_update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %last_update.i.i.i, align 4
  %add.i.i.i = add i32 %198, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %199 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp1.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i, label %while.body.i.i.i.__hostap_expire_bss.exit.i.i_crit_edge

while.body.i.i.i.__hostap_expire_bss.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hostap_expire_bss.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %call.i.i.i11.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %196) #10
  br i1 %call.i.i.i11.i.i, label %if.end.i.i.i14.i.i, label %if.end.i.i.i.list_del.exit.i18.i.i_crit_edge

if.end.i.i.i.list_del.exit.i18.i.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i18.i.i

if.end.i.i.i14.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i.i12.i.i, align 4
  %202 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %196, align 4
  %prev1.i.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %prev1.i.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev1.i.i.i.i13.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %203, ptr %201, align 4
  br label %list_del.exit.i18.i.i

list_del.exit.i18.i.i:                            ; preds = %if.end.i.i.i14.i.i, %if.end.i.i.i.list_del.exit.i18.i.i_crit_edge
  %206 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr inttoptr (i32 256 to ptr), ptr %196, align 4
  %prev.i.i15.i.i = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  %207 = ptrtoint ptr %prev.i.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15.i.i, align 4
  %208 = ptrtoint ptr %num_bss_info.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %num_bss_info.i10.i.i, align 4
  %dec.i16.i.i = add i32 %209, -1
  store i32 %dec.i16.i.i, ptr %num_bss_info.i10.i.i, align 4
  call void @kfree(ptr noundef %196) #10
  %210 = ptrtoint ptr %num_bss_info.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %num_bss_info.i10.i.i, align 4
  %cmp.i17.i.i = icmp sgt i32 %211, 0
  br i1 %cmp.i17.i.i, label %list_del.exit.i18.i.i.while.body.i.i.i_crit_edge, label %list_del.exit.i18.i.i.__hostap_expire_bss.exit.i.i_crit_edge

list_del.exit.i18.i.i.__hostap_expire_bss.exit.i.i_crit_edge: ; preds = %list_del.exit.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hostap_expire_bss.exit.i.i

list_del.exit.i18.i.i.while.body.i.i.i_crit_edge: ; preds = %list_del.exit.i18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

__hostap_expire_bss.exit.i.i:                     ; preds = %list_del.exit.i18.i.i.__hostap_expire_bss.exit.i.i_crit_edge, %while.body.i.i.i.__hostap_expire_bss.exit.i.i_crit_edge, %if.end96.i.i.__hostap_expire_bss.exit.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #10
  br label %rx_dropped

do.end69.i:                                       ; preds = %land.lhs.true45.i.do.end69.i_crit_edge, %if.else.i.do.end69.i_crit_edge
  %212 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 8
  %215 = lshr exact i16 %and, 2
  %216 = zext i16 %215 to i32
  %217 = lshr exact i16 %and7, 4
  %218 = zext i16 %217 to i32
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %214, i32 noundef %216, i32 noundef %218) #13
  br label %rx_dropped

if.end92:                                         ; preds = %if.end60
  %219 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %220)
  %cmp94 = icmp ult i32 %220, 24
  br i1 %cmp94, label %if.end92.rx_dropped_crit_edge, label %if.end97

if.end92.rx_dropped_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end97:                                         ; preds = %if.end92
  %and99 = and i32 %conv, 768
  %221 = zext i32 %and99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %and99, label %sw.default [
    i32 512, label %sw.bb
    i32 256, label %sw.bb105
    i32 768, label %sw.bb112
  ]

sw.bb:                                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %addr1101 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %222 = call ptr @memcpy(ptr %dst, ptr %addr1101, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4
  %src.sroa.9.0.arraydecay104.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4, i32 1
  %src.sroa.10.0.arraydecay104.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4, i32 2
  %src.sroa.11.0.arraydecay104.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4, i32 3
  %src.sroa.12.0.arraydecay104.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4, i32 4
  %src.sroa.13.0.arraydecay104.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4, i32 5
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %addr3107 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4
  %223 = call ptr @memcpy(ptr %dst, ptr %addr3107, i32 6)
  %addr2110 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %src.sroa.9.0.arraydecay111.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 1
  %src.sroa.10.0.arraydecay111.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 2
  %src.sroa.11.0.arraydecay111.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 3
  %src.sroa.12.0.arraydecay111.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 4
  %src.sroa.13.0.arraydecay111.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %220)
  %cmp114 = icmp ult i32 %220, 30
  br i1 %cmp114, label %sw.bb112.rx_dropped_crit_edge, label %if.end117

sw.bb112.rx_dropped_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end117:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #12
  %addr3119 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 4
  %224 = call ptr @memcpy(ptr %dst, ptr %addr3119, i32 6)
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6
  %src.sroa.9.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6, i32 1
  %src.sroa.10.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6, i32 2
  %src.sroa.11.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6, i32 3
  %src.sroa.12.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6, i32 4
  %src.sroa.13.0.arraydecay122.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 6, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %addr1124 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %225 = call ptr @memcpy(ptr %dst, ptr %addr1124, i32 6)
  %addr2127 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %src.sroa.9.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 1
  %src.sroa.10.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 2
  %src.sroa.11.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 3
  %src.sroa.12.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 4
  %src.sroa.13.0.arraydecay128.sroa_idx = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end117, %sw.bb105, %sw.bb
  %src.sroa.13.0.in = phi ptr [ %src.sroa.13.0.arraydecay128.sroa_idx, %sw.default ], [ %src.sroa.13.0.arraydecay122.sroa_idx, %if.end117 ], [ %src.sroa.13.0.arraydecay111.sroa_idx, %sw.bb105 ], [ %src.sroa.13.0.arraydecay104.sroa_idx, %sw.bb ]
  %src.sroa.12.0.in = phi ptr [ %src.sroa.12.0.arraydecay128.sroa_idx, %sw.default ], [ %src.sroa.12.0.arraydecay122.sroa_idx, %if.end117 ], [ %src.sroa.12.0.arraydecay111.sroa_idx, %sw.bb105 ], [ %src.sroa.12.0.arraydecay104.sroa_idx, %sw.bb ]
  %src.sroa.11.0.in = phi ptr [ %src.sroa.11.0.arraydecay128.sroa_idx, %sw.default ], [ %src.sroa.11.0.arraydecay122.sroa_idx, %if.end117 ], [ %src.sroa.11.0.arraydecay111.sroa_idx, %sw.bb105 ], [ %src.sroa.11.0.arraydecay104.sroa_idx, %sw.bb ]
  %src.sroa.10.0.in = phi ptr [ %src.sroa.10.0.arraydecay128.sroa_idx, %sw.default ], [ %src.sroa.10.0.arraydecay122.sroa_idx, %if.end117 ], [ %src.sroa.10.0.arraydecay111.sroa_idx, %sw.bb105 ], [ %src.sroa.10.0.arraydecay104.sroa_idx, %sw.bb ]
  %src.sroa.9.0.in = phi ptr [ %src.sroa.9.0.arraydecay128.sroa_idx, %sw.default ], [ %src.sroa.9.0.arraydecay122.sroa_idx, %if.end117 ], [ %src.sroa.9.0.arraydecay111.sroa_idx, %sw.bb105 ], [ %src.sroa.9.0.arraydecay104.sroa_idx, %sw.bb ]
  %src.sroa.0.0.in = phi ptr [ %addr2127, %sw.default ], [ %addr4, %if.end117 ], [ %addr2110, %sw.bb105 ], [ %addr3, %sw.bb ]
  %226 = ptrtoint ptr %src.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %226)
  %src.sroa.0.0 = load i8, ptr %src.sroa.0.0.in, align 2
  %227 = ptrtoint ptr %src.sroa.9.0.in to i32
  call void @__asan_load1_noabort(i32 %227)
  %src.sroa.9.0 = load i8, ptr %src.sroa.9.0.in, align 1
  %228 = ptrtoint ptr %src.sroa.10.0.in to i32
  call void @__asan_load1_noabort(i32 %228)
  %src.sroa.10.0 = load i8, ptr %src.sroa.10.0.in, align 2
  %229 = ptrtoint ptr %src.sroa.11.0.in to i32
  call void @__asan_load1_noabort(i32 %229)
  %src.sroa.11.0 = load i8, ptr %src.sroa.11.0.in, align 1
  %230 = ptrtoint ptr %src.sroa.12.0.in to i32
  call void @__asan_load1_noabort(i32 %230)
  %src.sroa.12.0 = load i8, ptr %src.sroa.12.0.in, align 2
  %231 = ptrtoint ptr %src.sroa.13.0.in to i32
  call void @__asan_load1_noabort(i32 %231)
  %src.sroa.13.0 = load i8, ptr %src.sroa.13.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and99)
  %cmp.not.i = icmp eq i32 %and99, 768
  br i1 %cmp.not.i, label %sw.epilog.if.end.i806_crit_edge, label %land.lhs.true.i

sw.epilog.if.end.i806_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i806

land.lhs.true.i:                                  ; preds = %sw.epilog
  %232 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %233)
  %cmp2.not.i = icmp ne i32 %233, 3
  %and5.i = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i802 = icmp eq i32 %and5.i, 0
  %or.cond.i803 = or i1 %tobool.not.i802, %cmp2.not.i
  br i1 %or.cond.i803, label %land.lhs.true.i.if.end135_crit_edge, label %land.lhs.true.i.if.end.i806_crit_edge

land.lhs.true.i.if.end.i806_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i806

land.lhs.true.i.if.end135_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.end.i806:                                      ; preds = %land.lhs.true.i.if.end.i806_crit_edge, %sw.epilog.if.end.i806_crit_edge
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 5
  %234 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %235, i32 0, i32 86
  %236 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev_addr.i, align 64
  %238 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %addr1.i, align 4
  %240 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %237, align 4
  %xor.i.i = xor i32 %241, %239
  %add.ptr.i.i804 = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 4
  %242 = ptrtoint ptr %add.ptr.i.i804 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %add.ptr.i.i804, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %237, i32 4
  %244 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %245, %243
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i805 = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i805, label %if.end.i806.if.end42.i_crit_edge, label %land.lhs.true6.i

if.end.i806.if.end42.i_crit_edge:                 ; preds = %if.end.i806
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.lhs.true6.i:                                 ; preds = %if.end.i806
  %246 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %addr1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %247)
  %cmp9.not.i = icmp eq i8 %247, -1
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %land.lhs.true6.i.rx_dropped_crit_edge

land.lhs.true6.i.rx_dropped_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx13.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 1
  %248 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %249)
  %cmp15.not.i = icmp eq i8 %249, -1
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false11.i.rx_dropped_crit_edge

lor.lhs.false11.i.rx_dropped_crit_edge:           ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false17.i:                                ; preds = %lor.lhs.false11.i
  %arrayidx19.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 2
  %250 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %251)
  %cmp21.not.i = icmp eq i8 %251, -1
  br i1 %cmp21.not.i, label %lor.lhs.false23.i, label %lor.lhs.false17.i.rx_dropped_crit_edge

lor.lhs.false17.i.rx_dropped_crit_edge:           ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false23.i:                                ; preds = %lor.lhs.false17.i
  %arrayidx25.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 3
  %252 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %253)
  %cmp27.not.i = icmp eq i8 %253, -1
  br i1 %cmp27.not.i, label %lor.lhs.false29.i, label %lor.lhs.false23.i.rx_dropped_crit_edge

lor.lhs.false23.i.rx_dropped_crit_edge:           ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false29.i:                                ; preds = %lor.lhs.false23.i
  %254 = ptrtoint ptr %add.ptr.i.i804 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %add.ptr.i.i804, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %255)
  %cmp33.not.i = icmp eq i8 %255, -1
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %lor.lhs.false29.i.rx_dropped_crit_edge

lor.lhs.false29.i.rx_dropped_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false35.i:                                ; preds = %lor.lhs.false29.i
  %arrayidx37.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 5
  %256 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %257)
  %cmp39.not.i = icmp eq i8 %257, -1
  br i1 %cmp39.not.i, label %lor.lhs.false35.i.if.end42.i_crit_edge, label %lor.lhs.false35.i.rx_dropped_crit_edge

lor.lhs.false35.i.rx_dropped_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

lor.lhs.false35.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %lor.lhs.false35.i.if.end42.i_crit_edge, %if.end.i806.if.end42.i_crit_edge
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %iface_lock.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 8
  call void @_raw_read_lock_bh(ptr noundef %iface_lock.i.i) #10
  %hostap_interfaces.i.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 7
  %258 = ptrtoint ptr %hostap_interfaces.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %ptr.018.i.i = load ptr, ptr %hostap_interfaces.i.i, align 4
  %cmp.i.not19.i.i = icmp eq ptr %ptr.018.i.i, %hostap_interfaces.i.i
  br i1 %cmp.i.not19.i.i, label %if.end42.i.for.end.thread.i.i_crit_edge, label %if.end42.i.for.body.i.i_crit_edge

if.end42.i.for.body.i.i_crit_edge:                ; preds = %if.end42.i
  br label %for.body.i.i

if.end42.i.for.end.thread.i.i_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %if.end.i.i809.for.end.thread.i.i_crit_edge, %if.end42.i.for.end.thread.i.i_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %iface_lock.i.i) #10
  br label %prism2_rx_get_wds.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i809.for.body.i.i_crit_edge, %if.end42.i.for.body.i.i_crit_edge
  %ptr.020.i.i = phi ptr [ %ptr.0.i.i, %if.end.i.i809.for.body.i.i_crit_edge ], [ %ptr.018.i.i, %if.end42.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.hostap_interface, ptr %ptr.020.i.i, i32 0, i32 6
  %259 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %260)
  %cmp.i131.i = icmp eq i32 %260, 4
  br i1 %cmp.i131.i, label %land.lhs.true.i.i808, label %for.body.i.i.if.end.i.i809_crit_edge

for.body.i.i.if.end.i.i809_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i809

land.lhs.true.i.i808:                             ; preds = %for.body.i.i
  %u.i.i = getelementptr inbounds %struct.hostap_interface, ptr %ptr.020.i.i, i32 0, i32 7
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %u.i.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp3.i.i807 = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp3.i.i807, label %for.end.i.i, label %land.lhs.true.i.i808.if.end.i.i809_crit_edge

land.lhs.true.i.i808.if.end.i.i809_crit_edge:     ; preds = %land.lhs.true.i.i808
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i809

if.end.i.i809:                                    ; preds = %land.lhs.true.i.i808.if.end.i.i809_crit_edge, %for.body.i.i.if.end.i.i809_crit_edge
  %261 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %ptr.0.i.i = load ptr, ptr %ptr.020.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %ptr.0.i.i, %hostap_interfaces.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i809.for.end.thread.i.i_crit_edge, label %if.end.i.i809.for.body.i.i_crit_edge

if.end.i.i809.for.body.i.i_crit_edge:             ; preds = %if.end.i.i809
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.i.i809.for.end.thread.i.i_crit_edge:       ; preds = %if.end.i.i809
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i808
  call void @_raw_read_unlock_bh(ptr noundef %iface_lock.i.i) #10
  %tobool6.not.i.i = icmp eq ptr %ptr.020.i.i, null
  br i1 %tobool6.not.i.i, label %for.end.i.i.prism2_rx_get_wds.exit.i_crit_edge, label %cond.true.i.i

for.end.i.i.prism2_rx_get_wds.exit.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %prism2_rx_get_wds.exit.i

cond.true.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.hostap_interface, ptr %ptr.020.i.i, i32 0, i32 1
  %262 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev.i.i, align 4
  br label %prism2_rx_get_wds.exit.i

prism2_rx_get_wds.exit.i:                         ; preds = %cond.true.i.i, %for.end.i.i.prism2_rx_get_wds.exit.i_crit_edge, %for.end.thread.i.i
  %cond.i.i = phi ptr [ %263, %cond.true.i.i ], [ null, %for.end.i.i.prism2_rx_get_wds.exit.i_crit_edge ], [ null, %for.end.thread.i.i ]
  %cmp45.i = icmp ne ptr %cond.i.i, null
  %and49.i = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %or.cond129.i = or i1 %tobool50.not.i, %cmp45.i
  br i1 %or.cond129.i, label %if.end83.i, label %land.lhs.true51.i

land.lhs.true51.i:                                ; preds = %prism2_rx_get_wds.exit.i
  %264 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %265)
  %cmp53.not.i = icmp eq i32 %265, 2
  br i1 %cmp53.not.i, label %lor.lhs.false55.i, label %land.lhs.true51.i.do.end68.i_crit_edge

land.lhs.true51.i.do.end68.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68.i

lor.lhs.false55.i:                                ; preds = %land.lhs.true51.i
  %wds_type.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 61
  %266 = ptrtoint ptr %wds_type.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %wds_type.i, align 4
  %and56.i = and i32 %267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %lor.lhs.false55.i.do.end68.i_crit_edge, label %lor.lhs.false58.i

lor.lhs.false55.i.do.end68.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68.i

lor.lhs.false58.i:                                ; preds = %lor.lhs.false55.i
  %bssid.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 32
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr2.i, ptr noundef dereferenceable(6) %bssid.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp63.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp63.not.i, label %if.end83.i.thread, label %lor.lhs.false58.i.do.end68.i_crit_edge

lor.lhs.false58.i.do.end68.i_crit_edge:           ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68.i

do.end68.i:                                       ; preds = %lor.lhs.false58.i.do.end68.i_crit_edge, %lor.lhs.false55.i.do.end68.i_crit_edge, %land.lhs.true51.i.do.end68.i_crit_edge
  %268 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev.i, align 4
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %269, ptr noundef %addr2.i) #13
  %270 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ap, align 4
  %tobool75.not.i = icmp eq ptr %271, null
  br i1 %tobool75.not.i, label %do.end68.i.rx_dropped_crit_edge, label %land.lhs.true76.i

do.end68.i.rx_dropped_crit_edge:                  ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

land.lhs.true76.i:                                ; preds = %do.end68.i
  %autom_ap_wds.i = getelementptr inbounds %struct.ap_data, ptr %271, i32 0, i32 14
  %272 = ptrtoint ptr %autom_ap_wds.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %autom_ap_wds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool78.not.i = icmp eq i32 %273, 0
  br i1 %tobool78.not.i, label %land.lhs.true76.i.rx_dropped_crit_edge, label %if.then79.i

land.lhs.true76.i.rx_dropped_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.then79.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @hostap_wds_link_oper(ptr noundef %4, ptr noundef %addr2.i, i32 noundef 0) #10
  br label %rx_dropped

if.end83.i:                                       ; preds = %prism2_rx_get_wds.exit.i
  %or.cond130.i = and i1 %tobool50.not.i, %cmp45.i
  br i1 %or.cond130.i, label %if.end83.i.land.lhs.true89.i_crit_edge, label %if.end132

if.end83.i.land.lhs.true89.i_crit_edge:           ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true89.i

if.end83.i.thread:                                ; preds = %lor.lhs.false58.i
  %or.cond130.i887 = and i1 %tobool50.not.i, %cmp45.i
  br i1 %or.cond130.i887, label %if.end83.i.thread.land.lhs.true89.i_crit_edge, label %if.end83.i.thread.if.end135thread-pre-split_crit_edge

if.end83.i.thread.if.end135thread-pre-split_crit_edge: ; preds = %if.end83.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135thread-pre-split

if.end83.i.thread.land.lhs.true89.i_crit_edge:    ; preds = %if.end83.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.end83.i.thread.land.lhs.true89.i_crit_edge, %if.end83.i.land.lhs.true89.i_crit_edge
  %274 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ap, align 4
  %tobool91.not.i = icmp eq ptr %275, null
  br i1 %tobool91.not.i, label %land.lhs.true89.i.if.then134_crit_edge, label %land.lhs.true92.i

land.lhs.true89.i.if.then134_crit_edge:           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

land.lhs.true92.i:                                ; preds = %land.lhs.true89.i
  %call96.i = call i32 @hostap_is_sta_assoc(ptr noundef nonnull %275, ptr noundef %addr2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %land.lhs.true92.i.if.then134_crit_edge, label %land.lhs.true92.i.if.end135thread-pre-split_crit_edge

land.lhs.true92.i.if.end135thread-pre-split_crit_edge: ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135thread-pre-split

land.lhs.true92.i.if.then134_crit_edge:           ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

if.end132:                                        ; preds = %if.end83.i
  %tobool133.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool133.not, label %if.end132.if.end135thread-pre-split_crit_edge, label %if.end132.if.then134_crit_edge

if.end132.if.then134_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then134

if.end132.if.end135thread-pre-split_crit_edge:    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135thread-pre-split

if.then134:                                       ; preds = %if.end132.if.then134_crit_edge, %land.lhs.true92.i.if.then134_crit_edge, %land.lhs.true89.i.if.then134_crit_edge
  %276 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %cond.i.i, ptr %276, align 8
  br label %if.end135thread-pre-split

if.end135thread-pre-split:                        ; preds = %if.then134, %if.end132.if.end135thread-pre-split_crit_edge, %land.lhs.true92.i.if.end135thread-pre-split_crit_edge, %if.end83.i.thread.if.end135thread-pre-split_crit_edge
  %tobool133.not839.ph = phi i1 [ true, %land.lhs.true92.i.if.end135thread-pre-split_crit_edge ], [ true, %if.end132.if.end135thread-pre-split_crit_edge ], [ false, %if.then134 ], [ true, %if.end83.i.thread.if.end135thread-pre-split_crit_edge ]
  %wds.0835.ph = phi ptr [ null, %land.lhs.true92.i.if.end135thread-pre-split_crit_edge ], [ null, %if.end132.if.end135thread-pre-split_crit_edge ], [ %cond.i.i, %if.then134 ], [ null, %if.end83.i.thread.if.end135thread-pre-split_crit_edge ]
  %dev.addr.0.ph = phi ptr [ %12, %land.lhs.true92.i.if.end135thread-pre-split_crit_edge ], [ %12, %if.end132.if.end135thread-pre-split_crit_edge ], [ %cond.i.i, %if.then134 ], [ %12, %if.end83.i.thread.if.end135thread-pre-split_crit_edge ]
  %278 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %278)
  %.pr = load i32, ptr %iw_mode, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end135thread-pre-split, %land.lhs.true.i.if.end135_crit_edge
  %279 = phi i32 [ %.pr, %if.end135thread-pre-split ], [ %233, %land.lhs.true.i.if.end135_crit_edge ]
  %tobool133.not839 = phi i1 [ %tobool133.not839.ph, %if.end135thread-pre-split ], [ true, %land.lhs.true.i.if.end135_crit_edge ]
  %wds.0835 = phi ptr [ %wds.0835.ph, %if.end135thread-pre-split ], [ null, %land.lhs.true.i.if.end135_crit_edge ]
  %dev.addr.0 = phi ptr [ %dev.addr.0.ph, %if.end135thread-pre-split ], [ %12, %land.lhs.true.i.if.end135_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %279)
  %cmp137 = icmp eq i32 %279, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and99)
  %cmp144 = icmp eq i32 %and99, 512
  %280 = and i1 %cmp137, %tobool133.not839
  %or.cond878 = select i1 %280, i1 %cmp144, i1 false
  br i1 %or.cond878, label %land.lhs.true146, label %if.end135.if.end157_crit_edge

if.end135.if.end157_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

land.lhs.true146:                                 ; preds = %if.end135
  %stadev = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 73
  %281 = ptrtoint ptr %stadev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %stadev, align 4
  %tobool147.not = icmp eq ptr %282, null
  br i1 %tobool147.not, label %land.lhs.true146.if.end157_crit_edge, label %land.lhs.true148

land.lhs.true146.if.end157_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

land.lhs.true148:                                 ; preds = %land.lhs.true146
  %addr2149 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %assoc_ap_addr = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 72
  %bcmp782 = call i32 @bcmp(ptr noundef dereferenceable(6) %addr2149, ptr noundef dereferenceable(6) %assoc_ap_addr, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp782)
  %cmp153 = icmp eq i32 %bcmp782, 0
  br i1 %cmp153, label %if.end157.thread, label %land.lhs.true148.if.end157_crit_edge

land.lhs.true148.if.end157_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.end157.thread:                                 ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  %283 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %282, ptr %283, align 8
  br label %if.end176

if.end157:                                        ; preds = %land.lhs.true148.if.end157_crit_edge, %land.lhs.true146.if.end157_crit_edge, %if.end135.if.end157_crit_edge
  %285 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %iw_mode, align 4
  %287 = add i32 %286, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %287)
  %switch795 = icmp ult i32 %287, -2
  br i1 %switch795, label %if.end157.if.end176_crit_edge, label %if.then167

if.end157.if.end176_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.then167:                                       ; preds = %if.end157
  %cmp168 = icmp ne ptr %wds.0835, null
  %conv169 = zext i1 %cmp168 to i32
  %call170 = call i32 @hostap_handle_sta_rx(ptr noundef %4, ptr noundef %dev.addr.0, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef %conv169) #10
  %288 = zext i32 %call170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %288, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call170, label %if.then167.if.end176_crit_edge [
    i32 2, label %if.then167.rx_exit_crit_edge
    i32 0, label %sw.bb172
    i32 1, label %if.then167.rx_dropped_crit_edge
  ]

if.then167.rx_dropped_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.then167.rx_exit_crit_edge:                     ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_exit

if.then167.if.end176_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

sw.bb172:                                         ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.end176:                                        ; preds = %sw.bb172, %if.then167.if.end176_crit_edge, %if.end157.if.end176_crit_edge, %if.end157.thread
  %dev.addr.1857 = phi ptr [ %dev.addr.0, %sw.bb172 ], [ %dev.addr.0, %if.end157.if.end176_crit_edge ], [ %dev.addr.0, %if.then167.if.end176_crit_edge ], [ %282, %if.end157.thread ]
  %tobool390.not = phi i1 [ false, %sw.bb172 ], [ true, %if.end157.if.end176_crit_edge ], [ true, %if.then167.if.end176_crit_edge ], [ true, %if.end157.thread ]
  %289 = lshr exact i16 %and7, 4
  %trunc882 = trunc i16 %289 to i4
  %290 = zext i4 %trunc882 to i64
  call void @__sanitizer_cov_trace_switch(i64 %290, ptr @__sancov_gen_cov_switch_values.82)
  switch i4 %trunc882, label %do.end199 [
    i4 0, label %if.end176.if.end209_crit_edge
    i4 1, label %if.end176.if.end209_crit_edge905
    i4 2, label %if.end176.if.end209_crit_edge906
    i4 3, label %if.end176.if.end209_crit_edge907
    i4 4, label %if.end176.rx_dropped_crit_edge
  ]

if.end176.rx_dropped_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end176.if.end209_crit_edge907:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.end176.if.end209_crit_edge906:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.end176.if.end209_crit_edge905:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.end176.if.end209_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

do.end199:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %291 = zext i16 %289 to i32
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev.addr.1857, i32 noundef 2, i32 noundef %291) #13
  br label %rx_dropped

if.end209:                                        ; preds = %if.end176.if.end209_crit_edge, %if.end176.if.end209_crit_edge905, %if.end176.if.end209_crit_edge906, %if.end176.if.end209_crit_edge907
  %292 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool211.not = icmp eq i32 %293, 0
  %and214 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  %or.cond786 = select i1 %tobool211.not, i1 true, i1 %tobool215.not
  br i1 %or.cond786, label %if.end209.if.end221_crit_edge, label %land.lhs.true216

if.end209.if.end221_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true216:                                 ; preds = %if.end209
  %294 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %crypt, align 4
  %call217 = call fastcc i32 @hostap_rx_frame_decrypt(ptr noundef %4, ptr noundef %skb, ptr noundef %295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %land.lhs.true216.rx_dropped_crit_edge, label %land.lhs.true216.if.end221_crit_edge

land.lhs.true216.if.end221_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true216.rx_dropped_crit_edge:            ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

if.end221:                                        ; preds = %land.lhs.true216.if.end221_crit_edge, %if.end209.if.end221_crit_edge
  %keyidx.0 = phi i32 [ %call217, %land.lhs.true216.if.end221_crit_edge ], [ 0, %if.end209.if.end221_crit_edge ]
  %296 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %data, align 4
  %298 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool224.not = icmp eq i32 %299, 0
  %or.cond787 = select i1 %tobool224.not, i1 true, i1 %tobool215.not
  br i1 %or.cond787, label %if.end221.if.end290_crit_edge, label %land.lhs.true229

if.end221.if.end290_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290

land.lhs.true229:                                 ; preds = %if.end221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp230.not = icmp eq i32 %and10, 0
  %and234 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  %or.cond788 = select i1 %cmp230.not, i1 %tobool235.not, i1 false
  br i1 %or.cond788, label %land.lhs.true229.if.end290_crit_edge, label %if.then236

land.lhs.true229.if.end290_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290

if.then236:                                       ; preds = %land.lhs.true229
  %call237 = call fastcc ptr @prism2_frag_cache_get(ptr noundef %4, ptr noundef %297)
  %tobool238.not = icmp eq ptr %call237, null
  br i1 %tobool238.not, label %do.end242, label %if.end254

do.end242:                                        ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  %and247 = lshr i32 %conv, 10
  %and247.lobit = and i32 %and247, 1
  %300 = lshr i32 %conv9, 4
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %dev.addr.1857, i32 noundef %and247.lobit, i32 noundef %300, i32 noundef %and10) #13
  br label %rx_dropped

if.end254:                                        ; preds = %if.then236
  %301 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %len, align 4
  %sub = select i1 %cmp230.not, i32 0, i32 %call12
  %spec.select = sub i32 %302, %sub
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call237, i32 0, i32 16
  %303 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %304, i32 %spec.select
  %end = getelementptr inbounds %struct.sk_buff, ptr %call237, i32 0, i32 17
  %305 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %end, align 4
  %cmp260 = icmp ugt ptr %add.ptr, %306
  br i1 %cmp260, label %do.end265, label %if.end271

do.end265:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %dev.addr.1857) #13
  call fastcc void @prism2_frag_cache_invalidate(ptr noundef %4, ptr noundef %297)
  br label %rx_dropped

if.end271:                                        ; preds = %if.end254
  %call275 = call ptr @skb_put(ptr noundef nonnull %call237, i32 noundef %spec.select) #10
  %307 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %data, align 4
  %add.ptr.i813.sink.idx = select i1 %cmp230.not, i32 0, i32 %call12
  %add.ptr.i813.sink = getelementptr i8, ptr %308, i32 %add.ptr.i813.sink.idx
  %309 = call ptr @memcpy(ptr %call275, ptr %add.ptr.i813.sink, i32 %spec.select)
  call void @consume_skb(ptr noundef %skb) #10
  br i1 %tobool235.not, label %cleanup286.thread862, label %if.end271.rx_exit_crit_edge

if.end271.rx_exit_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_exit

cleanup286.thread862:                             ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #12
  %data284 = getelementptr inbounds %struct.sk_buff, ptr %call237, i32 0, i32 19
  %310 = ptrtoint ptr %data284 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %data284, align 4
  call fastcc void @prism2_frag_cache_invalidate(ptr noundef %4, ptr noundef %311)
  br label %if.end290

if.end290:                                        ; preds = %cleanup286.thread862, %land.lhs.true229.if.end290_crit_edge, %if.end221.if.end290_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %if.end221.if.end290_crit_edge ], [ %skb, %land.lhs.true229.if.end290_crit_edge ], [ %call237, %cleanup286.thread862 ]
  %312 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %host_decrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool292.not = icmp eq i32 %313, 0
  %or.cond789 = select i1 %tobool292.not, i1 true, i1 %tobool215.not
  br i1 %or.cond789, label %if.end290.if.end301_crit_edge, label %land.lhs.true297

if.end290.if.end301_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

land.lhs.true297:                                 ; preds = %if.end290
  %314 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %crypt, align 4
  %call298 = call fastcc i32 @hostap_rx_frame_decrypt_msdu(ptr noundef %4, ptr noundef %skb.addr.1, i32 noundef %keyidx.0, ptr noundef %315)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %land.lhs.true297.if.end301_crit_edge, label %land.lhs.true297.rx_dropped_crit_edge

land.lhs.true297.rx_dropped_crit_edge:            ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

land.lhs.true297.if.end301_crit_edge:             ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

if.end301:                                        ; preds = %land.lhs.true297.if.end301_crit_edge, %if.end290.if.end301_crit_edge
  %data302 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %316 = ptrtoint ptr %data302 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %data302, align 4
  %318 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %crypt, align 4
  %tobool303.not = icmp ne ptr %319, null
  %or.cond790 = select i1 %tobool303.not, i1 %tobool215.not, i1 false
  br i1 %or.cond790, label %land.lhs.true308, label %if.end301.if.end331_crit_edge

if.end301.if.end331_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end331

land.lhs.true308:                                 ; preds = %if.end301
  %open_wep = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 76
  %320 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool309.not = icmp eq i32 %321, 0
  br i1 %tobool309.not, label %if.then310, label %land.lhs.true308.if.end331_crit_edge

land.lhs.true308.if.end331_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end331

if.then310:                                       ; preds = %land.lhs.true308
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 84
  %322 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %ieee_802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool311.not = icmp eq i32 %323, 0
  br i1 %tobool311.not, label %if.then310.do.end322_crit_edge, label %land.lhs.true312

if.then310.do.end322_crit_edge:                   ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end322

land.lhs.true312:                                 ; preds = %if.then310
  %call313 = call fastcc i32 @hostap_is_eapol_frame(ptr noundef %4, ptr noundef %skb.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %land.lhs.true312.do.end322_crit_edge, label %land.lhs.true312.if.end331_crit_edge

land.lhs.true312.if.end331_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end331

land.lhs.true312.do.end322_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end322

do.end322:                                        ; preds = %land.lhs.true312.do.end322_crit_edge, %if.then310.do.end322_crit_edge
  %dev324 = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 5
  %324 = ptrtoint ptr %dev324 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev324, align 4
  %addr2327 = getelementptr inbounds %struct.ieee80211_hdr, ptr %317, i32 0, i32 3
  %call329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %325, ptr noundef %addr2327) #13
  br label %rx_dropped

if.end331:                                        ; preds = %land.lhs.true312.if.end331_crit_edge, %land.lhs.true308.if.end331_crit_edge, %if.end301.if.end331_crit_edge
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 132
  %326 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %drop_unencrypted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool332.not = icmp ne i32 %327, 0
  %or.cond791 = select i1 %tobool332.not, i1 %tobool215.not, i1 false
  br i1 %or.cond791, label %land.lhs.true337, label %if.end331.if.end354_crit_edge

if.end331.if.end354_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end354

land.lhs.true337:                                 ; preds = %if.end331
  %call338 = call fastcc i32 @hostap_is_eapol_frame(ptr noundef %4, ptr noundef %skb.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %if.then340, label %land.lhs.true337.if.end354_crit_edge

land.lhs.true337.if.end354_crit_edge:             ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end354

if.then340:                                       ; preds = %land.lhs.true337
  %call341 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.then340.rx_dropped_crit_edge, label %do.end346

if.then340.rx_dropped_crit_edge:                  ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_dropped

do.end346:                                        ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #12
  %addr2350 = getelementptr inbounds %struct.ieee80211_hdr, ptr %317, i32 0, i32 3
  %call352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %dev.addr.1857, ptr noundef %addr2350) #13
  br label %rx_dropped

if.end354:                                        ; preds = %land.lhs.true337.if.end354_crit_edge, %if.end331.if.end354_crit_edge
  %add.ptr356 = getelementptr i8, ptr %317, i32 %call12
  %arrayidx357 = getelementptr i8, ptr %add.ptr356, i32 6
  %328 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx357, align 1
  %conv358 = zext i8 %329 to i16
  %shl = shl nuw i16 %conv358, 8
  %arrayidx359 = getelementptr i8, ptr %add.ptr356, i32 7
  %330 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx359, align 1
  %conv360 = zext i8 %331 to i16
  %or = or i16 %shl, %conv360
  %ieee_802_1x362 = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 84
  %332 = ptrtoint ptr %ieee_802_1x362 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %ieee_802_1x362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool363.not = icmp eq i32 %333, 0
  br i1 %tobool363.not, label %if.end354.if.end402_crit_edge, label %land.lhs.true364

if.end354.if.end402_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

land.lhs.true364:                                 ; preds = %if.end354
  %334 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %335)
  %cmp366 = icmp eq i32 %335, 3
  br i1 %cmp366, label %if.then368, label %land.lhs.true364.if.end402_crit_edge

land.lhs.true364.if.end402_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

if.then368:                                       ; preds = %land.lhs.true364
  %conv369 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %or)
  %cmp370 = icmp eq i16 %or, -30578
  br i1 %cmp370, label %do.end375, label %if.else389

do.end375:                                        ; preds = %if.then368
  %hostapd = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 68
  %336 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool376.not = icmp eq i32 %337, 0
  br i1 %tobool376.not, label %do.end375.if.end402_crit_edge, label %land.lhs.true377

do.end375.if.end402_crit_edge:                    ; preds = %do.end375
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

land.lhs.true377:                                 ; preds = %do.end375
  %apdev = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 70
  %338 = ptrtoint ptr %apdev to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %apdev, align 4
  %tobool378.not = icmp eq ptr %339, null
  br i1 %tobool378.not, label %land.lhs.true377.if.end402_crit_edge, label %if.then379

land.lhs.true377.if.end402_crit_edge:             ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

if.then379:                                       ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #12
  %call381 = call i32 @prism2_rx_80211(ptr noundef nonnull %339, ptr noundef %skb.addr.1, ptr noundef %rx_stats, i32 noundef 1)
  %apdevstats = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 71
  %340 = ptrtoint ptr %apdevstats to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %apdevstats, align 4
  %inc383 = add i32 %341, 1
  store i32 %inc383, ptr %apdevstats, align 4
  %len384 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %342 = ptrtoint ptr %len384 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %len384, align 4
  %rx_bytes386 = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 71, i32 2
  %344 = ptrtoint ptr %rx_bytes386 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rx_bytes386, align 4
  %add387 = add i32 %345, %343
  store i32 %add387, ptr %rx_bytes386, align 4
  br label %rx_exit

if.else389:                                       ; preds = %if.then368
  br i1 %tobool390.not, label %do.end394, label %if.else389.if.end402_crit_edge

if.else389.if.end402_crit_edge:                   ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

do.end394:                                        ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #12
  %call399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %dev.addr.1857, i32 noundef %conv369) #13
  br label %rx_dropped

if.end402:                                        ; preds = %if.else389.if.end402_crit_edge, %land.lhs.true377.if.end402_crit_edge, %do.end375.if.end402_crit_edge, %land.lhs.true364.if.end402_crit_edge, %if.end354.if.end402_crit_edge
  %len403 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %346 = ptrtoint ptr %len403 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %len403, align 4
  %sub404 = sub i32 %347, %call12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub404)
  %cmp405 = icmp ugt i32 %sub404, 7
  br i1 %cmp405, label %land.lhs.true407, label %if.end402.if.else430_crit_edge

if.end402.if.else430_crit_edge:                   ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else430

land.lhs.true407:                                 ; preds = %if.end402
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr356, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #16
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %cmp409.not = icmp eq i32 %bcmp.fr, 0
  br i1 %cmp409.not, label %switch.early.test, label %land.lhs.true407.lor.lhs.false419_crit_edge

land.lhs.true407.lor.lhs.false419_crit_edge:      ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false419

switch.early.test:                                ; preds = %land.lhs.true407
  %348 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %348, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %or, label %switch.early.test.if.then423_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false419_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false419_crit_edge908
  ]

switch.early.test.lor.lhs.false419_crit_edge908:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false419

switch.early.test.lor.lhs.false419_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false419

switch.early.test.if.then423_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then423

lor.lhs.false419:                                 ; preds = %switch.early.test.lor.lhs.false419_crit_edge, %switch.early.test.lor.lhs.false419_crit_edge908, %land.lhs.true407.lor.lhs.false419_crit_edge
  %bcmp781 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr356, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp781)
  %cmp421 = icmp eq i32 %bcmp781, 0
  br i1 %cmp421, label %lor.lhs.false419.if.then423_crit_edge, label %lor.lhs.false419.if.else430_crit_edge

lor.lhs.false419.if.else430_crit_edge:            ; preds = %lor.lhs.false419
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else430

lor.lhs.false419.if.then423_crit_edge:            ; preds = %lor.lhs.false419
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then423

if.then423:                                       ; preds = %lor.lhs.false419.if.then423_crit_edge, %switch.early.test.if.then423_crit_edge
  %add424 = add i32 %call12, 6
  %call425 = call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef %add424) #10
  br label %if.end440

if.else430:                                       ; preds = %lor.lhs.false419.if.else430_crit_edge, %if.end402.if.else430_crit_edge
  %call432 = call ptr @skb_pull(ptr noundef %skb.addr.1, i32 noundef %call12) #10
  %349 = ptrtoint ptr %len403 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %len403, align 4
  %conv434 = trunc i32 %350 to i16
  %call435 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 2) #10
  %351 = ptrtoint ptr %call435 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 2)
  store i16 %conv434, ptr %call435, align 1
  br label %if.end440

if.end440:                                        ; preds = %if.else430, %if.then423
  %call436 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 6) #10
  %352 = ptrtoint ptr %call436 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %src.sroa.0.0, ptr %call436, align 1
  %src.sroa.9.0.call436.sroa_idx = getelementptr inbounds i8, ptr %call436, i32 1
  %353 = ptrtoint ptr %src.sroa.9.0.call436.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %src.sroa.9.0, ptr %src.sroa.9.0.call436.sroa_idx, align 1
  %src.sroa.10.0.call436.sroa_idx = getelementptr inbounds i8, ptr %call436, i32 2
  %354 = ptrtoint ptr %src.sroa.10.0.call436.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %src.sroa.10.0, ptr %src.sroa.10.0.call436.sroa_idx, align 1
  %src.sroa.11.0.call436.sroa_idx = getelementptr inbounds i8, ptr %call436, i32 3
  %355 = ptrtoint ptr %src.sroa.11.0.call436.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %src.sroa.11.0, ptr %src.sroa.11.0.call436.sroa_idx, align 1
  %src.sroa.12.0.call436.sroa_idx = getelementptr inbounds i8, ptr %call436, i32 4
  %356 = ptrtoint ptr %src.sroa.12.0.call436.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %src.sroa.12.0, ptr %src.sroa.12.0.call436.sroa_idx, align 1
  %src.sroa.13.0.call436.sroa_idx = getelementptr inbounds i8, ptr %call436, i32 5
  %357 = ptrtoint ptr %src.sroa.13.0.call436.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %src.sroa.13.0, ptr %src.sroa.13.0.call436.sroa_idx, align 1
  %call438 = call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 6) #10
  %358 = call ptr @memcpy(ptr %call438, ptr %dst, i32 6)
  %tobool441.not = icmp ne ptr %wds.0835, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and99)
  %cmp445 = icmp eq i32 %and99, 256
  %or.cond794 = select i1 %tobool441.not, i1 %cmp445, i1 false
  br i1 %or.cond794, label %land.lhs.true447, label %if.end440.if.end458_crit_edge

if.end440.if.end458_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end458

land.lhs.true447:                                 ; preds = %if.end440
  %359 = ptrtoint ptr %len403 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %len403, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %360)
  %cmp449 = icmp ugt i32 %360, 19
  br i1 %cmp449, label %if.then451, label %land.lhs.true447.if.end458_crit_edge

land.lhs.true447.if.end458_crit_edge:             ; preds = %land.lhs.true447
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end458

if.then451:                                       ; preds = %land.lhs.true447
  call void @__sanitizer_cov_trace_pc() #12
  %sub453 = add i32 %360, -6
  %361 = ptrtoint ptr %data302 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %data302, align 4
  %add.ptr455 = getelementptr i8, ptr %362, i32 6
  %add.ptr.i815 = getelementptr i8, ptr %362, i32 %sub453
  %363 = call ptr @memcpy(ptr %add.ptr455, ptr %add.ptr.i815, i32 6)
  %364 = ptrtoint ptr %len403 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %len403, align 4
  %sub457 = add i32 %365, -6
  call void @skb_trim(ptr noundef %skb.addr.1, i32 noundef %sub457) #10
  br label %if.end458

if.end458:                                        ; preds = %if.then451, %land.lhs.true447.if.end458_crit_edge, %if.end440.if.end458_crit_edge
  %stats459 = getelementptr inbounds %struct.net_device, ptr %dev.addr.1857, i32 0, i32 36
  %366 = ptrtoint ptr %stats459 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %stats459, align 8
  %inc461 = add i32 %367, 1
  store i32 %inc461, ptr %stats459, align 8
  %368 = ptrtoint ptr %len403 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %len403, align 4
  %rx_bytes464 = getelementptr inbounds %struct.net_device, ptr %dev.addr.1857, i32 0, i32 36, i32 2
  %370 = ptrtoint ptr %rx_bytes464 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %rx_bytes464, align 8
  %add465 = add i32 %371, %369
  store i32 %add465, ptr %rx_bytes464, align 8
  %372 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %373)
  %cmp467 = icmp eq i32 %373, 3
  %374 = and i1 %tobool133.not839, %cmp467
  br i1 %374, label %land.lhs.true471, label %if.end458.if.end509_crit_edge

if.end458.if.end509_crit_edge:                    ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end509

land.lhs.true471:                                 ; preds = %if.end458
  %375 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ap, align 4
  %bridge_packets = getelementptr inbounds %struct.ap_data, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %bridge_packets to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %bridge_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool473.not = icmp eq i32 %378, 0
  br i1 %tobool473.not, label %land.lhs.true471.if.end509_crit_edge, label %if.then474

land.lhs.true471.if.end509_crit_edge:             ; preds = %land.lhs.true471
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end509

if.then474:                                       ; preds = %land.lhs.true471
  %379 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %dst, align 1
  %381 = and i8 %380, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool478.not = icmp eq i8 %381, 0
  br i1 %tobool478.not, label %if.else494, label %if.then479

if.then479:                                       ; preds = %if.then474
  %bridged_multicast = getelementptr inbounds %struct.ap_data, ptr %376, i32 0, i32 4
  %382 = ptrtoint ptr %bridged_multicast to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %bridged_multicast, align 4
  %inc481 = add i32 %383, 1
  store i32 %inc481, ptr %bridged_multicast, align 4
  %call482 = call ptr @skb_clone(ptr noundef %skb.addr.1, i32 noundef 2592) #10
  %cmp483 = icmp eq ptr %call482, null
  br i1 %cmp483, label %do.end488, label %if.then479.if.then507_crit_edge

if.then479.if.then507_crit_edge:                  ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then507

do.end488:                                        ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #12
  %call492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %dev.addr.1857) #13
  br label %if.end509

if.else494:                                       ; preds = %if.then474
  %call497 = call i32 @hostap_is_sta_authorized(ptr noundef %376, ptr noundef nonnull %dst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call497)
  %tobool498.not = icmp eq i32 %call497, 0
  br i1 %tobool498.not, label %if.else494.if.end509_crit_edge, label %if.end504

if.else494.if.end509_crit_edge:                   ; preds = %if.else494
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end509

if.end504:                                        ; preds = %if.else494
  %384 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ap, align 4
  %bridged_unicast = getelementptr inbounds %struct.ap_data, ptr %385, i32 0, i32 3
  %386 = ptrtoint ptr %bridged_unicast to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %bridged_unicast, align 4
  %inc501 = add i32 %387, 1
  store i32 %inc501, ptr %bridged_unicast, align 4
  %cmp505.not = icmp eq ptr %skb.addr.1, null
  br i1 %cmp505.not, label %if.end504.rx_exit_crit_edge, label %if.end504.if.then507_crit_edge

if.end504.if.then507_crit_edge:                   ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then507

if.end504.rx_exit_crit_edge:                      ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_exit

if.then507:                                       ; preds = %if.end504.if.then507_crit_edge, %if.then479.if.then507_crit_edge
  %skb.addr.2874 = phi ptr [ null, %if.end504.if.then507_crit_edge ], [ %skb.addr.1, %if.then479.if.then507_crit_edge ]
  %skb2.0873 = phi ptr [ %skb.addr.1, %if.end504.if.then507_crit_edge ], [ %call482, %if.then479.if.then507_crit_edge ]
  %388 = getelementptr inbounds %struct.anon, ptr %skb2.0873, i32 0, i32 2
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %dev.addr.1857, ptr %388, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb2.0873, i32 0, i32 15, i32 0, i32 18
  %390 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 1, ptr %protocol, align 8
  %data.i816 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0873, i32 0, i32 19
  %391 = ptrtoint ptr %data.i816 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %data.i816, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0873, i32 0, i32 18
  %393 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %392 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %394 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i817 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0873, i32 0, i32 15, i32 0, i32 21
  %395 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 %conv.i817, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0873, i32 0, i32 15, i32 0, i32 20
  %396 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 %conv.i817, ptr %network_header.i, align 4
  %call508 = call i32 @dev_queue_xmit(ptr noundef nonnull %skb2.0873) #10
  br label %if.end509

if.end509:                                        ; preds = %if.then507, %if.else494.if.end509_crit_edge, %do.end488, %land.lhs.true471.if.end509_crit_edge, %if.end458.if.end509_crit_edge
  %skb.addr.2868 = phi ptr [ %skb.addr.2874, %if.then507 ], [ %skb.addr.1, %do.end488 ], [ %skb.addr.1, %if.else494.if.end509_crit_edge ], [ %skb.addr.1, %land.lhs.true471.if.end509_crit_edge ], [ %skb.addr.1, %if.end458.if.end509_crit_edge ]
  %tobool510.not = icmp eq ptr %skb.addr.2868, null
  br i1 %tobool510.not, label %if.end509.rx_exit_crit_edge, label %if.then511

if.end509.rx_exit_crit_edge:                      ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #12
  br label %rx_exit

if.then511:                                       ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #12
  %call512 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.addr.2868, ptr noundef %dev.addr.1857) #10
  %protocol513 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2868, i32 0, i32 15, i32 0, i32 18
  %397 = ptrtoint ptr %protocol513 to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %call512, ptr %protocol513, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2868, i32 0, i32 3
  %398 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call515 = call i32 @netif_rx(ptr noundef nonnull %skb.addr.2868) #10
  br label %rx_exit

rx_exit:                                          ; preds = %rx_dropped, %if.then511, %if.end509.rx_exit_crit_edge, %if.end504.rx_exit_crit_edge, %if.then379, %if.end271.rx_exit_crit_edge, %if.then167.rx_exit_crit_edge, %if.end41.i, %if.end21.i
  %399 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %sta, align 4
  %tobool517.not = icmp eq ptr %400, null
  br i1 %tobool517.not, label %rx_exit.cleanup523_crit_edge, label %if.then518

rx_exit.cleanup523_crit_edge:                     ; preds = %rx_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup523

if.then518:                                       ; preds = %rx_exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @hostap_handle_sta_release(ptr noundef nonnull %400) #10
  br label %cleanup523

rx_dropped:                                       ; preds = %do.end394, %do.end346, %if.then340.rx_dropped_crit_edge, %do.end322, %land.lhs.true297.rx_dropped_crit_edge, %do.end265, %do.end242, %land.lhs.true216.rx_dropped_crit_edge, %do.end199, %if.end176.rx_dropped_crit_edge, %if.then167.rx_dropped_crit_edge, %if.then79.i, %land.lhs.true76.i.rx_dropped_crit_edge, %do.end68.i.rx_dropped_crit_edge, %lor.lhs.false35.i.rx_dropped_crit_edge, %lor.lhs.false29.i.rx_dropped_crit_edge, %lor.lhs.false23.i.rx_dropped_crit_edge, %lor.lhs.false17.i.rx_dropped_crit_edge, %lor.lhs.false11.i.rx_dropped_crit_edge, %land.lhs.true6.i.rx_dropped_crit_edge, %sw.bb112.rx_dropped_crit_edge, %if.end92.rx_dropped_crit_edge, %do.end69.i, %__hostap_expire_bss.exit.i.i, %while.body.i.i.rx_dropped_crit_edge, %if.then52.i.rx_dropped_crit_edge, %land.lhs.true45.i.rx_dropped_crit_edge, %land.lhs.true45.i.rx_dropped_crit_edge904, %do.end.i, %if.end16.i.rx_dropped_crit_edge, %do.end, %cleanup, %entry.rx_dropped_crit_edge
  %skb.addr.3 = phi ptr [ %skb, %entry.rx_dropped_crit_edge ], [ %skb, %cleanup ], [ %skb, %do.end ], [ %skb, %if.end92.rx_dropped_crit_edge ], [ %skb, %do.end199 ], [ %skb, %land.lhs.true216.rx_dropped_crit_edge ], [ %skb.addr.1, %land.lhs.true297.rx_dropped_crit_edge ], [ %skb.addr.1, %do.end394 ], [ %skb.addr.1, %do.end346 ], [ %skb.addr.1, %if.then340.rx_dropped_crit_edge ], [ %skb.addr.1, %do.end322 ], [ %skb, %if.then167.rx_dropped_crit_edge ], [ %skb, %sw.bb112.rx_dropped_crit_edge ], [ %skb, %if.end176.rx_dropped_crit_edge ], [ %skb, %do.end.i ], [ %skb, %do.end69.i ], [ %skb, %if.end16.i.rx_dropped_crit_edge ], [ %skb, %land.lhs.true45.i.rx_dropped_crit_edge ], [ %skb, %land.lhs.true45.i.rx_dropped_crit_edge904 ], [ %skb, %if.then52.i.rx_dropped_crit_edge ], [ %skb, %__hostap_expire_bss.exit.i.i ], [ %skb, %lor.lhs.false35.i.rx_dropped_crit_edge ], [ %skb, %lor.lhs.false29.i.rx_dropped_crit_edge ], [ %skb, %lor.lhs.false23.i.rx_dropped_crit_edge ], [ %skb, %lor.lhs.false17.i.rx_dropped_crit_edge ], [ %skb, %lor.lhs.false11.i.rx_dropped_crit_edge ], [ %skb, %land.lhs.true6.i.rx_dropped_crit_edge ], [ %skb, %if.then79.i ], [ %skb, %land.lhs.true76.i.rx_dropped_crit_edge ], [ %skb, %do.end68.i.rx_dropped_crit_edge ], [ %skb, %do.end265 ], [ %skb, %do.end242 ], [ %skb, %while.body.i.i.rx_dropped_crit_edge ]
  %dev.addr.2 = phi ptr [ %12, %entry.rx_dropped_crit_edge ], [ %12, %cleanup ], [ %12, %do.end ], [ %12, %if.end92.rx_dropped_crit_edge ], [ %dev.addr.1857, %do.end199 ], [ %dev.addr.1857, %land.lhs.true216.rx_dropped_crit_edge ], [ %dev.addr.1857, %land.lhs.true297.rx_dropped_crit_edge ], [ %dev.addr.1857, %do.end394 ], [ %dev.addr.1857, %do.end346 ], [ %dev.addr.1857, %if.then340.rx_dropped_crit_edge ], [ %dev.addr.1857, %do.end322 ], [ %dev.addr.0, %if.then167.rx_dropped_crit_edge ], [ %12, %sw.bb112.rx_dropped_crit_edge ], [ %dev.addr.1857, %if.end176.rx_dropped_crit_edge ], [ %12, %do.end.i ], [ %12, %do.end69.i ], [ %12, %if.end16.i.rx_dropped_crit_edge ], [ %12, %land.lhs.true45.i.rx_dropped_crit_edge ], [ %12, %land.lhs.true45.i.rx_dropped_crit_edge904 ], [ %12, %if.then52.i.rx_dropped_crit_edge ], [ %12, %__hostap_expire_bss.exit.i.i ], [ %12, %lor.lhs.false35.i.rx_dropped_crit_edge ], [ %12, %lor.lhs.false29.i.rx_dropped_crit_edge ], [ %12, %lor.lhs.false23.i.rx_dropped_crit_edge ], [ %12, %lor.lhs.false17.i.rx_dropped_crit_edge ], [ %12, %lor.lhs.false11.i.rx_dropped_crit_edge ], [ %12, %land.lhs.true6.i.rx_dropped_crit_edge ], [ %12, %if.then79.i ], [ %12, %land.lhs.true76.i.rx_dropped_crit_edge ], [ %12, %do.end68.i.rx_dropped_crit_edge ], [ %dev.addr.1857, %do.end265 ], [ %dev.addr.1857, %do.end242 ], [ %12, %while.body.i.i.rx_dropped_crit_edge ]
  call void @consume_skb(ptr noundef %skb.addr.3) #10
  %rx_dropped521 = getelementptr inbounds %struct.net_device, ptr %dev.addr.2, i32 0, i32 36, i32 6
  %401 = ptrtoint ptr %rx_dropped521 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %rx_dropped521, align 8
  %inc522 = add i32 %402, 1
  store i32 %inc522, ptr %rx_dropped521, align 8
  br label %rx_exit

cleanup523:                                       ; preds = %if.then518, %rx_exit.cleanup523_crit_edge, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypt) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_spy_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_update_rx_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_handle_sta_crypto(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hostap_rx_frame_decrypt(ptr nocapture noundef %local, ptr noundef %skb, ptr noundef %crypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %crypt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_mpdu, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %call = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %7) #10
  %tkip_countermeasures = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 131
  %8 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tkip_countermeasures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(5) @.str.57) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %do.end

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %15, ptr noundef %addr2) #13
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !139
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %decrypt_mpdu15 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %decrypt_mpdu15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %decrypt_mpdu15, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 2
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call16 = tail call i32 %20(ptr noundef %skb, i32 noundef %call, ptr noundef %22) #10
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %do.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %24 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev24, align 4
  %addr227 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %25, ptr noundef %addr227, i32 noundef %call16) #13
  %rx_discards_wep_undecryptable = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 18
  %26 = ptrtoint ptr %rx_discards_wep_undecryptable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_discards_wep_undecryptable, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %rx_discards_wep_undecryptable, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end13.cleanup_crit_edge, %do.end, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end22 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %if.then5.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_handle_sta_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @prism2_frag_cache_get(ptr noundef %local, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %0 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %seq_ctrl, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 15
  %3 = lshr i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  %add8 = add i32 %7, 54
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add8, i32 noundef 2592) #10
  %cmp9 = icmp eq ptr %call.i.i, null
  br i1 %cmp9, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %frag_next_idx = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 83
  %8 = ptrtoint ptr %frag_next_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frag_next_idx, align 4
  %arrayidx = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9
  %inc = add i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp14 = icmp ugt i32 %inc, 3
  %spec.select = select i1 %cmp14, i32 0, i32 %inc
  %10 = ptrtoint ptr %frag_next_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %frag_next_idx, align 4
  %skb19 = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9, i32 3
  %11 = ptrtoint ptr %skb19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb19, align 4
  %cmp20.not = icmp eq ptr %12, null
  br i1 %cmp20.not, label %if.end.if.end24_crit_edge, label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %12) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  %seq25 = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9, i32 1
  %15 = ptrtoint ptr %seq25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %seq25, align 4
  %last_frag = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9, i32 2
  %16 = ptrtoint ptr %last_frag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %last_frag, align 4
  %17 = ptrtoint ptr %skb19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %skb19, align 4
  %src_addr = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9, i32 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %src_addr, ptr %addr2, i32 6)
  %dst_addr = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %9, i32 5
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %dst_addr, ptr %addr1, i32 6)
  br label %cleanup

if.else:                                          ; preds = %entry
  %addr230 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %addr132 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %call34 = tail call fastcc ptr @prism2_frag_cache_find(ptr noundef %local, i32 noundef %3, i32 noundef %and, ptr noundef %addr230, ptr noundef %addr132)
  %cmp35.not = icmp eq ptr %call34, null
  br i1 %cmp35.not, label %if.else.cleanup_crit_edge, label %if.then37

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %last_frag38 = getelementptr inbounds %struct.prism2_frag_entry, ptr %call34, i32 0, i32 2
  %20 = ptrtoint ptr %last_frag38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %last_frag38, align 4
  %skb39 = getelementptr inbounds %struct.prism2_frag_entry, ptr %call34, i32 0, i32 3
  %21 = ptrtoint ptr %skb39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.else.cleanup_crit_edge, %if.end24, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call.i.i, %if.end24 ], [ %22, %if.then37 ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prism2_frag_cache_invalidate(ptr noundef %local, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %0 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %seq_ctrl, align 2
  %2 = and i16 %1, -3841
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = lshr exact i16 %3, 4
  %5 = zext i16 %4 to i32
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %call = tail call fastcc ptr @prism2_frag_cache_find(ptr noundef %local, i32 noundef %5, i32 noundef -1, ptr noundef %addr2, ptr noundef %addr1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %7, i32 noundef %5) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skb = getelementptr inbounds %struct.prism2_frag_entry, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hostap_rx_frame_decrypt_msdu(ptr nocapture noundef readonly %local, ptr noundef %skb, i32 noundef %keyidx, ptr noundef %crypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %crypt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_msdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %decrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_msdu, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %call = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %7) #10
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !139
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %decrypt_msdu3 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %decrypt_msdu3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %decrypt_msdu3, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 2
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call4 = tail call i32 %12(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %call, ptr noundef %14) #10
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %17, ptr noundef %addr2, i32 noundef %keyidx) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @hostap_is_eapol_frame(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp ult i32 %3, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %.tr = trunc i16 %7 to i10
  %trunc = shl i10 %.tr, 8
  %8 = zext i10 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i10 %trunc, label %if.end.cleanup_crit_edge [
    i10 256, label %land.lhs.true
    i10 -512, label %land.lhs.true15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %5, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %10, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr3, align 4
  %xor.i54 = xor i32 %20, %14
  %add.ptr.i55 = getelementptr %struct.ieee80211_hdr, ptr %5, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i55, align 2
  %xor37.i57 = xor i16 %22, %18
  %xor3.i58 = zext i16 %xor37.i57 to i32
  %or.i59 = or i32 %xor.i54, %xor3.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i59)
  %cmp.i60 = icmp ne i32 %or.i59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp26.old = icmp ult i32 %3, 32
  %or.cond68 = select i1 %cmp.i60, i1 true, i1 %cmp26.old
  br i1 %or.cond68, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end29_crit_edge

land.lhs.true5.if.end29_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end
  %addr116 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %dev_addr18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr18, align 64
  %25 = ptrtoint ptr %addr116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr116, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i61 = xor i32 %28, %26
  %add.ptr.i62 = getelementptr %struct.ieee80211_hdr, ptr %5, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i62, align 2
  %add.ptr1.i63 = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i63 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i63, align 2
  %xor37.i64 = xor i16 %32, %30
  %xor3.i65 = zext i16 %xor37.i64 to i32
  %or.i66 = or i32 %xor.i61, %xor3.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i66)
  %cmp.i67 = icmp ne i32 %or.i66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp26 = icmp ult i32 %3, 32
  %or.cond = select i1 %cmp.i67, i1 true, i1 %cmp26
  br i1 %or.cond, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end29_crit_edge

land.lhs.true15.if.end29_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true15.if.end29_crit_edge, %land.lhs.true5.if.end29_crit_edge
  %arrayidx = getelementptr i8, ptr %5, i32 30
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv31 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %arrayidx32 = getelementptr i8, ptr %5, i32 31
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %36 to i32
  %or = or i32 %shl, %conv33
  call void @__sanitizer_cov_trace_const_cmp4(i32 34958, i32 %or)
  %cmp36 = icmp eq i32 %or, 34958
  %. = zext i1 %cmp36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ %., %if.end29 ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_is_sta_authorized(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_handle_sta_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_update_sta_ps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_wds_link_oper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_is_sta_assoc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @prism2_frag_cache_find(ptr noundef %local, i32 noundef %seq, i32 noundef %frag, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag)
  %cmp16 = icmp eq i32 %frag, -1
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045
  %skb = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %seq4 = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 1
  %7 = ptrtoint ptr %seq4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq4, align 4
  %last_frag = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 2
  %9 = ptrtoint ptr %last_frag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_frag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %6, i32 noundef %8, i32 noundef %10) #13
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %12) #10
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb, align 4
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %skb, align 4
  %cmp8.not = icmp eq ptr %.pr, null
  br i1 %cmp8.not, label %if.end.for.inc_crit_edge, label %land.lhs.true9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true9:                                   ; preds = %if.end
  %seq10 = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 1
  %15 = ptrtoint ptr %seq10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %seq)
  %cmp11 = icmp eq i32 %16, %seq
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %last_frag13 = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 2
  %17 = ptrtoint ptr %last_frag13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_frag13, align 4
  %add14 = add i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %frag)
  %cmp15 = icmp eq i32 %add14, %frag
  %or.cond = or i1 %cmp16, %cmp15
  br i1 %or.cond, label %land.lhs.true17, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %src_addr = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src_addr, ptr noundef dereferenceable(6) %src, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp20 = icmp eq i32 %bcmp, 0
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %dst_addr = getelementptr %struct.local_info, ptr %local, i32 0, i32 82, i32 %i.045, i32 5
  %bcmp43 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst_addr, ptr noundef dereferenceable(6) %dst, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43)
  %cmp24 = icmp eq i32 %bcmp43, 0
  br i1 %cmp24, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true21.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %land.lhs.true21.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hostap_dump_rx_80211._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hostap_dump_rx_80211._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 38, i32 2}
!8 = !{ptr @hostap_dump_rx_80211._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hostap_dump_rx_80211._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 45, i32 3}
!15 = !{ptr @hostap_dump_rx_80211._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hostap_dump_rx_80211._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 49, i32 2}
!19 = !{ptr @hostap_dump_rx_80211._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hostap_dump_rx_80211._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 52, i32 2}
!23 = !{ptr @hostap_dump_rx_80211._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hostap_dump_rx_80211._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 53, i32 2}
!27 = !{ptr @hostap_dump_rx_80211._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hostap_dump_rx_80211._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 54, i32 2}
!31 = !{ptr @hostap_dump_rx_80211._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hostap_dump_rx_80211._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 56, i32 3}
!35 = !{ptr @hostap_dump_rx_80211._entry.24, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hostap_dump_rx_80211._entry_ptr.26, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @hostap_dump_rx_80211._entry.27, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 57, i32 2}
!39 = !{ptr @hostap_dump_rx_80211._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 96, i32 3}
!42 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @prism2_rx_80211._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @prism2_rx_80211._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 119, i32 4}
!47 = !{ptr @prism2_rx_80211._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @prism2_rx_80211._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 825, i32 4}
!51 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hostap_80211_rx._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hostap_80211_rx._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 903, i32 4}
!56 = !{ptr @hostap_80211_rx._entry.36, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hostap_80211_rx._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 924, i32 4}
!60 = !{ptr @hostap_80211_rx._entry.39, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hostap_80211_rx._entry_ptr.41, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 936, i32 4}
!64 = !{ptr @hostap_80211_rx._entry.42, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hostap_80211_rx._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.46, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 988, i32 4}
!68 = !{ptr @hostap_80211_rx._entry.45, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hostap_80211_rx._entry_ptr.47, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.49, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 998, i32 4}
!72 = !{ptr @hostap_80211_rx._entry.48, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hostap_80211_rx._entry_ptr.50, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.52, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 1026, i32 4}
!76 = !{ptr @hostap_80211_rx._entry.51, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hostap_80211_rx._entry_ptr.53, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.55, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 1076, i32 5}
!80 = !{ptr @hostap_80211_rx._entry.54, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hostap_80211_rx._entry_ptr.56, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__ksymtab_hostap_80211_rx, !83, !"__ksymtab_hostap_80211_rx", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 1116, i32 1}
!84 = !{ptr @freq_list, !85, !"freq_list", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intersil/hostap/hostap.h", i32 11, i32 34}
!86 = !{ptr @.str.57, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 662, i32 31}
!88 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 664, i32 4}
!90 = !{ptr @.str.59, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hostap_rx_frame_decrypt._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @hostap_rx_frame_decrypt._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 675, i32 3}
!95 = !{ptr @hostap_rx_frame_decrypt._entry.60, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @hostap_rx_frame_decrypt._entry_ptr.62, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.63, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 502, i32 4}
!99 = !{ptr @.str.64, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @hostap_rx_frame_mgmt._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @hostap_rx_frame_mgmt._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.66, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 523, i32 3}
!104 = !{ptr @hostap_rx_frame_mgmt._entry.65, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @hostap_rx_frame_mgmt._entry_ptr.67, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.68, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 586, i32 3}
!108 = !{ptr @.str.69, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hostap_rx_frame_wds._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @hostap_rx_frame_wds._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 231, i32 4}
!113 = !{ptr @.str.71, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @prism2_frag_cache_find._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @prism2_frag_cache_find._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 315, i32 3}
!118 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @prism2_frag_cache_invalidate._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @prism2_frag_cache_invalidate._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 703, i32 3}
!123 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @hostap_rx_frame_decrypt_msdu._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @hostap_rx_frame_decrypt_msdu._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @rfc1042_header, !127, !"rfc1042_header", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 14, i32 22}
!128 = !{ptr @bridge_tunnel_header, !129, !"bridge_tunnel_header", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_rx.c", i32 17, i32 22}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148398433, i64 2148398459, i64 2148398488, i64 2148398522, i64 2148398553, i64 2148398576}
!140 = !{i64 2148400898, i64 2148400924, i64 2148400953, i64 2148400987, i64 2148401018, i64 2148401041}
