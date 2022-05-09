; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_80211_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hostap_master_start_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_master_start_xmit\09\09\09\09"
module asm "\09.long\09__crc_hostap_master_start_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_master_start_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_master_start_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_master_start_xmit:\09\09\09\09\09"
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.prism2_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.124, i32 }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.99 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.prism2_helper_functions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hostap_tx_data = type { ptr, i32, ptr, ptr }
%struct.ap_data = type { i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.list_head, [256 x ptr], ptr, i32, i32, i32, %struct.mac_restrictions, i32, %struct.work_struct, ptr, %struct.work_struct, ptr, i16, [128 x ptr], i16, i16, i16, ptr, ptr }
%struct.mac_restrictions = type { i32, i32, %struct.list_head, %struct.spinlock }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }

@hostap_dump_tx_80211._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: TX len=%d jiffies=%ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_dump_tx_80211\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intersil/hostap/hostap_80211_tx.c\00", [41 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr = internal global ptr @hostap_dump_tx_80211._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hostap_dump_tx_80211._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017   FC=0x%04x (type=%d:%d)%s%s\00", [32 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.5 = internal global ptr @hostap_dump_tx_80211._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" [ToDS]\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [FromDS]\00", [22 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.11 = internal global ptr @hostap_dump_tx_80211._entry.9, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" dur=0x%04x seq=0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.14 = internal global ptr @hostap_dump_tx_80211._entry.12, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017   A1=%pM\00", [20 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.17 = internal global ptr @hostap_dump_tx_80211._entry.15, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A2=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.20 = internal global ptr @hostap_dump_tx_80211._entry.18, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A3=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.23 = internal global ptr @hostap_dump_tx_80211._entry.21, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" A4=%pM\00", [24 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.26 = internal global ptr @hostap_dump_tx_80211._entry.24, section ".printk_index", align 4
@hostap_dump_tx_80211._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hostap_dump_tx_80211._entry_ptr.28 = internal global ptr @hostap_dump_tx_80211._entry.27, section ".printk_index", align 4
@hostap_data_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: hostap_data_start_xmit: short skb (len=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostap_data_start_xmit\00", [41 x i8] zeroinitializer }, align 32
@hostap_data_start_xmit._entry_ptr = internal global ptr @hostap_data_start_xmit._entry, section ".printk_index", align 4
@hostap_data_start_xmit._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: prism2_tx: trying to use AP device with Ethernet net dev\0A\00", [32 x i8] zeroinitializer }, align 32
@hostap_data_start_xmit._entry_ptr.33 = internal global ptr @hostap_data_start_xmit._entry.31, section ".printk_index", align 4
@hostap_data_start_xmit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: prism2_tx: trying to use non-WDS link in Repeater mode\0A\00", [34 x i8] zeroinitializer }, align 32
@hostap_data_start_xmit._entry_ptr.36 = internal global ptr @hostap_data_start_xmit._entry.34, section ".printk_index", align 4
@bridge_tunnel_header = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@rfc1042_header = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@hostap_mgmt_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: hostap_mgmt_start_xmit: short skb (len=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostap_mgmt_start_xmit\00", [41 x i8] zeroinitializer }, align 32
@hostap_mgmt_start_xmit._entry_ptr = internal global ptr @hostap_mgmt_start_xmit._entry, section ".printk_index", align 4
@hostap_master_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: invalid skb->cb magic (0x%08x, expected 0x%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hostap_master_start_xmit\00", [39 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr = internal global ptr @hostap_master_start_xmit._entry, section ".printk_index", align 4
@hostap_master_start_xmit._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: hostap_master_start_xmit: short skb (len=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr.43 = internal global ptr @hostap_master_start_xmit._entry.41, section ".printk_index", align 4
@hostap_master_start_xmit._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017%s: dropped frame to unauthorized port (IEEE 802.1X): ethertype=0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr.46 = internal global ptr @hostap_master_start_xmit._entry.44, section ".printk_index", align 4
@hostap_master_start_xmit._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: dropped unencrypted TX data frame (drop_unencrypted=1)\0A\00", [34 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr.49 = internal global ptr @hostap_master_start_xmit._entry.47, section ".printk_index", align 4
@hostap_master_start_xmit._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: TX - encryption failed\0A\00", [34 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr.52 = internal global ptr @hostap_master_start_xmit._entry.50, section ".printk_index", align 4
@hostap_master_start_xmit._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017%s: invalid skb->cb magic (0x%08x, expected 0x%08x) after hostap_tx_encrypt\0A\00", [49 x i8] zeroinitializer }, align 32
@hostap_master_start_xmit._entry_ptr.55 = internal global ptr @hostap_master_start_xmit._entry.53, section ".printk_index", align 4
@__kstrtab_hostap_master_start_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_master_start_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_master_start_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_master_start_xmit to i32), ptr @__kstrtab_hostap_master_start_xmit, ptr @__kstrtabns_hostap_master_start_xmit }, section "___ksymtab+hostap_master_start_xmit", align 4
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@hostap_tx_encrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: TKIP countermeasures: dropped TX packet to %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hostap_tx_encrypt\00", [46 x i8] zeroinitializer }, align 32
@hostap_tx_encrypt._entry_ptr = internal global ptr @hostap_tx_encrypt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 28, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 35, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 42, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 46, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 49, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 50, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 51, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 53, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 54, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 81, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 95, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 102, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"bridge_tunnel_header\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 17, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"rfc1042_header\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 14, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 282, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 403, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 422, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 446, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 507, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 518, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 525, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 332, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [58 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 335, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__ksymtab_hostap_master_start_xmit, ptr @hostap_data_start_xmit._entry, ptr @hostap_data_start_xmit._entry.31, ptr @hostap_data_start_xmit._entry.34, ptr @hostap_data_start_xmit._entry_ptr, ptr @hostap_data_start_xmit._entry_ptr.33, ptr @hostap_data_start_xmit._entry_ptr.36, ptr @hostap_dump_tx_80211._entry, ptr @hostap_dump_tx_80211._entry.12, ptr @hostap_dump_tx_80211._entry.15, ptr @hostap_dump_tx_80211._entry.18, ptr @hostap_dump_tx_80211._entry.21, ptr @hostap_dump_tx_80211._entry.24, ptr @hostap_dump_tx_80211._entry.27, ptr @hostap_dump_tx_80211._entry.3, ptr @hostap_dump_tx_80211._entry.9, ptr @hostap_dump_tx_80211._entry_ptr, ptr @hostap_dump_tx_80211._entry_ptr.11, ptr @hostap_dump_tx_80211._entry_ptr.14, ptr @hostap_dump_tx_80211._entry_ptr.17, ptr @hostap_dump_tx_80211._entry_ptr.20, ptr @hostap_dump_tx_80211._entry_ptr.23, ptr @hostap_dump_tx_80211._entry_ptr.26, ptr @hostap_dump_tx_80211._entry_ptr.28, ptr @hostap_dump_tx_80211._entry_ptr.5, ptr @hostap_master_start_xmit._entry, ptr @hostap_master_start_xmit._entry.41, ptr @hostap_master_start_xmit._entry.44, ptr @hostap_master_start_xmit._entry.47, ptr @hostap_master_start_xmit._entry.50, ptr @hostap_master_start_xmit._entry.53, ptr @hostap_master_start_xmit._entry_ptr, ptr @hostap_master_start_xmit._entry_ptr.43, ptr @hostap_master_start_xmit._entry_ptr.46, ptr @hostap_master_start_xmit._entry_ptr.49, ptr @hostap_master_start_xmit._entry_ptr.52, ptr @hostap_master_start_xmit._entry_ptr.55, ptr @hostap_mgmt_start_xmit._entry, ptr @hostap_mgmt_start_xmit._entry_ptr, ptr @hostap_tx_encrypt._entry, ptr @hostap_tx_encrypt._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @bridge_tunnel_header, ptr @rfc1042_header, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_dump_tx_80211._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_data_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_data_start_xmit._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_data_start_xmit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_mgmt_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_master_start_xmit._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_tx_encrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_dump_tx_80211(ptr noundef %name, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %3, i32 noundef %4) #10
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ult i32 %6, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %and = lshr i32 %conv, 2
  %10 = and i32 %and, 3
  %and8 = lshr i32 %conv, 4
  %11 = and i32 %and8, 15
  %and11 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %and13 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.7, ptr @.str.8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %10, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond15) #10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp18 = icmp ult i32 %13, 24
  br i1 %cmp18, label %if.end.cleanup.sink.split_crit_edge, label %do.end29

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end29:                                         ; preds = %if.end
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %duration_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %duration_id, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv31 = zext i16 %16 to i32
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %seq_ctrl, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv32 = zext i16 %19 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv31, i32 noundef %conv32) #10
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %addr1) #10
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %addr2) #10
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %addr3) #10
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %21)
  %cmp52 = icmp ugt i32 %21, 29
  br i1 %cmp52, label %do.end57, label %do.end29.cleanup.sink.split_crit_edge

do.end29.cleanup.sink.split_crit_edge:            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end57:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %addr4) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end57, %do.end29.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
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
define dso_local i32 @hostap_data_start_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ieee80211_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %hdr)
  %0 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %4 = call ptr @memset(ptr %hdr, i32 255, i32 30)
  %5 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp = icmp ult i32 %8, 14
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %dev, i32 noundef %8) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup217

if.end:                                           ; preds = %entry
  %ddev = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddev, align 4
  %cmp4.not = icmp eq ptr %10, %dev
  %iw_mode21 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 30
  %11 = ptrtoint ptr %iw_mode21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iw_mode21, align 4
  br i1 %cmp4.not, label %if.else20, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp6 = icmp eq i32 %12, 3
  br i1 %cmp6, label %land.rhs, label %if.then5.land.end_crit_edge

if.then5.land.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %wds_type = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 61
  %13 = ptrtoint ptr %wds_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wds_type, align 4
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then5.land.end_crit_edge
  %15 = phi i1 [ false, %if.then5.land.end_crit_edge ], [ %tobool.not, %land.rhs ]
  %stadev = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 73
  %16 = ptrtoint ptr %stadev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stadev, align 4
  %cmp7 = icmp eq ptr %17, %dev
  br i1 %cmp7, label %land.end.if.end42_crit_edge, label %if.else

land.end.if.end42_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else:                                          ; preds = %land.end
  %cond = select i1 %15, i32 1, i32 2
  %apdev = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 70
  %18 = ptrtoint ptr %apdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %apdev, align 4
  %cmp9 = icmp eq ptr %19, %dev
  br i1 %cmp9, label %do.end13, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %dev) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup217

if.else20:                                        ; preds = %if.end
  %20 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.else20.if.end42_crit_edge [
    i32 4, label %do.end26
    i32 2, label %land.lhs.true
  ]

if.else20.if.end42_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end26:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %dev) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup217

land.lhs.true:                                    ; preds = %if.else20
  %wds_type34 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 61
  %21 = ptrtoint ptr %wds_type34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wds_type34, align 4
  %and35 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true37

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true37:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %xor.i = xor i32 %30, %28
  %add.ptr.i336 = getelementptr i8, ptr %24, i32 10
  %31 = ptrtoint ptr %add.ptr.i336 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i336, align 2
  %add.ptr1.i = getelementptr i8, ptr %26, i32 4
  %33 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %34, %32
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %spec.select = select i1 %cmp.i, i32 0, i32 2
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true37, %land.lhs.true.if.end42_crit_edge, %if.else20.if.end42_crit_edge, %if.else.if.end42_crit_edge, %land.end.if.end42_crit_edge
  %use_wds.0 = phi i32 [ %cond, %if.else.if.end42_crit_edge ], [ 0, %land.lhs.true.if.end42_crit_edge ], [ 0, %land.end.if.end42_crit_edge ], [ 0, %if.else20.if.end42_crit_edge ], [ %spec.select, %land.lhs.true37 ]
  %tobool119.not = phi i1 [ true, %if.else.if.end42_crit_edge ], [ true, %land.lhs.true.if.end42_crit_edge ], [ false, %land.end.if.end42_crit_edge ], [ true, %if.else20.if.end42_crit_edge ], [ true, %land.lhs.true37 ]
  %data43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data43, align 4
  %arrayidx = getelementptr i8, ptr %36, i32 12
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %38 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx45 = getelementptr i8, ptr %36, i32 13
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %40 to i16
  %or = or i16 %shl, %conv46
  %41 = call ptr @memset(ptr %hdr, i32 0, i32 30)
  %42 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %or, label %if.else55 [
    i16 -32525, label %if.end42.if.end62_crit_edge
    i16 -32457, label %if.end42.if.end62_crit_edge390
  ]

if.end42.if.end62_crit_edge390:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.else55:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %38)
  %cmp57 = icmp ugt i8 %38, 5
  br i1 %cmp57, label %if.then59, label %if.else55.if.end62_crit_edge

if.else55.if.end62_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.else55.if.end62_crit_edge, %if.end42.if.end62_crit_edge, %if.end42.if.end62_crit_edge390
  %tobool190.not = phi i1 [ true, %if.else55.if.end62_crit_edge ], [ false, %if.then59 ], [ false, %if.end42.if.end62_crit_edge ], [ false, %if.end42.if.end62_crit_edge390 ]
  %encaps_data.0 = phi ptr [ null, %if.else55.if.end62_crit_edge ], [ @rfc1042_header, %if.then59 ], [ @bridge_tunnel_header, %if.end42.if.end62_crit_edge ], [ @bridge_tunnel_header, %if.end42.if.end62_crit_edge390 ]
  %encaps_len.0 = phi i32 [ 0, %if.else55.if.end62_crit_edge ], [ 6, %if.then59 ], [ 6, %if.end42.if.end62_crit_edge ], [ 6, %if.end42.if.end62_crit_edge390 ]
  %skip_header_bytes.0 = phi i32 [ 14, %if.else55.if.end62_crit_edge ], [ 12, %if.then59 ], [ 12, %if.end42.if.end62_crit_edge ], [ 12, %if.end42.if.end62_crit_edge390 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_wds.0)
  %cmp63.not = icmp eq i32 %use_wds.0, 0
  br i1 %cmp63.not, label %if.else100, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %use_wds.0)
  %cmp66 = icmp eq i32 %use_wds.0, 2
  %add.ptr.i337 = getelementptr i8, ptr %36, i32 6
  %43 = call ptr @memcpy(ptr %3, ptr %add.ptr.i337, i32 6)
  %. = select i1 %cmp66, i32 0, i32 6
  %.388 = select i1 %cmp66, i16 776, i16 264
  %.389 = select i1 %cmp66, i32 30, i32 24
  %wds_type79 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 61
  %44 = ptrtoint ptr %wds_type79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wds_type79, align 4
  %and80 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then65.if.else88_crit_edge, label %land.lhs.true82

if.then65.if.else88_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88

land.lhs.true82:                                  ; preds = %if.then65
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %36, align 4
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  br i1 %tobool.i.not, label %land.lhs.true82.if.else88_crit_edge, label %if.then86

land.lhs.true82.if.else88_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88

if.then86:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  %49 = call ptr @memset(ptr %0, i32 255, i32 6)
  br label %if.end98

if.else88:                                        ; preds = %land.lhs.true82.if.else88_crit_edge, %if.then65.if.else88_crit_edge
  %type = getelementptr i8, ptr %dev, i32 2520
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp89 = icmp eq i32 %51, 4
  br i1 %cmp89, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr i8, ptr %dev, i32 2524
  %52 = call ptr @memcpy(ptr %0, ptr %u, i32 6)
  br label %if.end98

if.else94:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #9
  %bssid = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 32
  %53 = call ptr @memcpy(ptr %0, ptr %bssid, i32 6)
  br label %if.end98

if.end98:                                         ; preds = %if.else94, %if.then91, %if.then86
  %dev_addr99 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr99, align 64
  %56 = call ptr @memcpy(ptr %1, ptr %55, i32 6)
  %57 = call ptr @memcpy(ptr %2, ptr %36, i32 6)
  br label %if.end145

if.else100:                                       ; preds = %if.end62
  %iw_mode101 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 30
  %58 = ptrtoint ptr %iw_mode101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iw_mode101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp102 = icmp eq i32 %59, 3
  %60 = and i1 %tobool119.not, %cmp102
  br i1 %60, label %if.then106, label %if.else114

if.then106:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #9
  %61 = call ptr @memcpy(ptr %0, ptr %36, i32 6)
  %dev_addr112 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %62 = ptrtoint ptr %dev_addr112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr112, align 64
  %64 = call ptr @memcpy(ptr %1, ptr %63, i32 6)
  %add.ptr.i343 = getelementptr i8, ptr %36, i32 6
  %65 = call ptr @memcpy(ptr %2, ptr %add.ptr.i343, i32 6)
  br label %if.end145

if.else114:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp116 = icmp ne i32 %59, 2
  %66 = and i1 %tobool119.not, %cmp116
  br i1 %66, label %if.else132, label %if.then120

if.then120:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  %assoc_ap_addr = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 72
  %bssid127 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 32
  %cond129 = select i1 %tobool119.not, ptr %bssid127, ptr %assoc_ap_addr
  %67 = call ptr @memcpy(ptr %0, ptr %cond129, i32 6)
  %add.ptr.i345 = getelementptr i8, ptr %36, i32 6
  %68 = call ptr @memcpy(ptr %1, ptr %add.ptr.i345, i32 6)
  %69 = call ptr @memcpy(ptr %2, ptr %36, i32 6)
  br label %if.end145

if.else132:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp134 = icmp eq i32 %59, 1
  br i1 %cmp134, label %if.then136, label %if.else132.if.end145_crit_edge

if.else132.if.end145_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then136:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  %70 = call ptr @memcpy(ptr %0, ptr %36, i32 6)
  %add.ptr.i349 = getelementptr i8, ptr %36, i32 6
  %71 = call ptr @memcpy(ptr %1, ptr %add.ptr.i349, i32 6)
  %bssid140 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 32
  %72 = call ptr @memcpy(ptr %2, ptr %bssid140, i32 6)
  br label %if.end145

if.end145:                                        ; preds = %if.then136, %if.else132.if.end145_crit_edge, %if.then120, %if.then106, %if.end98
  %need_tailroom.1 = phi i32 [ %., %if.end98 ], [ 0, %if.then120 ], [ 0, %if.then136 ], [ 0, %if.else132.if.end145_crit_edge ], [ 0, %if.then106 ]
  %fc.1 = phi i16 [ %.388, %if.end98 ], [ 264, %if.then120 ], [ 8, %if.then136 ], [ 8, %if.else132.if.end145_crit_edge ], [ 520, %if.then106 ]
  %hdr_len.1 = phi i32 [ %.389, %if.end98 ], [ 24, %if.then120 ], [ 24, %if.then136 ], [ 24, %if.else132.if.end145_crit_edge ], [ 24, %if.then106 ]
  %73 = tail call i16 @llvm.bswap.i16(i16 %fc.1)
  %74 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %hdr, align 2
  %call146 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %skip_header_bytes.0) #7
  %func = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %75 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %func, align 4
  %need_tx_headroom = getelementptr inbounds %struct.prism2_helper_functions, ptr %76, i32 0, i32 17
  %77 = ptrtoint ptr %need_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %need_tx_headroom, align 4
  %add147 = add nuw nsw i32 %hdr_len.1, %encaps_len.0
  %add148 = add i32 %add147, %78
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %79 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end145.skb_tailroom.exit_crit_edge

if.end145.skb_tailroom.exit_crit_edge:            ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %83 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end145.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end145.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %need_tailroom.1)
  %cmp150 = icmp slt i32 %cond.i, %need_tailroom.1
  br i1 %cmp150, label %if.then152, label %if.else165

if.then152:                                       ; preds = %skb_tailroom.exit
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %85 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then152.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

if.then152.skb_unshare.exit_crit_edge:            ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %if.then152
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %86 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %88 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %89, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread378, !prof !107

skb_unshare.exit.thread378:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end157

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %if.then156

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %if.then152.skb_unshare.exit_crit_edge
  %cmp154 = icmp eq ptr %skb, null
  br i1 %cmp154, label %skb_unshare.exit.if.then156_crit_edge, label %skb_unshare.exit.if.end157_crit_edge

skb_unshare.exit.if.end157_crit_edge:             ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

skb_unshare.exit.if.then156_crit_edge:            ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.then156:                                       ; preds = %skb_unshare.exit.if.then156_crit_edge, %skb_unshare.exit.thread
  %tx_dropped = getelementptr i8, ptr %dev, i32 2348
  %90 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %91, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup217

if.end157:                                        ; preds = %skb_unshare.exit.if.end157_crit_edge, %skb_unshare.exit.thread378
  %skb.addr.0.i381 = phi ptr [ %call7.i, %skb_unshare.exit.thread378 ], [ %skb, %skb_unshare.exit.if.end157_crit_edge ]
  %call158 = tail call i32 @pskb_expand_head(ptr noundef nonnull %skb.addr.0.i381, i32 noundef %add148, i32 noundef %need_tailroom.1, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end157.if.end189_crit_edge, label %if.then160

if.end157.if.end189_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i381, i32 noundef 0) #7
  %tx_dropped162 = getelementptr i8, ptr %dev, i32 2348
  %92 = ptrtoint ptr %tx_dropped162 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_dropped162, align 4
  %inc163 = add i32 %93, 1
  store i32 %inc163, ptr %tx_dropped162, align 4
  br label %cleanup217

if.else165:                                       ; preds = %skb_tailroom.exit
  %94 = ptrtoint ptr %data43 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data43, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %96 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i351 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i352 = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i353 = sub i32 %sub.ptr.lhs.cast.i351, %sub.ptr.rhs.cast.i352
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i353, i32 %add148)
  %cmp167 = icmp ult i32 %sub.ptr.sub.i353, %add148
  br i1 %cmp167, label %if.then169, label %if.else179

if.then169:                                       ; preds = %if.else165
  %call171 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %add148) #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  %cmp172 = icmp eq ptr %call171, null
  br i1 %cmp172, label %if.then174, label %if.then169.if.end189_crit_edge

if.then169.if.end189_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then174:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dropped176 = getelementptr i8, ptr %dev, i32 2348
  %98 = ptrtoint ptr %tx_dropped176 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_dropped176, align 4
  %inc177 = add i32 %99, 1
  store i32 %inc177, ptr %tx_dropped176, align 4
  br label %cleanup217

if.else179:                                       ; preds = %if.else165
  %cloned.i.i354 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %100 = ptrtoint ptr %cloned.i.i354 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i355 = load i8, ptr %cloned.i.i354, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i355)
  %tobool.not.i.i356 = icmp sgt i8 %bf.load.i.i355, -1
  br i1 %tobool.not.i.i356, label %if.else179.skb_unshare.exit369_crit_edge, label %skb_cloned.exit.i362

if.else179.skb_unshare.exit369_crit_edge:         ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit369

skb_cloned.exit.i362:                             ; preds = %if.else179
  %end.i.i.i357 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %101 = ptrtoint ptr %end.i.i.i357 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i357, align 4
  %dataref.i.i358 = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 10
  %call.i.i.i.i359 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i358, i32 noundef 4) #7
  %103 = ptrtoint ptr %dataref.i.i358 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %dataref.i.i358, align 4
  %and.i.i360 = and i32 %104, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i360)
  %cmp.i.not.i361 = icmp eq i32 %and.i.i360, 1
  br i1 %cmp.i.not.i361, label %skb_cloned.exit.i362.skb_unshare.exit369_crit_edge, label %if.then6.i365

skb_cloned.exit.i362.skb_unshare.exit369_crit_edge: ; preds = %skb_cloned.exit.i362
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit369

if.then6.i365:                                    ; preds = %skb_cloned.exit.i362
  %call7.i363 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #7
  %tobool8.not.i364 = icmp eq ptr %call7.i363, null
  br i1 %tobool8.not.i364, label %skb_unshare.exit369.thread, label %skb_unshare.exit369.thread384, !prof !107

skb_unshare.exit369.thread384:                    ; preds = %if.then6.i365
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end189

skb_unshare.exit369.thread:                       ; preds = %if.then6.i365
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %if.then183

skb_unshare.exit369:                              ; preds = %skb_cloned.exit.i362.skb_unshare.exit369_crit_edge, %if.else179.skb_unshare.exit369_crit_edge
  %cmp181 = icmp eq ptr %skb, null
  br i1 %cmp181, label %skb_unshare.exit369.if.then183_crit_edge, label %skb_unshare.exit369.if.end189_crit_edge

skb_unshare.exit369.if.end189_crit_edge:          ; preds = %skb_unshare.exit369
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

skb_unshare.exit369.if.then183_crit_edge:         ; preds = %skb_unshare.exit369
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then183

if.then183:                                       ; preds = %skb_unshare.exit369.if.then183_crit_edge, %skb_unshare.exit369.thread
  %tx_dropped185 = getelementptr i8, ptr %dev, i32 2348
  %105 = ptrtoint ptr %tx_dropped185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_dropped185, align 4
  %inc186 = add i32 %106, 1
  store i32 %inc186, ptr %tx_dropped185, align 4
  br label %cleanup217

if.end189:                                        ; preds = %skb_unshare.exit369.if.end189_crit_edge, %skb_unshare.exit369.thread384, %if.then169.if.end189_crit_edge, %if.end157.if.end189_crit_edge
  %skb.addr.0 = phi ptr [ %skb.addr.0.i381, %if.end157.if.end189_crit_edge ], [ %skb, %skb_unshare.exit369.if.end189_crit_edge ], [ %call171, %if.then169.if.end189_crit_edge ], [ %call7.i363, %skb_unshare.exit369.thread384 ]
  br i1 %tobool190.not, label %if.end189.if.end193_crit_edge, label %if.then191

if.end189.if.end193_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.then191:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0, i32 noundef %encaps_len.0) #7
  %107 = call ptr @memcpy(ptr %call192, ptr %encaps_data.0, i32 %encaps_len.0)
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end189.if.end193_crit_edge
  %call194 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0, i32 noundef %hdr_len.1) #7
  %108 = call ptr @memcpy(ptr %call194, ptr %hdr, i32 %hdr_len.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %use_wds.0)
  %cmp195 = icmp eq i32 %use_wds.0, 1
  br i1 %cmp195, label %if.then197, label %if.end193.if.end200_crit_edge

if.end193.if.end200_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0, i32 noundef 6) #7
  %109 = call ptr @memcpy(ptr %call.i, ptr %3, i32 6)
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %if.end193.if.end200_crit_edge
  %tx_packets = getelementptr i8, ptr %dev, i32 2324
  %110 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_packets, align 4
  %inc202 = add i32 %111, 1
  store i32 %inc202, ptr %tx_packets, align 4
  %len203 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %112 = ptrtoint ptr %len203 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len203, align 4
  %tx_bytes = getelementptr i8, ptr %dev, i32 2332
  %114 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_bytes, align 4
  %add205 = add i32 %115, %113
  store i32 %add205, ptr %tx_bytes, align 4
  %data.i370 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %116 = ptrtoint ptr %data.i370 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i370, align 4
  %head.i371 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %118 = ptrtoint ptr %head.i371 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i371, align 8
  %sub.ptr.lhs.cast.i372 = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i373 = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i374 = sub i32 %sub.ptr.lhs.cast.i372, %sub.ptr.rhs.cast.i373
  %conv.i = trunc i32 %sub.ptr.sub.i374 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %120 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3
  %121 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %magic = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -259377502, ptr %magic, align 4
  br i1 %cmp63.not, label %if.end200.if.end212_crit_edge, label %if.then208

if.end200.if.end212_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then208:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 9
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %flags, align 1
  %125 = or i8 %124, 1
  store i8 %125, ptr %flags, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.end200.if.end212_crit_edge
  %ethertype213 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 20
  %126 = ptrtoint ptr %ethertype213 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %or, ptr %ethertype213, align 4
  %iface214 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %127 = ptrtoint ptr %iface214 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i, ptr %iface214, align 4
  %dev215 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 5
  %128 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev215, align 4
  %130 = getelementptr inbounds %struct.anon, ptr %skb.addr.0, i32 0, i32 2
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %129, ptr %130, align 8
  %call216 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %skb.addr.0) #7
  br label %cleanup217

cleanup217:                                       ; preds = %if.end212, %if.then183, %if.then174, %if.then160, %if.then156, %do.end26, %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %hdr)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_mgmt_start_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ult i32 %3, 10
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, i32 noundef %3) #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_packets = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_packets, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr i8, ptr %dev, i32 2332
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tx_bytes, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %magic = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -259377502, ptr %magic, align 4
  %iface7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %iface7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %iface7, align 4
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp9 = icmp ugt i32 %13, 31
  br i1 %cmp9, label %if.then10, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then10:                                        ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = and i16 %17, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %19 = icmp eq i16 %18, 2048
  br i1 %19, label %if.then15, label %if.then10.if.end23_crit_edge

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %15, i32 30
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %21 to i16
  %shl = shl nuw i16 %conv18, 8
  %arrayidx19 = getelementptr i8, ptr %15, i32 31
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %23 to i16
  %or = or i16 %shl, %conv20
  %ethertype = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %24 = ptrtoint ptr %ethertype to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or, ptr %ethertype, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %if.then10.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %dev24 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev24, align 4
  %27 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 8
  %call25 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_master_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %tx = alloca %struct.hostap_tx_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tx) #7
  %0 = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 3
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %3 = getelementptr inbounds i8, ptr %tx, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1, align 4
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %tx, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  %magic = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -259377502, i32 %10)
  %cmp.not = icmp eq i32 %10, -259377502
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %dev, i32 noundef %10, i32 noundef -259377502) #10
  br label %land.lhs.true220

if.end:                                           ; preds = %entry
  %host_encrypt = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 77
  %11 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 75, i32 3
  %13 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_keyidx, align 4
  %arrayidx = getelementptr %struct.local_info, ptr %6, i32 0, i32 75, i32 2, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %storemerge301 = phi ptr [ %16, %if.then6 ], [ null, %if.end.if.end12_crit_edge ]
  %storemerge = phi i32 [ 1, %if.then6 ], [ 0, %if.end.if.end12_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %storemerge301, ptr %1, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %20)
  %cmp13 = icmp ult i32 %20, 24
  br i1 %cmp13, label %do.end17, label %if.end26

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %dev, i32 noundef %20) #10
  br label %land.lhs.true220

if.end26:                                         ; preds = %if.end12
  %call27 = call i32 @hostap_handle_sta_tx(ptr noundef %6, ptr noundef nonnull %tx) #7
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %28 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call27, label %if.end26.sw.epilog_crit_edge [
    i32 3, label %if.end26.tx_exit_crit_edge
    i32 4, label %sw.bb
    i32 1, label %if.end26.land.lhs.true220_crit_edge
    i32 2, label %fail
  ]

if.end26.land.lhs.true220_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true220

if.end26.tx_exit_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_exit

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 84
  %29 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ieee_802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not = icmp ne i32 %30, 0
  %31 = and i16 %26, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %31)
  %cmp.i = icmp eq i16 %31, 2048
  %or.cond333 = select i1 %tobool31.not, i1 %cmp.i, i1 false
  br i1 %or.cond333, label %land.lhs.true34, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true34:                                  ; preds = %sw.bb
  %ethertype = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 20
  %32 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ethertype, align 4
  %conv = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %33)
  %cmp35.not = icmp eq i16 %33, -30578
  br i1 %cmp35.not, label %land.lhs.true34.sw.epilog_crit_edge, label %land.lhs.true37

land.lhs.true34.sw.epilog_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %flags = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  br i1 %tobool39.not, label %do.end43, label %land.lhs.true37.sw.epilog_crit_edge

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end43:                                         ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %dev, i32 noundef %conv) #10
  call void @hostap_dump_tx_80211(ptr noundef %dev, ptr noundef %22)
  br label %land.lhs.true220

sw.epilog:                                        ; preds = %land.lhs.true37.sw.epilog_crit_edge, %land.lhs.true34.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge
  %37 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %37)
  %cmp64 = icmp eq i16 %37, 2
  br i1 %cmp64, label %land.lhs.true66, label %sw.epilog.if.end84_crit_edge

sw.epilog.if.end84_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true66:                                  ; preds = %sw.epilog
  %ap = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %38 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ap, align 4
  %tobool67.not = icmp eq ptr %39, null
  br i1 %tobool67.not, label %land.lhs.true66.if.end84_crit_edge, label %land.lhs.true68

land.lhs.true66.if.end84_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true68:                                  ; preds = %land.lhs.true66
  %tx_callback_idx = getelementptr inbounds %struct.ap_data, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %tx_callback_idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tx_callback_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool71.not = icmp eq i16 %41, 0
  br i1 %tobool71.not, label %land.lhs.true68.if.end84_crit_edge, label %land.lhs.true72

land.lhs.true68.if.end84_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %tx_cb_idx = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %tx_cb_idx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_cb_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp74 = icmp eq i16 %43, 0
  br i1 %cmp74, label %if.then76, label %land.lhs.true72.if.end84_crit_edge

land.lhs.true72.if.end84_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %tx_cb_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %41, ptr %tx_cb_idx, align 2
  %and81 = and i16 %27, -4
  %45 = call i16 @llvm.bswap.i16(i16 %and81)
  %46 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %24, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.then76, %land.lhs.true72.if.end84_crit_edge, %land.lhs.true68.if.end84_crit_edge, %land.lhs.true66.if.end84_crit_edge, %sw.epilog.if.end84_crit_edge
  %fc.0 = phi i16 [ %and81, %if.then76 ], [ %27, %land.lhs.true72.if.end84_crit_edge ], [ %27, %land.lhs.true68.if.end84_crit_edge ], [ %27, %land.lhs.true66.if.end84_crit_edge ], [ %27, %sw.epilog.if.end84_crit_edge ]
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %24, align 2
  %49 = and i16 %48, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %49)
  %cmp.i303 = icmp eq i16 %49, 2048
  br i1 %cmp.i303, label %if.end84.if.end89_crit_edge, label %if.then87

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %1, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end84.if.end89_crit_edge
  %ieee_802_1x90 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 84
  %51 = ptrtoint ptr %ieee_802_1x90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ieee_802_1x90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool91.not = icmp eq i32 %52, 0
  br i1 %tobool91.not, label %if.end89.if.end109thread-pre-split_crit_edge, label %land.lhs.true92

if.end89.if.end109thread-pre-split_crit_edge:     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109thread-pre-split

land.lhs.true92:                                  ; preds = %if.end89
  %ethertype93 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 20
  %53 = ptrtoint ptr %ethertype93 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ethertype93, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %54)
  %cmp95 = icmp eq i16 %54, -30578
  br i1 %cmp95, label %land.lhs.true97, label %land.lhs.true92.if.end109thread-pre-split_crit_edge

land.lhs.true92.if.end109thread-pre-split_crit_edge: ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109thread-pre-split

land.lhs.true97:                                  ; preds = %land.lhs.true92
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %tobool99.not = icmp ne ptr %56, null
  %57 = and i16 %fc.0, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool103.not = icmp eq i16 %57, 0
  %or.cond = select i1 %tobool99.not, i1 %tobool103.not, i1 false
  br i1 %or.cond, label %lor.lhs.false123.thread, label %land.lhs.true97.if.end109_crit_edge

land.lhs.true97.if.end109_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

lor.lhs.false123.thread:                          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %1, align 4
  br label %if.else136

if.end109thread-pre-split:                        ; preds = %land.lhs.true92.if.end109thread-pre-split_crit_edge, %if.end89.if.end109thread-pre-split_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load ptr, ptr %1, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.end109thread-pre-split, %land.lhs.true97.if.end109_crit_edge
  %60 = phi ptr [ %.pr, %if.end109thread-pre-split ], [ %56, %land.lhs.true97.if.end109_crit_edge ]
  %tobool111.not = icmp eq ptr %60, null
  br i1 %tobool111.not, label %lor.lhs.false123, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end109
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %tobool114.not = icmp eq ptr %62, null
  br i1 %tobool114.not, label %land.lhs.true112.if.end164.thread_crit_edge, label %lor.lhs.false

land.lhs.true112.if.end164.thread_crit_edge:      ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.thread

lor.lhs.false:                                    ; preds = %land.lhs.true112
  %encrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %encrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %encrypt_mpdu, align 4
  %tobool117.not = icmp eq ptr %64, null
  br i1 %tobool117.not, label %lor.lhs.false.if.end164.thread_crit_edge, label %land.lhs.true130

lor.lhs.false.if.end164.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.thread

if.end164.thread:                                 ; preds = %lor.lhs.false.if.end164.thread_crit_edge, %land.lhs.true112.if.end164.thread_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %1, align 4
  br label %if.end199

lor.lhs.false123:                                 ; preds = %if.end109
  %tx_keyidx127 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 75, i32 3
  %66 = ptrtoint ptr %tx_keyidx127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_keyidx127, align 4
  %arrayidx128 = getelementptr %struct.local_info, ptr %6, i32 0, i32 75, i32 2, i32 %67
  %68 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx128, align 4
  %tobool129.not = icmp ne ptr %69, null
  %or.cond302 = and i1 %cmp.i303, %tobool129.not
  br i1 %or.cond302, label %lor.lhs.false123.if.then132_crit_edge, label %lor.lhs.false123.if.else136_crit_edge

lor.lhs.false123.if.else136_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else136

lor.lhs.false123.if.then132_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then132

land.lhs.true130:                                 ; preds = %lor.lhs.false
  br i1 %cmp.i303, label %land.lhs.true130.if.then132_crit_edge, label %land.lhs.true130.if.else136_crit_edge

land.lhs.true130.if.else136_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else136

land.lhs.true130.if.then132_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then132

if.then132:                                       ; preds = %land.lhs.true130.if.then132_crit_edge, %lor.lhs.false123.if.then132_crit_edge
  %70 = or i16 %fc.0, 16384
  %71 = call i16 @llvm.bswap.i16(i16 %70)
  %72 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %24, align 2
  br label %if.end164

if.else136:                                       ; preds = %land.lhs.true130.if.else136_crit_edge, %lor.lhs.false123.if.else136_crit_edge, %lor.lhs.false123.thread
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 132
  %73 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %drop_unencrypted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool137.not = icmp eq i32 %74, 0
  br i1 %tobool137.not, label %if.else136.if.end164_crit_edge, label %land.lhs.true138

if.else136.if.end164_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

land.lhs.true138:                                 ; preds = %if.else136
  %75 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %24, align 2
  %77 = and i16 %76, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %77)
  %cmp.i304 = icmp eq i16 %77, 2048
  br i1 %cmp.i304, label %land.lhs.true142, label %land.lhs.true138.if.end164_crit_edge

land.lhs.true138.if.end164_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

land.lhs.true142:                                 ; preds = %land.lhs.true138
  %ethertype143 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 20
  %78 = ptrtoint ptr %ethertype143 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ethertype143, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %79)
  %cmp145.not = icmp eq i16 %79, -30578
  br i1 %cmp145.not, label %land.lhs.true142.if.end164_crit_edge, label %if.then147

land.lhs.true142.if.end164_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then147:                                       ; preds = %land.lhs.true142
  %call148 = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then147.land.lhs.true220_crit_edge, label %do.end153

if.then147.land.lhs.true220_crit_edge:            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true220

do.end153:                                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %dev) #10
  br label %land.lhs.true220

if.end164:                                        ; preds = %land.lhs.true142.if.end164_crit_edge, %land.lhs.true138.if.end164_crit_edge, %if.else136.if.end164_crit_edge, %if.then132
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr319 = load ptr, ptr %1, align 4
  %tobool166.not = icmp eq ptr %.pr319, null
  br i1 %tobool166.not, label %if.end164.if.end199_crit_edge, label %if.then167

if.end164.if.end199_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199

if.then167:                                       ; preds = %if.end164
  %81 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %local1.i = getelementptr i8, ptr %83, i32 2316
  %84 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %local1.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %87)
  %cmp.i305 = icmp ult i32 %87, 24
  br i1 %cmp.i305, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #7
  br label %land.lhs.true220.thread

if.end.i:                                         ; preds = %if.then167
  %tkip_countermeasures.i = getelementptr inbounds %struct.local_info, ptr %85, i32 0, i32 131
  %88 = ptrtoint ptr %tkip_countermeasures.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tkip_countermeasures.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %.pr319, i32 0, i32 1
  %90 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call2.i = call i32 @strcmp(ptr noundef %93, ptr noundef nonnull dereferenceable(5) @.str.57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %call5.i = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.if.end11.i_crit_edge, label %do.end.i

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.local_info, ptr %85, i32 0, i32 5
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %95, i32 0, i32 2
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %97, ptr noundef %addr1.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then4.i.if.end11.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #7
  br label %land.lhs.true220.thread

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 12
  %98 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end12.i.skb_unshare.exit.i_crit_edge, label %skb_cloned.exit.i.i

if.end12.i.skb_unshare.exit.i_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit.i

skb_cloned.exit.i.i:                              ; preds = %if.end12.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %99 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %100, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #7
  %101 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %102, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge, label %if.then6.i.i

skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge: ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_unshare.exit.i

if.then6.i.i:                                     ; preds = %skb_cloned.exit.i.i
  %call7.i.i = call ptr @skb_copy(ptr noundef %22, i32 noundef 2592) #7
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %skb_unshare.exit.thread.i, label %skb_unshare.exit.thread101.i, !prof !107

skb_unshare.exit.thread101.i:                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef %22) #7
  br label %if.end16.i

skb_unshare.exit.thread.i:                        ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #7
  br label %land.lhs.true220.thread

skb_unshare.exit.i:                               ; preds = %skb_cloned.exit.i.i.skb_unshare.exit.i_crit_edge, %if.end12.i.skb_unshare.exit.i_crit_edge
  %cmp14.i = icmp eq ptr %22, null
  br i1 %cmp14.i, label %skb_unshare.exit.i.land.lhs.true220.thread_crit_edge, label %skb_unshare.exit.i.if.end16.i_crit_edge

skb_unshare.exit.i.if.end16.i_crit_edge:          ; preds = %skb_unshare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

skb_unshare.exit.i.land.lhs.true220.thread_crit_edge: ; preds = %skb_unshare.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true220.thread

if.end16.i:                                       ; preds = %skb_unshare.exit.i.if.end16.i_crit_edge, %skb_unshare.exit.thread101.i
  %skb.addr.0.i104.i = phi ptr [ %call7.i.i, %skb_unshare.exit.thread101.i ], [ %22, %skb_unshare.exit.i.if.end16.i_crit_edge ]
  %ops17.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %.pr319, i32 0, i32 1
  %103 = ptrtoint ptr %ops17.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops17.i, align 4
  %extra_mpdu_prefix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %extra_mpdu_prefix_len.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %extra_mpdu_prefix_len.i, align 4
  %extra_msdu_prefix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %104, i32 0, i32 15
  %107 = ptrtoint ptr %extra_msdu_prefix_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %extra_msdu_prefix_len.i, align 4
  %add.i = add i32 %108, %106
  %extra_mpdu_postfix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %104, i32 0, i32 14
  %109 = ptrtoint ptr %extra_mpdu_postfix_len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %extra_mpdu_postfix_len.i, align 4
  %extra_msdu_postfix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %104, i32 0, i32 16
  %111 = ptrtoint ptr %extra_msdu_postfix_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %extra_msdu_postfix_len.i, align 4
  %add21.i = add i32 %112, %110
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 19
  %113 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 18
  %115 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %add.i)
  %cmp23.i = icmp ult i32 %sub.ptr.sub.i.i, %add.i
  br i1 %cmp23.i, label %if.end16.i.land.lhs.true26.i_crit_edge, label %lor.lhs.false.i

if.end16.i.land.lhs.true26.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true26.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 7
  %117 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.i.not.i.i = icmp eq i32 %118, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %lor.lhs.false.i.skb_tailroom.exit.i_crit_edge

lor.lhs.false.i.skb_tailroom.exit.i_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 17
  %119 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 16
  %121 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i95.i = ptrtoint ptr %120 to i32
  %sub.ptr.rhs.cast.i96.i = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i97.i = sub i32 %sub.ptr.lhs.cast.i95.i, %sub.ptr.rhs.cast.i96.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %lor.lhs.false.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i97.i, %cond.false.i.i ], [ 0, %lor.lhs.false.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %add21.i)
  %cmp25.i = icmp slt i32 %cond.i.i, %add21.i
  br i1 %cmp25.i, label %skb_tailroom.exit.i.land.lhs.true26.i_crit_edge, label %skb_tailroom.exit.i.if.end30.i_crit_edge

skb_tailroom.exit.i.if.end30.i_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

skb_tailroom.exit.i.land.lhs.true26.i_crit_edge:  ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %skb_tailroom.exit.i.land.lhs.true26.i_crit_edge, %if.end16.i.land.lhs.true26.i_crit_edge
  %call27.i = call i32 @pskb_expand_head(ptr noundef nonnull %skb.addr.0.i104.i, i32 noundef %add.i, i32 noundef %add21.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.if.end30.i_crit_edge, label %if.then29.i

land.lhs.true26.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i104.i, i32 noundef 0) #7
  br label %land.lhs.true220.thread

if.end30.i:                                       ; preds = %land.lhs.true26.i.if.end30.i_crit_edge, %skb_tailroom.exit.i.if.end30.i_crit_edge
  %123 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %124, align 2
  %call32.i = call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %126) #7
  %refcnt.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %.pr319, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %127 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !108
  %128 = ptrtoint ptr %ops17.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops17.i, align 4
  %encrypt_msdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %129, i32 0, i32 6
  %130 = ptrtoint ptr %encrypt_msdu.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %encrypt_msdu.i, align 4
  %tobool34.not.i = icmp eq ptr %131, null
  br i1 %tobool34.not.i, label %if.end30.i.land.lhs.true41.i_crit_edge, label %if.end39.i

if.end30.i.land.lhs.true41.i_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true41.i

if.end39.i:                                       ; preds = %if.end30.i
  %priv.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %.pr319, i32 0, i32 2
  %132 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv.i, align 4
  %call38.i = call i32 %131(ptr noundef nonnull %skb.addr.0.i104.i, i32 noundef %call32.i, ptr noundef %133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp40.i = icmp eq i32 %call38.i, 0
  br i1 %cmp40.i, label %if.end39.i.land.lhs.true41.i_crit_edge, label %if.end39.i.if.end49.i_crit_edge

if.end39.i.if.end49.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.end39.i.land.lhs.true41.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true41.i

land.lhs.true41.i:                                ; preds = %if.end39.i.land.lhs.true41.i_crit_edge, %if.end30.i.land.lhs.true41.i_crit_edge
  %134 = ptrtoint ptr %ops17.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops17.i, align 4
  %encrypt_mpdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %encrypt_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %encrypt_mpdu.i, align 4
  %tobool43.not.i = icmp eq ptr %137, null
  br i1 %tobool43.not.i, label %land.lhs.true41.i.if.end49.i_crit_edge, label %if.then44.i

land.lhs.true41.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv47.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %.pr319, i32 0, i32 2
  %138 = ptrtoint ptr %priv47.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv47.i, align 4
  %call48.i = call i32 %137(ptr noundef nonnull %skb.addr.0.i104.i, i32 noundef %call32.i, ptr noundef %139) #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %land.lhs.true41.i.if.end49.i_crit_edge, %if.end39.i.if.end49.i_crit_edge
  %res.1.i = phi i32 [ %call48.i, %if.then44.i ], [ 0, %land.lhs.true41.i.if.end49.i_crit_edge ], [ %call38.i, %if.end39.i.if.end49.i_crit_edge ]
  %call.i.i94.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %140 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1.i)
  %cmp51.i = icmp slt i32 %res.1.i, 0
  br i1 %cmp51.i, label %if.then52.i, label %if.end180

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i104.i, i32 noundef 0) #7
  br label %land.lhs.true220.thread

land.lhs.true220.thread:                          ; preds = %if.then52.i, %if.then29.i, %skb_unshare.exit.i.land.lhs.true220.thread_crit_edge, %skb_unshare.exit.thread.i, %if.end11.i, %if.then.i
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %dev) #10
  br label %tx_exit

if.end180:                                        ; preds = %if.end49.i
  %magic183 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i104.i, i32 0, i32 3, i32 4
  %141 = ptrtoint ptr %magic183 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %magic183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -259377502, i32 %142)
  %cmp184.not = icmp eq i32 %142, -259377502
  br i1 %cmp184.not, label %if.end180.if.end199_crit_edge, label %land.lhs.true220.thread329

if.end180.if.end199_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199

land.lhs.true220.thread329:                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %dev, i32 noundef %142, i32 noundef -259377502) #10
  %tx_dropped196 = getelementptr i8, ptr %dev, i32 2348
  %143 = ptrtoint ptr %tx_dropped196 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_dropped196, align 4
  %inc197 = add i32 %144, 1
  store i32 %inc197, ptr %tx_dropped196, align 4
  br label %if.then222

if.end199:                                        ; preds = %if.end180.if.end199_crit_edge, %if.end164.if.end199_crit_edge, %if.end164.thread
  %skb.addr.0 = phi ptr [ %skb.addr.0.i104.i, %if.end180.if.end199_crit_edge ], [ %22, %if.end164.if.end199_crit_edge ], [ %22, %if.end164.thread ]
  %func = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %145 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %func, align 4
  %tx200 = getelementptr inbounds %struct.prism2_helper_functions, ptr %146, i32 0, i32 14
  %147 = ptrtoint ptr %tx200 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tx200, align 4
  %cmp201 = icmp eq ptr %148, null
  br i1 %cmp201, label %if.end199.land.lhs.true220_crit_edge, label %lor.lhs.false203

if.end199.land.lhs.true220_crit_edge:             ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true220

lor.lhs.false203:                                 ; preds = %if.end199
  %call206 = call i32 %148(ptr noundef %skb.addr.0, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.else212, label %lor.lhs.false203.land.lhs.true220_crit_edge

lor.lhs.false203.land.lhs.true220_crit_edge:      ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true220

if.else212:                                       ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets = getelementptr i8, ptr %dev, i32 2324
  %149 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_packets, align 4
  %inc214 = add i32 %150, 1
  store i32 %inc214, ptr %tx_packets, align 4
  %len215 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %151 = ptrtoint ptr %len215 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len215, align 4
  br label %land.lhs.true220

fail:                                             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_exit

land.lhs.true220:                                 ; preds = %if.else212, %lor.lhs.false203.land.lhs.true220_crit_edge, %if.end199.land.lhs.true220_crit_edge, %do.end153, %if.then147.land.lhs.true220_crit_edge, %do.end43, %if.end26.land.lhs.true220_crit_edge, %do.end17, %do.end
  %.sink = phi i32 [ 2332, %if.else212 ], [ 2348, %do.end43 ], [ 2348, %do.end17 ], [ 2348, %do.end ], [ 2348, %if.end26.land.lhs.true220_crit_edge ], [ 2348, %do.end153 ], [ 2348, %if.then147.land.lhs.true220_crit_edge ], [ 2348, %lor.lhs.false203.land.lhs.true220_crit_edge ], [ 2348, %if.end199.land.lhs.true220_crit_edge ]
  %.sink334 = phi i32 [ %152, %if.else212 ], [ 1, %do.end43 ], [ 1, %do.end17 ], [ 1, %do.end ], [ %call27, %if.end26.land.lhs.true220_crit_edge ], [ 1, %do.end153 ], [ 1, %if.then147.land.lhs.true220_crit_edge ], [ 1, %lor.lhs.false203.land.lhs.true220_crit_edge ], [ 1, %if.end199.land.lhs.true220_crit_edge ]
  %skb.addr.1.ph = phi ptr [ %skb.addr.0, %if.else212 ], [ %22, %do.end43 ], [ %skb, %do.end17 ], [ %skb, %do.end ], [ %22, %if.end26.land.lhs.true220_crit_edge ], [ %22, %do.end153 ], [ %22, %if.then147.land.lhs.true220_crit_edge ], [ %skb.addr.0, %lor.lhs.false203.land.lhs.true220_crit_edge ], [ %skb.addr.0, %if.end199.land.lhs.true220_crit_edge ]
  %tx_dropped210 = getelementptr i8, ptr %dev, i32 %.sink
  %153 = ptrtoint ptr %tx_dropped210 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_dropped210, align 4
  %inc211 = add i32 %154, %.sink334
  store i32 %inc211, ptr %tx_dropped210, align 4
  %tobool221.not = icmp eq ptr %skb.addr.1.ph, null
  br i1 %tobool221.not, label %land.lhs.true220.tx_exit_crit_edge, label %land.lhs.true220.if.then222_crit_edge

land.lhs.true220.if.then222_crit_edge:            ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then222

land.lhs.true220.tx_exit_crit_edge:               ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_exit

if.then222:                                       ; preds = %land.lhs.true220.if.then222_crit_edge, %land.lhs.true220.thread329
  %skb.addr.1.ph332 = phi ptr [ %skb.addr.0.i104.i, %land.lhs.true220.thread329 ], [ %skb.addr.1.ph, %land.lhs.true220.if.then222_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %skb.addr.1.ph332) #7
  br label %tx_exit

tx_exit:                                          ; preds = %if.then222, %land.lhs.true220.tx_exit_crit_edge, %fail, %land.lhs.true220.thread, %if.end26.tx_exit_crit_edge
  %ret.1 = phi i32 [ 0, %if.then222 ], [ 0, %land.lhs.true220.tx_exit_crit_edge ], [ 16, %fail ], [ 0, %if.end26.tx_exit_crit_edge ], [ 0, %land.lhs.true220.thread ]
  %155 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %2, align 4
  %tobool225.not = icmp eq ptr %156, null
  br i1 %tobool225.not, label %tx_exit.if.end228_crit_edge, label %if.then226

tx_exit.if.end228_crit_edge:                      ; preds = %tx_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end228

if.then226:                                       ; preds = %tx_exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @hostap_handle_sta_release(ptr noundef nonnull %156) #7
  br label %if.end228

if.end228:                                        ; preds = %if.then226, %tx_exit.if.end228_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tx) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_handle_sta_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_handle_sta_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_80211_get_hdrlen(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hostap_dump_tx_80211._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hostap_dump_tx_80211._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 35, i32 2}
!8 = !{ptr @hostap_dump_tx_80211._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hostap_dump_tx_80211._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 42, i32 3}
!15 = !{ptr @hostap_dump_tx_80211._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hostap_dump_tx_80211._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 46, i32 2}
!19 = !{ptr @hostap_dump_tx_80211._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hostap_dump_tx_80211._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 49, i32 2}
!23 = !{ptr @hostap_dump_tx_80211._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hostap_dump_tx_80211._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 50, i32 2}
!27 = !{ptr @hostap_dump_tx_80211._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hostap_dump_tx_80211._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 51, i32 2}
!31 = !{ptr @hostap_dump_tx_80211._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hostap_dump_tx_80211._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 53, i32 3}
!35 = !{ptr @hostap_dump_tx_80211._entry.24, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hostap_dump_tx_80211._entry_ptr.26, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @hostap_dump_tx_80211._entry.27, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 54, i32 2}
!39 = !{ptr @hostap_dump_tx_80211._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 81, i32 3}
!42 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hostap_data_start_xmit._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hostap_data_start_xmit._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 95, i32 4}
!47 = !{ptr @hostap_data_start_xmit._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hostap_data_start_xmit._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 102, i32 4}
!51 = !{ptr @hostap_data_start_xmit._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hostap_data_start_xmit._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 282, i32 3}
!55 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hostap_mgmt_start_xmit._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hostap_mgmt_start_xmit._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 403, i32 3}
!60 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hostap_master_start_xmit._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hostap_master_start_xmit._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 422, i32 3}
!65 = !{ptr @hostap_master_start_xmit._entry.41, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hostap_master_start_xmit._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 446, i32 4}
!69 = !{ptr @hostap_master_start_xmit._entry.44, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hostap_master_start_xmit._entry_ptr.46, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 507, i32 4}
!73 = !{ptr @hostap_master_start_xmit._entry.47, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hostap_master_start_xmit._entry_ptr.49, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 518, i32 4}
!77 = !{ptr @hostap_master_start_xmit._entry.50, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @hostap_master_start_xmit._entry_ptr.52, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 525, i32 4}
!81 = !{ptr @hostap_master_start_xmit._entry.53, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hostap_master_start_xmit._entry_ptr.55, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__ksymtab_hostap_master_start_xmit, !84, !"__ksymtab_hostap_master_start_xmit", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 554, i32 1}
!85 = !{ptr @bridge_tunnel_header, !86, !"bridge_tunnel_header", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 17, i32 22}
!87 = !{ptr @rfc1042_header, !88, !"rfc1042_header", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 14, i32 22}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!91 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 332, i32 31}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intersil/hostap/hostap_80211_tx.c", i32 335, i32 4}
!95 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hostap_tx_encrypt._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hostap_tx_encrypt._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2148595032, i64 2148595058, i64 2148595087, i64 2148595121, i64 2148595152, i64 2148595175}
!109 = !{i64 2148597497, i64 2148597523, i64 2148597552, i64 2148597586, i64 2148597617, i64 2148597640}
