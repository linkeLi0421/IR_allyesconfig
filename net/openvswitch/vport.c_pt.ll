; ModuleID = '/llk/IR_all_yes/net/openvswitch/vport.c_pt.bc'
source_filename = "../net/openvswitch/vport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__ovs_vport_ops_register\22, \22a\22\09"
module asm "\09.weak\09__crc___ovs_vport_ops_register\09\09\09\09"
module asm "\09.long\09__crc___ovs_vport_ops_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ovs_vport_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__ovs_vport_ops_register\22\09\09\09\09\09"
module asm "__kstrtabns___ovs_vport_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ovs_vport_ops_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_ovs_vport_ops_unregister\09\09\09\09"
module asm "\09.long\09__crc_ovs_vport_ops_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ovs_vport_ops_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ovs_vport_ops_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ovs_vport_ops_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ovs_vport_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_ovs_vport_alloc\09\09\09\09"
module asm "\09.long\09__crc_ovs_vport_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ovs_vport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ovs_vport_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ovs_vport_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ovs_vport_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ovs_vport_free\09\09\09\09"
module asm "\09.long\09__crc_ovs_vport_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ovs_vport_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ovs_vport_free\22\09\09\09\09\09"
module asm "__kstrtabns_ovs_vport_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vport_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.vport = type { ptr, ptr, ptr, ptr, i16, %struct.hlist_node, %struct.hlist_node, ptr, %struct.list_head, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.vport_parms = type { ptr, i32, ptr, ptr, i16, ptr }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.vport_portids = type { %struct.reciprocal_value, %struct.callback_head, i32, [0 x i32] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ovs_vport_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.153, i8, i8, i32, i32, %struct.anon.154, i8, i8, %union.anon.155, i16, %struct.anon.157, %union.anon.158, %struct.anon.170 }
%struct.ip_tunnel_key = type { i64, %union.anon.150, i16, i8, i8, i32, i16, i16 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.anon.153 = type <{ i32, i32, i16 }>
%struct.anon.154 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i8, i8, i8, i8 }
%struct.anon.157 = type { i16, i16, i16 }
%union.anon.158 = type { %struct.anon.164 }
%struct.anon.164 = type { %struct.anon.165, i32, %union.anon.166 }
%struct.anon.165 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.170 = type { %struct.anon.171, i32, %struct.ovs_key_ct_labels }
%struct.anon.171 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.172 }
%union.anon.172 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.149 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@dev_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vport_ops_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vport_ops_list, ptr @vport_ops_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___ovs_vport_ops_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___ovs_vport_ops_register = external dso_local constant [0 x i8], align 1
@__ksymtab___ovs_vport_ops_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ovs_vport_ops_register to i32), ptr @__kstrtab___ovs_vport_ops_register, ptr @__kstrtabns___ovs_vport_ops_register }, section "___ksymtab_gpl+__ovs_vport_ops_register", align 4
@__kstrtab_ovs_vport_ops_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ovs_vport_ops_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ovs_vport_ops_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ovs_vport_ops_unregister to i32), ptr @__kstrtab_ovs_vport_ops_unregister, ptr @__kstrtabns_ovs_vport_ops_unregister }, section "___ksymtab_gpl+ovs_vport_ops_unregister", align 4
@ovs_vport_locate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/openvswitch/vport.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_ovs_vport_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ovs_vport_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ovs_vport_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ovs_vport_alloc to i32), ptr @__kstrtab_ovs_vport_alloc, ptr @__kstrtabns_ovs_vport_alloc }, section "___ksymtab_gpl+ovs_vport_alloc", align 4
@__kstrtab_ovs_vport_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ovs_vport_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ovs_vport_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ovs_vport_free to i32), ptr @__kstrtab_ovs_vport_free, ptr @__kstrtabns_ovs_vport_free }, section "___ksymtab_gpl+ovs_vport_free", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vport-type-%d\00", [18 x i8] zeroinitializer }, align 32
@ovs_vport_set_upcall_portids.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ovs_vport_get_upcall_portids.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ovs_vport_find_upcall_portid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_vport_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovs_vport_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: dropped over-mtu packet: %d > %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovs_vport_send\00", [17 x i8] zeroinitializer }, align 32
@ovs_vport_send._entry_ptr = internal global ptr @ovs_vport_send._entry, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 65534]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"dev_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 27, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"vport_ops_list\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 24, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 100, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 220, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 345, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 382, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private constant [27 x i8] c"../net/openvswitch/vport.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 502, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 991, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___ovs_vport_ops_register, ptr @__ksymtab_ovs_vport_alloc, ptr @__ksymtab_ovs_vport_free, ptr @__ksymtab_ovs_vport_ops_unregister, ptr @ovs_vport_send._entry, ptr @ovs_vport_send._entry_ptr, ptr @dev_table, ptr @vport_ops_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vport_ops_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_vport_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #12
  store ptr %call7.i.i.i, ptr @dev_table, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_table, align 4
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ovs_vport_ops_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ovs_lock() #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @vport_ops_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @vport_ops_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %o.0 = getelementptr i8, ptr %.pn, i32 -28
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ops, align 4
  %3 = ptrtoint ptr %o.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %o.0, align 4
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %for.body.errout_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.errout_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

for.end:                                          ; preds = %for.cond
  %list7 = getelementptr inbounds %struct.vport_ops, ptr %ops, i32 0, i32 7
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @vport_ops_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list7, ptr noundef %5, ptr noundef nonnull @vport_ops_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.end.errout_crit_edge

for.end.errout_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list7, ptr getelementptr inbounds (%struct.list_head, ptr @vport_ops_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %list7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vport_ops_list, ptr %list7, align 4
  %prev3.i.i = getelementptr inbounds %struct.vport_ops, ptr %ops, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list7, ptr %5, align 4
  br label %errout

errout:                                           ; preds = %if.end.i.i, %for.end.errout_crit_edge, %for.body.errout_crit_edge
  %err.0 = phi i32 [ 0, %for.end.errout_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.errout_crit_edge ]
  tail call void @ovs_unlock() #9
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_ops_unregister(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ovs_lock() #9
  %list = getelementptr inbounds %struct.vport_ops, ptr %ops, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.vport_ops, ptr %ops, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.vport_ops, ptr %ops, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @ovs_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_vport_locate(ptr noundef %net, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hash_bucket(ptr noundef %net, ptr noundef %name)
  %call1 = tail call i32 @lockdep_ovsl_is_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b51 = load i1, ptr @ovs_vport_locate.__warned, align 1
  br i1 %.b51, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ovs_vport_locate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %call, align 4
  %tobool14.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -20
  %tobool16.not5559 = icmp eq ptr %add.ptr, null
  %tobool16.not55 = or i1 %tobool14.not, %tobool16.not5559
  br i1 %tobool16.not55, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %vport.056 = phi ptr [ %add.ptr37, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %vport.056 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport.056, align 4
  %call18 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true20:                                  ; preds = %for.body
  %dp = getelementptr inbounds %struct.vport, ptr %vport.056, i32 0, i32 2
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  %cmp.i.not = icmp eq ptr %7, %net
  br i1 %cmp.i.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash_node = getelementptr inbounds %struct.vport, ptr %vport.056, i32 0, i32 5
  %8 = ptrtoint ptr %hash_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hash_node, align 4
  %tobool33.not = icmp eq ptr %9, null
  %add.ptr37 = getelementptr i8, ptr %9, i32 -20
  %tobool16.not60 = icmp eq ptr %add.ptr37, null
  %tobool16.not = or i1 %tobool33.not, %tobool16.not60
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %vport.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %vport.056, %land.lhs.true20.cleanup_crit_edge ]
  ret ptr %vport.0.lcssa
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hash_bucket(ptr noundef %net, ptr nocapture noundef readonly %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #13
  %0 = ptrtoint ptr %net to i32
  %add.i = add i32 %0, -559038737
  %add1.i = add i32 %add.i, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp213.i = icmp ugt i32 %call, 12
  br i1 %cmp213.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.0218.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %name, %entry.while.body.i_crit_edge ]
  %c.0217.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %b.0216.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %a.0215.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %length.addr.0214.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %call, %entry.while.body.i_crit_edge ]
  %1 = ptrtoint ptr %k.0218.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %k.0218.i, align 1
  %add2.i = add i32 %2, %a.0215.i
  %add.ptr.i = getelementptr i8, ptr %k.0218.i, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %4, %b.0216.i
  %add.ptr5.i = getelementptr i8, ptr %k.0218.i, i32 8
  %5 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %6, %c.0217.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #9
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i201.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #9
  %xor12.i = xor i32 %sub10.i, %or.i201.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i202.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #9
  %xor16.i = xor i32 %sub14.i, %or.i202.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i203.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #9
  %xor20.i = xor i32 %sub18.i, %or.i203.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i204.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #9
  %xor24.i = xor i32 %sub22.i, %or.i204.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i205.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #9
  %xor28.i = xor i32 %sub26.i, %or.i205.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.0214.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.0218.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %call, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %name, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %7 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %10 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %11 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %12 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %13 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %14 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %15 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %16 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %17 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %18 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %19 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %20 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %21 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %22 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %23 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %24 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %25 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %26 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %27 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %28 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %29 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %30 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %31 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #9
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #9
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #9
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #9
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #9
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #9
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = lshr i32 %sub102.i, 8
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  %32 = load ptr, ptr @dev_table, align 4
  %and = and i32 %c.12.i, 1023
  %arrayidx = getelementptr %struct.hlist_head, ptr %32, i32 %and
  ret ptr %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_vport_alloc(i32 noundef %priv_size, ptr noundef %ops, ptr nocapture noundef readonly %parms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add1 = add i32 %priv_size, 56
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %dp = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 3
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 4
  %dp6 = getelementptr inbounds %struct.vport, ptr %call9.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dp6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dp6, align 8
  %port_no = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 4
  %3 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port_no, align 4
  %port_no7 = getelementptr inbounds %struct.vport, ptr %call9.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %port_no7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %port_no7, align 16
  %ops8 = getelementptr inbounds %struct.vport, ptr %call9.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ops, ptr %ops8, align 4
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %call9.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dp_hash_node, align 4
  %pprev.i = getelementptr inbounds %struct.vport, ptr %call9.i.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pprev.i, align 32
  %upcall_portids = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 5
  %9 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upcall_portids, align 4
  %call9 = tail call i32 @ovs_vport_set_upcall_portids(ptr noundef nonnull %call9.i.i, ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then11 ], [ %call9.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_set_upcall_portids(ptr noundef %vport, ptr noundef %ids) local_unnamed_addr #0 align 64 {
entry:
  %tmp17 = alloca %struct.reciprocal_value, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ids to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ids, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %tobool.not = icmp ne i16 %1, 4
  %2 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp eq i16 %2, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @lockdep_ovsl_is_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b87 = load i1, ptr @ovs_vport_set_upcall_portids.__warned, align 1
  br i1 %.b87, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ovs_vport_set_upcall_portids.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 345, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %upcall_portids = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 3
  %3 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %upcall_portids, align 4
  %5 = ptrtoint ptr %ids to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ids, align 2
  %conv.i90 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv.i90, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %7 = ptrtoint ptr %ids to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ids, align 2
  %conv.i92 = zext i16 %8 to i32
  %sub.i93 = add nsw i32 %conv.i92, -4
  %div86 = lshr i32 %sub.i93, 2
  %n_ids = getelementptr inbounds %struct.vport_portids, ptr %call9.i, i32 0, i32 2
  %9 = ptrtoint ptr %n_ids to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div86, ptr %n_ids, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp17) #9
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp17, i32 noundef %div86) #9
  %10 = ptrtoint ptr %tmp17 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tmp17, align 8
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %call9.i, align 128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp17) #9
  %ids19 = getelementptr inbounds %struct.vport_portids, ptr %call9.i, i32 0, i32 3
  %13 = ptrtoint ptr %ids to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ids, align 2
  %conv.i94 = zext i16 %14 to i32
  %sub.i95 = add nsw i32 %conv.i94, -4
  %call21 = call i32 @nla_memcpy(ptr noundef %ids19, ptr noundef %ids, i32 noundef %sub.i95) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %15 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i, ptr %upcall_portids, align 4
  %tobool60.not = icmp eq ptr %4, null
  br i1 %tobool60.not, label %if.end15.cleanup_crit_edge, label %do.end67

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end67:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.vport_portids, ptr %4, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end15.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.end67 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_free(ptr noundef %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %upcall_portids = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 3
  %0 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %upcall_portids, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %vport) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_vport_add(ptr noundef %parms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type1.i = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @vport_ops_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @vport_ops_list
  br i1 %cmp.not.i, label %for.cond.i.if.end12_crit_edge, label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i
  %ops.0.i = getelementptr i8, ptr %.pn.i, i32 -28
  %1 = ptrtoint ptr %ops.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ops.0.i, align 4
  %3 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type1.i, align 4
  %cmp2.i = icmp eq i32 %2, %4
  br i1 %cmp2.i, label %ovs_vport_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ovs_vport_lookup.exit:                            ; preds = %for.body.i
  %ops.0.i.le = getelementptr i8, ptr %.pn.i, i32 -28
  %tobool.not = icmp eq ptr %ops.0.i.le, null
  br i1 %tobool.not, label %ovs_vport_lookup.exit.if.end12_crit_edge, label %if.then

ovs_vport_lookup.exit.if.end12_crit_edge:         ; preds = %ovs_vport_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %ovs_vport_lookup.exit
  %owner = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef %6) #9
  br i1 %call1, label %if.end, label %if.then.cleanup19_crit_edge

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

if.end:                                           ; preds = %if.then
  %create = getelementptr i8, ptr %.pn.i, i32 -24
  %7 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %create, align 4
  %call4 = tail call ptr %8(ptr noundef %parms) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %10) #9
  br label %cleanup19

if.end8:                                          ; preds = %if.end
  %dp = getelementptr inbounds %struct.vport, ptr %call4, i32 0, i32 2
  %11 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp, align 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %15 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call4, align 4
  %call11 = tail call fastcc ptr @hash_bucket(ptr noundef %14, ptr noundef %16)
  %hash_node = getelementptr inbounds %struct.vport, ptr %call4, i32 0, i32 5
  %17 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call11, align 4
  %19 = ptrtoint ptr %hash_node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %hash_node, align 4
  %pprev.i = getelementptr inbounds %struct.vport, ptr %call4, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call11, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %21 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %hash_node, ptr %call11, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end8.cleanup19_crit_edge, label %do.body49.i

if.end8.cleanup19_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

do.body49.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hash_node, ptr %pprev51.i, align 4
  br label %cleanup19

if.end12:                                         ; preds = %ovs_vport_lookup.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge
  tail call void @ovs_unlock() #9
  %23 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type1.i, align 4
  %call13 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef %24) #9
  tail call void @ovs_lock() #9
  br label %for.cond.i36

for.cond.i36:                                     ; preds = %for.body.i39.for.cond.i36_crit_edge, %if.end12
  %.pn.in.i33 = phi ptr [ @vport_ops_list, %if.end12 ], [ %.pn.i34, %for.body.i39.for.cond.i36_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i34 = load ptr, ptr %.pn.in.i33, align 4
  %cmp.not.i35 = icmp eq ptr %.pn.i34, @vport_ops_list
  br i1 %cmp.not.i35, label %for.cond.i36.cleanup19_crit_edge, label %for.body.i39

for.cond.i36.cleanup19_crit_edge:                 ; preds = %for.cond.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

for.body.i39:                                     ; preds = %for.cond.i36
  %ops.0.i37 = getelementptr i8, ptr %.pn.i34, i32 -28
  %26 = ptrtoint ptr %ops.0.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ops.0.i37, align 4
  %28 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type1.i, align 4
  %cmp2.i38 = icmp eq i32 %27, %29
  br i1 %cmp2.i38, label %ovs_vport_lookup.exit43, label %for.body.i39.for.cond.i36_crit_edge

for.body.i39.for.cond.i36_crit_edge:              ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i36

ovs_vport_lookup.exit43:                          ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #11
  %ops.0.i37.le = getelementptr i8, ptr %.pn.i34, i32 -28
  %tobool15.not = icmp eq ptr %ops.0.i37.le, null
  %spec.select = select i1 %tobool15.not, ptr inttoptr (i32 -97 to ptr), ptr inttoptr (i32 -11 to ptr)
  br label %cleanup19

cleanup19:                                        ; preds = %ovs_vport_lookup.exit43, %for.cond.i36.cleanup19_crit_edge, %do.body49.i, %if.end8.cleanup19_crit_edge, %if.then6, %if.then.cleanup19_crit_edge
  %retval.1 = phi ptr [ %call4, %if.then6 ], [ inttoptr (i32 -97 to ptr), %if.then.cleanup19_crit_edge ], [ %call4, %if.end8.cleanup19_crit_edge ], [ %call4, %do.body49.i ], [ %spec.select, %ovs_vport_lookup.exit43 ], [ inttoptr (i32 -97 to ptr), %for.cond.i36.cleanup19_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_set_options(ptr noundef %vport, ptr noundef %options) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %set_options = getelementptr inbounds %struct.vport_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %set_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_options, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %vport, ptr noundef %options) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_del(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_node = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 5
  %0 = ptrtoint ptr %hash_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hash_node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %ops = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.vport_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %10) #9
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %destroy = getelementptr inbounds %struct.vport_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %destroy, align 4
  tail call void %14(ptr noundef %vport) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_get_stats(ptr nocapture noundef readonly %vport, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #9
  %0 = call ptr @memset(ptr %temp, i32 255, i32 192)
  %1 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vport, align 4
  %call = call ptr @dev_get_stats(ptr noundef %2, ptr noundef nonnull %temp) #9
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_errors, align 8
  %rx_errors1 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 4
  %5 = ptrtoint ptr %rx_errors1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_errors1, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_errors, align 8
  %tx_errors2 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 5
  %8 = ptrtoint ptr %tx_errors2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tx_errors2, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_dropped, align 8
  %tx_dropped3 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 7
  %11 = ptrtoint ptr %tx_dropped3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_dropped3, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_dropped, align 8
  %rx_dropped4 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 6
  %14 = ptrtoint ptr %rx_dropped4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %rx_dropped4, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_bytes, align 8
  %rx_bytes5 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 2
  %17 = ptrtoint ptr %rx_bytes5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rx_bytes5, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %call, align 8
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %stats, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_bytes, align 8
  %tx_bytes7 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 3
  %23 = ptrtoint ptr %tx_bytes7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_bytes7, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_packets, align 8
  %tx_packets8 = getelementptr inbounds %struct.ovs_vport_stats, ptr %stats, i32 0, i32 1
  %26 = ptrtoint ptr %tx_packets8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tx_packets8, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_get_options(ptr noundef %vport, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %get_options = getelementptr inbounds %struct.vport_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_options, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not21 = icmp eq ptr %5, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not21
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_options5 = getelementptr inbounds %struct.vport_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %get_options5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_options5, align 4
  %call6 = tail call i32 %9(ptr noundef %vport, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %11, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !46

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %nla_nest_cancel.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %nla_nest_cancel.exit ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_get_upcall_portids(ptr noundef %vport, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %upcall_portids = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 3
  %0 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %upcall_portids, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @ovs_vport_get_upcall_portids.__warned, align 1
  br i1 %.b21, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ovs_vport_get_upcall_portids.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.4) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %dp = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 2
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 4
  %user_features = getelementptr inbounds %struct.datapath, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user_features, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %n_ids = getelementptr inbounds %struct.vport_portids, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %n_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_ids, align 4
  %mul = shl i32 %7, 2
  %ids13 = getelementptr inbounds %struct.vport_portids, ptr %1, i32 0, i32 3
  %call14 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %mul, ptr noundef %ids13) #9
  br label %cleanup

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ids15 = getelementptr inbounds %struct.vport_portids, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ids15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ids15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12
  %retval.0 = phi i32 [ %call14, %if.then12 ], [ %call.i, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_find_upcall_portid(ptr noundef %vport, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %upcall_portids = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 3
  %0 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %upcall_portids, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @ovs_vport_find_upcall_portid.__warned, align 1
  br i1 %.b26, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ovs_vport_find_upcall_portid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.4) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %n_ids = getelementptr inbounds %struct.vport_portids, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %ids10 = getelementptr inbounds %struct.vport_portids, ptr %1, i32 0, i32 3
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %5 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %if.then.i, label %if.end11.skb_get_hash.exit_crit_edge

if.end11.skb_get_hash.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_get_hash.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__skb_get_hash(ptr noundef %skb) #9
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %if.then.i, %if.end11.skb_get_hash.exit_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %7 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash.i, align 4
  %9 = ptrtoint ptr %n_ids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ids, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %1, align 4
  %.elt24 = getelementptr inbounds [2 x i32], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %.elt24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack25 = load i32, ptr %.elt24, align 4
  %R.sroa.2.4.extract.shift.i = lshr i32 %.unpack25, 24
  %R.sroa.4.4.extract.shift.i = lshr i32 %.unpack25, 16
  %conv.i = zext i32 %8 to i64
  %conv1.i = zext i32 %.unpack to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %sub.i = sub i32 %8, %conv2.i
  %shr4.i = lshr i32 %sub.i, %R.sroa.2.4.extract.shift.i
  %add.i = add i32 %shr4.i, %conv2.i
  %conv5.i = and i32 %R.sroa.4.4.extract.shift.i, 255
  %shr6.i = lshr i32 %add.i, %conv5.i
  %mul = mul i32 %shr6.i, %10
  %sub = sub i32 %8, %mul
  %arrayidx16 = getelementptr %struct.vport_portids, ptr %1, i32 0, i32 3, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %skb_get_hash.exit, %if.then9
  %retval.0.in = phi ptr [ %ids10, %if.then9 ], [ %arrayidx16, %skb_get_hash.exit ]
  %13 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_vport_receive(ptr noundef %vport, ptr noundef %skb, ptr noundef %tun_info) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.sw_flow_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %key) #9
  %0 = call ptr @memset(ptr %key, i32 255, i32 464)
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vport, ptr %cb, align 8
  %mru = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %mru to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mru, align 4
  %cutlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %cutlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cutlen, align 8
  %4 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %dp = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 2
  %9 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp, align 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %cmp.not = icmp eq ptr %8, %12
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext true) #9
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tun_info.addr.0 = phi ptr [ null, %if.then ], [ %tun_info, %entry.if.end_crit_edge ]
  %call7 = call i32 @ovs_flow_key_extract(ptr noundef %tun_info.addr.0, ptr noundef %skb, ptr noundef nonnull %key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %if.then15, !prof !47

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @ovs_dp_process_packet(ptr noundef %skb, ptr noundef nonnull %key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %key) #9
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_key_extract(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_dp_process_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_vport_send(ptr nocapture noundef readonly %vport, ptr noundef %skb, i8 noundef zeroext %mac_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu1, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %5, label %entry.drop_crit_edge [
    i16 -2, label %sw.bb
    i16 1, label %sw.bb45
  ]

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

sw.bb:                                            ; preds = %entry
  %7 = zext i8 %mac_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %mac_proto, label %land.end [
    i8 1, label %if.then
    i8 0, label %sw.bb.sw.epilog_crit_edge
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %network_header.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i, align 2
  %sub.i = sub i16 %conv.i, %14
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %15 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %sub.i, ptr %mac_len.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 25944, ptr %protocol, align 8
  br label %sw.epilog

land.end:                                         ; preds = %sw.bb
  %.b111 = load i1, ptr @ovs_vport_send.__already_done, align 1
  br i1 %.b111, label %land.end.drop_crit_edge, label %if.then14, !prof !47

land.end.drop_crit_edge:                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ovs_vport_send.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #9
  br label %drop

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mac_proto)
  %cmp47.not = icmp eq i8 %mac_proto, 1
  br i1 %cmp47.not, label %sw.bb45.sw.epilog_crit_edge, label %sw.bb45.drop_crit_edge

sw.bb45.drop_crit_edge:                           ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  %17 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vport, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 19
  %21 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hard_header_len.i, align 2
  %conv.i113 = zext i16 %22 to i32
  %sub.i114 = sub i32 %20, %conv.i113
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.epilog.packet_length.exit_crit_edge

sw.epilog.packet_length.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %packet_length.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %25)
  %switch.selectcmp.case1.i.i = icmp eq i16 %25, -32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %25)
  %switch.selectcmp.case2.i.i = icmp eq i16 %25, -30552
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %sub2.i = add i32 %sub.i114, -4
  %spec.select.i = select i1 %switch.selectcmp.i.i, i32 %sub2.i, i32 %sub.i114
  br label %packet_length.exit

packet_length.exit:                               ; preds = %land.lhs.true.i, %sw.epilog.packet_length.exit_crit_edge
  %length.0.i = phi i32 [ %sub.i114, %sw.epilog.packet_length.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %26 = tail call i32 @llvm.smax.i32(i32 %length.0.i, i32 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %3)
  %cmp52 = icmp sgt i32 %26, %3
  br i1 %cmp52, label %land.rhs54, label %packet_length.exit.if.end86_crit_edge

packet_length.exit.if.end86_crit_edge:            ; preds = %packet_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

land.rhs54:                                       ; preds = %packet_length.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.i.not = icmp eq i16 %30, 0
  br i1 %tobool.i.not, label %if.then65, label %land.rhs54.if.end86_crit_edge, !prof !46

land.rhs54.if.end86_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then65:                                        ; preds = %land.rhs54
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 5
  %31 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tx_errors, align 4
  %33 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vport, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.then65.drop_crit_edge, label %do.body70

if.then65.drop_crit_edge:                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

do.body70:                                        ; preds = %if.then65
  %call71 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body70.drop_crit_edge, label %do.end76

do.body70.drop_crit_edge:                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

do.end76:                                         ; preds = %do.body70
  %37 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vport, align 4
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %hard_header_len.i116 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 19
  %41 = ptrtoint ptr %hard_header_len.i116 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hard_header_len.i116, align 2
  %conv.i117 = zext i16 %42 to i32
  %sub.i118 = sub i32 %40, %conv.i117
  %43 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %bf.load.i120 = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i120)
  %tobool.not.i121 = icmp sgt i32 %bf.load.i120, -1
  br i1 %tobool.not.i121, label %land.lhs.true.i128, label %do.end76.packet_length.exit130_crit_edge

do.end76.packet_length.exit130_crit_edge:         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %packet_length.exit130

land.lhs.true.i128:                               ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %protocol.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %44 = ptrtoint ptr %protocol.i122 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol.i122, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %45)
  %switch.selectcmp.case1.i.i123 = icmp eq i16 %45, -32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %45)
  %switch.selectcmp.case2.i.i124 = icmp eq i16 %45, -30552
  %switch.selectcmp.i.i125 = or i1 %switch.selectcmp.case1.i.i123, %switch.selectcmp.case2.i.i124
  %sub2.i126 = add i32 %sub.i118, -4
  %spec.select.i127 = select i1 %switch.selectcmp.i.i125, i32 %sub2.i126, i32 %sub.i118
  br label %packet_length.exit130

packet_length.exit130:                            ; preds = %land.lhs.true.i128, %do.end76.packet_length.exit130_crit_edge
  %length.0.i129 = phi i32 [ %sub.i118, %do.end76.packet_length.exit130_crit_edge ], [ %spec.select.i127, %land.lhs.true.i128 ]
  %46 = tail call i32 @llvm.smax.i32(i32 %length.0.i129, i32 0) #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %38, i32 noundef %46, i32 noundef %3) #15
  br label %drop

if.end86:                                         ; preds = %land.rhs54.if.end86_crit_edge, %packet_length.exit.if.end86_crit_edge
  %47 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %18, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %49, align 8
  %ops = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 7
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %send = getelementptr inbounds %struct.vport_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %send, align 4
  %call88 = tail call i32 %54(ptr noundef %skb) #9
  br label %cleanup

drop:                                             ; preds = %packet_length.exit130, %do.body70.drop_crit_edge, %if.then65.drop_crit_edge, %sw.bb45.drop_crit_edge, %if.then14, %land.end.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab___ovs_vport_ops_register, !1, !"__ksymtab___ovs_vport_ops_register", i1 false, i1 false}
!1 = !{!"../net/openvswitch/vport.c", i32 77, i32 1}
!2 = !{ptr @__ksymtab_ovs_vport_ops_unregister, !3, !"__ksymtab_ovs_vport_ops_unregister", i1 false, i1 false}
!3 = !{!"../net/openvswitch/vport.c", i32 85, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/openvswitch/vport.c", i32 100, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ovs_vport_alloc, !9, !"__ksymtab_ovs_vport_alloc", i1 false, i1 false}
!9 = !{!"../net/openvswitch/vport.c", i32 150, i32 1}
!10 = !{ptr @__ksymtab_ovs_vport_free, !11, !"__ksymtab_ovs_vport_free", i1 false, i1 false}
!11 = !{!"../net/openvswitch/vport.c", i32 170, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/openvswitch/vport.c", i32 220, i32 2}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/openvswitch/vport.c", i32 345, i32 8}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/openvswitch/vport.c", i32 382, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/openvswitch/vport.c", i32 409, i32 8}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/openvswitch/vport.c", i32 486, i32 4}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/openvswitch/vport.c", i32 502, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ovs_vport_send._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ovs_vport_send._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dev_table, !30, !"dev_table", i1 false, i1 false}
!30 = !{!"../net/openvswitch/vport.c", i32 27, i32 27}
!31 = !{ptr @vport_ops_list, !32, !"vport_ops_list", i1 false, i1 false}
!32 = !{!"../net/openvswitch/vport.c", i32 24, i32 8}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/net/netlink.h", i32 991, i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2158035229}
!45 = !{i64 2149776968}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
