; ModuleID = '/llk/IR_all_yes/drivers/net/bonding/bond_alb.c_pt.bc'
source_filename = "../drivers/net/bonding/bond_alb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bonding = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i8, ptr, [16 x i8], %struct.list_head, ptr, %struct.ad_bond_info, %struct.alb_bond_info, %struct.bond_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.rtnl_link_stats64, %struct.list_head, %struct.spinlock, ptr }
%struct.ad_bond_info = type { %struct.ad_system, %struct.bond_3ad_stats, %struct.atomic_t, i16 }
%struct.ad_system = type { i16, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.bond_3ad_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.alb_bond_info = type { ptr, i32, %struct.atomic_t, i32, i32, ptr, i32, i8, ptr, i8, i32, i32, i32, i8 }
%struct.bond_params = type { i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, [16 x i32], i32, i32, i32, i32, i32, i32, %struct.reciprocal_value, i16, i16, [8 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.tlb_client_info = type { ptr, i32, i32, i32, i32 }
%struct.rlb_client_info = type { i32, i32, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i8, i8, ptr, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bond_up_slave = type { i32, %struct.callback_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.arp_pkt = type <{ i16, i16, i8, i8, i16, [6 x i8], i32, [6 x i8], i32 }>
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.alb_walk_data = type { ptr, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.anon.146 = type { i16, [126 x i8] }
%struct.vlan_ethhdr = type { %union.anon.148, i16, i16, i16 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [6 x i8], [6 x i8] }
%struct.bond_vlan_tag = type { i16, i16 }

@bond_xmit_tlb_slave_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/bonding/bond_alb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bond_xmit_alb_slave_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bond_alb_monitor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bond_alb_handle_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to build slave-array for TLB mode.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bond_alb_handle_link_change\00", [36 x i8] zeroinitializer }, align 32
@bond_alb_handle_link_change._entry_ptr = internal global ptr @bond_alb_handle_link_change._entry, section ".printk_index", align 4
@bond_alb_handle_active_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bond_alb_set_mac_address.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rlb_arp_recv.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonding\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rlb_arp_recv\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(slave %s): Server received an ARP Reply from client\0A\00", [42 x i8] zeroinitializer }, align 32
@bond_do_alb_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rlb_arp_xmit.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rlb_arp_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(slave %s): Server sent ARP Reply packet\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@rlb_arp_xmit.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.11, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(slave %s): Server sent ARP Request packet\0A\00", [52 x i8] zeroinitializer }, align 32
@rlb_choose_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(slave %s): failed to create an ARP packet\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"found a client with no channel in the client's hash table\0A\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@alb_send_lp_vid.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str, ptr @.str.17, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alb_send_lp_vid\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(slave %s): Send learning packet: mac %pM vlan %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"(slave %s): dev_set_mac_address on slave failed! ALB mode requires that the base driver support setting the hw address also when the network device's interface is open\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"(slave %s): the slave hw address is in use by the bond; giving it the hw address of %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"(slave %s): the slave hw address is in use by the bond; couldn't find a slave with a free hw address to give it (this should not have happened)\0A\00", [47 x i8] zeroinitializer }, align 32
@rlb_clear_slave.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rlb_next_rx_slave.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rlb_teach_disabled_mac_on_primary.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alb_fasten_mac_swap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1362, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1563, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1665, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 298, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 673, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 694, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 441, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 533, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 932, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1027, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1202, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1206, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [34 x i8] c"../drivers/net/bonding/bond_alb.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 342, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @bond_alb_handle_link_change._entry, ptr @bond_alb_handle_link_change._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_alb_handle_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_alb_initialize(ptr noundef %bond, i32 noundef %rlb_enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alb_info.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5120) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %1 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %alb_info.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.012.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alb_info.i, align 4
  %arrayidx.i = getelementptr %struct.tlb_client_info, ptr %3, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  %next.i.i = getelementptr %struct.tlb_client_info, ptr %3, i32 %i.012.i, i32 3
  %5 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %next.i.i, align 4
  %prev.i.i = getelementptr %struct.tlb_client_info, ptr %3, i32 %i.012.i, i32 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlb_enabled)
  %tobool1.not = icmp eq i32 %rlb_enabled, 0
  %rlb_enabled9 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %rlb_enabled9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rlb_enabled9, align 8
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 13312, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i18 = icmp eq ptr %call1.i.i.i, null
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  br i1 %tobool.not.i18, label %if.then6, label %if.end.i20

if.end.i20:                                       ; preds = %if.then2
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %8 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %rx_hashtbl.i, align 4
  %rx_hashtbl_used_head.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %9 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rx_hashtbl_used_head.i, align 4
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %if.end.i20
  %i.014.i = phi i32 [ 0, %if.end.i20 ], [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ]
  %10 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_hashtbl.i, align 4
  %add.ptr.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 52)
  %used_next.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 4
  %13 = ptrtoint ptr %used_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %used_next.i.i.i, align 4
  %used_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 5
  %14 = ptrtoint ptr %used_prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %used_prev.i.i.i, align 4
  %slave.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 11
  %15 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %slave.i.i.i, align 4
  %src_first.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 8
  %16 = ptrtoint ptr %src_first.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %src_first.i.i.i, align 4
  %src_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 7
  %17 = ptrtoint ptr %src_prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %src_prev.i.i.i, align 4
  %src_next.i.i.i = getelementptr %struct.rlb_client_info, ptr %11, i32 %i.014.i, i32 6
  %18 = ptrtoint ptr %src_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %src_next.i.i.i, align 4
  %inc.i21 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 256
  br i1 %exitcond.not.i22, label %rlb_initialize.exit.thread, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i23

rlb_initialize.exit.thread:                       ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %recv_probe.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 8
  %19 = ptrtoint ptr %recv_probe.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rlb_arp_recv, ptr %recv_probe.i, align 8
  br label %cleanup

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alb_info.i, align 4
  tail call void @kfree(ptr noundef %21) #10
  %22 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %alb_info.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %rlb_enabled9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rlb_enabled9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %rlb_initialize.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then6 ], [ 0, %if.else ], [ -12, %entry.cleanup_crit_edge ], [ 0, %rlb_initialize.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_deinitialize(ptr noundef %bond) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alb_info.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %0 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alb_info.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %alb_info.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %3 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rlb_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %5 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_hashtbl.i, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_hashtbl.i, align 4
  %rx_hashtbl_used_head.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %8 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rx_hashtbl_used_head.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bond_xmit_tlb_slave_get(ptr noundef %bond, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.then.if.end28_crit_edge [
    i16 2048, label %if.then.sw.bb_crit_edge
    i16 -31011, label %if.then.sw.bb_crit_edge43
  ]

if.then.sw.bb_crit_edge43:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge43
  %call2 = tail call i32 @bond_xmit_hash(ptr noundef %bond, ptr noundef %skb) #10
  %tlb_dynamic_lb = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %11 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tlb_dynamic_lb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %call2, 255
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call4 = tail call fastcc ptr @tlb_choose_channel(ptr noundef %bond, i32 noundef %and, i32 noundef %14)
  br label %if.end28

if.else:                                          ; preds = %sw.bb
  %usable_slaves = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 4
  %15 = ptrtoint ptr %usable_slaves to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %usable_slaves, align 8
  %call6 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.else.do.end14_crit_edge

if.else.do.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true:                                    ; preds = %if.else
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true10

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b40 = load i1, ptr @bond_xmit_tlb_slave_get.__warned, align 1
  br i1 %.b40, label %land.lhs.true10.do.end14_crit_edge, label %if.then12

land.lhs.true10.do.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_xmit_tlb_slave_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1362, ptr noundef nonnull @.str.1) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %land.lhs.true10.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %if.else.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %do.end14.if.end28_crit_edge, label %cond.end

do.end14.if.end28_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

cond.end:                                         ; preds = %do.end14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %cond.end.if.end28_crit_edge, label %if.then25, !prof !79

cond.end.if.end28_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %call2, %18
  %arrayidx = getelementptr %struct.bond_up_slave, ptr %16, i32 0, i32 2, i32 %rem
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %cond.end.if.end28_crit_edge, %do.end14.if.end28_crit_edge, %if.then3, %if.then.if.end28_crit_edge, %entry.if.end28_crit_edge
  %tx_slave.1 = phi ptr [ null, %entry.if.end28_crit_edge ], [ null, %if.then.if.end28_crit_edge ], [ %call4, %if.then3 ], [ %20, %if.then25 ], [ null, %cond.end.if.end28_crit_edge ], [ null, %do.end14.if.end28_crit_edge ]
  ret ptr %tx_slave.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_xmit_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tlb_choose_channel(ptr noundef %bond, i32 noundef %hash_index, i32 noundef %skb_len) unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %mode_lock) #10
  %alb_info.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %0 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alb_info.i, align 4
  %arrayidx.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %hash_index
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.then15.i_crit_edge

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #10
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  %lower.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lower.i.i, ptr %iter.i.i, align 4
  %call.i.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %5, ptr noundef nonnull %iter.i.i) #10
  %tobool.not15.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not15.i.i, label %tlb_get_least_loaded_slave.exit.thread.i, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

tlb_get_least_loaded_slave.exit.thread.i:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  br label %__tlb_choose_channel.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %max_gap.018.i.i = phi i64 [ %max_gap.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -9223372036854775808, %if.then.i.for.body.i.i_crit_edge ]
  %least_loaded.017.i.i = phi ptr [ %least_loaded.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ null, %if.then.i.for.body.i.i_crit_edge ]
  %slave.016.i.i = phi ptr [ %call7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %slave.016.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave.016.i.i, align 8
  %state.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i.i.i.i, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %bond_slave_is_up.exit.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

bond_slave_is_up.exit.i.i.i:                      ; preds = %for.body.i.i
  %11 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i.i.i.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i, label %bond_slave_is_up.exit.i.i.i.for.inc.i.i_crit_edge

bond_slave_is_up.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %bond_slave_is_up.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %bond_slave_is_up.exit.i.i.i
  %link.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.016.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %link.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %link.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.i.i = icmp eq i8 %15, 0
  br i1 %cmp.i.i.i, label %bond_slave_can_tx.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

bond_slave_can_tx.exit.i.i:                       ; preds = %land.lhs.true.i.i.i
  %backup.i.i.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.016.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %backup.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i.i.i.i = load i8, ptr %backup.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i, label %bond_slave_can_tx.exit.i.i.for.inc.i.i_crit_edge

bond_slave_can_tx.exit.i.i.for.inc.i.i_crit_edge: ; preds = %bond_slave_can_tx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %bond_slave_can_tx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %speed.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.016.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed.i.i.i, align 8
  %shl.i.i.i = shl i32 %18, 20
  %conv.i.i.i = zext i32 %shl.i.i.i to i64
  %load.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.016.i.i, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %load.i.i.i, align 4
  %shl1.i.i.i = shl i32 %20, 3
  %conv2.i.i.i = zext i32 %shl1.i.i.i to i64
  %sub.i.i.i = sub nsw i64 %conv.i.i.i, %conv2.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %max_gap.018.i.i, i64 %sub.i.i.i)
  %cmp.i.i = icmp slt i64 %max_gap.018.i.i, %sub.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i, ptr %slave.016.i.i, ptr %least_loaded.017.i.i
  %21 = call i64 @llvm.smax.i64(i64 %max_gap.018.i.i, i64 %sub.i.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %bond_slave_can_tx.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %bond_slave_is_up.exit.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %least_loaded.2.i.i = phi ptr [ %spec.select.i.i, %if.then.i.i ], [ %least_loaded.017.i.i, %bond_slave_can_tx.exit.i.i.for.inc.i.i_crit_edge ], [ %least_loaded.017.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge ], [ %least_loaded.017.i.i, %bond_slave_is_up.exit.i.i.i.for.inc.i.i_crit_edge ], [ %least_loaded.017.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %max_gap.2.i.i = phi i64 [ %21, %if.then.i.i ], [ %max_gap.018.i.i, %bond_slave_can_tx.exit.i.i.for.inc.i.i_crit_edge ], [ %max_gap.018.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge ], [ %max_gap.018.i.i, %bond_slave_is_up.exit.i.i.i.for.inc.i.i_crit_edge ], [ %max_gap.018.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %22 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond, align 8
  %call7.i.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %23, ptr noundef nonnull %iter.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i.i, label %tlb_get_least_loaded_slave.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

tlb_get_least_loaded_slave.exit.i:                ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  %tobool1.not.i = icmp eq ptr %least_loaded.2.i.i, null
  br i1 %tobool1.not.i, label %tlb_get_least_loaded_slave.exit.i.__tlb_choose_channel.exit_crit_edge, label %if.then2.i

tlb_get_least_loaded_slave.exit.i.__tlb_choose_channel.exit_crit_edge: ; preds = %tlb_get_least_loaded_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tlb_choose_channel.exit

if.then2.i:                                       ; preds = %tlb_get_least_loaded_slave.exit.i
  %tlb_info.i = getelementptr inbounds %struct.slave, ptr %least_loaded.2.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tlb_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tlb_info.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %least_loaded.2.i.i, ptr %arrayidx.i, align 4
  %next.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %hash_index, i32 3
  %27 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %next.i, align 4
  %prev.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %hash_index, i32 4
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, -1
  br i1 %cmp.not.i, label %if.then2.i.if.end.i_crit_edge, label %if.then7.i

if.then2.i.if.end.i_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev9.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %25, i32 4
  %29 = ptrtoint ptr %prev9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %hash_index, ptr %prev9.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then2.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %tlb_info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %hash_index, ptr %tlb_info.i, align 4
  %load_history.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %hash_index, i32 2
  %31 = ptrtoint ptr %load_history.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %load_history.i, align 4
  %load.i = getelementptr inbounds %struct.slave, ptr %least_loaded.2.i.i, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %load.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %load.i, align 4
  %add.i = add i32 %34, %32
  store i32 %add.i, ptr %load.i, align 4
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i, %entry.if.then15.i_crit_edge
  %assigned_slave.0.i = phi ptr [ %3, %entry.if.then15.i_crit_edge ], [ %least_loaded.2.i.i, %if.end.i ]
  %tx_bytes.i = getelementptr %struct.tlb_client_info, ptr %1, i32 %hash_index, i32 1
  %35 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_bytes.i, align 4
  %add17.i = add i32 %36, %skb_len
  store i32 %add17.i, ptr %tx_bytes.i, align 4
  br label %__tlb_choose_channel.exit

__tlb_choose_channel.exit:                        ; preds = %if.then15.i, %tlb_get_least_loaded_slave.exit.i.__tlb_choose_channel.exit_crit_edge, %tlb_get_least_loaded_slave.exit.thread.i
  %assigned_slave.047.i = phi ptr [ %assigned_slave.0.i, %if.then15.i ], [ null, %tlb_get_least_loaded_slave.exit.i.__tlb_choose_channel.exit_crit_edge ], [ null, %tlb_get_least_loaded_slave.exit.thread.i ]
  call void @_raw_spin_unlock(ptr noundef %mode_lock) #10
  ret ptr %assigned_slave.047.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_tlb_xmit(ptr noundef %skb, ptr noundef %bond_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  %call1 = tail call ptr @bond_xmit_tlb_slave_get(ptr noundef %add.ptr.i, ptr noundef %skb)
  %call2 = tail call fastcc i32 @bond_do_alb_xmit(ptr noundef %skb, ptr noundef %add.ptr.i, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bond_do_alb_xmit(ptr noundef %skb, ptr noundef %bond, ptr noundef %tx_slave) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %tx_slave, null
  br i1 %tobool.not, label %if.then, label %entry.land.lhs.true17_crit_edge

entry.land.lhs.true17_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true17

if.then:                                          ; preds = %entry
  %curr_active_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %4 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %curr_active_slave, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.do.end10_crit_edge

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @bond_do_alb_xmit.__warned, align 1
  br i1 %.b61, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_do_alb_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1314, ptr noundef nonnull @.str.1) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %tlb_dynamic_lb = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %6 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tlb_dynamic_lb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %do.end10.if.end15_crit_edge, label %if.then13

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %unbalanced_load = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %unbalanced_load to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unbalanced_load, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %unbalanced_load, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end10.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %if.end15.if.end38_crit_edge, label %if.end15.land.lhs.true17_crit_edge

if.end15.land.lhs.true17_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true17

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true17:                                  ; preds = %if.end15.land.lhs.true17_crit_edge, %entry.land.lhs.true17_crit_edge
  %tx_slave.addr.064 = phi ptr [ %5, %if.end15.land.lhs.true17_crit_edge ], [ %tx_slave, %entry.land.lhs.true17_crit_edge ]
  %12 = ptrtoint ptr %tx_slave.addr.064 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_slave.addr.064, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true17.land.lhs.true32.critedge_crit_edge, label %bond_slave_is_up.exit.i

land.lhs.true17.land.lhs.true32.critedge_crit_edge: ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32.critedge

bond_slave_is_up.exit.i:                          ; preds = %land.lhs.true17
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i, label %bond_slave_is_up.exit.i.land.lhs.true32.critedge_crit_edge

bond_slave_is_up.exit.i.land.lhs.true32.critedge_crit_edge: ; preds = %bond_slave_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32.critedge

land.lhs.true.i:                                  ; preds = %bond_slave_is_up.exit.i
  %link.i = getelementptr inbounds %struct.slave, ptr %tx_slave.addr.064, i32 0, i32 6
  %19 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i = icmp eq i8 %20, 0
  br i1 %cmp.i, label %bond_slave_can_tx.exit, label %land.lhs.true.i.land.lhs.true32.critedge_crit_edge

land.lhs.true.i.land.lhs.true32.critedge_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32.critedge

bond_slave_can_tx.exit:                           ; preds = %land.lhs.true.i
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %tx_slave.addr.064, i32 0, i32 8
  %21 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then19, label %bond_slave_can_tx.exit.land.lhs.true32.critedge_crit_edge

bond_slave_can_tx.exit.land.lhs.true32.critedge_crit_edge: ; preds = %bond_slave_can_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true32.critedge

if.then19:                                        ; preds = %bond_slave_can_tx.exit
  %curr_active_slave24 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %22 = ptrtoint ptr %curr_active_slave24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %curr_active_slave24, align 4
  %cmp.not = icmp eq ptr %tx_slave.addr.064, %23
  br i1 %cmp.not, label %if.then19.if.end27_crit_edge, label %if.then26

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %h_source, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %h_source, i32 4
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then19.if.end27_crit_edge
  %32 = ptrtoint ptr %tx_slave.addr.064 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_slave.addr.064, align 8
  %call29 = tail call i32 @bond_dev_queue_xmit(ptr noundef %bond, ptr noundef %skb, ptr noundef %33) #10
  br label %cleanup

land.lhs.true32.critedge:                         ; preds = %bond_slave_can_tx.exit.land.lhs.true32.critedge_crit_edge, %land.lhs.true.i.land.lhs.true32.critedge_crit_edge, %bond_slave_is_up.exit.i.land.lhs.true32.critedge_crit_edge, %land.lhs.true17.land.lhs.true32.critedge_crit_edge
  %tlb_dynamic_lb34 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %34 = ptrtoint ptr %tlb_dynamic_lb34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tlb_dynamic_lb34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp eq i32 %35, 0
  br i1 %tobool35.not, label %land.lhs.true32.critedge.if.end38_crit_edge, label %if.then36

land.lhs.true32.critedge.if.end38_crit_edge:      ; preds = %land.lhs.true32.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true32.critedge
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %mode_lock) #10
  %alb_info.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %36 = ptrtoint ptr %alb_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %alb_info.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then36.__tlb_clear_slave.exit_crit_edge, label %if.then.i

if.then36.__tlb_clear_slave.exit_crit_edge:       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tlb_clear_slave.exit

if.then.i:                                        ; preds = %if.then36
  %tlb_info.i = getelementptr inbounds %struct.slave, ptr %tx_slave.addr.064, i32 0, i32 16
  %38 = ptrtoint ptr %tlb_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tlb_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.not7.i = icmp eq i32 %39, -1
  br i1 %cmp.not7.i, label %if.then.i.__tlb_clear_slave.exit_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.__tlb_clear_slave.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tlb_clear_slave.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %index.08.i = phi i32 [ %41, %while.body.i.while.body.i_crit_edge ], [ %39, %if.then.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i
  %next.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i, i32 3
  %40 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %next.i, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.i, align 4
  store i32 -1, ptr %next.i, align 4
  %prev.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i, i32 4
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq i32 %41, -1
  br i1 %cmp.not.i, label %while.body.i.__tlb_clear_slave.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__tlb_clear_slave.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tlb_clear_slave.exit

__tlb_clear_slave.exit:                           ; preds = %while.body.i.__tlb_clear_slave.exit_crit_edge, %if.then.i.__tlb_clear_slave.exit_crit_edge, %if.then36.__tlb_clear_slave.exit_crit_edge
  %tlb_info.i.i = getelementptr inbounds %struct.slave, ptr %tx_slave.addr.064, i32 0, i32 16
  %load.i.i = getelementptr inbounds %struct.slave, ptr %tx_slave.addr.064, i32 0, i32 16, i32 1
  %44 = ptrtoint ptr %load.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %load.i.i, align 4
  %45 = ptrtoint ptr %tlb_info.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tlb_info.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mode_lock) #10
  br label %if.end38

if.end38:                                         ; preds = %__tlb_clear_slave.exit, %land.lhs.true32.critedge.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  %46 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bond, align 8
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_dropped.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_dropped.i, i32 1, i32 3, i32 1) #10
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_dropped.i, ptr %tx_dropped.i, i32 1, ptr elementtype(i32) %tx_dropped.i) #10, !srcloc !80
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end27
  %retval.0 = phi i32 [ %call29, %if.end27 ], [ 1, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bond_xmit_alb_slave_get(ptr noundef %bond, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %6, label %entry.if.end72_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb14
    i16 2054, label %sw.bb35
  ]

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %11, %9
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %sw.bb.if.end72_crit_edge, label %lor.lhs.false

sw.bb.if.end72_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

lor.lhs.false:                                    ; preds = %sw.bb
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.lhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.if.end_crit_edge, !prof !79

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %17, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.if.end72_crit_edge, label %pskb_network_may_pull.exit, !prof !79

if.end.i.i.if.end72_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #10
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.if.end72_crit_edge, label %pskb_network_may_pull.exit.if.end_crit_edge

pskb_network_may_pull.exit.if.end_crit_edge:      ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_network_may_pull.exit.if.end72_crit_edge:    ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end:                                           ; preds = %pskb_network_may_pull.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i105 = zext i16 %23 to i32
  %add.ptr.i.i106 = getelementptr i8, ptr %21, i32 %conv.i.i105
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i106, i32 0, i32 9
  %24 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp = icmp eq i32 %25, -1
  br i1 %cmp, label %if.end.if.end72_crit_edge, label %lor.lhs.false6

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

lor.lhs.false6:                                   ; preds = %if.end
  %protocol7 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i106, i32 0, i32 6
  %26 = ptrtoint ptr %protocol7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protocol7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp9 = icmp eq i8 %27, 2
  br i1 %cmp9, label %lor.lhs.false6.if.end72_crit_edge, label %lor.lhs.false6.if.then41_crit_edge

lor.lhs.false6.if.then41_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

lor.lhs.false6.if.end72_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

sw.bb14:                                          ; preds = %entry
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i107 = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %30 = ptrtoint ptr %add.ptr1.i107 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr1.i107, align 2
  %and9.i108 = and i16 %31, %29
  %add.ptr3.i109 = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %32 = ptrtoint ptr %add.ptr3.i109 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr3.i109, align 2
  %and510.i110 = and i16 %and9.i108, %33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i110)
  %cmp.i111 = icmp eq i16 %and510.i110, -1
  br i1 %cmp.i111, label %sw.bb14.if.end72_crit_edge, label %if.end19

sw.bb14.if.end72_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end19:                                         ; preds = %sw.bb14
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %xor37.i.i = xor i16 %33, 1
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %36 = or i32 %35, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 858980352, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 858980352
  br i1 %cmp.i.i, label %if.end19.if.end72_crit_edge, label %if.end24

if.end19.if.end72_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end24:                                         ; preds = %if.end19
  %network_header.i.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i114 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i.i114, align 4
  %conv.i.i.i115 = zext i16 %38 to i32
  %add.ptr.i.i.i116 = getelementptr i8, ptr %3, i32 %conv.i.i.i115
  %sub.ptr.lhs.cast.i.i118 = ptrtoint ptr %add.ptr.i.i.i116 to i32
  %sub.ptr.sub.i.i120 = sub i32 %sub.ptr.lhs.cast.i.i118, %sub.ptr.lhs.cast.i
  %add.i121 = add i32 %sub.ptr.sub.i.i120, 40
  %len.i.i.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i.i122, align 4
  %data_len.i.i.i123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i.i123, align 8
  %sub.i.i.i124 = sub i32 %40, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i121, i32 %sub.i.i.i124)
  %cmp.not.i.i125 = icmp ugt i32 %add.i121, %sub.i.i.i124
  br i1 %cmp.not.i.i125, label %if.end.i.i127, label %if.end24.if.end28_crit_edge, !prof !79

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end.i.i127:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add.i121)
  %cmp3.i.i126 = icmp ult i32 %40, %add.i121
  br i1 %cmp3.i.i126, label %if.end.i.i127.if.end72_crit_edge, label %pskb_network_may_pull.exit134, !prof !79

if.end.i.i127.if.end72_crit_edge:                 ; preds = %if.end.i.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

pskb_network_may_pull.exit134:                    ; preds = %if.end.i.i127
  %sub.i.i128 = sub i32 %add.i121, %sub.i.i.i124
  %call13.i.i129 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i128) #10
  %cmp14.i.i130.not = icmp eq ptr %call13.i.i129, null
  br i1 %cmp14.i.i130.not, label %pskb_network_may_pull.exit134.if.end72_crit_edge, label %pskb_network_may_pull.exit134.if.end28_crit_edge

pskb_network_may_pull.exit134.if.end28_crit_edge: ; preds = %pskb_network_may_pull.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

pskb_network_may_pull.exit134.if.end72_crit_edge: ; preds = %pskb_network_may_pull.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end28:                                         ; preds = %pskb_network_may_pull.exit134.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %43 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i, align 8
  %45 = ptrtoint ptr %network_header.i.i.i114 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %network_header.i.i.i114, align 4
  %conv.i.i137 = zext i16 %46 to i32
  %add.ptr.i.i138 = getelementptr i8, ptr %44, i32 %conv.i.i137
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i138, i32 0, i32 5
  %47 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %50, %48
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %52
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i139 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i139, label %if.end28.if.end72_crit_edge, label %if.end32

if.end28.if.end72_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %daddr33 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i138, i32 0, i32 6
  br label %if.then41

sw.bb35:                                          ; preds = %entry
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %55 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rlb_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool36.not = icmp eq i32 %56, 0
  br i1 %tobool36.not, label %sw.bb35.if.end72_crit_edge, label %if.then37

sw.bb35.if.end72_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then37:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call fastcc ptr @rlb_arp_xmit(ptr noundef %skb, ptr noundef %bond)
  br label %if.end72

if.then41:                                        ; preds = %if.end32, %lor.lhs.false6.if.then41_crit_edge
  %hash_size.2 = phi i32 [ 16, %if.end32 ], [ 4, %lor.lhs.false6.if.then41_crit_edge ]
  %hash_start.2 = phi ptr [ %daddr33, %if.end32 ], [ %daddr, %lor.lhs.false6.if.then41_crit_edge ]
  %tlb_dynamic_lb = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %57 = ptrtoint ptr %tlb_dynamic_lb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tlb_dynamic_lb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool42.not = icmp eq i32 %58, 0
  br i1 %tobool42.not, label %if.else, label %if.then41.for.body.i_crit_edge

if.then41.for.body.i_crit_edge:                   ; preds = %if.then41
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then41.for.body.i_crit_edge
  %hash.09.i = phi i8 [ %xor6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then41.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %hash_start.2, i32 %i.08.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  %xor6.i = xor i8 %60, %hash.09.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %hash_size.2
  br i1 %exitcond.not.i, label %_simple_hash.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

_simple_hash.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i8 %xor6.i to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %call46 = tail call fastcc ptr @tlb_choose_channel(ptr noundef %bond, i32 noundef %conv45, i32 noundef %62)
  br label %if.end72

if.else:                                          ; preds = %if.then41
  %usable_slaves = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 4
  %63 = ptrtoint ptr %usable_slaves to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %usable_slaves, align 8
  %call48 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true, label %if.else.do.end57_crit_edge

if.else.do.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

land.lhs.true:                                    ; preds = %if.else
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true.do.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true
  %.b103 = load i1, ptr @bond_xmit_alb_slave_get.__warned, align 1
  br i1 %.b103, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_xmit_alb_slave_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1476, ptr noundef nonnull @.str.1) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true.do.end57_crit_edge, %if.else.do.end57_crit_edge
  %tobool59.not = icmp eq ptr %64, null
  br i1 %tobool59.not, label %do.end57.if.end72_crit_edge, label %cond.end

do.end57.if.end72_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

cond.end:                                         ; preds = %do.end57
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool65.not = icmp eq i32 %66, 0
  br i1 %tobool65.not, label %cond.end.if.end72_crit_edge, label %if.then68, !prof !79

cond.end.if.end72_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then68:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = tail call i32 @bond_xmit_hash(ptr noundef %bond, ptr noundef %skb) #10
  %rem = urem i32 %call69, %66
  %arrayidx = getelementptr %struct.bond_up_slave, ptr %64, i32 0, i32 2, i32 %rem
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %cond.end.if.end72_crit_edge, %do.end57.if.end72_crit_edge, %_simple_hash.exit, %if.then37, %sw.bb35.if.end72_crit_edge, %if.end28.if.end72_crit_edge, %pskb_network_may_pull.exit134.if.end72_crit_edge, %if.end.i.i127.if.end72_crit_edge, %if.end19.if.end72_crit_edge, %sw.bb14.if.end72_crit_edge, %lor.lhs.false6.if.end72_crit_edge, %if.end.if.end72_crit_edge, %pskb_network_may_pull.exit.if.end72_crit_edge, %if.end.i.i.if.end72_crit_edge, %sw.bb.if.end72_crit_edge, %entry.if.end72_crit_edge
  %tx_slave.2 = phi ptr [ %call46, %_simple_hash.exit ], [ %68, %if.then68 ], [ null, %cond.end.if.end72_crit_edge ], [ null, %entry.if.end72_crit_edge ], [ null, %sw.bb14.if.end72_crit_edge ], [ null, %if.end19.if.end72_crit_edge ], [ null, %pskb_network_may_pull.exit134.if.end72_crit_edge ], [ null, %if.end28.if.end72_crit_edge ], [ null, %pskb_network_may_pull.exit.if.end72_crit_edge ], [ null, %sw.bb.if.end72_crit_edge ], [ null, %lor.lhs.false6.if.end72_crit_edge ], [ null, %if.end.if.end72_crit_edge ], [ null, %sw.bb35.if.end72_crit_edge ], [ %call38, %if.then37 ], [ null, %if.end.i.i.if.end72_crit_edge ], [ null, %if.end.i.i127.if.end72_crit_edge ], [ null, %do.end57.if.end72_crit_edge ]
  ret ptr %tx_slave.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rlb_arp_xmit(ptr noundef %skb, ptr noundef %bond) unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 28
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.if.end_crit_edge, !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %7, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_network_may_pull.exit, !prof !79

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #10
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.cleanup_crit_edge, label %pskb_network_may_pull.exit.if.end_crit_edge

pskb_network_may_pull.exit.if.end_crit_edge:      ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_network_may_pull.exit.cleanup_crit_edge:     ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pskb_network_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %mac_src = getelementptr inbounds %struct.arp_pkt, ptr %add.ptr.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #10
  %14 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lower.i, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %15, ptr noundef nonnull %iter.i) #10
  %tobool.not48.i = icmp eq ptr %call.i, null
  br i1 %tobool.not48.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr.i.i.i90 = getelementptr i8, ptr %mac_src, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.049.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call5.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %tmp.049.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmp.049.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr.i, align 64
  %21 = ptrtoint ptr %mac_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mac_src, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %xor.i.i.i = xor i32 %24, %22
  %25 = ptrtoint ptr %add.ptr.i.i.i90 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i.i90, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 4
  %27 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %28, %26
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %bond_slave_has_mac_rx.exit.thread, label %for.inc.i

bond_slave_has_mac_rx.exit.thread:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %if.end4

for.inc.i:                                        ; preds = %for.body.i
  %29 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bond, align 8
  %call5.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %30, ptr noundef nonnull %iter.i) #10
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %31 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bond, align 8
  %count.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 65, i32 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %bond_slave_has_mac_rx.exit.thread115, label %if.end8.i

bond_slave_has_mac_rx.exit.thread115:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %cleanup

if.end8.i:                                        ; preds = %for.end.i
  %uc.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 65
  %add.ptr.i.i41.i = getelementptr i8, ptr %mac_src, i32 4
  br label %for.cond12.i

for.cond12.i:                                     ; preds = %for.body18.i.for.cond12.i_crit_edge, %if.end8.i
  %ha.0.in.i = phi ptr [ %uc.i, %if.end8.i ], [ %ha.0.i, %for.body18.i.for.cond12.i_crit_edge ]
  %35 = ptrtoint ptr %ha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %ha.0.i = load ptr, ptr %ha.0.in.i, align 4
  %cmp17.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp17.not.i, label %bond_slave_has_mac_rx.exit, label %for.body18.i

for.body18.i:                                     ; preds = %for.cond12.i
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %mac_src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac_src, align 4
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 4
  %xor.i.i40.i = xor i32 %39, %37
  %40 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i41.i, align 2
  %add.ptr1.i.i42.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %add.ptr1.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr1.i.i42.i, align 2
  %xor37.i.i43.i = xor i16 %43, %41
  %xor3.i.i44.i = zext i16 %xor37.i.i43.i to i32
  %or.i.i45.i = or i32 %xor.i.i40.i, %xor3.i.i44.i
  %cmp.i.i46.i = icmp eq i32 %or.i.i45.i, 0
  br i1 %cmp.i.i46.i, label %bond_slave_has_mac_rx.exit.thread117, label %for.body18.i.for.cond12.i_crit_edge

for.body18.i.for.cond12.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.i

bond_slave_has_mac_rx.exit.thread117:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %if.end4

bond_slave_has_mac_rx.exit:                       ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %cleanup

if.end4:                                          ; preds = %bond_slave_has_mac_rx.exit.thread117, %bond_slave_has_mac_rx.exit.thread
  %op_code = getelementptr inbounds %struct.arp_pkt, ptr %add.ptr.i, i32 0, i32 4
  %44 = ptrtoint ptr %op_code to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %op_code, align 1
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %45, label %if.end4.cleanup_crit_edge [
    i16 2, label %if.then6
    i16 1, label %if.then32
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %call7 = call fastcc ptr @rlb_choose_channel(ptr noundef %skb, ptr noundef %bond, ptr noundef %add.ptr.i)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.do.body15_crit_edge, label %if.then9

if.then6.do.body15_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

if.then9:                                         ; preds = %if.then6
  %47 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 56
  %51 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %52)
  %cmp.i92 = icmp eq i8 %52, 6
  br i1 %cmp.i92, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %55 = ptrtoint ptr %mac_src to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mac_src, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %mac_src, i32 4
  %58 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i.i, align 2
  br label %do.body15

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i8 %52 to i32
  %59 = call ptr @memcpy(ptr %mac_src, ptr %50, i32 %conv13)
  br label %do.body15

do.body15:                                        ; preds = %if.end.i, %if.then.i, %if.then6.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rlb_arp_xmit.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rlb_arp_xmit, %if.then20)) #10
          to label %cleanup [label %if.then20], !srcloc !81

if.then20:                                        ; preds = %do.body15
  %60 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bond, align 8
  br i1 %tobool8.not, label %if.then20.cond.end_crit_edge, label %cond.true

if.then20.cond.end_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then20.cond.end_crit_edge
  %cond = phi ptr [ %63, %cond.true ], [ @.str.10, %if.then20.cond.end_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rlb_arp_xmit.__UNIQUE_ID_ddebug494, ptr noundef %61, ptr noundef nonnull @.str.9, ptr noundef %cond) #10
  br label %cleanup

if.then32:                                        ; preds = %if.end4
  %call33 = call fastcc ptr @rlb_choose_channel(ptr noundef %skb, ptr noundef %bond, ptr noundef %add.ptr.i)
  %rlb_update_delay_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 11
  %64 = ptrtoint ptr %rlb_update_delay_counter to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 20, ptr %rlb_update_delay_counter, align 4
  %ip_src = getelementptr inbounds %struct.arp_pkt, ptr %add.ptr.i, i32 0, i32 6
  %65 = ptrtoint ptr %ip_src to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ip_src, align 1
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %mode_lock.i) #10
  %rx_hashtbl_used_head.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %67 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %hash_index.026.i = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.026.i)
  %cmp.not27.i = icmp eq i32 %hash_index.026.i, -1
  br i1 %cmp.not27.i, label %if.then32.rlb_req_update_subnet_clients.exit_crit_edge, label %for.body.lr.ph.i93

if.then32.rlb_req_update_subnet_clients.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_subnet_clients.exit

for.body.lr.ph.i93:                               ; preds = %if.then32
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %rx_ntt.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.inc.i107.for.body.i95_crit_edge, %for.body.lr.ph.i93
  %hash_index.028.i = phi i32 [ %hash_index.026.i, %for.body.lr.ph.i93 ], [ %hash_index.0.i, %for.inc.i107.for.body.i95_crit_edge ]
  %68 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_hashtbl.i, align 4
  %slave.i = getelementptr %struct.rlb_client_info, ptr %69, i32 %hash_index.028.i, i32 11
  %70 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %slave.i, align 4
  %tobool.not.i94 = icmp eq ptr %71, null
  br i1 %tobool.not.i94, label %if.then.i96, label %if.end.i97

if.then.i96:                                      ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bond, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.13) #15
  br label %for.inc.i107

if.end.i97:                                       ; preds = %for.body.i95
  %arrayidx.i = getelementptr %struct.rlb_client_info, ptr %69, i32 %hash_index.028.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %66)
  %cmp1.i = icmp eq i32 %75, %66
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i97.for.inc.i107_crit_edge

if.end.i97.for.inc.i107_crit_edge:                ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i107

land.lhs.true.i:                                  ; preds = %if.end.i97
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %71, align 8
  %dev_addr.i98 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 86
  %78 = ptrtoint ptr %dev_addr.i98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr.i98, align 64
  %80 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bond, align 8
  %dev_addr5.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 86
  %82 = ptrtoint ptr %dev_addr5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_addr5.i, align 64
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %79, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %83, align 4
  %xor.i.i.i99 = xor i32 %87, %85
  %add.ptr.i.i.i100 = getelementptr i8, ptr %79, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i.i100 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i.i.i100, align 2
  %add.ptr1.i.i.i101 = getelementptr i8, ptr %83, i32 4
  %90 = ptrtoint ptr %add.ptr1.i.i.i101 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr1.i.i.i101, align 2
  %xor37.i.i.i102 = xor i16 %91, %89
  %xor3.i.i.i103 = zext i16 %xor37.i.i.i102 to i32
  %or.i.i.i104 = or i32 %xor.i.i.i99, %xor3.i.i.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i104)
  %cmp.i.i.i105 = icmp eq i32 %or.i.i.i104, 0
  br i1 %cmp.i.i.i105, label %land.lhs.true.i.for.inc.i107_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i107_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i107

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %mac_dst.i = getelementptr %struct.rlb_client_info, ptr %69, i32 %hash_index.028.i, i32 3
  %92 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mac_dst.i, align 4
  %94 = and i32 %93, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not.i.i = icmp eq i32 %94, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true6.i.for.inc.i107_crit_edge

land.lhs.true6.i.for.inc.i107_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i107

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true6.i
  %add.ptr.i.i23.i = getelementptr i8, ptr %mac_dst.i, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i.i23.i, align 2
  %conv.i.i.i106 = zext i16 %96 to i32
  %or.i.i24.i = or i32 %93, %conv.i.i.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i24.i)
  %cmp.i.i25.not.i = icmp eq i32 %or.i.i24.i, 0
  br i1 %cmp.i.i25.not.i, label %is_valid_ether_addr.exit.i.for.inc.i107_crit_edge, label %if.then8.i

is_valid_ether_addr.exit.i.for.inc.i107_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i107

if.then8.i:                                       ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ntt.i = getelementptr %struct.rlb_client_info, ptr %69, i32 %hash_index.028.i, i32 10
  %97 = ptrtoint ptr %ntt.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %ntt.i, align 1
  %98 = ptrtoint ptr %rx_ntt.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %rx_ntt.i, align 4
  br label %for.inc.i107

for.inc.i107:                                     ; preds = %if.then8.i, %is_valid_ether_addr.exit.i.for.inc.i107_crit_edge, %land.lhs.true6.i.for.inc.i107_crit_edge, %land.lhs.true.i.for.inc.i107_crit_edge, %if.end.i97.for.inc.i107_crit_edge, %if.then.i96
  %used_next.i = getelementptr %struct.rlb_client_info, ptr %69, i32 %hash_index.028.i, i32 4
  %99 = ptrtoint ptr %used_next.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %hash_index.0.i = load i32, ptr %used_next.i, align 4
  %cmp.not.i = icmp eq i32 %hash_index.0.i, -1
  br i1 %cmp.not.i, label %for.inc.i107.rlb_req_update_subnet_clients.exit_crit_edge, label %for.inc.i107.for.body.i95_crit_edge

for.inc.i107.for.body.i95_crit_edge:              ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i95

for.inc.i107.rlb_req_update_subnet_clients.exit_crit_edge: ; preds = %for.inc.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_subnet_clients.exit

rlb_req_update_subnet_clients.exit:               ; preds = %for.inc.i107.rlb_req_update_subnet_clients.exit_crit_edge, %if.then32.rlb_req_update_subnet_clients.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mode_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rlb_arp_xmit.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rlb_arp_xmit, %if.then47)) #10
          to label %cleanup [label %if.then47], !srcloc !81

if.then47:                                        ; preds = %rlb_req_update_subnet_clients.exit
  %100 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bond, align 8
  %tobool49.not = icmp eq ptr %call33, null
  br i1 %tobool49.not, label %if.then47.cond.end55_crit_edge, label %cond.true50

if.then47.cond.end55_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end55

cond.true50:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call33, align 8
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true50, %if.then47.cond.end55_crit_edge
  %cond56 = phi ptr [ %103, %cond.true50 ], [ @.str.10, %if.then47.cond.end55_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rlb_arp_xmit.__UNIQUE_ID_ddebug495, ptr noundef %101, ptr noundef nonnull @.str.11, ptr noundef %cond56) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end55, %rlb_req_update_subnet_clients.exit, %cond.end, %do.body15, %if.end4.cleanup_crit_edge, %bond_slave_has_mac_rx.exit, %bond_slave_has_mac_rx.exit.thread115, %pskb_network_may_pull.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pskb_network_may_pull.exit.cleanup_crit_edge ], [ null, %bond_slave_has_mac_rx.exit ], [ %call7, %cond.end ], [ %call33, %cond.end55 ], [ null, %if.end4.cleanup_crit_edge ], [ null, %bond_slave_has_mac_rx.exit.thread115 ], [ %call7, %do.body15 ], [ %call33, %rlb_req_update_subnet_clients.exit ], [ null, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_alb_xmit(ptr noundef %skb, ptr noundef %bond_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  %call1 = tail call ptr @bond_xmit_alb_slave_get(ptr noundef %add.ptr.i, ptr noundef %skb)
  %call2 = tail call fastcc i32 @bond_do_alb_xmit(ptr noundef %skb, ptr noundef %add.ptr.i, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_monitor(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -700
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !82
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %lower, align 4
  %cmp.i.not = icmp eq ptr %4, %lower
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_rebalance_counter = getelementptr i8, ptr %work, i32 -444
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_rebalance_counter, i32 noundef 4) #10
  %5 = ptrtoint ptr %tx_rebalance_counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %tx_rebalance_counter, align 4
  %lp_counter = getelementptr i8, ptr %work, i32 -440
  %6 = ptrtoint ptr %lp_counter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lp_counter, align 4
  br label %re_arm

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %tx_rebalance_counter1 = getelementptr i8, ptr %work, i32 -444
  %call.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_rebalance_counter1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_rebalance_counter1, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_rebalance_counter1, ptr %tx_rebalance_counter1, i32 1, ptr elementtype(i32) %tx_rebalance_counter1) #10, !srcloc !80
  %lp_counter2 = getelementptr i8, ptr %work, i32 -440
  %12 = ptrtoint ptr %lp_counter2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lp_counter2, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %lp_counter2, align 4
  %lp_interval = getelementptr i8, ptr %work, i32 -236
  %14 = ptrtoint ptr %lp_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lp_interval, align 8
  %mul = mul i32 %15, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %mul)
  %cmp.not = icmp slt i32 %inc, %mul
  br i1 %cmp.not, label %rcu_read_lock.exit.if.end20_crit_edge, label %if.then4

rcu_read_lock.exit.if.end20_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then4:                                         ; preds = %rcu_read_lock.exit
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %lower7 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lower7, ptr %iter, align 4
  %call9 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %17, ptr noundef nonnull %iter) #10
  %tobool10.not210 = icmp eq ptr %call9, null
  br i1 %tobool10.not210, label %if.then4.for.end_crit_edge, label %for.body.lr.ph

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then4
  %curr_active_slave = getelementptr i8, ptr %work, i32 -696
  %rlb_enabled = getelementptr i8, ptr %work, i32 -436
  br label %for.body

for.body:                                         ; preds = %lor.end.for.body_crit_edge, %for.body.lr.ph
  %slave.0211 = phi ptr [ %call9, %for.body.lr.ph ], [ %call18, %lor.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %curr_active_slave, align 4
  %cmp13.not = icmp eq ptr %slave.0211, %20
  br i1 %cmp13.not, label %lor.rhs, label %for.body.lor.end_crit_edge

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rlb_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14 = icmp ne i32 %22, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %23 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %tobool14, %lor.rhs ]
  %24 = ptrtoint ptr %slave.0211 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave.0211, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  call fastcc void @alb_send_learning_packets(ptr noundef nonnull %slave.0211, ptr noundef %27, i1 noundef zeroext %23)
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %call18 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %29, ptr noundef nonnull %iter) #10
  %tobool10.not = icmp eq ptr %call18, null
  br i1 %tobool10.not, label %lor.end.for.end_crit_edge, label %lor.end.for.body_crit_edge

lor.end.for.body_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

lor.end.for.end_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %lor.end.for.end_crit_edge, %if.then4.for.end_crit_edge
  %30 = ptrtoint ptr %lp_counter2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %lp_counter2, align 4
  br label %if.end20

if.end20:                                         ; preds = %for.end, %rcu_read_lock.exit.if.end20_crit_edge
  %call.i.i148 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_rebalance_counter1, i32 noundef 4) #10
  %31 = ptrtoint ptr %tx_rebalance_counter1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %tx_rebalance_counter1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %32)
  %cmp23 = icmp sgt i32 %32, 99
  br i1 %cmp23, label %if.then24, label %if.end20.if.end48_crit_edge

if.end20.if.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then24:                                        ; preds = %if.end20
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %lower27 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 13, i32 1
  %35 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lower27, ptr %iter, align 4
  %call29 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %34, ptr noundef nonnull %iter) #10
  %tobool31.not212 = icmp eq ptr %call29, null
  br i1 %tobool31.not212, label %if.then24.for.end46_crit_edge, label %for.body32.lr.ph

if.then24.for.end46_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.body32.lr.ph:                                 ; preds = %if.then24
  %mode_lock.i = getelementptr i8, ptr %work, i32 -664
  %alb_info.i.i = getelementptr i8, ptr %work, i32 -452
  %curr_active_slave37 = getelementptr i8, ptr %work, i32 -696
  %unbalanced_load = getelementptr i8, ptr %work, i32 -448
  br label %for.body32

for.body32:                                       ; preds = %for.inc43.for.body32_crit_edge, %for.body32.lr.ph
  %slave.1213 = phi ptr [ %call29, %for.body32.lr.ph ], [ %call45, %for.inc43.for.body32_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %36 = ptrtoint ptr %alb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %alb_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.body32.tlb_clear_slave.exit_crit_edge, label %if.then.i.i

for.body32.tlb_clear_slave.exit_crit_edge:        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

if.then.i.i:                                      ; preds = %for.body32
  %tlb_info.i.i = getelementptr inbounds %struct.slave, ptr %slave.1213, i32 0, i32 16
  %38 = ptrtoint ptr %tlb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tlb_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.not7.i.i = icmp eq i32 %39, -1
  br i1 %cmp.not7.i.i, label %if.then.i.i.tlb_clear_slave.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.body.i.i

if.then.i.i.tlb_clear_slave.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i.while.body.i.i_crit_edge
  %index.08.i.i = phi i32 [ %41, %while.body.i.i.while.body.i.i_crit_edge ], [ %39, %if.then.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i.i
  %next.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i.i, i32 3
  %40 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %next.i.i, align 4
  %tx_bytes.i.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i.i, i32 1
  %42 = ptrtoint ptr %tx_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes.i.i.i, align 4
  %div.i.i.i = udiv i32 %43, 10
  %add.i.i.i161 = add nuw nsw i32 %div.i.i.i, 1
  %load_history.i.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i.i, i32 2
  %44 = ptrtoint ptr %load_history.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i.i.i161, ptr %load_history.i.i.i, align 4
  store i32 0, ptr %tx_bytes.i.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.i.i, align 4
  store i32 -1, ptr %next.i.i, align 4
  %prev.i.i.i = getelementptr %struct.tlb_client_info, ptr %37, i32 %index.08.i.i, i32 4
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %41, -1
  br i1 %cmp.not.i.i, label %while.body.i.i.tlb_clear_slave.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.tlb_clear_slave.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

tlb_clear_slave.exit:                             ; preds = %while.body.i.i.tlb_clear_slave.exit_crit_edge, %if.then.i.i.tlb_clear_slave.exit_crit_edge, %for.body32.tlb_clear_slave.exit_crit_edge
  %tlb_info.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.1213, i32 0, i32 16
  %load.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.1213, i32 0, i32 16, i32 1
  %47 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %load.i.i.i, align 4
  %48 = ptrtoint ptr %tlb_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %tlb_info.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %49 = ptrtoint ptr %curr_active_slave37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %curr_active_slave37, align 4
  %cmp39 = icmp eq ptr %slave.1213, %50
  br i1 %cmp39, label %if.then40, label %tlb_clear_slave.exit.for.inc43_crit_edge

tlb_clear_slave.exit.for.inc43_crit_edge:         ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

if.then40:                                        ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %unbalanced_load to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %unbalanced_load, align 4
  %div = udiv i32 %52, 10
  %53 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div, ptr %load.i.i.i, align 4
  store i32 0, ptr %unbalanced_load, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %if.then40, %tlb_clear_slave.exit.for.inc43_crit_edge
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %call45 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %55, ptr noundef nonnull %iter) #10
  %tobool31.not = icmp eq ptr %call45, null
  br i1 %tobool31.not, label %for.inc43.for.end46_crit_edge, label %for.inc43.for.body32_crit_edge

for.inc43.for.body32_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.inc43.for.end46_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.end46:                                        ; preds = %for.inc43.for.end46_crit_edge, %if.then24.for.end46_crit_edge
  %call.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_rebalance_counter1, i32 noundef 4) #10
  %56 = ptrtoint ptr %tx_rebalance_counter1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %tx_rebalance_counter1, align 4
  br label %if.end48

if.end48:                                         ; preds = %for.end46, %if.end20.if.end48_crit_edge
  %rlb_enabled49 = getelementptr i8, ptr %work, i32 -436
  %57 = ptrtoint ptr %rlb_enabled49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rlb_enabled49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool50.not = icmp eq i32 %58, 0
  br i1 %tobool50.not, label %if.end48.if.end97_crit_edge, label %if.then51

if.end48.if.end97_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then51:                                        ; preds = %if.end48
  %primary_is_promisc = getelementptr i8, ptr %work, i32 -416
  %59 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %primary_is_promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool52.not = icmp eq i8 %60, 0
  br i1 %tobool52.not, label %if.then51.if.end78_crit_edge, label %land.lhs.true

if.then51.if.end78_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true:                                    ; preds = %if.then51
  %rlb_promisc_timeout_counter = getelementptr i8, ptr %work, i32 -412
  %61 = ptrtoint ptr %rlb_promisc_timeout_counter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rlb_promisc_timeout_counter, align 4
  %inc53 = add i32 %62, 1
  store i32 %inc53, ptr %rlb_promisc_timeout_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc53)
  %cmp54 = icmp ugt i32 %inc53, 99
  br i1 %cmp54, label %if.then56, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then56:                                        ; preds = %land.lhs.true
  %call.i162 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i162, label %if.then56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i165

if.then56.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i165:                               ; preds = %if.then56
  %call1.i163 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, %if.then56.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %63 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i169 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %sub.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i170, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call57 = call i32 @rtnl_trylock() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %rcu_read_unlock.exit.re_arm_crit_edge, label %if.end60

rcu_read_unlock.exit.re_arm_crit_edge:            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %re_arm

if.end60:                                         ; preds = %rcu_read_unlock.exit
  %67 = ptrtoint ptr %rlb_promisc_timeout_counter to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rlb_promisc_timeout_counter, align 4
  %call63 = call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call63, label %if.end60.do.end72_crit_edge, label %land.lhs.true64

if.end60.do.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

land.lhs.true64:                                  ; preds = %if.end60
  %call65 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true64.do.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %.b146 = load i1, ptr @bond_alb_monitor.__warned, align 1
  br i1 %.b146, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_alb_monitor.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1563, ptr noundef nonnull @.str.2) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true64.do.end72_crit_edge, %if.end60.do.end72_crit_edge
  %curr_active_slave74 = getelementptr i8, ptr %work, i32 -696
  %68 = ptrtoint ptr %curr_active_slave74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %curr_active_slave74, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call76 = call i32 @dev_set_promiscuity(ptr noundef %71, i32 noundef -1) #10
  %72 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %primary_is_promisc, align 4
  call void @rtnl_unlock() #10
  %73 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i150 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i150 to ptr
  %preempt_count.i.i.i.i151 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i151, align 4
  %add.i.i.i152 = add i32 %76, 1
  store volatile i32 %add.i.i.i152, ptr %preempt_count.i.i.i.i151, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i153 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i153, label %do.end72.if.end78_crit_edge, label %land.lhs.true.i156

do.end72.if.end78_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true.i156:                               ; preds = %do.end72
  %call1.i154 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool.not.i155, label %land.lhs.true.i156.if.end78_crit_edge, label %land.lhs.true2.i158

land.lhs.true.i156.if.end78_crit_edge:            ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true2.i158:                              ; preds = %land.lhs.true.i156
  %.b4.i157 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i157, label %land.lhs.true2.i158.if.end78_crit_edge, label %if.then.i159

land.lhs.true2.i158.if.end78_crit_edge:           ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then.i159:                                     ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then.i159, %land.lhs.true2.i158.if.end78_crit_edge, %land.lhs.true.i156.if.end78_crit_edge, %do.end72.if.end78_crit_edge, %land.lhs.true.if.end78_crit_edge, %if.then51.if.end78_crit_edge
  %rlb_rebalance = getelementptr i8, ptr %work, i32 -400
  %77 = ptrtoint ptr %rlb_rebalance to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rlb_rebalance, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool79.not = icmp eq i8 %78, 0
  br i1 %tobool79.not, label %if.end78.if.end82_crit_edge, label %if.then80

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then80:                                        ; preds = %if.end78
  %79 = ptrtoint ptr %rlb_rebalance to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %rlb_rebalance, align 4
  %mode_lock.i171 = getelementptr i8, ptr %work, i32 -664
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i171) #10
  %rx_hashtbl_used_head.i = getelementptr i8, ptr %work, i32 -428
  %80 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %hash_index.023.i = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.023.i)
  %cmp.not24.i = icmp eq i32 %hash_index.023.i, -1
  br i1 %cmp.not24.i, label %if.then80.rlb_rebalance.exit_crit_edge, label %for.body.lr.ph.i

if.then80.rlb_rebalance.exit_crit_edge:           ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_rebalance.exit

for.body.lr.ph.i:                                 ; preds = %if.then80
  %rx_hashtbl.i = getelementptr i8, ptr %work, i32 -432
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %hash_index.026.i.ph = phi i32 [ %hash_index.0.i202, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %hash_index.023.i, %for.body.lr.ph.i ]
  %tobool7.not.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %hash_index.026.i = phi i32 [ %hash_index.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hash_index.026.i.ph, %for.body.i.outer ]
  %81 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_hashtbl.i, align 4
  %call.i172 = call fastcc ptr @__rlb_next_rx_slave(ptr noundef %add.ptr) #10
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i174

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i174:                               ; preds = %for.body.i
  %slave.i = getelementptr %struct.rlb_client_info, ptr %82, i32 %hash_index.026.i, i32 11
  %83 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %slave.i, align 4
  %cmp1.not.i = icmp eq ptr %84, %call.i172
  br i1 %cmp1.not.i, label %land.lhs.true.i174.for.inc.i_crit_edge, label %if.then.i175

land.lhs.true.i174.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i175:                                     ; preds = %land.lhs.true.i174
  %85 = ptrtoint ptr %slave.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i172, ptr %slave.i, align 4
  %mac_dst.i = getelementptr %struct.rlb_client_info, ptr %82, i32 %hash_index.026.i, i32 3
  %86 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mac_dst.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac_dst.i, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %89 to i32
  %or.i.i = or i32 %87, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i175.for.inc.i_crit_edge, label %for.inc.i.thread

if.then.i175.for.inc.i_crit_edge:                 ; preds = %if.then.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i175.for.inc.i_crit_edge, %land.lhs.true.i174.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %used_next.i = getelementptr %struct.rlb_client_info, ptr %82, i32 %hash_index.026.i, i32 4
  %90 = ptrtoint ptr %used_next.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %hash_index.0.i = load i32, ptr %used_next.i, align 4
  %cmp.not.i = icmp eq i32 %hash_index.0.i, -1
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %if.then.i175
  %ntt5.i = getelementptr %struct.rlb_client_info, ptr %82, i32 %hash_index.026.i, i32 10
  %91 = ptrtoint ptr %ntt5.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %ntt5.i, align 1
  %used_next.i201 = getelementptr %struct.rlb_client_info, ptr %82, i32 %hash_index.026.i, i32 4
  %92 = ptrtoint ptr %used_next.i201 to i32
  call void @__asan_load4_noabort(i32 %92)
  %hash_index.0.i202 = load i32, ptr %used_next.i201, align 4
  %cmp.not.i203 = icmp eq i32 %hash_index.0.i202, -1
  br i1 %cmp.not.i203, label %for.inc.i.thread.if.then8.i_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.outer

for.inc.i.thread.if.then8.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool7.not.i, label %for.end.i.rlb_rebalance.exit_crit_edge, label %for.end.i.if.then8.i_crit_edge

for.end.i.if.then8.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

for.end.i.rlb_rebalance.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_rebalance.exit

if.then8.i:                                       ; preds = %for.end.i.if.then8.i_crit_edge, %for.inc.i.thread.if.then8.i_crit_edge
  %rx_ntt.i = getelementptr i8, ptr %work, i32 -424
  %93 = ptrtoint ptr %rx_ntt.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %rx_ntt.i, align 4
  br label %rlb_rebalance.exit

rlb_rebalance.exit:                               ; preds = %if.then8.i, %for.end.i.rlb_rebalance.exit_crit_edge, %if.then80.rlb_rebalance.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i171) #10
  br label %if.end82

if.end82:                                         ; preds = %rlb_rebalance.exit, %if.end78.if.end82_crit_edge
  %rx_ntt = getelementptr i8, ptr %work, i32 -424
  %94 = ptrtoint ptr %rx_ntt to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_ntt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool83.not = icmp eq i8 %95, 0
  br i1 %tobool83.not, label %if.end82.if.end97_crit_edge, label %if.then84

if.end82.if.end97_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then84:                                        ; preds = %if.end82
  %rlb_update_delay_counter = getelementptr i8, ptr %work, i32 -408
  %96 = ptrtoint ptr %rlb_update_delay_counter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rlb_update_delay_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool85.not = icmp eq i32 %97, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %97, -1
  %98 = ptrtoint ptr %rlb_update_delay_counter to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %dec, ptr %rlb_update_delay_counter, align 4
  br label %if.end97

if.else:                                          ; preds = %if.then84
  %mode_lock.i176 = getelementptr i8, ptr %work, i32 -664
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i176) #10
  %rx_hashtbl_used_head.i177 = getelementptr i8, ptr %work, i32 -428
  %99 = ptrtoint ptr %rx_hashtbl_used_head.i177 to i32
  call void @__asan_load4_noabort(i32 %99)
  %hash_index.015.i = load i32, ptr %rx_hashtbl_used_head.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.015.i)
  %cmp.not16.i = icmp eq i32 %hash_index.015.i, -1
  br i1 %cmp.not16.i, label %if.else.rlb_update_rx_clients.exit_crit_edge, label %for.body.lr.ph.i179

if.else.rlb_update_rx_clients.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_rx_clients.exit

for.body.lr.ph.i179:                              ; preds = %if.else
  %rx_hashtbl.i178 = getelementptr i8, ptr %work, i32 -432
  %rlb_update_retry_counter.i = getelementptr i8, ptr %work, i32 -404
  br label %for.body.i181

for.body.i181:                                    ; preds = %for.inc.i186.for.body.i181_crit_edge, %for.body.lr.ph.i179
  %hash_index.017.i = phi i32 [ %hash_index.015.i, %for.body.lr.ph.i179 ], [ %hash_index.0.i184, %for.inc.i186.for.body.i181_crit_edge ]
  %100 = ptrtoint ptr %rx_hashtbl.i178 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_hashtbl.i178, align 4
  %ntt.i = getelementptr %struct.rlb_client_info, ptr %101, i32 %hash_index.017.i, i32 10
  %102 = ptrtoint ptr %ntt.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ntt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i180 = icmp eq i8 %103, 0
  br i1 %tobool.not.i180, label %for.body.i181.for.inc.i186_crit_edge, label %if.then.i182

for.body.i181.for.inc.i186_crit_edge:             ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i186

if.then.i182:                                     ; preds = %for.body.i181
  %arrayidx.i = getelementptr %struct.rlb_client_info, ptr %101, i32 %hash_index.017.i
  call fastcc void @rlb_update_client(ptr noundef %arrayidx.i) #10
  %104 = ptrtoint ptr %rlb_update_retry_counter.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rlb_update_retry_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp1.i = icmp eq i32 %105, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i182.for.inc.i186_crit_edge

if.then.i182.for.inc.i186_crit_edge:              ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i186

if.then2.i:                                       ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %ntt.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %ntt.i, align 1
  br label %for.inc.i186

for.inc.i186:                                     ; preds = %if.then2.i, %if.then.i182.for.inc.i186_crit_edge, %for.body.i181.for.inc.i186_crit_edge
  %used_next.i183 = getelementptr %struct.rlb_client_info, ptr %101, i32 %hash_index.017.i, i32 4
  %107 = ptrtoint ptr %used_next.i183 to i32
  call void @__asan_load4_noabort(i32 %107)
  %hash_index.0.i184 = load i32, ptr %used_next.i183, align 4
  %cmp.not.i185 = icmp eq i32 %hash_index.0.i184, -1
  br i1 %cmp.not.i185, label %for.inc.i186.rlb_update_rx_clients.exit_crit_edge, label %for.inc.i186.for.body.i181_crit_edge

for.inc.i186.for.body.i181_crit_edge:             ; preds = %for.inc.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i181

for.inc.i186.rlb_update_rx_clients.exit_crit_edge: ; preds = %for.inc.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_rx_clients.exit

rlb_update_rx_clients.exit:                       ; preds = %for.inc.i186.rlb_update_rx_clients.exit_crit_edge, %if.else.rlb_update_rx_clients.exit_crit_edge
  %108 = ptrtoint ptr %rlb_update_delay_counter to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 20, ptr %rlb_update_delay_counter, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i176) #10
  %rlb_update_retry_counter = getelementptr i8, ptr %work, i32 -404
  %109 = ptrtoint ptr %rlb_update_retry_counter to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rlb_update_retry_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool88.not = icmp eq i32 %110, 0
  br i1 %tobool88.not, label %if.else92, label %if.then89

if.then89:                                        ; preds = %rlb_update_rx_clients.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dec91 = add i32 %110, -1
  %111 = ptrtoint ptr %rlb_update_retry_counter to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %dec91, ptr %rlb_update_retry_counter, align 4
  br label %if.end97

if.else92:                                        ; preds = %rlb_update_rx_clients.exit
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %rx_ntt to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %rx_ntt, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.else92, %if.then89, %if.then86, %if.end82.if.end97_crit_edge, %if.end48.if.end97_crit_edge
  %call.i188 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i188, label %if.end97.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true.i191

if.end97.rcu_read_unlock.exit198_crit_edge:       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit198

land.lhs.true.i191:                               ; preds = %if.end97
  %call1.i189 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit198

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit198

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit198

rcu_read_unlock.exit198:                          ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, %if.end97.rcu_read_unlock.exit198_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %113 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i195 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i197 = add i32 %116, -1
  store volatile i32 %sub.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %re_arm

re_arm:                                           ; preds = %rcu_read_unlock.exit198, %rcu_read_unlock.exit.re_arm_crit_edge, %if.then
  %wq = getelementptr i8, ptr %work, i32 -204
  %117 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wq, align 8
  %call.i199 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %work, i32 noundef 10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alb_send_learning_packets(ptr noundef %slave, ptr noundef %mac_addr, i1 noundef zeroext %strict_match) unnamed_addr #0 align 64 {
entry:
  %priv = alloca %struct.netdev_nested_priv, align 8
  %data = alloca %struct.alb_walk_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %strict_match to i8
  %bond.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %priv, align 8, !annotation !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #10
  %3 = getelementptr inbounds i8, ptr %data, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %data, align 4
  %slave2 = getelementptr inbounds %struct.alb_walk_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %slave2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %slave, ptr %slave2, align 4
  %mac_addr3 = getelementptr inbounds %struct.alb_walk_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %mac_addr3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mac_addr, ptr %mac_addr3, align 4
  %strict_match4 = getelementptr inbounds %struct.alb_walk_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %strict_match4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %strict_match4, align 4
  %data6 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %data6, align 4
  call fastcc void @alb_send_lp_vid(ptr noundef %slave, ptr noundef %mac_addr, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %10 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call7 = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %15, ptr noundef nonnull @alb_upper_dev_walk, ptr noundef nonnull %priv) #10
  %call.i12 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i12, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %rcu_read_lock.exit
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %16 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i19 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_alb_init_slave(ptr noundef %bond, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %ss.i23 = alloca %struct.__kernel_sockaddr_storage, align 4
  %iter.i93.i = alloca ptr, align 4
  %ss.i.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %iter.i.i = alloca ptr, align 4
  %iter.i = alloca ptr, align 4
  %ss.i = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %perm_hwaddr = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 14
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i) #10
  %4 = call ptr @memset(ptr %ss.i, i32 255, i32 128)
  %bond.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %5 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bond.i, align 4
  %params.i = getelementptr inbounds %struct.bonding, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp eq i32 %8, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %perm_hwaddr, i32 noundef %conv) #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %__data.i = getelementptr inbounds %struct.anon.146, ptr %ss.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %__data.i, ptr %perm_hwaddr, i32 %conv)
  %type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type.i, align 16
  %12 = ptrtoint ptr %ss.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ss.i, align 4
  %call.i = call i32 @dev_set_mac_address(ptr noundef %1, ptr noundef nonnull %ss.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %alb_set_slave_mac_addr.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

alb_set_slave_mac_addr.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  %curr_active_slave.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %17 = ptrtoint ptr %curr_active_slave.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %curr_active_slave.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #10
  %19 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %lower.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %lower.i
  br i1 %cmp.i.not.i, label %if.end.if.end4_crit_edge, label %if.end.i20

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i20:                                       ; preds = %if.end
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %25 = ptrtoint ptr %perm_hwaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %perm_hwaddr, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i.i.i = xor i32 %28, %26
  %add.ptr.i.i.i = getelementptr %struct.slave, ptr %slave, i32 0, i32 14, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %32, %30
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i20.if.end15.i_crit_edge, label %if.then4.i

if.end.i20.if.end15.i_crit_edge:                  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i20
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slave, align 8
  %dev_addr6.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr6.i, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #10
  %37 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %22, ptr %iter.i.i, align 4
  %call.i.i21 = call ptr @netdev_lower_get_next_private(ptr noundef %20, ptr noundef nonnull %iter.i.i) #10
  %tobool.not11.i.i = icmp eq ptr %call.i.i21, null
  br i1 %tobool.not11.i.i, label %if.then4.i.bond_slave_has_mac.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.then4.i.bond_slave_has_mac.exit.thread.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_has_mac.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.then4.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %tmp.012.i.i = phi ptr [ %call.i.i21, %for.body.lr.ph.i.i ], [ %call5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %tmp.012.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tmp.012.i.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr.i.i, align 64
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %36, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %xor.i.i.i.i = xor i32 %45, %43
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %41, i32 4
  %48 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %49, %47
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end10.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %50 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bond, align 8
  %call5.i.i = call ptr @netdev_lower_get_next_private(ptr noundef %51, ptr noundef nonnull %iter.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_has_mac.exit.thread.i

bond_slave_has_mac.exit.thread.i:                 ; preds = %for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge, %if.then4.i.bond_slave_has_mac.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  br label %if.end4

if.end10.i:                                       ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  %52 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bond, align 8
  %dev_addr12.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr12.i, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 56
  %56 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slave, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i.i) #10
  %60 = call ptr @memset(ptr %ss.i.i, i32 255, i32 128)
  %61 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bond.i, align 4
  %params.i.i = getelementptr inbounds %struct.bonding, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %params.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp.i90.i = icmp eq i32 %64, 5
  br i1 %cmp.i90.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %59, i32 noundef 0, ptr noundef %55, i32 noundef %conv.i) #10
  br label %alb_set_slave_mac_addr.exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  %__data.i.i = getelementptr inbounds %struct.anon.146, ptr %ss.i.i, i32 0, i32 1
  %65 = call ptr @memcpy(ptr %__data.i.i, ptr %55, i32 %conv.i)
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 32
  %66 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %type.i.i, align 16
  %68 = ptrtoint ptr %ss.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %ss.i.i, align 4
  %call.i91.i = call i32 @dev_set_mac_address(ptr noundef %59, ptr noundef nonnull %ss.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool.not.i92.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool.not.i92.i, label %if.end.i.i.alb_set_slave_mac_addr.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.alb_set_slave_mac_addr.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bond.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.19, ptr noundef %59) #15
  br label %alb_set_slave_mac_addr.exit.i

alb_set_slave_mac_addr.exit.i:                    ; preds = %if.then2.i.i, %if.end.i.i.alb_set_slave_mac_addr.exit.i_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %alb_set_slave_mac_addr.exit.i, %if.end.i20.if.end15.i_crit_edge
  %73 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bond, align 8
  %lower18.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 13, i32 1
  %75 = ptrtoint ptr %lower18.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lower18.i, align 8
  %77 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %iter.i, align 4
  %call20.i = call ptr @netdev_lower_get_next_private(ptr noundef %74, ptr noundef nonnull %iter.i) #10
  %tobool21.not133.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not133.i, label %if.end15.i.if.else.i_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %tmp_slave1.0135.i = phi ptr [ %call39.i, %for.inc.i.for.body.i_crit_edge ], [ %call20.i, %if.end15.i.for.body.i_crit_edge ]
  %has_bond_addr.0134.i = phi ptr [ %has_bond_addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %18, %if.end15.i.for.body.i_crit_edge ]
  %perm_hwaddr22.i = getelementptr inbounds %struct.slave, ptr %tmp_slave1.0135.i, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i93.i) #10
  %78 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bond, align 8
  %lower.i94.i = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 13, i32 1
  %80 = ptrtoint ptr %lower.i94.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lower.i94.i, align 8
  %82 = ptrtoint ptr %iter.i93.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %iter.i93.i, align 4
  %call.i95.i = call ptr @netdev_lower_get_next_private(ptr noundef %79, ptr noundef nonnull %iter.i93.i) #10
  %tobool.not11.i96.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool.not11.i96.i, label %for.end.thread126.i, label %for.body.lr.ph.i98.i

for.end.thread126.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i93.i) #10
  br label %if.then41.i

for.body.lr.ph.i98.i:                             ; preds = %for.body.i
  %add.ptr.i.i.i97.i = getelementptr %struct.slave, ptr %tmp_slave1.0135.i, i32 0, i32 14, i32 4
  br label %for.body.i107.i

for.body.i107.i:                                  ; preds = %for.inc.i110.i.for.body.i107.i_crit_edge, %for.body.lr.ph.i98.i
  %tmp.012.i99.i = phi ptr [ %call.i95.i, %for.body.lr.ph.i98.i ], [ %call5.i108.i, %for.inc.i110.i.for.body.i107.i_crit_edge ]
  %83 = ptrtoint ptr %tmp.012.i99.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tmp.012.i99.i, align 8
  %dev_addr.i100.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 86
  %85 = ptrtoint ptr %dev_addr.i100.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_addr.i100.i, align 64
  %87 = ptrtoint ptr %perm_hwaddr22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %perm_hwaddr22.i, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  %xor.i.i.i101.i = xor i32 %90, %88
  %91 = ptrtoint ptr %add.ptr.i.i.i97.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr.i.i.i97.i, align 2
  %add.ptr1.i.i.i102.i = getelementptr i8, ptr %86, i32 4
  %93 = ptrtoint ptr %add.ptr1.i.i.i102.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %add.ptr1.i.i.i102.i, align 2
  %xor37.i.i.i103.i = xor i16 %94, %92
  %xor3.i.i.i104.i = zext i16 %xor37.i.i.i103.i to i32
  %or.i.i.i105.i = or i32 %xor.i.i.i101.i, %xor3.i.i.i104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i105.i)
  %cmp.i.i.i106.i = icmp eq i32 %or.i.i.i105.i, 0
  br i1 %cmp.i.i.i106.i, label %if.end27.i, label %for.inc.i110.i

for.inc.i110.i:                                   ; preds = %for.body.i107.i
  %95 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bond, align 8
  %call5.i108.i = call ptr @netdev_lower_get_next_private(ptr noundef %96, ptr noundef nonnull %iter.i93.i) #10
  %tobool.not.i109.i = icmp eq ptr %call5.i108.i, null
  br i1 %tobool.not.i109.i, label %for.end.i, label %for.inc.i110.i.for.body.i107.i_crit_edge

for.inc.i110.i.for.body.i107.i_crit_edge:         ; preds = %for.inc.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i107.i

if.end27.i:                                       ; preds = %for.body.i107.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i93.i) #10
  %tobool28.not.i = icmp eq ptr %has_bond_addr.0134.i, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end27.i.for.inc.i_crit_edge

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %tmp_slave1.0135.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tmp_slave1.0135.i, align 8
  %dev_addr31.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 86
  %99 = ptrtoint ptr %dev_addr31.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_addr31.i, align 64
  %101 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bond, align 8
  %dev_addr33.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 86
  %103 = ptrtoint ptr %dev_addr33.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_addr33.i, align 64
  %105 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %100, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %104, align 4
  %xor.i.i113.i = xor i32 %108, %106
  %add.ptr.i.i114.i = getelementptr i8, ptr %100, i32 4
  %109 = ptrtoint ptr %add.ptr.i.i114.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr.i.i114.i, align 2
  %add.ptr1.i.i115.i = getelementptr i8, ptr %104, i32 4
  %111 = ptrtoint ptr %add.ptr1.i.i115.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr1.i.i115.i, align 2
  %xor37.i.i116.i = xor i16 %112, %110
  %xor3.i.i117.i = zext i16 %xor37.i.i116.i to i32
  %or.i.i118.i = or i32 %xor.i.i113.i, %xor3.i.i117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i118.i)
  %cmp.i.i119.i = icmp eq i32 %or.i.i118.i, 0
  %spec.select.i = select i1 %cmp.i.i119.i, ptr %tmp_slave1.0135.i, ptr null
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then29.i, %if.end27.i.for.inc.i_crit_edge
  %has_bond_addr.1.i = phi ptr [ %has_bond_addr.0134.i, %if.end27.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then29.i ]
  %113 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bond, align 8
  %call39.i = call ptr @netdev_lower_get_next_private(ptr noundef %114, ptr noundef nonnull %iter.i) #10
  %tobool21.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool21.not.i, label %for.inc.i.if.else.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.else.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.end.i:                                        ; preds = %for.inc.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i93.i) #10
  br label %if.then41.i

if.then41.i:                                      ; preds = %for.end.i, %for.end.thread126.i
  %115 = ptrtoint ptr %tmp_slave1.0135.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tmp_slave1.0135.i, align 8
  %addr_len45.i = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 56
  %117 = ptrtoint ptr %addr_len45.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %addr_len45.i, align 1
  %conv46.i = zext i8 %118 to i32
  %119 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %slave, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i23) #10
  %121 = call ptr @memset(ptr %ss.i23, i32 255, i32 128)
  %122 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bond.i, align 4
  %params.i25 = getelementptr inbounds %struct.bonding, ptr %123, i32 0, i32 19
  %124 = ptrtoint ptr %params.i25 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %params.i25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %125)
  %cmp.i26 = icmp eq i32 %125, 5
  br i1 %cmp.i26, label %if.then.i27, label %if.end.i32

if.then.i27:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %120, i32 noundef 0, ptr noundef %perm_hwaddr22.i, i32 noundef %conv46.i) #10
  br label %alb_set_slave_mac_addr.exit35

if.end.i32:                                       ; preds = %if.then41.i
  %__data.i28 = getelementptr inbounds %struct.anon.146, ptr %ss.i23, i32 0, i32 1
  %126 = call ptr @memcpy(ptr %__data.i28, ptr %perm_hwaddr22.i, i32 %conv46.i)
  %type.i29 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 32
  %127 = ptrtoint ptr %type.i29 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %type.i29, align 16
  %129 = ptrtoint ptr %ss.i23 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %ss.i23, align 4
  %call.i30 = call i32 @dev_set_mac_address(ptr noundef %120, ptr noundef nonnull %ss.i23, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i32.alb_set_slave_mac_addr.exit35_crit_edge, label %if.then2.i33

if.end.i32.alb_set_slave_mac_addr.exit35_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit35

if.then2.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bond.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %133, ptr noundef nonnull @.str.19, ptr noundef %120) #15
  br label %alb_set_slave_mac_addr.exit35

alb_set_slave_mac_addr.exit35:                    ; preds = %if.then2.i33, %if.end.i32.alb_set_slave_mac_addr.exit35_crit_edge, %if.then.i27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i23) #10
  %134 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bond, align 8
  %136 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %slave, align 8
  %138 = ptrtoint ptr %tmp_slave1.0135.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tmp_slave1.0135.i, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %135, ptr noundef nonnull @.str.20, ptr noundef %137, ptr noundef %139) #15
  br label %if.end4

if.else.i:                                        ; preds = %for.inc.i.if.else.i_crit_edge, %if.end15.i.if.else.i_crit_edge
  %has_bond_addr.0.lcssa.i = phi ptr [ %18, %if.end15.i.if.else.i_crit_edge ], [ %has_bond_addr.1.i, %for.inc.i.if.else.i_crit_edge ]
  %tobool54.not.i = icmp eq ptr %has_bond_addr.0.lcssa.i, null
  br i1 %tobool54.not.i, label %if.else.i.if.end4_crit_edge, label %alb_handle_addr_collision_on_attach.exit

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

alb_handle_addr_collision_on_attach.exit:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bond, align 8
  %142 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %slave, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %141, ptr noundef nonnull @.str.21, ptr noundef %143) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.else.i.if.end4_crit_edge, %alb_set_slave_mac_addr.exit35, %bond_slave_has_mac.exit.thread.i, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  %tlb_info.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16
  %load.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16, i32 1
  %144 = ptrtoint ptr %load.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %load.i, align 4
  %145 = ptrtoint ptr %tlb_info.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %tlb_info.i, align 4
  %tx_rebalance_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_rebalance_counter, i32 noundef 4) #10
  %146 = ptrtoint ptr %tx_rebalance_counter to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 100, ptr %tx_rebalance_counter, align 4
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %147 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rlb_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool6.not = icmp eq i32 %148, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %rlb_rebalance = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 13
  %149 = ptrtoint ptr %rlb_rebalance to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %rlb_rebalance, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %alb_handle_addr_collision_on_attach.exit, %alb_set_slave_mac_addr.exit
  %retval.0 = phi i32 [ -95, %alb_set_slave_mac_addr.exit ], [ -14, %alb_handle_addr_collision_on_attach.exit ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_deinit_slave(ptr noundef %bond, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lower, align 4
  %cmp.i.not = icmp eq ptr %3, %lower
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %perm_hwaddr.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 14
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr.i, align 64
  %8 = ptrtoint ptr %perm_hwaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %perm_hwaddr.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %xor.i.i.i = xor i32 %11, %9
  %add.ptr.i.i.i = getelementptr %struct.slave, ptr %slave, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %15, %13
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %dev_addr4.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr4.i, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %xor.i.i24.i = xor i32 %19, %9
  %add.ptr1.i.i26.i = getelementptr i8, ptr %17, i32 4
  %20 = ptrtoint ptr %add.ptr1.i.i26.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i.i26.i, align 2
  %xor37.i.i27.i = xor i16 %21, %13
  %xor3.i.i28.i = zext i16 %xor37.i.i27.i to i32
  %or.i.i29.i = or i32 %xor.i.i24.i, %xor3.i.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i29.i)
  %cmp.i.i30.i = icmp eq i32 %or.i.i29.i, 0
  %brmerge.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp.i.i30.i
  br i1 %brmerge.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #10
  %22 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %iter.i.i, align 4
  %call.i.i = call ptr @netdev_lower_get_next_private(ptr noundef %1, ptr noundef nonnull %iter.i.i) #10
  %tobool.not11.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not11.i.i, label %if.then.i.bond_slave_has_mac.exit.thread.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.bond_slave_has_mac.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_has_mac.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %tmp.012.i.i = phi ptr [ %call5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %tmp.012.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmp.012.i.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr.i.i, align 64
  %27 = ptrtoint ptr %perm_hwaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %perm_hwaddr.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %xor.i.i.i.i = xor i32 %30, %28
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %26, i32 4
  %33 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %34, %32
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then13.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %35 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bond, align 8
  %call5.i.i = call ptr @netdev_lower_get_next_private(ptr noundef %36, ptr noundef nonnull %iter.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_has_mac.exit.thread.i

bond_slave_has_mac.exit.thread.i:                 ; preds = %for.inc.i.i.bond_slave_has_mac.exit.thread.i_crit_edge, %if.then.i.bond_slave_has_mac.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  br label %if.end

if.then13.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #10
  call fastcc void @alb_swap_mac_addr(ptr noundef %slave, ptr noundef nonnull %tmp.012.i.i) #10
  call fastcc void @alb_fasten_mac_swap(ptr noundef %bond, ptr noundef %slave, ptr noundef nonnull %tmp.012.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %bond_slave_has_mac.exit.thread.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %alb_info.i.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %37 = ptrtoint ptr %alb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alb_info.i.i, align 8
  %tobool.not.i.i12 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i12, label %if.end.tlb_clear_slave.exit_crit_edge, label %if.then.i.i

if.end.tlb_clear_slave.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

if.then.i.i:                                      ; preds = %if.end
  %tlb_info.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16
  %39 = ptrtoint ptr %tlb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tlb_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.not7.i.i = icmp eq i32 %40, -1
  br i1 %cmp.not7.i.i, label %if.then.i.i.tlb_clear_slave.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.body.i.i

if.then.i.i.tlb_clear_slave.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i.while.body.i.i_crit_edge
  %index.08.i.i = phi i32 [ %42, %while.body.i.i.while.body.i.i_crit_edge ], [ %40, %if.then.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tlb_client_info, ptr %38, i32 %index.08.i.i
  %next.i.i = getelementptr %struct.tlb_client_info, ptr %38, i32 %index.08.i.i, i32 3
  %41 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %next.i.i, align 4
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i.i, align 4
  store i32 -1, ptr %next.i.i, align 4
  %prev.i.i.i = getelementptr %struct.tlb_client_info, ptr %38, i32 %index.08.i.i, i32 4
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %42, -1
  br i1 %cmp.not.i.i, label %while.body.i.i.tlb_clear_slave.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.tlb_clear_slave.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

tlb_clear_slave.exit:                             ; preds = %while.body.i.i.tlb_clear_slave.exit_crit_edge, %if.then.i.i.tlb_clear_slave.exit_crit_edge, %if.end.tlb_clear_slave.exit_crit_edge
  %tlb_info.i.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16
  %load.i.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %load.i.i.i, align 4
  %46 = ptrtoint ptr %tlb_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %tlb_info.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %47 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rlb_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not = icmp eq i32 %48, 0
  br i1 %tobool1.not, label %tlb_clear_slave.exit.if.end4_crit_edge, label %if.then2

tlb_clear_slave.exit.if.end4_crit_edge:           ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rx_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 8
  %49 = ptrtoint ptr %rx_slave to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rx_slave, align 8
  call fastcc void @rlb_clear_slave(ptr noundef %bond, ptr noundef %slave)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %tlb_clear_slave.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rlb_clear_slave(ptr noundef %bond, ptr noundef readonly %slave) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #10
  %rx_hashtbl = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %0 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_hashtbl, align 4
  %rx_hashtbl_used_head = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %2 = ptrtoint ptr %rx_hashtbl_used_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_hashtbl_used_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not51 = icmp eq i32 %3, -1
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_ntt = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  %rlb_update_retry_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.052 = phi i32 [ %3, %for.body.lr.ph ], [ %5, %for.inc.for.body_crit_edge ]
  %used_next = getelementptr %struct.rlb_client_info, ptr %1, i32 %index.052, i32 4
  %4 = ptrtoint ptr %used_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used_next, align 4
  %slave2 = getelementptr %struct.rlb_client_info, ptr %1, i32 %index.052, i32 11
  %6 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave2, align 4
  %cmp3 = icmp eq ptr %7, %slave
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.if.end29.i_crit_edge

if.then.if.end29.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.then
  %.b40.i = load i1, ptr @rlb_next_rx_slave.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !85

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rlb_next_rx_slave.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 342) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.then.if.end29.i_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end29.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end29.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end29.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end29.i.rcu_read_lock.exit.i_crit_edge
  %call37.i = tail call fastcc ptr @__rlb_next_rx_slave(ptr noundef %bond) #10
  %call.i41.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i41.i, label %rcu_read_lock.exit.i.rlb_next_rx_slave.exit_crit_edge, label %land.lhs.true.i44.i

rcu_read_lock.exit.i.rlb_next_rx_slave.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_next_rx_slave.exit

land.lhs.true.i44.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i42.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call1.i42.i, 0
  br i1 %tobool.not.i43.i, label %land.lhs.true.i44.i.rlb_next_rx_slave.exit_crit_edge, label %land.lhs.true2.i46.i

land.lhs.true.i44.i.rlb_next_rx_slave.exit_crit_edge: ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_next_rx_slave.exit

land.lhs.true2.i46.i:                             ; preds = %land.lhs.true.i44.i
  %.b4.i45.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45.i, label %land.lhs.true2.i46.i.rlb_next_rx_slave.exit_crit_edge, label %if.then.i47.i

land.lhs.true2.i46.i.rlb_next_rx_slave.exit_crit_edge: ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_next_rx_slave.exit

if.then.i47.i:                                    ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.18) #10
  br label %rlb_next_rx_slave.exit

rlb_next_rx_slave.exit:                           ; preds = %if.then.i47.i, %land.lhs.true2.i46.i.rlb_next_rx_slave.exit_crit_edge, %land.lhs.true.i44.i.rlb_next_rx_slave.exit_crit_edge, %rcu_read_lock.exit.i.rlb_next_rx_slave.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %12 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i48.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i48.i to ptr
  %preempt_count.i.i.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i49.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i49.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call37.i, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %rlb_next_rx_slave.exit
  %16 = ptrtoint ptr %slave2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call37.i, ptr %slave2, align 4
  %mac_dst = getelementptr %struct.rlb_client_info, ptr %1, i32 %index.052, i32 3
  %17 = ptrtoint ptr %mac_dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac_dst, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

is_valid_ether_addr.exit:                         ; preds = %if.then4
  %add.ptr.i.i = getelementptr i8, ptr %mac_dst, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %21 to i32
  %or.i.i = or i32 %18, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.for.inc_crit_edge, label %if.then9

is_valid_ether_addr.exit.for.inc_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_hashtbl, align 4
  %ntt = getelementptr %struct.rlb_client_info, ptr %23, i32 %index.052, i32 10
  %24 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ntt, align 1
  %25 = ptrtoint ptr %rx_ntt to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %rx_ntt, align 4
  %26 = ptrtoint ptr %rlb_update_retry_counter to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %rlb_update_retry_counter, align 4
  br label %for.inc

if.else:                                          ; preds = %rlb_next_rx_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %slave2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %slave2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then9, %is_valid_ether_addr.exit.for.inc_crit_edge, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock) #10
  %call17 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call17, label %for.end.do.end_crit_edge, label %land.lhs.true

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %for.end
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true20

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b49 = load i1, ptr @rlb_clear_slave.__warned, align 1
  br i1 %.b49, label %land.lhs.true20.do.end_crit_edge, label %if.then22

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rlb_clear_slave.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %land.lhs.true20.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.end.do.end_crit_edge
  %curr_active_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %28 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %curr_active_slave, align 4
  %cmp24.not = icmp eq ptr %29, %slave
  br i1 %cmp24.not, label %do.end.if.end26_crit_edge, label %if.then25

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slave, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 86
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @rlb_teach_disabled_mac_on_primary(ptr noundef %bond, ptr noundef %33)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.end.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_handle_link_change(ptr noundef %bond, ptr noundef %slave, i8 noundef zeroext %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %link to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %link, label %entry.if.end15_crit_edge [
    i8 2, label %if.then
    i8 0, label %if.then7
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %alb_info.i.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %1 = ptrtoint ptr %alb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alb_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.tlb_clear_slave.exit_crit_edge, label %if.then.i.i

if.then.tlb_clear_slave.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

if.then.i.i:                                      ; preds = %if.then
  %tlb_info.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16
  %3 = ptrtoint ptr %tlb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlb_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not7.i.i = icmp eq i32 %4, -1
  br i1 %cmp.not7.i.i, label %if.then.i.i.tlb_clear_slave.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.body.i.i

if.then.i.i.tlb_clear_slave.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i.while.body.i.i_crit_edge
  %index.08.i.i = phi i32 [ %6, %while.body.i.i.while.body.i.i_crit_edge ], [ %4, %if.then.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tlb_client_info, ptr %2, i32 %index.08.i.i
  %next.i.i = getelementptr %struct.tlb_client_info, ptr %2, i32 %index.08.i.i, i32 3
  %5 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next.i.i, align 4
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.i.i, align 4
  store i32 -1, ptr %next.i.i, align 4
  %prev.i.i.i = getelementptr %struct.tlb_client_info, ptr %2, i32 %index.08.i.i, i32 4
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %6, -1
  br i1 %cmp.not.i.i, label %while.body.i.i.tlb_clear_slave.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.tlb_clear_slave.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

tlb_clear_slave.exit:                             ; preds = %while.body.i.i.tlb_clear_slave.exit_crit_edge, %if.then.i.i.tlb_clear_slave.exit_crit_edge, %if.then.tlb_clear_slave.exit_crit_edge
  %tlb_info.i.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16
  %load.i.i.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %load.i.i.i, align 4
  %10 = ptrtoint ptr %tlb_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tlb_info.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %11 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rlb_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %tlb_clear_slave.exit.if.end15_crit_edge, label %if.then3

tlb_clear_slave.exit.if.end15_crit_edge:          ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then3:                                         ; preds = %tlb_clear_slave.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rlb_clear_slave(ptr noundef %bond, ptr noundef %slave)
  br label %if.end15

if.then7:                                         ; preds = %entry
  %tx_rebalance_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_rebalance_counter, i32 noundef 4) #10
  %13 = ptrtoint ptr %tx_rebalance_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 100, ptr %tx_rebalance_counter, align 4
  %rlb_enabled9 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %14 = ptrtoint ptr %rlb_enabled9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rlb_enabled9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.then7.if.end15_crit_edge, label %if.then11

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %rlb_rebalance = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 13
  %16 = ptrtoint ptr %rlb_rebalance to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %rlb_rebalance, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then7.if.end15_crit_edge, %if.then3, %tlb_clear_slave.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  %params.i.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19
  %17 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params.i.i, align 8
  %19 = add i32 %18, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %bond_is_nondyn_tlb.exit, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

bond_is_nondyn_tlb.exit:                          ; preds = %if.end15
  %tlb_dynamic_lb.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 25
  %21 = ptrtoint ptr %tlb_dynamic_lb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tlb_dynamic_lb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.then16, label %bond_is_nondyn_tlb.exit.if.end22_crit_edge

bond_is_nondyn_tlb.exit.if.end22_crit_edge:       ; preds = %bond_is_nondyn_tlb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %bond_is_nondyn_tlb.exit
  %call17 = tail call i32 @bond_update_slave_arr(ptr noundef %bond, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %do.end

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then16.if.end22_crit_edge, %bond_is_nondyn_tlb.exit.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_update_slave_arr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_handle_active_change(ptr noundef %bond, ptr noundef %new_slave) local_unnamed_addr #0 align 64 {
entry:
  %ss.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %iter.i = alloca ptr, align 4
  %ss = alloca %struct.__kernel_sockaddr_storage, align 4
  %tmp_addr = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b137 = load i1, ptr @bond_alb_handle_active_change.__warned, align 1
  br i1 %.b137, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_alb_handle_active_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1684, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %curr_active_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %0 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_active_slave, align 4
  %cmp = icmp eq ptr %1, %new_slave
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %land.lhs.true7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true7:                                   ; preds = %if.end5
  %primary_is_promisc = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 9
  %2 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %primary_is_promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end14_crit_edge, label %if.then9

land.lhs.true7.if.end14_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call10 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef -1) #10
  %6 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %primary_is_promisc, align 4
  %rlb_promisc_timeout_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 10
  %7 = ptrtoint ptr %rlb_promisc_timeout_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rlb_promisc_timeout_counter, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %8 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %new_slave, ptr %curr_active_slave, align 4
  %tobool55.not = icmp eq ptr %new_slave, null
  br i1 %tobool55.not, label %if.end14.cleanup_crit_edge, label %lor.lhs.false

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end14
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %lower, align 4
  %cmp.i.not = icmp eq ptr %12, %lower
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end60

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  br i1 %tobool6.not, label %if.then62, label %if.end60.if.then67_crit_edge

if.end60.if.then67_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then62:                                        ; preds = %if.end60
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #10
  %15 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next_private(ptr noundef %10, ptr noundef nonnull %iter.i) #10
  %tobool.not11.i = icmp eq ptr %call.i, null
  br i1 %tobool.not11.i, label %if.then62.if.end65.thread177_crit_edge, label %for.body.lr.ph.i

if.then62.if.end65.thread177_crit_edge:           ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.thread177

for.body.lr.ph.i:                                 ; preds = %if.then62
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.012.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call5.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %tmp.012.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmp.012.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i, align 64
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %14, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %xor.i.i.i = xor i32 %23, %21
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %19, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %27, %25
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end65, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %28 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bond, align 8
  %call5.i = call ptr @netdev_lower_get_next_private(ptr noundef %29, ptr noundef nonnull %iter.i) #10
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end65.thread177_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end65.thread177_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.thread177

if.end65.thread177:                               ; preds = %for.inc.i.if.end65.thread177_crit_edge, %if.then62.if.end65.thread177_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %if.end68

if.end65:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %if.then67

if.then67:                                        ; preds = %if.end65, %if.end60.if.then67_crit_edge
  %swap_slave.0173 = phi ptr [ %tmp.012.i, %if.end65 ], [ %1, %if.end60.if.then67_crit_edge ]
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %alb_info.i.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %30 = ptrtoint ptr %alb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %alb_info.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then67.tlb_clear_slave.exit_crit_edge, label %if.then.i.i

if.then67.tlb_clear_slave.exit_crit_edge:         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

if.then.i.i:                                      ; preds = %if.then67
  %tlb_info.i.i = getelementptr inbounds %struct.slave, ptr %swap_slave.0173, i32 0, i32 16
  %32 = ptrtoint ptr %tlb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tlb_info.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.not7.i.i = icmp eq i32 %33, -1
  br i1 %cmp.not7.i.i, label %if.then.i.i.tlb_clear_slave.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.body.i.i

if.then.i.i.tlb_clear_slave.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i.while.body.i.i_crit_edge
  %index.08.i.i = phi i32 [ %35, %while.body.i.i.while.body.i.i_crit_edge ], [ %33, %if.then.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tlb_client_info, ptr %31, i32 %index.08.i.i
  %next.i.i = getelementptr %struct.tlb_client_info, ptr %31, i32 %index.08.i.i, i32 3
  %34 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next.i.i, align 4
  %tx_bytes.i.i.i = getelementptr %struct.tlb_client_info, ptr %31, i32 %index.08.i.i, i32 1
  %36 = ptrtoint ptr %tx_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bytes.i.i.i, align 4
  %div.i.i.i = udiv i32 %37, 10
  %add.i.i.i = add nuw nsw i32 %div.i.i.i, 1
  %load_history.i.i.i = getelementptr %struct.tlb_client_info, ptr %31, i32 %index.08.i.i, i32 2
  %38 = ptrtoint ptr %load_history.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i.i.i, ptr %load_history.i.i.i, align 4
  store i32 0, ptr %tx_bytes.i.i.i, align 4
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i.i, align 4
  store i32 -1, ptr %next.i.i, align 4
  %prev.i.i.i = getelementptr %struct.tlb_client_info, ptr %31, i32 %index.08.i.i, i32 4
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.not.i.i, label %while.body.i.i.tlb_clear_slave.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.tlb_clear_slave.exit_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit

tlb_clear_slave.exit:                             ; preds = %while.body.i.i.tlb_clear_slave.exit_crit_edge, %if.then.i.i.tlb_clear_slave.exit_crit_edge, %if.then67.tlb_clear_slave.exit_crit_edge
  %tlb_info.i.i.i = getelementptr inbounds %struct.slave, ptr %swap_slave.0173, i32 0, i32 16
  %load.i.i.i = getelementptr inbounds %struct.slave, ptr %swap_slave.0173, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %load.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %load.i.i.i, align 4
  %42 = ptrtoint ptr %tlb_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %tlb_info.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %if.end68

if.end68:                                         ; preds = %tlb_clear_slave.exit, %if.end65.thread177
  %tobool66.not176 = phi i1 [ false, %tlb_clear_slave.exit ], [ true, %if.end65.thread177 ]
  %swap_slave.0174 = phi ptr [ %swap_slave.0173, %tlb_clear_slave.exit ], [ null, %if.end65.thread177 ]
  %mode_lock.i138 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i138) #10
  %alb_info.i.i139 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18
  %43 = ptrtoint ptr %alb_info.i.i139 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %alb_info.i.i139, align 8
  %tobool.not.i.i140 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i140, label %if.end68.tlb_clear_slave.exit157_crit_edge, label %if.then.i.i143

if.end68.tlb_clear_slave.exit157_crit_edge:       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit157

if.then.i.i143:                                   ; preds = %if.end68
  %tlb_info.i.i141 = getelementptr inbounds %struct.slave, ptr %new_slave, i32 0, i32 16
  %45 = ptrtoint ptr %tlb_info.i.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tlb_info.i.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.not7.i.i142 = icmp eq i32 %46, -1
  br i1 %cmp.not7.i.i142, label %if.then.i.i143.tlb_clear_slave.exit157_crit_edge, label %if.then.i.i143.while.body.i.i148_crit_edge

if.then.i.i143.while.body.i.i148_crit_edge:       ; preds = %if.then.i.i143
  br label %while.body.i.i148

if.then.i.i143.tlb_clear_slave.exit157_crit_edge: ; preds = %if.then.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit157

while.body.i.i148:                                ; preds = %while.body.i.i148.while.body.i.i148_crit_edge, %if.then.i.i143.while.body.i.i148_crit_edge
  %index.08.i.i145 = phi i32 [ %48, %while.body.i.i148.while.body.i.i148_crit_edge ], [ %46, %if.then.i.i143.while.body.i.i148_crit_edge ]
  %arrayidx.i.i146 = getelementptr %struct.tlb_client_info, ptr %44, i32 %index.08.i.i145
  %next.i.i147 = getelementptr %struct.tlb_client_info, ptr %44, i32 %index.08.i.i145, i32 3
  %47 = ptrtoint ptr %next.i.i147 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %next.i.i147, align 4
  %tx_bytes.i.i.i149 = getelementptr %struct.tlb_client_info, ptr %44, i32 %index.08.i.i145, i32 1
  %49 = ptrtoint ptr %tx_bytes.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_bytes.i.i.i149, align 4
  %div.i.i.i150 = udiv i32 %50, 10
  %add.i.i.i151 = add nuw nsw i32 %div.i.i.i150, 1
  %load_history.i.i.i152 = getelementptr %struct.tlb_client_info, ptr %44, i32 %index.08.i.i145, i32 2
  %51 = ptrtoint ptr %load_history.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i.i.i151, ptr %load_history.i.i.i152, align 4
  store i32 0, ptr %tx_bytes.i.i.i149, align 4
  %52 = ptrtoint ptr %arrayidx.i.i146 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i.i146, align 4
  store i32 -1, ptr %next.i.i147, align 4
  %prev.i.i.i153 = getelementptr %struct.tlb_client_info, ptr %44, i32 %index.08.i.i145, i32 4
  %53 = ptrtoint ptr %prev.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %prev.i.i.i153, align 4
  %cmp.not.i.i154 = icmp eq i32 %48, -1
  br i1 %cmp.not.i.i154, label %while.body.i.i148.tlb_clear_slave.exit157_crit_edge, label %while.body.i.i148.while.body.i.i148_crit_edge

while.body.i.i148.while.body.i.i148_crit_edge:    ; preds = %while.body.i.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i148

while.body.i.i148.tlb_clear_slave.exit157_crit_edge: ; preds = %while.body.i.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_clear_slave.exit157

tlb_clear_slave.exit157:                          ; preds = %while.body.i.i148.tlb_clear_slave.exit157_crit_edge, %if.then.i.i143.tlb_clear_slave.exit157_crit_edge, %if.end68.tlb_clear_slave.exit157_crit_edge
  %tlb_info.i.i.i155 = getelementptr inbounds %struct.slave, ptr %new_slave, i32 0, i32 16
  %load.i.i.i156 = getelementptr inbounds %struct.slave, ptr %new_slave, i32 0, i32 16, i32 1
  %54 = ptrtoint ptr %load.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %load.i.i.i156, align 4
  %55 = ptrtoint ptr %tlb_info.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %tlb_info.i.i.i155, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i138) #10
  %params = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19
  %56 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp69 = icmp eq i32 %57, 5
  br i1 %cmp69, label %if.then71, label %tlb_clear_slave.exit157.if.end87_crit_edge

tlb_clear_slave.exit157.if.end87_crit_edge:       ; preds = %tlb_clear_slave.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then71:                                        ; preds = %tlb_clear_slave.exit157
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss) #10
  %58 = call ptr @memset(ptr %ss, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_addr) #10
  %59 = call ptr @memset(ptr %tmp_addr, i32 255, i32 32)
  %60 = ptrtoint ptr %new_slave to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %new_slave, align 8
  %dev_addr73 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 86
  %62 = ptrtoint ptr %dev_addr73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr73, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 56
  %64 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %65)
  %cmp.i158 = icmp eq i8 %65, 6
  br i1 %cmp.i158, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %66 = getelementptr inbounds [32 x i8], ptr %tmp_addr, i32 0, i32 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %63, align 4
  %69 = ptrtoint ptr %tmp_addr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tmp_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i, align 2
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %66, align 4
  br label %bond_hw_addr_copy.exit

if.end.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %conv75 = zext i8 %65 to i32
  %73 = call ptr @memcpy(ptr %tmp_addr, ptr %63, i32 %conv75)
  br label %bond_hw_addr_copy.exit

bond_hw_addr_copy.exit:                           ; preds = %if.end.i, %if.then.i
  %__data = getelementptr inbounds %struct.anon.146, ptr %ss, i32 0, i32 1
  %74 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bond, align 8
  %dev_addr78 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 86
  %76 = ptrtoint ptr %dev_addr78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_addr78, align 64
  %addr_len80 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 56
  %78 = ptrtoint ptr %addr_len80 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %addr_len80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %79)
  %cmp.i159 = icmp eq i8 %79, 6
  br i1 %cmp.i159, label %if.then.i162, label %if.end.i163

if.then.i162:                                     ; preds = %bond_hw_addr_copy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 4
  %82 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %__data, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %77, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i160 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i.i160, align 2
  %add.ptr1.i.i161 = getelementptr inbounds %struct.anon.146, ptr %ss, i32 0, i32 1, i32 4
  %85 = ptrtoint ptr %add.ptr1.i.i161 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %add.ptr1.i.i161, align 2
  br label %bond_hw_addr_copy.exit164

if.end.i163:                                      ; preds = %bond_hw_addr_copy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv81 = zext i8 %79 to i32
  %86 = call ptr @memcpy(ptr %__data, ptr %77, i32 %conv81)
  br label %bond_hw_addr_copy.exit164

bond_hw_addr_copy.exit164:                        ; preds = %if.end.i163, %if.then.i162
  %type = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 32
  %87 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %type, align 16
  %89 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %ss, align 4
  %call84 = call i32 @dev_set_mac_address(ptr noundef %61, ptr noundef nonnull %ss, ptr noundef null) #10
  %90 = ptrtoint ptr %new_slave to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %new_slave, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 56
  %92 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %addr_len.i, align 1
  %conv.i165 = zext i8 %93 to i32
  call void @dev_addr_mod(ptr noundef %91, i32 noundef 0, ptr noundef nonnull %tmp_addr, i32 noundef %conv.i165) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_addr) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #10
  br label %if.end87

if.end87:                                         ; preds = %bond_hw_addr_copy.exit164, %tlb_clear_slave.exit157.if.end87_crit_edge
  br i1 %tobool66.not176, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @alb_swap_mac_addr(ptr noundef nonnull %swap_slave.0174, ptr noundef nonnull %new_slave)
  call fastcc void @alb_fasten_mac_swap(ptr noundef %bond, ptr noundef nonnull %swap_slave.0174, ptr noundef nonnull %new_slave)
  br label %cleanup

if.else90:                                        ; preds = %if.end87
  %94 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bond, align 8
  %dev_addr92 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 86
  %96 = ptrtoint ptr %dev_addr92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_addr92, align 64
  %addr_len94 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 56
  %98 = ptrtoint ptr %addr_len94 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %addr_len94, align 1
  %conv95 = zext i8 %99 to i32
  %100 = ptrtoint ptr %new_slave to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %new_slave, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i) #10
  %102 = call ptr @memset(ptr %ss.i, i32 255, i32 128)
  %bond.i = getelementptr inbounds %struct.slave, ptr %new_slave, i32 0, i32 1
  %103 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bond.i, align 4
  %params.i = getelementptr inbounds %struct.bonding, ptr %104, i32 0, i32 19
  %105 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %106)
  %cmp.i166 = icmp eq i32 %106, 5
  br i1 %cmp.i166, label %if.then.i167, label %if.end.i170

if.then.i167:                                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %101, i32 noundef 0, ptr noundef %97, i32 noundef %conv95) #10
  br label %alb_set_slave_mac_addr.exit

if.end.i170:                                      ; preds = %if.else90
  %__data.i = getelementptr inbounds %struct.anon.146, ptr %ss.i, i32 0, i32 1
  %107 = call ptr @memcpy(ptr %__data.i, ptr %97, i32 %conv95)
  %type.i = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 32
  %108 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %type.i, align 16
  %110 = ptrtoint ptr %ss.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %ss.i, align 4
  %call.i168 = call i32 @dev_set_mac_address(ptr noundef %101, ptr noundef nonnull %ss.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i170.alb_set_slave_mac_addr.exit_crit_edge, label %if.then2.i

if.end.i170.alb_set_slave_mac_addr.exit_crit_edge: ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit

if.then2.i:                                       ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bond.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.19, ptr noundef %101) #15
  br label %alb_set_slave_mac_addr.exit

alb_set_slave_mac_addr.exit:                      ; preds = %if.then2.i, %if.end.i170.alb_set_slave_mac_addr.exit_crit_edge, %if.then.i167
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  %115 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bond, align 8
  %dev_addr98 = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 86
  %117 = ptrtoint ptr %dev_addr98 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr98, align 64
  call fastcc void @alb_send_learning_packets(ptr noundef nonnull %new_slave, ptr noundef %118, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %alb_set_slave_mac_addr.exit, %if.then89, %lor.lhs.false.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alb_swap_mac_addr(ptr nocapture noundef readonly %slave1, ptr nocapture noundef readonly %slave2) unnamed_addr #0 align 64 {
entry:
  %ss.i20 = alloca %struct.__kernel_sockaddr_storage, align 4
  %ss.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %tmp_mac_addr = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_mac_addr) #10
  %0 = call ptr @memset(ptr %tmp_mac_addr, i32 255, i32 32)
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave1, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp.i = icmp eq i8 %6, 6
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds [32 x i8], ptr %tmp_mac_addr, i32 0, i32 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %10 = ptrtoint ptr %tmp_mac_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp_mac_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %7, align 4
  br label %bond_hw_addr_copy.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %6 to i32
  %14 = call ptr @memcpy(ptr %tmp_mac_addr, ptr %4, i32 %conv)
  br label %bond_hw_addr_copy.exit

bond_hw_addr_copy.exit:                           ; preds = %if.end.i, %if.then.i
  %15 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave2, align 8
  %dev_addr3 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr3, align 64
  %addr_len5 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %addr_len5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_len5, align 1
  %conv6 = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i) #10
  %21 = call ptr @memset(ptr %ss.i, i32 255, i32 128)
  %bond.i = getelementptr inbounds %struct.slave, ptr %slave1, i32 0, i32 1
  %22 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond.i, align 4
  %params.i = getelementptr inbounds %struct.bonding, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp.i17 = icmp eq i32 %25, 5
  br i1 %cmp.i17, label %if.then.i18, label %if.end.i19

if.then.i18:                                      ; preds = %bond_hw_addr_copy.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %2, i32 noundef 0, ptr noundef %18, i32 noundef %conv6) #10
  br label %alb_set_slave_mac_addr.exit

if.end.i19:                                       ; preds = %bond_hw_addr_copy.exit
  %__data.i = getelementptr inbounds %struct.anon.146, ptr %ss.i, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %__data.i, ptr %18, i32 %conv6)
  %type.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type.i, align 16
  %29 = ptrtoint ptr %ss.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %ss.i, align 4
  %call.i = call i32 @dev_set_mac_address(ptr noundef %2, ptr noundef nonnull %ss.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i19.alb_set_slave_mac_addr.exit_crit_edge, label %if.then2.i

if.end.i19.alb_set_slave_mac_addr.exit_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit

if.then2.i:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bond.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.19, ptr noundef %2) #15
  br label %alb_set_slave_mac_addr.exit

alb_set_slave_mac_addr.exit:                      ; preds = %if.then2.i, %if.end.i19.alb_set_slave_mac_addr.exit_crit_edge, %if.then.i18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  %34 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slave1, align 8
  %addr_len9 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 56
  %36 = ptrtoint ptr %addr_len9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_len9, align 1
  %conv10 = zext i8 %37 to i32
  %38 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave2, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i20) #10
  %40 = call ptr @memset(ptr %ss.i20, i32 255, i32 128)
  %bond.i21 = getelementptr inbounds %struct.slave, ptr %slave2, i32 0, i32 1
  %41 = ptrtoint ptr %bond.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bond.i21, align 4
  %params.i22 = getelementptr inbounds %struct.bonding, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %params.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %params.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp.i23 = icmp eq i32 %44, 5
  br i1 %cmp.i23, label %if.then.i24, label %if.end.i29

if.then.i24:                                      ; preds = %alb_set_slave_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %tmp_mac_addr, i32 noundef %conv10) #10
  br label %alb_set_slave_mac_addr.exit32

if.end.i29:                                       ; preds = %alb_set_slave_mac_addr.exit
  %__data.i25 = getelementptr inbounds %struct.anon.146, ptr %ss.i20, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %__data.i25, ptr %tmp_mac_addr, i32 %conv10)
  %type.i26 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 32
  %46 = ptrtoint ptr %type.i26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %type.i26, align 16
  %48 = ptrtoint ptr %ss.i20 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %ss.i20, align 4
  %call.i27 = call i32 @dev_set_mac_address(ptr noundef %39, ptr noundef nonnull %ss.i20, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i29.alb_set_slave_mac_addr.exit32_crit_edge, label %if.then2.i30

if.end.i29.alb_set_slave_mac_addr.exit32_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit32

if.then2.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %bond.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bond.i21, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.19, ptr noundef %39) #15
  br label %alb_set_slave_mac_addr.exit32

alb_set_slave_mac_addr.exit32:                    ; preds = %if.then2.i30, %if.end.i29.alb_set_slave_mac_addr.exit32_crit_edge, %if.then.i24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i20) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_mac_addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alb_fasten_mac_swap(ptr noundef %bond, ptr noundef %slave1, ptr noundef %slave2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave1, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %entry.bond_slave_can_tx.exit_crit_edge, label %bond_slave_is_up.exit.i

entry.bond_slave_can_tx.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit

bond_slave_is_up.exit.i:                          ; preds = %entry
  %4 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i, label %bond_slave_is_up.exit.i.bond_slave_can_tx.exit_crit_edge

bond_slave_is_up.exit.i.bond_slave_can_tx.exit_crit_edge: ; preds = %bond_slave_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit

land.lhs.true.i:                                  ; preds = %bond_slave_is_up.exit.i
  %link.i = getelementptr inbounds %struct.slave, ptr %slave1, i32 0, i32 6
  %7 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.bond_slave_can_tx.exit_crit_edge

land.lhs.true.i.bond_slave_can_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %slave1, i32 0, i32 8
  %9 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br label %bond_slave_can_tx.exit

bond_slave_can_tx.exit:                           ; preds = %land.rhs.i, %land.lhs.true.i.bond_slave_can_tx.exit_crit_edge, %bond_slave_is_up.exit.i.bond_slave_can_tx.exit_crit_edge, %entry.bond_slave_can_tx.exit_crit_edge
  %10 = phi i1 [ false, %land.lhs.true.i.bond_slave_can_tx.exit_crit_edge ], [ false, %bond_slave_is_up.exit.i.bond_slave_can_tx.exit_crit_edge ], [ %tobool.not.i.i, %land.rhs.i ], [ false, %entry.bond_slave_can_tx.exit_crit_edge ]
  %11 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave2, align 8
  %state.i.i.i85 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i.i85, align 4
  %and1.i.i.i.i86 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i86)
  %tobool.i.not.i.i87 = icmp eq i32 %and1.i.i.i.i86, 0
  br i1 %tobool.i.not.i.i87, label %bond_slave_can_tx.exit.bond_slave_can_tx.exit97_crit_edge, label %bond_slave_is_up.exit.i89

bond_slave_can_tx.exit.bond_slave_can_tx.exit97_crit_edge: ; preds = %bond_slave_can_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit97

bond_slave_is_up.exit.i89:                        ; preds = %bond_slave_can_tx.exit
  %15 = ptrtoint ptr %state.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i.i85, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i88 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i88, label %land.lhs.true.i92, label %bond_slave_is_up.exit.i89.bond_slave_can_tx.exit97_crit_edge

bond_slave_is_up.exit.i89.bond_slave_can_tx.exit97_crit_edge: ; preds = %bond_slave_is_up.exit.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit97

land.lhs.true.i92:                                ; preds = %bond_slave_is_up.exit.i89
  %link.i90 = getelementptr inbounds %struct.slave, ptr %slave2, i32 0, i32 6
  %18 = ptrtoint ptr %link.i90 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %link.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i91 = icmp eq i8 %19, 0
  br i1 %cmp.i91, label %land.rhs.i96, label %land.lhs.true.i92.bond_slave_can_tx.exit97_crit_edge

land.lhs.true.i92.bond_slave_can_tx.exit97_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %bond_slave_can_tx.exit97

land.rhs.i96:                                     ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #12
  %backup.i.i.i93 = getelementptr inbounds %struct.slave, ptr %slave2, i32 0, i32 8
  %20 = ptrtoint ptr %backup.i.i.i93 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i.i94 = load i8, ptr %backup.i.i.i93, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i94)
  %tobool.not.i.i95 = icmp sgt i8 %bf.load.i.i.i94, -1
  br label %bond_slave_can_tx.exit97

bond_slave_can_tx.exit97:                         ; preds = %land.rhs.i96, %land.lhs.true.i92.bond_slave_can_tx.exit97_crit_edge, %bond_slave_is_up.exit.i89.bond_slave_can_tx.exit97_crit_edge, %bond_slave_can_tx.exit.bond_slave_can_tx.exit97_crit_edge
  %21 = phi i1 [ false, %land.lhs.true.i92.bond_slave_can_tx.exit97_crit_edge ], [ false, %bond_slave_is_up.exit.i89.bond_slave_can_tx.exit97_crit_edge ], [ %tobool.not.i.i95, %land.rhs.i96 ], [ false, %bond_slave_can_tx.exit.bond_slave_can_tx.exit97_crit_edge ]
  %22 = xor i1 %10, %21
  %call4 = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.rhs, label %bond_slave_can_tx.exit97.if.end34_crit_edge

bond_slave_can_tx.exit97.if.end34_crit_edge:      ; preds = %bond_slave_can_tx.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.rhs:                                         ; preds = %bond_slave_can_tx.exit97
  %.b84 = load i1, ptr @alb_fasten_mac_swap.__already_done, align 1
  br i1 %.b84, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !85

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @alb_fasten_mac_swap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1060, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 1060) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %bond_slave_can_tx.exit97.if.end34_crit_edge
  %23 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave1, align 8
  %state.i.i.i98 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %state.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i.i98, align 4
  %and1.i.i.i.i99 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i99)
  %tobool.i.not.i.i100 = icmp eq i32 %and1.i.i.i.i99, 0
  br i1 %tobool.i.not.i.i100, label %if.end34.if.end47_crit_edge, label %bond_slave_is_up.exit.i102

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

bond_slave_is_up.exit.i102:                       ; preds = %if.end34
  %27 = ptrtoint ptr %state.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i.i98, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i101 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i101, label %land.lhs.true.i105, label %bond_slave_is_up.exit.i102.if.end47_crit_edge

bond_slave_is_up.exit.i102.if.end47_crit_edge:    ; preds = %bond_slave_is_up.exit.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true.i105:                               ; preds = %bond_slave_is_up.exit.i102
  %link.i103 = getelementptr inbounds %struct.slave, ptr %slave1, i32 0, i32 6
  %30 = ptrtoint ptr %link.i103 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i104 = icmp eq i8 %31, 0
  br i1 %cmp.i104, label %bond_slave_can_tx.exit110, label %land.lhs.true.i105.if.end47_crit_edge

land.lhs.true.i105.if.end47_crit_edge:            ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

bond_slave_can_tx.exit110:                        ; preds = %land.lhs.true.i105
  %backup.i.i.i106 = getelementptr inbounds %struct.slave, ptr %slave1, i32 0, i32 8
  %32 = ptrtoint ptr %backup.i.i.i106 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i.i107 = load i8, ptr %backup.i.i.i106, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i107)
  %tobool.not.i.i108 = icmp sgt i8 %bf.load.i.i.i107, -1
  br i1 %tobool.not.i.i108, label %if.then43, label %bond_slave_can_tx.exit110.if.end47_crit_edge

bond_slave_can_tx.exit110.if.end47_crit_edge:     ; preds = %bond_slave_can_tx.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then43:                                        ; preds = %bond_slave_can_tx.exit110
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @alb_send_learning_packets(ptr noundef %slave1, ptr noundef %34, i1 noundef zeroext false)
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %35 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rlb_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool44.not = icmp eq i32 %36, 0
  br i1 %tobool44.not, label %if.then43.if.end47_crit_edge, label %if.then45

if.then43.if.end47_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.then43
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %rx_hashtbl_used_head.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %37 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %hash_index.016.i = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.016.i)
  %cmp.not17.i = icmp eq i32 %hash_index.016.i, -1
  br i1 %cmp.not17.i, label %if.then45.rlb_req_update_slave_clients.exit_crit_edge, label %for.body.lr.ph.i

if.then45.rlb_req_update_slave_clients.exit_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit

for.body.lr.ph.i:                                 ; preds = %if.then45
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %hash_index.019.i.ph = phi i32 [ %hash_index.0.i160, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %hash_index.016.i, %for.body.lr.ph.i ]
  %tobool.not.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  %38 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_hashtbl.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %hash_index.019.i = phi i32 [ %hash_index.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hash_index.019.i.ph, %for.body.i.outer ]
  %slave1.i = getelementptr %struct.rlb_client_info, ptr %39, i32 %hash_index.019.i, i32 11
  %40 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave1.i, align 4
  %cmp2.i = icmp eq ptr %41, %slave1
  br i1 %cmp2.i, label %land.lhs.true.i112, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i112:                               ; preds = %for.body.i
  %mac_dst.i = getelementptr %struct.rlb_client_info, ptr %39, i32 %hash_index.019.i, i32 3
  %42 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mac_dst.i, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i.i111 = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i.i111, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i112.for.inc.i_crit_edge

land.lhs.true.i112.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i112
  %add.ptr.i.i.i = getelementptr i8, ptr %mac_dst.i, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %46 to i32
  %or.i.i.i = or i32 %43, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, label %for.inc.i.thread

is_valid_ether_addr.exit.i.for.inc.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, %land.lhs.true.i112.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %used_next.i = getelementptr %struct.rlb_client_info, ptr %39, i32 %hash_index.019.i, i32 4
  %47 = ptrtoint ptr %used_next.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %hash_index.0.i = load i32, ptr %used_next.i, align 4
  %cmp.not.i = icmp eq i32 %hash_index.0.i, -1
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %is_valid_ether_addr.exit.i
  %ntt3.i = getelementptr %struct.rlb_client_info, ptr %39, i32 %hash_index.019.i, i32 10
  %48 = ptrtoint ptr %ntt3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ntt3.i, align 1
  %used_next.i159 = getelementptr %struct.rlb_client_info, ptr %39, i32 %hash_index.019.i, i32 4
  %49 = ptrtoint ptr %used_next.i159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %hash_index.0.i160 = load i32, ptr %used_next.i159, align 4
  %cmp.not.i161 = icmp eq i32 %hash_index.0.i160, -1
  br i1 %cmp.not.i161, label %for.inc.i.thread.if.then4.i_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.outer

for.inc.i.thread.if.then4.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.rlb_req_update_slave_clients.exit_crit_edge, label %for.end.i.if.then4.i_crit_edge

for.end.i.if.then4.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.end.i.rlb_req_update_slave_clients.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit

if.then4.i:                                       ; preds = %for.end.i.if.then4.i_crit_edge, %for.inc.i.thread.if.then4.i_crit_edge
  %rx_ntt.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  %50 = ptrtoint ptr %rx_ntt.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %rx_ntt.i, align 4
  %rlb_update_retry_counter.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 12
  %51 = ptrtoint ptr %rlb_update_retry_counter.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %rlb_update_retry_counter.i, align 4
  br label %rlb_req_update_slave_clients.exit

rlb_req_update_slave_clients.exit:                ; preds = %if.then4.i, %for.end.i.rlb_req_update_slave_clients.exit_crit_edge, %if.then45.rlb_req_update_slave_clients.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %if.end47

if.end47:                                         ; preds = %rlb_req_update_slave_clients.exit, %if.then43.if.end47_crit_edge, %bond_slave_can_tx.exit110.if.end47_crit_edge, %land.lhs.true.i105.if.end47_crit_edge, %bond_slave_is_up.exit.i102.if.end47_crit_edge, %if.end34.if.end47_crit_edge
  %disabled_slave.0 = phi ptr [ null, %rlb_req_update_slave_clients.exit ], [ null, %if.then43.if.end47_crit_edge ], [ %slave1, %bond_slave_can_tx.exit110.if.end47_crit_edge ], [ %slave1, %land.lhs.true.i105.if.end47_crit_edge ], [ %slave1, %bond_slave_is_up.exit.i102.if.end47_crit_edge ], [ %slave1, %if.end34.if.end47_crit_edge ]
  %52 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %slave2, align 8
  %state.i.i.i113 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %state.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i.i.i113, align 4
  %and1.i.i.i.i114 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i114)
  %tobool.i.not.i.i115 = icmp eq i32 %and1.i.i.i.i114, 0
  br i1 %tobool.i.not.i.i115, label %if.end47.if.end58_crit_edge, label %bond_slave_is_up.exit.i117

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

bond_slave_is_up.exit.i117:                       ; preds = %if.end47
  %56 = ptrtoint ptr %state.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i.i.i113, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i116 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i116, label %land.lhs.true.i120, label %bond_slave_is_up.exit.i117.if.end58_crit_edge

bond_slave_is_up.exit.i117.if.end58_crit_edge:    ; preds = %bond_slave_is_up.exit.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true.i120:                               ; preds = %bond_slave_is_up.exit.i117
  %link.i118 = getelementptr inbounds %struct.slave, ptr %slave2, i32 0, i32 6
  %59 = ptrtoint ptr %link.i118 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %link.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.i119 = icmp eq i8 %60, 0
  br i1 %cmp.i119, label %bond_slave_can_tx.exit125, label %land.lhs.true.i120.if.end58_crit_edge

land.lhs.true.i120.if.end58_crit_edge:            ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

bond_slave_can_tx.exit125:                        ; preds = %land.lhs.true.i120
  %backup.i.i.i121 = getelementptr inbounds %struct.slave, ptr %slave2, i32 0, i32 8
  %61 = ptrtoint ptr %backup.i.i.i121 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i.i122 = load i8, ptr %backup.i.i.i121, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i122)
  %tobool.not.i.i123 = icmp sgt i8 %bf.load.i.i.i122, -1
  br i1 %tobool.not.i.i123, label %if.then49, label %bond_slave_can_tx.exit125.if.end58_crit_edge

bond_slave_can_tx.exit125.if.end58_crit_edge:     ; preds = %bond_slave_can_tx.exit125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then49:                                        ; preds = %bond_slave_can_tx.exit125
  %dev_addr51 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 86
  %62 = ptrtoint ptr %dev_addr51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr51, align 64
  tail call fastcc void @alb_send_learning_packets(ptr noundef %slave2, ptr noundef %63, i1 noundef zeroext false)
  %rlb_enabled53 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %64 = ptrtoint ptr %rlb_enabled53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rlb_enabled53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool54.not = icmp eq i32 %65, 0
  br i1 %tobool54.not, label %if.then49.if.end58_crit_edge, label %if.then55

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.then49
  %mode_lock.i126 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i126) #10
  %rx_hashtbl_used_head.i127 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %66 = ptrtoint ptr %rx_hashtbl_used_head.i127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %hash_index.016.i128 = load i32, ptr %rx_hashtbl_used_head.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.016.i128)
  %cmp.not17.i129 = icmp eq i32 %hash_index.016.i128, -1
  br i1 %cmp.not17.i129, label %if.then55.rlb_req_update_slave_clients.exit157_crit_edge, label %for.body.lr.ph.i131

if.then55.rlb_req_update_slave_clients.exit157_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit157

for.body.lr.ph.i131:                              ; preds = %if.then55
  %rx_hashtbl.i130 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  br label %for.body.i136.outer

for.body.i136.outer:                              ; preds = %for.inc.i151.thread.for.body.i136.outer_crit_edge, %for.body.lr.ph.i131
  %hash_index.019.i132.ph = phi i32 [ %hash_index.0.i149167, %for.inc.i151.thread.for.body.i136.outer_crit_edge ], [ %hash_index.016.i128, %for.body.lr.ph.i131 ]
  %tobool.not.i152 = phi i1 [ false, %for.inc.i151.thread.for.body.i136.outer_crit_edge ], [ true, %for.body.lr.ph.i131 ]
  %67 = ptrtoint ptr %rx_hashtbl.i130 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_hashtbl.i130, align 4
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.inc.i151.for.body.i136_crit_edge, %for.body.i136.outer
  %hash_index.019.i132 = phi i32 [ %hash_index.0.i149, %for.inc.i151.for.body.i136_crit_edge ], [ %hash_index.019.i132.ph, %for.body.i136.outer ]
  %slave1.i134 = getelementptr %struct.rlb_client_info, ptr %68, i32 %hash_index.019.i132, i32 11
  %69 = ptrtoint ptr %slave1.i134 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %slave1.i134, align 4
  %cmp2.i135 = icmp eq ptr %70, %slave2
  br i1 %cmp2.i135, label %land.lhs.true.i139, label %for.body.i136.for.inc.i151_crit_edge

for.body.i136.for.inc.i151_crit_edge:             ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i151

land.lhs.true.i139:                               ; preds = %for.body.i136
  %mac_dst.i137 = getelementptr %struct.rlb_client_info, ptr %68, i32 %hash_index.019.i132, i32 3
  %71 = ptrtoint ptr %mac_dst.i137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mac_dst.i137, align 4
  %73 = and i32 %72, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i.i138 = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i.i138, label %is_valid_ether_addr.exit.i144, label %land.lhs.true.i139.for.inc.i151_crit_edge

land.lhs.true.i139.for.inc.i151_crit_edge:        ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i151

is_valid_ether_addr.exit.i144:                    ; preds = %land.lhs.true.i139
  %add.ptr.i.i.i140 = getelementptr i8, ptr %mac_dst.i137, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i.i140 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i.i140, align 2
  %conv.i.i.i141 = zext i16 %75 to i32
  %or.i.i.i142 = or i32 %72, %conv.i.i.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i142)
  %cmp.i.i.not.i143 = icmp eq i32 %or.i.i.i142, 0
  br i1 %cmp.i.i.not.i143, label %is_valid_ether_addr.exit.i144.for.inc.i151_crit_edge, label %for.inc.i151.thread

is_valid_ether_addr.exit.i144.for.inc.i151_crit_edge: ; preds = %is_valid_ether_addr.exit.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i151

for.inc.i151:                                     ; preds = %is_valid_ether_addr.exit.i144.for.inc.i151_crit_edge, %land.lhs.true.i139.for.inc.i151_crit_edge, %for.body.i136.for.inc.i151_crit_edge
  %used_next.i148 = getelementptr %struct.rlb_client_info, ptr %68, i32 %hash_index.019.i132, i32 4
  %76 = ptrtoint ptr %used_next.i148 to i32
  call void @__asan_load4_noabort(i32 %76)
  %hash_index.0.i149 = load i32, ptr %used_next.i148, align 4
  %cmp.not.i150 = icmp eq i32 %hash_index.0.i149, -1
  br i1 %cmp.not.i150, label %for.end.i153, label %for.inc.i151.for.body.i136_crit_edge

for.inc.i151.for.body.i136_crit_edge:             ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i136

for.inc.i151.thread:                              ; preds = %is_valid_ether_addr.exit.i144
  %ntt3.i145 = getelementptr %struct.rlb_client_info, ptr %68, i32 %hash_index.019.i132, i32 10
  %77 = ptrtoint ptr %ntt3.i145 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %ntt3.i145, align 1
  %used_next.i148166 = getelementptr %struct.rlb_client_info, ptr %68, i32 %hash_index.019.i132, i32 4
  %78 = ptrtoint ptr %used_next.i148166 to i32
  call void @__asan_load4_noabort(i32 %78)
  %hash_index.0.i149167 = load i32, ptr %used_next.i148166, align 4
  %cmp.not.i150168 = icmp eq i32 %hash_index.0.i149167, -1
  br i1 %cmp.not.i150168, label %for.inc.i151.thread.if.then4.i156_crit_edge, label %for.inc.i151.thread.for.body.i136.outer_crit_edge

for.inc.i151.thread.for.body.i136.outer_crit_edge: ; preds = %for.inc.i151.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i136.outer

for.inc.i151.thread.if.then4.i156_crit_edge:      ; preds = %for.inc.i151.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i156

for.end.i153:                                     ; preds = %for.inc.i151
  br i1 %tobool.not.i152, label %for.end.i153.rlb_req_update_slave_clients.exit157_crit_edge, label %for.end.i153.if.then4.i156_crit_edge

for.end.i153.if.then4.i156_crit_edge:             ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i156

for.end.i153.rlb_req_update_slave_clients.exit157_crit_edge: ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit157

if.then4.i156:                                    ; preds = %for.end.i153.if.then4.i156_crit_edge, %for.inc.i151.thread.if.then4.i156_crit_edge
  %rx_ntt.i154 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  %79 = ptrtoint ptr %rx_ntt.i154 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %rx_ntt.i154, align 4
  %rlb_update_retry_counter.i155 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 12
  %80 = ptrtoint ptr %rlb_update_retry_counter.i155 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %rlb_update_retry_counter.i155, align 4
  br label %rlb_req_update_slave_clients.exit157

rlb_req_update_slave_clients.exit157:             ; preds = %if.then4.i156, %for.end.i153.rlb_req_update_slave_clients.exit157_crit_edge, %if.then55.rlb_req_update_slave_clients.exit157_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i126) #10
  br label %if.end58

if.end58:                                         ; preds = %rlb_req_update_slave_clients.exit157, %if.then49.if.end58_crit_edge, %bond_slave_can_tx.exit125.if.end58_crit_edge, %land.lhs.true.i120.if.end58_crit_edge, %bond_slave_is_up.exit.i117.if.end58_crit_edge, %if.end47.if.end58_crit_edge
  %disabled_slave.1 = phi ptr [ %disabled_slave.0, %rlb_req_update_slave_clients.exit157 ], [ %disabled_slave.0, %if.then49.if.end58_crit_edge ], [ %slave2, %bond_slave_can_tx.exit125.if.end58_crit_edge ], [ %slave2, %land.lhs.true.i120.if.end58_crit_edge ], [ %slave2, %bond_slave_is_up.exit.i117.if.end58_crit_edge ], [ %slave2, %if.end47.if.end58_crit_edge ]
  %rlb_enabled60 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %81 = ptrtoint ptr %rlb_enabled60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rlb_enabled60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool61.not = icmp eq i32 %82, 0
  %.not = xor i1 %22, true
  %brmerge = select i1 %tobool61.not, i1 true, i1 %.not
  br i1 %brmerge, label %if.end58.if.end66_crit_edge, label %if.then63

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %disabled_slave.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disabled_slave.1, align 8
  %dev_addr65 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 86
  %85 = ptrtoint ptr %dev_addr65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_addr65, align 64
  tail call fastcc void @rlb_teach_disabled_mac_on_primary(ptr noundef %bond, ptr noundef %86)
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end58.if.end66_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_alb_set_mac_address(ptr noundef %bond_dev, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %ss.i64 = alloca %struct.__kernel_sockaddr_storage, align 4
  %iter.i56 = alloca ptr, align 4
  %iter.i = alloca ptr, align 4
  %ss.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %tmp_addr.i = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bond_dev, i32 2304
  %__data = getelementptr inbounds %struct.anon.146, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.anon.146, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i) #10
  %5 = call ptr @memset(ptr %ss.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_addr.i) #10
  %6 = getelementptr inbounds [32 x i8], ptr %tmp_addr.i, i32 0, i32 4
  %rlb_enabled.i = getelementptr i8, ptr %bond_dev, i32 2568
  %7 = call ptr @memset(ptr %tmp_addr.i, i32 255, i32 32)
  %8 = ptrtoint ptr %rlb_enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rlb_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.alb_set_mac_address.exit.thread_crit_edge

if.end.alb_set_mac_address.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_mac_address.exit.thread

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lower.i, align 8
  %14 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next_private(ptr noundef %11, ptr noundef nonnull %iter.i) #10
  %tobool2.not82.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not82.i, label %if.end.i.alb_set_mac_address.exit.thread_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.alb_set_mac_address.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_mac_address.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %slave.083.i = phi ptr [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %slave.083.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave.083.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr.i, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.i.i52 = icmp eq i8 %20, 6
  br i1 %cmp.i.i52, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %23 = ptrtoint ptr %tmp_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %6, align 4
  br label %bond_hw_addr_copy.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %20 to i32
  %27 = call ptr @memcpy(ptr %tmp_addr.i, ptr %18, i32 %conv.i)
  br label %bond_hw_addr_copy.exit.i

bond_hw_addr_copy.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %28 = ptrtoint ptr %slave.083.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave.083.i, align 8
  %call6.i = call i32 @dev_set_mac_address(ptr noundef %29, ptr noundef %addr, ptr noundef null) #10
  %30 = ptrtoint ptr %slave.083.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slave.083.i, align 8
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 56
  %32 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i53 = zext i8 %33 to i32
  call void @dev_addr_mod(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %tmp_addr.i, i32 noundef %conv.i.i53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool9.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %unwind.i

for.inc.i:                                        ; preds = %bond_hw_addr_copy.exit.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %call13.i = call ptr @netdev_lower_get_next_private(ptr noundef %35, ptr noundef nonnull %iter.i) #10
  %tobool2.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool2.not.i, label %for.inc.i.alb_set_mac_address.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.alb_set_mac_address.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_mac_address.exit.thread

unwind.i:                                         ; preds = %bond_hw_addr_copy.exit.i
  %__data.i = getelementptr inbounds %struct.anon.146, ptr %ss.i, i32 0, i32 1
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev_addr16.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr16.i, align 64
  %addr_len18.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 56
  %40 = ptrtoint ptr %addr_len18.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr_len18.i, align 1
  %conv19.i = zext i8 %41 to i32
  %42 = call ptr @memcpy(ptr %__data.i, ptr %39, i32 %conv19.i)
  %type.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 32
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %type.i, align 16
  %45 = ptrtoint ptr %ss.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %ss.i, align 4
  %lower23.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %lower23.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lower23.i, align 8
  %48 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %iter.i, align 4
  %call26.i = call ptr @netdev_lower_get_next_private(ptr noundef %37, ptr noundef nonnull %iter.i) #10
  %tobool28.not84.i = icmp eq ptr %call26.i, null
  %cmp85.i = icmp eq ptr %call26.i, %slave.083.i
  %or.cond86.i = or i1 %tobool28.not84.i, %cmp85.i
  br i1 %or.cond86.i, label %alb_set_mac_address.exit.thread81, label %unwind.i.if.end32.i_crit_edge

unwind.i.if.end32.i_crit_edge:                    ; preds = %unwind.i
  br label %if.end32.i

alb_set_mac_address.exit.thread81:                ; preds = %unwind.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_addr.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %cleanup

if.end32.i:                                       ; preds = %bond_hw_addr_copy.exit77.i.if.end32.i_crit_edge, %unwind.i.if.end32.i_crit_edge
  %rollback_slave.087.i = phi ptr [ %call45.i, %bond_hw_addr_copy.exit77.i.if.end32.i_crit_edge ], [ %call26.i, %unwind.i.if.end32.i_crit_edge ]
  %49 = ptrtoint ptr %rollback_slave.087.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rollback_slave.087.i, align 8
  %dev_addr35.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr35.i, align 64
  %addr_len37.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 56
  %53 = ptrtoint ptr %addr_len37.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %addr_len37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %54)
  %cmp.i72.i = icmp eq i8 %54, 6
  br i1 %cmp.i72.i, label %if.then.i75.i, label %if.end.i76.i

if.then.i75.i:                                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  %57 = ptrtoint ptr %tmp_addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %tmp_addr.i, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %52, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i73.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i73.i, align 2
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %6, align 4
  br label %bond_hw_addr_copy.exit77.i

if.end.i76.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv38.i = zext i8 %54 to i32
  %61 = call ptr @memcpy(ptr %tmp_addr.i, ptr %52, i32 %conv38.i)
  br label %bond_hw_addr_copy.exit77.i

bond_hw_addr_copy.exit77.i:                       ; preds = %if.end.i76.i, %if.then.i75.i
  %62 = ptrtoint ptr %rollback_slave.087.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rollback_slave.087.i, align 8
  %call40.i = call i32 @dev_set_mac_address(ptr noundef %63, ptr noundef nonnull %ss.i, ptr noundef null) #10
  %64 = ptrtoint ptr %rollback_slave.087.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rollback_slave.087.i, align 8
  %addr_len.i78.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 56
  %66 = ptrtoint ptr %addr_len.i78.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr_len.i78.i, align 1
  %conv.i79.i = zext i8 %67 to i32
  call void @dev_addr_mod(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %tmp_addr.i, i32 noundef %conv.i79.i) #10
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %call45.i = call ptr @netdev_lower_get_next_private(ptr noundef %69, ptr noundef nonnull %iter.i) #10
  %tobool28.not.i = icmp eq ptr %call45.i, null
  %cmp.i = icmp eq ptr %call45.i, %slave.083.i
  %or.cond.i = or i1 %tobool28.not.i, %cmp.i
  br i1 %or.cond.i, label %alb_set_mac_address.exit, label %bond_hw_addr_copy.exit77.i.if.end32.i_crit_edge

bond_hw_addr_copy.exit77.i.if.end32.i_crit_edge:  ; preds = %bond_hw_addr_copy.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

alb_set_mac_address.exit.thread:                  ; preds = %for.inc.i.alb_set_mac_address.exit.thread_crit_edge, %if.end.i.alb_set_mac_address.exit.thread_crit_edge, %if.end.alb_set_mac_address.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_addr.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  %addr_len.i54 = getelementptr inbounds %struct.net_device, ptr %bond_dev, i32 0, i32 56
  %70 = ptrtoint ptr %addr_len.i54 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %addr_len.i54, align 1
  %conv.i55 = zext i8 %71 to i32
  call void @dev_addr_mod(ptr noundef %bond_dev, i32 noundef 0, ptr noundef %__data, i32 noundef %conv.i55) #10
  %call7 = call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call7, label %alb_set_mac_address.exit.thread.do.end_crit_edge, label %land.lhs.true

alb_set_mac_address.exit.thread.do.end_crit_edge: ; preds = %alb_set_mac_address.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

alb_set_mac_address.exit:                         ; preds = %bond_hw_addr_copy.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_addr.i) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #10
  br label %cleanup

land.lhs.true:                                    ; preds = %alb_set_mac_address.exit.thread
  %call8 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b51 = load i1, ptr @bond_alb_set_mac_address.__warned, align 1
  br i1 %.b51, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bond_alb_set_mac_address.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1770, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %alb_set_mac_address.exit.thread.do.end_crit_edge
  %curr_active_slave = getelementptr i8, ptr %bond_dev, i32 2308
  %72 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %curr_active_slave, align 4
  %tobool14.not = icmp eq ptr %73, null
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %bond_dev, i32 0, i32 86
  %74 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i56) #10
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 8
  %lower.i57 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 13, i32 1
  %78 = ptrtoint ptr %lower.i57 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lower.i57, align 8
  %80 = ptrtoint ptr %iter.i56 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %iter.i56, align 4
  %call.i58 = call ptr @netdev_lower_get_next_private(ptr noundef %77, ptr noundef nonnull %iter.i56) #10
  %tobool.not11.i = icmp eq ptr %call.i58, null
  br i1 %tobool.not11.i, label %if.end16.if.else_crit_edge, label %for.body.lr.ph.i

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end16
  %add.ptr.i.i.i59 = getelementptr i8, ptr %75, i32 4
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.inc.i63.for.body.i61_crit_edge, %for.body.lr.ph.i
  %tmp.012.i = phi ptr [ %call.i58, %for.body.lr.ph.i ], [ %call5.i, %for.inc.i63.for.body.i61_crit_edge ]
  %81 = ptrtoint ptr %tmp.012.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tmp.012.i, align 8
  %dev_addr.i60 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 86
  %83 = ptrtoint ptr %dev_addr.i60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_addr.i60, align 64
  %85 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %75, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %84, align 4
  %xor.i.i.i = xor i32 %88, %86
  %89 = ptrtoint ptr %add.ptr.i.i.i59 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i.i.i59, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %84, i32 4
  %91 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %92, %90
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then19, label %for.inc.i63

for.inc.i63:                                      ; preds = %for.body.i61
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %call5.i = call ptr @netdev_lower_get_next_private(ptr noundef %94, ptr noundef nonnull %iter.i56) #10
  %tobool.not.i62 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i62, label %for.inc.i63.if.else_crit_edge, label %for.inc.i63.for.body.i61_crit_edge

for.inc.i63.for.body.i61_crit_edge:               ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i61

for.inc.i63.if.else_crit_edge:                    ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then19:                                        ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i56) #10
  call fastcc void @alb_swap_mac_addr(ptr noundef nonnull %tmp.012.i, ptr noundef nonnull %73)
  call fastcc void @alb_fasten_mac_swap(ptr noundef %add.ptr.i, ptr noundef nonnull %tmp.012.i, ptr noundef nonnull %73)
  br label %cleanup

if.else:                                          ; preds = %for.inc.i63.if.else_crit_edge, %if.end16.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i56) #10
  %95 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr, align 64
  %97 = ptrtoint ptr %addr_len.i54 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %addr_len.i54, align 1
  %conv = zext i8 %98 to i32
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %73, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss.i64) #10
  %101 = call ptr @memset(ptr %ss.i64, i32 255, i32 128)
  %bond.i = getelementptr inbounds %struct.slave, ptr %73, i32 0, i32 1
  %102 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bond.i, align 4
  %params.i = getelementptr inbounds %struct.bonding, ptr %103, i32 0, i32 19
  %104 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %105)
  %cmp.i65 = icmp eq i32 %105, 5
  br i1 %cmp.i65, label %if.then.i, label %if.end.i70

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %100, i32 noundef 0, ptr noundef %96, i32 noundef %conv) #10
  br label %alb_set_slave_mac_addr.exit

if.end.i70:                                       ; preds = %if.else
  %__data.i66 = getelementptr inbounds %struct.anon.146, ptr %ss.i64, i32 0, i32 1
  %106 = call ptr @memcpy(ptr %__data.i66, ptr %96, i32 %conv)
  %type.i67 = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 32
  %107 = ptrtoint ptr %type.i67 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %type.i67, align 16
  %109 = ptrtoint ptr %ss.i64 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %ss.i64, align 4
  %call.i68 = call i32 @dev_set_mac_address(ptr noundef %100, ptr noundef nonnull %ss.i64, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end.i70.alb_set_slave_mac_addr.exit_crit_edge, label %if.then2.i

if.end.i70.alb_set_slave_mac_addr.exit_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %alb_set_slave_mac_addr.exit

if.then2.i:                                       ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bond.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %113, ptr noundef nonnull @.str.19, ptr noundef %100) #15
  br label %alb_set_slave_mac_addr.exit

alb_set_slave_mac_addr.exit:                      ; preds = %if.then2.i, %if.end.i70.alb_set_slave_mac_addr.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss.i64) #10
  %114 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_addr, align 64
  call fastcc void @alb_send_learning_packets(ptr noundef nonnull %73, ptr noundef %115, i1 noundef zeroext false)
  %116 = ptrtoint ptr %rlb_enabled.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rlb_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool23.not = icmp eq i32 %117, 0
  br i1 %tobool23.not, label %alb_set_slave_mac_addr.exit.cleanup_crit_edge, label %if.then24

alb_set_slave_mac_addr.exit.cleanup_crit_edge:    ; preds = %alb_set_slave_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %alb_set_slave_mac_addr.exit
  %mode_lock.i = getelementptr i8, ptr %bond_dev, i32 2340
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %rx_hashtbl_used_head.i = getelementptr i8, ptr %bond_dev, i32 2576
  %118 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %hash_index.016.i = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hash_index.016.i)
  %cmp.not17.i = icmp eq i32 %hash_index.016.i, -1
  br i1 %cmp.not17.i, label %if.then24.rlb_req_update_slave_clients.exit_crit_edge, label %for.body.lr.ph.i72

if.then24.rlb_req_update_slave_clients.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit

for.body.lr.ph.i72:                               ; preds = %if.then24
  %rx_hashtbl.i = getelementptr i8, ptr %bond_dev, i32 2572
  br label %for.body.i73.outer

for.body.i73.outer:                               ; preds = %for.inc.i77.thread.for.body.i73.outer_crit_edge, %for.body.lr.ph.i72
  %hash_index.019.i.ph = phi i32 [ %hash_index.0.i88, %for.inc.i77.thread.for.body.i73.outer_crit_edge ], [ %hash_index.016.i, %for.body.lr.ph.i72 ]
  %tobool.not.i78 = phi i1 [ false, %for.inc.i77.thread.for.body.i73.outer_crit_edge ], [ true, %for.body.lr.ph.i72 ]
  %119 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_hashtbl.i, align 4
  br label %for.body.i73

for.body.i73:                                     ; preds = %for.inc.i77.for.body.i73_crit_edge, %for.body.i73.outer
  %hash_index.019.i = phi i32 [ %hash_index.0.i, %for.inc.i77.for.body.i73_crit_edge ], [ %hash_index.019.i.ph, %for.body.i73.outer ]
  %slave1.i = getelementptr %struct.rlb_client_info, ptr %120, i32 %hash_index.019.i, i32 11
  %121 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %slave1.i, align 4
  %cmp2.i = icmp eq ptr %122, %73
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i73.for.inc.i77_crit_edge

for.body.i73.for.inc.i77_crit_edge:               ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i77

land.lhs.true.i:                                  ; preds = %for.body.i73
  %mac_dst.i = getelementptr %struct.rlb_client_info, ptr %120, i32 %hash_index.019.i, i32 3
  %123 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mac_dst.i, align 4
  %125 = and i32 %124, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i.for.inc.i77_crit_edge

land.lhs.true.i.for.inc.i77_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i77

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i
  %add.ptr.i.i.i74 = getelementptr i8, ptr %mac_dst.i, i32 4
  %126 = ptrtoint ptr %add.ptr.i.i.i74 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.i.i.i74, align 2
  %conv.i.i.i = zext i16 %127 to i32
  %or.i.i.i75 = or i32 %124, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i75)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i75, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.for.inc.i77_crit_edge, label %for.inc.i77.thread

is_valid_ether_addr.exit.i.for.inc.i77_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i77

for.inc.i77:                                      ; preds = %is_valid_ether_addr.exit.i.for.inc.i77_crit_edge, %land.lhs.true.i.for.inc.i77_crit_edge, %for.body.i73.for.inc.i77_crit_edge
  %used_next.i = getelementptr %struct.rlb_client_info, ptr %120, i32 %hash_index.019.i, i32 4
  %128 = ptrtoint ptr %used_next.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %hash_index.0.i = load i32, ptr %used_next.i, align 4
  %cmp.not.i = icmp eq i32 %hash_index.0.i, -1
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i77.for.body.i73_crit_edge

for.inc.i77.for.body.i73_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73

for.inc.i77.thread:                               ; preds = %is_valid_ether_addr.exit.i
  %ntt3.i = getelementptr %struct.rlb_client_info, ptr %120, i32 %hash_index.019.i, i32 10
  %129 = ptrtoint ptr %ntt3.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %ntt3.i, align 1
  %used_next.i87 = getelementptr %struct.rlb_client_info, ptr %120, i32 %hash_index.019.i, i32 4
  %130 = ptrtoint ptr %used_next.i87 to i32
  call void @__asan_load4_noabort(i32 %130)
  %hash_index.0.i88 = load i32, ptr %used_next.i87, align 4
  %cmp.not.i89 = icmp eq i32 %hash_index.0.i88, -1
  br i1 %cmp.not.i89, label %for.inc.i77.thread.if.then4.i_crit_edge, label %for.inc.i77.thread.for.body.i73.outer_crit_edge

for.inc.i77.thread.for.body.i73.outer_crit_edge:  ; preds = %for.inc.i77.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i73.outer

for.inc.i77.thread.if.then4.i_crit_edge:          ; preds = %for.inc.i77.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.end.i:                                        ; preds = %for.inc.i77
  br i1 %tobool.not.i78, label %for.end.i.rlb_req_update_slave_clients.exit_crit_edge, label %for.end.i.if.then4.i_crit_edge

for.end.i.if.then4.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

for.end.i.rlb_req_update_slave_clients.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_req_update_slave_clients.exit

if.then4.i:                                       ; preds = %for.end.i.if.then4.i_crit_edge, %for.inc.i77.thread.if.then4.i_crit_edge
  %rx_ntt.i = getelementptr i8, ptr %bond_dev, i32 2580
  %131 = ptrtoint ptr %rx_ntt.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %rx_ntt.i, align 4
  %rlb_update_retry_counter.i = getelementptr i8, ptr %bond_dev, i32 2600
  %132 = ptrtoint ptr %rlb_update_retry_counter.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %rlb_update_retry_counter.i, align 4
  br label %rlb_req_update_slave_clients.exit

rlb_req_update_slave_clients.exit:                ; preds = %if.then4.i, %for.end.i.rlb_req_update_slave_clients.exit_crit_edge, %if.then24.rlb_req_update_slave_clients.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %rlb_req_update_slave_clients.exit, %alb_set_slave_mac_addr.exit.cleanup_crit_edge, %if.then19, %do.end.cleanup_crit_edge, %alb_set_mac_address.exit, %alb_set_mac_address.exit.thread81, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call6.i, %alb_set_mac_address.exit ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %alb_set_slave_mac_addr.exit.cleanup_crit_edge ], [ 0, %rlb_req_update_slave_clients.exit ], [ 0, %if.then19 ], [ %call6.i, %alb_set_mac_address.exit.thread81 ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_alb_clear_vlan(ptr noundef %bond, i16 noundef zeroext %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rlb_enabled = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 4
  %0 = ptrtoint ptr %rlb_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rlb_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %rx_hashtbl_used_head.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %2 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not16.i = icmp eq i32 %3, -1
  br i1 %cmp.not16.i, label %if.then.rlb_clear_vlan.exit_crit_edge, label %while.body.lr.ph.i

if.then.rlb_clear_vlan.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_clear_vlan.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %curr_index.017.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %7, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_hashtbl.i, align 4
  %used_next.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %curr_index.017.i, i32 4
  %6 = ptrtoint ptr %used_next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_next.i, align 4
  %vlan_id3.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %curr_index.017.i, i32 12
  %8 = ptrtoint ptr %vlan_id3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vlan_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %vlan_id)
  %cmp5.i = icmp eq i16 %9, %vlan_id
  br i1 %cmp5.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %used_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %curr_index.017.i, i32 5
  %10 = ptrtoint ptr %used_prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used_prev.i.i.i, align 4
  %12 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_hashtbl_used_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %curr_index.017.i)
  %cmp.i.i.i = icmp eq i32 %13, %curr_index.017.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.if.end.i.i.i_crit_edge

if.then.i.if.end.i.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %rx_hashtbl_used_head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %rx_hashtbl_used_head.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.not.i.i.i = icmp eq i32 %11, -1
  br i1 %cmp4.not.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %used_next8.i.i.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %11, i32 4
  %15 = ptrtoint ptr %used_next8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %used_next8.i.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp10.not.i.i.i = icmp eq i32 %7, -1
  br i1 %cmp10.not.i.i.i, label %if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge, label %if.then11.i.i.i

if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_delete_table_entry_dst.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_hashtbl.i, align 4
  %used_prev14.i.i.i = getelementptr %struct.rlb_client_info, ptr %17, i32 %7, i32 5
  %18 = ptrtoint ptr %used_prev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %used_prev14.i.i.i, align 4
  br label %rlb_delete_table_entry_dst.exit.i.i

rlb_delete_table_entry_dst.exit.i.i:              ; preds = %if.then11.i.i.i, %if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge
  %19 = ptrtoint ptr %used_next.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %used_next.i, align 4
  %20 = ptrtoint ptr %used_prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %used_prev.i.i.i, align 4
  %assigned.i.i.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %curr_index.017.i, i32 9
  %21 = ptrtoint ptr %assigned.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %assigned.i.i.i, align 4
  %slave.i.i.i = getelementptr %struct.rlb_client_info, ptr %5, i32 %curr_index.017.i, i32 11
  %22 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %slave.i.i.i, align 4
  %23 = ptrtoint ptr %vlan_id3.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %vlan_id3.i, align 4
  %24 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_next.i.i.i = getelementptr %struct.rlb_client_info, ptr %25, i32 %curr_index.017.i, i32 6
  %26 = ptrtoint ptr %src_next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_next.i.i.i, align 4
  %src_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %25, i32 %curr_index.017.i, i32 7
  %28 = ptrtoint ptr %src_prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_prev.i.i.i, align 4
  store i32 -1, ptr %src_next.i.i.i, align 4
  %30 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_prev8.i.i.i = getelementptr %struct.rlb_client_info, ptr %30, i32 %curr_index.017.i, i32 7
  %31 = ptrtoint ptr %src_prev8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %src_prev8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.not.i.i.i = icmp eq i32 %27, -1
  br i1 %cmp.not.i.i.i, label %rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge, label %if.then.i9.i.i

rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge: ; preds = %rlb_delete_table_entry_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i10.i.i

if.then.i9.i.i:                                   ; preds = %rlb_delete_table_entry_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_prev11.i.i.i = getelementptr %struct.rlb_client_info, ptr %33, i32 %27, i32 7
  %34 = ptrtoint ptr %src_prev11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %src_prev11.i.i.i, align 4
  br label %if.end.i10.i.i

if.end.i10.i.i:                                   ; preds = %if.then.i9.i.i, %rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp12.i.i.i = icmp eq i32 %29, -1
  br i1 %cmp12.i.i.i, label %if.end.i10.i.i.if.end.i_crit_edge, label %if.end14.i.i.i

if.end.i10.i.i.if.end.i_crit_edge:                ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end14.i.i.i:                                   ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_first.i.i.i = getelementptr %struct.rlb_client_info, ptr %36, i32 %29, i32 8
  %37 = ptrtoint ptr %src_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %curr_index.017.i)
  %cmp17.i.i.i = icmp eq i32 %38, %curr_index.017.i
  %src_next24.i.i.i = getelementptr %struct.rlb_client_info, ptr %36, i32 %29, i32 6
  %src_first.sink.i.i.i = select i1 %cmp17.i.i.i, ptr %src_first.i.i.i, ptr %src_next24.i.i.i
  %39 = ptrtoint ptr %src_first.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %27, ptr %src_first.sink.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end14.i.i.i, %if.end.i10.i.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq i32 %7, -1
  br i1 %cmp.not.i, label %if.end.i.rlb_clear_vlan.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.rlb_clear_vlan.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_clear_vlan.exit

rlb_clear_vlan.exit:                              ; preds = %if.end.i.rlb_clear_vlan.exit_crit_edge, %if.then.rlb_clear_vlan.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  br label %if.end

if.end:                                           ; preds = %rlb_clear_vlan.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rlb_arp_recv(ptr noundef %skb, ptr noundef %bond, ptr nocapture noundef readonly %slave) #0 align 64 {
entry:
  %_arp = alloca %struct.arp_pkt, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_arp.sroa.gep = getelementptr inbounds %struct.arp_pkt, ptr %_arp, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %_arp) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = call ptr @memset(ptr %_arp, i32 255, i32 28)
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %2)
  %cmp.not = icmp eq i16 %2, 2054
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 27
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !85

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.out_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arp, i32 noundef 28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %lor.lhs.false.i.i.if.end3_crit_edge

lor.lhs.false.i.i.if.end3_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %.sroa.gep = getelementptr inbounds %struct.arp_pkt, ptr %8, i32 0, i32 6
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %skb_header_pointer.exit.out_crit_edge, label %skb_header_pointer.exit.if.end3_crit_edge

skb_header_pointer.exit.if.end3_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

skb_header_pointer.exit.out_crit_edge:            ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %skb_header_pointer.exit.if.end3_crit_edge, %lor.lhs.false.i.i.if.end3_crit_edge
  %retval.0.i.i52 = phi ptr [ %8, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_arp, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %retval.0.i.i52.sroa.phi = phi ptr [ %.sroa.gep, %skb_header_pointer.exit.if.end3_crit_edge ], [ %_arp.sroa.gep, %lor.lhs.false.i.i.if.end3_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i.i52.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %retval.0.i.i52.sroa.phi, align 1
  %arrayidx.i.1.i = getelementptr i8, ptr %retval.0.i.i52.sroa.phi, i32 1
  %11 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.1.i, align 1
  %xor6.i.1.i = xor i8 %12, %10
  %arrayidx.i.2.i = getelementptr i8, ptr %retval.0.i.i52.sroa.phi, i32 2
  %13 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.2.i, align 1
  %xor6.i.2.i = xor i8 %xor6.i.1.i, %14
  %arrayidx.i.3.i = getelementptr i8, ptr %retval.0.i.i52.sroa.phi, i32 3
  %15 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.3.i, align 1
  %xor6.i.3.i = xor i8 %xor6.i.2.i, %16
  %conv.i = zext i8 %xor6.i.3.i to i32
  %mode_lock.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %rx_hashtbl.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %17 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_first.i = getelementptr %struct.rlb_client_info, ptr %18, i32 %conv.i, i32 8
  %19 = ptrtoint ptr %src_first.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_first.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.not24.i = icmp eq i32 %20, -1
  br i1 %cmp.not24.i, label %if.end3.rlb_purge_src_ip.exit_crit_edge, label %while.body.lr.ph.i

if.end3.rlb_purge_src_ip.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_purge_src_ip.exit

while.body.lr.ph.i:                               ; preds = %if.end3
  %mac_src.i = getelementptr inbounds %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 5
  %add.ptr.i.i.i = getelementptr %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 5, i32 4
  %rx_hashtbl_used_head.i.i.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %index.025.i = phi i32 [ %20, %while.body.lr.ph.i ], [ %24, %if.end.i.while.body.i_crit_edge ]
  %21 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_hashtbl.i, align 4
  %arrayidx4.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i
  %src_next.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 6
  %23 = ptrtoint ptr %src_next.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_next.i, align 4
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i, align 4
  %27 = ptrtoint ptr %retval.0.i.i52.sroa.phi to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %retval.0.i.i52.sroa.phi, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp7.i = icmp eq i32 %26, %28
  br i1 %cmp7.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %mac_src9.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 2
  %29 = ptrtoint ptr %mac_src.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mac_src.i, align 4
  %31 = ptrtoint ptr %mac_src9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac_src9.i, align 4
  %xor.i.i.i = xor i32 %32, %30
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %mac_src9.i, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %36, %34
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %used_next.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 4
  %37 = ptrtoint ptr %used_next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %used_next.i.i.i, align 4
  %used_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 5
  %39 = ptrtoint ptr %used_prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %used_prev.i.i.i, align 4
  %41 = ptrtoint ptr %rx_hashtbl_used_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_hashtbl_used_head.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %index.025.i)
  %cmp.i.i23.i = icmp eq i32 %42, %index.025.i
  br i1 %cmp.i.i23.i, label %if.then.i.i.i, label %if.then.i.if.end.i.i.i_crit_edge

if.then.i.if.end.i.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %rx_hashtbl_used_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %rx_hashtbl_used_head.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp4.not.i.i.i = icmp eq i32 %40, -1
  br i1 %cmp4.not.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %used_next8.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %40, i32 4
  %44 = ptrtoint ptr %used_next8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %used_next8.i.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp10.not.i.i.i = icmp eq i32 %38, -1
  br i1 %cmp10.not.i.i.i, label %if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge, label %if.then11.i.i.i

if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_delete_table_entry_dst.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_hashtbl.i, align 4
  %used_prev14.i.i.i = getelementptr %struct.rlb_client_info, ptr %46, i32 %38, i32 5
  %47 = ptrtoint ptr %used_prev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %40, ptr %used_prev14.i.i.i, align 4
  br label %rlb_delete_table_entry_dst.exit.i.i

rlb_delete_table_entry_dst.exit.i.i:              ; preds = %if.then11.i.i.i, %if.end9.i.i.i.rlb_delete_table_entry_dst.exit.i.i_crit_edge
  %48 = ptrtoint ptr %used_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %used_next.i.i.i, align 4
  %49 = ptrtoint ptr %used_prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %used_prev.i.i.i, align 4
  %assigned.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 9
  %50 = ptrtoint ptr %assigned.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %assigned.i.i.i, align 4
  %slave.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 11
  %51 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %slave.i.i.i, align 4
  %vlan_id.i.i.i = getelementptr %struct.rlb_client_info, ptr %22, i32 %index.025.i, i32 12
  %52 = ptrtoint ptr %vlan_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %vlan_id.i.i.i, align 4
  %53 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_next.i.i.i = getelementptr %struct.rlb_client_info, ptr %54, i32 %index.025.i, i32 6
  %55 = ptrtoint ptr %src_next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_next.i.i.i, align 4
  %src_prev.i.i.i = getelementptr %struct.rlb_client_info, ptr %54, i32 %index.025.i, i32 7
  %57 = ptrtoint ptr %src_prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_prev.i.i.i, align 4
  store i32 -1, ptr %src_next.i.i.i, align 4
  %59 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_prev8.i.i.i = getelementptr %struct.rlb_client_info, ptr %59, i32 %index.025.i, i32 7
  %60 = ptrtoint ptr %src_prev8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %src_prev8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.not.i.i.i = icmp eq i32 %56, -1
  br i1 %cmp.not.i.i.i, label %rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge, label %if.then.i9.i.i

rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge: ; preds = %rlb_delete_table_entry_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i10.i.i

if.then.i9.i.i:                                   ; preds = %rlb_delete_table_entry_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_prev11.i.i.i = getelementptr %struct.rlb_client_info, ptr %62, i32 %56, i32 7
  %63 = ptrtoint ptr %src_prev11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %src_prev11.i.i.i, align 4
  br label %if.end.i10.i.i

if.end.i10.i.i:                                   ; preds = %if.then.i9.i.i, %rlb_delete_table_entry_dst.exit.i.i.if.end.i10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp12.i.i.i = icmp eq i32 %58, -1
  br i1 %cmp12.i.i.i, label %if.end.i10.i.i.if.end.i_crit_edge, label %if.end14.i.i.i

if.end.i10.i.i.if.end.i_crit_edge:                ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end14.i.i.i:                                   ; preds = %if.end.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_hashtbl.i, align 4
  %src_first.i.i.i = getelementptr %struct.rlb_client_info, ptr %65, i32 %58, i32 8
  %66 = ptrtoint ptr %src_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %src_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %index.025.i)
  %cmp17.i.i.i = icmp eq i32 %67, %index.025.i
  %src_next24.i.i.i = getelementptr %struct.rlb_client_info, ptr %65, i32 %58, i32 6
  %src_first.sink.i.i.i = select i1 %cmp17.i.i.i, ptr %src_first.i.i.i, ptr %src_next24.i.i.i
  %68 = ptrtoint ptr %src_first.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %56, ptr %src_first.sink.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end14.i.i.i, %if.end.i10.i.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %cmp.not.i = icmp eq i32 %24, -1
  br i1 %cmp.not.i, label %if.end.i.rlb_purge_src_ip.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.rlb_purge_src_ip.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_purge_src_ip.exit

rlb_purge_src_ip.exit:                            ; preds = %if.end.i.rlb_purge_src_ip.exit_crit_edge, %if.end3.rlb_purge_src_ip.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  %op_code = getelementptr inbounds %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 4
  %69 = ptrtoint ptr %op_code to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %op_code, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %70)
  %cmp5 = icmp eq i16 %70, 2
  br i1 %cmp5, label %if.then7, label %rlb_purge_src_ip.exit.out_crit_edge

rlb_purge_src_ip.exit.out_crit_edge:              ; preds = %rlb_purge_src_ip.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then7:                                         ; preds = %rlb_purge_src_ip.exit
  call void @_raw_spin_lock_bh(ptr noundef %mode_lock.i) #10
  %71 = ptrtoint ptr %retval.0.i.i52.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %retval.0.i.i52.sroa.phi, align 1
  %73 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.1.i, align 1
  %xor6.i.1.i28 = xor i8 %74, %72
  %75 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.2.i, align 1
  %xor6.i.2.i30 = xor i8 %xor6.i.1.i28, %76
  %77 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.3.i, align 1
  %xor6.i.3.i32 = xor i8 %xor6.i.2.i30, %78
  %conv.i33 = zext i8 %xor6.i.3.i32 to i32
  %79 = ptrtoint ptr %rx_hashtbl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_hashtbl.i, align 4
  %assigned.i = getelementptr %struct.rlb_client_info, ptr %80, i32 %conv.i33, i32 9
  %81 = ptrtoint ptr %assigned.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %assigned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.then7.rlb_update_entry_from_arp.exit_crit_edge, label %land.lhs.true.i35

if.then7.rlb_update_entry_from_arp.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_entry_from_arp.exit

land.lhs.true.i35:                                ; preds = %if.then7
  %arrayidx.i = getelementptr %struct.rlb_client_info, ptr %80, i32 %conv.i33
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %ip_dst.i = getelementptr inbounds %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 8
  %85 = ptrtoint ptr %ip_dst.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %ip_dst.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp.i = icmp eq i32 %84, %86
  br i1 %cmp.i, label %land.lhs.true4.i, label %land.lhs.true.i35.rlb_update_entry_from_arp.exit_crit_edge

land.lhs.true.i35.rlb_update_entry_from_arp.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_entry_from_arp.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i35
  %ip_dst5.i = getelementptr %struct.rlb_client_info, ptr %80, i32 %conv.i33, i32 1
  %87 = ptrtoint ptr %ip_dst5.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ip_dst5.i, align 4
  %89 = ptrtoint ptr %retval.0.i.i52.sroa.phi to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %retval.0.i.i52.sroa.phi, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp7.i36 = icmp eq i32 %88, %90
  br i1 %cmp7.i36, label %land.lhs.true9.i, label %land.lhs.true4.i.rlb_update_entry_from_arp.exit_crit_edge

land.lhs.true4.i.rlb_update_entry_from_arp.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_entry_from_arp.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true4.i
  %mac_dst.i = getelementptr %struct.rlb_client_info, ptr %80, i32 %conv.i33, i32 3
  %mac_src.i37 = getelementptr inbounds %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 5
  %91 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mac_dst.i, align 4
  %93 = ptrtoint ptr %mac_src.i37 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mac_src.i37, align 4
  %xor.i.i.i38 = xor i32 %94, %92
  %add.ptr.i.i.i39 = getelementptr i8, ptr %mac_dst.i, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i.i39 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i.i.i39, align 2
  %add.ptr1.i.i.i40 = getelementptr %struct.arp_pkt, ptr %retval.0.i.i52, i32 0, i32 5, i32 4
  %97 = ptrtoint ptr %add.ptr1.i.i.i40 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr1.i.i.i40, align 2
  %xor37.i.i.i41 = xor i16 %98, %96
  %xor3.i.i.i42 = zext i16 %xor37.i.i.i41 to i32
  %or.i.i.i43 = or i32 %xor.i.i.i38, %xor3.i.i.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i43)
  %cmp.i.i.i44 = icmp eq i32 %or.i.i.i43, 0
  br i1 %cmp.i.i.i44, label %land.lhs.true9.i.rlb_update_entry_from_arp.exit_crit_edge, label %if.then.i45

land.lhs.true9.i.rlb_update_entry_from_arp.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_update_entry_from_arp.exit

if.then.i45:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %mac_dst.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %94, ptr %mac_dst.i, align 4
  %100 = ptrtoint ptr %add.ptr1.i.i.i40 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr1.i.i.i40, align 2
  %102 = ptrtoint ptr %add.ptr.i.i.i39 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %add.ptr.i.i.i39, align 2
  %ntt.i = getelementptr %struct.rlb_client_info, ptr %80, i32 %conv.i33, i32 10
  %103 = ptrtoint ptr %ntt.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %ntt.i, align 1
  %rx_ntt.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  %104 = ptrtoint ptr %rx_ntt.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %rx_ntt.i, align 4
  br label %rlb_update_entry_from_arp.exit

rlb_update_entry_from_arp.exit:                   ; preds = %if.then.i45, %land.lhs.true9.i.rlb_update_entry_from_arp.exit_crit_edge, %land.lhs.true4.i.rlb_update_entry_from_arp.exit_crit_edge, %land.lhs.true.i35.rlb_update_entry_from_arp.exit_crit_edge, %if.then7.rlb_update_entry_from_arp.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rlb_arp_recv.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rlb_arp_recv, %if.then13)) #10
          to label %out [label %if.then13], !srcloc !81

if.then13:                                        ; preds = %rlb_update_entry_from_arp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bond, align 8
  %107 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %slave, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rlb_arp_recv.__UNIQUE_ID_ddebug491, ptr noundef %106, ptr noundef nonnull @.str.7, ptr noundef %108) #10
  br label %out

out:                                              ; preds = %if.then13, %rlb_update_entry_from_arp.exit, %rlb_purge_src_ip.exit.out_crit_edge, %skb_header_pointer.exit.out_crit_edge, %lor.lhs.false.i.i.out_crit_edge, %if.end.i.i.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %_arp) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_dev_queue_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rlb_choose_channel(ptr nocapture noundef readonly %skb, ptr noundef %bond, ptr nocapture noundef readonly %arp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %mode_lock) #10
  %curr_active_slave1 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %0 = ptrtoint ptr %curr_active_slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %curr_active_slave1, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b164 = load i1, ptr @rlb_choose_channel.__warned, align 1
  br i1 %.b164, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rlb_choose_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 563, ptr noundef nonnull @.str.1) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %ip_dst = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 8
  %2 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_dst, align 1
  %arrayidx.i.1 = getelementptr i8, ptr %ip_dst, i32 1
  %4 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.1, align 1
  %xor6.i.1 = xor i8 %5, %3
  %arrayidx.i.2 = getelementptr i8, ptr %ip_dst, i32 2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.2, align 1
  %xor6.i.2 = xor i8 %7, %xor6.i.1
  %arrayidx.i.3 = getelementptr i8, ptr %ip_dst, i32 3
  %8 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.3, align 1
  %xor6.i.3 = xor i8 %9, %xor6.i.2
  %conv = zext i8 %xor6.i.3 to i32
  %rx_hashtbl = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_hashtbl, align 4
  %arrayidx = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv
  %assigned = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 9
  %12 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %do.end8.if.end44_crit_edge, label %if.then12

do.end8.if.end44_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then12:                                        ; preds = %do.end8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %ip_src13 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 6
  %16 = ptrtoint ptr %ip_src13 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ip_src13, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp eq i32 %15, %17
  br i1 %cmp, label %land.lhs.true15, label %if.then12.if.else_crit_edge

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true15:                                  ; preds = %if.then12
  %ip_dst16 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 1
  %18 = ptrtoint ptr %ip_dst16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_dst16, align 4
  %20 = ptrtoint ptr %ip_dst to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ip_dst, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp18 = icmp eq i32 %19, %21
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true15
  %mac_dst = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 7
  %22 = ptrtoint ptr %mac_dst to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_dst, align 2
  %add.ptr1.i = getelementptr %struct.arp_pkt, ptr %arp, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %25, %23
  %add.ptr3.i = getelementptr %struct.arp_pkt, ptr %arp, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %27
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then20.if.end27_crit_edge, label %if.then22

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %mac_dst23 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 3
  %28 = ptrtoint ptr %mac_dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac_dst, align 4
  %30 = ptrtoint ptr %mac_dst23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mac_dst23, align 4
  %31 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr3.i, align 2
  %add.ptr1.i165 = getelementptr i8, ptr %mac_dst23, i32 4
  %33 = ptrtoint ptr %add.ptr1.i165 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i165, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then20.if.end27_crit_edge
  %mac_src = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 2
  %mac_src29 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 5
  %34 = ptrtoint ptr %mac_src29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_src29, align 4
  %36 = ptrtoint ptr %mac_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mac_src, align 4
  %add.ptr.i166 = getelementptr %struct.arp_pkt, ptr %arp, i32 0, i32 5, i32 4
  %37 = ptrtoint ptr %add.ptr.i166 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i166, align 2
  %add.ptr1.i167 = getelementptr i8, ptr %mac_src, i32 4
  %39 = ptrtoint ptr %add.ptr1.i167 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i167, align 2
  %slave = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 11
  %40 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave, align 4
  %tobool31.not = icmp eq ptr %41, null
  br i1 %tobool31.not, label %if.end27.if.end44_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27.if.end44_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.then12.if.else_crit_edge
  %tobool35.not = icmp eq ptr %1, null
  br i1 %tobool35.not, label %if.else.if.end44_crit_edge, label %land.lhs.true36

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true36:                                  ; preds = %if.else
  %slave37 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 11
  %42 = ptrtoint ptr %slave37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave37, align 4
  %cmp38.not = icmp eq ptr %43, %1
  br i1 %cmp38.not, label %land.lhs.true36.if.end44_crit_edge, label %if.then40

land.lhs.true36.if.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %slave37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %1, ptr %slave37, align 4
  tail call fastcc void @rlb_update_client(ptr noundef %arrayidx)
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %land.lhs.true36.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.end27.if.end44_crit_edge, %do.end8.if.end44_crit_edge
  %call45 = tail call fastcc ptr @__rlb_next_rx_slave(ptr noundef %bond)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  %45 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool50.not = icmp eq i8 %46, 0
  br i1 %tobool50.not, label %if.then47.if.then56_crit_edge, label %land.lhs.true51

if.then47.if.then56_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

land.lhs.true51:                                  ; preds = %if.then47
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %ip_src53 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 6
  %49 = ptrtoint ptr %ip_src53 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ip_src53, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp54 = icmp eq i32 %48, %50
  br i1 %cmp54, label %land.lhs.true51.if.end60_crit_edge, label %land.lhs.true51.if.then56_crit_edge

land.lhs.true51.if.then56_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

land.lhs.true51.if.end60_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then56:                                        ; preds = %land.lhs.true51.if.then56_crit_edge, %if.then47.if.then56_crit_edge
  %ip_src57 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 6
  %51 = ptrtoint ptr %ip_src57 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ip_src57, align 1
  %arrayidx.i170.1 = getelementptr i8, ptr %ip_src57, i32 1
  %53 = ptrtoint ptr %arrayidx.i170.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i170.1, align 1
  %xor6.i171.1 = xor i8 %54, %52
  %arrayidx.i170.2 = getelementptr i8, ptr %ip_src57, i32 2
  %55 = ptrtoint ptr %arrayidx.i170.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i170.2, align 1
  %xor6.i171.2 = xor i8 %56, %xor6.i171.1
  %arrayidx.i170.3 = getelementptr i8, ptr %ip_src57, i32 3
  %57 = ptrtoint ptr %arrayidx.i170.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i170.3, align 1
  %xor6.i171.3 = xor i8 %58, %xor6.i171.2
  %conv59 = zext i8 %xor6.i171.3 to i32
  %59 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_hashtbl, align 4
  %src_next.i = getelementptr %struct.rlb_client_info, ptr %60, i32 %conv, i32 6
  %61 = ptrtoint ptr %src_next.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_next.i, align 4
  %src_prev.i = getelementptr %struct.rlb_client_info, ptr %60, i32 %conv, i32 7
  %63 = ptrtoint ptr %src_prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_prev.i, align 4
  store i32 -1, ptr %src_next.i, align 4
  %65 = load ptr, ptr %rx_hashtbl, align 4
  %src_prev8.i = getelementptr %struct.rlb_client_info, ptr %65, i32 %conv, i32 7
  %66 = ptrtoint ptr %src_prev8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %src_prev8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.not.i = icmp eq i32 %62, -1
  br i1 %cmp.not.i, label %if.then56.if.end.i_crit_edge, label %if.then.i

if.then56.if.end.i_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_hashtbl, align 4
  %src_prev11.i = getelementptr %struct.rlb_client_info, ptr %68, i32 %62, i32 7
  %69 = ptrtoint ptr %src_prev11.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %src_prev11.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then56.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp12.i = icmp eq i32 %64, -1
  br i1 %cmp12.i, label %if.end.i.rlb_src_unlink.exit_crit_edge, label %if.end14.i

if.end.i.rlb_src_unlink.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_src_unlink.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_hashtbl, align 4
  %src_first.i = getelementptr %struct.rlb_client_info, ptr %71, i32 %64, i32 8
  %72 = ptrtoint ptr %src_first.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_first.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv)
  %cmp17.i = icmp eq i32 %73, %conv
  %src_next24.i = getelementptr %struct.rlb_client_info, ptr %71, i32 %64, i32 6
  %src_first.sink.i = select i1 %cmp17.i, ptr %src_first.i, ptr %src_next24.i
  %74 = ptrtoint ptr %src_first.sink.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %62, ptr %src_first.sink.i, align 4
  br label %rlb_src_unlink.exit

rlb_src_unlink.exit:                              ; preds = %if.end14.i, %if.end.i.rlb_src_unlink.exit_crit_edge
  %75 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_hashtbl, align 4
  %src_prev.i177 = getelementptr %struct.rlb_client_info, ptr %76, i32 %conv, i32 7
  %77 = ptrtoint ptr %src_prev.i177 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv59, ptr %src_prev.i177, align 4
  %78 = load ptr, ptr %rx_hashtbl, align 4
  %src_first.i178 = getelementptr %struct.rlb_client_info, ptr %78, i32 %conv59, i32 8
  %79 = ptrtoint ptr %src_first.i178 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src_first.i178, align 4
  %src_next.i179 = getelementptr %struct.rlb_client_info, ptr %78, i32 %conv, i32 6
  %81 = ptrtoint ptr %src_next.i179 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %src_next.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.not.i180 = icmp eq i32 %80, -1
  br i1 %cmp.not.i180, label %rlb_src_unlink.exit.rlb_src_link.exit_crit_edge, label %if.then.i181

rlb_src_unlink.exit.rlb_src_link.exit_crit_edge:  ; preds = %rlb_src_unlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rlb_src_link.exit

if.then.i181:                                     ; preds = %rlb_src_unlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_hashtbl, align 4
  %src_prev7.i = getelementptr %struct.rlb_client_info, ptr %83, i32 %80, i32 7
  %84 = ptrtoint ptr %src_prev7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv, ptr %src_prev7.i, align 4
  br label %rlb_src_link.exit

rlb_src_link.exit:                                ; preds = %if.then.i181, %rlb_src_unlink.exit.rlb_src_link.exit_crit_edge
  %85 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_hashtbl, align 4
  %src_first10.i = getelementptr %struct.rlb_client_info, ptr %86, i32 %conv59, i32 8
  %87 = ptrtoint ptr %src_first10.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv, ptr %src_first10.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %rlb_src_link.exit, %land.lhs.true51.if.end60_crit_edge
  %ip_src61 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 6
  %88 = ptrtoint ptr %ip_src61 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %ip_src61, align 1
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx, align 4
  %91 = ptrtoint ptr %ip_dst to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %ip_dst, align 1
  %ip_dst64 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 1
  %93 = ptrtoint ptr %ip_dst64 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %ip_dst64, align 4
  %mac_dst65 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 3
  %mac_dst67 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 7
  %94 = ptrtoint ptr %mac_dst67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mac_dst67, align 4
  %96 = ptrtoint ptr %mac_dst65 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %mac_dst65, align 4
  %add.ptr.i183 = getelementptr %struct.arp_pkt, ptr %arp, i32 0, i32 7, i32 4
  %97 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i183, align 2
  %add.ptr1.i184 = getelementptr i8, ptr %mac_dst65, i32 4
  %99 = ptrtoint ptr %add.ptr1.i184 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %add.ptr1.i184, align 2
  %mac_src69 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 2
  %mac_src71 = getelementptr inbounds %struct.arp_pkt, ptr %arp, i32 0, i32 5
  %100 = ptrtoint ptr %mac_src71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mac_src71, align 4
  %102 = ptrtoint ptr %mac_src69 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %mac_src69, align 4
  %add.ptr.i185 = getelementptr %struct.arp_pkt, ptr %arp, i32 0, i32 5, i32 4
  %103 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr.i185, align 2
  %add.ptr1.i186 = getelementptr i8, ptr %mac_src69, i32 4
  %105 = ptrtoint ptr %add.ptr1.i186 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %add.ptr1.i186, align 2
  %slave73 = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 11
  %106 = ptrtoint ptr %slave73 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call45, ptr %slave73, align 4
  %107 = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i = icmp eq i32 %107, 0
  %conv.i.i = zext i16 %98 to i32
  %or.i.i = or i32 %95, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  %or.cond = select i1 %tobool.i.not.i, i1 %cmp.i.i, i1 false
  %ntt = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 10
  br i1 %or.cond, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %ntt, align 1
  %rx_ntt = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 7
  %109 = ptrtoint ptr %rx_ntt to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %rx_ntt, align 4
  br label %if.end81

if.else79:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %ntt, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %vlan_id = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 12
  %111 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 23
  %114 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %features.i, align 16
  %and.i = and i64 %115, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i187

if.then.i187:                                     ; preds = %if.end81
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %116 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %vlan_get_tag.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %vlan_get_tag.exit.thread190

if.else.i:                                        ; preds = %if.end81
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i, align 4
  %h_vlan_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %h_vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %h_vlan_proto.i.i, align 2
  %121 = zext i16 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %120, label %if.else.i.if.then84_crit_edge [
    i16 -30552, label %if.else.i.if.end.i.i_crit_edge
    i16 -32512, label %if.else.i.if.end.i.i_crit_edge194
  ]

if.else.i.if.end.i.i_crit_edge194:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.else.i.if.then84_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

if.end.i.i:                                       ; preds = %if.else.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge194
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %118, i32 0, i32 2
  br label %vlan_get_tag.exit.thread190

vlan_get_tag.exit.thread190:                      ; preds = %if.end.i.i, %if.then.i.i
  %vlan_tci1.i.sink.i = phi ptr [ %vlan_tci1.i.i, %if.then.i.i ], [ %h_vlan_TCI.i.i, %if.end.i.i ]
  %122 = ptrtoint ptr %vlan_tci1.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vlan_tci1.i.sink.i, align 2
  %124 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %vlan_id, align 2
  br label %if.end86

vlan_get_tag.exit:                                ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %vlan_id, align 2
  br label %if.then84

if.then84:                                        ; preds = %vlan_get_tag.exit, %if.else.i.if.then84_crit_edge
  %126 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %vlan_id, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %vlan_get_tag.exit.thread190
  %127 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool88.not = icmp eq i8 %128, 0
  br i1 %tobool88.not, label %if.then89, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then89:                                        ; preds = %if.end86
  %rx_hashtbl_used_head = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 6
  %129 = ptrtoint ptr %rx_hashtbl_used_head to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_hashtbl_used_head, align 4
  store i32 %conv, ptr %rx_hashtbl_used_head, align 4
  %used_next = getelementptr %struct.rlb_client_info, ptr %11, i32 %conv, i32 4
  %131 = ptrtoint ptr %used_next to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %used_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %cmp91.not = icmp eq i32 %130, -1
  br i1 %cmp91.not, label %if.then89.if.end96_crit_edge, label %if.then93

if.then89.if.end96_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %rx_hashtbl to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rx_hashtbl, align 4
  %used_prev = getelementptr %struct.rlb_client_info, ptr %133, i32 %130, i32 5
  %134 = ptrtoint ptr %used_prev to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv, ptr %used_prev, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then89.if.end96_crit_edge
  %135 = ptrtoint ptr %assigned to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %assigned, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.end86.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi ptr [ %41, %if.end27.cleanup_crit_edge ], [ %call45, %if.end86.cleanup_crit_edge ], [ %call45, %if.end96 ], [ %call45, %if.end44.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mode_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rlb_update_client(ptr noundef %client_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.rlb_client_info, ptr %client_info, i32 0, i32 11
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %lor.lhs.false

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

lor.lhs.false:                                    ; preds = %entry
  %mac_dst = getelementptr inbounds %struct.rlb_client_info, ptr %client_info, i32 0, i32 3
  %2 = ptrtoint ptr %mac_dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_dst, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.cleanup23_crit_edge

lor.lhs.false.cleanup23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr %struct.rlb_client_info, ptr %client_info, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup23_crit_edge, label %for.cond.preheader

is_valid_ether_addr.exit.cleanup23_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

for.cond.preheader:                               ; preds = %is_valid_ether_addr.exit
  %ip_dst = getelementptr inbounds %struct.rlb_client_info, ptr %client_info, i32 0, i32 1
  %vlan_id = getelementptr inbounds %struct.rlb_client_info, ptr %client_info, i32 0, i32 12
  %7 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ip_dst, align 4
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %client_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %client_info, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %call8 = tail call ptr @arp_create(i32 noundef 2, i32 noundef 2054, i32 noundef %8, ptr noundef %12, i32 noundef %14, ptr noundef %mac_dst, ptr noundef %16, ptr noundef %mac_dst) #10
  %tobool9.not = icmp eq ptr %call8, null
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave, align 4
  br i1 %tobool9.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %bond = getelementptr inbounds %struct.slave, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bond, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef %24) #15
  br label %cleanup

if.end16:                                         ; preds = %for.cond.preheader
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 8
  %27 = getelementptr inbounds %struct.anon.0, ptr %call8, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 8
  %29 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool19.not = icmp eq i16 %30, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 9
  %31 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 10
  %32 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %30, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 15, i32 0, i32 3
  %33 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  tail call void @arp_xmit(ptr noundef nonnull %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then10
  %34 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ip_dst, align 4
  %36 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slave, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %40 = ptrtoint ptr %client_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %client_info, align 4
  %dev_addr.1 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %42 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr.1, align 64
  %call8.1 = tail call ptr @arp_create(i32 noundef 2, i32 noundef 2054, i32 noundef %35, ptr noundef %39, i32 noundef %41, ptr noundef %mac_dst, ptr noundef %43, ptr noundef %mac_dst) #10
  %tobool9.not.1 = icmp eq ptr %call8.1, null
  %44 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %slave, align 4
  br i1 %tobool9.not.1, label %if.then10.1, label %if.end16.1

if.end16.1:                                       ; preds = %cleanup
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %48 = getelementptr inbounds %struct.anon.0, ptr %call8.1, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %48, align 8
  %50 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool19.not.1 = icmp eq i16 %51, 0
  br i1 %tobool19.not.1, label %if.end16.1.if.end22.1_crit_edge, label %if.then20.1

if.end16.1.if.end22.1_crit_edge:                  ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.1

if.then20.1:                                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_proto1.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call8.1, i32 0, i32 15, i32 0, i32 9
  %52 = ptrtoint ptr %vlan_proto1.i.1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -32512, ptr %vlan_proto1.i.1, align 8
  %vlan_tci2.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call8.1, i32 0, i32 15, i32 0, i32 10
  %53 = ptrtoint ptr %vlan_tci2.i.1 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %51, ptr %vlan_tci2.i.1, align 2
  %vlan_present.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call8.1, i32 0, i32 15, i32 0, i32 3
  %54 = ptrtoint ptr %vlan_present.i.1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %bf.load.i.1 = load i32, ptr %vlan_present.i.1, align 2
  %bf.set.i.1 = or i32 %bf.load.i.1, -2147483648
  store i32 %bf.set.i.1, ptr %vlan_present.i.1, align 2
  br label %if.end22.1

if.end22.1:                                       ; preds = %if.then20.1, %if.end16.1.if.end22.1_crit_edge
  tail call void @arp_xmit(ptr noundef nonnull %call8.1) #10
  br label %cleanup23

if.then10.1:                                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %bond.1 = getelementptr inbounds %struct.slave, ptr %45, i32 0, i32 1
  %55 = ptrtoint ptr %bond.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bond.1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %45, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.12, ptr noundef %60) #15
  br label %cleanup23

cleanup23:                                        ; preds = %if.then10.1, %if.end22.1, %is_valid_ether_addr.exit.cleanup23_crit_edge, %lor.lhs.false.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rlb_next_rx_slave(ptr nocapture noundef %bond) unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lower, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %1, ptr noundef nonnull %iter) #10
  %tobool.not63 = icmp eq ptr %call, null
  br i1 %tobool.not63, label %entry.if.end34_crit_edge, label %for.body.lr.ph

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

for.body.lr.ph:                                   ; preds = %entry
  %rx_slave17 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %found.0.off071 = phi i1 [ false, %for.body.lr.ph ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %slave.068 = phi ptr [ %call, %for.body.lr.ph ], [ %call22, %for.inc.for.body_crit_edge ]
  %rx_slave.066 = phi ptr [ null, %for.body.lr.ph ], [ %rx_slave.2, %for.inc.for.body_crit_edge ]
  %before.064 = phi ptr [ null, %for.body.lr.ph ], [ %before.2, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %slave.068 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave.068, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.for.inc_crit_edge, label %bond_slave_is_up.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

bond_slave_is_up.exit.i:                          ; preds = %for.body
  %7 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i, label %bond_slave_is_up.exit.i.for.inc_crit_edge

bond_slave_is_up.exit.i.for.inc_crit_edge:        ; preds = %bond_slave_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %bond_slave_is_up.exit.i
  %link.i = getelementptr inbounds %struct.slave, ptr %slave.068, i32 0, i32 6
  %10 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %bond_slave_can_tx.exit, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

bond_slave_can_tx.exit:                           ; preds = %land.lhs.true.i
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %slave.068, i32 0, i32 8
  %12 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end, label %bond_slave_can_tx.exit.for.inc_crit_edge

bond_slave_can_tx.exit.for.inc_crit_edge:         ; preds = %bond_slave_can_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %bond_slave_can_tx.exit
  br i1 %found.0.off071, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %tobool5.not = icmp eq ptr %before.064, null
  br i1 %tobool5.not, label %if.then4.if.then7_crit_edge, label %lor.lhs.false

if.then4.if.then7_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then4
  %speed = getelementptr inbounds %struct.slave, ptr %before.064, i32 0, i32 12
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 8
  %speed6 = getelementptr inbounds %struct.slave, ptr %slave.068, i32 0, i32 12
  %15 = ptrtoint ptr %speed6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %lor.lhs.false.if.then7_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then4.if.then7_crit_edge
  br label %if.end16

if.else:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %rx_slave.066, null
  br i1 %tobool9.not, label %if.else.if.then14_crit_edge, label %lor.lhs.false10

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false10:                                  ; preds = %if.else
  %speed11 = getelementptr inbounds %struct.slave, ptr %rx_slave.066, i32 0, i32 12
  %17 = ptrtoint ptr %speed11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed11, align 8
  %speed12 = getelementptr inbounds %struct.slave, ptr %slave.068, i32 0, i32 12
  %19 = ptrtoint ptr %speed12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13 = icmp ult i32 %18, %20
  br i1 %cmp13, label %lor.lhs.false10.if.then14_crit_edge, label %lor.lhs.false10.if.end16_crit_edge

lor.lhs.false10.if.end16_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %if.else.if.then14_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false10.if.end16_crit_edge, %if.then7, %lor.lhs.false.if.end16_crit_edge
  %before.1 = phi ptr [ %before.064, %if.then14 ], [ %before.064, %lor.lhs.false10.if.end16_crit_edge ], [ %slave.068, %if.then7 ], [ %before.064, %lor.lhs.false.if.end16_crit_edge ]
  %rx_slave.1 = phi ptr [ %slave.068, %if.then14 ], [ %rx_slave.066, %lor.lhs.false10.if.end16_crit_edge ], [ %rx_slave.066, %if.then7 ], [ %rx_slave.066, %lor.lhs.false.if.end16_crit_edge ]
  %21 = ptrtoint ptr %rx_slave17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_slave17, align 4
  %cmp18 = icmp eq ptr %slave.068, %22
  %spec.select = select i1 %cmp18, i1 true, i1 %found.0.off071
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %bond_slave_can_tx.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %bond_slave_is_up.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %before.2 = phi ptr [ %before.064, %bond_slave_can_tx.exit.for.inc_crit_edge ], [ %before.1, %if.end16 ], [ %before.064, %land.lhs.true.i.for.inc_crit_edge ], [ %before.064, %bond_slave_is_up.exit.i.for.inc_crit_edge ], [ %before.064, %for.body.for.inc_crit_edge ]
  %rx_slave.2 = phi ptr [ %rx_slave.066, %bond_slave_can_tx.exit.for.inc_crit_edge ], [ %rx_slave.1, %if.end16 ], [ %rx_slave.066, %land.lhs.true.i.for.inc_crit_edge ], [ %rx_slave.066, %bond_slave_is_up.exit.i.for.inc_crit_edge ], [ %rx_slave.066, %for.body.for.inc_crit_edge ]
  %found.1.off0 = phi i1 [ %found.0.off071, %bond_slave_can_tx.exit.for.inc_crit_edge ], [ %spec.select, %if.end16 ], [ %found.0.off071, %land.lhs.true.i.for.inc_crit_edge ], [ %found.0.off071, %bond_slave_is_up.exit.i.for.inc_crit_edge ], [ %found.0.off071, %for.body.for.inc_crit_edge ]
  %23 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bond, align 8
  %call22 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %24, ptr noundef nonnull %iter) #10
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool23.not = icmp eq ptr %rx_slave.2, null
  %tobool31.not = icmp eq ptr %before.2, null
  br i1 %tobool23.not, label %if.end30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %for.end
  br i1 %tobool31.not, label %lor.lhs.false24.if.end30.thread_crit_edge, label %land.lhs.true

lor.lhs.false24.if.end30.thread_crit_edge:        ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %speed26 = getelementptr inbounds %struct.slave, ptr %rx_slave.2, i32 0, i32 12
  %25 = ptrtoint ptr %speed26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed26, align 8
  %speed27 = getelementptr inbounds %struct.slave, ptr %before.2, i32 0, i32 12
  %27 = ptrtoint ptr %speed27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp28 = icmp ult i32 %26, %28
  br i1 %cmp28, label %land.lhs.true.if.then32_crit_edge, label %land.lhs.true.if.end30.thread_crit_edge

land.lhs.true.if.end30.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.thread

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end30.thread:                                  ; preds = %land.lhs.true.if.end30.thread_crit_edge, %lor.lhs.false24.if.end30.thread_crit_edge
  br label %if.then32

if.end30:                                         ; preds = %for.end
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.end30.if.then32_crit_edge

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.end30.thread, %land.lhs.true.if.then32_crit_edge
  %rx_slave.359 = phi ptr [ %rx_slave.2, %if.end30.thread ], [ %before.2, %if.end30.if.then32_crit_edge ], [ %before.2, %land.lhs.true.if.then32_crit_edge ]
  %rx_slave33 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 8
  %29 = ptrtoint ptr %rx_slave33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_slave.359, ptr %rx_slave33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge, %entry.if.end34_crit_edge
  %rx_slave.360 = phi ptr [ %rx_slave.359, %if.then32 ], [ null, %if.end30.if.end34_crit_edge ], [ null, %entry.if.end34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #10
  ret ptr %rx_slave.360
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arp_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alb_send_lp_vid(ptr nocapture noundef readonly %slave, ptr noundef %mac_addr, i16 noundef zeroext %vlan_proto, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 60, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 60) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %call.i, align 1
  %pkt.sroa.6.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 4
  %5 = ptrtoint ptr %pkt.sroa.6.0.call.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %3, ptr %pkt.sroa.6.0.call.i.sroa_idx, align 1
  %pkt.sroa.7.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 6
  %6 = ptrtoint ptr %pkt.sroa.7.0.call.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %1, ptr %pkt.sroa.7.0.call.i.sroa_idx, align 1
  %pkt.sroa.8.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 10
  %7 = ptrtoint ptr %pkt.sroa.8.0.call.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %3, ptr %pkt.sroa.8.0.call.i.sroa_idx, align 1
  %pkt.sroa.9.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 12
  %8 = ptrtoint ptr %pkt.sroa.9.0.call.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -28672, ptr %pkt.sroa.9.0.call.i.sroa_idx, align 1
  %pkt.sroa.11.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 14
  %9 = call ptr @memset(ptr %pkt.sroa.11.0.call.i.sroa_idx, i32 0, i32 46)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %14 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %add = add i16 %conv.i, 14
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add, ptr %network_header, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -28672, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %priority, align 4
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 8
  %20 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alb_send_lp_vid.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alb_send_lp_vid, %if.then10)) #10
          to label %do.end17 [label %if.then10], !srcloc !81

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bond = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %22 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave, align 8
  %conv14 = zext i16 %vid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @alb_send_lp_vid.__UNIQUE_ID_ddebug496, ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef %27, ptr noundef %mac_addr, i32 noundef %conv14) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then10, %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool18.not = icmp eq i16 %vid, 0
  br i1 %tobool18.not, label %do.end17.if.end20_crit_edge, label %if.then19

do.end17.if.end20_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 9
  %28 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %vlan_proto, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 10
  %29 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %vid, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 3
  %30 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.end17.if.end20_crit_edge
  %call21 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alb_upper_dev_walk(ptr noundef %upper, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %strict_match2 = getelementptr inbounds %struct.alb_walk_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %strict_match2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %strict_match2, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %mac_addr3 = getelementptr inbounds %struct.alb_walk_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mac_addr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_addr3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %slave5 = getelementptr inbounds %struct.alb_walk_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave5, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  %lower_level = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %lower_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lower_level, align 1
  %conv = zext i8 %15 to i32
  %lower_level6 = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 58
  %16 = ptrtoint ptr %lower_level6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lower_level6, align 1
  %conv7 = zext i8 %17 to i32
  %sub = add nsw i32 %conv7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp eq i32 %sub, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 55
  %18 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_assign_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp10 = icmp eq i8 %19, 2
  br i1 %cmp10, label %if.then.if.end17.sink.split_crit_edge, label %if.else

if.then.if.end17.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else, %if.then.if.end17.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.else ], [ %5, %if.then.if.end17.sink.split_crit_edge ]
  %call13 = tail call zeroext i16 @vlan_dev_vlan_proto(ptr noundef %upper) #10
  %call14 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %upper) #10
  tail call fastcc void @alb_send_lp_vid(ptr noundef %9, ptr noundef %.sink, i16 noundef zeroext %call13, i16 noundef zeroext %call14)
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %22 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i, align 16
  %and.i54 = and i64 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i54)
  %tobool.i55.not = icmp eq i64 %and.i54, 0
  %brmerge = select i1 %tobool.i55.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end17.if.end33_crit_edge, label %if.then22

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then22:                                        ; preds = %if.end17
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 8
  %call24 = tail call ptr @bond_verify_device_path(ptr noundef %25, ptr noundef %upper, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call24, null
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.body, label %if.end30

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/bonding/bond_alb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 977, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

if.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr31 = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr31, align 64
  %28 = ptrtoint ptr %call24 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call24, align 2
  %vlan_id = getelementptr inbounds %struct.bond_vlan_tag, ptr %call24, i32 0, i32 1
  %30 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_id, align 2
  tail call fastcc void @alb_send_lp_vid(ptr noundef %9, ptr noundef %27, i16 noundef zeroext %29, i16 noundef zeroext %31)
  tail call void @kfree(ptr noundef nonnull %call24) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.end17.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_proto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bond_verify_device_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rlb_teach_disabled_mac_on_primary(ptr nocapture noundef %bond, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @rlb_teach_disabled_mac_on_primary.__warned, align 1
  br i1 %.b25, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rlb_teach_disabled_mac_on_primary.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %curr_active_slave = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 1
  %0 = ptrtoint ptr %curr_active_slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_active_slave, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %primary_is_promisc = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 9
  %2 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %primary_is_promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call9 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = zext i1 %tobool10.not to i8
  %6 = ptrtoint ptr %primary_is_promisc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %primary_is_promisc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.end6.if.end17_crit_edge
  %rlb_promisc_timeout_counter = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 18, i32 10
  %7 = ptrtoint ptr %rlb_promisc_timeout_counter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rlb_promisc_timeout_counter, align 8
  tail call fastcc void @alb_send_learning_packets(ptr noundef nonnull %1, ptr noundef %addr, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !62, !64, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/bonding/bond_alb.c", i32 1362, i32 14}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"ip_bcast", i1 false, i1 false}
!5 = !{!"../drivers/net/bonding/bond_alb.c", i32 1387, i32 22}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/bonding/bond_alb.c", i32 1476, i32 13}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/bonding/bond_alb.c", i32 1563, i32 24}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/bonding/bond_alb.c", i32 1665, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bond_alb_handle_link_change._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @bond_alb_handle_link_change._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/bonding/bond_alb.c", i32 1684, i32 16}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/bonding/bond_alb.c", i32 1770, i32 16}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/bonding/bond_alb.c", i32 298, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rlb_arp_recv.__UNIQUE_ID_ddebug491, !21, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../drivers/net/bonding/bond_alb.c", i32 1314, i32 14}
!27 = distinct !{null, !28, !"mac_v6_allmcast", i1 false, i1 false}
!28 = !{!"../drivers/net/bonding/bond_alb.c", i32 26, i32 17}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/bonding/bond_alb.c", i32 673, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rlb_arp_xmit.__UNIQUE_ID_ddebug494, !30, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/bonding/bond_alb.c", i32 694, i32 3}
!36 = !{ptr @rlb_arp_xmit.__UNIQUE_ID_ddebug495, !35, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/bonding/bond_alb.c", i32 563, i32 22}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/bonding/bond_alb.c", i32 441, i32 4}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/bonding/bond_alb.c", i32 533, i32 26}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/bonding/bond_alb.c", i32 932, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @alb_send_lp_vid.__UNIQUE_ID_ddebug496, !48, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/bonding/bond_alb.c", i32 1027, i32 3}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/bonding/bond_alb.c", i32 1202, i32 3}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/bonding/bond_alb.c", i32 1206, i32 3}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/net/bonding/bond_alb.c", i32 419, i32 15}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/bonding/bond_alb.c", i32 342, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/net/bonding/bond_alb.c", i32 359, i32 30}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/net/bonding/bond_alb.c", i32 1060, i32 2}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2148396169, i64 2148396195, i64 2148396224, i64 2148396258, i64 2148396289, i64 2148396312}
!81 = !{i64 2148877984, i64 2148877989, i64 2148878002, i64 2148878046, i64 2148878080, i64 2148878101}
!82 = !{!"auto-init"}
!83 = !{i64 2149692806}
!84 = !{i64 2149693072}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2157430186}
!87 = !{i8 0, i8 2}
!88 = !{i64 2157379259, i64 2157379754, i64 2157379296, i64 2157379352, i64 2157379386, i64 2157379410, i64 2157379451, i64 2157379472, i64 2157379500, i64 2157379534}
