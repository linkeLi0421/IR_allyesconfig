; ModuleID = '/llk/IR_all_yes/net/bridge/br_if.c_pt.bc'
source_filename = "../net/bridge/br_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+br_port_flag_is_set\22, \22a\22\09"
module asm "\09.weak\09__crc_br_port_flag_is_set\09\09\09\09"
module asm "\09.long\09__crc_br_port_flag_is_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_port_flag_is_set:\09\09\09\09\09"
module asm "\09.asciz \09\22br_port_flag_is_set\22\09\09\09\09\09"
module asm "__kstrtabns_br_port_flag_is_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.hlist_head = type { ptr }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.162, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.162 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.163, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.163 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.164, %union.anon.165, i16, i16 }
%union.anon.164 = type { %struct.in6_addr }
%union.anon.165 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.148, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.148 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.137 }
%union.anon.137 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nbp_backup_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/bridge/br_if.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nbp_backup_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@br_mtu_auto_adjust.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_add_if.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot do software bridging with a DSA master\00", [50 x i8] zeroinitializer }, align 32
@br_add_if.__msg.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can not enslave a bridge to a bridge\00", [59 x i8] zeroinitializer }, align 32
@br_add_if.__msg.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Device does not allow enslaving to a bridge\00", [52 x i8] zeroinitializer }, align 32
@brport_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @release_nbp, ptr @brport_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr @brport_get_ownership }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"brport\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to sync bridge static fdb addresses to this port\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed insert local address bridge forwarding table\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to initialize vlan filtering on this port\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_br_port_flag_is_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_port_flag_is_set = external dso_local constant [0 x i8], align 1
@__ksymtab_br_port_flag_is_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_port_flag_is_set to i32), ptr @__kstrtab_br_port_flag_is_set, ptr @__kstrtabns_br_port_flag_is_set }, section "___ksymtab_gpl+br_port_flag_is_set", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lec\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plip\00", [27 x i8] zeroinitializer }, align 32
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@nbp_backup_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@brport_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@br_port_get_rtnl_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 172, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 175, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 584, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 593, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 604, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"brport_ktype\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 263, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 624, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 662, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 675, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 688, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 53, i32 26 }
@___asan_gen_.55 = private constant [22 x i8] c"../net/bridge/br_if.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 56, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 422, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 428, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_br_port_flag_is_set, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @br_add_if.__msg, ptr @br_add_if.__msg.3, ptr @br_add_if.__msg.4, ptr @brport_ktype, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_add_if.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_add_if.__msg.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_add_if.__msg.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brport_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_port_carrier_check(ptr noundef %p, ptr nocapture noundef writeonly %notified) local_unnamed_addr #0 align 64 {
entry:
  %ecmd.i = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 50
  %8 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %operstate.i, align 8
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %land.lhs.true3.if.end_crit_edge [
    i8 6, label %land.lhs.true3.if.then_crit_edge
    i8 0, label %land.lhs.true3.if.then_crit_edge51
  ]

land.lhs.true3.if.then_crit_edge51:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3.if.then_crit_edge, %land.lhs.true3.if.then_crit_edge51
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ecmd.i) #9
  %11 = call ptr @memset(ptr %ecmd.i, i32 255, i32 88)
  %call.i = call i32 @__ethtool_get_link_ksettings(ptr noundef %1, ptr noundef nonnull %ecmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd.i, i32 0, i32 1
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %13, label %if.then.i.if.end.i_crit_edge [
    i32 10000, label %if.then.i.port_cost.exit_crit_edge
    i32 1000, label %sw.bb1.i
    i32 100, label %sw.bb2.i
    i32 10, label %sw.bb3.i
  ]

if.then.i.port_cost.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %call4.i = call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.port_cost.exit_crit_edge, label %if.end7.i

if.end.i.port_cost.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  %..i = select i1 %tobool11.not.i, i32 2500, i32 100
  br label %port_cost.exit

port_cost.exit:                                   ; preds = %if.end7.i, %if.end.i.port_cost.exit_crit_edge, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.i.port_cost.exit_crit_edge
  %retval.0.i = phi i32 [ 100, %sw.bb3.i ], [ 19, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %if.then.i.port_cost.exit_crit_edge ], [ 7, %if.end.i.port_cost.exit_crit_edge ], [ %..i, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ecmd.i) #9
  %path_cost = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 16
  %15 = ptrtoint ptr %path_cost to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %path_cost, align 4
  br label %if.end

if.end:                                           ; preds = %port_cost.exit, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %notified, align 1
  %dev6 = getelementptr inbounds %struct.net_bridge, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev6, align 4
  %state.i41 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i41, align 4
  %and1.i.i42 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i42)
  %tobool.i43.not = icmp eq i32 %and1.i.i42, 0
  br i1 %tobool.i43.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @_raw_spin_lock_bh(ptr noundef %3) #9
  %state.i44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %state.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i44, align 4
  %and1.i.i45 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i45)
  %tobool.i46.not = icmp eq i32 %and1.i.i45, 0
  br i1 %tobool.i46.not, label %if.end9.if.else_crit_edge, label %land.lhs.true11

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true11:                                  ; preds = %if.end9
  %operstate.i47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 50
  %23 = ptrtoint ptr %operstate.i47 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %operstate.i47, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %24, label %land.lhs.true11.if.else_crit_edge [
    i8 6, label %land.lhs.true11.if.then13_crit_edge
    i8 0, label %land.lhs.true11.if.then13_crit_edge52
  ]

land.lhs.true11.if.then13_crit_edge52:            ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.lhs.true11.if.then13_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true11.if.then13_crit_edge, %land.lhs.true11.if.then13_crit_edge52
  %state = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp = icmp eq i8 %27, 0
  br i1 %cmp, label %if.then15, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  call void @br_stp_enable_port(ptr noundef %p) #9
  br label %if.end23.sink.split

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %if.end9.if.else_crit_edge
  %state17 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 8
  %28 = ptrtoint ptr %state17 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %state17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp19.not = icmp eq i8 %29, 0
  br i1 %cmp19.not, label %if.else.if.end23_crit_edge, label %if.then21

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @br_stp_disable_port(ptr noundef %p) #9
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then21, %if.then15
  %30 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %notified, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_enable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_disable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_manage_promisc(ptr noundef readonly %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @br_vlan_enabled(ptr noundef %1) #9
  br i1 %call, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %set_all.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %4 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn47 = load ptr, ptr %port_list, align 4
  %cmp.not49 = icmp eq ptr %.pn47, %port_list
  br i1 %cmp.not49, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %auto_cnt = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn50 = phi ptr [ %.pn47, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %p.051 = getelementptr i8, ptr %.pn50, i32 -12
  br i1 %set_all.0.off0, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn50, i32 8
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.then4
  %dev.i = getelementptr i8, ptr %.pn50, i32 -8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @dev_set_promiscuity(ptr noundef %8, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %p.051 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.051, align 8
  tail call void @br_fdb_unsync_static(ptr noundef %10, ptr noundef %p.051) #9
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %12, 128
  store i32 %or.i, ptr %flags.i, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %13 = ptrtoint ptr %auto_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %auto_cnt, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %14, label %if.else.if.else13_crit_edge [
    i32 0, label %if.else.if.then12_crit_edge
    i32 1, label %land.lhs.true
  ]

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.else.if.else13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13

land.lhs.true:                                    ; preds = %if.else
  %flags9 = getelementptr i8, ptr %.pn50, i32 8
  %16 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags9, align 4
  %and10 = and i32 %17, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else13_crit_edge, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.if.else13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %if.else.if.then12_crit_edge
  %flags.i31 = getelementptr i8, ptr %.pn50, i32 8
  %18 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i31, align 4
  %and.i32 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i33, label %if.then12.for.inc_crit_edge, label %lor.lhs.false.i

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then12
  %dev.i34 = getelementptr i8, ptr %.pn50, i32 -8
  %20 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i34, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i, align 16
  %and1.i = and i64 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end.i36

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i36:                                       ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %p.051 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p.051, align 8
  %call.i35 = tail call i32 @br_fdb_sync_static(ptr noundef %25, ptr noundef %p.051) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool3.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i36.for.inc_crit_edge

if.end.i36.for.inc_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5.i:                                        ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i34, align 4
  %call7.i = tail call i32 @dev_set_promiscuity(ptr noundef %27, i32 noundef -1) #9
  %28 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i31, align 4
  %and9.i = and i32 %29, -129
  store i32 %and9.i, ptr %flags.i31, align 4
  br label %for.inc

if.else13:                                        ; preds = %land.lhs.true.if.else13_crit_edge, %if.else.if.else13_crit_edge
  %flags.i37 = getelementptr i8, ptr %.pn50, i32 8
  %30 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i37, align 4
  %and.i38 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %if.end.i43, label %if.else13.for.inc_crit_edge

if.else13.for.inc_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i43:                                       ; preds = %if.else13
  %dev.i40 = getelementptr i8, ptr %.pn50, i32 -8
  %32 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i40, align 4
  %call.i41 = tail call i32 @dev_set_promiscuity(ptr noundef %33, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool1.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool1.not.i42, label %if.end3.i45, label %if.end.i43.for.inc_crit_edge

if.end.i43.for.inc_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3.i45:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %p.051 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p.051, align 8
  tail call void @br_fdb_unsync_static(ptr noundef %35, ptr noundef %p.051) #9
  %36 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i37, align 4
  %or.i44 = or i32 %37, 128
  store i32 %or.i44, ptr %flags.i37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end3.i45, %if.end.i43.for.inc_crit_edge, %if.else13.for.inc_crit_edge, %if.end5.i, %if.end.i36.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.then12.for.inc_crit_edge, %if.end3.i, %if.end.i.for.inc_crit_edge, %if.then4.for.inc_crit_edge
  %38 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nbp_backup_change(ptr noundef %p, ptr noundef readonly %backup_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b127 = load i1, ptr @nbp_backup_change.__warned, align 1
  br i1 %.b127, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nbp_backup_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %backup_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backup_port, align 4
  %call4 = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs:                                         ; preds = %do.end
  %.b125126 = load i1, ptr @nbp_backup_change.__already_done, align 1
  br i1 %.b125126, label %land.rhs.if.end40_crit_edge, label %if.then14, !prof !49

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nbp_backup_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 175) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then14, %land.rhs.if.end40_crit_edge, %do.end.if.end40_crit_edge
  %tobool48.not = icmp eq ptr %backup_dev, null
  br i1 %tobool48.not, label %if.end40.if.end57_crit_edge, label %if.then49

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then49:                                        ; preds = %if.end40
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %backup_dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then49.cleanup_crit_edge, label %do.body.i

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.then49
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 422, ptr noundef nonnull @.str.1) #9
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %backup_dev, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_handler_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %br_port_get_rtnl.exit.if.end57_crit_edge, label %br_port_get_rtnl.exit.cleanup_crit_edge

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

br_port_get_rtnl.exit.if.end57_crit_edge:         ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57:                                         ; preds = %br_port_get_rtnl.exit.if.end57_crit_edge, %if.end40.if.end57_crit_edge
  %backup_p.0 = phi ptr [ %5, %br_port_get_rtnl.exit.if.end57_crit_edge ], [ null, %if.end40.if.end57_crit_edge ]
  %cmp58 = icmp eq ptr %backup_p.0, %p
  br i1 %cmp58, label %if.end57.cleanup_crit_edge, label %if.end60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  %cmp61 = icmp eq ptr %1, %backup_p.0
  br i1 %cmp61, label %if.end60.cleanup_crit_edge, label %if.end63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %tobool64.not = icmp eq ptr %1, null
  br i1 %tobool64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %backup_redirected_cnt = getelementptr inbounds %struct.net_bridge_port, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %backup_redirected_cnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %backup_redirected_cnt, align 4
  %dec = add i16 %11, -1
  store i16 %dec, ptr %backup_redirected_cnt, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %tobool67.not = icmp eq ptr %backup_p.0, null
  br i1 %tobool67.not, label %if.end66.do.body71_crit_edge, label %if.then68

if.end66.do.body71_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %backup_redirected_cnt69 = getelementptr inbounds %struct.net_bridge_port, ptr %backup_p.0, i32 0, i32 35
  %12 = ptrtoint ptr %backup_redirected_cnt69 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %backup_redirected_cnt69, align 4
  %inc = add i16 %13, 1
  store i16 %inc, ptr %backup_redirected_cnt69, align 4
  br label %do.body71

do.body71:                                        ; preds = %if.then68, %if.end66.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %14 = ptrtoint ptr %backup_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %backup_p.0, ptr %backup_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %if.end60.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %br_port_get_rtnl.exit.cleanup_crit_edge, %if.then49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body71 ], [ -2, %if.then49.cleanup_crit_edge ], [ -22, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_dev_delete(ptr noundef %dev, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_list, align 4
  %cmp.not25 = icmp eq ptr %1, %port_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn.in26, i32 -12
  %2 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in26, align 4
  tail call fastcc void @del_nbp(ptr noundef %p.0)
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @br_recalculate_neigh_suppress_enabled(ptr noundef %add.ptr.i) #9
  tail call void @br_fdb_delete_by_port(ptr noundef %add.ptr.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1) #9
  %gc_work = getelementptr i8, ptr %dev, i32 4092
  %call12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc_work) #9
  %dev13 = getelementptr i8, ptr %dev, i32 2396
  %3 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev13, align 4
  tail call void @br_sysfs_delbr(ptr noundef %4) #9
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %6, ptr noundef %head) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @del_nbp(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev2 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %ifobj = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 42
  %4 = ptrtoint ptr %ifobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifobj, align 4
  tail call void @sysfs_remove_link(ptr noundef %5, ptr noundef %3) #9
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @dev_set_allmulti(ptr noundef %7, i32 noundef -1) #9
  %flags.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call2.i = tail call i32 @dev_set_promiscuity(ptr noundef %11, i32 noundef -1) #9
  br label %nbp_delete_promisc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 8
  tail call void @br_fdb_unsync_static(ptr noundef %13, ptr noundef %p) #9
  br label %nbp_delete_promisc.exit

nbp_delete_promisc.exit:                          ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #9
  tail call void @br_stp_disable_port(ptr noundef %p) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #9
  tail call void @br_mrp_port_del(ptr noundef %1, ptr noundef %p) #9
  tail call void @br_cfm_port_del(ptr noundef %1, ptr noundef %p) #9
  tail call void @br_ifinfo_notify(i32 noundef 17, ptr noundef null, ptr noundef %p) #9
  %list = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %nbp_delete_promisc.exit.list_del_rcu.exit_crit_edge

nbp_delete_promisc.exit.list_del_rcu.exit_crit_edge: ; preds = %nbp_delete_promisc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %nbp_delete_promisc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %nbp_delete_promisc.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %priv_flags.i, align 16
  %and.i41 = and i64 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i41)
  %tobool.not.i42 = icmp eq i64 %and.i41, 0
  br i1 %tobool.not.i42, label %cond.false.i, label %list_del_rcu.exit.netdev_get_fwd_headroom.exit_crit_edge

list_del_rcu.exit.netdev_get_fwd_headroom.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_get_fwd_headroom.exit

cond.false.i:                                     ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 21
  %23 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %needed_headroom.i, align 8
  %conv.i = zext i16 %24 to i32
  br label %netdev_get_fwd_headroom.exit

netdev_get_fwd_headroom.exit:                     ; preds = %cond.false.i, %list_del_rcu.exit.netdev_get_fwd_headroom.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.false.i ], [ 0, %list_del_rcu.exit.netdev_get_fwd_headroom.exit_crit_edge ]
  %dev5 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev5, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %needed_headroom, align 8
  %conv = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp = icmp eq i32 %cond.i, %conv
  br i1 %cmp, label %if.then, label %netdev_get_fwd_headroom.exit.if.end_crit_edge

netdev_get_fwd_headroom.exit.if.end_crit_edge:    ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %netdev_get_fwd_headroom.exit
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn13.i = load ptr, ptr %port_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %port_list.i
  br i1 %cmp.not14.i, label %if.then.update_headroom.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.update_headroom.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_headroom.exit

for.body.i:                                       ; preds = %netdev_get_fwd_headroom.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %netdev_get_fwd_headroom.exit.i.for.body.i_crit_edge ], [ %.pn13.i, %if.then.for.body.i_crit_edge ]
  %max_headroom.015.i = phi i32 [ %36, %netdev_get_fwd_headroom.exit.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %dev.i43 = getelementptr i8, ptr %.pn16.i, i32 -8
  %30 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i43, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.netdev_get_fwd_headroom.exit.i_crit_edge

for.body.i.netdev_get_fwd_headroom.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_get_fwd_headroom.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %needed_headroom.i.i, align 8
  %conv.i.i = zext i16 %35 to i32
  br label %netdev_get_fwd_headroom.exit.i

netdev_get_fwd_headroom.exit.i:                   ; preds = %cond.false.i.i, %for.body.i.netdev_get_fwd_headroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ 0, %for.body.i.netdev_get_fwd_headroom.exit.i_crit_edge ]
  %36 = tail call i32 @llvm.umax.i32(i32 %cond.i.i, i32 %max_headroom.015.i) #9
  %37 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %netdev_get_fwd_headroom.exit.i.for.body.i49_crit_edge, label %netdev_get_fwd_headroom.exit.i.for.body.i_crit_edge

netdev_get_fwd_headroom.exit.i.for.body.i_crit_edge: ; preds = %netdev_get_fwd_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netdev_get_fwd_headroom.exit.i.for.body.i49_crit_edge: ; preds = %netdev_get_fwd_headroom.exit.i
  br label %for.body.i49

for.body.i49:                                     ; preds = %netdev_set_rx_headroom.exit.i.for.body.i49_crit_edge, %netdev_get_fwd_headroom.exit.i.for.body.i49_crit_edge
  %.pn15.i = phi ptr [ %.pn.i50, %netdev_set_rx_headroom.exit.i.for.body.i49_crit_edge ], [ %.pn13.i, %netdev_get_fwd_headroom.exit.i.for.body.i49_crit_edge ]
  %dev.i47 = getelementptr i8, ptr %.pn15.i, i32 -8
  %38 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i47, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev_ops.i.i, align 8
  %ndo_set_rx_headroom.i.i = getelementptr inbounds %struct.net_device_ops, ptr %41, i32 0, i32 75
  %42 = ptrtoint ptr %ndo_set_rx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndo_set_rx_headroom.i.i, align 4
  %tobool.not.i.i48 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i48, label %for.body.i49.netdev_set_rx_headroom.exit.i_crit_edge, label %if.then.i.i

for.body.i49.netdev_set_rx_headroom.exit.i_crit_edge: ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_set_rx_headroom.exit.i

if.then.i.i:                                      ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %43(ptr noundef %39, i32 noundef %36) #9
  br label %netdev_set_rx_headroom.exit.i

netdev_set_rx_headroom.exit.i:                    ; preds = %if.then.i.i, %for.body.i49.netdev_set_rx_headroom.exit.i_crit_edge
  %44 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i50 = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i51 = icmp eq ptr %.pn.i50, %port_list.i
  br i1 %cmp.not.i51, label %update_headroom.exit.loopexit, label %netdev_set_rx_headroom.exit.i.for.body.i49_crit_edge

netdev_set_rx_headroom.exit.i.for.body.i49_crit_edge: ; preds = %netdev_set_rx_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i49

update_headroom.exit.loopexit:                    ; preds = %netdev_set_rx_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %36 to i16
  br label %update_headroom.exit

update_headroom.exit:                             ; preds = %update_headroom.exit.loopexit, %if.then.update_headroom.exit_crit_edge
  %max_headroom.0.lcssa.i75 = phi i16 [ 0, %if.then.update_headroom.exit_crit_edge ], [ %phi.cast, %update_headroom.exit.loopexit ]
  %45 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev5, align 4
  %needed_headroom.i53 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 21
  %47 = ptrtoint ptr %needed_headroom.i53 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %max_headroom.0.lcssa.i75, ptr %needed_headroom.i53, align 8
  br label %if.end

if.end:                                           ; preds = %update_headroom.exit, %netdev_get_fwd_headroom.exit.if.end_crit_edge
  %netdev_ops.i.i54 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev_ops.i.i54, align 8
  %ndo_set_rx_headroom.i.i55 = getelementptr inbounds %struct.net_device_ops, ptr %49, i32 0, i32 75
  %50 = ptrtoint ptr %ndo_set_rx_headroom.i.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndo_set_rx_headroom.i.i55, align 4
  %tobool.not.i.i56 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i56, label %if.end.netdev_reset_rx_headroom.exit_crit_edge, label %if.then.i.i57

if.end.netdev_reset_rx_headroom.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_reset_rx_headroom.exit

if.then.i.i57:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %51(ptr noundef %3, i32 noundef -1) #9
  br label %netdev_reset_rx_headroom.exit

netdev_reset_rx_headroom.exit:                    ; preds = %if.then.i.i57, %if.end.netdev_reset_rx_headroom.exit_crit_edge
  tail call void @nbp_vlan_flush(ptr noundef %p) #9
  tail call void @br_fdb_delete_by_port(ptr noundef %1, ptr noundef %p, i16 noundef zeroext 0, i32 noundef 1) #9
  tail call void @switchdev_deferred_process() #9
  %call.i59 = tail call i32 @nbp_backup_change(ptr noundef %p, ptr noundef null) #9
  %backup_redirected_cnt.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 35
  %52 = ptrtoint ptr %backup_redirected_cnt.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %backup_redirected_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i60 = icmp eq i16 %53, 0
  br i1 %tobool.not.i60, label %netdev_reset_rx_headroom.exit.if.end19.i_crit_edge, label %if.then.i62

netdev_reset_rx_headroom.exit.if.end19.i_crit_edge: ; preds = %netdev_reset_rx_headroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then.i62:                                      ; preds = %netdev_reset_rx_headroom.exit
  %54 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p, align 8
  %port_list.i61 = getelementptr inbounds %struct.net_bridge, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %port_list.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn66.i = load ptr, ptr %port_list.i61, align 4
  %cmp.not69.i = icmp eq ptr %.pn66.i, %port_list.i61
  br i1 %cmp.not69.i, label %if.then.i62.if.end19.i_crit_edge, label %if.then.i62.for.body.i63_crit_edge

if.then.i62.for.body.i63_crit_edge:               ; preds = %if.then.i62
  br label %for.body.i63

if.then.i62.if.end19.i_crit_edge:                 ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

for.body.i63:                                     ; preds = %if.end13.i.for.body.i63_crit_edge, %if.then.i62.for.body.i63_crit_edge
  %.pn70.i = phi ptr [ %.pn.i64, %if.end13.i.for.body.i63_crit_edge ], [ %.pn66.i, %if.then.i62.for.body.i63_crit_edge ]
  %cur_p.071.i = getelementptr i8, ptr %.pn70.i, i32 -12
  %call3.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call3.i, label %for.body.i63.do.end.i_crit_edge, label %land.lhs.true.i

for.body.i63.do.end.i_crit_edge:                  ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i63
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b65.i = load i1, ptr @nbp_backup_clear.__warned, align 1
  br i1 %.b65.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nbp_backup_clear.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i63.do.end.i_crit_edge
  %backup_port.i = getelementptr i8, ptr %.pn70.i, i32 16
  %57 = ptrtoint ptr %backup_port.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %backup_port.i, align 4
  %cmp10.i = icmp eq ptr %58, %p
  br i1 %cmp10.i, label %if.then11.i, label %do.end.i.if.end13.i_crit_edge

do.end.i.if.end13.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 @nbp_backup_change(ptr noundef %cur_p.071.i, ptr noundef null) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end.i.if.end13.i_crit_edge
  %59 = ptrtoint ptr %.pn70.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i64 = load ptr, ptr %.pn70.i, align 4
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p, align 8
  %port_list2.i = getelementptr inbounds %struct.net_bridge, ptr %61, i32 0, i32 9
  %cmp.not.i65 = icmp eq ptr %.pn.i64, %port_list2.i
  br i1 %cmp.not.i65, label %if.end13.i.if.end19.i_crit_edge, label %if.end13.i.for.body.i63_crit_edge

if.end13.i.for.body.i63_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i63

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end13.i.if.end19.i_crit_edge, %if.then.i62.if.end19.i_crit_edge, %netdev_reset_rx_headroom.exit.if.end19.i_crit_edge
  %backup_port24.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 6
  %62 = ptrtoint ptr %backup_port24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %backup_port24.i, align 4
  %tobool26.not.i = icmp eq ptr %63, null
  br i1 %tobool26.not.i, label %lor.rhs.i, label %if.end19.i.do.end41.i_crit_edge

if.end19.i.do.end41.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

lor.rhs.i:                                        ; preds = %if.end19.i
  %64 = ptrtoint ptr %backup_redirected_cnt.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %backup_redirected_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool28.not.i = icmp eq i16 %65, 0
  br i1 %tobool28.not.i, label %lor.rhs.i.nbp_backup_clear.exit_crit_edge, label %lor.rhs.i.do.end41.i_crit_edge, !prof !49

lor.rhs.i.do.end41.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

lor.rhs.i.nbp_backup_clear.exit_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_backup_clear.exit

do.end41.i:                                       ; preds = %lor.rhs.i.do.end41.i_crit_edge, %if.end19.i.do.end41.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #9
  br label %nbp_backup_clear.exit

nbp_backup_clear.exit:                            ; preds = %do.end41.i, %lor.rhs.i.nbp_backup_clear.exit_crit_edge
  %port_list.i66 = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %port_list.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn19.i = load ptr, ptr %port_list.i66, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %port_list.i66
  br i1 %cmp.not20.i, label %nbp_backup_clear.exit.for.end.i_crit_edge, label %nbp_backup_clear.exit.for.body.i72_crit_edge

nbp_backup_clear.exit.for.body.i72_crit_edge:     ; preds = %nbp_backup_clear.exit
  br label %for.body.i72

nbp_backup_clear.exit.for.end.i_crit_edge:        ; preds = %nbp_backup_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i72:                                     ; preds = %for.body.i72.for.body.i72_crit_edge, %nbp_backup_clear.exit.for.body.i72_crit_edge
  %.pn22.i = phi ptr [ %.pn.i70, %for.body.i72.for.body.i72_crit_edge ], [ %.pn19.i, %nbp_backup_clear.exit.for.body.i72_crit_edge ]
  %cnt.021.i = phi i32 [ %spec.select.i, %for.body.i72.for.body.i72_crit_edge ], [ 0, %nbp_backup_clear.exit.for.body.i72_crit_edge ]
  %flags.i67 = getelementptr i8, ptr %.pn22.i, i32 8
  %67 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i67, align 4
  %and.i68 = and i32 %68, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp ne i32 %and.i68, 0
  %inc.i = zext i1 %tobool.not.i69 to i32
  %spec.select.i = add i32 %cnt.021.i, %inc.i
  %69 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn.i70 = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i71 = icmp eq ptr %.pn.i70, %port_list.i66
  br i1 %cmp.not.i71, label %for.body.i72.for.end.i_crit_edge, label %for.body.i72.for.body.i72_crit_edge

for.body.i72.for.body.i72_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i72

for.body.i72.for.end.i_crit_edge:                 ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i72.for.end.i_crit_edge, %nbp_backup_clear.exit.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %nbp_backup_clear.exit.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i72.for.end.i_crit_edge ]
  %auto_cnt.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 43
  %70 = ptrtoint ptr %auto_cnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %auto_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %cnt.0.lcssa.i)
  %cmp7.not.i = icmp eq i32 %71, %cnt.0.lcssa.i
  br i1 %cmp7.not.i, label %for.end.i.nbp_update_port_count.exit_crit_edge, label %if.then8.i73

for.end.i.nbp_update_port_count.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nbp_update_port_count.exit

if.then8.i73:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %auto_cnt.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cnt.0.lcssa.i, ptr %auto_cnt.i, align 4
  tail call void @br_manage_promisc(ptr noundef %1) #9
  br label %nbp_update_port_count.exit

nbp_update_port_count.exit:                       ; preds = %if.then8.i73, %for.end.i.nbp_update_port_count.exit_crit_edge
  %73 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev5, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %3, ptr noundef %74) #9
  %75 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %priv_flags.i, align 16
  %and = and i64 %76, -513
  store i64 %and, ptr %priv_flags.i, align 16
  tail call void @netdev_rx_handler_unregister(ptr noundef %3) #9
  tail call void @br_multicast_del_port(ptr noundef %p) #9
  %kobj = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 22
  %call9 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 1) #9
  tail call void @kobject_del(ptr noundef %kobj) #9
  tail call void @br_netpoll_disable(ptr noundef %p) #9
  %rcu = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 23
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @destroy_nbp_rcu) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_recalculate_neigh_suppress_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_sysfs_delbr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_add_bridge(ptr noundef %net, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 1916, ptr noundef %name, i8 noundef zeroext 0, ptr noundef nonnull @br_dev_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %net, ptr %nd_net.i, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 136
  %1 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @br_link_ops, ptr %rtnl_link_ops, align 4
  %call1 = tail call i32 @register_netdevice(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_dev_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_del_bridge(ptr noundef %net, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef %name) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.if.end7_crit_edge, label %if.else3

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else3:                                         ; preds = %if.else
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else5, label %if.else3.if.end7_crit_edge

if.else3.if.end7_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else5:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @br_dev_delete(ptr noundef nonnull %call, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else3.if.end7_crit_edge, %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.else5 ], [ -6, %entry.if.end7_crit_edge ], [ -1, %if.else.if.end7_crit_edge ], [ -16, %if.else3.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_mtu_auto_adjust(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @br_mtu_auto_adjust.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !49

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_mtu_auto_adjust.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 505) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool38.not = icmp eq i32 %2, 0
  br i1 %tobool38.not, label %if.end40, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end40:                                         ; preds = %if.end29
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %5 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn18.i = load ptr, ptr %port_list.i, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %port_list.i
  br i1 %cmp.not19.i, label %if.end40.for.end.thread.i_crit_edge, label %if.end40.for.body.i_crit_edge

if.end40.for.body.i_crit_edge:                    ; preds = %if.end40
  br label %for.body.i

if.end40.for.end.thread.i_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end40.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %if.end40.for.body.i_crit_edge ]
  %ret_mtu.020.i = phi i32 [ %ret_mtu.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end40.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_mtu.020.i)
  %tobool.not.i = icmp eq i32 %ret_mtu.020.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %dev.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret_mtu.020.i, i32 %9)
  %cmp2.i = icmp ugt i32 %ret_mtu.020.i, %9
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %dev3.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %10 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3.i, align 4
  %mtu4.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu4.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %ret_mtu.1.i = phi i32 [ %13, %if.then.i ], [ %ret_mtu.020.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %14 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_mtu.1.i)
  %tobool10.not.i = icmp eq i32 %ret_mtu.1.i, 0
  br i1 %tobool10.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.br_mtu_min.exit_crit_edge

for.end.i.br_mtu_min.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_mtu_min.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %if.end40.for.end.thread.i_crit_edge
  br label %br_mtu_min.exit

br_mtu_min.exit:                                  ; preds = %for.end.thread.i, %for.end.i.br_mtu_min.exit_crit_edge
  %15 = phi i32 [ 1500, %for.end.thread.i ], [ %ret_mtu.1.i, %for.end.i.br_mtu_min.exit_crit_edge ]
  %call42 = tail call i32 @dev_set_mtu(ptr noundef %4, i32 noundef %15) #9
  tail call void @br_opt_toggle(ptr noundef %br, i32 noundef 11, i1 noundef zeroext false) #9
  br label %return

return:                                           ; preds = %br_mtu_min.exit, %if.end29.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @br_features_recompute(ptr noundef %br, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %port_list, align 4
  %cmp.i.not = icmp eq ptr %1, %port_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %features, -26845578338
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %port_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %port_list
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn22, %if.end.for.body_crit_edge ]
  %features.addr.024 = phi i64 [ %call4, %for.body.for.body_crit_edge ], [ %and, %if.end.for.body_crit_edge ]
  %dev = getelementptr i8, ptr %.pn25, i32 -8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %features3 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %features3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features3, align 16
  %call4 = tail call i64 @netdev_increment_features(i64 noundef %features.addr.024, i64 noundef %6, i64 noundef %features) #9
  %7 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %features.addr.0.lcssa = phi i64 [ %and, %if.end.for.end_crit_edge ], [ %call4, %for.body.for.end_crit_edge ]
  %call.i = tail call i64 @netdev_increment_features(i64 noundef %features.addr.0.lcssa, i64 noundef 1900544, i64 noundef %features) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call.i, %for.end ], [ %features, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_add_if(ptr noundef %br, ptr noundef %dev, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp4.not = icmp eq i8 %5, 6
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false6
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %or.i.i = or i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %13 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.if.end24_crit_edge, label %netdev_uses_dsa.exit

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

netdev_uses_dsa.exit:                             ; preds = %if.end
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %16, null
  br i1 %tobool2.i.not, label %netdev_uses_dsa.exit.if.end24_crit_edge, label %if.then8

netdev_uses_dsa.exit.if.end24_crit_edge:          ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then8:                                         ; preds = %netdev_uses_dsa.exit
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then8
  %.pn.in = phi ptr [ %port_list, %if.then8 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp10.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp10.not, label %for.cond.if.end24_crit_edge, label %for.body

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.body:                                         ; preds = %for.cond
  %dev12 = getelementptr i8, ptr %.pn, i32 -8
  %18 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12, align 4
  %call13 = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %dev, ptr noundef %19) #9
  br i1 %call13, label %for.body.for.cond_crit_edge, label %do.body

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.body:                                          ; preds = %for.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_add_if.__msg) #9
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body.cleanup_crit_edge, label %if.then16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @br_add_if.__msg, ptr %extack, align 4
  br label %cleanup

if.end24:                                         ; preds = %for.cond.if.end24_crit_edge, %netdev_uses_dsa.exit.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev_ops, align 8
  %ndo_start_xmit = getelementptr inbounds %struct.net_device_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ndo_start_xmit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndo_start_xmit, align 4
  %cmp25 = icmp eq ptr %24, @br_dev_xmit
  br i1 %cmp25, label %do.body28, label %if.end36

do.body28:                                        ; preds = %if.end24
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_add_if.__msg.3) #9
  %tobool30.not = icmp eq ptr %extack, null
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %if.then31

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @br_add_if.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %call37 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %dev) #9
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %26 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %priv_flags, align 16
  %and41 = and i64 %27, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %if.end52, label %do.body44

do.body44:                                        ; preds = %if.end40
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_add_if.__msg.4) #9
  %tobool46.not = icmp eq ptr %extack, null
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %if.then47

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @br_add_if.__msg.4, ptr %extack, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %call53 = tail call fastcc ptr @new_nbp(ptr noundef %br, ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %call58 = tail call i32 @call_netdevice_notifiers(i32 noundef 20, ptr noundef %dev) #9
  %call59 = tail call i32 @dev_set_allmulti(ptr noundef %dev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @br_multicast_del_port(ptr noundef %call53) #9
  %dev_tracker = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 2
  tail call fastcc void @dev_put_track(ptr noundef %dev, ptr noundef %dev_tracker)
  tail call void @kfree(ptr noundef %call53) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %kobj = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 22
  %dev63 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call65 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @brport_ktype, ptr noundef %dev63, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.err2_crit_edge

if.end62.err2_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end68:                                         ; preds = %if.end62
  %call69 = tail call i32 @br_sysfs_addif(ptr noundef %call53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err2_crit_edge

if.end68.err2_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @br_netpoll_enable(ptr noundef %call53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.err3_crit_edge

if.end72.err3_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

if.end76:                                         ; preds = %if.end72
  %call77 = tail call ptr @br_get_rx_handler(ptr noundef %dev) #9
  %call78 = tail call i32 @netdev_rx_handler_register(ptr noundef %dev, ptr noundef %call77, ptr noundef %call53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end76.err4_crit_edge

if.end76.err4_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %err4

if.end81:                                         ; preds = %if.end76
  %30 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %priv_flags, align 16
  %or = or i64 %31, 512
  store i64 %or, ptr %priv_flags, align 16
  %dev83 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %32 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev83, align 4
  %call84 = tail call i32 @netdev_master_upper_dev_link(ptr noundef %dev, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end81.err5_crit_edge

if.end81.err5_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %err5

if.end87:                                         ; preds = %if.end81
  tail call void @dev_disable_lro(ptr noundef %dev) #9
  %list88 = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 3
  %port_list89 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  tail call fastcc void @list_add_rcu(ptr noundef %list88, ptr noundef %port_list89)
  tail call fastcc void @nbp_update_port_count(ptr noundef %br)
  %flags90 = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 4
  %34 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags90, align 4
  %and91 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %land.lhs.true, label %if.end87.if.end104_crit_edge

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true:                                    ; preds = %if.end87
  %dev93 = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 1
  %36 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev93, align 4
  %priv_flags94 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %priv_flags94 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %priv_flags94, align 16
  %and95 = and i64 %39, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95)
  %tobool96.not = icmp eq i64 %and95, 0
  br i1 %tobool96.not, label %land.lhs.true.if.end104_crit_edge, label %if.then97

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then97:                                        ; preds = %land.lhs.true
  %call98 = tail call i32 @br_fdb_sync_static(ptr noundef %br, ptr noundef %call53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then97.if.end104_crit_edge, label %if.then102

if.then97.if.end104_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then102:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then97.if.end104_crit_edge, %land.lhs.true.if.end104_crit_edge, %if.end87.if.end104_crit_edge
  %fdb_synced.0.shrunk = phi i1 [ false, %if.end87.if.end104_crit_edge ], [ true, %if.then97.if.end104_crit_edge ], [ false, %if.then102 ], [ false, %land.lhs.true.if.end104_crit_edge ]
  %40 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev83, align 4
  tail call void @netdev_update_features(ptr noundef %41) #9
  %42 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev83, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %needed_headroom, align 8
  %conv107 = zext i16 %45 to i32
  %46 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %priv_flags, align 16
  %and.i = and i64 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i276 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i276, label %netdev_get_fwd_headroom.exit, label %if.end104.if.else_crit_edge

if.end104.if.else_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

netdev_get_fwd_headroom.exit:                     ; preds = %if.end104
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %48 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %needed_headroom.i, align 8
  %conv.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %45)
  %cmp109 = icmp ugt i16 %49, %45
  br i1 %cmp109, label %if.then111, label %netdev_get_fwd_headroom.exit.if.else_crit_edge

netdev_get_fwd_headroom.exit.if.else_crit_edge:   ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then111:                                       ; preds = %netdev_get_fwd_headroom.exit
  %50 = ptrtoint ptr %port_list89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn13.i = load ptr, ptr %port_list89, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %port_list89
  br i1 %cmp.not14.i, label %if.then111.update_headroom.exit_crit_edge, label %if.then111.for.body.i_crit_edge

if.then111.for.body.i_crit_edge:                  ; preds = %if.then111
  br label %for.body.i

if.then111.update_headroom.exit_crit_edge:        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_headroom.exit

for.body.i:                                       ; preds = %netdev_set_rx_headroom.exit.i.for.body.i_crit_edge, %if.then111.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %netdev_set_rx_headroom.exit.i.for.body.i_crit_edge ], [ %.pn13.i, %if.then111.for.body.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %.pn15.i, i32 -8
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev_ops.i.i, align 8
  %ndo_set_rx_headroom.i.i = getelementptr inbounds %struct.net_device_ops, ptr %54, i32 0, i32 75
  %55 = ptrtoint ptr %ndo_set_rx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ndo_set_rx_headroom.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %for.body.i.netdev_set_rx_headroom.exit.i_crit_edge, label %if.then.i.i

for.body.i.netdev_set_rx_headroom.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_set_rx_headroom.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %56(ptr noundef %52, i32 noundef %conv.i) #9
  br label %netdev_set_rx_headroom.exit.i

netdev_set_rx_headroom.exit.i:                    ; preds = %if.then.i.i, %for.body.i.netdev_set_rx_headroom.exit.i_crit_edge
  %57 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list89
  br i1 %cmp.not.i, label %netdev_set_rx_headroom.exit.i.update_headroom.exit_crit_edge, label %netdev_set_rx_headroom.exit.i.for.body.i_crit_edge

netdev_set_rx_headroom.exit.i.for.body.i_crit_edge: ; preds = %netdev_set_rx_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netdev_set_rx_headroom.exit.i.update_headroom.exit_crit_edge: ; preds = %netdev_set_rx_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_headroom.exit

update_headroom.exit:                             ; preds = %netdev_set_rx_headroom.exit.i.update_headroom.exit_crit_edge, %if.then111.update_headroom.exit_crit_edge
  %58 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev83, align 4
  %needed_headroom.i278 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %needed_headroom.i278 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %49, ptr %needed_headroom.i278, align 8
  br label %if.end112

if.else:                                          ; preds = %netdev_get_fwd_headroom.exit.if.else_crit_edge, %if.end104.if.else_crit_edge
  %61 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev_ops, align 8
  %ndo_set_rx_headroom.i = getelementptr inbounds %struct.net_device_ops, ptr %62, i32 0, i32 75
  %63 = ptrtoint ptr %ndo_set_rx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndo_set_rx_headroom.i, align 4
  %tobool.not.i279 = icmp eq ptr %64, null
  br i1 %tobool.not.i279, label %if.else.if.end112_crit_edge, label %if.then.i

if.else.if.end112_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %64(ptr noundef %dev, i32 noundef %conv107) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then.i, %if.else.if.end112_crit_edge, %update_headroom.exit
  %65 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr, align 64
  %call114 = tail call i32 @br_fdb_add_local(ptr noundef %br, ptr noundef %call53, ptr noundef %66, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end112.if.end117_crit_edge, label %if.then116

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end112.if.end117_crit_edge
  %67 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev83, align 4
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 55
  %69 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %addr_assign_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp120.not = icmp eq i8 %70, 3
  br i1 %cmp120.not, label %if.end117.if.end129_crit_edge, label %if.then122

if.end117.if.end129_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then122:                                       ; preds = %if.end117
  %71 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr, align 64
  %call125 = tail call i32 @dev_pre_changeaddr_notify(ptr noundef %68, ptr noundef %72, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then122.if.end129_crit_edge, label %if.then122.err6_crit_edge

if.then122.err6_crit_edge:                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  br label %err6

if.then122.if.end129_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.end129:                                        ; preds = %if.then122.if.end129_crit_edge, %if.end117.if.end129_crit_edge
  %call130 = tail call i32 @nbp_vlan_init(ptr noundef %call53, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %err6

if.end133:                                        ; preds = %if.end129
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #9
  %call134 = tail call zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef %br) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end133.if.end147_crit_edge, label %land.lhs.true138

if.end133.if.end147_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

land.lhs.true138:                                 ; preds = %if.end133
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 50
  %75 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %operstate.i, align 8
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %76, label %land.lhs.true138.if.end147_crit_edge [
    i8 6, label %land.lhs.true138.land.lhs.true141_crit_edge
    i8 0, label %land.lhs.true138.land.lhs.true141_crit_edge295
  ]

land.lhs.true138.land.lhs.true141_crit_edge295:   ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true141

land.lhs.true138.land.lhs.true141_crit_edge:      ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true141

land.lhs.true138.if.end147_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

land.lhs.true141:                                 ; preds = %land.lhs.true138.land.lhs.true141_crit_edge, %land.lhs.true138.land.lhs.true141_crit_edge295
  %78 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev83, align 4
  %flags143 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 14
  %80 = ptrtoint ptr %flags143 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags143, align 8
  %and144 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %land.lhs.true141.if.end147_crit_edge, label %if.then146

land.lhs.true141.if.end147_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then146:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @br_stp_enable_port(ptr noundef %call53) #9
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %land.lhs.true141.if.end147_crit_edge, %land.lhs.true138.if.end147_crit_edge, %if.end133.if.end147_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #9
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %call53) #9
  br i1 %call134, label %if.then150, label %if.end147.if.end153_crit_edge

if.end147.if.end153_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev83, align 4
  %call152 = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %83) #9
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end147.if.end153_crit_edge
  tail call void @br_mtu_auto_adjust(ptr noundef %br)
  %84 = ptrtoint ptr %port_list89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn38.i = load ptr, ptr %port_list89, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, %port_list89
  br i1 %cmp.not39.i, label %if.end153.br_set_gso_limits.exit_crit_edge, label %if.end153.for.body.i285_crit_edge

if.end153.for.body.i285_crit_edge:                ; preds = %if.end153
  br label %for.body.i285

if.end153.br_set_gso_limits.exit_crit_edge:       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_set_gso_limits.exit

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %if.end153.for.body.i285_crit_edge
  %.pn42.i = phi ptr [ %.pn.i283, %for.body.i285.for.body.i285_crit_edge ], [ %.pn38.i, %if.end153.for.body.i285_crit_edge ]
  %gso_max_size.041.i = phi i32 [ %89, %for.body.i285.for.body.i285_crit_edge ], [ 65536, %if.end153.for.body.i285_crit_edge ]
  %gso_max_segs.040.i = phi i32 [ %92, %for.body.i285.for.body.i285_crit_edge ], [ 65535, %if.end153.for.body.i285_crit_edge ]
  %dev.i282 = getelementptr i8, ptr %.pn42.i, i32 -8
  %85 = ptrtoint ptr %dev.i282 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i282, align 4
  %gso_max_size2.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 137
  %87 = ptrtoint ptr %gso_max_size2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %gso_max_size2.i, align 8
  %89 = tail call i32 @llvm.umin.i32(i32 %gso_max_size.041.i, i32 %88) #9
  %gso_max_segs6.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 138
  %90 = ptrtoint ptr %gso_max_segs6.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %gso_max_segs6.i, align 4
  %conv8.i = zext i16 %91 to i32
  %92 = tail call i32 @llvm.umin.i32(i32 %gso_max_segs.040.i, i32 %conv8.i) #9
  %93 = ptrtoint ptr %.pn42.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i283 = load ptr, ptr %.pn42.i, align 4
  %cmp.not.i284 = icmp eq ptr %.pn.i283, %port_list89
  br i1 %cmp.not.i284, label %for.end.loopexit.i, label %for.body.i285.for.body.i285_crit_edge

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i285

for.end.loopexit.i:                               ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i = trunc i32 %92 to i16
  br label %br_set_gso_limits.exit

br_set_gso_limits.exit:                           ; preds = %for.end.loopexit.i, %if.end153.br_set_gso_limits.exit_crit_edge
  %gso_max_segs.0.lcssa.i = phi i16 [ -1, %if.end153.br_set_gso_limits.exit_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  %gso_max_size.0.lcssa.i = phi i32 [ 65536, %if.end153.br_set_gso_limits.exit_crit_edge ], [ %89, %for.end.loopexit.i ]
  %94 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev83, align 4
  %gso_max_size.i.i = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 137
  %96 = ptrtoint ptr %gso_max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %gso_max_size.0.lcssa.i, ptr %gso_max_size.i.i, align 8
  %97 = load ptr, ptr %dev83, align 4
  %gso_max_segs.i.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 138
  %98 = ptrtoint ptr %gso_max_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store volatile i16 %gso_max_segs.0.lcssa.i, ptr %gso_max_segs.i.i, align 4
  %call155 = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #9
  br label %cleanup

err6:                                             ; preds = %if.then132, %if.then122.err6_crit_edge
  %err.0 = phi i32 [ %call125, %if.then122.err6_crit_edge ], [ %call130, %if.then132 ]
  br i1 %fdb_synced.0.shrunk, label %if.then157, label %err6.if.end158_crit_edge

err6.if.end158_crit_edge:                         ; preds = %err6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then157:                                       ; preds = %err6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @br_fdb_unsync_static(ptr noundef %br, ptr noundef %call53) #9
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %err6.if.end158_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list88) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end158.list_del_rcu.exit_crit_edge

if.end158.list_del_rcu.exit_crit_edge:            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %list88 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %list88, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end158.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @br_fdb_delete_by_port(ptr noundef %br, ptr noundef %call53, i16 noundef zeroext 0, i32 noundef 1) #9
  tail call fastcc void @nbp_update_port_count(ptr noundef %br)
  %106 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev83, align 4
  tail call void @netdev_upper_dev_unlink(ptr noundef %dev, ptr noundef %107) #9
  br label %err5

err5:                                             ; preds = %list_del_rcu.exit, %if.end81.err5_crit_edge
  %err.1 = phi i32 [ %call84, %if.end81.err5_crit_edge ], [ %err.0, %list_del_rcu.exit ]
  %108 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %priv_flags, align 16
  %and162 = and i64 %109, -513
  store i64 %and162, ptr %priv_flags, align 16
  tail call void @netdev_rx_handler_unregister(ptr noundef %dev) #9
  br label %err4

err4:                                             ; preds = %err5, %if.end76.err4_crit_edge
  %err.2 = phi i32 [ %call78, %if.end76.err4_crit_edge ], [ %err.1, %err5 ]
  tail call void @br_netpoll_disable(ptr noundef %call53) #9
  br label %err3

err3:                                             ; preds = %err4, %if.end72.err3_crit_edge
  %err.3 = phi i32 [ %call73, %if.end72.err3_crit_edge ], [ %err.2, %err4 ]
  %ifobj = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 42
  %110 = ptrtoint ptr %ifobj to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ifobj, align 4
  %dev163 = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 1
  %112 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev163, align 4
  tail call void @sysfs_remove_link(ptr noundef %111, ptr noundef %113) #9
  br label %err2

err2:                                             ; preds = %err3, %if.end68.err2_crit_edge, %if.end62.err2_crit_edge
  %err.4 = phi i32 [ %call65, %if.end62.err2_crit_edge ], [ %call69, %if.end68.err2_crit_edge ], [ %err.3, %err3 ]
  tail call void @br_multicast_del_port(ptr noundef %call53) #9
  %dev_tracker164 = getelementptr inbounds %struct.net_bridge_port, ptr %call53, i32 0, i32 2
  tail call fastcc void @dev_put_track(ptr noundef %dev, ptr noundef %dev_tracker164)
  tail call void @kobject_put(ptr noundef %kobj) #9
  %call166 = tail call i32 @dev_set_allmulti(ptr noundef %dev, i32 noundef -1) #9
  br label %cleanup

cleanup:                                          ; preds = %err2, %br_set_gso_limits.exit, %if.then61, %if.then55, %if.then47, %do.body44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then31, %do.body28.cleanup_crit_edge, %if.then16, %do.body.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then55 ], [ 0, %br_set_gso_limits.exit ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body.cleanup_crit_edge ], [ -40, %if.then31 ], [ -40, %do.body28.cleanup_crit_edge ], [ -16, %if.end36.cleanup_crit_edge ], [ -95, %if.then47 ], [ -95, %do.body44.cleanup_crit_edge ], [ %call59, %if.then61 ], [ %err.4, %err2 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_dev_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @new_nbp(ptr noundef %br, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %ecmd.i = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bitmap_zalloc(i32 noundef 1024, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %or.i.i = or i32 %1, 1
  store i32 %or.i.i, ptr %call.i, align 4
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %2 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21.i = load ptr, ptr %port_list.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, %port_list.i
  br i1 %cmp.not22.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn21.i, %if.end.i.for.body.i_crit_edge ]
  %port_no.i = getelementptr i8, ptr %.pn23.i, i32 22
  %3 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port_no.i, align 2
  %conv.i = zext i16 %4 to i32
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 %div2.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %or.i20.i = or i32 %shl.i.i, %6
  store i32 %or.i20.i, ptr %add.ptr.i.i, align 4
  %7 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call7.i = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull %call.i, i32 noundef 1024) #9
  tail call void @bitmap_free(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, 1023
  br i1 %cmp8.i, label %for.end.i.if.then_crit_edge, label %find_portno.exit

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

find_portno.exit:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %find_portno.exit.if.then_crit_edge, label %if.end

find_portno.exit.if.then_crit_edge:               ; preds = %find_portno.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %find_portno.exit.if.then_crit_edge, %for.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i60 = phi i32 [ %call7.i, %find_portno.exit.if.then_crit_edge ], [ -12, %entry.if.then_crit_edge ], [ -54, %for.end.i.if.then_crit_edge ]
  %8 = inttoptr i32 %retval.0.i60 to ptr
  br label %cleanup

if.end:                                           ; preds = %find_portno.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 720) #13
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %br, ptr %call7.i.i, align 8
  %dev_tracker = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 2
  %tobool.not.i38 = icmp eq ptr %dev, null
  br i1 %tobool.not.i38, label %if.end6.dev_hold_track.exit_crit_edge, label %do.body1.i.i

if.end6.dev_hold_track.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold_track.exit

do.body1.i.i:                                     ; preds = %if.end6
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %12 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13.i.i = add i32 %23, 1
  store i32 %add13.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !53

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #9, !srcloc !54
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #9
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %dev_hold.exit.i, %if.end6.dev_hold_track.exit_crit_edge
  %dev8 = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev8, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ecmd.i) #9
  %26 = call ptr @memset(ptr %ecmd.i, i32 255, i32 88)
  %call.i40 = call i32 @__ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef nonnull %ecmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.then.i, label %dev_hold_track.exit.if.end.i42_crit_edge

dev_hold_track.exit.if.end.i42_crit_edge:         ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i42

if.then.i:                                        ; preds = %dev_hold_track.exit
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd.i, i32 0, i32 1
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %28, label %if.then.i.if.end.i42_crit_edge [
    i32 10000, label %if.then.i.port_cost.exit_crit_edge
    i32 1000, label %sw.bb1.i
    i32 100, label %sw.bb2.i
    i32 10, label %sw.bb3.i
  ]

if.then.i.port_cost.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.then.i.if.end.i42_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i42

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.end.i42:                                       ; preds = %if.then.i.if.end.i42_crit_edge, %dev_hold_track.exit.if.end.i42_crit_edge
  %call4.i = call i32 @strncmp(ptr noundef %dev, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i42.port_cost.exit_crit_edge, label %if.end7.i

if.end.i42.port_cost.exit_crit_edge:              ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_cost.exit

if.end7.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 @strncmp(ptr noundef %dev, ptr noundef nonnull dereferenceable(5) @.str.10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  %..i = select i1 %tobool11.not.i, i32 2500, i32 100
  br label %port_cost.exit

port_cost.exit:                                   ; preds = %if.end7.i, %if.end.i42.port_cost.exit_crit_edge, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.i.port_cost.exit_crit_edge
  %retval.0.i43 = phi i32 [ 100, %sw.bb3.i ], [ 19, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %if.then.i.port_cost.exit_crit_edge ], [ 7, %if.end.i42.port_cost.exit_crit_edge ], [ %..i, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ecmd.i) #9
  %path_cost = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %path_cost to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i43, ptr %path_cost, align 4
  %priority = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 32, ptr %priority, align 8
  %conv = trunc i32 %call7.i to i16
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %port_no to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %port_no, align 2
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 18528, ptr %flags, align 4
  call void @br_init_port(ptr noundef nonnull %call7.i.i) #9
  call void @br_set_state(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  call void @br_stp_port_timer_init(ptr noundef nonnull %call7.i.i) #9
  %call10 = call i32 @br_multicast_add_port(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %port_cost.exit.cleanup_crit_edge, label %if.then11

port_cost.exit.cleanup_crit_edge:                 ; preds = %port_cost.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %port_cost.exit
  br i1 %tobool.not.i38, label %if.then11.dev_put_track.exit_crit_edge, label %do.body1.i.i55

if.then11.dev_put_track.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put_track.exit

do.body1.i.i55:                                   ; preds = %if.then11
  %refcnt_tracker.i.i45 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i46 = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i45, ptr noundef %dev_tracker) #9
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %pcpu_refcnt.i.i47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %35 = ptrtoint ptr %pcpu_refcnt.i.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcpu_refcnt.i.i47, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i48 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i48 to ptr
  %cpu.i.i49 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i49, align 4
  %arrayidx.i.i50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i50, align 4
  %add.i.i51 = add i32 %43, %37
  %44 = inttoptr i32 %add.i.i51 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add13.i.i52 = add i32 %46, -1
  store i32 %add13.i.i52, ptr %44, align 4
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i.i.i.i53 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i53)
  %tobool24.not.i.i54 = icmp eq i32 %and.i.i.i.i53, 0
  br i1 %tobool24.not.i.i54, label %if.then28.i.i56, label %do.body1.i.i55.dev_put.exit.i_crit_edge, !prof !53

do.body1.i.i55.dev_put.exit.i_crit_edge:          ; preds = %do.body1.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i

if.then28.i.i56:                                  ; preds = %do.body1.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i56, %do.body1.i.i55.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #9, !srcloc !54
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.then11.dev_put_track.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %48 = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %dev_put_track.exit, %port_cost.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %8, %if.then ], [ %48, %dev_put_track.exit ], [ %call7.i.i, %port_cost.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_del_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put_track(ptr noundef %dev, ptr noundef %tracker) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i, ptr noundef %tracker) #9
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !53

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_sysfs_addif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_netpoll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_get_rx_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_disable_lro(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #9
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nbp_update_port_count(ptr noundef %br) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %port_list, align 4
  %cmp.not20 = icmp eq ptr %.pn19, %port_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %cnt.021 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn22, i32 8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %cnt.021, %inc
  %3 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %auto_cnt = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 43
  %4 = ptrtoint ptr %auto_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %auto_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cnt.0.lcssa)
  %cmp7.not = icmp eq i32 %5, %cnt.0.lcssa
  br i1 %cmp7.not, label %for.end.if.end10_crit_edge, label %if.then8

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %auto_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cnt.0.lcssa, ptr %auto_cnt, align 4
  tail call void @br_manage_promisc(ptr noundef %br)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_sync_static(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_add_local(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pre_changeaddr_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nbp_vlan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_unsync_static(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_netpoll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_del_if(ptr noundef %br, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 422, ptr noundef nonnull @.str.1) #9
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %lor.lhs.false

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %br_port_get_rtnl.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cmp.not = icmp eq ptr %5, %br
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @del_nbp(ptr noundef nonnull %3)
  tail call void @br_mtu_auto_adjust(ptr noundef %br)
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %6 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn38.i = load ptr, ptr %port_list.i, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, %port_list.i
  br i1 %cmp.not39.i, label %if.end.br_set_gso_limits.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.br_set_gso_limits.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_set_gso_limits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn42.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn38.i, %if.end.for.body.i_crit_edge ]
  %gso_max_size.041.i = phi i32 [ %11, %for.body.i.for.body.i_crit_edge ], [ 65536, %if.end.for.body.i_crit_edge ]
  %gso_max_segs.040.i = phi i32 [ %14, %for.body.i.for.body.i_crit_edge ], [ 65535, %if.end.for.body.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %.pn42.i, i32 -8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %gso_max_size2.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 137
  %9 = ptrtoint ptr %gso_max_size2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gso_max_size2.i, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %gso_max_size.041.i, i32 %10) #9
  %gso_max_segs6.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 138
  %12 = ptrtoint ptr %gso_max_segs6.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gso_max_segs6.i, align 4
  %conv8.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %gso_max_segs.040.i, i32 %conv8.i) #9
  %15 = ptrtoint ptr %.pn42.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn42.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i = trunc i32 %14 to i16
  br label %br_set_gso_limits.exit

br_set_gso_limits.exit:                           ; preds = %for.end.loopexit.i, %if.end.br_set_gso_limits.exit_crit_edge
  %gso_max_segs.0.lcssa.i = phi i16 [ -1, %if.end.br_set_gso_limits.exit_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  %gso_max_size.0.lcssa.i = phi i32 [ 65536, %if.end.br_set_gso_limits.exit_crit_edge ], [ %11, %for.end.loopexit.i ]
  %dev23.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %16 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23.i, align 4
  %gso_max_size.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 137
  %18 = ptrtoint ptr %gso_max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %gso_max_size.0.lcssa.i, ptr %gso_max_size.i.i, align 8
  %19 = load ptr, ptr %dev23.i, align 4
  %gso_max_segs.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 138
  %20 = ptrtoint ptr %gso_max_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store volatile i16 %gso_max_segs.0.lcssa.i, ptr %gso_max_segs.i.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #9
  %call2 = tail call zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef %br) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #9
  br i1 %call2, label %if.then5, label %br_set_gso_limits.exit.if.end8_crit_edge

br_set_gso_limits.exit.if.end8_crit_edge:         ; preds = %br_set_gso_limits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %br_set_gso_limits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev23.i, align 4
  %call7 = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %22) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %br_set_gso_limits.exit.if.end8_crit_edge
  %23 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23.i, align 4
  tail call void @netdev_update_features(ptr noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %br_port_get_rtnl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_port_flags_change(ptr nocapture noundef readonly %p, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %and = and i32 %mask, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %port_list.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19.i = load ptr, ptr %port_list.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %port_list.i
  br i1 %cmp.not20.i, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn19.i, %if.then.for.body.i_crit_edge ]
  %cnt.021.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn22.i, i32 8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %cnt.021.i, %inc.i
  %5 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %auto_cnt.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %auto_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auto_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cnt.0.lcssa.i)
  %cmp7.not.i = icmp eq i32 %7, %cnt.0.lcssa.i
  br i1 %cmp7.not.i, label %for.end.i.if.end_crit_edge, label %if.then8.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %auto_cnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cnt.0.lcssa.i, ptr %auto_cnt.i, align 4
  tail call void @br_manage_promisc(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @br_recalculate_neigh_suppress_enabled(ptr noundef %1) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_port_flag_is_set(ptr noundef %dev, i32 noundef %flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %cond.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true.i:                                      ; preds = %entry
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call2.i, label %cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge, label %lor.lhs.false.i

cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl_rcu.exit

lor.lhs.false.i:                                  ; preds = %cond.true.i
  %call3.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge

lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl_rcu.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl_rcu.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @br_port_get_rtnl_rcu.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge, label %if.then.i

land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %br_port_get_rtnl_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @br_port_get_rtnl_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 428, ptr noundef nonnull @.str.12) #9
  br label %br_port_get_rtnl_rcu.exit

br_port_get_rtnl_rcu.exit:                        ; preds = %if.then.i, %land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge, %lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge, %cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %br_port_get_rtnl_rcu.exit.cleanup_crit_edge, label %if.end

br_port_get_rtnl_rcu.exit.cleanup_crit_edge:      ; preds = %br_port_get_rtnl_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %br_port_get_rtnl_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %br_port_get_rtnl_rcu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %br_port_get_rtnl_rcu.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_mrp_port_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_cfm_port_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nbp_vlan_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_deferred_process() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_nbp_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -352
  %dev1.i = getelementptr i8, ptr %head, i32 -348
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %add.ptr, align 8
  store ptr null, ptr %dev1.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.destroy_nbp.exit_crit_edge, label %do.body1.i.i.i

entry.destroy_nbp.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_nbp.exit

do.body1.i.i.i:                                   ; preds = %entry
  %dev_tracker.i = getelementptr i8, ptr %head, i32 -344
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #9
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i.i = add i32 %15, -1
  store i32 %add13.i.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !53

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #9, !srcloc !54
  br label %destroy_nbp.exit

destroy_nbp.exit:                                 ; preds = %dev_put.exit.i.i, %entry.destroy_nbp.exit_crit_edge
  %kobj.i = getelementptr i8, ptr %head, i32 -136
  tail call void @kobject_put(ptr noundef %kobj.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_init_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_port_timer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_add_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_nbp(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -216
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brport_get_ownership(ptr nocapture noundef readonly %kobj, ptr noundef %uid, ptr noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %kobj, i32 -212
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  tail call void @net_ns_get_ownership(ptr noundef %3, ptr noundef %uid, ptr noundef %gid) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_ns_get_ownership(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_if.c", i32 172, i32 39}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/bridge/br_if.c", i32 175, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../net/bridge/br_if.c", i32 505, i32 2}
!9 = !{ptr @br_add_if.__msg, !10, !"__msg", i1 false, i1 false}
!10 = !{!"../net/bridge/br_if.c", i32 584, i32 5}
!11 = !{ptr @br_add_if.__msg.3, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../net/bridge/br_if.c", i32 593, i32 3}
!13 = !{ptr @br_add_if.__msg.4, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../net/bridge/br_if.c", i32 604, i32 3}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bridge/br_if.c", i32 624, i32 8}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/bridge/br_if.c", i32 662, i32 20}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bridge/br_if.c", i32 675, i32 19}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/bridge/br_if.c", i32 688, i32 19}
!23 = !{ptr @__ksymtab_br_port_flag_is_set, !24, !"__ksymtab_br_port_flag_is_set", i1 false, i1 false}
!24 = !{!"../net/bridge/br_if.c", i32 787, i32 1}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/bridge/br_if.c", i32 53, i32 26}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bridge/br_if.c", i32 56, i32 26}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/bridge/br_if.c", i32 212, i32 15}
!34 = !{ptr @brport_ktype, !35, !"brport_ktype", i1 false, i1 false}
!35 = !{!"../net/bridge/br_if.c", i32 263, i32 25}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/bridge/br_private.h", i32 428, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2158706731}
!51 = !{i64 618888, i64 618949}
!52 = !{i64 621620}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 621905}
!55 = !{i64 2149630183}
