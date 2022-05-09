; ModuleID = '/llk/IR_all_yes/drivers/staging/gdm724x/gdm_lte.c_pt.bc'
source_filename = "../drivers/staging/gdm724x/gdm_lte.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_dev = type { ptr, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.hci_packet = type { i16, i16, [0 x i8] }
%struct.multi_sdu = type { i16, i16, i16, i16, [0 x i8] }
%struct.sdu = type { i16, i16, i32, i32, i32, [0 x i8] }
%struct.hci_connect_ind = type { i16, i16, i32 }
%struct.hci_pdn_table_ind = type <{ i16, i16, i8, i32, i32, i8, [4 x i8], [8 x i8] }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.140 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.146, i16, i16, i16 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { [6 x i8], [6 x i8] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.nic = type { ptr, ptr, %struct.net_device_stats, %struct.pdn_table, [6 x i8], [6 x i8], i32, i16 }
%struct.pdn_table = type <{ i8, i32, i32 }>
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.arpdata = type { [6 x i8], [4 x i8], [6 x i8], [4 x i8] }

@lte_event.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lte_event.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gdm_lte_event_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gdmulte: event init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gdm_lte_event_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/gdm724x/gdm_lte.c\00", [62 x i8] zeroinitializer }, align 32
@gdm_lte_event_init._entry_ptr = internal global ptr @gdm_lte_event_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lte%%dpdn%d\00", [20 x i8] zeroinitializer }, align 32
@gdm_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gdm_lte_open, ptr @gdm_lte_close, ptr @gdm_lte_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdm_lte_set_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdm_lte_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wwan_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown IP version %d\0A\00", [41 x i8] zeroinitializer }, align 32
@gdm_lte_multi_sdu_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gdmulte: rx prevent buffer overflow\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gdm_lte_multi_sdu_pkt\00", [42 x i8] zeroinitializer }, align 32
@gdm_lte_multi_sdu_pkt._entry_ptr = internal global ptr @gdm_lte_multi_sdu_pkt._entry, section ".printk_index", align 4
@gdm_lte_multi_sdu_pkt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gdmulte: rx sdu wrong hci %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@gdm_lte_multi_sdu_pkt._entry_ptr.12 = internal global ptr @gdm_lte_multi_sdu_pkt._entry.10, section ".printk_index", align 4
@gdm_lte_multi_sdu_pkt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gdmulte: rx sdu invalid len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gdm_lte_multi_sdu_pkt._entry_ptr.15 = internal global ptr @gdm_lte_multi_sdu_pkt._entry.13, section ".printk_index", align 4
@gdm_lte_multi_sdu_pkt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gdmulte: rx sdu invalid nic_type :%x\0A\00", [56 x i8] zeroinitializer }, align 32
@gdm_lte_multi_sdu_pkt._entry_ptr.18 = internal global ptr @gdm_lte_multi_sdu_pkt._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pdn deactivated\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pdn activated, nic_type=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lte%d\00", [26 x i8] zeroinitializer }, align 32
@validate_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gdmulte: MAC invalid, restoring default\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"validate_mac_address\00", [43 x i8] zeroinitializer }, align 32
@validate_mac_address._entry_ptr = internal global ptr @validate_mac_address._entry, section ".printk_index", align 4
@gdm_lte_macaddr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\0A;\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wwan\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 45363, i64 45379, i64 45569, i64 45571]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 58]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"lte_event.0\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"lte_event.1\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 539, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 879, i32 25 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"gdm_netdev_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 822, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"wwan_type\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 46, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 785, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 787, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 787, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 654, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 696, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 707, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 712, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 718, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 737, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 746, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 511, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 860, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"gdm_lte_macaddr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 830, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [37 x i8] c"../drivers/staging/gdm724x/gdm_lte.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 47, i32 12 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @gdm_lte_event_init._entry, ptr @gdm_lte_event_init._entry_ptr, ptr @gdm_lte_multi_sdu_pkt._entry, ptr @gdm_lte_multi_sdu_pkt._entry.10, ptr @gdm_lte_multi_sdu_pkt._entry.13, ptr @gdm_lte_multi_sdu_pkt._entry.16, ptr @gdm_lte_multi_sdu_pkt._entry_ptr, ptr @gdm_lte_multi_sdu_pkt._entry_ptr.12, ptr @gdm_lte_multi_sdu_pkt._entry_ptr.15, ptr @gdm_lte_multi_sdu_pkt._entry_ptr.18, ptr @validate_mac_address._entry, ptr @validate_mac_address._entry_ptr, ptr @lte_event.0, ptr @lte_event.1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gdm_netdev_ops, ptr @wwan_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @gdm_lte_macaddr, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lte_event.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lte_event.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_event_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_multi_sdu_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_multi_sdu_pkt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_multi_sdu_pkt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_multi_sdu_pkt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdm_lte_macaddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gdm_lte_event_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lte_event.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.endthread-pre-split

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @netlink_init(i32 noundef 30, ptr noundef nonnull @gdm_lte_event_rcv) #8
  store ptr %call, ptr @lte_event.1, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pr = load ptr, ptr @lte_event.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then
  %1 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %call, %if.then ]
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @lte_event.0, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @lte_event.0, align 4
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %return

return:                                           ; preds = %do.end, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ -61, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlink_init(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdm_lte_event_rcv(ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 4
  %send_hci_func = getelementptr inbounds %struct.phy_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %send_hci_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_hci_func, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 %3(ptr noundef %5, ptr noundef %msg, i32 noundef %len, ptr noundef null, ptr noundef null) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gdm_lte_event_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lte_event.1, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @lte_event.0, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr @lte_event.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sk_socket = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket, align 8
  tail call void @sock_release(ptr noundef %3) #8
  store ptr null, ptr @lte_event.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_rx_proc(ptr noundef %phy_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_func = getelementptr inbounds %struct.phy_dev, ptr %phy_dev, i32 0, i32 4
  %0 = ptrtoint ptr %rcv_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcv_func, align 4
  %2 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_dev, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef nonnull @rx_complete, ptr noundef %phy_dev, i32 noundef 1) #8
  %4 = ptrtoint ptr %rcv_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcv_func, align 4
  %6 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_dev, align 4
  %call.1 = tail call i32 %5(ptr noundef %7, ptr noundef nonnull @rx_complete, ptr noundef %phy_dev, i32 noundef 1) #8
  %8 = ptrtoint ptr %rcv_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcv_func, align 4
  %10 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_dev, align 4
  %call.2 = tail call i32 %9(ptr noundef %11, ptr noundef nonnull @rx_complete, ptr noundef %phy_dev, i32 noundef 1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_complete(ptr nocapture noundef readonly %arg, ptr noundef %data, i32 noundef %len, i32 noundef %context) #0 align 64 {
entry:
  %idx.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_endian.i = getelementptr inbounds %struct.phy_dev, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %get_endian.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_endian.i, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %entry.gdm_lte_receive_pkt.exit_crit_edge, label %if.end.i

entry.gdm_lte_receive_pkt.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data, align 1
  %call2.i = tail call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %call.i, i16 noundef zeroext %5) #8
  %dev3.i = getelementptr inbounds %struct.phy_dev, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end.i.gdm_lte_receive_pkt.exit_crit_edge, label %if.end6.i

if.end.i.gdm_lte_receive_pkt.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

if.end6.i:                                        ; preds = %if.end.i
  %8 = zext i16 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %call2.i, label %if.end6.i.sw.default.i_crit_edge [
    i16 -19967, label %sw.bb.i
    i16 -19965, label %sw.bb17.i
    i16 -20173, label %sw.bb18.i
    i16 -20157, label %sw.bb20.i
  ]

if.end6.i.sw.default.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end6.i
  %nic_type7.i = getelementptr inbounds %struct.hci_packet, ptr %data, i32 4
  %9 = ptrtoint ptr %nic_type7.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %nic_type7.i, align 1
  %call8.i = tail call i32 @gdm_dev32_to_cpu(i8 noundef zeroext %call.i, i32 noundef %10) #8
  %conv.i.i = and i32 %call8.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 3
  br i1 %cmp.i.i, label %sw.bb.i.gdm_lte_receive_pkt.exit_crit_edge, label %if.end12.i

sw.bb.i.gdm_lte_receive_pkt.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

if.end12.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.hci_packet, ptr %data, i32 0, i32 2
  %arrayidx14.i = getelementptr %struct.phy_dev, ptr %arg, i32 0, i32 1, i32 %conv.i.i
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14.i, align 4
  tail call fastcc void @gdm_lte_netif_rx(ptr noundef %12, ptr noundef %data.i, i32 noundef %len, i32 noundef %call8.i) #8
  br label %gdm_lte_receive_pkt.exit

sw.bb17.i:                                        ; preds = %if.end6.i
  %13 = ptrtoint ptr %get_endian.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_endian.i, align 4
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg, align 4
  %call.i.i = tail call zeroext i8 %14(ptr noundef %16) #8
  %num_packet2.i.i = getelementptr inbounds %struct.multi_sdu, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %num_packet2.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %num_packet2.i.i, align 1
  %call3.i.i = tail call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %call.i.i, i16 noundef zeroext %18) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3.i.i)
  %cmp101.not.i.i = icmp eq i16 %call3.i.i, 0
  br i1 %cmp101.not.i.i, label %sw.bb17.i.gdm_lte_receive_pkt.exit_crit_edge, label %for.body.lr.ph.i.i

sw.bb17.i.gdm_lte_receive_pkt.exit_crit_edge:     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

for.body.lr.ph.i.i:                               ; preds = %sw.bb17.i
  %data1.i.i = getelementptr inbounds %struct.multi_sdu, ptr %data, i32 0, i32 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %data1.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end53.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0103.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end53.i.i.for.body.i.i_crit_edge ]
  %data.0102.i.i = phi ptr [ %data1.i.i, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %if.end53.i.i.for.body.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %data.0102.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %len)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %len
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %gdm_lte_receive_pkt.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %19 = ptrtoint ptr %data.0102.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %data.0102.i.i, align 1
  %call12.i.i = tail call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %call.i.i, i16 noundef zeroext %20) #8
  %len13.i.i = getelementptr inbounds %struct.sdu, ptr %data.0102.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %len13.i.i, align 1
  %call14.i.i = tail call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %call.i.i, i16 noundef zeroext %22) #8
  %nic_type15.i.i = getelementptr inbounds %struct.sdu, ptr %data.0102.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %nic_type15.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %nic_type15.i.i, align 1
  %call16.i.i = tail call i32 @gdm_dev32_to_cpu(i8 noundef zeroext %call.i.i, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -19967, i16 %call12.i.i)
  %cmp18.not.i.i = icmp eq i16 %call12.i.i, -19967
  br i1 %cmp18.not.i.i, label %if.end27.i.i, label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv17.i.i = zext i16 %call12.i.i to i32
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv17.i.i) #11
  br label %gdm_lte_receive_pkt.exit

if.end27.i.i:                                     ; preds = %if.end.i.i
  %conv28.i.i = zext i16 %call14.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %call14.i.i)
  %cmp29.i.i = icmp ult i16 %call14.i.i, 12
  br i1 %cmp29.i.i, label %if.end27.i.i.do.end39.i.i_crit_edge, label %lor.lhs.false.i.i

if.end27.i.i.do.end39.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

lor.lhs.false.i.i:                                ; preds = %if.end27.i.i
  %sub.i.i = add nsw i32 %conv28.i.i, -12
  %add33.i.i = add i32 %sub.i.i, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i.i, i32 %len)
  %cmp34.i.i = icmp ugt i32 %add33.i.i, %len
  br i1 %cmp34.i.i, label %lor.lhs.false.i.i.do.end39.i.i_crit_edge, label %if.end43.i.i

lor.lhs.false.i.i.do.end39.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end39.i.i_crit_edge, %if.end27.i.i.do.end39.i.i_crit_edge
  %call42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv28.i.i) #11
  br label %gdm_lte_receive_pkt.exit

if.end43.i.i:                                     ; preds = %lor.lhs.false.i.i
  %conv.i.i.i = and i32 %call16.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv.i.i.i, 3
  br i1 %cmp.i.i.i, label %do.end50.i.i, label %if.end53.i.i

do.end50.i.i:                                     ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call16.i.i) #11
  br label %gdm_lte_receive_pkt.exit

if.end53.i.i:                                     ; preds = %if.end43.i.i
  %arrayidx.i.i = getelementptr %struct.phy_dev, ptr %arg, i32 0, i32 1, i32 %conv.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %data55.i.i = getelementptr inbounds %struct.sdu, ptr %data.0102.i.i, i32 0, i32 5
  tail call fastcc void @gdm_lte_netif_rx(ptr noundef %26, ptr noundef %data55.i.i, i32 noundef %sub.i.i, i32 noundef %call16.i.i) #8
  %add60.i.i = add nuw nsw i32 %conv28.i.i, 3
  %and.i.i = and i32 %add60.i.i, 65532
  %add61.i.i = add nuw nsw i32 %and.i.i, 4
  %add.ptr.i.i = getelementptr i8, ptr %data.0102.i.i, i32 %add61.i.i
  %inc.i.i = add nuw i16 %i.0103.i.i, 1
  %cmp.i70.i = icmp ult i16 %inc.i.i, %call3.i.i
  br i1 %cmp.i70.i, label %if.end53.i.i.for.body.i.i_crit_edge, label %if.end53.i.i.gdm_lte_receive_pkt.exit_crit_edge

if.end53.i.i.gdm_lte_receive_pkt.exit_crit_edge:  ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

if.end53.i.i.for.body.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

sw.bb18.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %connect.i = getelementptr inbounds %struct.hci_connect_ind, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %connect.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %connect.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %tobool19.not.i, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond.i) #11
  br label %gdm_lte_receive_pkt.exit

sw.bb20.i:                                        ; preds = %if.end6.i
  %nic_type21.i = getelementptr inbounds %struct.hci_pdn_table_ind, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %nic_type21.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %nic_type21.i, align 1
  %call22.i = tail call i32 @gdm_dev32_to_cpu(i8 noundef zeroext %call.i, i32 noundef %30) #8
  %conv.i71.i = and i32 %call22.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv.i71.i)
  %cmp.i72.i = icmp ugt i32 %conv.i71.i, 3
  br i1 %cmp.i72.i, label %sw.bb20.i.gdm_lte_receive_pkt.exit_crit_edge, label %if.end27.i

sw.bb20.i.gdm_lte_receive_pkt.exit_crit_edge:     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_receive_pkt.exit

if.end27.i:                                       ; preds = %sw.bb20.i
  %arrayidx29.i = getelementptr %struct.phy_dev, ptr %arg, i32 0, i32 1, i32 %conv.i71.i
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx29.i, align 4
  %phy_dev.i.i = getelementptr i8, ptr %32, i32 2308
  %33 = ptrtoint ptr %phy_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_dev.i.i, align 4
  %get_endian.i74.i = getelementptr inbounds %struct.phy_dev, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %get_endian.i74.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_endian.i74.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %call2.i.i = tail call zeroext i8 %36(ptr noundef %38) #8
  %activate.i.i = getelementptr inbounds %struct.hci_pdn_table_ind, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %activate.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %activate.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  %pdn_table3.i.i = getelementptr i8, ptr %32, i32 2404
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i76.i

if.then.i.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = call ptr @memset(ptr %pdn_table3.i.i, i32 0, i32 9)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %32, ptr noundef nonnull @.str.19) #11
  br label %sw.default.i

if.end.i76.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %pdn_table3.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %40, ptr %pdn_table3.i.i, align 4
  %dft_eps_id.i.i = getelementptr inbounds %struct.hci_pdn_table_ind, ptr %data, i32 0, i32 3
  %43 = ptrtoint ptr %dft_eps_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %dft_eps_id.i.i, align 1
  %call7.i.i = tail call i32 @gdm_dev32_to_cpu(i8 noundef zeroext %call2.i.i, i32 noundef %44) #8
  %dft_eps_id9.i.i = getelementptr i8, ptr %32, i32 2405
  %45 = ptrtoint ptr %dft_eps_id9.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %call7.i.i, ptr %dft_eps_id9.i.i, align 1
  %46 = ptrtoint ptr %nic_type21.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %nic_type21.i, align 1
  %call10.i75.i = tail call i32 @gdm_dev32_to_cpu(i8 noundef zeroext %call2.i.i, i32 noundef %47) #8
  %nic_type12.i.i = getelementptr i8, ptr %32, i32 2409
  %48 = ptrtoint ptr %nic_type12.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %call10.i75.i, ptr %nic_type12.i.i, align 1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %32, ptr noundef nonnull @.str.20, i32 noundef %call10.i75.i) #11
  br label %sw.default.i

sw.default.i:                                     ; preds = %if.end.i76.i, %if.then.i.i, %if.end6.i.sw.default.i_crit_edge
  %dev.0.i = phi ptr [ %7, %if.end6.i.sw.default.i_crit_edge ], [ %32, %if.then.i.i ], [ %32, %if.end.i76.i ]
  %phy_dev1.i.i = getelementptr i8, ptr %dev.0.i, i32 2308
  %49 = ptrtoint ptr %phy_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_dev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i) #8
  %51 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %idx.i.i, align 4, !annotation !65
  %call2.i77.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %dev.0.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %idx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i77.i)
  %cmp.not.i.i = icmp eq i32 %call2.i77.i, 1
  br i1 %cmp.not.i.i, label %if.end.i82.i, label %sw.default.i.gdm_lte_event_send.exit.i_crit_edge

sw.default.i.gdm_lte_event_send.exit.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_event_send.exit.i

if.end.i82.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_endian.i78.i = getelementptr inbounds %struct.phy_dev, ptr %50, i32 0, i32 5
  %52 = ptrtoint ptr %get_endian.i78.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_endian.i78.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %50, align 4
  %call3.i79.i = call zeroext i8 %53(ptr noundef %55) #8
  %len4.i.i = getelementptr inbounds %struct.hci_packet, ptr %data, i32 0, i32 1
  %56 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %len4.i.i, align 1
  %call5.i.i = call zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext %call3.i79.i, i16 noundef zeroext %57) #8
  %conv.i80.i = zext i16 %call5.i.i to i32
  %add.i81.i = add nuw nsw i32 %conv.i80.i, 4
  %58 = load ptr, ptr @lte_event.1, align 4
  %59 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx.i.i, align 4
  %call6.i.i = call i32 @netlink_send(ptr noundef %58, i32 noundef %60, i16 noundef zeroext 0, ptr noundef %data, i32 noundef %add.i81.i, ptr noundef %dev.0.i) #8
  br label %gdm_lte_event_send.exit.i

gdm_lte_event_send.exit.i:                        ; preds = %if.end.i82.i, %sw.default.i.gdm_lte_event_send.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.end.i82.i ], [ -22, %sw.default.i.gdm_lte_event_send.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i) #8
  br label %gdm_lte_receive_pkt.exit

gdm_lte_receive_pkt.exit:                         ; preds = %gdm_lte_event_send.exit.i, %sw.bb20.i.gdm_lte_receive_pkt.exit_crit_edge, %sw.bb18.i, %if.end53.i.i.gdm_lte_receive_pkt.exit_crit_edge, %do.end50.i.i, %do.end39.i.i, %do.end23.i.i, %do.end.i.i, %sw.bb17.i.gdm_lte_receive_pkt.exit_crit_edge, %if.end12.i, %sw.bb.i.gdm_lte_receive_pkt.exit_crit_edge, %if.end.i.gdm_lte_receive_pkt.exit_crit_edge, %entry.gdm_lte_receive_pkt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.gdm_lte_receive_pkt.exit_crit_edge ], [ 0, %if.end.i.gdm_lte_receive_pkt.exit_crit_edge ], [ -22, %sw.bb.i.gdm_lte_receive_pkt.exit_crit_edge ], [ -22, %sw.bb20.i.gdm_lte_receive_pkt.exit_crit_edge ], [ %retval.0.i.i, %gdm_lte_event_send.exit.i ], [ 0, %sw.bb18.i ], [ 0, %if.end12.i ], [ 0, %sw.bb17.i.gdm_lte_receive_pkt.exit_crit_edge ], [ 0, %do.end.i.i ], [ 0, %do.end23.i.i ], [ 0, %do.end39.i.i ], [ 0, %do.end50.i.i ], [ 0, %if.end53.i.i.gdm_lte_receive_pkt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_lte_device(ptr noundef %phy_dev, ptr noundef %dev, ptr noundef %mac_address) local_unnamed_addr #0 align 64 {
entry:
  %pdn_dev_name = alloca [16 x i8], align 1
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdn_dev_name) #8
  %0 = call ptr @memset(ptr %pdn_dev_name, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %3 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %4 = ptrtoint ptr %mac_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_address, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac_address, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %mac_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_address, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.validate_mac_address.exit_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i.validate_mac_address.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_mac_address.exit

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %11 = call ptr @memcpy(ptr %mac_address, ptr @gdm_lte_macaddr, i32 6)
  br label %validate_mac_address.exit

validate_mac_address.exit:                        ; preds = %do.end.i, %lor.lhs.false.i.validate_mac_address.exit_crit_edge
  %tobool.not.i49 = icmp eq ptr %mac_address, null
  %gdm_lte_macaddr.mac_address = select i1 %tobool.not.i49, ptr @gdm_lte_macaddr, ptr %mac_address
  %.add.ptr.i.i = select i1 %tobool.not.i49, ptr getelementptr inbounds ([6 x i8], ptr @gdm_lte_macaddr, i32 0, i32 4), ptr %add.ptr.i.i
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %validate_mac_address.exit
  %indvars.iv = phi i32 [ 0, %validate_mac_address.exit ], [ %indvars.iv.next, %if.end17.for.body_crit_edge ]
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pdn_dev_name, ptr noundef nonnull @.str.3, i32 noundef %indvars.iv)
  %call4 = call ptr @alloc_netdev_mqs(i32 noundef 132, ptr noundef nonnull %pdn_dev_name, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.body.err_crit_edge, label %if.end

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %for.body
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gdm_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 14
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, -4097
  store i32 %and, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 20
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1500, ptr %mtu, align 4
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %16 = getelementptr i8, ptr %call4, i32 2312
  %17 = call ptr @memset(ptr %16, i32 0, i32 124)
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %add.ptr.i, align 4
  %phy_dev6 = getelementptr i8, ptr %call4, i32 2308
  %19 = ptrtoint ptr %phy_dev6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %phy_dev, ptr %phy_dev6, align 4
  %nic_id = getelementptr i8, ptr %call4, i32 2428
  %20 = ptrtoint ptr %nic_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %indvars.iv, ptr %nic_id, align 4
  %src_mac_addr = getelementptr i8, ptr %call4, i32 2419
  %dest_mac_addr = getelementptr i8, ptr %call4, i32 2413
  %21 = ptrtoint ptr %gdm_lte_macaddr.mac_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %storemerge = load i32, ptr %gdm_lte_macaddr.mac_address, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %addr, align 4
  %23 = ptrtoint ptr %.add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %.sink.i = load i16, ptr %.add.ptr.i.i, align 2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink.i, ptr %1, align 4
  %25 = trunc i16 %.sink.i to i8
  %26 = trunc i32 %indvars.iv to i8
  %add.i = add i8 %26, %25
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add.i, ptr %2, align 1
  call void @get_random_bytes(ptr noundef %src_mac_addr, i32 noundef 6) #8
  %28 = ptrtoint ptr %src_mac_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %src_mac_addr, align 1
  %30 = and i8 %29, -4
  %31 = or i8 %30, 2
  store i8 %31, ptr %src_mac_addr, align 1
  %32 = call ptr @memcpy(ptr %src_mac_addr, ptr %addr, i32 3)
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = ptrtoint ptr %dest_mac_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dest_mac_addr, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %add.ptr1.i11.i = getelementptr i8, ptr %call4, i32 2417
  %38 = ptrtoint ptr %add.ptr1.i11.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i11.i, align 2
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %parent, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 4
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @wwan_type, ptr %type, align 4
  %call14 = call i32 @register_netdev(ptr noundef nonnull %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end17:                                         ; preds = %if.end
  call void @netif_carrier_on(ptr noundef nonnull %call4) #8
  %arrayidx = getelementptr %struct.phy_dev, ptr %phy_dev, i32 0, i32 1, i32 %indvars.iv
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call4, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %if.end17.cleanup_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %for.body.err_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end.err_crit_edge ], [ -12, %for.body.err_crit_edge ]
  call void @unregister_lte_device(ptr noundef %phy_dev)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdn_dev_name) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_lte_device(ptr nocapture noundef readonly %phy_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.phy_dev, ptr %phy_dev, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %1) #8
  tail call void @free_netdev(ptr noundef nonnull %1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.phy_dev, ptr %phy_dev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %3) #8
  tail call void @free_netdev(ptr noundef nonnull %3) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.phy_dev, ptr %phy_dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %5) #8
  tail call void @free_netdev(ptr noundef nonnull %5) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.phy_dev, ptr %phy_dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %7) #8
  tail call void @free_netdev(ptr noundef nonnull %7) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @gdm_dev16_to_cpu(i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gdm_dev32_to_cpu(i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdm_lte_netif_rx(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %flagged_nic_type) unnamed_addr #0 align 64 {
entry:
  %eth = alloca %struct.ethhdr, align 1
  %vlan_eth = alloca %struct.vlan_ethhdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %eth) #8
  %0 = getelementptr inbounds [6 x i8], ptr %eth, i32 0, i32 4
  %1 = getelementptr inbounds %struct.ethhdr, ptr %eth, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ethhdr, ptr %eth, i32 0, i32 2
  %3 = call ptr @memset(ptr %eth, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %vlan_eth) #8
  %4 = getelementptr inbounds [6 x i8], ptr %vlan_eth, i32 0, i32 4
  %5 = getelementptr inbounds %struct.anon.147, ptr %vlan_eth, i32 0, i32 1
  %6 = getelementptr inbounds %struct.vlan_ethhdr, ptr %vlan_eth, i32 0, i32 1
  %7 = getelementptr inbounds %struct.vlan_ethhdr, ptr %vlan_eth, i32 0, i32 2
  %8 = getelementptr inbounds %struct.vlan_ethhdr, ptr %vlan_eth, i32 0, i32 3
  %and = and i32 %flagged_nic_type, 65535
  %9 = and i32 %flagged_nic_type, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %9)
  %.not = icmp eq i32 %9, 327680
  %10 = call ptr @memset(ptr %vlan_eth, i32 255, i32 18)
  br i1 %.not, label %if.then4, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %len)
  %cmp = icmp slt i32 %len, 62
  br i1 %cmp, label %if.then4.cleanup52_crit_edge, label %if.end

if.then4.cleanup52_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %dest_mac_addr = getelementptr i8, ptr %dev, i32 2413
  %add.ptr = getelementptr i8, ptr %buf, i32 56
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %dest_mac_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dest_mac_addr, align 4
  %add.ptr.i91 = getelementptr i8, ptr %buf, i32 60
  %14 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i91, align 2
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 2417
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %vlan_id = getelementptr i8, ptr %dev, i32 2432
  %17 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp8.not = icmp eq i16 %18, 0
  %eth.vlan_eth = select i1 %cmp8.not, ptr %eth, ptr %vlan_eth
  %. = select i1 %cmp8.not, i32 14, i32 18
  %eth.sroa.gep.vlan_eth.sroa.gep.v.sroa.sel = select i1 %cmp8.not, ptr %1, ptr %5
  %dest_mac_addr12 = getelementptr i8, ptr %dev, i32 2413
  %19 = ptrtoint ptr %dest_mac_addr12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dest_mac_addr12, align 4
  %21 = ptrtoint ptr %eth.vlan_eth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %eth.vlan_eth, align 4
  %add.ptr.i92 = getelementptr i8, ptr %dev, i32 2417
  %22 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i92, align 2
  %eth.vlan_eth.sroa.sel103.v.sroa.sel = select i1 %cmp8.not, ptr %0, ptr %4
  %24 = ptrtoint ptr %eth.vlan_eth.sroa.sel103.v.sroa.sel to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %eth.vlan_eth.sroa.sel103.v.sroa.sel, align 2
  %src_mac_addr = getelementptr i8, ptr %dev, i32 2419
  %25 = call ptr @memcpy(ptr %eth.sroa.gep.vlan_eth.sroa.gep.v.sroa.sel, ptr %src_mac_addr, i32 6)
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %18, ptr %7, align 2
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -32512, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %cmp17 = icmp eq i32 %and, 256
  br i1 %cmp17, label %if.end7.if.end40_crit_edge, label %if.else20

if.end7.if.end40_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else20:                                        ; preds = %if.end7
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %30 = lshr i8 %29, 4
  %trunc = trunc i8 %30 to i4
  %31 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.26)
  switch i4 %trunc, label %if.else36 [
    i4 4, label %if.else20.if.end40_crit_edge
    i4 6, label %if.then33
  ]

if.else20.if.end40_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then33:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else36:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %conv23 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv23) #11
  br label %cleanup52

if.end40:                                         ; preds = %if.then33, %if.else20.if.end40_crit_edge, %if.end7.if.end40_crit_edge
  %.sink106 = phi i16 [ -31011, %if.then33 ], [ 2054, %if.end7.if.end40_crit_edge ], [ 2048, %if.else20.if.end40_crit_edge ]
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %.sink106, ptr %2, align 1
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %.sink106, ptr %8, align 2
  %add41 = add i32 %len, 2
  %add42 = add i32 %add41, %.
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add42, i32 noundef 2592) #8
  %tobool44.not = icmp eq ptr %call.i.i, null
  br i1 %tobool44.not, label %if.end40.cleanup52_crit_edge, label %if.end46

if.end40.cleanup52_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end46:                                         ; preds = %if.end40
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %35, i32 2
  store ptr %add.ptr.i94, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i95 = getelementptr i8, ptr %37, i32 2
  store ptr %add.ptr1.i95, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %.) #8
  %38 = call ptr @memcpy(ptr %call.i, ptr %eth.vlan_eth, i32 %.)
  %call.i96 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #8
  %39 = call ptr @memcpy(ptr %call.i96, ptr %buf, i32 %len)
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %.val = load i16, ptr %2, align 1
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %vlan_eth.sroa.gep100.val = load i16, ptr %6, align 2
  %42 = select i1 %cmp8.not, i16 %.val, i16 %vlan_eth.sroa.gep100.val
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %protocol, align 8
  %44 = getelementptr inbounds %struct.anon.45, ptr %call.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %44, align 8
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %50 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call50 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef 14) #8
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len1.i, align 4
  %call.i98 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i98)
  %cmp.i = icmp eq i32 %call.i98, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped.i = getelementptr i8, ptr %dev, i32 2336
  %53 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dropped.i, align 4
  br label %gdm_lte_rx.exit

if.else.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %52, 14
  %stats2.i = getelementptr i8, ptr %dev, i32 2312
  %55 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats2.i, align 4
  %inc3.i = add i32 %56, 1
  store i32 %inc3.i, ptr %stats2.i, align 4
  %rx_bytes.i = getelementptr i8, ptr %dev, i32 2320
  %57 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_bytes.i, align 4
  br label %gdm_lte_rx.exit

gdm_lte_rx.exit:                                  ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %58, %if.else.i ], [ 1, %if.then.i ]
  %add.sink.i = phi i32 [ %add.i, %if.else.i ], [ %54, %if.then.i ]
  %rx_bytes.sink.i = phi ptr [ %rx_bytes.i, %if.else.i ], [ %rx_dropped.i, %if.then.i ]
  %add5.i = add i32 %add.sink.i, %.sink.i
  %59 = ptrtoint ptr %rx_bytes.sink.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add5.i, ptr %rx_bytes.sink.i, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %gdm_lte_rx.exit, %if.end40.cleanup52_crit_edge, %if.else36, %if.then4.cleanup52_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vlan_eth) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eth) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdm_lte_rx(ptr noundef %skb, ptr nocapture noundef %nic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %call = tail call i32 @netif_rx_ni(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dropped, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %1, 14
  %stats2 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %4 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats2, align 4
  %inc3 = add i32 %5, 1
  store i32 %inc3, ptr %stats2, align 4
  %rx_bytes = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %7, %if.else ], [ 1, %if.then ]
  %add.sink = phi i32 [ %add, %if.else ], [ %3, %if.then ]
  %rx_bytes.sink = phi ptr [ %rx_bytes, %if.else ], [ %rx_dropped, %if.then ]
  %add5 = add i32 %add.sink, %.sink
  %8 = ptrtoint ptr %rx_bytes.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add5, ptr %rx_bytes.sink, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_send(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_lte_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_lte_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdm_lte_tx(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %eth.i118 = alloca %struct.ethhdr, align 1
  %vlan_eth.i119 = alloca %struct.vlan_ethhdr, align 2
  %zero_addr8.i = alloca [16 x i8], align 1
  %eth.i = alloca %struct.ethhdr, align 1
  %vlan_eth.i = alloca %struct.vlan_ethhdr, align 2
  %arp_temp.sroa.11.i = alloca [6 x i8], align 2
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !65
  %nic_id.i = getelementptr i8, ptr %dev, i32 2428
  %1 = ptrtoint ptr %nic_id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic_id.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %6)
  %cmp.i = icmp eq i16 %6, -32512
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  %add.ptr.i110 = getelementptr i8, ptr %4, i32 18
  %or5.i = or i32 %2, 1048592
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %2, 16
  %add.ptr9.i = getelementptr i8, ptr %4, i32 14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %mac_proto.0.in.i = phi i16 [ %8, %if.then.i ], [ %6, %if.else.i ]
  %network_data.0.i = phi ptr [ %add.ptr.i110, %if.then.i ], [ %add.ptr9.i, %if.else.i ]
  %nic_type.0.i = phi i32 [ %or5.i, %if.then.i ], [ %or.i, %if.else.i ]
  %9 = zext i16 %mac_proto.0.in.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %mac_proto.0.in.i, label %if.end.i.gdm_lte_tx_nic_type.exit_crit_edge [
    i16 2054, label %sw.bb.i
    i16 2048, label %sw.bb11.i
    i16 -31011, label %sw.bb29.i
  ]

if.end.i.gdm_lte_tx_nic_type.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_tx_nic_type.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %nic_type.0.i, 256
  br label %gdm_lte_tx_nic_type.exit

sw.bb11.i:                                        ; preds = %if.end.i
  %or12.i = or i32 %nic_type.0.i, 65536
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %network_data.0.i, i32 0, i32 6
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %11)
  %cmp14.i = icmp eq i8 %11, 17
  br i1 %cmp14.i, label %if.then16.i, label %sw.bb11.i.gdm_lte_tx_nic_type.exit_crit_edge

sw.bb11.i.gdm_lte_tx_nic_type.exit_crit_edge:     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_tx_nic_type.exit

if.then16.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  %dest.i = getelementptr i8, ptr %network_data.0.i, i32 22
  %12 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dest.i, align 2
  %.off.i = add i16 %13, -67
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  %or26.i = or i32 %nic_type.0.i, 327680
  %spec.select82.i = select i1 %switch.i, i32 %or26.i, i32 %or12.i
  br label %gdm_lte_tx_nic_type.exit

sw.bb29.i:                                        ; preds = %if.end.i
  %or30.i = or i32 %nic_type.0.i, 131072
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %network_data.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nexthdr.i, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %15, label %sw.bb29.i.gdm_lte_tx_nic_type.exit_crit_edge [
    i8 58, label %if.then34.i
    i8 17, label %if.then47.i
  ]

sw.bb29.i.gdm_lte_tx_nic_type.exit_crit_edge:     ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_tx_nic_type.exit

if.then34.i:                                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35.i = getelementptr i8, ptr %network_data.0.i, i32 40
  %17 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %18)
  %cmp37.i = icmp eq i8 %18, -121
  %or40.i = or i32 %nic_type.0.i, 131584
  %spec.select.i = select i1 %cmp37.i, i32 %or40.i, i32 %or30.i
  br label %gdm_lte_tx_nic_type.exit

if.then47.i:                                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %dest50.i = getelementptr i8, ptr %network_data.0.i, i32 42
  %19 = ptrtoint ptr %dest50.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dest50.i, align 2
  %21 = and i16 %20, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 546, i16 %21)
  %switch84.i = icmp eq i16 %21, 546
  %or60.i = or i32 %nic_type.0.i, 393216
  %spec.select85.i = select i1 %switch84.i, i32 %or60.i, i32 %or30.i
  br label %gdm_lte_tx_nic_type.exit

gdm_lte_tx_nic_type.exit:                         ; preds = %if.then47.i, %if.then34.i, %sw.bb29.i.gdm_lte_tx_nic_type.exit_crit_edge, %if.then16.i, %sw.bb11.i.gdm_lte_tx_nic_type.exit_crit_edge, %sw.bb.i, %if.end.i.gdm_lte_tx_nic_type.exit_crit_edge
  %nic_type.4.i = phi i32 [ %nic_type.0.i, %if.end.i.gdm_lte_tx_nic_type.exit_crit_edge ], [ %spec.select.i, %if.then34.i ], [ %or12.i, %sw.bb11.i.gdm_lte_tx_nic_type.exit_crit_edge ], [ %or10.i, %sw.bb.i ], [ %or30.i, %sw.bb29.i.gdm_lte_tx_nic_type.exit_crit_edge ], [ %spec.select82.i, %if.then16.i ], [ %spec.select85.i, %if.then47.i ]
  %and = and i32 %nic_type.4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gdm_lte_tx_nic_type.exit.if.end7_crit_edge, label %if.then2

gdm_lte_tx_nic_type.exit.if.end7_crit_edge:       ; preds = %gdm_lte_tx_nic_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %gdm_lte_tx_nic_type.exit
  %eth.sroa.gep94.i = getelementptr inbounds i8, ptr %eth.i, i32 6
  %vlan_eth.sroa.gep93.i = getelementptr inbounds i8, ptr %vlan_eth.i, i32 6
  %22 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %eth.i) #8
  %25 = call ptr @memset(ptr %eth.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %vlan_eth.i) #8
  %26 = call ptr @memset(ptr %vlan_eth.i, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %arp_temp.sroa.11.i)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i111 = icmp eq i32 %28, 0
  br i1 %cmp.i111, label %if.then2.gdm_lte_emulate_arp.exit.thread_crit_edge, label %if.end.i114

if.then2.gdm_lte_emulate_arp.exit.thread_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_arp.exit.thread

if.end.i114:                                      ; preds = %if.then2
  br i1 %cmp.i, label %if.then3.i, label %if.else.i115

if.then3.i:                                       ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call ptr @memcpy(ptr %vlan_eth.i, ptr %4, i32 18)
  br label %if.end6.i

if.else.i115:                                     ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  %30 = call ptr @memcpy(ptr %eth.i, ptr %4, i32 14)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i115, %if.then3.i
  %mac_header_data.0.i = phi ptr [ %vlan_eth.i, %if.then3.i ], [ %eth.i, %if.else.i115 ]
  %mac_header_len.0.i = phi i32 [ 18, %if.then3.i ], [ 14, %if.else.i115 ]
  %mac_header_data.0.sroa.phi92.i = phi ptr [ %vlan_eth.sroa.gep93.i, %if.then3.i ], [ %eth.sroa.gep94.i, %if.else.i115 ]
  %add.ptr.i116 = getelementptr i8, ptr %4, i32 %mac_header_len.0.i
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i116, i32 8
  %31 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %add.ptr.i116, align 2
  %33 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr10.i, align 1
  %arrayidx16.i = getelementptr [6 x i8], ptr %add.ptr10.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16.i, align 1
  %ar_tip.i = getelementptr inbounds %struct.arpdata, ptr %add.ptr10.i, i32 0, i32 3
  %37 = ptrtoint ptr %ar_tip.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ar_tip.i, align 1
  %39 = call ptr @memcpy(ptr %arp_temp.sroa.11.i, ptr %add.ptr10.i, i32 6)
  %ar_sip30.i = getelementptr inbounds %struct.arpdata, ptr %add.ptr10.i, i32 0, i32 1
  %40 = ptrtoint ptr %ar_sip30.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %ar_sip30.i, align 1
  %42 = call ptr @memcpy(ptr %mac_header_data.0.i, ptr %mac_header_data.0.sroa.phi92.i, i32 6)
  %src_mac_addr.i = getelementptr i8, ptr %24, i32 2419
  %43 = call ptr @memcpy(ptr %mac_header_data.0.sroa.phi92.i, ptr %src_mac_addr.i, i32 6)
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %28, i32 noundef 2592) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.i.gdm_lte_emulate_arp.exit.thread_crit_edge, label %if.end38.i

if.end6.i.gdm_lte_emulate_arp.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_arp.exit.thread

if.end38.i:                                       ; preds = %if.end6.i
  %arp_temp.sroa.0.sroa.0.0.extract.shift.i = and i64 %32, -65536
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %45, i32 2
  store ptr %add.ptr.i1.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %mac_header_len.0.i) #8
  %48 = call ptr @memcpy(ptr %call.i.i, ptr %mac_header_data.0.i, i32 %mac_header_len.0.i)
  %call.i2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  %arp_temp.sroa.0.sroa.0.0.insert.insert.i = or i64 %arp_temp.sroa.0.sroa.0.0.extract.shift.i, 2
  %49 = ptrtoint ptr %call.i2.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %arp_temp.sroa.0.sroa.0.0.insert.insert.i, ptr %call.i2.i, align 1
  %call.i3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 20) #8
  %50 = ptrtoint ptr %call.i3.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %34, ptr %call.i3.i, align 1
  %arp_temp.sroa.8.8.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i, i32 1
  %51 = ptrtoint ptr %arp_temp.sroa.8.8.call.i3.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %36, ptr %arp_temp.sroa.8.8.call.i3.sroa_idx.i, align 1
  %arp_temp.sroa.9.8.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i, i32 2
  %52 = ptrtoint ptr %arp_temp.sroa.9.8.call.i3.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %38, ptr %arp_temp.sroa.9.8.call.i3.sroa_idx.i, align 1
  %arp_temp.sroa.10.8.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i, i32 6
  %53 = ptrtoint ptr %arp_temp.sroa.10.8.call.i3.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %38, ptr %arp_temp.sroa.10.8.call.i3.sroa_idx.i, align 1
  %arp_temp.sroa.11.8.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i, i32 10
  %54 = call ptr @memcpy(ptr %arp_temp.sroa.11.8.call.i3.sroa_idx.i, ptr %arp_temp.sroa.11.i, i32 6)
  %arp_temp.sroa.12.8.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i, i32 16
  %55 = ptrtoint ptr %arp_temp.sroa.12.8.call.i3.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %41, ptr %arp_temp.sroa.12.8.call.i3.sroa_idx.i, align 1
  %h_proto42.i = getelementptr inbounds %struct.ethhdr, ptr %mac_header_data.0.i, i32 0, i32 2
  %56 = ptrtoint ptr %h_proto42.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %h_proto42.i, align 1
  %protocol.i117 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %58 = ptrtoint ptr %protocol.i117 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %protocol.i117, align 8
  %59 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %22, align 8
  %61 = getelementptr inbounds %struct.anon.45, ptr %call.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %61, align 8
  %63 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %65 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %67 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %call43.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #8
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len1.i.i, align 4
  %call.i5.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i5.i)
  %cmp.i.i = icmp eq i32 %call.i5.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped.i.i = getelementptr i8, ptr %24, i32 2336
  %70 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_dropped.i.i, align 4
  br label %if.then5

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %69, 14
  %stats2.i.i = getelementptr i8, ptr %24, i32 2312
  %72 = ptrtoint ptr %stats2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stats2.i.i, align 4
  %inc3.i.i = add i32 %73, 1
  store i32 %inc3.i.i, ptr %stats2.i.i, align 4
  %rx_bytes.i.i = getelementptr i8, ptr %24, i32 2320
  %74 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_bytes.i.i, align 4
  br label %if.then5

gdm_lte_emulate_arp.exit.thread:                  ; preds = %if.end6.i.gdm_lte_emulate_arp.exit.thread_crit_edge, %if.then2.gdm_lte_emulate_arp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %arp_temp.sroa.11.i)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vlan_eth.i) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eth.i) #8
  br label %if.end7

if.then5:                                         ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %75, %if.else.i.i ], [ 1, %if.then.i.i ]
  %add.sink.i.i = phi i32 [ %add.i.i, %if.else.i.i ], [ %71, %if.then.i.i ]
  %rx_bytes.sink.i.i = phi ptr [ %rx_bytes.i.i, %if.else.i.i ], [ %rx_dropped.i.i, %if.then.i.i ]
  %add5.i.i = add i32 %add.sink.i.i, %.sink.i.i
  %76 = ptrtoint ptr %rx_bytes.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add5.i.i, ptr %rx_bytes.sink.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %arp_temp.sroa.11.i)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vlan_eth.i) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eth.i) #8
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.end7:                                          ; preds = %gdm_lte_emulate_arp.exit.thread, %gdm_lte_tx_nic_type.exit.if.end7_crit_edge
  %and8 = and i32 %nic_type.4.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %77 = getelementptr inbounds %struct.anon.45, ptr %skb, i32 0, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 2304
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %eth.i118) #8
  %80 = call ptr @memset(ptr %eth.i118, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %vlan_eth.i119) #8
  %81 = call ptr @memset(ptr %vlan_eth.i119, i32 255, i32 18)
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %h_proto.i121 = getelementptr inbounds %struct.ethhdr, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %h_proto.i121 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %h_proto.i121, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %85)
  %cmp.i122 = icmp eq i16 %85, -32512
  br i1 %cmp.i122, label %if.then.i123, label %if.else.i124

if.then.i123:                                     ; preds = %if.then10
  %86 = getelementptr inbounds %struct.vlan_ethhdr, ptr %vlan_eth.i119, i32 0, i32 3
  %87 = call ptr @memcpy(ptr %vlan_eth.i119, ptr %83, i32 18)
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %86, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %89)
  %cmp4.not.i = icmp eq i16 %89, -31011
  br i1 %cmp4.not.i, label %if.then.i123.if.end14.i_crit_edge, label %if.then.i123.gdm_lte_emulate_ndp.exit.thread_crit_edge

if.then.i123.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

if.then.i123.if.end14.i_crit_edge:                ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.else.i124:                                     ; preds = %if.then10
  %90 = getelementptr inbounds %struct.ethhdr, ptr %eth.i118, i32 0, i32 2
  %91 = call ptr @memcpy(ptr %eth.i118, ptr %83, i32 14)
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %90, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %93)
  %cmp10.not.i = icmp eq i16 %93, -31011
  br i1 %cmp10.not.i, label %if.else.i124.if.end14.i_crit_edge, label %if.else.i124.gdm_lte_emulate_ndp.exit.thread_crit_edge

if.else.i124.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

if.else.i124.if.end14.i_crit_edge:                ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i124.if.end14.i_crit_edge, %if.then.i123.if.end14.i_crit_edge
  %mac_header_data.0.i125 = phi ptr [ %vlan_eth.i119, %if.then.i123.if.end14.i_crit_edge ], [ %eth.i118, %if.else.i124.if.end14.i_crit_edge ]
  %mac_header_len.0.i126 = phi i32 [ 18, %if.then.i123.if.end14.i_crit_edge ], [ 14, %if.else.i124.if.end14.i_crit_edge ]
  %add.ptr.i127 = getelementptr i8, ptr %83, i32 %mac_header_len.0.i126
  %94 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i = load i8, ptr %add.ptr.i127, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i)
  %cmp17.not.i = icmp eq i8 %bf.lshr.mask.i, 96
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %if.end14.i.gdm_lte_emulate_ndp.exit.thread_crit_edge

if.end14.i.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %nexthdr.i128 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i127, i32 0, i32 3
  %95 = ptrtoint ptr %nexthdr.i128 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nexthdr.i128, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %96)
  %cmp20.not.i = icmp eq i8 %96, 58
  br i1 %cmp20.not.i, label %if.end23.i, label %lor.lhs.false.i.gdm_lte_emulate_ndp.exit.thread_crit_edge

lor.lhs.false.i.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i127, i32 40
  %97 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %98)
  %cond = icmp eq i8 %98, -121
  br i1 %cond, label %if.then36.i, label %if.end23.i.gdm_lte_emulate_ndp.exit.thread_crit_edge

if.end23.i.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

if.then36.i:                                      ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr8.i) #8
  %99 = call ptr @memset(ptr %zero_addr8.i, i32 0, i32 16)
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i127, i32 0, i32 5
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %saddr.i, ptr noundef nonnull dereferenceable(16) %zero_addr8.i, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp39.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp39.i, label %cleanup93.critedge.i, label %if.end42.i

if.end42.i:                                       ; preds = %if.then36.i
  %add.ptr47.i = getelementptr i8, ptr %add.ptr26.i, i32 8
  %100 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %na.sroa.0.0.copyload44.i = load i16, ptr %add.ptr47.i, align 1
  %na.sroa.8.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 2
  %101 = ptrtoint ptr %na.sroa.8.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %na.sroa.8.0.copyload45.i = load i16, ptr %na.sroa.8.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.12.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 4
  %102 = ptrtoint ptr %na.sroa.12.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %na.sroa.12.0.copyload46.i = load i16, ptr %na.sroa.12.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.16.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 6
  %103 = ptrtoint ptr %na.sroa.16.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %na.sroa.16.0.copyload47.i = load i16, ptr %na.sroa.16.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.20.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 8
  %104 = ptrtoint ptr %na.sroa.20.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %na.sroa.20.0.copyload48.i = load i16, ptr %na.sroa.20.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.24.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 10
  %105 = ptrtoint ptr %na.sroa.24.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %na.sroa.24.0.copyload49.i = load i16, ptr %na.sroa.24.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.28.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 12
  %106 = ptrtoint ptr %na.sroa.28.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %na.sroa.28.0.copyload50.i = load i16, ptr %na.sroa.28.0.add.ptr47.sroa_idx.i, align 1
  %na.sroa.32.0.add.ptr47.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr47.i, i32 14
  %107 = ptrtoint ptr %na.sroa.32.0.add.ptr47.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %na.sroa.32.0.copyload51.i = load i16, ptr %na.sroa.32.0.add.ptr47.sroa_idx.i, align 1
  %108 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i127, align 4
  %ipv6_out.sroa.8.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i127, i32 7
  %110 = ptrtoint ptr %ipv6_out.sroa.8.0.add.ptr.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %ipv6_out.sroa.8.0.copyload.i = load i8, ptr %ipv6_out.sroa.8.0.add.ptr.sroa_idx.i, align 1
  %111 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %ipv6_out.sroa.17.24.copyload.i = load i16, ptr %saddr.i, align 4
  %ipv6_out.sroa.19.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 2
  %112 = ptrtoint ptr %ipv6_out.sroa.19.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %ipv6_out.sroa.19.24.copyload.i = load i16, ptr %ipv6_out.sroa.19.24.saddr.sroa_idx.i, align 2
  %ipv6_out.sroa.20.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 4
  %113 = ptrtoint ptr %ipv6_out.sroa.20.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %ipv6_out.sroa.20.24.copyload.i = load i16, ptr %ipv6_out.sroa.20.24.saddr.sroa_idx.i, align 4
  %ipv6_out.sroa.21.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 6
  %114 = ptrtoint ptr %ipv6_out.sroa.21.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %ipv6_out.sroa.21.24.copyload.i = load i16, ptr %ipv6_out.sroa.21.24.saddr.sroa_idx.i, align 2
  %ipv6_out.sroa.22.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 8
  %115 = ptrtoint ptr %ipv6_out.sroa.22.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %ipv6_out.sroa.22.24.copyload.i = load i16, ptr %ipv6_out.sroa.22.24.saddr.sroa_idx.i, align 4
  %ipv6_out.sroa.23.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 10
  %116 = ptrtoint ptr %ipv6_out.sroa.23.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %ipv6_out.sroa.23.24.copyload.i = load i16, ptr %ipv6_out.sroa.23.24.saddr.sroa_idx.i, align 2
  %ipv6_out.sroa.24.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 12
  %117 = ptrtoint ptr %ipv6_out.sroa.24.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %ipv6_out.sroa.24.24.copyload.i = load i16, ptr %ipv6_out.sroa.24.24.saddr.sroa_idx.i, align 4
  %ipv6_out.sroa.25.24.saddr.sroa_idx.i = getelementptr inbounds i8, ptr %saddr.i, i32 14
  %118 = ptrtoint ptr %ipv6_out.sroa.25.24.saddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %ipv6_out.sroa.25.24.copyload.i = load i16, ptr %ipv6_out.sroa.25.24.saddr.sroa_idx.i, align 2
  %conv.i.i.i = zext i16 %na.sroa.0.0.copyload44.i to i32
  %conv.i.1.i.i = zext i16 %na.sroa.8.0.copyload45.i to i32
  %conv.i.2.i.i = zext i16 %na.sroa.12.0.copyload46.i to i32
  %conv.i.3.i.i = zext i16 %na.sroa.16.0.copyload47.i to i32
  %conv.i.4.i.i = zext i16 %na.sroa.20.0.copyload48.i to i32
  %conv.i.5.i.i = zext i16 %na.sroa.24.0.copyload49.i to i32
  %conv.i.6.i.i = zext i16 %na.sroa.28.0.copyload50.i to i32
  %conv.i.7.i.i = zext i16 %na.sroa.32.0.copyload51.i to i32
  %conv.i.8.i.i = zext i16 %ipv6_out.sroa.17.24.copyload.i to i32
  %conv.i.9.i.i = zext i16 %ipv6_out.sroa.19.24.copyload.i to i32
  %conv.i.10.i.i = zext i16 %ipv6_out.sroa.20.24.copyload.i to i32
  %conv.i.11.i.i = zext i16 %ipv6_out.sroa.21.24.copyload.i to i32
  %conv.i.12.i.i = zext i16 %ipv6_out.sroa.22.24.copyload.i to i32
  %conv.i.13.i.i = zext i16 %ipv6_out.sroa.23.24.copyload.i to i32
  %conv.i.14.i.i = zext i16 %ipv6_out.sroa.24.24.copyload.i to i32
  %conv.i.15.i.i = zext i16 %ipv6_out.sroa.25.24.copyload.i to i32
  %reass.add = add nuw nsw i32 %conv.i.1.i.i, %conv.i.i.i
  %reass.add150 = add nuw nsw i32 %reass.add, %conv.i.2.i.i
  %reass.add151 = add nuw nsw i32 %reass.add150, %conv.i.3.i.i
  %reass.add152 = add nuw nsw i32 %reass.add151, %conv.i.4.i.i
  %reass.add153 = add nuw nsw i32 %reass.add152, %conv.i.5.i.i
  %reass.add154 = add nuw nsw i32 %reass.add153, %conv.i.6.i.i
  %reass.add155 = add nuw nsw i32 %reass.add154, %conv.i.7.i.i
  %reass.mul = shl nuw nsw i32 %reass.add155, 1
  %add.i3.4.i.i = add nuw nsw i32 %conv.i.8.i.i, 100827
  %add.i3.5.i.i = add nuw nsw i32 %add.i3.4.i.i, %conv.i.9.i.i
  %add.i3.6.i.i = add nuw nsw i32 %add.i3.5.i.i, %conv.i.10.i.i
  %add.i3.7.i.i = add nuw nsw i32 %add.i3.6.i.i, %conv.i.11.i.i
  %add.i3.8.i.i = add nuw nsw i32 %add.i3.7.i.i, %conv.i.12.i.i
  %add.i3.9.i.i = add nuw nsw i32 %add.i3.8.i.i, %conv.i.13.i.i
  %add.i3.10.i.i = add nuw nsw i32 %add.i3.9.i.i, %reass.mul
  %add.i3.11.i.i = add nuw nsw i32 %add.i3.10.i.i, %conv.i.14.i.i
  %add.i3.15.i.i = add nuw nsw i32 %add.i3.11.i.i, %conv.i.15.i.i
  %119 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add.i3.15.i.i) #13, !srcloc !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr8.i) #8
  %add.ptr80.i = getelementptr i8, ptr %mac_header_data.0.i125, i32 6
  %120 = call ptr @memcpy(ptr %mac_header_data.0.i125, ptr %add.ptr80.i, i32 6)
  %src_mac_addr.i129 = getelementptr i8, ptr %79, i32 2419
  %121 = call ptr @memcpy(ptr %add.ptr80.i, ptr %src_mac_addr.i129, i32 6)
  %len.i130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %122 = ptrtoint ptr %len.i130 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i130, align 4
  %call.i.i.i131 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %123, i32 noundef 2592) #8
  %tobool.not.i132 = icmp eq ptr %call.i.i.i131, null
  br i1 %tobool.not.i132, label %if.end42.i.gdm_lte_emulate_ndp.exit.thread_crit_edge, label %if.end85.i

if.end42.i.gdm_lte_emulate_ndp.exit.thread_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gdm_lte_emulate_ndp.exit.thread

if.end85.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i.i = xor i32 %119, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i7.i.i = trunc i32 %shr.i.i.i to i16
  %data.i.i133 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i131, i32 0, i32 19
  %124 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i.i133, align 4
  %add.ptr.i1.i134 = getelementptr i8, ptr %125, i32 2
  store ptr %add.ptr.i1.i134, ptr %data.i.i133, align 4
  %tail.i.i135 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i131, i32 0, i32 16
  %126 = ptrtoint ptr %tail.i.i135 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tail.i.i135, align 8
  %add.ptr1.i.i136 = getelementptr i8, ptr %127, i32 2
  store ptr %add.ptr1.i.i136, ptr %tail.i.i135, align 8
  %call.i.i137 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i131, i32 noundef %mac_header_len.0.i126) #8
  %128 = call ptr @memcpy(ptr %call.i.i137, ptr %mac_header_data.0.i125, i32 %mac_header_len.0.i126)
  %call.i2.i138 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i131, i32 noundef 40) #8
  %129 = ptrtoint ptr %call.i2.i138 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %109, ptr %call.i2.i138, align 1
  %ipv6_out.sroa.5.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 4
  %130 = ptrtoint ptr %ipv6_out.sroa.5.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 32, ptr %ipv6_out.sroa.5.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.7.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 6
  %131 = ptrtoint ptr %ipv6_out.sroa.7.0.call.i2.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 58, ptr %ipv6_out.sroa.7.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.8.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 7
  %132 = ptrtoint ptr %ipv6_out.sroa.8.0.call.i2.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %ipv6_out.sroa.8.0.copyload.i, ptr %ipv6_out.sroa.8.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.810.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 8
  %133 = ptrtoint ptr %ipv6_out.sroa.810.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %na.sroa.0.0.copyload44.i, ptr %ipv6_out.sroa.810.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.10.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 10
  %134 = ptrtoint ptr %ipv6_out.sroa.10.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %na.sroa.8.0.copyload45.i, ptr %ipv6_out.sroa.10.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.11.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 12
  %135 = ptrtoint ptr %ipv6_out.sroa.11.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %na.sroa.12.0.copyload46.i, ptr %ipv6_out.sroa.11.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.12.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 14
  %136 = ptrtoint ptr %ipv6_out.sroa.12.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 %na.sroa.16.0.copyload47.i, ptr %ipv6_out.sroa.12.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.13.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 16
  %137 = ptrtoint ptr %ipv6_out.sroa.13.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 %na.sroa.20.0.copyload48.i, ptr %ipv6_out.sroa.13.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.14.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 18
  %138 = ptrtoint ptr %ipv6_out.sroa.14.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %na.sroa.24.0.copyload49.i, ptr %ipv6_out.sroa.14.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.15.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 20
  %139 = ptrtoint ptr %ipv6_out.sroa.15.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %na.sroa.28.0.copyload50.i, ptr %ipv6_out.sroa.15.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.16.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 22
  %140 = ptrtoint ptr %ipv6_out.sroa.16.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %na.sroa.32.0.copyload51.i, ptr %ipv6_out.sroa.16.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.17.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 24
  %141 = ptrtoint ptr %ipv6_out.sroa.17.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %ipv6_out.sroa.17.24.copyload.i, ptr %ipv6_out.sroa.17.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.19.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 26
  %142 = ptrtoint ptr %ipv6_out.sroa.19.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %ipv6_out.sroa.19.24.copyload.i, ptr %ipv6_out.sroa.19.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.20.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 28
  %143 = ptrtoint ptr %ipv6_out.sroa.20.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 %ipv6_out.sroa.20.24.copyload.i, ptr %ipv6_out.sroa.20.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.21.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 30
  %144 = ptrtoint ptr %ipv6_out.sroa.21.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 %ipv6_out.sroa.21.24.copyload.i, ptr %ipv6_out.sroa.21.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.22.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 32
  %145 = ptrtoint ptr %ipv6_out.sroa.22.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %ipv6_out.sroa.22.24.copyload.i, ptr %ipv6_out.sroa.22.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.23.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 34
  %146 = ptrtoint ptr %ipv6_out.sroa.23.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 %ipv6_out.sroa.23.24.copyload.i, ptr %ipv6_out.sroa.23.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.24.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 36
  %147 = ptrtoint ptr %ipv6_out.sroa.24.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %ipv6_out.sroa.24.24.copyload.i, ptr %ipv6_out.sroa.24.0.call.i2.sroa_idx.i, align 1
  %ipv6_out.sroa.25.0.call.i2.sroa_idx.i = getelementptr inbounds i8, ptr %call.i2.i138, i32 38
  %148 = ptrtoint ptr %ipv6_out.sroa.25.0.call.i2.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 %ipv6_out.sroa.25.24.copyload.i, ptr %ipv6_out.sroa.25.0.call.i2.sroa_idx.i, align 1
  %call.i3.i139 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i131, i32 noundef 8) #8
  %149 = ptrtoint ptr %call.i3.i139 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -120, ptr %call.i3.i139, align 1
  %icmp6_out.sroa.6.0.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i139, i32 1
  %150 = ptrtoint ptr %icmp6_out.sroa.6.0.call.i3.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %icmp6_out.sroa.6.0.call.i3.sroa_idx.i, align 1
  %icmp6_out.sroa.8.0.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i139, i32 2
  %151 = ptrtoint ptr %icmp6_out.sroa.8.0.call.i3.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %conv.i7.i.i, ptr %icmp6_out.sroa.8.0.call.i3.sroa_idx.i, align 1
  %icmp6_out.sroa.11.0.call.i3.sroa_idx.i = getelementptr inbounds i8, ptr %call.i3.i139, i32 4
  %152 = ptrtoint ptr %icmp6_out.sroa.11.0.call.i3.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 1610612736, ptr %icmp6_out.sroa.11.0.call.i3.sroa_idx.i, align 1
  %call.i4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i131, i32 noundef 24) #8
  %153 = ptrtoint ptr %call.i4.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 2)
  store i16 %na.sroa.0.0.copyload44.i, ptr %call.i4.i, align 1
  %na.sroa.8.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 2
  %154 = ptrtoint ptr %na.sroa.8.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %na.sroa.8.0.copyload45.i, ptr %na.sroa.8.0.call.i4.sroa_idx.i, align 1
  %na.sroa.12.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 4
  %155 = ptrtoint ptr %na.sroa.12.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 %na.sroa.12.0.copyload46.i, ptr %na.sroa.12.0.call.i4.sroa_idx.i, align 1
  %na.sroa.16.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 6
  %156 = ptrtoint ptr %na.sroa.16.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %na.sroa.16.0.copyload47.i, ptr %na.sroa.16.0.call.i4.sroa_idx.i, align 1
  %na.sroa.20.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 8
  %157 = ptrtoint ptr %na.sroa.20.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 %na.sroa.20.0.copyload48.i, ptr %na.sroa.20.0.call.i4.sroa_idx.i, align 1
  %na.sroa.24.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 10
  %158 = ptrtoint ptr %na.sroa.24.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %na.sroa.24.0.copyload49.i, ptr %na.sroa.24.0.call.i4.sroa_idx.i, align 1
  %na.sroa.28.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 12
  %159 = ptrtoint ptr %na.sroa.28.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %na.sroa.28.0.copyload50.i, ptr %na.sroa.28.0.call.i4.sroa_idx.i, align 1
  %na.sroa.32.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 14
  %160 = ptrtoint ptr %na.sroa.32.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %na.sroa.32.0.copyload51.i, ptr %na.sroa.32.0.call.i4.sroa_idx.i, align 1
  %na.sroa.36.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 16
  %161 = ptrtoint ptr %na.sroa.36.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 513, ptr %na.sroa.36.0.call.i4.sroa_idx.i, align 1
  %na.sroa.41.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 18
  %162 = ptrtoint ptr %na.sroa.41.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 10, ptr %na.sroa.41.0.call.i4.sroa_idx.i, align 1
  %na.sroa.46.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 20
  %163 = ptrtoint ptr %na.sroa.46.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 15279, ptr %na.sroa.46.0.call.i4.sroa_idx.i, align 1
  %na.sroa.51.0.call.i4.sroa_idx.i = getelementptr inbounds i8, ptr %call.i4.i, i32 22
  %164 = ptrtoint ptr %na.sroa.51.0.call.i4.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 2)
  store i16 25543, ptr %na.sroa.51.0.call.i4.sroa_idx.i, align 1
  %h_proto90.i = getelementptr inbounds %struct.ethhdr, ptr %mac_header_data.0.i125, i32 0, i32 2
  %165 = ptrtoint ptr %h_proto90.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %h_proto90.i, align 1
  %protocol.i140 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i131, i32 0, i32 15, i32 0, i32 18
  %167 = ptrtoint ptr %protocol.i140 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %protocol.i140, align 8
  %168 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %77, align 8
  %170 = getelementptr inbounds %struct.anon.45, ptr %call.i.i.i131, i32 0, i32 2
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %169, ptr %170, align 8
  %172 = ptrtoint ptr %data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i.i133, align 4
  %head.i.i141 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i131, i32 0, i32 18
  %174 = ptrtoint ptr %head.i.i141 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.i.i141, align 8
  %sub.ptr.lhs.cast.i.i142 = ptrtoint ptr %173 to i32
  %sub.ptr.rhs.cast.i.i143 = ptrtoint ptr %175 to i32
  %sub.ptr.sub.i.i144 = sub i32 %sub.ptr.lhs.cast.i.i142, %sub.ptr.rhs.cast.i.i143
  %conv.i6.i = trunc i32 %sub.ptr.sub.i.i144 to i16
  %mac_header.i.i145 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i131, i32 0, i32 15, i32 0, i32 21
  %176 = ptrtoint ptr %mac_header.i.i145 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i6.i, ptr %mac_header.i.i145, align 2
  %call91.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i131, i32 noundef 14) #8
  tail call fastcc void @gdm_lte_rx(ptr noundef nonnull %call.i.i.i131, ptr noundef %add.ptr.i.i) #8
  br label %if.then13

cleanup93.critedge.i:                             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr8.i) #8
  br label %if.then13

gdm_lte_emulate_ndp.exit.thread:                  ; preds = %if.end42.i.gdm_lte_emulate_ndp.exit.thread_crit_edge, %if.end23.i.gdm_lte_emulate_ndp.exit.thread_crit_edge, %lor.lhs.false.i.gdm_lte_emulate_ndp.exit.thread_crit_edge, %if.end14.i.gdm_lte_emulate_ndp.exit.thread_crit_edge, %if.else.i124.gdm_lte_emulate_ndp.exit.thread_crit_edge, %if.then.i123.gdm_lte_emulate_ndp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vlan_eth.i119) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eth.i118) #8
  br label %if.end15

if.then13:                                        ; preds = %cleanup93.critedge.i, %if.end85.i
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %vlan_eth.i119) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eth.i118) #8
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.end15:                                         ; preds = %gdm_lte_emulate_ndp.exit.thread, %if.end7.if.end15_crit_edge
  %and16 = and i32 %nic_type.4.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i, align 4
  %h_vlan_TCI = getelementptr inbounds %struct.vlan_ethhdr, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %h_vlan_TCI to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %h_vlan_TCI, align 2
  %181 = and i16 %180, 4095
  %vlan_id = getelementptr i8, ptr %dev, i32 2432
  %182 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %vlan_id, align 4
  %183 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %183, i32 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %184 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len, align 4
  %sub = add i32 %185, -4
  br label %if.end25

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_id22 = getelementptr i8, ptr %dev, i32 2432
  %186 = ptrtoint ptr %vlan_id22 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %vlan_id22, align 4
  %187 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i, align 4
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %189 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18
  %data_buf.0 = phi ptr [ %add.ptr, %if.then18 ], [ %188, %if.else ]
  %data_len.0 = phi i32 [ %sub, %if.then18 ], [ %190, %if.else ]
  %call35 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 1
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  %spec.store.select = select i1 %tobool9.not, i32 %nic_type.4.i, i32 512
  %and30 = and i32 %spec.store.select, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and33 = and i32 %spec.store.select, 65535
  %spec.select = select i1 %tobool31.not, i32 %and33, i32 %spec.store.select
  %phy_dev = getelementptr i8, ptr %dev, i32 2308
  %191 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %phy_dev, align 4
  %send_sdu_func = getelementptr inbounds %struct.phy_dev, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %send_sdu_func to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %send_sdu_func, align 4
  %195 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %192, align 4
  %dft_eps_id = getelementptr i8, ptr %dev, i32 2405
  %197 = ptrtoint ptr %dft_eps_id to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %dft_eps_id, align 1
  %199 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %idx, align 4
  %call41 = call i32 %194(ptr noundef %196, ptr noundef %data_buf.0, i32 noundef %data_len.0, i32 noundef %198, i32 noundef 0, ptr noundef nonnull @tx_complete, ptr noundef %add.ptr.i, i32 noundef %200, i32 noundef %spec.select) #8
  %201 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call41, label %if.end39.if.end64_crit_edge [
    i32 3, label %if.end39.if.then46_crit_edge
    i32 2, label %if.end39.if.then46_crit_edge157
    i32 0, label %if.end39.if.else60_crit_edge
  ]

if.end39.if.else60_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else60

if.end39.if.then46_crit_edge157:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.end39.if.then46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then46:                                        ; preds = %if.end39.if.then46_crit_edge, %if.end39.if.then46_crit_edge157
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %202 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %203, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br i1 %cmp42, label %if.then46.if.else60_crit_edge, label %if.then46.if.end64_crit_edge

if.then46.if.end64_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then46.if.else60_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else60

if.else60:                                        ; preds = %if.then46.if.else60_crit_edge, %if.end39.if.else60_crit_edge
  %tx_packets = getelementptr i8, ptr %dev, i32 2316
  %204 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tx_packets, align 4
  %inc62 = add i32 %205, 1
  store i32 %inc62, ptr %tx_packets, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then46.if.end64_crit_edge, %if.end39.if.end64_crit_edge
  %.sink = phi i32 [ 2324, %if.else60 ], [ 2340, %if.end39.if.end64_crit_edge ], [ 2340, %if.then46.if.end64_crit_edge ]
  %data_len.0.sink = phi i32 [ %data_len.0, %if.else60 ], [ 1, %if.end39.if.end64_crit_edge ], [ 1, %if.then46.if.end64_crit_edge ]
  %tx_bytes = getelementptr i8, ptr %dev, i32 %.sink
  %206 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %207, %data_len.0.sink
  store i32 %add, ptr %tx_bytes, align 4
  call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then38, %if.then13, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then13 ], [ -22, %if.then38 ], [ 0, %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gdm_lte_set_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gdm_lte_stats(ptr noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr i8, ptr %dev, i32 2312
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_complete(ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 539, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gdm_lte_event_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gdm_lte_event_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 879, i32 25}
!8 = distinct !{null, !9, !"lte_event", i1 false, i1 false}
!9 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 44, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 785, i32 20}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 787, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 787, i32 17}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 654, i32 20}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 696, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gdm_lte_multi_sdu_pkt._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gdm_lte_multi_sdu_pkt._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 707, i32 4}
!25 = !{ptr @gdm_lte_multi_sdu_pkt._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gdm_lte_multi_sdu_pkt._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 712, i32 4}
!29 = !{ptr @gdm_lte_multi_sdu_pkt._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gdm_lte_multi_sdu_pkt._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 718, i32 4}
!33 = !{ptr @gdm_lte_multi_sdu_pkt._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gdm_lte_multi_sdu_pkt._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 737, i32 20}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 746, i32 19}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 511, i32 26}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 860, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @validate_mac_address._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @validate_mac_address._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @gdm_lte_macaddr, !47, !"gdm_lte_macaddr", i1 false, i1 false}
!47 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 830, i32 11}
!48 = !{ptr @gdm_netdev_ops, !49, !"gdm_netdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 822, i32 36}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 413, i32 19}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 47, i32 12}
!54 = !{ptr @wwan_type, !55, !"wwan_type", i1 false, i1 false}
!55 = !{!"../drivers/staging/gdm724x/gdm_lte.c", i32 46, i32 27}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 6490533}
