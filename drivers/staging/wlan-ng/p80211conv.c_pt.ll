; ModuleID = '/llk/IR_all_yes/drivers/staging/wlan-ng/p80211conv.c_pt.bc'
source_filename = "../drivers/staging/wlan-ng/p80211conv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wlan_snap = type <{ [3 x i8], i16 }>
%struct.wlan_llc = type { i8, i8, i8 }
%struct.wlandevice = type { ptr, [16 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], %struct.p80211pstr32, i32, i32, [4 x [32 x i8]], [4 x i8], i32, i32, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.p80211_frmrx, %struct.iw_statistics, i8, [8 x [6 x i8]], [8 x %struct.iw_quality] }
%struct.p80211pstr32 = type { i8, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.114, i32 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p80211_frmrx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.p80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
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
%struct.p80211_metawep = type { ptr, [4 x i8], [4 x i8] }
%struct.wlan_ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.p80211_rxmeta = type { ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@skb_ether_to_p80211.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prism2_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skb_ether_to_p80211\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/wlan-ng/p80211conv.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zero-length skb!\0A\00", [46 x i8] zeroinitializer }, align 32
@skb_ether_to_p80211.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ENCAP len: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@skb_ether_to_p80211.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"802.3 len: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@skb_ether_to_p80211.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DIXII len: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@oui_8021h = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\00\F8", [29 x i8] zeroinitializer }, align 32
@oui_rfc1042 = internal constant { [3 x i8], [29 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: Converting eth to wlan in unknown mode.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Host en-WEP failed, dropping frame (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"A4 frame too short!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WEP frame too short (%u).\0A\00", [37 x i8] zeroinitializer }, align 32
@skb_p80211_to_ether.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skb_p80211_to_ether\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Host de-WEP failed, dropping frame (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@skb_p80211_to_ether.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"802.3 ENCAP len: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ENCAP frame too large (%d > %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@skb_p80211_to_ether.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNAP+RFC1042 len: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SNAP frame too large (%d > %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@skb_p80211_to_ether.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"802.1h/RFC1042 len: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DIXII frame too large (%ld > %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@skb_p80211_to_ether.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.19, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NON-ENCAP len: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"OTHER frame too large (%d > %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"p80211skb_rxmeta_detach\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Called w/ null skb.\0A\00", [43 x i8] zeroinitializer }, align 32
@p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Called w/ bad frmmeta magic.\0A\00", [34 x i8] zeroinitializer }, align 32
@p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Called w/ bad rxmeta ptr.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: RXmeta already attached!\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Freeing an skb (%p) w/ no frmmeta.\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 122, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 127, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 135, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 145, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"oui_8021h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 80, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"oui_rfc1042\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 79, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 196, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 215, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 312, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 326, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 336, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 364, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 370, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 391, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 399, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 421, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 432, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 457, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 467, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 563, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 568, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 573, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 610, i32 7 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [40 x i8] c"../drivers/staging/wlan-ng/p80211conv.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 662, i32 7 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @oui_8021h, ptr @oui_rfc1042, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oui_8021h to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oui_rfc1042 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @skb_ether_to_p80211(ptr noundef %wlandev, i32 noundef %ethconv, ptr noundef %skb, ptr noundef writeonly %p80211_hdr, ptr noundef %p80211_wep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %e_hdr.sroa.0.0.copyload = load i8, ptr %1, align 1
  %e_hdr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 1
  %3 = ptrtoint ptr %e_hdr.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %e_hdr.sroa.7.0.copyload = load i8, ptr %e_hdr.sroa.7.0..sroa_idx, align 1
  %e_hdr.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 2
  %4 = ptrtoint ptr %e_hdr.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %e_hdr.sroa.8.0.copyload = load i8, ptr %e_hdr.sroa.8.0..sroa_idx, align 1
  %e_hdr.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 3
  %5 = ptrtoint ptr %e_hdr.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %e_hdr.sroa.9.0.copyload = load i8, ptr %e_hdr.sroa.9.0..sroa_idx, align 1
  %e_hdr.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %6 = ptrtoint ptr %e_hdr.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %e_hdr.sroa.10.0.copyload = load i8, ptr %e_hdr.sroa.10.0..sroa_idx, align 1
  %e_hdr.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 5
  %7 = ptrtoint ptr %e_hdr.sroa.11.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %e_hdr.sroa.11.0.copyload = load i8, ptr %e_hdr.sroa.11.0..sroa_idx, align 1
  %e_hdr.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 6
  %8 = ptrtoint ptr %e_hdr.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %e_hdr.sroa.12.0.copyload = load i8, ptr %e_hdr.sroa.12.0..sroa_idx, align 1
  %e_hdr.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 7
  %9 = ptrtoint ptr %e_hdr.sroa.14.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %e_hdr.sroa.14.0.copyload = load i8, ptr %e_hdr.sroa.14.0..sroa_idx, align 1
  %e_hdr.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 8
  %10 = ptrtoint ptr %e_hdr.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %e_hdr.sroa.15.0.copyload = load i8, ptr %e_hdr.sroa.15.0..sroa_idx, align 1
  %e_hdr.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 9
  %11 = ptrtoint ptr %e_hdr.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %e_hdr.sroa.16.0.copyload = load i8, ptr %e_hdr.sroa.16.0..sroa_idx, align 1
  %e_hdr.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 10
  %12 = ptrtoint ptr %e_hdr.sroa.17.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %e_hdr.sroa.17.0.copyload = load i8, ptr %e_hdr.sroa.17.0..sroa_idx, align 1
  %e_hdr.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 11
  %13 = ptrtoint ptr %e_hdr.sroa.18.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %e_hdr.sroa.18.0.copyload = load i8, ptr %e_hdr.sroa.18.0..sroa_idx, align 1
  %e_hdr.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 12
  %14 = ptrtoint ptr %e_hdr.sroa.19.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %e_hdr.sroa.19.0.copyload = load i16, ptr %e_hdr.sroa.19.0..sroa_idx, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_ether_to_p80211, %if.then3)) #8
          to label %cleanup [label %if.then3], !srcloc !74

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_ether_to_p80211.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ethconv)
  %cmp5 = icmp eq i32 %ethconv, 1
  br i1 %cmp5, label %do.body7, label %if.else

do.body7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_ether_to_p80211, %if.then19)) #8
          to label %if.end78 [label %if.then19], !srcloc !74

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_ether_to_p80211.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.4, i32 noundef %18) #8
  br label %if.end78

if.else:                                          ; preds = %if.end4
  %conv = zext i16 %e_hdr.sroa.19.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1501, i16 %e_hdr.sroa.19.0.copyload)
  %cmp24 = icmp ult i16 %e_hdr.sroa.19.0.copyload, 1501
  br i1 %cmp24, label %do.body27, label %do.body47

do.body27:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_ether_to_p80211, %if.then39)) #8
          to label %do.end43 [label %if.then39], !srcloc !74

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_ether_to_p80211.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.5, i32 noundef %20) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %call44 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #8
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %conv) #8
  br label %if.end78

do.body47:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_ether_to_p80211, %if.then59)) #8
          to label %do.end63 [label %if.then59], !srcloc !74

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_ether_to_p80211.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.6, i32 noundef %22) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %call64 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #8
  %call65 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 5) #8
  %type66 = getelementptr inbounds %struct.wlan_snap, ptr %call65, i32 0, i32 1
  %23 = ptrtoint ptr %type66 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %e_hdr.sroa.19.0.copyload, ptr %type66, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ethconv)
  %cmp67 = icmp eq i32 %ethconv, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %e_hdr.sroa.19.0.copyload)
  %cmp.i226.not = icmp eq i16 %e_hdr.sroa.19.0.copyload, -32525
  %or.cond = select i1 %cmp67, i1 %cmp.i226.not, i1 false
  br i1 %or.cond, label %if.then71, label %if.else72

if.then71:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  %24 = call ptr @memcpy(ptr %call65, ptr @oui_8021h, i32 3)
  br label %if.end75

if.else72:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call ptr @memset(ptr %call65, i32 0, i32 3)
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then71
  %call76 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #8
  %26 = ptrtoint ptr %call76 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -86, ptr %call76, align 1
  %ssap = getelementptr inbounds %struct.wlan_llc, ptr %call76, i32 0, i32 1
  %27 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -86, ptr %ssap, align 1
  %ctl = getelementptr inbounds %struct.wlan_llc, ptr %call76, i32 0, i32 2
  %28 = ptrtoint ptr %ctl to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %ctl, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.end75, %do.end43, %if.then19, %do.body7
  %macmode = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 20
  %29 = ptrtoint ptr %macmode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %macmode, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb83
    i32 3, label %sw.bb97
  ]

sw.bb:                                            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %address1 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2
  %32 = ptrtoint ptr %address1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %e_hdr.sroa.0.0.copyload, ptr %address1, align 1
  %e_hdr.sroa.7.0.arraydecay79.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %e_hdr.sroa.7.0.arraydecay79.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %e_hdr.sroa.7.0.copyload, ptr %e_hdr.sroa.7.0.arraydecay79.sroa_idx, align 1
  %e_hdr.sroa.8.0.arraydecay79.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %e_hdr.sroa.8.0.arraydecay79.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %e_hdr.sroa.8.0.copyload, ptr %e_hdr.sroa.8.0.arraydecay79.sroa_idx, align 1
  %e_hdr.sroa.9.0.arraydecay79.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %e_hdr.sroa.9.0.arraydecay79.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %e_hdr.sroa.9.0.copyload, ptr %e_hdr.sroa.9.0.arraydecay79.sroa_idx, align 1
  %e_hdr.sroa.10.0.arraydecay79.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %e_hdr.sroa.10.0.arraydecay79.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %e_hdr.sroa.10.0.copyload, ptr %e_hdr.sroa.10.0.arraydecay79.sroa_idx, align 1
  %e_hdr.sroa.11.0.arraydecay79.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %e_hdr.sroa.11.0.arraydecay79.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %e_hdr.sroa.11.0.copyload, ptr %e_hdr.sroa.11.0.arraydecay79.sroa_idx, align 1
  %address2 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 3
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  %42 = call ptr @memcpy(ptr %address2, ptr %41, i32 6)
  %address3 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4
  %bssid = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 18
  %43 = call ptr @memcpy(ptr %address3, ptr %bssid, i32 6)
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %address186 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2
  %bssid88 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 18
  %44 = call ptr @memcpy(ptr %address186, ptr %bssid88, i32 6)
  %address290 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 3
  %netdev92 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %45 = ptrtoint ptr %netdev92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev92, align 4
  %dev_addr93 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 86
  %47 = ptrtoint ptr %dev_addr93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr93, align 64
  %49 = call ptr @memcpy(ptr %address290, ptr %48, i32 6)
  %address394 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4
  %50 = ptrtoint ptr %address394 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %e_hdr.sroa.0.0.copyload, ptr %address394, align 1
  %e_hdr.sroa.7.0.arraydecay95.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %e_hdr.sroa.7.0.arraydecay95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %e_hdr.sroa.7.0.copyload, ptr %e_hdr.sroa.7.0.arraydecay95.sroa_idx, align 1
  %e_hdr.sroa.8.0.arraydecay95.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %e_hdr.sroa.8.0.arraydecay95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %e_hdr.sroa.8.0.copyload, ptr %e_hdr.sroa.8.0.arraydecay95.sroa_idx, align 1
  %e_hdr.sroa.9.0.arraydecay95.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %e_hdr.sroa.9.0.arraydecay95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %e_hdr.sroa.9.0.copyload, ptr %e_hdr.sroa.9.0.arraydecay95.sroa_idx, align 1
  %e_hdr.sroa.10.0.arraydecay95.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 4
  %54 = ptrtoint ptr %e_hdr.sroa.10.0.arraydecay95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %e_hdr.sroa.10.0.copyload, ptr %e_hdr.sroa.10.0.arraydecay95.sroa_idx, align 1
  %e_hdr.sroa.11.0.arraydecay95.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 5
  %55 = ptrtoint ptr %e_hdr.sroa.11.0.arraydecay95.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %e_hdr.sroa.11.0.copyload, ptr %e_hdr.sroa.11.0.arraydecay95.sroa_idx, align 1
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %address1101 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2
  %56 = ptrtoint ptr %address1101 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %e_hdr.sroa.0.0.copyload, ptr %address1101, align 1
  %e_hdr.sroa.7.0.arraydecay102.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %e_hdr.sroa.7.0.arraydecay102.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %e_hdr.sroa.7.0.copyload, ptr %e_hdr.sroa.7.0.arraydecay102.sroa_idx, align 1
  %e_hdr.sroa.8.0.arraydecay102.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %e_hdr.sroa.8.0.arraydecay102.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %e_hdr.sroa.8.0.copyload, ptr %e_hdr.sroa.8.0.arraydecay102.sroa_idx, align 1
  %e_hdr.sroa.9.0.arraydecay102.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %e_hdr.sroa.9.0.arraydecay102.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %e_hdr.sroa.9.0.copyload, ptr %e_hdr.sroa.9.0.arraydecay102.sroa_idx, align 1
  %e_hdr.sroa.10.0.arraydecay102.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %e_hdr.sroa.10.0.arraydecay102.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %e_hdr.sroa.10.0.copyload, ptr %e_hdr.sroa.10.0.arraydecay102.sroa_idx, align 1
  %e_hdr.sroa.11.0.arraydecay102.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 2, i32 5
  %61 = ptrtoint ptr %e_hdr.sroa.11.0.arraydecay102.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %e_hdr.sroa.11.0.copyload, ptr %e_hdr.sroa.11.0.arraydecay102.sroa_idx, align 1
  %address2104 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 3
  %bssid106 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 18
  %62 = call ptr @memcpy(ptr %address2104, ptr %bssid106, i32 6)
  %address3108 = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4
  %63 = ptrtoint ptr %address3108 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %e_hdr.sroa.12.0.copyload, ptr %address3108, align 1
  %e_hdr.sroa.14.6.arraydecay109.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %e_hdr.sroa.14.6.arraydecay109.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %e_hdr.sroa.14.0.copyload, ptr %e_hdr.sroa.14.6.arraydecay109.sroa_idx, align 1
  %e_hdr.sroa.15.6.arraydecay109.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %e_hdr.sroa.15.6.arraydecay109.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %e_hdr.sroa.15.0.copyload, ptr %e_hdr.sroa.15.6.arraydecay109.sroa_idx, align 1
  %e_hdr.sroa.16.6.arraydecay109.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 3
  %66 = ptrtoint ptr %e_hdr.sroa.16.6.arraydecay109.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %e_hdr.sroa.16.0.copyload, ptr %e_hdr.sroa.16.6.arraydecay109.sroa_idx, align 1
  %e_hdr.sroa.17.6.arraydecay109.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %e_hdr.sroa.17.6.arraydecay109.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %e_hdr.sroa.17.0.copyload, ptr %e_hdr.sroa.17.6.arraydecay109.sroa_idx, align 1
  %e_hdr.sroa.18.6.arraydecay109.sroa_idx = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 4, i32 5
  %68 = ptrtoint ptr %e_hdr.sroa.18.6.arraydecay109.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %e_hdr.sroa.18.0.copyload, ptr %e_hdr.sroa.18.6.arraydecay109.sroa_idx, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %netdev110 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %69 = ptrtoint ptr %netdev110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev110, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %70, ptr noundef nonnull @.str.7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb97, %sw.bb83, %sw.bb
  %fc.0 = phi i16 [ 2050, %sw.bb97 ], [ 2049, %sw.bb83 ], [ 2048, %sw.bb ]
  %71 = ptrtoint ptr %p80211_wep to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %p80211_wep, align 4
  %hostwep = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %72 = ptrtoint ptr %hostwep to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hostwep, align 4
  %74 = and i32 %73, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %74)
  %.not = icmp eq i32 %74, 96
  br i1 %.not, label %if.end8.i, label %sw.epilog.if.end141_crit_edge

sw.epilog.if.end141_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.end8.i:                                        ; preds = %sw.epilog
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %76, i32 noundef 2592) #12
  %77 = ptrtoint ptr %p80211_wep to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i, ptr %p80211_wep, align 4
  %tobool122.not = icmp eq ptr %call9.i, null
  br i1 %tobool122.not, label %if.end8.i.cleanup_crit_edge, label %if.end124

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end124:                                        ; preds = %if.end8.i
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %82 = ptrtoint ptr %hostwep to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hostwep, align 4
  %and129 = and i32 %83, 3
  %iv = getelementptr inbounds %struct.p80211_metawep, ptr %p80211_wep, i32 0, i32 1
  %icv = getelementptr inbounds %struct.p80211_metawep, ptr %p80211_wep, i32 0, i32 2
  %call132 = tail call i32 @wep_encrypt(ptr noundef %wlandev, ptr noundef %79, ptr noundef nonnull %call9.i, i32 noundef %81, i32 noundef %and129, ptr noundef %iv, ptr noundef %icv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end137, label %if.then134

if.then134:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %netdev135 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %84 = ptrtoint ptr %netdev135 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev135, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %85, ptr noundef nonnull @.str.8, i32 noundef %call132) #11
  %86 = ptrtoint ptr %p80211_wep to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p80211_wep, align 4
  tail call void @kfree(ptr noundef %87) #8
  br label %cleanup

if.end137:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %88 = or i16 %fc.0, 64
  br label %if.end141

if.end141:                                        ; preds = %if.end137, %sw.epilog.if.end141_crit_edge
  %fc.1 = phi i16 [ %88, %if.end137 ], [ %fc.0, %sw.epilog.if.end141_crit_edge ]
  %89 = ptrtoint ptr %p80211_hdr to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %fc.1, ptr %p80211_hdr, align 1
  %duration_id = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 1
  %90 = ptrtoint ptr %duration_id to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %duration_id, align 1
  %sequence_control = getelementptr inbounds %struct.p80211_hdr, ptr %p80211_hdr, i32 0, i32 5
  %91 = ptrtoint ptr %sequence_control to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 0, ptr %sequence_control, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.then134, %if.end8.i.cleanup_crit_edge, %sw.default, %if.then3, %do.body
  %retval.0 = phi i32 [ 1, %sw.default ], [ 2, %if.then134 ], [ 0, %if.end141 ], [ 1, %if.then3 ], [ -12, %if.end8.i.cleanup_crit_edge ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @p80211_stt_findproto(i16 noundef zeroext %proto) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %proto)
  %cmp = icmp eq i16 %proto, -32525
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wep_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @skb_p80211_to_ether(ptr noundef %wlandev, i32 noundef %ethconv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub2 = add i32 %3, -28
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %and = lshr i32 %conv, 8
  %shr = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp = icmp eq i32 %shr, 0
  %9 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address1 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 2, i32 4
  %address2 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 3
  %add.ptr.i480 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 3, i32 4
  br label %if.end60

if.else:                                          ; preds = %entry
  %cmp.not = xor i1 %cmp, true
  %or.cond460 = select i1 %cmp.not, i1 true, i1 %cmp7
  br i1 %or.cond460, label %if.else29, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %address125 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 2
  %add.ptr.i482 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 2, i32 4
  %address3 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 4
  %add.ptr.i484 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 4, i32 4
  br label %if.end60

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp33.not = icmp ne i32 %shr, 0
  %or.cond461 = select i1 %cmp33.not, i1 %cmp7, i1 false
  br i1 %or.cond461, label %if.then41, label %if.else48

if.then41:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %address343 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 4
  %add.ptr.i486 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 4, i32 4
  %address246 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 3
  %add.ptr.i488 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 3, i32 4
  br label %if.end60

if.else48:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub2)
  %cmp49 = icmp ult i32 %sub2, 6
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %sub52 = add i32 %3, -34
  %address354 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 4
  %add.ptr.i490 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 4, i32 4
  %address4 = getelementptr inbounds %struct.p80211_hdr, ptr %5, i32 0, i32 6
  %add.ptr.i492 = getelementptr %struct.p80211_hdr, ptr %5, i32 0, i32 6, i32 4
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then41, %if.then23, %if.then
  %daddr.sroa.0.sroa.13.0.in.in = phi ptr [ %address1, %if.then ], [ %address343, %if.then41 ], [ %address354, %if.end ], [ %address125, %if.then23 ]
  %daddr.sroa.14.0.in = phi ptr [ %add.ptr.i, %if.then ], [ %add.ptr.i486, %if.then41 ], [ %add.ptr.i490, %if.end ], [ %add.ptr.i482, %if.then23 ]
  %saddr.sroa.0.sroa.13.0.in.in = phi ptr [ %address2, %if.then ], [ %address246, %if.then41 ], [ %address4, %if.end ], [ %address3, %if.then23 ]
  %saddr.sroa.14.0.in = phi ptr [ %add.ptr.i480, %if.then ], [ %add.ptr.i488, %if.then41 ], [ %add.ptr.i492, %if.end ], [ %add.ptr.i484, %if.then23 ]
  %payload_offset.0 = phi i32 [ 24, %if.then ], [ 24, %if.then41 ], [ 30, %if.end ], [ 24, %if.then23 ]
  %payload_length.0 = phi i32 [ %sub2, %if.then ], [ %sub2, %if.then41 ], [ %sub52, %if.end ], [ %sub2, %if.then23 ]
  %10 = ptrtoint ptr %saddr.sroa.0.sroa.13.0.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %saddr.sroa.0.sroa.13.0.in = load i32, ptr %saddr.sroa.0.sroa.13.0.in.in, align 4
  %11 = ptrtoint ptr %daddr.sroa.0.sroa.13.0.in.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %daddr.sroa.0.sroa.13.0.in = load i32, ptr %daddr.sroa.0.sroa.13.0.in.in, align 4
  %12 = ptrtoint ptr %saddr.sroa.14.0.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %saddr.sroa.14.0 = load i16, ptr %saddr.sroa.14.0.in, align 2
  %13 = ptrtoint ptr %daddr.sroa.14.0.in to i32
  call void @__asan_load2_noabort(i32 %13)
  %daddr.sroa.14.0 = load i16, ptr %daddr.sroa.14.0.in, align 2
  %hostwep = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %14 = ptrtoint ptr %hostwep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hostwep, align 4
  %and61 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool.not = icmp eq i32 %and61, 0
  %16 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool66.not = icmp eq i32 %16, 0
  %or.cond462 = select i1 %tobool.not, i1 true, i1 %tobool66.not
  %and69 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond463 = select i1 %or.cond462, i1 true, i1 %tobool70.not
  br i1 %or.cond463, label %if.end60.if.end101_crit_edge, label %if.then71

if.end60.if.end101_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %payload_length.0)
  %cmp72 = icmp ult i32 %payload_length.0, 9
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %3) #11
  br label %cleanup

if.end76:                                         ; preds = %if.then71
  %add.ptr = getelementptr i8, ptr %5, i32 %payload_offset.0
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 4
  %sub79 = add i32 %payload_length.0, -8
  %add.ptr84 = getelementptr i8, ptr %add.ptr, i32 %payload_length.0
  %add.ptr85 = getelementptr i8, ptr %add.ptr84, i32 -4
  %call = tail call i32 @wep_decrypt(ptr noundef %wlandev, ptr noundef %add.ptr78, i32 noundef %sub79, i32 noundef -1, ptr noundef %add.ptr, ptr noundef %add.ptr85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool86.not = icmp eq i32 %call, 0
  br i1 %tobool86.not, label %if.end94, label %do.body

do.body:                                          ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then92)) #8
          to label %do.end [label %if.then92], !srcloc !74

if.then92:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_p80211_to_ether.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.12, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then92, %do.body
  %decrypt_err = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 32
  %17 = ptrtoint ptr %decrypt_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %decrypt_err, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %decrypt_err, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %sub98 = add i32 %20, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub98) #8
  %decrypt = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 31
  %21 = ptrtoint ptr %decrypt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %decrypt, align 4
  %inc100 = add i32 %22, 1
  store i32 %inc100, ptr %decrypt, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end94, %if.end60.if.end101_crit_edge
  %payload_length.1 = phi i32 [ %sub79, %if.end94 ], [ %payload_length.0, %if.end60.if.end101_crit_edge ]
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %add.ptr103 = getelementptr i8, ptr %24, i32 %payload_offset.0
  %add.ptr108 = getelementptr i8, ptr %add.ptr103, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %payload_length.1)
  %cmp109 = icmp ugt i32 %payload_length.1, 13
  br i1 %cmp109, label %land.lhs.true111, label %if.else154

land.lhs.true111:                                 ; preds = %if.end101
  %25 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %26)
  %cmp113.not = icmp eq i8 %26, -86
  br i1 %cmp113.not, label %lor.lhs.false, label %land.lhs.true111.land.lhs.true118_crit_edge

land.lhs.true111.land.lhs.true118_crit_edge:      ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true118

lor.lhs.false:                                    ; preds = %land.lhs.true111
  %ssap = getelementptr inbounds %struct.wlan_llc, ptr %add.ptr103, i32 0, i32 1
  %27 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ssap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %28)
  %cmp116.not = icmp eq i8 %28, -86
  br i1 %cmp116.not, label %lor.lhs.false.land.lhs.true157_crit_edge, label %lor.lhs.false.land.lhs.true118_crit_edge

lor.lhs.false.land.lhs.true118_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true118

lor.lhs.false.land.lhs.true157_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true157

land.lhs.true118:                                 ; preds = %lor.lhs.false.land.lhs.true118_crit_edge, %land.lhs.true111.land.lhs.true118_crit_edge
  %29 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr103, align 4
  %xor.i.i = xor i32 %30, %daddr.sroa.0.sroa.13.0.in
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr103, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %32, %daddr.sroa.14.0
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false123, label %land.lhs.true118.do.body129_crit_edge

land.lhs.true118.do.body129_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body129

lor.lhs.false123:                                 ; preds = %land.lhs.true118
  %saddr125 = getelementptr inbounds %struct.wlan_ethhdr, ptr %add.ptr103, i32 0, i32 1
  %33 = ptrtoint ptr %saddr125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr125, align 4
  %xor.i.i494 = xor i32 %34, %saddr.sroa.0.sroa.13.0.in
  %add.ptr1.i.i496 = getelementptr i8, ptr %saddr125, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i496 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i496, align 2
  %xor37.i.i497 = xor i16 %36, %saddr.sroa.14.0
  %xor3.i.i498 = zext i16 %xor37.i.i497 to i32
  %or.i.i499 = or i32 %xor.i.i494, %xor3.i.i498
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i499)
  %cmp.i.i500 = icmp eq i32 %or.i.i499, 0
  br i1 %cmp.i.i500, label %lor.lhs.false123.land.lhs.true157_crit_edge, label %lor.lhs.false123.do.body129_crit_edge

lor.lhs.false123.do.body129_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body129

lor.lhs.false123.land.lhs.true157_crit_edge:      ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true157

do.body129:                                       ; preds = %lor.lhs.false123.do.body129_crit_edge, %land.lhs.true118.do.body129_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then141)) #8
          to label %do.end144 [label %if.then141], !srcloc !74

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_p80211_to_ether.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.13, i32 noundef %payload_length.1) #8
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %do.body129
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mtu, align 4
  %add = add i32 %38, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %payload_length.1, i32 %add)
  %cmp145 = icmp ugt i32 %payload_length.1, %add
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %payload_length.1, i32 noundef %add) #11
  br label %cleanup

if.end150:                                        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #10
  %call151 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %payload_offset.0) #8
  br label %if.end319

if.else154:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %payload_length.1)
  %cmp155 = icmp ugt i32 %payload_length.1, 7
  br i1 %cmp155, label %if.else154.land.lhs.true157_crit_edge, label %if.else154.do.body283_crit_edge

if.else154.do.body283_crit_edge:                  ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

if.else154.land.lhs.true157_crit_edge:            ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.else154.land.lhs.true157_crit_edge, %lor.lhs.false123.land.lhs.true157_crit_edge, %lor.lhs.false.land.lhs.true157_crit_edge
  %39 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %40)
  %cmp160 = icmp eq i8 %40, -86
  br i1 %cmp160, label %land.lhs.true162, label %land.lhs.true157.do.body283_crit_edge

land.lhs.true157.do.body283_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

land.lhs.true162:                                 ; preds = %land.lhs.true157
  %ssap163 = getelementptr inbounds %struct.wlan_llc, ptr %add.ptr103, i32 0, i32 1
  %41 = ptrtoint ptr %ssap163 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ssap163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %42)
  %cmp165 = icmp eq i8 %42, -86
  br i1 %cmp165, label %land.lhs.true167, label %land.lhs.true162.do.body283_crit_edge

land.lhs.true162.do.body283_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

land.lhs.true167:                                 ; preds = %land.lhs.true162
  %ctl = getelementptr inbounds %struct.wlan_llc, ptr %add.ptr103, i32 0, i32 2
  %43 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp169 = icmp eq i8 %44, 3
  br i1 %cmp169, label %land.lhs.true171, label %land.lhs.true167.land.lhs.true231_crit_edge

land.lhs.true167.land.lhs.true231_crit_edge:      ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true231

land.lhs.true171:                                 ; preds = %land.lhs.true167
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr108, ptr noundef nonnull dereferenceable(3) @oui_rfc1042, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp174 = icmp eq i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ethconv)
  %cmp177 = icmp eq i32 %ethconv, 3
  %or.cond464 = and i1 %cmp177, %cmp174
  br i1 %or.cond464, label %land.lhs.true179, label %lor.lhs.false182

land.lhs.true179:                                 ; preds = %land.lhs.true171
  %type = getelementptr inbounds %struct.wlan_snap, ptr %add.ptr108, i32 0, i32 1
  %45 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %46)
  %cmp.i.not = icmp eq i16 %46, -32525
  br i1 %cmp.i.not, label %land.lhs.true179.do.body189_crit_edge, label %land.lhs.true179.land.lhs.true231_crit_edge

land.lhs.true179.land.lhs.true231_crit_edge:      ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true231

land.lhs.true179.do.body189_crit_edge:            ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body189

lor.lhs.false182:                                 ; preds = %land.lhs.true171
  br i1 %cmp174, label %lor.lhs.false182.land.lhs.true231_crit_edge, label %lor.lhs.false182.do.body189_crit_edge

lor.lhs.false182.do.body189_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body189

lor.lhs.false182.land.lhs.true231_crit_edge:      ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true231

do.body189:                                       ; preds = %lor.lhs.false182.do.body189_crit_edge, %land.lhs.true179.do.body189_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then201)) #8
          to label %do.end204 [label %if.then201], !srcloc !74

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_p80211_to_ether.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.15, i32 noundef %payload_length.1) #8
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %do.body189
  %mtu205 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %47 = ptrtoint ptr %mtu205 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mtu205, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %payload_length.1, i32 %48)
  %cmp206 = icmp ugt i32 %payload_length.1, %48
  br i1 %cmp206, label %if.then208, label %if.end210

if.then208:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %payload_length.1, i32 noundef %48) #11
  br label %cleanup

if.end210:                                        ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  %call211 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %payload_offset.0) #8
  %call212 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #8
  %49 = ptrtoint ptr %call212 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %daddr.sroa.0.sroa.13.0.in, ptr %call212, align 4
  %add.ptr1.i502 = getelementptr i8, ptr %call212, i32 4
  %50 = ptrtoint ptr %add.ptr1.i502 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %daddr.sroa.14.0, ptr %add.ptr1.i502, align 2
  %saddr216 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call212, i32 0, i32 1
  %51 = ptrtoint ptr %saddr216 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %saddr.sroa.0.sroa.13.0.in, ptr %saddr216, align 4
  %add.ptr1.i504 = getelementptr %struct.wlan_ethhdr, ptr %call212, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %add.ptr1.i504 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %saddr.sroa.14.0, ptr %add.ptr1.i504, align 2
  %conv219 = trunc i32 %payload_length.1 to i16
  %type220 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call212, i32 0, i32 2
  %53 = ptrtoint ptr %type220 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %conv219, ptr %type220, align 1
  br label %if.end319

land.lhs.true231:                                 ; preds = %lor.lhs.false182.land.lhs.true231_crit_edge, %land.lhs.true179.land.lhs.true231_crit_edge, %land.lhs.true167.land.lhs.true231_crit_edge
  %54 = ptrtoint ptr %ssap163 to i32
  call void @__asan_load1_noabort(i32 %54)
  %.pr = load i8, ptr %ssap163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %.pr)
  %cmp234 = icmp eq i8 %.pr, -86
  br i1 %cmp234, label %land.lhs.true236, label %land.lhs.true231.do.body283_crit_edge

land.lhs.true231.do.body283_crit_edge:            ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

land.lhs.true236:                                 ; preds = %land.lhs.true231
  %ctl237 = getelementptr inbounds %struct.wlan_llc, ptr %add.ptr103, i32 0, i32 2
  %55 = ptrtoint ptr %ctl237 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ctl237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %cmp239 = icmp eq i8 %56, 3
  br i1 %cmp239, label %do.body242, label %land.lhs.true236.do.body283_crit_edge

land.lhs.true236.do.body283_crit_edge:            ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

do.body242:                                       ; preds = %land.lhs.true236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then254)) #8
          to label %do.end257 [label %if.then254], !srcloc !74

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_p80211_to_ether.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.17, i32 noundef %payload_length.1) #8
  br label %do.end257

do.end257:                                        ; preds = %if.then254, %do.body242
  %sub259 = add i32 %payload_length.1, -8
  %mtu260 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %57 = ptrtoint ptr %mtu260 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mtu260, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub259, i32 %58)
  %cmp261 = icmp ugt i32 %sub259, %58
  br i1 %cmp261, label %if.then263, label %if.end267

if.then263:                                       ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %sub259, i32 noundef %58) #11
  br label %cleanup

if.end267:                                        ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #10
  %call268 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %payload_offset.0) #8
  %call269 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #8
  %call270 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #8
  %call271 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #8
  %type272 = getelementptr inbounds %struct.wlan_snap, ptr %add.ptr108, i32 0, i32 1
  %59 = ptrtoint ptr %type272 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %type272, align 1
  %type273 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call271, i32 0, i32 2
  %61 = ptrtoint ptr %type273 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %type273, align 1
  %62 = ptrtoint ptr %call271 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %daddr.sroa.0.sroa.13.0.in, ptr %call271, align 4
  %add.ptr1.i506 = getelementptr i8, ptr %call271, i32 4
  %63 = ptrtoint ptr %add.ptr1.i506 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %daddr.sroa.14.0, ptr %add.ptr1.i506, align 2
  %saddr277 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call271, i32 0, i32 1
  %64 = ptrtoint ptr %saddr277 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %saddr.sroa.0.sroa.13.0.in, ptr %saddr277, align 4
  %add.ptr1.i508 = getelementptr %struct.wlan_ethhdr, ptr %call271, i32 0, i32 1, i32 4
  %65 = ptrtoint ptr %add.ptr1.i508 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %saddr.sroa.14.0, ptr %add.ptr1.i508, align 2
  br label %if.end319

do.body283:                                       ; preds = %land.lhs.true236.do.body283_crit_edge, %land.lhs.true231.do.body283_crit_edge, %land.lhs.true162.do.body283_crit_edge, %land.lhs.true157.do.body283_crit_edge, %if.else154.do.body283_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then295)) #8
          to label %do.end298 [label %if.then295], !srcloc !74

if.then295:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skb_p80211_to_ether.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.19, i32 noundef %payload_length.1) #8
  br label %do.end298

do.end298:                                        ; preds = %if.then295, %do.body283
  %mtu299 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %66 = ptrtoint ptr %mtu299 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mtu299, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %payload_length.1, i32 %67)
  %cmp300 = icmp ugt i32 %payload_length.1, %67
  br i1 %cmp300, label %if.then302, label %if.end304

if.then302:                                       ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %payload_length.1, i32 noundef %67) #11
  br label %cleanup

if.end304:                                        ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #10
  %call305 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %payload_offset.0) #8
  %call306 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #8
  %68 = ptrtoint ptr %call306 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %daddr.sroa.0.sroa.13.0.in, ptr %call306, align 4
  %add.ptr1.i510 = getelementptr i8, ptr %call306, i32 4
  %69 = ptrtoint ptr %add.ptr1.i510 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %daddr.sroa.14.0, ptr %add.ptr1.i510, align 2
  %saddr310 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call306, i32 0, i32 1
  %70 = ptrtoint ptr %saddr310 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %saddr.sroa.0.sroa.13.0.in, ptr %saddr310, align 4
  %add.ptr1.i512 = getelementptr %struct.wlan_ethhdr, ptr %call306, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %add.ptr1.i512 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %saddr.sroa.14.0, ptr %add.ptr1.i512, align 2
  %conv313 = trunc i32 %payload_length.1 to i16
  %type314 = getelementptr inbounds %struct.wlan_ethhdr, ptr %call306, i32 0, i32 2
  %72 = ptrtoint ptr %type314 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %conv313, ptr %type314, align 1
  br label %if.end319

if.end319:                                        ; preds = %if.end304, %if.end267, %if.end210, %if.end150
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  %sub222 = add i32 %74, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub222) #8
  %call320 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %1) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %75 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call320, ptr %protocol, align 8
  %spy_number = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 31
  %76 = ptrtoint ptr %spy_number to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %spy_number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool321.not = icmp eq i8 %77, 0
  br i1 %tobool321.not, label %if.end319.if.end326_crit_edge, label %if.then322

if.end319.if.end326_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

if.then322:                                       ; preds = %if.end319
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %80 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %81 to i32
  %add.ptr.i.i513 = getelementptr i8, ptr %79, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i513, i32 0, i32 1
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %82 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8397072, i32 %83)
  %cmp.i.i514.not = icmp eq i32 %83, 8397072
  br i1 %cmp.i.i514.not, label %cond.true.i, label %if.then322.for.body.lr.ph.i_crit_edge

if.then322.for.body.lr.ph.i_crit_edge:            ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

cond.true.i:                                      ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #10
  %rx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx.i, align 4
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cond.true.i, %if.then322.for.body.lr.ph.i_crit_edge
  %cond.i = phi ptr [ %85, %cond.true.i ], [ null, %if.then322.for.body.lr.ph.i_crit_edge ]
  %signal.i = getelementptr inbounds %struct.p80211_rxmeta, ptr %cond.i, i32 0, i32 5
  %noise.i = getelementptr inbounds %struct.p80211_rxmeta, ptr %cond.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 32, i32 %i.038.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx.i, ptr noundef dereferenceable(6) %h_source, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %signal.i, align 8
  %conv2.i = trunc i32 %87 to i8
  %arrayidx3.i = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 33, i32 %i.038.i
  %level.i = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 33, i32 %i.038.i, i32 1
  %88 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv2.i, ptr %level.i, align 1
  %89 = ptrtoint ptr %noise.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %noise.i, align 4
  %conv4.i = trunc i32 %90 to i8
  %noise7.i = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 33, i32 %i.038.i, i32 2
  %91 = ptrtoint ptr %noise7.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv4.i, ptr %noise7.i, align 1
  %92 = load i32, ptr %signal.i, align 8
  %93 = load i32, ptr %noise.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %93)
  %cmp10.i = icmp sgt i32 %92, %93
  %sub.i = sub i32 %92, %93
  %94 = trunc i32 %sub.i to i8
  %conv14.i = select i1 %cmp10.i, i8 %94, i8 0
  %95 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv14.i, ptr %arrayidx3.i, align 1
  %updated.i = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 33, i32 %i.038.i, i32 3
  %96 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 7, ptr %updated.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %97 = ptrtoint ptr %spy_number to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %spy_number, align 4
  %conv.i = zext i8 %98 to i32
  %cmp.i515 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i515, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end326_crit_edge

for.inc.i.if.end326_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end326:                                        ; preds = %for.inc.i.if.end326_crit_edge, %if.end319.if.end326_crit_edge
  %tobool.not.i516 = icmp eq ptr %skb, null
  br i1 %tobool.not.i516, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then4.i)) #8
          to label %cleanup [label %if.then4.i], !srcloc !74

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end326
  %cb.i.i517 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %99 = ptrtoint ptr %cb.i.i517 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i.i517, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8397072, i32 %100)
  %cmp.i.i518.not = icmp eq i32 %100, 8397072
  br i1 %cmp.i.i518.not, label %if.end25.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then21.i)) #8
          to label %cleanup [label %if.then21.i], !srcloc !74

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end25.i:                                       ; preds = %if.end5.i
  %rx.i519 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %101 = ptrtoint ptr %rx.i519 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx.i519, align 4
  %tobool26.not.i = icmp eq ptr %102, null
  br i1 %tobool26.not.i, label %do.body28.i, label %if.end44.i

do.body28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skb_p80211_to_ether, %if.then40.i)) #8
          to label %cleanup [label %if.then40.i], !srcloc !74

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end44.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %102) #8
  %103 = call ptr @memset(ptr %cb.i.i517, i32 0, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end44.i, %if.then40.i, %do.body28.i, %if.then21.i, %do.body9.i, %if.then4.i, %do.body.i, %if.then302, %if.then263, %if.then208, %if.then147, %do.end, %if.then74, %if.then51
  %retval.0 = phi i32 [ 1, %if.then74 ], [ 2, %do.end ], [ 1, %if.then208 ], [ 1, %if.then263 ], [ 1, %if.then302 ], [ 1, %if.then147 ], [ 1, %if.then51 ], [ 0, %do.body.i ], [ 0, %if.then4.i ], [ 0, %do.body9.i ], [ 0, %if.then21.i ], [ 0, %do.body28.i ], [ 0, %if.then40.i ], [ 0, %if.end44.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wep_decrypt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p80211skb_rxmeta_detach(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211skb_rxmeta_detach, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !74

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8397072, i32 %1)
  %cmp.i = icmp ne i32 %1, 8397072
  %tobool7.not59 = icmp eq ptr %cb.i, null
  %tobool7.not = or i1 %tobool7.not59, %cmp.i
  br i1 %tobool7.not, label %do.body9, label %if.end25

do.body9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211skb_rxmeta_detach, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !74

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  %rx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %do.body28, label %if.end44

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211skb_rxmeta_detach, %if.then40)) #8
          to label %cleanup [label %if.then40], !srcloc !74

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %3) #8
  %4 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then40, %do.body28, %if.then21, %do.body9, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p80211skb_rxmeta_attach(ptr noundef %wlandev, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8397072, i32 %1)
  %cmp.i.i.not = icmp eq i32 %1, 8397072
  br i1 %cmp.i.i.not, label %p80211skb_rxmeta.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

p80211skb_rxmeta.exit:                            ; preds = %entry
  %rx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %p80211skb_rxmeta.exit.if.end_crit_edge, label %if.then

p80211skb_rxmeta.exit.if.end_crit_edge:           ; preds = %p80211skb_rxmeta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %p80211skb_rxmeta.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %name = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %name) #11
  br label %exit

if.end:                                           ; preds = %p80211skb_rxmeta.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 56) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wlandev, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %8 to i64
  %hosttime = getelementptr inbounds %struct.p80211_rxmeta, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %hosttime to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %hosttime, align 8
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 36065149622157312, ptr %cb.i.i, align 8
  %rx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %rx, align 4
  br label %exit

exit:                                             ; preds = %if.end4, %if.end.exit_crit_edge, %if.then
  %result.0 = phi i32 [ 0, %if.then ], [ 0, %if.end4 ], [ 1, %if.end.exit_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p80211skb_free(ptr nocapture noundef readonly %wlandev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8397072, i32 %1)
  %cmp.i = icmp ne i32 %1, 8397072
  %tobool.not6 = icmp eq ptr %cb.i, null
  %tobool.not = or i1 %tobool.not6, %cmp.i
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %rx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end25.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211skb_free, %if.then4.i)) #8
          to label %if.end [label %if.then4.i], !srcloc !74

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.22) #8
  br label %if.end

if.end25.i:                                       ; preds = %if.then
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %tobool26.not.i = icmp eq ptr %5, null
  br i1 %tobool26.not.i, label %do.body28.i, label %if.end44.i

do.body28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211skb_free, %if.then40.i)) #8
          to label %if.end [label %if.then40.i], !srcloc !74

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.24) #8
  br label %if.end

if.end44.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %5) #8
  %6 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef %skb) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end44.i, %if.then40.i, %do.body28.i, %if.then4.i, %do.body.i
  tail call void @consume_skb(ptr noundef %skb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !51, !53, !54, !56, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 122, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug339, !1, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 127, i32 3}
!8 = !{ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug340, !7, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 135, i32 4}
!11 = !{ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug341, !10, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 145, i32 4}
!14 = !{ptr @skb_ether_to_p80211.__UNIQUE_ID_ddebug342, !13, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 196, i32 7}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 215, i32 9}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 312, i32 23}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 326, i32 8}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 336, i32 4}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug343, !24, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 364, i32 3}
!29 = !{ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug344, !28, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 370, i32 23}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 391, i32 3}
!34 = !{ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug345, !33, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 399, i32 23}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 421, i32 3}
!39 = !{ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug346, !38, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 432, i32 23}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 457, i32 3}
!44 = !{ptr @skb_p80211_to_ether.__UNIQUE_ID_ddebug347, !43, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 467, i32 23}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 563, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug348, !48, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 568, i32 3}
!53 = !{ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug349, !52, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 573, i32 3}
!56 = !{ptr @p80211skb_rxmeta_detach.__UNIQUE_ID_ddebug350, !55, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 610, i32 7}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 662, i32 7}
!61 = !{ptr @oui_8021h, !62, !"oui_8021h", i1 false, i1 false}
!62 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 80, i32 17}
!63 = !{ptr @oui_rfc1042, !64, !"oui_rfc1042", i1 false, i1 false}
!64 = !{!"../drivers/staging/wlan-ng/p80211conv.c", i32 79, i32 17}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148971177, i64 2148971182, i64 2148971195, i64 2148971239, i64 2148971273, i64 2148971294}
