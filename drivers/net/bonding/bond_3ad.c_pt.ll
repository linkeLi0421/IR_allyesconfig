; ModuleID = '/llk/IR_all_yes/drivers/net/bonding/bond_3ad.c_pt.bc'
source_filename = "../drivers/net/bonding/bond_3ad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.port_params = type { %struct.mac_addr, i16, i16, i16, i16, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.lacpdu = type { i8, i8, i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, [12 x i8], i8, i8, [50 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bonding = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i8, ptr, [16 x i8], %struct.list_head, ptr, %struct.ad_bond_info, %struct.alb_bond_info, %struct.bond_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.rtnl_link_stats64, %struct.list_head, %struct.spinlock, ptr }
%struct.ad_bond_info = type { %struct.ad_system, %struct.bond_3ad_stats, %struct.atomic_t, i16 }
%struct.ad_system = type { i16, %struct.mac_addr }
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
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
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
%struct.ad_slave_info = type { %struct.aggregator, %struct.port, %struct.bond_3ad_stats, i16 }
%struct.aggregator = type { %struct.mac_addr, i16, i8, i16, i16, %struct.mac_addr, i16, i16, i16, i16, ptr, ptr, i16, i16 }
%struct.port = type { i16, i16, %struct.mac_addr, i16, i16, i8, i16, i16, i8, i8, %struct.port_params, %struct.port_params, i8, i16, i32, i16, i32, i16, i32, i16, i32, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.lacpdu }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.lacpdu_header = type { %struct.ethhdr, %struct.lacpdu }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ad_info = type { i16, i16, i16, i16, [6 x i8] }
%struct.bond_marker = type <{ i8, i8, i8, i8, i16, %struct.mac_addr, i32, i16, i8, i8, [90 x i8] }>
%struct.bond_marker_header = type { %struct.ethhdr, %struct.bond_marker }

@ad_ticks_per_sec = internal global { i16, [30 x i8] } zeroinitializer, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(slave %s): Trying to unbind an uninitialized port\0A\00", [44 x i8] zeroinitializer }, align 32
@bond_3ad_unbind_slave.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonding\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bond_3ad_unbind_slave\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/bonding/bond_3ad.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(slave %s): Unbinding Link Aggregation Group %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bond_3ad_unbind_slave.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 2, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"(slave %s): Some port(s) related to LAG %d - replacing with LAG %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(slave %s): Removing an active aggregator\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"(slave %s): unbinding aggregator, and could not find a new aggregator for its ports\0A\00", [43 x i8] zeroinitializer }, align 32
@bond_3ad_unbind_slave.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 2, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(slave %s): Unbinding port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bond_3ad_update_ad_actor_settings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@bond_3ad_state_machine_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Warning: bond's first port is uninitialized\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bond_3ad_state_machine_handler\00", [33 x i8] zeroinitializer }, align 32
@bond_3ad_state_machine_handler._entry_ptr = internal global ptr @bond_3ad_state_machine_handler._entry, section ".printk_index", align 4
@bond_3ad_state_machine_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 2361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Warning: Found an uninitialized port\0A\00", [52 x i8] zeroinitializer }, align 32
@bond_3ad_state_machine_handler._entry_ptr.14 = internal global ptr @bond_3ad_state_machine_handler._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(slave %s): speed/duplex changed for uninitialized port\0A\00", [39 x i8] zeroinitializer }, align 32
@bond_3ad_adapter_speed_duplex_changed.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 2, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bond_3ad_adapter_speed_duplex_changed\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(slave %s): Port %d changed speed/duplex\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(slave %s): link status changed for uninitialized port\0A\00", [40 x i8] zeroinitializer }, align 32
@bond_3ad_handle_link_change.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 2, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bond_3ad_handle_link_change\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(slave %s): Port %d changed link status to %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@ad_initialize_port.tmpl = internal constant { %struct.port_params, [16 x i8] } { %struct.port_params { %struct.mac_addr zeroinitializer, i16 -1, i16 1, i16 1, i16 255, i16 1 }, [16 x i8] zeroinitializer }, align 32
@ad_initialize_port.lacpdu = internal constant { %struct.lacpdu, [50 x i8] } { %struct.lacpdu { i8 1, i8 1, i8 1, i8 20, i16 0, %struct.mac_addr zeroinitializer, i16 0, i16 0, i16 0, i8 0, [3 x i8] zeroinitializer, i8 2, i8 20, i16 0, %struct.mac_addr zeroinitializer, i16 0, i16 0, i16 0, i8 0, [3 x i8] zeroinitializer, i8 3, i8 16, i16 0, [12 x i8] zeroinitializer, i8 0, i8 0, [50 x i8] zeroinitializer }, [50 x i8] zeroinitializer }, align 32
@__update_lacpdu_from_port.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__update_lacpdu_from_port\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(slave %s): update lacpdu: actor port state %x\0A\00", [48 x i8] zeroinitializer }, align 32
@ad_clear_agg.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad_clear_agg\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: LAG %d was cleared\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ad_agg_selection_logic\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(slave %s): best Agg=%d; P=%d; a k=%d; p k=%d; Ind=%d; Act=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 1, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(slave %s): best ports %p slave %p\0A\00", [60 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 1, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(slave %s): Agg=%d; P=%d; a k=%d; p k=%d; Ind=%d; Act=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014%s: Warning: No 802.3ad response from the link partner for any adapters in the bond\0A\00", [41 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic._entry_ptr = internal global ptr @ad_agg_selection_logic._entry, section ".printk_index", align 4
@ad_agg_selection_logic.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(slave %s): LAG %d chosen as the active LAG\0A\00", [51 x i8] zeroinitializer }, align 32
@ad_agg_selection_logic.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ad_agg_selection_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: (slave %s): Impossible agg select mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad_agg_selection_test\00", [42 x i8] zeroinitializer }, align 32
@ad_agg_selection_test._entry_ptr = internal global ptr @ad_agg_selection_test._entry, section ".printk_index", align 4
@__get_link_speed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__get_link_speed._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 333, ptr null, ptr null }, align 1
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013%s: (slave %s): unknown ethtool speed (%d) for port %d (set it to 0)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__get_link_speed\00", [47 x i8] zeroinitializer }, align 32
@__get_link_speed._entry_ptr = internal global ptr @__get_link_speed._entry, section ".printk_index", align 4
@__get_link_speed.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(slave %s): Port %d Received link speed %d update from adapter\0A\00", [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ad_rx_machine.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad_rx_machine\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(slave %s): Rx Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"(slave %s): An illegal loopback occurred on slave\0ACheck the configuration to verify that all adapters are connected to 802.3ad compliant switch ports\0A\00", [41 x i8] zeroinitializer }, align 32
@__record_pdu.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__record_pdu\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(slave %s): partner sync=1\0A\00", [36 x i8] zeroinitializer }, align 32
@__record_pdu.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.46, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(slave %s): partner sync=0\0A\00", [36 x i8] zeroinitializer }, align 32
@ad_periodic_machine.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad_periodic_machine\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"(slave %s): Periodic Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ad_port_selection_logic.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ad_port_selection_logic\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(slave %s): Port %d left LAG %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ad_port_selection_logic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014%s: (slave %s): Warning: Port %d was related to aggregator %d but was not on its port list\0A\00", [34 x i8] zeroinitializer }, align 32
@ad_port_selection_logic._entry_ptr = internal global ptr @ad_port_selection_logic._entry, section ".printk_index", align 4
@ad_port_selection_logic.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.52, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(slave %s): Port %d joined LAG %d (existing LAG)\0A\00", [46 x i8] zeroinitializer }, align 32
@ad_port_selection_logic.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.53, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(slave %s): Port %d joined LAG %d (new LAG)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(slave %s): Port %d did not find a suitable aggregator\0A\00", [40 x i8] zeroinitializer }, align 32
@ad_mux_machine.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ad_mux_machine\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(slave %s): Mux Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 1, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ad_disable_collecting_distributing\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(slave %s): Disabling port %d (LAG %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@ad_enable_collecting_distributing.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ad_enable_collecting_distributing\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(slave %s): Enabling port %d (LAG %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ad_tx_machine.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad_tx_machine\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(slave %s): Sent LACPDU on port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(slave %s): speed changed to 0 on port %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__get_duplex.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__get_duplex\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"(slave %s): Port %d Received status full duplex update from adapter\0A\00", [59 x i8] zeroinitializer }, align 32
@__get_duplex.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"(slave %s): Port %d Received status NOT full duplex update from adapter\0A\00", [55 x i8] zeroinitializer }, align 32
@bond_3ad_rx_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: Warning: port of slave %s is uninitialized\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bond_3ad_rx_indication\00", [41 x i8] zeroinitializer }, align 32
@bond_3ad_rx_indication._entry_ptr = internal global ptr @bond_3ad_rx_indication._entry, section ".printk_index", align 4
@bond_3ad_rx_indication.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 2, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(slave %s): Received LACPDU on port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bond_3ad_rx_indication.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.71, i8 2, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(slave %s): Received Marker Information on port %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bond_3ad_rx_indication.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.72, i8 2, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(slave %s): Received Marker Response on port %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bond_3ad_rx_indication.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.73, i8 2, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(slave %s): Received an unknown Marker subtype on port %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ad_marker_info_received.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ad_marker_info_received\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(slave %s): Sent Marker Response on port %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [18 x i64] [i64 16, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.86 = internal global [18 x i64] [i64 16, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000, i64 14000, i64 20000, i64 25000, i64 40000, i64 50000, i64 56000, i64 100000, i64 200000, i64 400000, i64 4294967295]
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"ad_ticks_per_sec\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 87, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2111, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2115, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2154, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2160, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2191, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2210, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2261, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2345, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2360, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2529, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2537, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2558, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2583, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [5 x i8] c"tmpl\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1838, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"lacpdu\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1845, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 802, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1809, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1722, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1728, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1735, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1744, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1748, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1619, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 330, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 339, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 695, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1154, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1206, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 505, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 509, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1359, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1438, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1453, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1487, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1534, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1538, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1036, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1929, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1908, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1276, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 723, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2501, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 364, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 370, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2416, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2424, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2440, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2445, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2450, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [34 x i8] c"../drivers/net/bonding/bond_3ad.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1959, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__get_link_speed._entry, ptr @__get_link_speed._entry_ptr, ptr @ad_agg_selection_logic._entry, ptr @ad_agg_selection_logic._entry_ptr, ptr @ad_agg_selection_test._entry, ptr @ad_agg_selection_test._entry_ptr, ptr @ad_port_selection_logic._entry, ptr @ad_port_selection_logic._entry_ptr, ptr @bond_3ad_rx_indication._entry, ptr @bond_3ad_rx_indication._entry_ptr, ptr @bond_3ad_state_machine_handler._entry, ptr @bond_3ad_state_machine_handler._entry.12, ptr @bond_3ad_state_machine_handler._entry_ptr, ptr @bond_3ad_state_machine_handler._entry_ptr.14, ptr @ad_ticks_per_sec, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ad_initialize_port.tmpl, ptr @ad_initialize_port.lacpdu, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_ticks_per_sec to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_3ad_state_machine_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_3ad_state_machine_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_initialize_port.tmpl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_initialize_port.lacpdu to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_agg_selection_logic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_agg_selection_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_port_selection_logic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_3ad_rx_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_initiate_agg_selection(ptr noundef %bond, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %agg_select_timer = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %agg_select_timer, i32 noundef 4) #9
  %0 = ptrtoint ptr %agg_select_timer to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %timeout, ptr %agg_select_timer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_initialize(ptr noundef %bond, i16 noundef zeroext %tick_resolution) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_mac_addr = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %sys_mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sys_mac_addr, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %xor.i.i = xor i32 %7, %5
  %add.ptr.i.i = getelementptr %struct.bonding, ptr %bond, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %ad_info = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17
  %aggregator_identifier = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %aggregator_identifier, align 4
  %ad_actor_sys_prio = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 27
  %13 = ptrtoint ptr %ad_actor_sys_prio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ad_actor_sys_prio, align 4
  %15 = ptrtoint ptr %ad_info to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %ad_info, align 8
  %ad_actor_system = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 29
  %16 = ptrtoint ptr %ad_actor_system to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ad_actor_system, align 4
  %add.ptr.i = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 29, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %19 to i32
  %or.i = or i32 %17, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %22 = call ptr @memcpy(ptr %sys_mac_addr, ptr %21, i32 6)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call ptr @memcpy(ptr %sys_mac_addr, ptr %ad_actor_system, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  store i16 %tick_resolution, ptr @ad_ticks_per_sec, align 2
  %conv = zext i16 %tick_resolution to i32
  %mul = shl nuw nsw i32 %conv, 3
  %agg_select_timer.i = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %agg_select_timer.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %agg_select_timer.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %mul, ptr %agg_select_timer.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_bind_slave(ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bond.i = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond.i, align 4
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %2 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ad_info, align 8
  %slave2 = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave2, align 8
  %cmp.not = icmp eq ptr %5, %slave
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %port1 = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %port1, null
  br i1 %tobool.not.i, label %if.then.ad_initialize_port.exit_crit_edge, label %if.then.i

if.then.ad_initialize_port.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_initialize_port.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %lacp_fast = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 19, i32 14
  %6 = ptrtoint ptr %lacp_fast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lacp_fast, align 4
  %actor_port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 255, ptr %actor_port_priority.i, align 2
  %actor_port_aggregator_identifier.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %actor_port_aggregator_identifier.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %actor_port_aggregator_identifier.i, align 4
  %ntt.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %ntt.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ntt.i, align 2
  %actor_admin_port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %actor_admin_port_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %actor_admin_port_state.i, align 4
  %actor_oper_port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool1.not.i, i8 5, i8 7
  %12 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select.i, ptr %actor_oper_port_state.i, align 1
  %partner_admin.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 10
  %13 = call ptr @memcpy(ptr %partner_admin.i, ptr @ad_initialize_port.tmpl, i32 16)
  %partner_oper.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 11
  %14 = call ptr @memcpy(ptr %partner_oper.i, ptr @ad_initialize_port.tmpl, i32 16)
  %is_enabled.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_enabled.i, align 2
  %sm_vars.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 13
  %16 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %sm_vars.i, align 4
  %sm_rx_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 14
  %17 = ptrtoint ptr %sm_rx_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sm_rx_state.i, align 4
  %sm_rx_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 15
  %18 = ptrtoint ptr %sm_rx_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %sm_rx_timer_counter.i, align 4
  %sm_periodic_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 16
  %19 = ptrtoint ptr %sm_periodic_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sm_periodic_state.i, align 4
  %sm_periodic_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 17
  %20 = ptrtoint ptr %sm_periodic_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %sm_periodic_timer_counter.i, align 4
  %sm_mux_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %sm_mux_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sm_mux_state.i, align 4
  %sm_mux_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 19
  %22 = ptrtoint ptr %sm_mux_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %sm_mux_timer_counter.i, align 4
  %sm_tx_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 20
  %23 = ptrtoint ptr %sm_tx_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sm_tx_state.i, align 4
  %aggregator.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 29
  %24 = ptrtoint ptr %aggregator.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %aggregator.i, align 4
  %next_port_in_aggregator.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 30
  %25 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %next_port_in_aggregator.i, align 4
  %transaction_id.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 31
  %26 = ptrtoint ptr %transaction_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %transaction_id.i, align 4
  %sm_churn_actor_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 22
  %27 = ptrtoint ptr %sm_churn_actor_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %sm_churn_actor_timer_counter.i, align 2
  %churn_actor_count.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 24
  %sm_churn_partner_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 23
  %28 = ptrtoint ptr %sm_churn_partner_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %sm_churn_partner_timer_counter.i, align 4
  %lacpdu.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 32
  %29 = call ptr @memset(ptr %churn_actor_count.i, i32 0, i32 16)
  %30 = call ptr @memcpy(ptr %lacpdu.i, ptr @ad_initialize_port.lacpdu, i32 110)
  br label %ad_initialize_port.exit

ad_initialize_port.exit:                          ; preds = %if.then.i, %if.then.ad_initialize_port.exit_crit_edge
  %31 = ptrtoint ptr %slave2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %slave, ptr %slave2, align 4
  %32 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ad_info, align 8
  %id = getelementptr inbounds %struct.ad_slave_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id, align 8
  %36 = ptrtoint ptr %port1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %port1, align 4
  %ad_user_port_key = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 19, i32 28
  %37 = ptrtoint ptr %ad_user_port_key to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ad_user_port_key, align 2
  %shl = shl i16 %38, 6
  %actor_admin_port_key = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 6
  %39 = ptrtoint ptr %actor_admin_port_key to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %shl, ptr %actor_admin_port_key, align 4
  tail call fastcc void @ad_update_actor_keys(ptr noundef %port1, i1 noundef zeroext false)
  %40 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave2, align 4
  %bond.i.i = getelementptr inbounds %struct.slave, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bond.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bond.i.i, align 4
  %actor_system.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 2
  %ad_info.i = getelementptr inbounds %struct.bonding, ptr %43, i32 0, i32 17
  %sys_mac_addr.i = getelementptr inbounds %struct.bonding, ptr %43, i32 0, i32 17, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %actor_system.i, ptr %sys_mac_addr.i, i32 6)
  %45 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ad_info.i, align 8
  %actor_system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %actor_system_priority.i, align 2
  %48 = load i16, ptr @ad_ticks_per_sec, align 2
  %49 = udiv i16 %48, 3
  %sm_tx_timer_counter = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 21
  %50 = ptrtoint ptr %sm_tx_timer_counter to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %sm_tx_timer_counter, align 4
  %51 = load ptr, ptr %bond.i.i, align 4
  %params.i.i.i = getelementptr inbounds %struct.bonding, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %params.i.i.i, align 8
  %54 = add i32 %53, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %ad_initialize_port.exit.if.end.i.i_crit_edge, label %if.then.i.i

ad_initialize_port.exit.if.end.i.i_crit_edge:     ; preds = %ad_initialize_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %ad_initialize_port.exit
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %41, i32 0, i32 8
  %56 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %cmp.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear17.sink.i.i.i = xor i8 %bf.load.i.i.i, -96
  %57 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %bf.clear17.sink.i.i.i, ptr %backup.i.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.if.end.i.i_crit_edge, %ad_initialize_port.exit.if.end.i.i_crit_edge
  %all_slaves_active.i.i = getelementptr inbounds %struct.bonding, ptr %51, i32 0, i32 19, i32 21
  %58 = ptrtoint ptr %all_slaves_active.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %all_slaves_active.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool2.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i.__disable_port.exit_crit_edge

if.end.i.i.__disable_port.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__disable_port.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inactive.i.i = getelementptr inbounds %struct.slave, ptr %41, i32 0, i32 8
  %60 = ptrtoint ptr %inactive.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i.i = load i8, ptr %inactive.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %inactive.i.i, align 2
  br label %__disable_port.exit

__disable_port.exit:                              ; preds = %if.then3.i.i, %if.end.i.i.__disable_port.exit_crit_edge
  %61 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ad_info, align 8
  %tobool.not.i40 = icmp eq ptr %62, null
  br i1 %tobool.not.i40, label %__disable_port.exit.ad_initialize_agg.exit_crit_edge, label %if.then.i.i41

__disable_port.exit.ad_initialize_agg.exit_crit_edge: ; preds = %__disable_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_initialize_agg.exit

if.then.i.i41:                                    ; preds = %__disable_port.exit
  %is_individual.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %is_individual.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %is_individual.i.i, align 4
  %actor_admin_aggregator_key.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 3
  %is_active.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 12
  %64 = ptrtoint ptr %is_active.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %is_active.i.i, align 4
  %num_of_ports.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 13
  %65 = ptrtoint ptr %num_of_ports.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %num_of_ports.i.i, align 2
  %66 = call ptr @memset(ptr %actor_admin_aggregator_key.i.i, i32 0, i32 22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_bind_slave, %if.then4.i.i)) #9
          to label %ad_clear_agg.exit.i [label %if.then4.i.i], !srcloc !192

if.then4.i.i:                                     ; preds = %if.then.i.i41
  %slave.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 11
  %67 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slave.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %68, null
  br i1 %tobool5.not.i.i, label %if.then4.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then4.i.i.cond.end.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then4.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %70, %cond.true.i.i ], [ @.str.27, %if.then4.i.i.cond.end.i.i_crit_edge ]
  %aggregator_identifier.i.i = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %aggregator_identifier.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %aggregator_identifier.i.i, align 2
  %conv.i.i = zext i16 %72 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ad_clear_agg.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.26, ptr noundef %cond.i.i, i32 noundef %conv.i.i) #9
  br label %ad_clear_agg.exit.i

ad_clear_agg.exit.i:                              ; preds = %cond.end.i.i, %if.then.i.i41
  %slave.i42 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 11
  %73 = ptrtoint ptr %slave.i42 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %slave.i42, align 4
  %74 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 0, ptr %62, align 1
  br label %ad_initialize_agg.exit

ad_initialize_agg.exit:                           ; preds = %ad_clear_agg.exit.i, %__disable_port.exit.ad_initialize_agg.exit_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 86
  %77 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr, align 64
  %79 = call ptr @memcpy(ptr %62, ptr %78, i32 6)
  %aggregator_identifier = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 17, i32 3
  %80 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %aggregator_identifier, align 4
  %inc = add i16 %81, 1
  store i16 %inc, ptr %aggregator_identifier, align 4
  %aggregator_identifier14 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 1
  %82 = ptrtoint ptr %aggregator_identifier14 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %inc, ptr %aggregator_identifier14, align 2
  %slave15 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 11
  %83 = ptrtoint ptr %slave15 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %slave, ptr %slave15, align 4
  %is_active = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 12
  %84 = ptrtoint ptr %is_active to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %is_active, align 4
  %num_of_ports = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 13
  %85 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %num_of_ports, align 2
  br label %if.end

if.end:                                           ; preds = %ad_initialize_agg.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_update_actor_keys(ptr nocapture noundef %port, i1 noundef zeroext %reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actor_oper_port_key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %actor_oper_port_key to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %actor_oper_port_key, align 2
  %actor_admin_port_key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %actor_admin_port_key to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %actor_admin_port_key, align 4
  %4 = and i16 %3, -64
  store i16 %4, ptr %actor_admin_port_key, align 4
  br i1 %reset, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i16 @__get_link_speed(ptr noundef %port)
  %5 = lshr i16 %1, 1
  %6 = and i16 %5, 31
  %slave1.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %7 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave1.i, align 4
  %link.i = getelementptr inbounds %struct.slave, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %duplex.i = getelementptr inbounds %struct.slave, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cond.i = icmp eq i8 %12, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_duplex.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_update_actor_keys, %if.then8.i)) #9
          to label %if.end [label %if.then8.i], !srcloc !192

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %bond.i = getelementptr inbounds %struct.slave, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 8
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %port, align 4
  %conv10.i = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__get_duplex.__UNIQUE_ID_ddebug352, ptr noundef %16, ptr noundef nonnull @.str.66, ptr noundef %18, i32 noundef %conv10.i) #9
  br label %if.end

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_duplex.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_update_actor_keys, %if.then27.i)) #9
          to label %if.end [label %if.then27.i], !srcloc !192

if.then27.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %bond28.i = getelementptr inbounds %struct.slave, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %bond28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bond28.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 8
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port, align 4
  %conv34.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__get_duplex.__UNIQUE_ID_ddebug353, ptr noundef %24, ptr noundef nonnull @.str.67, ptr noundef %26, i32 noundef %conv34.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then27.i, %sw.default.i, %if.then8.i, %sw.bb.i, %if.then.if.end_crit_edge
  %tobool19.not = phi i1 [ true, %if.then27.i ], [ true, %sw.default.i ], [ false, %if.then8.i ], [ false, %sw.bb.i ], [ true, %if.then.if.end_crit_edge ]
  %retval2.0.i = phi i8 [ 0, %if.then27.i ], [ 0, %sw.default.i ], [ 1, %if.then8.i ], [ 1, %sw.bb.i ], [ 0, %if.then.if.end_crit_edge ]
  %shl = shl i16 %call, 1
  %conv7 = zext i8 %retval2.0.i to i16
  %or = or i16 %shl, %conv7
  %29 = ptrtoint ptr %actor_admin_port_key to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %actor_admin_port_key, align 4
  %or10 = or i16 %or, %30
  store i16 %or10, ptr %actor_admin_port_key, align 4
  %31 = ptrtoint ptr %actor_oper_port_key to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or10, ptr %actor_oper_port_key, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %or10)
  %cmp.not = icmp eq i16 %1, %or10
  br i1 %cmp.not, label %if.end.if.end51_crit_edge, label %if.then18

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end.thread:                                    ; preds = %entry
  %32 = ptrtoint ptr %actor_admin_port_key to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %actor_admin_port_key, align 4
  %34 = ptrtoint ptr %actor_oper_port_key to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %actor_oper_port_key, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %33)
  %cmp.not74 = icmp eq i16 %1, %33
  br i1 %cmp.not74, label %if.end.thread.if.end51_crit_edge, label %if.end28.thread94

if.end.thread.if.end51_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end28.thread94:                                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %sm_vars2498 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %35 = ptrtoint ptr %sm_vars2498 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sm_vars2498, align 4
  %37 = and i16 %36, -3
  store i16 %37, ptr %sm_vars2498, align 4
  br label %if.end51

if.then18:                                        ; preds = %if.end
  %sm_vars24 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %38 = ptrtoint ptr %sm_vars24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sm_vars24, align 4
  %40 = and i16 %39, -3
  %masksel = select i1 %tobool19.not, i16 0, i16 2
  %.sink = or i16 %40, %masksel
  store i16 %.sink, ptr %sm_vars24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool31.not = icmp eq i16 %call, 0
  br i1 %tobool31.not, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave1.i, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bond, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 8
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %port, align 4
  %conv35 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.64, ptr noundef %48, i32 noundef %conv35) #12
  br label %if.end51

if.else36:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %call)
  %cmp41.not = icmp eq i16 %6, %call
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp41.not
  br i1 %or.cond, label %if.else36.if.end51_crit_edge, label %if.then43

if.else36.if.end51_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then43:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %sm_vars44 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %51 = ptrtoint ptr %sm_vars44 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sm_vars44, align 4
  %53 = or i16 %52, 1
  store i16 %53, ptr %sm_vars44, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.else36.if.end51_crit_edge, %if.then32, %if.end28.thread94, %if.end.thread.if.end51_crit_edge, %if.end.if.end51_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_unbind_slave(ptr nocapture noundef readonly %slave) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  %dummy_slave_update = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bond1 = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !193
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy_slave_update) #9
  %3 = ptrtoint ptr %dummy_slave_update to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dummy_slave_update, align 1, !annotation !193
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %4 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ad_info, align 8
  %port4 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1
  %slave5 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %11) #12
  br label %out

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then11)) #9
          to label %do.end18 [label %if.then11], !srcloc !192

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave, align 8
  %aggregator_identifier = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aggregator_identifier, align 2
  %conv = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug373, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %conv) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then11, %do.body7
  %actor_oper_port_state = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %actor_oper_port_state, align 1
  %20 = and i8 %19, -61
  store i8 %20, ptr %actor_oper_port_state, align 1
  %actor_system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %actor_system_priority.i, align 2
  %actor_system_priority2.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 4
  %23 = ptrtoint ptr %actor_system_priority2.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %actor_system_priority2.i, align 1
  %actor_system.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 5
  %actor_system3.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 2
  %24 = call ptr @memcpy(ptr %actor_system.i, ptr %actor_system3.i, i32 6)
  %actor_oper_port_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %actor_oper_port_key.i, align 2
  %actor_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 6
  %27 = ptrtoint ptr %actor_key.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %actor_key.i, align 1
  %actor_port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %actor_port_priority.i, align 2
  %actor_port_priority4.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 7
  %30 = ptrtoint ptr %actor_port_priority4.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %actor_port_priority4.i, align 1
  %31 = ptrtoint ptr %port4 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %port4, align 4
  %actor_port.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 8
  %33 = ptrtoint ptr %actor_port.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %actor_port.i, align 1
  %actor_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 9
  %34 = ptrtoint ptr %actor_state.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %20, ptr %actor_state.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__update_lacpdu_from_port.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then.i)) #9
          to label %__update_lacpdu_from_port.exit [label %if.then.i], !srcloc !192

if.then.i:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave5, align 4
  %bond.i = getelementptr inbounds %struct.slave, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bond.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 8
  %43 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %actor_oper_port_state, align 1
  %conv.i = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__update_lacpdu_from_port.__UNIQUE_ID_ddebug356, ptr noundef %40, ptr noundef nonnull @.str.24, ptr noundef %42, i32 noundef %conv.i) #9
  br label %__update_lacpdu_from_port.exit

__update_lacpdu_from_port.exit:                   ; preds = %if.then.i, %do.end18
  %partner_oper.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11
  %system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11, i32 1
  %45 = ptrtoint ptr %system_priority.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %system_priority.i, align 2
  %partner_system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 13
  %47 = ptrtoint ptr %partner_system_priority.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %partner_system_priority.i, align 1
  %partner_system.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 14
  %48 = call ptr @memcpy(ptr %partner_system.i, ptr %partner_oper.i, i32 6)
  %key.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11, i32 2
  %49 = ptrtoint ptr %key.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %key.i, align 2
  %partner_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 15
  %51 = ptrtoint ptr %partner_key.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %partner_key.i, align 1
  %port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11, i32 4
  %52 = ptrtoint ptr %port_priority.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port_priority.i, align 2
  %partner_port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 16
  %54 = ptrtoint ptr %partner_port_priority.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %partner_port_priority.i, align 1
  %port_number.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11, i32 3
  %55 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %port_number.i, align 2
  %partner_port.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 17
  %57 = ptrtoint ptr %partner_port.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %partner_port.i, align 1
  %port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 11, i32 5
  %58 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %port_state.i, align 2
  %conv13.i = trunc i16 %59 to i8
  %partner_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 32, i32 18
  %60 = ptrtoint ptr %partner_state.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv13.i, ptr %partner_state.i, align 1
  %call33 = tail call fastcc i32 @ad_lacpdu_send(ptr noundef %port4)
  %lag_ports = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 10
  %61 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lag_ports, align 4
  %tobool34.not = icmp eq ptr %62, null
  br i1 %tobool34.not, label %__update_lacpdu_from_port.exit.do.body165_crit_edge, label %if.then35

__update_lacpdu_from_port.exit.do.body165_crit_edge: ; preds = %__update_lacpdu_from_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then35:                                        ; preds = %__update_lacpdu_from_port.exit
  %cmp.not = icmp eq ptr %62, %port4
  br i1 %cmp.not, label %lor.lhs.false, label %if.then35.if.then40_crit_edge

if.then35.if.then40_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.then35
  %next_port_in_aggregator = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 30
  %63 = ptrtoint ptr %next_port_in_aggregator to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %next_port_in_aggregator, align 4
  %tobool39.not = icmp eq ptr %64, null
  br i1 %tobool39.not, label %if.else148, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.then35.if.then40_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lower, align 8
  %69 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %iter, align 4
  %70 = load ptr, ptr %1, align 8
  %call43 = call ptr @netdev_lower_get_next_private(ptr noundef %70, ptr noundef nonnull %iter) #9
  %tobool44.not394 = icmp eq ptr %call43, null
  br i1 %tobool44.not394, label %if.then40.if.else_crit_edge, label %for.body.preheader

if.then40.if.else_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.preheader:                               ; preds = %if.then40
  %next_port_in_aggregator54 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %slave_iter.0395 = phi ptr [ %call59, %for.inc.for.body_crit_edge ], [ %call43, %for.body.preheader ]
  %ad_info45 = getelementptr inbounds %struct.slave, ptr %slave_iter.0395, i32 0, i32 15
  %71 = ptrtoint ptr %ad_info45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ad_info45, align 8
  %lag_ports47 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %lag_ports47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lag_ports47, align 4
  %tobool48.not = icmp eq ptr %74, null
  br i1 %tobool48.not, label %for.body.for.end_crit_edge, label %lor.lhs.false49

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false49:                                  ; preds = %for.body
  %cmp51 = icmp eq ptr %74, %port4
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false49.for.inc_crit_edge

lor.lhs.false49.for.inc_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %75 = ptrtoint ptr %next_port_in_aggregator54 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %next_port_in_aggregator54, align 4
  %tobool55.not = icmp eq ptr %76, null
  br i1 %tobool55.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false49.for.inc_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %call59 = call ptr @netdev_lower_get_next_private(ptr noundef %78, ptr noundef nonnull %iter) #9
  %tobool44.not = icmp eq ptr %call59, null
  br i1 %tobool44.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge
  %tobool63.not = icmp eq ptr %72, null
  br i1 %tobool63.not, label %for.end.if.else_crit_edge, label %land.lhs.true64

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true64:                                  ; preds = %for.end
  %lag_ports65 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 10
  %79 = ptrtoint ptr %lag_ports65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lag_ports65, align 4
  %tobool66.not = icmp eq ptr %80, null
  br i1 %tobool66.not, label %land.lhs.true64.do.body77_crit_edge, label %lor.lhs.false67

land.lhs.true64.do.body77_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

lor.lhs.false67:                                  ; preds = %land.lhs.true64
  %cmp69 = icmp eq ptr %80, %port4
  br i1 %cmp69, label %land.lhs.true71, label %lor.lhs.false67.if.else_crit_edge

lor.lhs.false67.if.else_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true71:                                  ; preds = %lor.lhs.false67
  %next_port_in_aggregator73 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 30
  %81 = ptrtoint ptr %next_port_in_aggregator73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %next_port_in_aggregator73, align 4
  %tobool74.not = icmp eq ptr %82, null
  br i1 %tobool74.not, label %land.lhs.true71.do.body77_crit_edge, label %land.lhs.true71.if.else_crit_edge

land.lhs.true71.if.else_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true71.do.body77_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

do.body77:                                        ; preds = %land.lhs.true71.do.body77_crit_edge, %land.lhs.true64.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then89)) #9
          to label %do.end102 [label %if.then89], !srcloc !192

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  %85 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %slave, align 8
  %aggregator_identifier94 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 1
  %87 = ptrtoint ptr %aggregator_identifier94 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %aggregator_identifier94, align 2
  %conv95 = zext i16 %88 to i32
  %aggregator_identifier96 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 1
  %89 = ptrtoint ptr %aggregator_identifier96 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %aggregator_identifier96, align 2
  %conv97 = zext i16 %90 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug374, ptr noundef %84, ptr noundef nonnull @.str.5, ptr noundef %86, i32 noundef %conv95, i32 noundef %conv97) #9
  br label %do.end102

do.end102:                                        ; preds = %if.then89, %do.body77
  %91 = ptrtoint ptr %lag_ports65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lag_ports65, align 4
  %cmp104 = icmp eq ptr %92, %port4
  br i1 %cmp104, label %land.lhs.true106, label %do.end102.if.end114_crit_edge

do.end102.if.end114_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

land.lhs.true106:                                 ; preds = %do.end102
  %is_active = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 12
  %93 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool108.not = icmp eq i16 %94, 0
  br i1 %tobool108.not, label %land.lhs.true106.if.end114_crit_edge, label %if.then109

land.lhs.true106.if.end114_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  %97 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %slave, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %96, ptr noundef nonnull @.str.6, ptr noundef %98) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %land.lhs.true106.if.end114_crit_edge, %do.end102.if.end114_crit_edge
  %tobool139.not = phi i1 [ false, %if.then109 ], [ true, %land.lhs.true106.if.end114_crit_edge ], [ true, %do.end102.if.end114_crit_edge ]
  %is_individual = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 2
  %99 = ptrtoint ptr %is_individual to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %is_individual, align 4, !range !194
  %is_individual116 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 2
  %101 = ptrtoint ptr %is_individual116 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %is_individual116, align 4
  %actor_admin_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 3
  %102 = ptrtoint ptr %actor_admin_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %actor_admin_aggregator_key, align 2
  %actor_admin_aggregator_key118 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 3
  %104 = ptrtoint ptr %actor_admin_aggregator_key118 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %actor_admin_aggregator_key118, align 2
  %actor_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 4
  %105 = ptrtoint ptr %actor_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %actor_oper_aggregator_key, align 4
  %actor_oper_aggregator_key119 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 4
  %107 = ptrtoint ptr %actor_oper_aggregator_key119 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %actor_oper_aggregator_key119, align 4
  %partner_system = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 5
  %partner_system120 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 5
  %108 = call ptr @memcpy(ptr %partner_system, ptr %partner_system120, i32 6)
  %partner_system_priority = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 6
  %109 = ptrtoint ptr %partner_system_priority to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %partner_system_priority, align 4
  %partner_system_priority121 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 6
  %111 = ptrtoint ptr %partner_system_priority121 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %partner_system_priority121, align 4
  %partner_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 7
  %112 = ptrtoint ptr %partner_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %partner_oper_aggregator_key, align 2
  %partner_oper_aggregator_key122 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 7
  %114 = ptrtoint ptr %partner_oper_aggregator_key122 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %partner_oper_aggregator_key122, align 2
  %receive_state = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 8
  %115 = ptrtoint ptr %receive_state to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %receive_state, align 4
  %receive_state123 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 8
  %117 = ptrtoint ptr %receive_state123 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %receive_state123, align 4
  %transmit_state = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 9
  %118 = ptrtoint ptr %transmit_state to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %transmit_state, align 2
  %transmit_state124 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 9
  %120 = ptrtoint ptr %transmit_state124 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %transmit_state124, align 2
  %121 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lag_ports, align 4
  %123 = ptrtoint ptr %lag_ports65 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %lag_ports65, align 4
  %is_active127 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 12
  %124 = ptrtoint ptr %is_active127 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %is_active127, align 4
  %is_active128 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 12
  %126 = ptrtoint ptr %is_active128 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %is_active128, align 4
  %num_of_ports = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 13
  %127 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %num_of_ports, align 2
  %num_of_ports129 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 13
  %129 = ptrtoint ptr %num_of_ports129 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %num_of_ports129, align 2
  %temp_port.0398 = load ptr, ptr %lag_ports, align 4
  %tobool132.not399 = icmp eq ptr %temp_port.0398, null
  br i1 %tobool132.not399, label %if.end114.for.end138_crit_edge, label %for.body133.lr.ph

if.end114.for.end138_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end138

for.body133.lr.ph:                                ; preds = %if.end114
  %aggregator_identifier135 = getelementptr inbounds %struct.aggregator, ptr %72, i32 0, i32 1
  br label %for.body133

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %for.body133.lr.ph
  %temp_port.0400 = phi ptr [ %temp_port.0398, %for.body133.lr.ph ], [ %temp_port.0, %for.body133.for.body133_crit_edge ]
  %aggregator134 = getelementptr inbounds %struct.port, ptr %temp_port.0400, i32 0, i32 29
  %130 = ptrtoint ptr %aggregator134 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %72, ptr %aggregator134, align 4
  %131 = ptrtoint ptr %aggregator_identifier135 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %aggregator_identifier135, align 2
  %actor_port_aggregator_identifier = getelementptr inbounds %struct.port, ptr %temp_port.0400, i32 0, i32 4
  %133 = ptrtoint ptr %actor_port_aggregator_identifier to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %actor_port_aggregator_identifier, align 4
  %next_port_in_aggregator137 = getelementptr inbounds %struct.port, ptr %temp_port.0400, i32 0, i32 30
  %134 = ptrtoint ptr %next_port_in_aggregator137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %temp_port.0 = load ptr, ptr %next_port_in_aggregator137, align 4
  %tobool132.not = icmp eq ptr %temp_port.0, null
  br i1 %tobool132.not, label %for.body133.for.end138_crit_edge, label %for.body133.for.body133_crit_edge

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body133

for.body133.for.end138_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end138

for.end138:                                       ; preds = %for.body133.for.end138_crit_edge, %if.end114.for.end138_crit_edge
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.end138.ad_clear_agg.exit_crit_edge, label %if.then.i353

for.end138.ad_clear_agg.exit_crit_edge:           ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_clear_agg.exit

if.then.i353:                                     ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %is_individual to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %is_individual, align 4
  %136 = ptrtoint ptr %is_active127 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %is_active127, align 4
  %137 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %num_of_ports, align 2
  %138 = call ptr @memset(ptr %actor_admin_aggregator_key, i32 0, i32 22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then4.i)) #9
          to label %ad_clear_agg.exit [label %if.then4.i], !srcloc !192

if.then4.i:                                       ; preds = %if.then.i353
  %slave.i354 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 11
  %139 = ptrtoint ptr %slave.i354 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %slave.i354, align 4
  %tobool5.not.i = icmp eq ptr %140, null
  br i1 %tobool5.not.i, label %if.then4.i.cond.end.i_crit_edge, label %cond.true.i

if.then4.i.cond.end.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then4.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %142, %cond.true.i ], [ @.str.27, %if.then4.i.cond.end.i_crit_edge ]
  %aggregator_identifier.i = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 1
  %143 = ptrtoint ptr %aggregator_identifier.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %aggregator_identifier.i, align 2
  %conv.i355 = zext i16 %144 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ad_clear_agg.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.26, ptr noundef %cond.i, i32 noundef %conv.i355) #9
  br label %ad_clear_agg.exit

ad_clear_agg.exit:                                ; preds = %cond.end.i, %if.then.i353, %for.end138.ad_clear_agg.exit_crit_edge
  br i1 %tobool139.not, label %ad_clear_agg.exit.do.body165_crit_edge, label %if.then140

ad_clear_agg.exit.do.body165_crit_edge:           ; preds = %ad_clear_agg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then140:                                       ; preds = %ad_clear_agg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = call fastcc ptr @__get_first_agg(ptr noundef %port4)
  call fastcc void @ad_agg_selection_logic(ptr noundef %call141, ptr noundef nonnull %dummy_slave_update)
  br label %do.body165

if.else:                                          ; preds = %land.lhs.true71.if.else_crit_edge, %lor.lhs.false67.if.else_crit_edge, %for.end.if.else_crit_edge, %for.inc.if.else_crit_edge, %if.then40.if.else_crit_edge
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 8
  %147 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %slave, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %146, ptr noundef nonnull @.str.7, ptr noundef %148) #12
  br label %do.body165

if.else148:                                       ; preds = %lor.lhs.false
  %is_active149 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 12
  %149 = ptrtoint ptr %is_active149 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %is_active149, align 4
  %tobool.not.i356 = icmp eq ptr %5, null
  br i1 %tobool.not.i356, label %if.else148.ad_clear_agg.exit370_crit_edge, label %if.then.i361

if.else148.ad_clear_agg.exit370_crit_edge:        ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_clear_agg.exit370

if.then.i361:                                     ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #11
  %is_individual.i357 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 2
  %151 = ptrtoint ptr %is_individual.i357 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %is_individual.i357, align 4
  %actor_admin_aggregator_key.i358 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 3
  %152 = ptrtoint ptr %is_active149 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %is_active149, align 4
  %num_of_ports.i360 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 13
  %153 = ptrtoint ptr %num_of_ports.i360 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %num_of_ports.i360, align 2
  %154 = call ptr @memset(ptr %actor_admin_aggregator_key.i358, i32 0, i32 22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then4.i364)) #9
          to label %ad_clear_agg.exit370 [label %if.then4.i364], !srcloc !192

if.then4.i364:                                    ; preds = %if.then.i361
  %slave.i362 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 11
  %155 = ptrtoint ptr %slave.i362 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %slave.i362, align 4
  %tobool5.not.i363 = icmp eq ptr %156, null
  br i1 %tobool5.not.i363, label %if.then4.i364.cond.end.i369_crit_edge, label %cond.true.i365

if.then4.i364.cond.end.i369_crit_edge:            ; preds = %if.then4.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i369

cond.true.i365:                                   ; preds = %if.then4.i364
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 8
  br label %cond.end.i369

cond.end.i369:                                    ; preds = %cond.true.i365, %if.then4.i364.cond.end.i369_crit_edge
  %cond.i366 = phi ptr [ %158, %cond.true.i365 ], [ @.str.27, %if.then4.i364.cond.end.i369_crit_edge ]
  %aggregator_identifier.i367 = getelementptr inbounds %struct.aggregator, ptr %5, i32 0, i32 1
  %159 = ptrtoint ptr %aggregator_identifier.i367 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %aggregator_identifier.i367, align 2
  %conv.i368 = zext i16 %160 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ad_clear_agg.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.26, ptr noundef %cond.i366, i32 noundef %conv.i368) #9
  br label %ad_clear_agg.exit370

ad_clear_agg.exit370:                             ; preds = %cond.end.i369, %if.then.i361, %if.else148.ad_clear_agg.exit370_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool151.not = icmp eq i16 %150, 0
  br i1 %tobool151.not, label %ad_clear_agg.exit370.do.body165_crit_edge, label %if.then152

ad_clear_agg.exit370.do.body165_crit_edge:        ; preds = %ad_clear_agg.exit370
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then152:                                       ; preds = %ad_clear_agg.exit370
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 8
  %163 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %slave, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %162, ptr noundef nonnull @.str.6, ptr noundef %164) #12
  %call157 = tail call fastcc ptr @__get_first_agg(ptr noundef %port4)
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.then152.do.body165_crit_edge, label %if.then159

if.then152.do.body165_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

if.then159:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ad_agg_selection_logic(ptr noundef nonnull %call157, ptr noundef nonnull %dummy_slave_update)
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %if.then152.do.body165_crit_edge, %ad_clear_agg.exit370.do.body165_crit_edge, %if.else, %if.then140, %ad_clear_agg.exit.do.body165_crit_edge, %__update_lacpdu_from_port.exit.do.body165_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then177)) #9
          to label %do.end187 [label %if.then177], !srcloc !192

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 8
  %167 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %slave, align 8
  %169 = ptrtoint ptr %port4 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %port4, align 4
  %conv182 = zext i16 %170 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug375, ptr noundef %166, ptr noundef nonnull @.str.8, ptr noundef %168, i32 noundef %conv182) #9
  br label %do.end187

do.end187:                                        ; preds = %if.then177, %do.body165
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 8
  %lower190 = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 13, i32 1
  %173 = ptrtoint ptr %lower190 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lower190, align 8
  %175 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %iter, align 4
  %176 = load ptr, ptr %1, align 8
  %call193 = call ptr @netdev_lower_get_next_private(ptr noundef %176, ptr noundef nonnull %iter) #9
  %tobool195.not405 = icmp eq ptr %call193, null
  br i1 %tobool195.not405, label %do.end187.for.end237_crit_edge, label %for.body196.preheader

do.end187.for.end237_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end237

for.body196.preheader:                            ; preds = %do.end187
  %next_port_in_aggregator208 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 30
  %next_port_in_aggregator211 = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 1, i32 30
  br label %for.body196

for.body196:                                      ; preds = %for.inc234.for.body196_crit_edge, %for.body196.preheader
  %slave_iter.1406 = phi ptr [ %call236, %for.inc234.for.body196_crit_edge ], [ %call193, %for.body196.preheader ]
  %ad_info197 = getelementptr inbounds %struct.slave, ptr %slave_iter.1406, i32 0, i32 15
  %177 = ptrtoint ptr %ad_info197 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ad_info197, align 8
  %lag_ports199 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 10
  %179 = ptrtoint ptr %lag_ports199 to i32
  call void @__asan_load4_noabort(i32 %179)
  %temp_port.1401 = load ptr, ptr %lag_ports199, align 4
  %tobool201.not402 = icmp eq ptr %temp_port.1401, null
  br i1 %tobool201.not402, label %for.body196.for.inc234_crit_edge, label %for.body202.preheader

for.body196.for.inc234_crit_edge:                 ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc234

for.body202.preheader:                            ; preds = %for.body196
  %cmp203415 = icmp eq ptr %temp_port.1401, %port4
  br i1 %cmp203415, label %for.body202.preheader.if.then205_crit_edge, label %for.body202.preheader.for.inc231_crit_edge

for.body202.preheader.for.inc231_crit_edge:       ; preds = %for.body202.preheader
  br label %for.inc231

for.body202.preheader.if.then205_crit_edge:       ; preds = %for.body202.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then205

for.body202:                                      ; preds = %for.inc231
  %cmp203 = icmp eq ptr %temp_port.1, %port4
  br i1 %cmp203, label %for.body202.if.then205_crit_edge, label %for.body202.for.inc231_crit_edge

for.body202.for.inc231_crit_edge:                 ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc231

for.body202.if.then205_crit_edge:                 ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then205

if.then205:                                       ; preds = %for.body202.if.then205_crit_edge, %for.body202.preheader.if.then205_crit_edge
  %prev_port.0403.lcssa = phi ptr [ null, %for.body202.preheader.if.then205_crit_edge ], [ %temp_port.1404416, %for.body202.if.then205_crit_edge ]
  %tobool206.not = icmp eq ptr %prev_port.0403.lcssa, null
  br i1 %tobool206.not, label %if.else210, label %if.then207

if.then207:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %next_port_in_aggregator208 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %next_port_in_aggregator208, align 4
  %next_port_in_aggregator209 = getelementptr inbounds %struct.port, ptr %prev_port.0403.lcssa, i32 0, i32 30
  %182 = ptrtoint ptr %next_port_in_aggregator209 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %next_port_in_aggregator209, align 4
  %183 = ptrtoint ptr %lag_ports199 to i32
  call void @__asan_load4_noabort(i32 %183)
  %port.05.i.pr = load ptr, ptr %lag_ports199, align 4
  br label %if.end213

if.else210:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %next_port_in_aggregator211 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %next_port_in_aggregator211, align 4
  %186 = ptrtoint ptr %lag_ports199 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %lag_ports199, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.else210, %if.then207
  %port.05.i = phi ptr [ %185, %if.else210 ], [ %port.05.i.pr, %if.then207 ]
  %num_of_ports214 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 13
  %187 = ptrtoint ptr %num_of_ports214 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %num_of_ports214, align 2
  %dec = add i16 %188, -1
  store i16 %dec, ptr %num_of_ports214, align 2
  %tobool.not6.i = icmp eq ptr %port.05.i, null
  br i1 %tobool.not6.i, label %if.end213.if.then218_crit_edge, label %if.end213.for.body.i_crit_edge

if.end213.for.body.i_crit_edge:                   ; preds = %if.end213
  br label %for.body.i

if.end213.if.then218_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then218

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end213.for.body.i_crit_edge
  %port.08.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.05.i, %if.end213.for.body.i_crit_edge ]
  %active.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end213.for.body.i_crit_edge ]
  %is_enabled.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 12
  %189 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_enabled.i, align 2, !range !194
  %191 = zext i8 %190 to i32
  %spec.select.i = add i32 %active.07.i, %191
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 30
  %192 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool.not.i371 = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i371, label %__agg_active_ports.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__agg_active_ports.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp216 = icmp eq i32 %spec.select.i, 0
  br i1 %cmp216, label %__agg_active_ports.exit.if.then218_crit_edge, label %__agg_active_ports.exit.for.inc234_crit_edge

__agg_active_ports.exit.for.inc234_crit_edge:     ; preds = %__agg_active_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc234

__agg_active_ports.exit.if.then218_crit_edge:     ; preds = %__agg_active_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then218

if.then218:                                       ; preds = %__agg_active_ports.exit.if.then218_crit_edge, %if.end213.if.then218_crit_edge
  %is_active219 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 12
  %193 = ptrtoint ptr %is_active219 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %is_active219, align 4
  %tobool.not.i372 = icmp eq ptr %178, null
  br i1 %tobool.not.i372, label %if.then218.ad_clear_agg.exit386_crit_edge, label %if.then.i377

if.then218.ad_clear_agg.exit386_crit_edge:        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_clear_agg.exit386

if.then.i377:                                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  %is_individual.i373 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 2
  %195 = ptrtoint ptr %is_individual.i373 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %is_individual.i373, align 4
  %actor_admin_aggregator_key.i374 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 3
  %196 = ptrtoint ptr %is_active219 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %is_active219, align 4
  %197 = ptrtoint ptr %num_of_ports214 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %num_of_ports214, align 2
  %198 = call ptr @memset(ptr %actor_admin_aggregator_key.i374, i32 0, i32 22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_unbind_slave, %if.then4.i380)) #9
          to label %ad_clear_agg.exit386 [label %if.then4.i380], !srcloc !192

if.then4.i380:                                    ; preds = %if.then.i377
  %slave.i378 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 11
  %199 = ptrtoint ptr %slave.i378 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %slave.i378, align 4
  %tobool5.not.i379 = icmp eq ptr %200, null
  br i1 %tobool5.not.i379, label %if.then4.i380.cond.end.i385_crit_edge, label %cond.true.i381

if.then4.i380.cond.end.i385_crit_edge:            ; preds = %if.then4.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i385

cond.true.i381:                                   ; preds = %if.then4.i380
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 8
  br label %cond.end.i385

cond.end.i385:                                    ; preds = %cond.true.i381, %if.then4.i380.cond.end.i385_crit_edge
  %cond.i382 = phi ptr [ %202, %cond.true.i381 ], [ @.str.27, %if.then4.i380.cond.end.i385_crit_edge ]
  %aggregator_identifier.i383 = getelementptr inbounds %struct.aggregator, ptr %178, i32 0, i32 1
  %203 = ptrtoint ptr %aggregator_identifier.i383 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %aggregator_identifier.i383, align 2
  %conv.i384 = zext i16 %204 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ad_clear_agg.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.26, ptr noundef %cond.i382, i32 noundef %conv.i384) #9
  br label %ad_clear_agg.exit386

ad_clear_agg.exit386:                             ; preds = %cond.end.i385, %if.then.i377, %if.then218.ad_clear_agg.exit386_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool221.not = icmp eq i16 %194, 0
  br i1 %tobool221.not, label %ad_clear_agg.exit386.for.inc234_crit_edge, label %if.then222

ad_clear_agg.exit386.for.inc234_crit_edge:        ; preds = %ad_clear_agg.exit386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc234

if.then222:                                       ; preds = %ad_clear_agg.exit386
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 8
  %207 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %slave, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %206, ptr noundef nonnull @.str.6, ptr noundef %208) #12
  %call227 = call fastcc ptr @__get_first_agg(ptr noundef %port4)
  call fastcc void @ad_agg_selection_logic(ptr noundef %call227, ptr noundef nonnull %dummy_slave_update)
  br label %for.inc234

for.inc231:                                       ; preds = %for.body202.for.inc231_crit_edge, %for.body202.preheader.for.inc231_crit_edge
  %temp_port.1404416 = phi ptr [ %temp_port.1, %for.body202.for.inc231_crit_edge ], [ %temp_port.1401, %for.body202.preheader.for.inc231_crit_edge ]
  %next_port_in_aggregator232 = getelementptr inbounds %struct.port, ptr %temp_port.1404416, i32 0, i32 30
  %209 = ptrtoint ptr %next_port_in_aggregator232 to i32
  call void @__asan_load4_noabort(i32 %209)
  %temp_port.1 = load ptr, ptr %next_port_in_aggregator232, align 4
  %tobool201.not = icmp eq ptr %temp_port.1, null
  br i1 %tobool201.not, label %for.inc231.for.inc234_crit_edge, label %for.body202

for.inc231.for.inc234_crit_edge:                  ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc234

for.inc234:                                       ; preds = %for.inc231.for.inc234_crit_edge, %if.then222, %ad_clear_agg.exit386.for.inc234_crit_edge, %__agg_active_ports.exit.for.inc234_crit_edge, %for.body196.for.inc234_crit_edge
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 8
  %call236 = call ptr @netdev_lower_get_next_private(ptr noundef %211, ptr noundef nonnull %iter) #9
  %tobool195.not = icmp eq ptr %call236, null
  br i1 %tobool195.not, label %for.inc234.for.end237_crit_edge, label %for.inc234.for.body196_crit_edge

for.inc234.for.body196_crit_edge:                 ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body196

for.inc234.for.end237_crit_edge:                  ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end237

for.end237:                                       ; preds = %for.inc234.for.end237_crit_edge, %do.end187.for.end237_crit_edge
  %212 = ptrtoint ptr %slave5 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %slave5, align 4
  br label %out

out:                                              ; preds = %for.end237, %if.then
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy_slave_update) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad_lacpdu_send(ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave1 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave1, align 4
  %call.i.i33 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 124, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ad_info = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ad_info, align 8
  %lacpdu_tx = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 2, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_tx, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_tx) #9
  %bond = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 4
  %lacpdu_tx4 = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 17, i32 1, i32 1
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_tx4, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_tx4) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.anon.0, ptr %call.i.i33, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 15, i32 0, i32 21
  %14 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %add = add i16 %conv.i, 14
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add, ptr %network_header, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -30711, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %priority, align 4
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i33, i32 noundef 124) #9
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 25215488, ptr %call6, align 4
  %add.ptr1.i = getelementptr i8, ptr %call6, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %add.ptr1.i, align 2
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %call6, i32 0, i32 1
  %perm_hwaddr = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %perm_hwaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %perm_hwaddr, align 4
  %22 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %h_source, align 4
  %add.ptr.i = getelementptr %struct.slave, ptr %1, i32 0, i32 14, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i34 = getelementptr %struct.ethhdr, ptr %call6, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %add.ptr1.i34 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i34, align 2
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %call6, i32 0, i32 2
  %26 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -30711, ptr %h_proto, align 1
  %lacpdu = getelementptr inbounds %struct.lacpdu_header, ptr %call6, i32 0, i32 1
  %lacpdu11 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32
  %27 = call ptr @memcpy(ptr %lacpdu, ptr %lacpdu11, i32 110)
  %call12 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i33) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_agg_selection_logic(ptr nocapture noundef readonly %agg, ptr nocapture noundef writeonly %update_slave_arr) unnamed_addr #0 align 64 {
entry:
  %iter.i446 = alloca ptr, align 4
  %iter.i = alloca ptr, align 4
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.aggregator, ptr %agg, i32 0, i32 11
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %bond1 = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bond1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !193
  %5 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave, align 4
  %bond1.i = getelementptr inbounds %struct.slave, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bond1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bond1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lower.i, ptr %iter.i, align 4
  %16 = load ptr, ptr %12, align 8
  %call.i381 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %16, ptr noundef nonnull %iter.i) #9
  %tobool.not16.i = icmp eq ptr %call.i381, null
  br i1 %tobool.not16.i, label %rcu_read_lock.exit.__get_active_agg.exit.thread_crit_edge, label %rcu_read_lock.exit.for.body.i_crit_edge

rcu_read_lock.exit.for.body.i_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body.i

rcu_read_lock.exit.__get_active_agg.exit.thread_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.for.body.i_crit_edge
  %slave2.017.i = phi ptr [ %call9.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i381, %rcu_read_lock.exit.for.body.i_crit_edge ]
  %ad_info.i = getelementptr inbounds %struct.slave, ptr %slave2.017.i, i32 0, i32 15
  %17 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ad_info.i, align 8
  %is_active.i = getelementptr inbounds %struct.aggregator, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool5.not.i = icmp eq i16 %20, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %__get_active_agg.exit

for.inc.i:                                        ; preds = %for.body.i
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 8
  %call9.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %22, ptr noundef nonnull %iter.i) #9
  %tobool.not.i382 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i382, label %for.inc.i.__get_active_agg.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.__get_active_agg.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit.thread

__get_active_agg.exit.thread:                     ; preds = %for.inc.i.__get_active_agg.exit.thread_crit_edge, %rcu_read_lock.exit.__get_active_agg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  br label %cond.end

__get_active_agg.exit:                            ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %__get_active_agg.exit.cond.end_crit_edge, label %land.lhs.true

__get_active_agg.exit.cond.end_crit_edge:         ; preds = %__get_active_agg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %__get_active_agg.exit
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %18, i32 0, i32 10
  %23 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lag_ports.i, align 4
  %tobool.not.i384 = icmp eq ptr %24, null
  br i1 %tobool.not.i384, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.for.body.i386_crit_edge

land.lhs.true.for.body.i386_crit_edge:            ; preds = %land.lhs.true
  br label %for.body.i386

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.body.i386:                                    ; preds = %for.inc.i388.for.body.i386_crit_edge, %land.lhs.true.for.body.i386_crit_edge
  %port.015.i = phi ptr [ %35, %for.inc.i388.for.body.i386_crit_edge ], [ %24, %land.lhs.true.for.body.i386_crit_edge ]
  %slave.i385 = getelementptr inbounds %struct.port, ptr %port.015.i, i32 0, i32 28
  %25 = ptrtoint ptr %slave.i385 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave.i385, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i386.for.inc.i388_crit_edge, label %land.lhs.true.i387

for.body.i386.for.inc.i388_crit_edge:             ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i388

land.lhs.true.i387:                               ; preds = %for.body.i386
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i387.cond.end_crit_edge, label %land.lhs.true.i387.for.inc.i388_crit_edge

land.lhs.true.i387.for.inc.i388_crit_edge:        ; preds = %land.lhs.true.i387
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i388

land.lhs.true.i387.cond.end_crit_edge:            ; preds = %land.lhs.true.i387
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.inc.i388:                                     ; preds = %land.lhs.true.i387.for.inc.i388_crit_edge, %for.body.i386.for.inc.i388_crit_edge
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.015.i, i32 0, i32 30
  %34 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %for.inc.i388.cond.end_crit_edge, label %for.inc.i388.for.body.i386_crit_edge

for.inc.i388.for.body.i386_crit_edge:             ; preds = %for.inc.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i386

for.inc.i388.cond.end_crit_edge:                  ; preds = %for.inc.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i388.cond.end_crit_edge, %land.lhs.true.i387.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %__get_active_agg.exit.cond.end_crit_edge, %__get_active_agg.exit.thread
  %tobool.not491 = phi i1 [ true, %__get_active_agg.exit.cond.end_crit_edge ], [ true, %__get_active_agg.exit.thread ], [ false, %land.lhs.true.cond.end_crit_edge ], [ false, %for.inc.i388.cond.end_crit_edge ], [ false, %land.lhs.true.i387.cond.end_crit_edge ]
  %retval.0.i383490 = phi ptr [ null, %__get_active_agg.exit.cond.end_crit_edge ], [ null, %__get_active_agg.exit.thread ], [ %18, %land.lhs.true.cond.end_crit_edge ], [ %18, %for.inc.i388.cond.end_crit_edge ], [ %18, %land.lhs.true.i387.cond.end_crit_edge ]
  %cond = phi ptr [ null, %__get_active_agg.exit.cond.end_crit_edge ], [ null, %__get_active_agg.exit.thread ], [ null, %land.lhs.true.cond.end_crit_edge ], [ %18, %land.lhs.true.i387.cond.end_crit_edge ], [ null, %for.inc.i388.cond.end_crit_edge ]
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lower, ptr %iter, align 4
  %39 = load ptr, ptr %3, align 8
  %call6 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %39, ptr noundef nonnull %iter) #9
  %tobool7.not518 = icmp eq ptr %call6, null
  br i1 %tobool7.not518, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %best.0520 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ %cond, %cond.end.for.body_crit_edge ]
  %slave2.0519 = phi ptr [ %call15, %for.inc.for.body_crit_edge ], [ %call6, %cond.end.for.body_crit_edge ]
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave2.0519, i32 0, i32 15
  %40 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ad_info, align 8
  %is_active = getelementptr inbounds %struct.aggregator, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %is_active to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %is_active, align 4
  %lag_ports.i390 = getelementptr inbounds %struct.aggregator, ptr %41, i32 0, i32 10
  %43 = ptrtoint ptr %lag_ports.i390 to i32
  call void @__asan_load4_noabort(i32 %43)
  %port.05.i = load ptr, ptr %lag_ports.i390, align 4
  %tobool.not6.i = icmp eq ptr %port.05.i, null
  br i1 %tobool.not6.i, label %for.body.for.inc_crit_edge, label %for.body.for.body.i393_crit_edge

for.body.for.body.i393_crit_edge:                 ; preds = %for.body
  br label %for.body.i393

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i393:                                    ; preds = %for.body.i393.for.body.i393_crit_edge, %for.body.for.body.i393_crit_edge
  %port.08.i = phi ptr [ %port.0.i, %for.body.i393.for.body.i393_crit_edge ], [ %port.05.i, %for.body.for.body.i393_crit_edge ]
  %active.07.i = phi i32 [ %spec.select.i, %for.body.i393.for.body.i393_crit_edge ], [ 0, %for.body.for.body.i393_crit_edge ]
  %is_enabled.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 12
  %44 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_enabled.i, align 2, !range !194
  %46 = zext i8 %45 to i32
  %spec.select.i = add i32 %active.07.i, %46
  %next_port_in_aggregator.i391 = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 30
  %47 = ptrtoint ptr %next_port_in_aggregator.i391 to i32
  call void @__asan_load4_noabort(i32 %47)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i391, align 4
  %tobool.not.i392 = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i392, label %__agg_active_ports.exit, label %for.body.i393.for.body.i393_crit_edge

for.body.i393.for.body.i393_crit_edge:            ; preds = %for.body.i393
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i393

__agg_active_ports.exit:                          ; preds = %for.body.i393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool9.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool9.not, label %__agg_active_ports.exit.for.inc_crit_edge, label %__agg_active_ports.exit.for.body.i401_crit_edge

__agg_active_ports.exit.for.body.i401_crit_edge:  ; preds = %__agg_active_ports.exit
  br label %for.body.i401

__agg_active_ports.exit.for.inc_crit_edge:        ; preds = %__agg_active_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i401:                                    ; preds = %for.inc.i406.for.body.i401_crit_edge, %__agg_active_ports.exit.for.body.i401_crit_edge
  %port.015.i396 = phi ptr [ %58, %for.inc.i406.for.body.i401_crit_edge ], [ %port.05.i, %__agg_active_ports.exit.for.body.i401_crit_edge ]
  %slave.i397 = getelementptr inbounds %struct.port, ptr %port.015.i396, i32 0, i32 28
  %48 = ptrtoint ptr %slave.i397 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slave.i397, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %state.i.i398 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %state.i.i398 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i.i398, align 4
  %and1.i.i.i399 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i399)
  %tobool.i.not.i400 = icmp eq i32 %and1.i.i.i399, 0
  br i1 %tobool.i.not.i400, label %for.body.i401.for.inc.i406_crit_edge, label %land.lhs.true.i403

for.body.i401.for.inc.i406_crit_edge:             ; preds = %for.body.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i406

land.lhs.true.i403:                               ; preds = %for.body.i401
  %54 = ptrtoint ptr %state.i.i398 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i.i398, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i402 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i402, label %if.then, label %land.lhs.true.i403.for.inc.i406_crit_edge

land.lhs.true.i403.for.inc.i406_crit_edge:        ; preds = %land.lhs.true.i403
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i406

for.inc.i406:                                     ; preds = %land.lhs.true.i403.for.inc.i406_crit_edge, %for.body.i401.for.inc.i406_crit_edge
  %next_port_in_aggregator.i404 = getelementptr inbounds %struct.port, ptr %port.015.i396, i32 0, i32 30
  %57 = ptrtoint ptr %next_port_in_aggregator.i404 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next_port_in_aggregator.i404, align 4
  %tobool2.not.i405 = icmp eq ptr %58, null
  br i1 %tobool2.not.i405, label %for.inc.i406.for.inc_crit_edge, label %for.inc.i406.for.body.i401_crit_edge

for.inc.i406.for.body.i401_crit_edge:             ; preds = %for.inc.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i401

for.inc.i406.for.inc_crit_edge:                   ; preds = %for.inc.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true.i403
  %tobool.not.i409 = icmp eq ptr %best.0520, null
  br i1 %tobool.not.i409, label %if.then.for.inc_crit_edge, label %if.end.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %is_individual.i = getelementptr inbounds %struct.aggregator, ptr %41, i32 0, i32 2
  %59 = ptrtoint ptr %is_individual.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_individual.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool1.not.i = icmp eq i8 %60, 0
  %is_individual2.i = getelementptr inbounds %struct.aggregator, ptr %best.0520, i32 0, i32 2
  %61 = ptrtoint ptr %is_individual2.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_individual2.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not.i = icmp eq i8 %62, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i410, label %land.lhs.true8.i

land.lhs.true.i410:                               ; preds = %if.end.i
  br i1 %tobool3.not.i, label %land.lhs.true.i410.if.end12.i_crit_edge, label %land.lhs.true.i410.for.inc_crit_edge

land.lhs.true.i410.for.inc_crit_edge:             ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i410.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  br i1 %tobool3.not.i, label %land.lhs.true8.i.for.inc_crit_edge, label %land.lhs.true8.i.if.end12.i_crit_edge

land.lhs.true8.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true8.i.for.inc_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true8.i.if.end12.i_crit_edge, %land.lhs.true.i410.if.end12.i_crit_edge
  %partner_system.i.i = getelementptr inbounds %struct.aggregator, ptr %41, i32 0, i32 5
  %63 = ptrtoint ptr %partner_system.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %partner_system.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.aggregator, ptr %41, i32 0, i32 5, i32 0, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %66 to i32
  %or.i.i.i = or i32 %64, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  %partner_system.i93.i = getelementptr inbounds %struct.aggregator, ptr %best.0520, i32 0, i32 5
  %67 = ptrtoint ptr %partner_system.i93.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %partner_system.i93.i, align 4
  %add.ptr.i.i94.i = getelementptr %struct.aggregator, ptr %best.0520, i32 0, i32 5, i32 0, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i94.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i94.i, align 2
  %conv.i.i95.i = zext i16 %70 to i32
  %or.i.i96.i = or i32 %68, %conv.i.i95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i96.i)
  %cmp.i.i97.not.i = icmp eq i32 %or.i.i96.i, 0
  br i1 %cmp.i.i.not.i, label %land.lhs.true21.i, label %land.lhs.true14.i

land.lhs.true14.i:                                ; preds = %if.end12.i
  br i1 %cmp.i.i97.not.i, label %land.lhs.true14.i.for.inc_crit_edge, label %land.lhs.true14.i.if.end25.i_crit_edge

land.lhs.true14.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true14.i.for.inc_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true21.i:                                ; preds = %if.end12.i
  br i1 %cmp.i.i97.not.i, label %land.lhs.true21.i.if.end25.i_crit_edge, label %land.lhs.true21.i.for.inc_crit_edge

land.lhs.true21.i.for.inc_crit_edge:              ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true21.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.end25.i:                                       ; preds = %land.lhs.true21.i.if.end25.i_crit_edge, %land.lhs.true14.i.if.end25.i_crit_edge
  %slave.i.i.i = getelementptr inbounds %struct.port, ptr %port.05.i, i32 0, i32 28
  %71 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %slave.i.i.i, align 4
  %cmp.i.i99.i = icmp eq ptr %72, null
  br i1 %cmp.i.i99.i, label %if.end25.i.sw.bb36.i_crit_edge, label %__get_bond_by_port.exit.i.i

if.end25.i.sw.bb36.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

__get_bond_by_port.exit.i.i:                      ; preds = %if.end25.i
  %bond.i.i.i.i = getelementptr inbounds %struct.slave, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %bond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bond.i.i.i.i, align 4
  %cmp.i.i = icmp eq ptr %74, null
  br i1 %cmp.i.i, label %__get_bond_by_port.exit.i.i.sw.bb36.i_crit_edge, label %__get_agg_selection_mode.exit.i

__get_bond_by_port.exit.i.i.sw.bb36.i_crit_edge:  ; preds = %__get_bond_by_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

__get_agg_selection_mode.exit.i:                  ; preds = %__get_bond_by_port.exit.i.i
  %ad_select.i.i = getelementptr inbounds %struct.bonding, ptr %74, i32 0, i32 19, i32 16
  %75 = ptrtoint ptr %ad_select.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ad_select.i.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %do.body.i [
    i32 2, label %__get_agg_selection_mode.exit.i.for.body.i.i_crit_edge
    i32 0, label %__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge
    i32 1, label %__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge546
  ]

__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge546: ; preds = %__get_agg_selection_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge: ; preds = %__get_agg_selection_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

__get_agg_selection_mode.exit.i.for.body.i.i_crit_edge: ; preds = %__get_agg_selection_mode.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %__get_agg_selection_mode.exit.i.for.body.i.i_crit_edge
  %port.08.i.i = phi ptr [ %port.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %port.05.i, %__get_agg_selection_mode.exit.i.for.body.i.i_crit_edge ]
  %active.07.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %__get_agg_selection_mode.exit.i.for.body.i.i_crit_edge ]
  %is_enabled.i.i = getelementptr inbounds %struct.port, ptr %port.08.i.i, i32 0, i32 12
  %78 = ptrtoint ptr %is_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_enabled.i.i, align 2, !range !194
  %80 = zext i8 %79 to i32
  %spec.select.i.i = add i32 %active.07.i.i, %80
  %next_port_in_aggregator.i.i = getelementptr inbounds %struct.port, ptr %port.08.i.i, i32 0, i32 30
  %81 = ptrtoint ptr %next_port_in_aggregator.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %port.0.i.i = load ptr, ptr %next_port_in_aggregator.i.i, align 4
  %tobool.not.i.i412 = icmp eq ptr %port.0.i.i, null
  br i1 %tobool.not.i.i412, label %__agg_active_ports.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

__agg_active_ports.exit.i:                        ; preds = %for.body.i.i
  %lag_ports.i100.i = getelementptr inbounds %struct.aggregator, ptr %best.0520, i32 0, i32 10
  %82 = ptrtoint ptr %lag_ports.i100.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %port.05.i101.i = load ptr, ptr %lag_ports.i100.i, align 4
  %tobool.not6.i102.i = icmp eq ptr %port.05.i101.i, null
  br i1 %tobool.not6.i102.i, label %__agg_active_ports.exit.i.__agg_active_ports.exit112.i_crit_edge, label %__agg_active_ports.exit.i.for.body.i110.i_crit_edge

__agg_active_ports.exit.i.for.body.i110.i_crit_edge: ; preds = %__agg_active_ports.exit.i
  br label %for.body.i110.i

__agg_active_ports.exit.i.__agg_active_ports.exit112.i_crit_edge: ; preds = %__agg_active_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit112.i

for.body.i110.i:                                  ; preds = %for.body.i110.i.for.body.i110.i_crit_edge, %__agg_active_ports.exit.i.for.body.i110.i_crit_edge
  %port.08.i103.i = phi ptr [ %port.0.i108.i, %for.body.i110.i.for.body.i110.i_crit_edge ], [ %port.05.i101.i, %__agg_active_ports.exit.i.for.body.i110.i_crit_edge ]
  %active.07.i104.i = phi i32 [ %spec.select.i106.i, %for.body.i110.i.for.body.i110.i_crit_edge ], [ 0, %__agg_active_ports.exit.i.for.body.i110.i_crit_edge ]
  %is_enabled.i105.i = getelementptr inbounds %struct.port, ptr %port.08.i103.i, i32 0, i32 12
  %83 = ptrtoint ptr %is_enabled.i105.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_enabled.i105.i, align 2, !range !194
  %85 = zext i8 %84 to i32
  %spec.select.i106.i = add i32 %active.07.i104.i, %85
  %next_port_in_aggregator.i107.i = getelementptr inbounds %struct.port, ptr %port.08.i103.i, i32 0, i32 30
  %86 = ptrtoint ptr %next_port_in_aggregator.i107.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %port.0.i108.i = load ptr, ptr %next_port_in_aggregator.i107.i, align 4
  %tobool.not.i109.i = icmp eq ptr %port.0.i108.i, null
  br i1 %tobool.not.i109.i, label %for.body.i110.i.__agg_active_ports.exit112.i_crit_edge, label %for.body.i110.i.for.body.i110.i_crit_edge

for.body.i110.i.for.body.i110.i_crit_edge:        ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i110.i

for.body.i110.i.__agg_active_ports.exit112.i_crit_edge: ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit112.i

__agg_active_ports.exit112.i:                     ; preds = %for.body.i110.i.__agg_active_ports.exit112.i_crit_edge, %__agg_active_ports.exit.i.__agg_active_ports.exit112.i_crit_edge
  %active.0.lcssa.i111.i = phi i32 [ 0, %__agg_active_ports.exit.i.__agg_active_ports.exit112.i_crit_edge ], [ %spec.select.i106.i, %for.body.i110.i.__agg_active_ports.exit112.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %active.0.lcssa.i111.i)
  %cmp.i = icmp sgt i32 %spec.select.i.i, %active.0.lcssa.i111.i
  br i1 %cmp.i, label %__agg_active_ports.exit112.i.for.inc_crit_edge, label %__agg_active_ports.exit112.i.for.body.i123.i_crit_edge

__agg_active_ports.exit112.i.for.body.i123.i_crit_edge: ; preds = %__agg_active_ports.exit112.i
  br label %for.body.i123.i

__agg_active_ports.exit112.i.for.inc_crit_edge:   ; preds = %__agg_active_ports.exit112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i123.i:                                  ; preds = %for.body.i123.i.for.body.i123.i_crit_edge, %__agg_active_ports.exit112.i.for.body.i123.i_crit_edge
  %port.08.i116.i = phi ptr [ %port.0.i121.i, %for.body.i123.i.for.body.i123.i_crit_edge ], [ %port.05.i, %__agg_active_ports.exit112.i.for.body.i123.i_crit_edge ]
  %active.07.i117.i = phi i32 [ %spec.select.i119.i, %for.body.i123.i.for.body.i123.i_crit_edge ], [ 0, %__agg_active_ports.exit112.i.for.body.i123.i_crit_edge ]
  %is_enabled.i118.i = getelementptr inbounds %struct.port, ptr %port.08.i116.i, i32 0, i32 12
  %87 = ptrtoint ptr %is_enabled.i118.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_enabled.i118.i, align 2, !range !194
  %89 = zext i8 %88 to i32
  %spec.select.i119.i = add i32 %active.07.i117.i, %89
  %next_port_in_aggregator.i120.i = getelementptr inbounds %struct.port, ptr %port.08.i116.i, i32 0, i32 30
  %90 = ptrtoint ptr %next_port_in_aggregator.i120.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %port.0.i121.i = load ptr, ptr %next_port_in_aggregator.i120.i, align 4
  %tobool.not.i122.i = icmp eq ptr %port.0.i121.i, null
  br i1 %tobool.not.i122.i, label %__agg_active_ports.exit125.i, label %for.body.i123.i.for.body.i123.i_crit_edge

for.body.i123.i.for.body.i123.i_crit_edge:        ; preds = %for.body.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i123.i

__agg_active_ports.exit125.i:                     ; preds = %for.body.i123.i
  br i1 %tobool.not6.i102.i, label %__agg_active_ports.exit125.i.__agg_active_ports.exit138.i_crit_edge, label %__agg_active_ports.exit125.i.for.body.i136.i_crit_edge

__agg_active_ports.exit125.i.for.body.i136.i_crit_edge: ; preds = %__agg_active_ports.exit125.i
  br label %for.body.i136.i

__agg_active_ports.exit125.i.__agg_active_ports.exit138.i_crit_edge: ; preds = %__agg_active_ports.exit125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit138.i

for.body.i136.i:                                  ; preds = %for.body.i136.i.for.body.i136.i_crit_edge, %__agg_active_ports.exit125.i.for.body.i136.i_crit_edge
  %port.08.i129.i = phi ptr [ %port.0.i134.i, %for.body.i136.i.for.body.i136.i_crit_edge ], [ %port.05.i101.i, %__agg_active_ports.exit125.i.for.body.i136.i_crit_edge ]
  %active.07.i130.i = phi i32 [ %spec.select.i132.i, %for.body.i136.i.for.body.i136.i_crit_edge ], [ 0, %__agg_active_ports.exit125.i.for.body.i136.i_crit_edge ]
  %is_enabled.i131.i = getelementptr inbounds %struct.port, ptr %port.08.i129.i, i32 0, i32 12
  %91 = ptrtoint ptr %is_enabled.i131.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %is_enabled.i131.i, align 2, !range !194
  %93 = zext i8 %92 to i32
  %spec.select.i132.i = add i32 %active.07.i130.i, %93
  %next_port_in_aggregator.i133.i = getelementptr inbounds %struct.port, ptr %port.08.i129.i, i32 0, i32 30
  %94 = ptrtoint ptr %next_port_in_aggregator.i133.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %port.0.i134.i = load ptr, ptr %next_port_in_aggregator.i133.i, align 4
  %tobool.not.i135.i = icmp eq ptr %port.0.i134.i, null
  br i1 %tobool.not.i135.i, label %for.body.i136.i.__agg_active_ports.exit138.i_crit_edge, label %for.body.i136.i.for.body.i136.i_crit_edge

for.body.i136.i.for.body.i136.i_crit_edge:        ; preds = %for.body.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i136.i

for.body.i136.i.__agg_active_ports.exit138.i_crit_edge: ; preds = %for.body.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit138.i

__agg_active_ports.exit138.i:                     ; preds = %for.body.i136.i.__agg_active_ports.exit138.i_crit_edge, %__agg_active_ports.exit125.i.__agg_active_ports.exit138.i_crit_edge
  %active.0.lcssa.i137.i = phi i32 [ 0, %__agg_active_ports.exit125.i.__agg_active_ports.exit138.i_crit_edge ], [ %spec.select.i132.i, %for.body.i136.i.__agg_active_ports.exit138.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i119.i, i32 %active.0.lcssa.i137.i)
  %cmp33.i = icmp slt i32 %spec.select.i119.i, %active.0.lcssa.i137.i
  br i1 %cmp33.i, label %__agg_active_ports.exit138.i.for.inc_crit_edge, label %__agg_active_ports.exit138.i.sw.bb36.i_crit_edge

__agg_active_ports.exit138.i.sw.bb36.i_crit_edge: ; preds = %__agg_active_ports.exit138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

__agg_active_ports.exit138.i.for.inc_crit_edge:   ; preds = %__agg_active_ports.exit138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb36.i:                                        ; preds = %__agg_active_ports.exit138.i.sw.bb36.i_crit_edge, %__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge, %__get_agg_selection_mode.exit.i.sw.bb36.i_crit_edge546, %__get_bond_by_port.exit.i.i.sw.bb36.i_crit_edge, %if.end25.i.sw.bb36.i_crit_edge
  %call37.i = call fastcc i32 @__get_agg_bandwidth(ptr noundef %41) #9
  %call38.i = call fastcc i32 @__get_agg_bandwidth(ptr noundef nonnull %best.0520) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %call38.i)
  %cmp39.i = icmp ugt i32 %call37.i, %call38.i
  br i1 %cmp39.i, label %sw.bb36.i.for.inc_crit_edge, label %sw.bb36.i.sw.epilog.i_crit_edge

sw.bb36.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb36.i.for.inc_crit_edge:                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body.i:                                        ; preds = %__get_agg_selection_mode.exit.i
  %call42.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.body.i.sw.epilog.i_crit_edge, label %do.end.i

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i:                                         ; preds = %do.body.i
  %slave.i413 = getelementptr inbounds %struct.aggregator, ptr %41, i32 0, i32 11
  %95 = ptrtoint ptr %slave.i413 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %slave.i413, align 4
  %bond.i = getelementptr inbounds %struct.slave, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bond.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %96, align 8
  %103 = ptrtoint ptr %lag_ports.i390 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lag_ports.i390, align 4
  %slave.i.i139.i = getelementptr inbounds %struct.port, ptr %104, i32 0, i32 28
  %105 = ptrtoint ptr %slave.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %slave.i.i139.i, align 4
  %cmp.i.i140.i = icmp eq ptr %106, null
  br i1 %cmp.i.i140.i, label %do.end.i.__get_agg_selection_mode.exit147.i_crit_edge, label %__get_bond_by_port.exit.i143.i

do.end.i.__get_agg_selection_mode.exit147.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_agg_selection_mode.exit147.i

__get_bond_by_port.exit.i143.i:                   ; preds = %do.end.i
  %bond.i.i.i141.i = getelementptr inbounds %struct.slave, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %bond.i.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bond.i.i.i141.i, align 4
  %cmp.i142.i = icmp eq ptr %108, null
  br i1 %cmp.i142.i, label %__get_bond_by_port.exit.i143.i.__get_agg_selection_mode.exit147.i_crit_edge, label %if.end.i145.i

__get_bond_by_port.exit.i143.i.__get_agg_selection_mode.exit147.i_crit_edge: ; preds = %__get_bond_by_port.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_agg_selection_mode.exit147.i

if.end.i145.i:                                    ; preds = %__get_bond_by_port.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #11
  %ad_select.i144.i = getelementptr inbounds %struct.bonding, ptr %108, i32 0, i32 19, i32 16
  %109 = ptrtoint ptr %ad_select.i144.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ad_select.i144.i, align 4
  br label %__get_agg_selection_mode.exit147.i

__get_agg_selection_mode.exit147.i:               ; preds = %if.end.i145.i, %__get_bond_by_port.exit.i143.i.__get_agg_selection_mode.exit147.i_crit_edge, %do.end.i.__get_agg_selection_mode.exit147.i_crit_edge
  %retval.0.i146.i = phi i32 [ %110, %if.end.i145.i ], [ 0, %__get_bond_by_port.exit.i143.i.__get_agg_selection_mode.exit147.i_crit_edge ], [ 0, %do.end.i.__get_agg_selection_mode.exit147.i_crit_edge ]
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %100, ptr noundef %102, i32 noundef %retval.0.i146.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %__get_agg_selection_mode.exit147.i, %do.body.i.sw.epilog.i_crit_edge, %sw.bb36.i.sw.epilog.i_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.i, %sw.bb36.i.for.inc_crit_edge, %__agg_active_ports.exit138.i.for.inc_crit_edge, %__agg_active_ports.exit112.i.for.inc_crit_edge, %land.lhs.true21.i.for.inc_crit_edge, %land.lhs.true14.i.for.inc_crit_edge, %land.lhs.true8.i.for.inc_crit_edge, %land.lhs.true.i410.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.inc.i406.for.inc_crit_edge, %__agg_active_ports.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best.1 = phi ptr [ %best.0520, %__agg_active_ports.exit.for.inc_crit_edge ], [ %best.0520, %sw.epilog.i ], [ %41, %if.then.for.inc_crit_edge ], [ %41, %land.lhs.true.i410.for.inc_crit_edge ], [ %best.0520, %land.lhs.true8.i.for.inc_crit_edge ], [ %41, %land.lhs.true14.i.for.inc_crit_edge ], [ %best.0520, %land.lhs.true21.i.for.inc_crit_edge ], [ %41, %__agg_active_ports.exit112.i.for.inc_crit_edge ], [ %best.0520, %__agg_active_ports.exit138.i.for.inc_crit_edge ], [ %41, %sw.bb36.i.for.inc_crit_edge ], [ %best.0520, %for.body.for.inc_crit_edge ], [ %best.0520, %for.inc.i406.for.inc_crit_edge ]
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %3, align 8
  %call15 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %112, ptr noundef nonnull %iter) #9
  %tobool7.not = icmp eq ptr %call15, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %best.0.lcssa = phi ptr [ %cond, %cond.end.for.end_crit_edge ], [ %best.1, %for.inc.for.end_crit_edge ]
  %tobool16.not = icmp eq ptr %best.0.lcssa, null
  br i1 %tobool16.not, label %for.end.if.end267_crit_edge, label %land.lhs.true17

for.end.if.end267_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end267

land.lhs.true17:                                  ; preds = %for.end
  %lag_ports = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 10
  %113 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lag_ports, align 4
  %slave.i.i = getelementptr inbounds %struct.port, ptr %114, i32 0, i32 28
  %115 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %slave.i.i, align 4
  %cmp.i.i415 = icmp eq ptr %116, null
  br i1 %cmp.i.i415, label %land.lhs.true17.__get_agg_selection_mode.exit_crit_edge, label %__get_bond_by_port.exit.i

land.lhs.true17.__get_agg_selection_mode.exit_crit_edge: ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_agg_selection_mode.exit

__get_bond_by_port.exit.i:                        ; preds = %land.lhs.true17
  %bond.i.i.i = getelementptr inbounds %struct.slave, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %bond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bond.i.i.i, align 4
  %cmp.i416 = icmp eq ptr %118, null
  br i1 %cmp.i416, label %__get_bond_by_port.exit.i.__get_agg_selection_mode.exit_crit_edge, label %if.end.i417

__get_bond_by_port.exit.i.__get_agg_selection_mode.exit_crit_edge: ; preds = %__get_bond_by_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_agg_selection_mode.exit

if.end.i417:                                      ; preds = %__get_bond_by_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ad_select.i = getelementptr inbounds %struct.bonding, ptr %118, i32 0, i32 19, i32 16
  %119 = ptrtoint ptr %ad_select.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ad_select.i, align 4
  br label %__get_agg_selection_mode.exit

__get_agg_selection_mode.exit:                    ; preds = %if.end.i417, %__get_bond_by_port.exit.i.__get_agg_selection_mode.exit_crit_edge, %land.lhs.true17.__get_agg_selection_mode.exit_crit_edge
  %retval.0.i418 = phi i32 [ %120, %if.end.i417 ], [ 0, %__get_bond_by_port.exit.i.__get_agg_selection_mode.exit_crit_edge ], [ 0, %land.lhs.true17.__get_agg_selection_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i418)
  %cmp = icmp ne i32 %retval.0.i418, 0
  %brmerge = or i1 %cmp, %tobool.not491
  br i1 %brmerge, label %__get_agg_selection_mode.exit.land.lhs.true46_crit_edge, label %land.lhs.true21

__get_agg_selection_mode.exit.land.lhs.true46_crit_edge: ; preds = %__get_agg_selection_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

land.lhs.true21:                                  ; preds = %__get_agg_selection_mode.exit
  %lag_ports22 = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 10
  %121 = ptrtoint ptr %lag_ports22 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lag_ports22, align 4
  %tobool23.not = icmp eq ptr %122, null
  br i1 %tobool23.not, label %land.lhs.true21.land.lhs.true46_crit_edge, label %land.lhs.true21.for.body.i429_crit_edge

land.lhs.true21.for.body.i429_crit_edge:          ; preds = %land.lhs.true21
  br label %for.body.i429

land.lhs.true21.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

for.body.i429:                                    ; preds = %for.body.i429.for.body.i429_crit_edge, %land.lhs.true21.for.body.i429_crit_edge
  %port.08.i422 = phi ptr [ %port.0.i427, %for.body.i429.for.body.i429_crit_edge ], [ %122, %land.lhs.true21.for.body.i429_crit_edge ]
  %active.07.i423 = phi i32 [ %spec.select.i425, %for.body.i429.for.body.i429_crit_edge ], [ 0, %land.lhs.true21.for.body.i429_crit_edge ]
  %is_enabled.i424 = getelementptr inbounds %struct.port, ptr %port.08.i422, i32 0, i32 12
  %123 = ptrtoint ptr %is_enabled.i424 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %is_enabled.i424, align 2, !range !194
  %125 = zext i8 %124 to i32
  %spec.select.i425 = add i32 %active.07.i423, %125
  %next_port_in_aggregator.i426 = getelementptr inbounds %struct.port, ptr %port.08.i422, i32 0, i32 30
  %126 = ptrtoint ptr %next_port_in_aggregator.i426 to i32
  call void @__asan_load4_noabort(i32 %126)
  %port.0.i427 = load ptr, ptr %next_port_in_aggregator.i426, align 4
  %tobool.not.i428 = icmp eq ptr %port.0.i427, null
  br i1 %tobool.not.i428, label %__agg_active_ports.exit431, label %for.body.i429.for.body.i429_crit_edge

for.body.i429.for.body.i429_crit_edge:            ; preds = %for.body.i429
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i429

__agg_active_ports.exit431:                       ; preds = %for.body.i429
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i425)
  %tobool26.not = icmp eq i32 %spec.select.i425, 0
  br i1 %tobool26.not, label %__agg_active_ports.exit431.land.lhs.true46_crit_edge, label %land.lhs.true27

__agg_active_ports.exit431.land.lhs.true46_crit_edge: ; preds = %__agg_active_ports.exit431
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

land.lhs.true27:                                  ; preds = %__agg_active_ports.exit431
  %partner_system.i = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 5
  %127 = ptrtoint ptr %partner_system.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %partner_system.i, align 4
  %add.ptr.i.i = getelementptr %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 5, i32 0, i32 4
  %129 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %130 to i32
  %or.i.i = or i32 %128, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i432.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i432.not, label %land.lhs.true32, label %land.lhs.true27.if.then35_crit_edge

land.lhs.true27.if.then35_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %partner_system.i439 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 5
  %131 = ptrtoint ptr %partner_system.i439 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %partner_system.i439, align 4
  %add.ptr.i.i440 = getelementptr %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 5, i32 0, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i440 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i.i440, align 2
  %conv.i.i441 = zext i16 %134 to i32
  %or.i.i442 = or i32 %132, %conv.i.i441
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i442)
  %cmp.i.i443.not = icmp eq i32 %or.i.i442, 0
  br i1 %cmp.i.i443.not, label %land.lhs.true32.if.then35_crit_edge, label %land.lhs.true32.land.lhs.true46_crit_edge

land.lhs.true32.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

land.lhs.true32.if.then35_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true32.if.then35_crit_edge, %land.lhs.true27.if.then35_crit_edge
  %actor_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 4
  %135 = ptrtoint ptr %actor_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %actor_oper_aggregator_key, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool36.not = icmp eq i16 %136, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.then35.if.then40_crit_edge

if.then35.if.then40_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

land.lhs.true37:                                  ; preds = %if.then35
  %actor_oper_aggregator_key38 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 4
  %137 = ptrtoint ptr %actor_oper_aggregator_key38 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %actor_oper_aggregator_key38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool39.not = icmp eq i16 %138, 0
  br i1 %tobool39.not, label %land.lhs.true37.if.then40_crit_edge, label %land.lhs.true37.land.lhs.true46_crit_edge

land.lhs.true37.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

land.lhs.true37.if.then40_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %land.lhs.true37.if.then40_crit_edge, %if.then35.if.then40_crit_edge
  %is_active41 = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 12
  %139 = ptrtoint ptr %is_active41 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %is_active41, align 4
  br label %if.end267

land.lhs.true46:                                  ; preds = %land.lhs.true37.land.lhs.true46_crit_edge, %land.lhs.true32.land.lhs.true46_crit_edge, %__agg_active_ports.exit431.land.lhs.true46_crit_edge, %land.lhs.true21.land.lhs.true46_crit_edge, %__get_agg_selection_mode.exit.land.lhs.true46_crit_edge
  %cmp47 = icmp eq ptr %best.0.lcssa, %retval.0.i383490
  br i1 %cmp47, label %if.then49, label %do.body54

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %is_active50 = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 12
  %140 = ptrtoint ptr %is_active50 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %is_active50, align 4
  br label %if.end267

do.body54:                                        ; preds = %land.lhs.true46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_agg_selection_logic, %if.then59)) #9
          to label %do.body82 [label %if.then59], !srcloc !192

if.then59:                                        ; preds = %do.body54
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %3, align 8
  %slave61 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 11
  %143 = ptrtoint ptr %slave61 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %slave61, align 4
  %tobool62.not = icmp eq ptr %144, null
  br i1 %tobool62.not, label %if.then59.cond.end67_crit_edge, label %cond.true63

if.then59.cond.end67_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end67

cond.true63:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 8
  br label %cond.end67

cond.end67:                                       ; preds = %cond.true63, %if.then59.cond.end67_crit_edge
  %cond68 = phi ptr [ %146, %cond.true63 ], [ @.str.27, %if.then59.cond.end67_crit_edge ]
  %aggregator_identifier = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 1
  %147 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %aggregator_identifier, align 2
  %conv69 = zext i16 %148 to i32
  %num_of_ports = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 13
  %149 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %num_of_ports, align 2
  %conv70 = zext i16 %150 to i32
  %actor_oper_aggregator_key71 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 4
  %151 = ptrtoint ptr %actor_oper_aggregator_key71 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %actor_oper_aggregator_key71, align 4
  %conv72 = zext i16 %152 to i32
  %partner_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 7
  %153 = ptrtoint ptr %partner_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %partner_oper_aggregator_key, align 2
  %conv73 = zext i16 %154 to i32
  %is_individual = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 2
  %155 = ptrtoint ptr %is_individual to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %is_individual, align 4, !range !194
  %157 = zext i8 %156 to i32
  %is_active76 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 12
  %158 = ptrtoint ptr %is_active76 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %is_active76, align 4
  %conv77 = zext i16 %159 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_agg_selection_logic.__UNIQUE_ID_ddebug364, ptr noundef %142, ptr noundef nonnull @.str.29, ptr noundef %cond68, i32 noundef %conv69, i32 noundef %conv70, i32 noundef %conv72, i32 noundef %conv73, i32 noundef %157, i32 noundef %conv77) #9
  br label %do.body82

do.body82:                                        ; preds = %cond.end67, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_agg_selection_logic, %if.then94)) #9
          to label %do.end112 [label %if.then94], !srcloc !192

if.then94:                                        ; preds = %do.body82
  %160 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %3, align 8
  %slave96 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 11
  %162 = ptrtoint ptr %slave96 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %slave96, align 4
  %tobool97.not = icmp eq ptr %163, null
  br i1 %tobool97.not, label %if.then94.cond.end104_crit_edge, label %cond.true98

if.then94.cond.end104_crit_edge:                  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end104

cond.true98:                                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 8
  br label %cond.end104

cond.end104:                                      ; preds = %cond.true98, %if.then94.cond.end104_crit_edge
  %cond105 = phi ptr [ %165, %cond.true98 ], [ @.str.27, %if.then94.cond.end104_crit_edge ]
  %166 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lag_ports, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_agg_selection_logic.__UNIQUE_ID_ddebug365, ptr noundef %161, ptr noundef nonnull @.str.30, ptr noundef %cond105, ptr noundef %167, ptr noundef %163) #9
  br label %do.end112

do.end112:                                        ; preds = %cond.end104, %do.body82
  %168 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %3, align 8
  %lower115 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 13, i32 1
  %170 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %lower115, ptr %iter, align 4
  %171 = load ptr, ptr %3, align 8
  %call117 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %171, ptr noundef nonnull %iter) #9
  %tobool119.not523 = icmp eq ptr %call117, null
  br i1 %tobool119.not523, label %do.end112.for.end162_crit_edge, label %do.end112.for.body120_crit_edge

do.end112.for.body120_crit_edge:                  ; preds = %do.end112
  br label %for.body120

do.end112.for.end162_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end162

for.body120:                                      ; preds = %for.inc159.for.body120_crit_edge, %do.end112.for.body120_crit_edge
  %slave2.1524 = phi ptr [ %call161, %for.inc159.for.body120_crit_edge ], [ %call117, %do.end112.for.body120_crit_edge ]
  %ad_info121 = getelementptr inbounds %struct.slave, ptr %slave2.1524, i32 0, i32 15
  %172 = ptrtoint ptr %ad_info121 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ad_info121, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_agg_selection_logic, %if.then136)) #9
          to label %for.inc159 [label %if.then136], !srcloc !192

if.then136:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %3, align 8
  %176 = ptrtoint ptr %slave2.1524 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %slave2.1524, align 8
  %aggregator_identifier141 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 1
  %178 = ptrtoint ptr %aggregator_identifier141 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %aggregator_identifier141, align 2
  %conv142 = zext i16 %179 to i32
  %num_of_ports143 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 13
  %180 = ptrtoint ptr %num_of_ports143 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %num_of_ports143, align 2
  %conv144 = zext i16 %181 to i32
  %actor_oper_aggregator_key145 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 4
  %182 = ptrtoint ptr %actor_oper_aggregator_key145 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %actor_oper_aggregator_key145, align 4
  %conv146 = zext i16 %183 to i32
  %partner_oper_aggregator_key147 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 7
  %184 = ptrtoint ptr %partner_oper_aggregator_key147 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %partner_oper_aggregator_key147, align 2
  %conv148 = zext i16 %185 to i32
  %is_individual149 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 2
  %186 = ptrtoint ptr %is_individual149 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %is_individual149, align 4, !range !194
  %188 = zext i8 %187 to i32
  %is_active152 = getelementptr inbounds %struct.aggregator, ptr %173, i32 0, i32 12
  %189 = ptrtoint ptr %is_active152 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %is_active152, align 4
  %conv153 = zext i16 %190 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_agg_selection_logic.__UNIQUE_ID_ddebug366, ptr noundef %175, ptr noundef nonnull @.str.31, ptr noundef %177, i32 noundef %conv142, i32 noundef %conv144, i32 noundef %conv146, i32 noundef %conv148, i32 noundef %188, i32 noundef %conv153) #9
  br label %for.inc159

for.inc159:                                       ; preds = %if.then136, %for.body120
  %191 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %3, align 8
  %call161 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %192, ptr noundef nonnull %iter) #9
  %tobool119.not = icmp eq ptr %call161, null
  br i1 %tobool119.not, label %for.inc159.for.end162_crit_edge, label %for.inc159.for.body120_crit_edge

for.inc159.for.body120_crit_edge:                 ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120

for.inc159.for.end162_crit_edge:                  ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end162

for.end162:                                       ; preds = %for.inc159.for.end162_crit_edge, %do.end112.for.end162_crit_edge
  %is_individual163 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 2
  %193 = ptrtoint ptr %is_individual163 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_individual163, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool164.not = icmp eq i8 %194, 0
  br i1 %tobool164.not, label %for.end162.if.end181_crit_edge, label %do.body166

for.end162.if.end181_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

do.body166:                                       ; preds = %for.end162
  %call167 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.body166.if.end181_crit_edge, label %do.end172

do.body166.if.end181_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %3, align 8
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %196) #12
  br label %if.end181

if.end181:                                        ; preds = %do.end172, %do.body166.if.end181_crit_edge, %for.end162.if.end181_crit_edge
  %is_active182 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 12
  %197 = ptrtoint ptr %is_active182 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 1, ptr %is_active182, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_agg_selection_logic, %if.then196)) #9
          to label %do.body216 [label %if.then196], !srcloc !192

if.then196:                                       ; preds = %if.end181
  %198 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %3, align 8
  %slave198 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 11
  %200 = ptrtoint ptr %slave198 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %slave198, align 4
  %tobool199.not = icmp eq ptr %201, null
  br i1 %tobool199.not, label %if.then196.cond.end206_crit_edge, label %cond.true200

if.then196.cond.end206_crit_edge:                 ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end206

cond.true200:                                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 8
  br label %cond.end206

cond.end206:                                      ; preds = %cond.true200, %if.then196.cond.end206_crit_edge
  %cond207 = phi ptr [ %203, %cond.true200 ], [ @.str.27, %if.then196.cond.end206_crit_edge ]
  %aggregator_identifier208 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 1
  %204 = ptrtoint ptr %aggregator_identifier208 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %aggregator_identifier208, align 2
  %conv209 = zext i16 %205 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_agg_selection_logic.__UNIQUE_ID_ddebug367, ptr noundef %199, ptr noundef nonnull @.str.33, ptr noundef %cond207, i32 noundef %conv209) #9
  br label %do.body216

do.body216:                                       ; preds = %cond.end206, %if.end181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_agg_selection_logic, %if.then228)) #9
          to label %do.end257 [label %if.then228], !srcloc !192

if.then228:                                       ; preds = %do.body216
  %206 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %3, align 8
  %slave230 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 11
  %208 = ptrtoint ptr %slave230 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %slave230, align 4
  %tobool231.not = icmp eq ptr %209, null
  br i1 %tobool231.not, label %if.then228.cond.end238_crit_edge, label %cond.true232

if.then228.cond.end238_crit_edge:                 ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end238

cond.true232:                                     ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 8
  br label %cond.end238

cond.end238:                                      ; preds = %cond.true232, %if.then228.cond.end238_crit_edge
  %cond239 = phi ptr [ %211, %cond.true232 ], [ @.str.27, %if.then228.cond.end238_crit_edge ]
  %aggregator_identifier240 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 1
  %212 = ptrtoint ptr %aggregator_identifier240 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %aggregator_identifier240, align 2
  %conv241 = zext i16 %213 to i32
  %num_of_ports242 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 13
  %214 = ptrtoint ptr %num_of_ports242 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %num_of_ports242, align 2
  %conv243 = zext i16 %215 to i32
  %actor_oper_aggregator_key244 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 4
  %216 = ptrtoint ptr %actor_oper_aggregator_key244 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %actor_oper_aggregator_key244, align 4
  %conv245 = zext i16 %217 to i32
  %partner_oper_aggregator_key246 = getelementptr inbounds %struct.aggregator, ptr %best.0.lcssa, i32 0, i32 7
  %218 = ptrtoint ptr %partner_oper_aggregator_key246 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %partner_oper_aggregator_key246, align 2
  %conv247 = zext i16 %219 to i32
  %220 = ptrtoint ptr %is_individual163 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %is_individual163, align 4, !range !194
  %222 = zext i8 %221 to i32
  %223 = ptrtoint ptr %is_active182 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %is_active182, align 4
  %conv252 = zext i16 %224 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_agg_selection_logic.__UNIQUE_ID_ddebug368, ptr noundef %207, ptr noundef nonnull @.str.31, ptr noundef %cond239, i32 noundef %conv241, i32 noundef %conv243, i32 noundef %conv245, i32 noundef %conv247, i32 noundef %222, i32 noundef %conv252) #9
  br label %do.end257

do.end257:                                        ; preds = %cond.end238, %do.body216
  br i1 %tobool.not491, label %do.end257.if.end266_crit_edge, label %if.then259

do.end257.if.end266_crit_edge:                    ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

if.then259:                                       ; preds = %do.end257
  %lag_ports260 = getelementptr inbounds %struct.aggregator, ptr %retval.0.i383490, i32 0, i32 10
  %225 = ptrtoint ptr %lag_ports260 to i32
  call void @__asan_load4_noabort(i32 %225)
  %port.0525 = load ptr, ptr %lag_ports260, align 4
  %tobool262.not526 = icmp eq ptr %port.0525, null
  br i1 %tobool262.not526, label %if.then259.if.end266_crit_edge, label %if.then259.for.body263_crit_edge

if.then259.for.body263_crit_edge:                 ; preds = %if.then259
  br label %for.body263

if.then259.if.end266_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

for.body263:                                      ; preds = %__disable_port.exit.for.body263_crit_edge, %if.then259.for.body263_crit_edge
  %port.0527 = phi ptr [ %port.0, %__disable_port.exit.for.body263_crit_edge ], [ %port.0525, %if.then259.for.body263_crit_edge ]
  %slave.i445 = getelementptr inbounds %struct.port, ptr %port.0527, i32 0, i32 28
  %226 = ptrtoint ptr %slave.i445 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %slave.i445, align 4
  %bond.i.i = getelementptr inbounds %struct.slave, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %bond.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %bond.i.i, align 4
  %params.i.i.i = getelementptr inbounds %struct.bonding, ptr %229, i32 0, i32 19
  %230 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %params.i.i.i, align 8
  %232 = add i32 %231, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %232)
  %233 = icmp ult i32 %232, 2
  br i1 %233, label %for.body263.if.end.i.i_crit_edge, label %if.then.i.i

for.body263.if.end.i.i_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body263
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %227, i32 0, i32 8
  %234 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %cmp.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear17.sink.i.i.i = xor i8 %bf.load.i.i.i, -96
  %235 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %bf.clear17.sink.i.i.i, ptr %backup.i.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.if.end.i.i_crit_edge, %for.body263.if.end.i.i_crit_edge
  %all_slaves_active.i.i = getelementptr inbounds %struct.bonding, ptr %229, i32 0, i32 19, i32 21
  %236 = ptrtoint ptr %all_slaves_active.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %all_slaves_active.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool2.not.i.i = icmp eq i32 %237, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i.__disable_port.exit_crit_edge

if.end.i.i.__disable_port.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__disable_port.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inactive.i.i = getelementptr inbounds %struct.slave, ptr %227, i32 0, i32 8
  %238 = ptrtoint ptr %inactive.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %bf.load.i.i = load i8, ptr %inactive.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %inactive.i.i, align 2
  br label %__disable_port.exit

__disable_port.exit:                              ; preds = %if.then3.i.i, %if.end.i.i.__disable_port.exit_crit_edge
  %next_port_in_aggregator = getelementptr inbounds %struct.port, ptr %port.0527, i32 0, i32 30
  %239 = ptrtoint ptr %next_port_in_aggregator to i32
  call void @__asan_load4_noabort(i32 %239)
  %port.0 = load ptr, ptr %next_port_in_aggregator, align 4
  %tobool262.not = icmp eq ptr %port.0, null
  br i1 %tobool262.not, label %__disable_port.exit.if.end266_crit_edge, label %__disable_port.exit.for.body263_crit_edge

__disable_port.exit.for.body263_crit_edge:        ; preds = %__disable_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body263

__disable_port.exit.if.end266_crit_edge:          ; preds = %__disable_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

if.end266:                                        ; preds = %__disable_port.exit.if.end266_crit_edge, %if.then259.if.end266_crit_edge, %do.end257.if.end266_crit_edge
  %240 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %update_slave_arr, align 1
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then49, %if.then40, %for.end.if.end267_crit_edge
  %241 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %slave, align 4
  %bond1.i448 = getelementptr inbounds %struct.slave, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %bond1.i448 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bond1.i448, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i446) #9
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 8
  %lower.i449 = getelementptr inbounds %struct.net_device, ptr %246, i32 0, i32 13, i32 1
  %247 = ptrtoint ptr %iter.i446 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %lower.i449, ptr %iter.i446, align 4
  %248 = load ptr, ptr %244, align 8
  %call.i450 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %248, ptr noundef nonnull %iter.i446) #9
  %tobool.not16.i451 = icmp eq ptr %call.i450, null
  br i1 %tobool.not16.i451, label %if.end267.__get_active_agg.exit461.thread_crit_edge, label %if.end267.for.body.i456_crit_edge

if.end267.for.body.i456_crit_edge:                ; preds = %if.end267
  br label %for.body.i456

if.end267.__get_active_agg.exit461.thread_crit_edge: ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit461.thread

for.body.i456:                                    ; preds = %for.inc.i459.for.body.i456_crit_edge, %if.end267.for.body.i456_crit_edge
  %slave2.017.i452 = phi ptr [ %call9.i457, %for.inc.i459.for.body.i456_crit_edge ], [ %call.i450, %if.end267.for.body.i456_crit_edge ]
  %ad_info.i453 = getelementptr inbounds %struct.slave, ptr %slave2.017.i452, i32 0, i32 15
  %249 = ptrtoint ptr %ad_info.i453 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ad_info.i453, align 8
  %is_active.i454 = getelementptr inbounds %struct.aggregator, ptr %250, i32 0, i32 12
  %251 = ptrtoint ptr %is_active.i454 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %is_active.i454, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool5.not.i455 = icmp eq i16 %252, 0
  br i1 %tobool5.not.i455, label %for.inc.i459, label %__get_active_agg.exit461

for.inc.i459:                                     ; preds = %for.body.i456
  %253 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %244, align 8
  %call9.i457 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %254, ptr noundef nonnull %iter.i446) #9
  %tobool.not.i458 = icmp eq ptr %call9.i457, null
  br i1 %tobool.not.i458, label %for.inc.i459.__get_active_agg.exit461.thread_crit_edge, label %for.inc.i459.for.body.i456_crit_edge

for.inc.i459.for.body.i456_crit_edge:             ; preds = %for.inc.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i456

for.inc.i459.__get_active_agg.exit461.thread_crit_edge: ; preds = %for.inc.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit461.thread

__get_active_agg.exit461.thread:                  ; preds = %for.inc.i459.__get_active_agg.exit461.thread_crit_edge, %if.end267.__get_active_agg.exit461.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i446) #9
  br label %if.end282

__get_active_agg.exit461:                         ; preds = %for.body.i456
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i446) #9
  %tobool269.not = icmp eq ptr %250, null
  br i1 %tobool269.not, label %__get_active_agg.exit461.if.end282_crit_edge, label %if.then270

__get_active_agg.exit461.if.end282_crit_edge:     ; preds = %__get_active_agg.exit461
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end282

if.then270:                                       ; preds = %__get_active_agg.exit461
  %partner_system.i462 = getelementptr inbounds %struct.aggregator, ptr %250, i32 0, i32 5
  %255 = ptrtoint ptr %partner_system.i462 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %partner_system.i462, align 4
  %add.ptr.i.i463 = getelementptr %struct.aggregator, ptr %250, i32 0, i32 5, i32 0, i32 4
  %257 = ptrtoint ptr %add.ptr.i.i463 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %add.ptr.i.i463, align 2
  %conv.i.i464 = zext i16 %258 to i32
  %or.i.i465 = or i32 %256, %conv.i.i464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i465)
  %cmp.i.i466.not = icmp eq i32 %or.i.i465, 0
  br i1 %cmp.i.i466.not, label %if.then273, label %if.then270.if.end282_crit_edge

if.then270.if.end282_crit_edge:                   ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end282

if.then273:                                       ; preds = %if.then270
  %lag_ports274 = getelementptr inbounds %struct.aggregator, ptr %250, i32 0, i32 10
  %259 = ptrtoint ptr %lag_ports274 to i32
  call void @__asan_load4_noabort(i32 %259)
  %port.1528 = load ptr, ptr %lag_ports274, align 4
  %tobool276.not529 = icmp eq ptr %port.1528, null
  br i1 %tobool276.not529, label %if.then273.for.end280_crit_edge, label %if.then273.for.body277_crit_edge

if.then273.for.body277_crit_edge:                 ; preds = %if.then273
  br label %for.body277

if.then273.for.end280_crit_edge:                  ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end280

for.body277:                                      ; preds = %__enable_port.exit.for.body277_crit_edge, %if.then273.for.body277_crit_edge
  %port.1530 = phi ptr [ %port.1, %__enable_port.exit.for.body277_crit_edge ], [ %port.1528, %if.then273.for.body277_crit_edge ]
  %slave1.i = getelementptr inbounds %struct.port, ptr %port.1530, i32 0, i32 28
  %260 = ptrtoint ptr %slave1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %slave1.i, align 4
  %link.i = getelementptr inbounds %struct.slave, ptr %261, i32 0, i32 6
  %262 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %cmp.i468 = icmp eq i8 %263, 0
  br i1 %cmp.i468, label %land.lhs.true.i469, label %for.body277.__enable_port.exit_crit_edge

for.body277.__enable_port.exit_crit_edge:         ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit

land.lhs.true.i469:                               ; preds = %for.body277
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %261, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %265, i32 0, i32 6
  %266 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i469.__enable_port.exit_crit_edge, label %bond_slave_is_up.exit.i

land.lhs.true.i469.__enable_port.exit_crit_edge:  ; preds = %land.lhs.true.i469
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit

bond_slave_is_up.exit.i:                          ; preds = %land.lhs.true.i469
  %268 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load volatile i32, ptr %state.i.i.i, align 4
  %270 = and i32 %269, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool.not.i.i.i = icmp eq i32 %270, 0
  br i1 %tobool.not.i.i.i, label %if.then.i473, label %bond_slave_is_up.exit.i.__enable_port.exit_crit_edge

bond_slave_is_up.exit.i.__enable_port.exit_crit_edge: ; preds = %bond_slave_is_up.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit

if.then.i473:                                     ; preds = %bond_slave_is_up.exit.i
  %backup.i.i.i470 = getelementptr inbounds %struct.slave, ptr %261, i32 0, i32 8
  %271 = ptrtoint ptr %backup.i.i.i470 to i32
  call void @__asan_load1_noabort(i32 %271)
  %bf.load.i.i.i471 = load i8, ptr %backup.i.i.i470, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i471)
  %cmp.i.i.i472 = icmp sgt i8 %bf.load.i.i.i471, -1
  br i1 %cmp.i.i.i472, label %if.then.i473.bond_set_slave_active_flags.exit.i_crit_edge, label %if.end.i.i.i475

if.then.i473.bond_set_slave_active_flags.exit.i_crit_edge: ; preds = %if.then.i473
  call void @__sanitizer_cov_trace_pc() #11
  br label %bond_set_slave_active_flags.exit.i

if.end.i.i.i475:                                  ; preds = %if.then.i473
  call void @__sanitizer_cov_trace_pc() #11
  %272 = and i8 %bf.load.i.i.i471, 127
  %bf.clear17.sink.i.i.i474 = xor i8 %272, 32
  %273 = ptrtoint ptr %backup.i.i.i470 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %bf.clear17.sink.i.i.i474, ptr %backup.i.i.i470, align 2
  br label %bond_set_slave_active_flags.exit.i

bond_set_slave_active_flags.exit.i:               ; preds = %if.end.i.i.i475, %if.then.i473.bond_set_slave_active_flags.exit.i_crit_edge
  %274 = ptrtoint ptr %backup.i.i.i470 to i32
  call void @__asan_load1_noabort(i32 %274)
  %bf.load.i.i476 = load i8, ptr %backup.i.i.i470, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i476, -65
  store i8 %bf.clear.i.i, ptr %backup.i.i.i470, align 2
  br label %__enable_port.exit

__enable_port.exit:                               ; preds = %bond_set_slave_active_flags.exit.i, %bond_slave_is_up.exit.i.__enable_port.exit_crit_edge, %land.lhs.true.i469.__enable_port.exit_crit_edge, %for.body277.__enable_port.exit_crit_edge
  %next_port_in_aggregator279 = getelementptr inbounds %struct.port, ptr %port.1530, i32 0, i32 30
  %275 = ptrtoint ptr %next_port_in_aggregator279 to i32
  call void @__asan_load4_noabort(i32 %275)
  %port.1 = load ptr, ptr %next_port_in_aggregator279, align 4
  %tobool276.not = icmp eq ptr %port.1, null
  br i1 %tobool276.not, label %__enable_port.exit.for.end280_crit_edge, label %__enable_port.exit.for.body277_crit_edge

__enable_port.exit.for.body277_crit_edge:         ; preds = %__enable_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body277

__enable_port.exit.for.end280_crit_edge:          ; preds = %__enable_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end280

for.end280:                                       ; preds = %__enable_port.exit.for.end280_crit_edge, %if.then273.for.end280_crit_edge
  %276 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %update_slave_arr, align 1
  br label %if.end282

if.end282:                                        ; preds = %for.end280, %if.then270.if.end282_crit_edge, %__get_active_agg.exit461.if.end282_crit_edge, %__get_active_agg.exit461.thread
  %call.i478 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i478, label %if.end282.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i481

if.end282.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i481:                               ; preds = %if.end282
  %call1.i479 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i479)
  %tobool.not.i480 = icmp eq i32 %call1.i479, 0
  br i1 %tobool.not.i480, label %land.lhs.true.i481.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i483

land.lhs.true.i481.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i481
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i483:                              ; preds = %land.lhs.true.i481
  %.b4.i482 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i482, label %land.lhs.true2.i483.rcu_read_unlock.exit_crit_edge, label %if.then.i484

land.lhs.true2.i483.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i484:                                     ; preds = %land.lhs.true2.i483
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i484, %land.lhs.true2.i483.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i481.rcu_read_unlock.exit_crit_edge, %if.end282.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %277 = call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i485 = and i32 %277, -16384
  %278 = inttoptr i32 %and.i.i.i.i.i485 to ptr
  %preempt_count.i.i.i.i486 = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %preempt_count.i.i.i.i486 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %preempt_count.i.i.i.i486, align 4
  %sub.i.i.i = add i32 %280, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i486, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call283 = call i32 @bond_3ad_set_carrier(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_first_agg(ptr nocapture noundef readonly %port) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %__get_bond_by_port.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__get_bond_by_port.exit:                          ; preds = %entry
  %bond.i.i = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bond.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %__get_bond_by_port.exit.cleanup_crit_edge, label %if.end

__get_bond_by_port.exit.cleanup_crit_edge:        ; preds = %__get_bond_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__get_bond_by_port.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call1 = tail call ptr @netdev_lower_get_first_private_rcu(ptr noundef %9) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ad_info = getelementptr inbounds %struct.slave, ptr %call1, i32 0, i32 15
  %10 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ad_info, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ null, %rcu_read_lock.exit.cond.end_crit_edge ]
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i6, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %cond.end
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %12 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i13 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %__get_bond_by_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cond, %rcu_read_unlock.exit ], [ null, %__get_bond_by_port.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_update_ad_actor_settings(ptr noundef %bond) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %call = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b73 = load i1, ptr @bond_3ad_update_ad_actor_settings.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !197

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bond_3ad_update_ad_actor_settings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2261, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 2261) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ad_actor_sys_prio = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 27
  %0 = ptrtoint ptr %ad_actor_sys_prio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ad_actor_sys_prio, align 4
  %ad_info = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17
  %2 = ptrtoint ptr %ad_info to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %ad_info, align 8
  %ad_actor_system = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 29
  %3 = ptrtoint ptr %ad_actor_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ad_actor_system, align 4
  %add.ptr.i = getelementptr %struct.bonding, ptr %bond, i32 0, i32 19, i32 29, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %6 to i32
  %or.i = or i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %sys_mac_addr = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 0, i32 1
  br i1 %cmp.i, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bond, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = call ptr @memcpy(ptr %sys_mac_addr, ptr %10, i32 6)
  br label %if.end48

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %sys_mac_addr, ptr %ad_actor_system, i32 6)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then39
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  %13 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lower, align 8
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %iter, align 4
  %call51 = call ptr @netdev_lower_get_next_private(ptr noundef %14, ptr noundef nonnull %iter) #9
  %tobool52.not74 = icmp eq ptr %call51, null
  br i1 %tobool52.not74, label %if.end48.for.end_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end48.for.body_crit_edge
  %slave.075 = phi ptr [ %call56, %for.body.for.body_crit_edge ], [ %call51, %if.end48.for.body_crit_edge ]
  %ad_info53 = getelementptr inbounds %struct.slave, ptr %slave.075, i32 0, i32 15
  %18 = ptrtoint ptr %ad_info53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ad_info53, align 8
  %slave.i = getelementptr inbounds %struct.ad_slave_info, ptr %19, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave.i, align 4
  %bond.i.i = getelementptr inbounds %struct.slave, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bond.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond.i.i, align 4
  %actor_system.i = getelementptr inbounds %struct.ad_slave_info, ptr %19, i32 0, i32 1, i32 2
  %ad_info.i = getelementptr inbounds %struct.bonding, ptr %23, i32 0, i32 17
  %sys_mac_addr.i = getelementptr inbounds %struct.bonding, ptr %23, i32 0, i32 17, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %actor_system.i, ptr %sys_mac_addr.i, i32 6)
  %25 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ad_info.i, align 8
  %actor_system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %19, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %actor_system_priority.i, align 2
  %ntt = getelementptr inbounds %struct.ad_slave_info, ptr %19, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %ntt, align 2
  %29 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bond, align 8
  %call56 = call ptr @netdev_lower_get_next_private(ptr noundef %30, ptr noundef nonnull %iter) #9
  %tobool52.not = icmp eq ptr %call56, null
  br i1 %tobool52.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_state_machine_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %iter = alloca ptr, align 4
  %update_slave_arr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -800
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !193
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %update_slave_arr) #9
  %1 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %update_slave_arr, align 1
  %mode_lock = getelementptr i8, ptr %work, i32 -764
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %lower, align 4
  %cmp.i.not = icmp eq ptr %9, %lower
  br i1 %cmp.i.not, label %rcu_read_lock.exit.re_arm_crit_edge, label %if.end

rcu_read_lock.exit.re_arm_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_arm

if.end:                                           ; preds = %rcu_read_lock.exit
  %agg_select_timer.i = getelementptr i8, ptr %work, i32 -560
  br label %while.cond.i

while.cond.i:                                     ; preds = %atomic_cmpxchg.exit.i.while.cond.i_crit_edge, %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %agg_select_timer.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %agg_select_timer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %agg_select_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i123 = icmp eq i32 %11, 0
  br i1 %tobool.not.i123, label %while.cond.i.if.end26_crit_edge, label %if.end.i

while.cond.i.if.end26_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i:                                         ; preds = %while.cond.i
  %sub.i = add i32 %11, -1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %agg_select_timer.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %agg_select_timer.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %agg_select_timer.i, ptr %agg_select_timer.i, i32 %11, i32 %sub.i, ptr elementtype(i32) %agg_select_timer.i) #9, !srcloc !199
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !200
  %cmp.i124 = icmp eq i32 %asmresult3.i.i.i.i, %11
  br i1 %cmp.i124, label %bond_agg_timer_advance.exit, label %atomic_cmpxchg.exit.i.while.cond.i_crit_edge

atomic_cmpxchg.exit.i.while.cond.i_crit_edge:     ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

bond_agg_timer_advance.exit:                      ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp eq i32 %sub.i, 0
  br i1 %cmp6.i, label %if.then2, label %bond_agg_timer_advance.exit.if.end26_crit_edge

bond_agg_timer_advance.exit.if.end26_crit_edge:   ; preds = %bond_agg_timer_advance.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then2:                                         ; preds = %bond_agg_timer_advance.exit
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %call4 = tail call ptr @netdev_lower_get_first_private_rcu(ptr noundef %14) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then2.if.end24_crit_edge, label %cond.end

if.then2.if.end24_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

cond.end:                                         ; preds = %if.then2
  %ad_info = getelementptr inbounds %struct.slave, ptr %call4, i32 0, i32 15
  %15 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ad_info, align 8
  %port6 = getelementptr inbounds %struct.ad_slave_info, ptr %16, i32 0, i32 1
  %tobool7.not = icmp eq ptr %port6, null
  br i1 %tobool7.not, label %cond.end.if.end24_crit_edge, label %if.then8

cond.end.if.end24_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then8:                                         ; preds = %cond.end
  %slave9 = getelementptr inbounds %struct.ad_slave_info, ptr %16, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %slave9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave9, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %do.body, label %if.end22

do.body:                                          ; preds = %if.then8
  %call12 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.re_arm_crit_edge, label %do.end

do.body.re_arm_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_arm

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %20) #12
  br label %re_arm

if.end22:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call fastcc ptr @__get_first_agg(ptr noundef nonnull %port6)
  call fastcc void @ad_agg_selection_logic(ptr noundef %call23, ptr noundef nonnull %update_slave_arr)
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %cond.end.if.end24_crit_edge, %if.then2.if.end24_crit_edge
  %call25 = tail call i32 @bond_3ad_set_carrier(ptr noundef %add.ptr)
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %bond_agg_timer_advance.exit.if.end26_crit_edge, %while.cond.i.if.end26_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %lower29 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %lower29, ptr %iter, align 4
  %call31 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %22, ptr noundef nonnull %iter) #9
  %tobool32.not146 = icmp eq ptr %call31, null
  br i1 %tobool32.not146, label %if.end26.re_arm_crit_edge, label %for.body.lr.ph

if.end26.re_arm_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_arm

for.body.lr.ph:                                   ; preds = %if.end26
  %params = getelementptr i8, ptr %work, i32 -496
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slave.0147 = phi ptr [ %call31, %for.body.lr.ph ], [ %call62, %for.inc.for.body_crit_edge ]
  %ad_info33 = getelementptr inbounds %struct.slave, ptr %slave.0147, i32 0, i32 15
  %24 = ptrtoint ptr %ad_info33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ad_info33, align 8
  %slave35 = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 28
  %26 = ptrtoint ptr %slave35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave35, align 4
  %tobool36.not = icmp eq ptr %27, null
  br i1 %tobool36.not, label %do.body38, label %if.end53

do.body38:                                        ; preds = %for.body
  %call39 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.re_arm_crit_edge, label %do.end44

do.body38.re_arm_crit_edge:                       ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_arm

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %29) #12
  br label %re_arm

if.end53:                                         ; preds = %for.body
  %port34 = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1
  call fastcc void @ad_rx_machine(ptr noundef null, ptr noundef %port34)
  call fastcc void @ad_periodic_machine(ptr noundef %port34, ptr noundef %params)
  call fastcc void @ad_port_selection_logic(ptr noundef %port34, ptr noundef nonnull %update_slave_arr)
  call fastcc void @ad_mux_machine(ptr noundef %port34, ptr noundef nonnull %update_slave_arr)
  call fastcc void @ad_tx_machine(ptr noundef %port34)
  %sm_vars.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 13
  %30 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sm_vars.i, align 4
  %32 = and i16 %31, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i125 = icmp eq i16 %32, 0
  br i1 %tobool.not.i125, label %if.end.i127, label %if.then.i126

if.then.i126:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i = and i16 %31, -13
  %33 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %and3.i, ptr %sm_vars.i, align 4
  %sm_churn_actor_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 26
  %34 = ptrtoint ptr %sm_churn_actor_state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sm_churn_actor_state.i, align 4
  %sm_churn_partner_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 27
  %35 = ptrtoint ptr %sm_churn_partner_state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sm_churn_partner_state.i, align 4
  %36 = load i16, ptr @ad_ticks_per_sec, align 2
  %mul9.i.i = mul i16 %36, 60
  %sm_churn_actor_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 22
  %37 = ptrtoint ptr %sm_churn_actor_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %mul9.i.i, ptr %sm_churn_actor_timer_counter.i, align 2
  %sm_churn_partner_timer_counter.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 23
  %38 = ptrtoint ptr %sm_churn_partner_timer_counter.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %mul9.i.i, ptr %sm_churn_partner_timer_counter.i, align 4
  br label %ad_churn_machine.exit

if.end.i127:                                      ; preds = %if.end53
  %sm_churn_actor_timer_counter6.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 22
  %39 = ptrtoint ptr %sm_churn_actor_timer_counter6.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sm_churn_actor_timer_counter6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool8.not.i = icmp eq i16 %40, 0
  br i1 %tobool8.not.i, label %if.end.i127.if.end22.i_crit_edge, label %land.lhs.true.i128

if.end.i127.if.end22.i_crit_edge:                 ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i128:                               ; preds = %if.end.i127
  %dec.i = add i16 %40, -1
  %41 = ptrtoint ptr %sm_churn_actor_timer_counter6.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %dec.i, ptr %sm_churn_actor_timer_counter6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool10.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true11.i, label %land.lhs.true.i128.if.end22.i_crit_edge

land.lhs.true.i128.if.end22.i_crit_edge:          ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i128
  %sm_churn_actor_state12.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 26
  %42 = ptrtoint ptr %sm_churn_actor_state12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sm_churn_actor_state12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i129 = icmp eq i32 %43, 0
  br i1 %cmp.i129, label %if.then14.i, label %land.lhs.true11.i.if.end22.i_crit_edge

land.lhs.true11.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then14.i:                                      ; preds = %land.lhs.true11.i
  %actor_oper_port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 9
  %44 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %actor_oper_port_state.i, align 1
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool17.not.i = icmp eq i8 %46, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then14.i.if.end22.sink.split.i_crit_edge

if.then14.i.if.end22.sink.split.i_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split.i

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %churn_actor_count.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 24
  %47 = ptrtoint ptr %churn_actor_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %churn_actor_count.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %churn_actor_count.i, align 4
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else.i, %if.then14.i.if.end22.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.else.i ], [ 2, %if.then14.i.if.end22.sink.split.i_crit_edge ]
  %49 = ptrtoint ptr %sm_churn_actor_state12.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink.i, ptr %sm_churn_actor_state12.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %land.lhs.true11.i.if.end22.i_crit_edge, %land.lhs.true.i128.if.end22.i_crit_edge, %if.end.i127.if.end22.i_crit_edge
  %sm_churn_partner_timer_counter23.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 23
  %50 = ptrtoint ptr %sm_churn_partner_timer_counter23.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sm_churn_partner_timer_counter23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool25.not.i = icmp eq i16 %51, 0
  br i1 %tobool25.not.i, label %if.end22.i.ad_churn_machine.exit_crit_edge, label %land.lhs.true26.i

if.end22.i.ad_churn_machine.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_churn_machine.exit

land.lhs.true26.i:                                ; preds = %if.end22.i
  %dec28.i = add i16 %51, -1
  %52 = ptrtoint ptr %sm_churn_partner_timer_counter23.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %dec28.i, ptr %sm_churn_partner_timer_counter23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec28.i)
  %tobool29.not.i = icmp eq i16 %dec28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true30.i, label %land.lhs.true26.i.ad_churn_machine.exit_crit_edge

land.lhs.true26.i.ad_churn_machine.exit_crit_edge: ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_churn_machine.exit

land.lhs.true30.i:                                ; preds = %land.lhs.true26.i
  %sm_churn_partner_state31.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 27
  %53 = ptrtoint ptr %sm_churn_partner_state31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sm_churn_partner_state31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp32.i = icmp eq i32 %54, 0
  br i1 %cmp32.i, label %if.then34.i, label %land.lhs.true30.i.ad_churn_machine.exit_crit_edge

land.lhs.true30.i.ad_churn_machine.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_churn_machine.exit

if.then34.i:                                      ; preds = %land.lhs.true30.i
  %port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 11, i32 5
  %55 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %port_state.i, align 2
  %57 = and i16 %56, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool37.not.i = icmp eq i16 %57, 0
  br i1 %tobool37.not.i, label %if.else40.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %sm_churn_partner_state31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %sm_churn_partner_state31.i, align 4
  br label %ad_churn_machine.exit

if.else40.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %churn_partner_count.i = getelementptr inbounds %struct.ad_slave_info, ptr %25, i32 0, i32 1, i32 25
  %59 = ptrtoint ptr %churn_partner_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %churn_partner_count.i, align 4
  %inc41.i = add i32 %60, 1
  store i32 %inc41.i, ptr %churn_partner_count.i, align 4
  %61 = ptrtoint ptr %sm_churn_partner_state31.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %sm_churn_partner_state31.i, align 4
  br label %ad_churn_machine.exit

ad_churn_machine.exit:                            ; preds = %if.else40.i, %if.then38.i, %land.lhs.true30.i.ad_churn_machine.exit_crit_edge, %land.lhs.true26.i.ad_churn_machine.exit_crit_edge, %if.end22.i.ad_churn_machine.exit_crit_edge, %if.then.i126
  %62 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sm_vars.i, align 4
  %64 = and i16 %63, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool54.not = icmp eq i16 %64, 0
  br i1 %tobool54.not, label %ad_churn_machine.exit.for.inc_crit_edge, label %if.then55

ad_churn_machine.exit.for.inc_crit_edge:          ; preds = %ad_churn_machine.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then55:                                        ; preds = %ad_churn_machine.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and58 = and i16 %63, -2
  %65 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %and58, ptr %sm_vars.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %ad_churn_machine.exit.for.inc_crit_edge
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 8
  %call62 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %67, ptr noundef nonnull %iter) #9
  %tobool32.not = icmp eq ptr %call62, null
  br i1 %tobool32.not, label %for.inc.re_arm_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.re_arm_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %re_arm

re_arm:                                           ; preds = %for.inc.re_arm_crit_edge, %do.end44, %do.body38.re_arm_crit_edge, %if.end26.re_arm_crit_edge, %do.end, %do.body.re_arm_crit_edge, %rcu_read_lock.exit.re_arm_crit_edge
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %lower65 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 13, i32 1
  %70 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %lower65, ptr %iter, align 4
  %call67 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %69, ptr noundef nonnull %iter) #9
  %tobool69.not148 = icmp eq ptr %call67, null
  br i1 %tobool69.not148, label %re_arm.for.end77_crit_edge, label %re_arm.for.body70_crit_edge

re_arm.for.body70_crit_edge:                      ; preds = %re_arm
  br label %for.body70

re_arm.for.end77_crit_edge:                       ; preds = %re_arm
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body70:                                       ; preds = %for.inc74.for.body70_crit_edge, %re_arm.for.body70_crit_edge
  %slave.1149 = phi ptr [ %call76, %for.inc74.for.body70_crit_edge ], [ %call67, %re_arm.for.body70_crit_edge ]
  %should_notify = getelementptr inbounds %struct.slave, ptr %slave.1149, i32 0, i32 8
  %71 = ptrtoint ptr %should_notify to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load = load i8, ptr %should_notify, align 2
  %72 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool71.not = icmp eq i8 %72, 0
  br i1 %tobool71.not, label %for.inc74, label %for.body70.for.end77_crit_edge

for.body70.for.end77_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.inc74:                                        ; preds = %for.body70
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 8
  %call76 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %74, ptr noundef nonnull %iter) #9
  %tobool69.not = icmp eq ptr %call76, null
  br i1 %tobool69.not, label %for.inc74.for.end77_crit_edge, label %for.inc74.for.body70_crit_edge

for.inc74.for.body70_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70

for.inc74.for.end77_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.end77:                                        ; preds = %for.inc74.for.end77_crit_edge, %for.body70.for.end77_crit_edge, %re_arm.for.end77_crit_edge
  %tobool69.not.lcssa = phi i1 [ true, %re_arm.for.end77_crit_edge ], [ %tobool71.not, %for.body70.for.end77_crit_edge ], [ %tobool71.not, %for.inc74.for.end77_crit_edge ]
  %call.i130 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i130, label %for.end77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

for.end77.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %for.end77
  %call1.i131 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %for.end77.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %75 = call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i137 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock) #9
  %79 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %update_slave_arr, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool79.not = icmp eq i8 %80, 0
  br i1 %tobool79.not, label %rcu_read_unlock.exit.if.end81_crit_edge, label %if.then80

rcu_read_unlock.exit.if.end81_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then80:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @bond_slave_arr_work_rearm(ptr noundef %add.ptr, i32 noundef 0) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %rcu_read_unlock.exit.if.end81_crit_edge
  br i1 %tobool69.not.lcssa, label %if.end81.if.end87_crit_edge, label %land.lhs.true

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end81
  %call84 = call i32 @rtnl_trylock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true.if.end87_crit_edge, label %if.then86

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then86:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 13, i32 1
  %83 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lower.i, align 8
  %85 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %iter.i, align 4
  %call.i139 = call ptr @netdev_lower_get_next_private(ptr noundef %82, ptr noundef nonnull %iter.i) #9
  %tobool.not13.i = icmp eq ptr %call.i139, null
  br i1 %tobool.not13.i, label %if.then86.bond_slave_state_notify.exit_crit_edge, label %if.then86.for.body.i_crit_edge

if.then86.for.body.i_crit_edge:                   ; preds = %if.then86
  br label %for.body.i

if.then86.bond_slave_state_notify.exit_crit_edge: ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %bond_slave_state_notify.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then86.for.body.i_crit_edge
  %tmp.014.i = phi ptr [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i139, %if.then86.for.body.i_crit_edge ]
  %should_notify.i = getelementptr inbounds %struct.slave, ptr %tmp.014.i, i32 0, i32 8
  %86 = ptrtoint ptr %should_notify.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i = load i8, ptr %should_notify.i, align 2
  %87 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool2.not.i = icmp eq i8 %87, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i140

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i140:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @bond_lower_state_changed(ptr noundef nonnull %tmp.014.i) #9
  %88 = ptrtoint ptr %should_notify.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load4.i = load i8, ptr %should_notify.i, align 2
  %bf.clear5.i = and i8 %bf.load4.i, -33
  store i8 %bf.clear5.i, ptr %should_notify.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i140, %for.body.i.for.inc.i_crit_edge
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %call7.i = call ptr @netdev_lower_get_next_private(ptr noundef %90, ptr noundef nonnull %iter.i) #9
  %tobool.not.i141 = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i141, label %for.inc.i.bond_slave_state_notify.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.bond_slave_state_notify.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bond_slave_state_notify.exit

bond_slave_state_notify.exit:                     ; preds = %for.inc.i.bond_slave_state_notify.exit_crit_edge, %if.then86.bond_slave_state_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  call void @rtnl_unlock() #9
  br label %if.end87

if.end87:                                         ; preds = %bond_slave_state_notify.exit, %land.lhs.true.if.end87_crit_edge, %if.end81.if.end87_crit_edge
  %wq = getelementptr i8, ptr %work, i32 -304
  %91 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wq, align 8
  %call.i142 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %92, ptr noundef %work, i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %update_slave_arr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_first_private_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_3ad_set_carrier(ptr nocapture noundef readonly %bond) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  %call = tail call ptr @netdev_lower_get_first_private_rcu(ptr noundef %5) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %ad_info = getelementptr inbounds %struct.slave, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ad_info, align 8
  %slave.i = getelementptr inbounds %struct.aggregator, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave.i, align 4
  %bond1.i = getelementptr inbounds %struct.slave, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bond1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bond1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lower.i, ptr %iter.i, align 4
  %15 = load ptr, ptr %11, align 8
  %call.i33 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %15, ptr noundef nonnull %iter.i) #9
  %tobool.not16.i = icmp eq ptr %call.i33, null
  br i1 %tobool.not16.i, label %if.end.__get_active_agg.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__get_active_agg.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %slave2.017.i = phi ptr [ %call9.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i33, %if.end.for.body.i_crit_edge ]
  %ad_info.i = getelementptr inbounds %struct.slave, ptr %slave2.017.i, i32 0, i32 15
  %16 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ad_info.i, align 8
  %is_active.i = getelementptr inbounds %struct.aggregator, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool5.not.i = icmp eq i16 %19, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %__get_active_agg.exit

for.inc.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %call9.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %21, ptr noundef nonnull %iter.i) #9
  %tobool.not.i34 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i34, label %for.inc.i.__get_active_agg.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.__get_active_agg.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_active_agg.exit.thread

__get_active_agg.exit.thread:                     ; preds = %for.inc.i.__get_active_agg.exit.thread_crit_edge, %if.end.__get_active_agg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  br label %if.else17

__get_active_agg.exit:                            ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %__get_active_agg.exit.if.else17_crit_edge, label %if.then3

__get_active_agg.exit.if.else17_crit_edge:        ; preds = %__get_active_agg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.then3:                                         ; preds = %__get_active_agg.exit
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %17, i32 0, i32 10
  %22 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %port.05.i = load ptr, ptr %lag_ports.i, align 4
  %tobool.not6.i = icmp eq ptr %port.05.i, null
  br i1 %tobool.not6.i, label %if.then3.__agg_active_ports.exit_crit_edge, label %if.then3.for.body.i36_crit_edge

if.then3.for.body.i36_crit_edge:                  ; preds = %if.then3
  br label %for.body.i36

if.then3.__agg_active_ports.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %if.then3.for.body.i36_crit_edge
  %port.08.i = phi ptr [ %port.0.i, %for.body.i36.for.body.i36_crit_edge ], [ %port.05.i, %if.then3.for.body.i36_crit_edge ]
  %active.07.i = phi i32 [ %spec.select.i, %for.body.i36.for.body.i36_crit_edge ], [ 0, %if.then3.for.body.i36_crit_edge ]
  %is_enabled.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 12
  %23 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_enabled.i, align 2, !range !194
  %25 = zext i8 %24 to i32
  %spec.select.i = add i32 %active.07.i, %25
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 30
  %26 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool.not.i35 = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i35, label %for.body.i36.__agg_active_ports.exit_crit_edge, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36

for.body.i36.__agg_active_ports.exit_crit_edge:   ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit

__agg_active_ports.exit:                          ; preds = %for.body.i36.__agg_active_ports.exit_crit_edge, %if.then3.__agg_active_ports.exit_crit_edge
  %active.0.lcssa.i = phi i32 [ 0, %if.then3.__agg_active_ports.exit_crit_edge ], [ %spec.select.i, %for.body.i36.__agg_active_ports.exit_crit_edge ]
  %min_links = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 15
  %27 = ptrtoint ptr %min_links to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_links, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %active.0.lcssa.i, i32 %28)
  %cmp = icmp ult i32 %active.0.lcssa.i, %28
  %29 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bond, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i37 = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %__agg_active_ports.exit
  br i1 %tobool.not.i37, label %if.then8, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_carrier_off(ptr noundef %30) #9
  br label %out

if.else:                                          ; preds = %__agg_active_ports.exit
  br i1 %tobool.not.i37, label %if.else.out_crit_edge, label %if.then13

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_carrier_on(ptr noundef %30) #9
  br label %out

if.else17:                                        ; preds = %__get_active_agg.exit.if.else17_crit_edge, %__get_active_agg.exit.thread
  %34 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bond, align 8
  %state.i40 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %state.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i40, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i41 = icmp eq i32 %38, 0
  br i1 %tobool.not.i41, label %if.then20, label %if.else17.out_crit_edge

if.else17.out_crit_edge:                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_carrier_off(ptr noundef %35) #9
  br label %out

out:                                              ; preds = %if.then20, %if.else17.out_crit_edge, %if.then13, %if.else.out_crit_edge, %if.then8, %if.then5.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then5.out_crit_edge ], [ 1, %if.else.out_crit_edge ], [ 1, %if.then13 ], [ 1, %if.then20 ], [ 1, %if.else17.out_crit_edge ], [ 0, %rcu_read_lock.exit.out_crit_edge ]
  %call.i42 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i42, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %out
  %call1.i43 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %39 = call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i49 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_rx_machine(ptr noundef %lacpdu, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_rx_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 14
  %0 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sm_rx_state, align 4
  %tobool.not = icmp eq ptr %lacpdu, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %ad_info = getelementptr inbounds %struct.slave, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ad_info, align 8
  %stats = getelementptr inbounds %struct.ad_slave_info, ptr %5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %stats) #9
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bond, align 4
  %stats3 = getelementptr inbounds %struct.bonding, ptr %9, i32 0, i32 17, i32 1
  %call.i.i288 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats3, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %stats3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %10 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sm_vars, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sm_rx_state, align 4
  %14 = or i16 %11, 12
  %15 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %sm_vars, align 4
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end
  %is_enabled = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 12
  %16 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_enabled, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.then16, label %if.else18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %sm_rx_state, align 4
  br label %if.end85

if.else18:                                        ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.else18.if.else41_crit_edge, label %land.lhs.true20

if.else18.if.else41_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

land.lhs.true20:                                  ; preds = %if.else18
  %19 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sm_rx_state, align 4
  %.off = add i32 %20, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then30, label %land.lhs.true20.if.else41_crit_edge

land.lhs.true20.if.else41_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

if.then30:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp32.not = icmp eq i32 %20, 6
  br i1 %cmp32.not, label %if.then30.if.end85.thread_crit_edge, label %if.then34

if.then30.if.end85.thread_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.thread

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %21 = or i16 %11, 12
  %22 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %sm_vars, align 4
  br label %if.end85.thread

if.end85.thread:                                  ; preds = %if.then34, %if.then30.if.end85.thread_crit_edge
  %sm_rx_timer_counter = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 15
  %23 = ptrtoint ptr %sm_rx_timer_counter to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %sm_rx_timer_counter, align 4
  %24 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %sm_rx_state, align 4
  br label %do.body92

if.else41:                                        ; preds = %land.lhs.true20.if.else41_crit_edge, %if.else18.if.else41_crit_edge
  %sm_rx_timer_counter42 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 15
  %25 = ptrtoint ptr %sm_rx_timer_counter42 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sm_rx_timer_counter42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool44.not = icmp eq i16 %26, 0
  br i1 %tobool44.not, label %if.else41.if.else53_crit_edge, label %land.lhs.true45

if.else41.if.else53_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true45:                                  ; preds = %if.else41
  %dec = add i16 %26, -1
  %27 = ptrtoint ptr %sm_rx_timer_counter42 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %dec, ptr %sm_rx_timer_counter42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool47.not = icmp eq i16 %dec, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true45.if.else53_crit_edge

land.lhs.true45.if.else53_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

if.then48:                                        ; preds = %land.lhs.true45
  %28 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sm_rx_state, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %29, label %if.then48.if.end85_crit_edge [
    i32 4, label %sw.bb
    i32 6, label %sw.bb51
  ]

if.then48.if.end85_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

sw.bb:                                            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %sm_rx_state, align 4
  br label %if.end85

sw.bb51:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %sm_rx_state, align 4
  br label %if.end85

if.else53:                                        ; preds = %land.lhs.true45.if.else53_crit_edge, %if.else41.if.else53_crit_edge
  %33 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sm_rx_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cond = icmp eq i32 %34, 2
  br i1 %cond, label %land.lhs.true59, label %if.else53.if.end85_crit_edge

if.else53.if.end85_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true59:                                  ; preds = %if.else53
  %35 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool63.not = icmp eq i16 %35, 0
  br i1 %tobool63.not, label %if.then76, label %if.then64

if.then64:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %sm_rx_state, align 4
  br label %if.end85

if.then76:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %sm_rx_state, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %if.then64, %if.else53.if.end85_crit_edge, %sw.bb51, %sw.bb, %if.then48.if.end85_crit_edge, %if.then16, %if.then6
  %38 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sm_rx_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %1)
  %cmp87.not = icmp eq i32 %39, %1
  %40 = and i1 %tobool.not, %cmp87.not
  br i1 %40, label %if.end85.cleanup_crit_edge, label %if.end85.do.body92_crit_edge

if.end85.do.body92_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body92:                                        ; preds = %if.end85.do.body92_crit_edge, %if.end85.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_rx_machine.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_rx_machine, %if.then96)) #9
          to label %do.end105 [label %if.then96], !srcloc !192

if.then96:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %slave97 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %41 = ptrtoint ptr %slave97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave97, align 4
  %bond98 = getelementptr inbounds %struct.slave, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bond98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bond98, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 8
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %port, align 4
  %conv101 = zext i16 %50 to i32
  %51 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sm_rx_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_rx_machine.__UNIQUE_ID_ddebug358, ptr noundef %46, ptr noundef nonnull @.str.42, ptr noundef %48, i32 noundef %conv101, i32 noundef %1, i32 noundef %52) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then96, %do.body92
  %53 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sm_rx_state, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %54, label %do.end105.cleanup_crit_edge [
    i32 1, label %sw.bb107
    i32 2, label %do.end105.sw.bb130_crit_edge
    i32 3, label %sw.bb135
    i32 4, label %sw.bb151
    i32 5, label %sw.bb181
    i32 6, label %sw.bb190
  ]

do.end105.sw.bb130_crit_edge:                     ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb130

do.end105.cleanup_crit_edge:                      ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb107:                                         ; preds = %do.end105
  %actor_oper_port_key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %56 = ptrtoint ptr %actor_oper_port_key to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %actor_oper_port_key, align 2
  %58 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sm_vars, align 4
  %60 = and i16 %59, -259
  %61 = shl i16 %57, 1
  %62 = and i16 %61, 2
  %storemerge = or i16 %60, %62
  store i16 %storemerge, ptr %sm_vars, align 4
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %sw.bb107.__record_default.exit_crit_edge, label %if.then.i

sw.bb107.__record_default.exit_crit_edge:         ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  br label %__record_default.exit

if.then.i:                                        ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  %partner_oper.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %partner_admin.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10
  %63 = call ptr @memcpy(ptr %partner_oper.i, ptr %partner_admin.i, i32 16)
  %actor_oper_port_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %64 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %actor_oper_port_state.i, align 1
  %66 = or i8 %65, 64
  store i8 %66, ptr %actor_oper_port_state.i, align 1
  br label %__record_default.exit

__record_default.exit:                            ; preds = %if.then.i, %sw.bb107.__record_default.exit_crit_edge
  %actor_oper_port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %67 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %actor_oper_port_state, align 1
  %69 = and i8 %68, 127
  store i8 %69, ptr %actor_oper_port_state, align 1
  %70 = ptrtoint ptr %sm_rx_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %sm_rx_state, align 4
  br label %sw.bb130

sw.bb130:                                         ; preds = %__record_default.exit, %do.end105.sw.bb130_crit_edge
  %71 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sm_vars, align 4
  %73 = and i16 %72, -65
  store i16 %73, ptr %sm_vars, align 4
  br label %cleanup

sw.bb135:                                         ; preds = %do.end105
  %74 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sm_vars, align 4
  %76 = and i16 %75, -321
  %tobool.not.i289 = icmp eq ptr %port, null
  br i1 %tobool.not.i289, label %sw.bb135.__record_default.exit294_crit_edge, label %if.then.i293

sw.bb135.__record_default.exit294_crit_edge:      ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  br label %__record_default.exit294

if.then.i293:                                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  %partner_oper.i290 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %partner_admin.i291 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10
  %77 = call ptr @memcpy(ptr %partner_oper.i290, ptr %partner_admin.i291, i32 16)
  %actor_oper_port_state.i292 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %78 = ptrtoint ptr %actor_oper_port_state.i292 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %actor_oper_port_state.i292, align 1
  %80 = or i8 %79, 64
  store i8 %80, ptr %actor_oper_port_state.i292, align 1
  br label %__record_default.exit294

__record_default.exit294:                         ; preds = %if.then.i293, %sw.bb135.__record_default.exit294_crit_edge
  %port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %81 = ptrtoint ptr %port_state to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %port_state, align 2
  %83 = and i16 %82, -5
  store i16 %83, ptr %port_state, align 2
  %84 = or i16 %76, 64
  %85 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %sm_vars, align 4
  %actor_oper_port_state147 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %86 = ptrtoint ptr %actor_oper_port_state147 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %actor_oper_port_state147, align 1
  %88 = and i8 %87, 127
  store i8 %88, ptr %actor_oper_port_state147, align 1
  br label %cleanup

sw.bb151:                                         ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  %port_state153 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %89 = ptrtoint ptr %port_state153 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %port_state153, align 2
  %91 = and i16 %90, -12
  %92 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %sm_vars, align 4
  %94 = and i16 %93, -77
  %95 = or i16 %91, 3
  store i16 %95, ptr %port_state153, align 2
  %96 = load i16, ptr @ad_ticks_per_sec, align 2
  %mul.i = mul i16 %96, 3
  %sm_rx_timer_counter172 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 15
  %97 = ptrtoint ptr %sm_rx_timer_counter172 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %mul.i, ptr %sm_rx_timer_counter172, align 4
  %actor_oper_port_state173 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %98 = ptrtoint ptr %actor_oper_port_state173 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %actor_oper_port_state173, align 1
  %100 = or i8 %99, -128
  store i8 %100, ptr %actor_oper_port_state173, align 1
  %101 = or i16 %94, 12
  store i16 %101, ptr %sm_vars, align 4
  br label %cleanup

sw.bb181:                                         ; preds = %do.end105
  %tobool.not.i296 = icmp eq ptr %port, null
  br i1 %tobool.not.i296, label %sw.bb181.__record_default.exit305_crit_edge, label %if.then.i299

sw.bb181.__record_default.exit305_crit_edge:      ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #11
  br label %__record_default.exit305

if.then.i299:                                     ; preds = %sw.bb181
  %partner_admin.i297 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10
  %partner_oper.i298 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %port_number.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10, i32 3
  %102 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %port_number.i, align 2
  %port_number1.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 3
  %104 = ptrtoint ptr %port_number1.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %port_number1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp.not.i = icmp eq i16 %103, %105
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i299.if.then30.i_crit_edge

if.then.i299.if.then30.i_crit_edge:               ; preds = %if.then.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %if.then.i299
  %port_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10, i32 4
  %106 = ptrtoint ptr %port_priority.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %port_priority.i, align 2
  %port_priority5.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 4
  %108 = ptrtoint ptr %port_priority5.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %port_priority5.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %109)
  %cmp7.not.i = icmp eq i16 %107, %109
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.if.then30.i_crit_edge

lor.lhs.false.i.if.then30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %110 = ptrtoint ptr %partner_admin.i297 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %partner_admin.i297, align 4
  %112 = ptrtoint ptr %partner_oper.i298 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %partner_oper.i298, align 4
  %xor.i.i.i = xor i32 %113, %111
  %add.ptr.i.i.i = getelementptr %struct.port, ptr %port, i32 0, i32 10, i32 0, i32 0, i32 4
  %114 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.port, ptr %port, i32 0, i32 11, i32 0, i32 0, i32 4
  %116 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %117, %115
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false11.i, label %lor.lhs.false9.i.if.then30.i_crit_edge

lor.lhs.false9.i.if.then30.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false9.i
  %system_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10, i32 1
  %118 = ptrtoint ptr %system_priority.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %system_priority.i, align 2
  %system_priority13.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %120 = ptrtoint ptr %system_priority13.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %system_priority13.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %121)
  %cmp15.not.i = icmp eq i16 %119, %121
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false11.i.if.then30.i_crit_edge

lor.lhs.false11.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false11.i
  %key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10, i32 2
  %122 = ptrtoint ptr %key.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %key.i, align 2
  %key19.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  %124 = ptrtoint ptr %key19.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %key19.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %125)
  %cmp21.not.i = icmp eq i16 %123, %125
  br i1 %cmp21.not.i, label %lor.lhs.false23.i, label %lor.lhs.false17.i.if.then30.i_crit_edge

lor.lhs.false17.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false17.i
  %port_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10, i32 5
  %126 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %port_state.i, align 2
  %port_state25.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %128 = ptrtoint ptr %port_state25.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %port_state25.i, align 2
  %130 = xor i16 %129, %127
  %131 = and i16 %130, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp28.not.i = icmp eq i16 %131, 0
  br i1 %cmp28.not.i, label %lor.lhs.false23.i.if.then.i304_crit_edge, label %lor.lhs.false23.i.if.then30.i_crit_edge

lor.lhs.false23.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

lor.lhs.false23.i.if.then.i304_crit_edge:         ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i304

if.then30.i:                                      ; preds = %lor.lhs.false23.i.if.then30.i_crit_edge, %lor.lhs.false17.i.if.then30.i_crit_edge, %lor.lhs.false11.i.if.then30.i_crit_edge, %lor.lhs.false9.i.if.then30.i_crit_edge, %lor.lhs.false.i.if.then30.i_crit_edge, %if.then.i299.if.then30.i_crit_edge
  %132 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %sm_vars, align 4
  %134 = and i16 %133, -257
  store i16 %134, ptr %sm_vars, align 4
  br label %if.then.i304

if.then.i304:                                     ; preds = %if.then30.i, %lor.lhs.false23.i.if.then.i304_crit_edge
  %135 = call ptr @memcpy(ptr %partner_oper.i298, ptr %partner_admin.i297, i32 16)
  %actor_oper_port_state.i303 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %136 = ptrtoint ptr %actor_oper_port_state.i303 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %actor_oper_port_state.i303, align 1
  %138 = or i8 %137, 64
  store i8 %138, ptr %actor_oper_port_state.i303, align 1
  br label %__record_default.exit305

__record_default.exit305:                         ; preds = %if.then.i304, %sw.bb181.__record_default.exit305_crit_edge
  %139 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %sm_vars, align 4
  %141 = or i16 %140, 64
  store i16 %141, ptr %sm_vars, align 4
  %actor_oper_port_state186 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %142 = ptrtoint ptr %actor_oper_port_state186 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %actor_oper_port_state186, align 1
  %144 = and i8 %143, 127
  store i8 %144, ptr %actor_oper_port_state186, align 1
  br label %cleanup

sw.bb190:                                         ; preds = %do.end105
  %actor_system = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 5
  %actor_system191 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %145 = ptrtoint ptr %actor_system to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %actor_system, align 4
  %147 = ptrtoint ptr %actor_system191 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %actor_system191, align 4
  %xor.i.i = xor i32 %148, %146
  %add.ptr.i.i = getelementptr %struct.lacpdu, ptr %lacpdu, i32 0, i32 5, i32 0, i32 4
  %149 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.port, ptr %port, i32 0, i32 2, i32 0, i32 4
  %151 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %152, %150
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then193, label %if.end201

if.then193:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #11
  %slave194 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %153 = ptrtoint ptr %slave194 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %slave194, align 4
  %bond195 = getelementptr inbounds %struct.slave, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %bond195 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bond195, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 8
  %159 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %154, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %158, ptr noundef nonnull @.str.43, ptr noundef %160) #12
  br label %cleanup

if.end201:                                        ; preds = %sw.bb190
  %tobool1.not.i = icmp eq ptr %port, null
  %or.cond.i = or i1 %tobool.not, %tobool1.not.i
  br i1 %or.cond.i, label %if.end201.__update_ntt.exit_crit_edge, label %if.then.i310

if.end201.__update_ntt.exit_crit_edge:            ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %__update_ntt.exit

if.then.i310:                                     ; preds = %if.end201
  %partner_oper.i307 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %actor_port.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 8
  %161 = ptrtoint ptr %actor_port.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %actor_port.i, align 1
  %port_number.i308 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 3
  %163 = ptrtoint ptr %port_number.i308 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %port_number.i308, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %164)
  %cmp.not.i309 = icmp eq i16 %162, %164
  br i1 %cmp.not.i309, label %lor.lhs.false.i312, label %if.then.i310.if.then25.i_crit_edge

if.then.i310.if.then25.i_crit_edge:               ; preds = %if.then.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false.i312:                               ; preds = %if.then.i310
  %actor_port_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 7
  %165 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %actor_port_priority.i, align 1
  %port_priority.i311 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 4
  %167 = ptrtoint ptr %port_priority.i311 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %port_priority.i311, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %168)
  %cmp6.not.i = icmp eq i16 %166, %168
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i312.if.then25.i_crit_edge

lor.lhs.false.i312.if.then25.i_crit_edge:         ; preds = %lor.lhs.false.i312
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i312
  %169 = ptrtoint ptr %partner_oper.i307 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %partner_oper.i307, align 4
  %xor.i.i.i313 = xor i32 %170, %146
  %171 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i.i315 = getelementptr %struct.port, ptr %port, i32 0, i32 11, i32 0, i32 0, i32 4
  %173 = ptrtoint ptr %add.ptr1.i.i.i315 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr1.i.i.i315, align 2
  %xor37.i.i.i316 = xor i16 %174, %172
  %xor3.i.i.i317 = zext i16 %xor37.i.i.i316 to i32
  %or.i.i.i318 = or i32 %xor.i.i.i313, %xor3.i.i.i317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i318)
  %cmp.i.i.i319 = icmp eq i32 %or.i.i.i318, 0
  br i1 %cmp.i.i.i319, label %lor.lhs.false9.i321, label %lor.lhs.false8.i.if.then25.i_crit_edge

lor.lhs.false8.i.if.then25.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false9.i321:                              ; preds = %lor.lhs.false8.i
  %actor_system_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 4
  %175 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %actor_system_priority.i, align 1
  %system_priority.i320 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %177 = ptrtoint ptr %system_priority.i320 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %system_priority.i320, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %176, i16 %178)
  %cmp12.not.i = icmp eq i16 %176, %178
  br i1 %cmp12.not.i, label %lor.lhs.false14.i, label %lor.lhs.false9.i321.if.then25.i_crit_edge

lor.lhs.false9.i321.if.then25.i_crit_edge:        ; preds = %lor.lhs.false9.i321
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i321
  %actor_key.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 6
  %179 = ptrtoint ptr %actor_key.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %actor_key.i, align 1
  %key.i322 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  %181 = ptrtoint ptr %key.i322 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %key.i322, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %180, i16 %182)
  %cmp17.not.i = icmp eq i16 %180, %182
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false14.i.if.then25.i_crit_edge

lor.lhs.false14.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false14.i
  %actor_state.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 9
  %183 = ptrtoint ptr %actor_state.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %actor_state.i, align 1
  %185 = and i8 %184, 4
  %port_state.i323 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %186 = ptrtoint ptr %port_state.i323 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %port_state.i323, align 2
  %188 = and i16 %187, 4
  %189 = zext i8 %185 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %188, i16 %189)
  %cmp23.not.i = icmp eq i16 %188, %189
  br i1 %cmp23.not.i, label %lor.lhs.false19.i.if.then.i329_crit_edge, label %lor.lhs.false19.i.if.then25.i_crit_edge

lor.lhs.false19.i.if.then25.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false19.i.if.then.i329_crit_edge:         ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i329

if.then25.i:                                      ; preds = %lor.lhs.false19.i.if.then25.i_crit_edge, %lor.lhs.false14.i.if.then25.i_crit_edge, %lor.lhs.false9.i321.if.then25.i_crit_edge, %lor.lhs.false8.i.if.then25.i_crit_edge, %lor.lhs.false.i312.if.then25.i_crit_edge, %if.then.i310.if.then25.i_crit_edge
  %190 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %sm_vars, align 4
  %192 = and i16 %191, -257
  store i16 %192, ptr %sm_vars, align 4
  br label %if.then.i329

if.then.i329:                                     ; preds = %if.then25.i, %lor.lhs.false19.i.if.then.i329_crit_edge
  %partner_port.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 17
  %193 = ptrtoint ptr %partner_port.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %partner_port.i, align 1
  %195 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %194, i16 %196)
  %cmp.not.i328 = icmp eq i16 %194, %196
  br i1 %cmp.not.i328, label %lor.lhs.false.i332, label %if.then.i329.if.then52.i_crit_edge

if.then.i329.if.then52.i_crit_edge:               ; preds = %if.then.i329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false.i332:                               ; preds = %if.then.i329
  %partner_port_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 16
  %197 = ptrtoint ptr %partner_port_priority.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %partner_port_priority.i, align 1
  %actor_port_priority.i330 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %199 = ptrtoint ptr %actor_port_priority.i330 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %actor_port_priority.i330, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %198, i16 %200)
  %cmp6.not.i331 = icmp eq i16 %198, %200
  br i1 %cmp6.not.i331, label %lor.lhs.false8.i341, label %lor.lhs.false.i332.if.then52.i_crit_edge

lor.lhs.false.i332.if.then52.i_crit_edge:         ; preds = %lor.lhs.false.i332
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false8.i341:                              ; preds = %lor.lhs.false.i332
  %partner_system.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 14
  %201 = ptrtoint ptr %partner_system.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %partner_system.i, align 4
  %xor.i.i.i334 = xor i32 %202, %148
  %add.ptr.i.i.i335 = getelementptr %struct.lacpdu, ptr %lacpdu, i32 0, i32 14, i32 0, i32 4
  %203 = ptrtoint ptr %add.ptr.i.i.i335 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %add.ptr.i.i.i335, align 2
  %205 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i.i337 = xor i16 %206, %204
  %xor3.i.i.i338 = zext i16 %xor37.i.i.i337 to i32
  %or.i.i.i339 = or i32 %xor.i.i.i334, %xor3.i.i.i338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i339)
  %cmp.i.i.i340 = icmp eq i32 %or.i.i.i339, 0
  br i1 %cmp.i.i.i340, label %lor.lhs.false9.i344, label %lor.lhs.false8.i341.if.then52.i_crit_edge

lor.lhs.false8.i341.if.then52.i_crit_edge:        ; preds = %lor.lhs.false8.i341
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false9.i344:                              ; preds = %lor.lhs.false8.i341
  %partner_system_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 13
  %207 = ptrtoint ptr %partner_system_priority.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %partner_system_priority.i, align 1
  %actor_system_priority.i342 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %209 = ptrtoint ptr %actor_system_priority.i342 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %actor_system_priority.i342, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %208, i16 %210)
  %cmp12.not.i343 = icmp eq i16 %208, %210
  br i1 %cmp12.not.i343, label %lor.lhs.false14.i346, label %lor.lhs.false9.i344.if.then52.i_crit_edge

lor.lhs.false9.i344.if.then52.i_crit_edge:        ; preds = %lor.lhs.false9.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false14.i346:                             ; preds = %lor.lhs.false9.i344
  %partner_key.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 15
  %211 = ptrtoint ptr %partner_key.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %212 = load i16, ptr %partner_key.i, align 1
  %actor_oper_port_key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %213 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %actor_oper_port_key.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %212, i16 %214)
  %cmp17.not.i345 = icmp eq i16 %212, %214
  br i1 %cmp17.not.i345, label %lor.lhs.false19.i348, label %lor.lhs.false14.i346.if.then52.i_crit_edge

lor.lhs.false14.i346.if.then52.i_crit_edge:       ; preds = %lor.lhs.false14.i346
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false19.i348:                             ; preds = %lor.lhs.false14.i346
  %partner_state.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 18
  %215 = ptrtoint ptr %partner_state.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %partner_state.i, align 1
  %actor_oper_port_state.i347 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %217 = ptrtoint ptr %actor_oper_port_state.i347 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %actor_oper_port_state.i347, align 1
  %219 = xor i8 %218, %216
  %220 = and i8 %219, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %lor.lhs.false19.i348.__update_ntt.exit_crit_edge, label %lor.lhs.false19.i348.if.then52.i_crit_edge

lor.lhs.false19.i348.if.then52.i_crit_edge:       ; preds = %lor.lhs.false19.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

lor.lhs.false19.i348.__update_ntt.exit_crit_edge: ; preds = %lor.lhs.false19.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %__update_ntt.exit

if.then52.i:                                      ; preds = %lor.lhs.false19.i348.if.then52.i_crit_edge, %lor.lhs.false14.i346.if.then52.i_crit_edge, %lor.lhs.false9.i344.if.then52.i_crit_edge, %lor.lhs.false8.i341.if.then52.i_crit_edge, %lor.lhs.false.i332.if.then52.i_crit_edge, %if.then.i329.if.then52.i_crit_edge
  %ntt.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %222 = ptrtoint ptr %ntt.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %ntt.i, align 2
  br label %__update_ntt.exit

__update_ntt.exit:                                ; preds = %if.then52.i, %lor.lhs.false19.i348.__update_ntt.exit_crit_edge, %if.end201.__update_ntt.exit_crit_edge
  tail call fastcc void @__record_pdu(ptr noundef %lacpdu, ptr noundef %port)
  %actor_oper_port_state202 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %223 = ptrtoint ptr %actor_oper_port_state202 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %actor_oper_port_state202, align 1
  %225 = and i8 %224, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i349 = icmp eq i8 %225, 0
  %226 = load i16, ptr @ad_ticks_per_sec, align 2
  %retval1.0.i.v = select i1 %tobool.not.i349, i16 90, i16 3
  %retval1.0.i = mul i16 %retval1.0.i.v, %226
  %sm_rx_timer_counter207 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 15
  %227 = ptrtoint ptr %sm_rx_timer_counter207 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %retval1.0.i, ptr %sm_rx_timer_counter207, align 4
  %228 = and i8 %224, 127
  %229 = ptrtoint ptr %actor_oper_port_state202 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %actor_oper_port_state202, align 1
  br label %cleanup

cleanup:                                          ; preds = %__update_ntt.exit, %if.then193, %__record_default.exit305, %sw.bb151, %__record_default.exit294, %sw.bb130, %do.end105.cleanup_crit_edge, %if.end85.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_periodic_machine(ptr nocapture noundef %port, ptr nocapture noundef readonly %bond_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_periodic_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 16
  %0 = ptrtoint ptr %sm_periodic_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sm_periodic_state, align 4
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %2 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sm_vars, align 4
  %4 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %.not = icmp eq i16 %4, 2
  br i1 %.not, label %lor.lhs.false5, label %entry.if.end61.sink.split_crit_edge

entry.if.end61.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

lor.lhs.false5:                                   ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 12
  %5 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_enabled, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %lor.lhs.false5.if.end61.sink.split_crit_edge, label %lor.lhs.false7

lor.lhs.false5.if.end61.sink.split_crit_edge:     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %actor_oper_port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %7 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %actor_oper_port_state, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false7.lor.lhs.false14_crit_edge

lor.lhs.false7.lor.lhs.false14_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false14

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %port_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_state, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool13.not = icmp eq i16 %12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end61.sink.split_crit_edge, label %land.lhs.true.lor.lhs.false14_crit_edge

land.lhs.true.lor.lhs.false14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false14

land.lhs.true.if.end61.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

lor.lhs.false14:                                  ; preds = %land.lhs.true.lor.lhs.false14_crit_edge, %lor.lhs.false7.lor.lhs.false14_crit_edge
  %lacp_active = getelementptr inbounds %struct.bond_params, ptr %bond_params, i32 0, i32 13
  %13 = ptrtoint ptr %lacp_active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lacp_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %lor.lhs.false14.if.end61.sink.split_crit_edge, label %if.else

lor.lhs.false14.if.end61.sink.split_crit_edge:    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

if.else:                                          ; preds = %lor.lhs.false14
  %sm_periodic_timer_counter = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %15 = ptrtoint ptr %sm_periodic_timer_counter to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sm_periodic_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool17.not = icmp eq i16 %16, 0
  br i1 %tobool17.not, label %if.else43, label %if.then18

if.then18:                                        ; preds = %if.else
  %dec = add i16 %16, -1
  %17 = ptrtoint ptr %sm_periodic_timer_counter to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %dec, ptr %sm_periodic_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool20.not = icmp eq i16 %dec, 0
  br i1 %tobool20.not, label %if.then18.if.end61.sink.split_crit_edge, label %if.else23

if.then18.if.end61.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

if.else23:                                        ; preds = %if.then18
  %18 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %1, label %if.else23.if.end61_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb32
  ]

if.else23.if.end61_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.bb:                                            ; preds = %if.else23
  %port_state26 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %port_state26 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %port_state26, align 2
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool29.not = icmp eq i16 %21, 0
  br i1 %tobool29.not, label %sw.bb.if.end61.sink.split_crit_edge, label %sw.bb.if.end61_crit_edge

sw.bb.if.end61_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.bb.if.end61.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

sw.bb32:                                          ; preds = %if.else23
  %port_state34 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %22 = ptrtoint ptr %port_state34 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %port_state34, align 2
  %24 = and i16 %23, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool37.not = icmp eq i16 %24, 0
  br i1 %tobool37.not, label %sw.bb32.if.end61_crit_edge, label %if.then38

sw.bb32.if.end61_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then38:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %sm_periodic_timer_counter to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sm_periodic_timer_counter, align 4
  br label %if.end61.sink.split

if.else43:                                        ; preds = %if.else
  %26 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %if.else43.if.end61_crit_edge [
    i32 1, label %if.else43.if.end61.sink.split_crit_edge
    i32 4, label %sw.bb47
  ]

if.else43.if.end61.sink.split_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.sink.split

if.else43.if.end61_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.bb47:                                          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %port_state49 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %27 = ptrtoint ptr %port_state49 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port_state49, align 2
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool52.not = icmp eq i16 %29, 0
  %. = select i1 %tobool52.not, i32 3, i32 2
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %sw.bb47, %if.else43.if.end61.sink.split_crit_edge, %if.then38, %sw.bb.if.end61.sink.split_crit_edge, %if.then18.if.end61.sink.split_crit_edge, %lor.lhs.false14.if.end61.sink.split_crit_edge, %land.lhs.true.if.end61.sink.split_crit_edge, %lor.lhs.false5.if.end61.sink.split_crit_edge, %entry.if.end61.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then38 ], [ 1, %lor.lhs.false14.if.end61.sink.split_crit_edge ], [ 1, %land.lhs.true.if.end61.sink.split_crit_edge ], [ 1, %lor.lhs.false5.if.end61.sink.split_crit_edge ], [ 1, %entry.if.end61.sink.split_crit_edge ], [ 4, %if.then18.if.end61.sink.split_crit_edge ], [ 3, %sw.bb.if.end61.sink.split_crit_edge ], [ 2, %if.else43.if.end61.sink.split_crit_edge ], [ %., %sw.bb47 ]
  %30 = ptrtoint ptr %sm_periodic_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %sm_periodic_state, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.else43.if.end61_crit_edge, %sw.bb32.if.end61_crit_edge, %sw.bb.if.end61_crit_edge, %if.else23.if.end61_crit_edge
  %31 = ptrtoint ptr %sm_periodic_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sm_periodic_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %1)
  %cmp.not = icmp eq i32 %32, %1
  br i1 %cmp.not, label %if.end61.if.end94_crit_edge, label %do.body65

if.end61.if.end94_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.body65:                                        ; preds = %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_periodic_machine.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_periodic_machine, %if.then69)) #9
          to label %do.end76 [label %if.then69], !srcloc !192

if.then69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bond, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %port, align 4
  %conv72 = zext i16 %42 to i32
  %43 = ptrtoint ptr %sm_periodic_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sm_periodic_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_periodic_machine.__UNIQUE_ID_ddebug360, ptr noundef %38, ptr noundef nonnull @.str.48, ptr noundef %40, i32 noundef %conv72, i32 noundef %1, i32 noundef %44) #9
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body65
  %45 = ptrtoint ptr %sm_periodic_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sm_periodic_state, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %46, label %do.end76.if.end94_crit_edge [
    i32 1, label %sw.bb78
    i32 2, label %sw.bb80
    i32 3, label %sw.bb85
    i32 4, label %sw.bb91
  ]

do.end76.if.end94_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

sw.bb78:                                          ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %sm_periodic_timer_counter79 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %48 = ptrtoint ptr %sm_periodic_timer_counter79 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %sm_periodic_timer_counter79, align 4
  br label %if.end94

sw.bb80:                                          ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %49 = load i16, ptr @ad_ticks_per_sec, align 2
  %sub = add i16 %49, -1
  %sm_periodic_timer_counter84 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %50 = ptrtoint ptr %sm_periodic_timer_counter84 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %sub, ptr %sm_periodic_timer_counter84, align 4
  br label %if.end94

sw.bb85:                                          ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %51 = load i16, ptr @ad_ticks_per_sec, align 2
  %mul14.i = mul i16 %51, 30
  %sub88 = add i16 %mul14.i, -1
  %sm_periodic_timer_counter90 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %52 = ptrtoint ptr %sm_periodic_timer_counter90 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %sub88, ptr %sm_periodic_timer_counter90, align 4
  br label %if.end94

sw.bb91:                                          ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %ntt = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %53 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %ntt, align 2
  br label %if.end94

if.end94:                                         ; preds = %sw.bb91, %sw.bb85, %sw.bb80, %sw.bb78, %do.end76.if.end94_crit_edge, %if.end61.if.end94_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_port_selection_logic(ptr noundef %port, ptr nocapture noundef writeonly %update_slave_arr) unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %0 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sm_vars, align 4
  %2 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %3 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.end.__get_bond_by_port.exit_crit_edge, label %if.end.i

if.end.__get_bond_by_port.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_bond_by_port.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bond.i.i = getelementptr inbounds %struct.slave, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bond.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bond.i.i, align 4
  br label %__get_bond_by_port.exit

__get_bond_by_port.exit:                          ; preds = %if.end.i, %if.end.__get_bond_by_port.exit_crit_edge
  %retval.0.i350 = phi ptr [ %6, %if.end.i ], [ null, %if.end.__get_bond_by_port.exit_crit_edge ]
  %aggregator1 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %7 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aggregator1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %__get_bond_by_port.exit.if.end64_crit_edge, label %if.then3

__get_bond_by_port.exit.if.end64_crit_edge:       ; preds = %__get_bond_by_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then3:                                         ; preds = %__get_bond_by_port.exit
  %lag_ports = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %curr_port.0371 = load ptr, ptr %lag_ports, align 4
  %tobool5.not372 = icmp eq ptr %curr_port.0371, null
  br i1 %tobool5.not372, label %if.then3.do.body37_crit_edge, label %for.body.preheader

if.then3.do.body37_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

for.body.preheader:                               ; preds = %if.then3
  %cmp393 = icmp eq ptr %curr_port.0371, %port
  br i1 %cmp393, label %for.body.preheader.if.then7_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.if.then7_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %curr_port.0374394 = phi ptr [ %curr_port.0, %for.body.for.cond_crit_edge ], [ %curr_port.0371, %for.body.preheader.for.cond_crit_edge ]
  %next_port_in_aggregator34 = getelementptr inbounds %struct.port, ptr %curr_port.0374394, i32 0, i32 30
  %10 = ptrtoint ptr %next_port_in_aggregator34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %curr_port.0 = load ptr, ptr %next_port_in_aggregator34, align 4
  %tobool5.not = icmp eq ptr %curr_port.0, null
  br i1 %tobool5.not, label %for.cond.do.body37_crit_edge, label %for.body

for.cond.do.body37_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %curr_port.0, %port
  br i1 %cmp, label %for.body.if.then7_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.if.then7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %for.body.if.then7_crit_edge, %for.body.preheader.if.then7_crit_edge
  %last_port.0373.lcssa = phi ptr [ null, %for.body.preheader.if.then7_crit_edge ], [ %curr_port.0374394, %for.body.if.then7_crit_edge ]
  %num_of_ports = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_of_ports, align 2
  %dec = add i16 %12, -1
  store i16 %dec, ptr %num_of_ports, align 2
  %tobool8.not = icmp eq ptr %last_port.0373.lcssa, null
  %next_port_in_aggregator = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 30
  %13 = ptrtoint ptr %next_port_in_aggregator to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_port_in_aggregator, align 4
  %next_port_in_aggregator12 = getelementptr inbounds %struct.port, ptr %last_port.0373.lcssa, i32 0, i32 30
  %next_port_in_aggregator12.sink = select i1 %tobool8.not, ptr %lag_ports, ptr %next_port_in_aggregator12
  %15 = ptrtoint ptr %next_port_in_aggregator12.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next_port_in_aggregator12.sink, align 4
  %16 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %aggregator1, align 4
  %next_port_in_aggregator15 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 30
  %17 = ptrtoint ptr %next_port_in_aggregator15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %next_port_in_aggregator15, align 4
  %actor_port_aggregator_identifier = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %actor_port_aggregator_identifier to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %actor_port_aggregator_identifier, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_port_selection_logic, %if.then21)) #9
          to label %do.end28 [label %if.then21], !srcloc !192

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i350, align 8
  %21 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %port, align 4
  %conv24 = zext i16 %26 to i32
  %aggregator_identifier = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 1
  %27 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %aggregator_identifier, align 2
  %conv25 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_port_selection_logic.__UNIQUE_ID_ddebug361, ptr noundef %20, ptr noundef nonnull @.str.50, ptr noundef %24, i32 noundef %conv24, i32 noundef %conv25) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %if.then7
  %29 = ptrtoint ptr %lag_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lag_ports, align 4
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %if.then.i, label %do.end28.if.end64_crit_edge

do.end28.if.end64_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %is_individual.i = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 2
  %31 = ptrtoint ptr %is_individual.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %is_individual.i, align 4
  %actor_admin_aggregator_key.i = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 3
  %is_active.i = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 12
  %32 = ptrtoint ptr %is_active.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %is_active.i, align 4
  %33 = ptrtoint ptr %num_of_ports to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %num_of_ports, align 2
  %34 = call ptr @memset(ptr %actor_admin_aggregator_key.i, i32 0, i32 22)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_port_selection_logic, %if.then4.i)) #9
          to label %if.end64 [label %if.then4.i], !srcloc !192

if.then4.i:                                       ; preds = %if.then.i
  %slave.i351 = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 11
  %35 = ptrtoint ptr %slave.i351 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave.i351, align 4
  %tobool5.not.i = icmp eq ptr %36, null
  br i1 %tobool5.not.i, label %if.then4.i.cond.end.i_crit_edge, label %cond.true.i

if.then4.i.cond.end.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then4.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %38, %cond.true.i ], [ @.str.27, %if.then4.i.cond.end.i_crit_edge ]
  %aggregator_identifier.i = getelementptr inbounds %struct.aggregator, ptr %8, i32 0, i32 1
  %39 = ptrtoint ptr %aggregator_identifier.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aggregator_identifier.i, align 2
  %conv.i = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ad_clear_agg.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.26, ptr noundef %cond.i, i32 noundef %conv.i) #9
  br label %if.end64

do.body37:                                        ; preds = %for.cond.do.body37_crit_edge, %if.then3.do.body37_crit_edge
  %call38 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body37.if.end64_crit_edge, label %do.end43

do.body37.if.end64_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave.i, align 4
  %bond46 = getelementptr inbounds %struct.slave, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bond46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bond46, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 8
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %port, align 4
  %conv55 = zext i16 %50 to i32
  %51 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %aggregator1, align 4
  %aggregator_identifier57 = getelementptr inbounds %struct.aggregator, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %aggregator_identifier57 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %aggregator_identifier57, align 2
  %conv58 = zext i16 %54 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %46, ptr noundef %48, i32 noundef %conv55, i32 noundef %conv58) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end43, %do.body37.if.end64_crit_edge, %cond.end.i, %if.then.i, %do.end28.if.end64_crit_edge, %__get_bond_by_port.exit.if.end64_crit_edge
  %55 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %retval.0.i350, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 13, i32 1
  %57 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lower, align 8
  %59 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %iter, align 4
  %60 = load ptr, ptr %retval.0.i350, align 8
  %call67 = call ptr @netdev_lower_get_next_private(ptr noundef %60, ptr noundef nonnull %iter) #9
  %tobool69.not376 = icmp eq ptr %call67, null
  br i1 %tobool69.not376, label %if.end64.if.else224_crit_edge, label %for.body70.lr.ph

if.end64.if.else224_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else224

for.body70.lr.ph:                                 ; preds = %if.end64
  %actor_oper_port_key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %partner_oper = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %add.ptr1.i.i = getelementptr %struct.port, ptr %port, i32 0, i32 11, i32 0, i32 0, i32 4
  %system_priority = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  br label %for.body70

for.body70:                                       ; preds = %for.inc145.for.body70_crit_edge, %for.body70.lr.ph
  %free_aggregator.0378 = phi ptr [ null, %for.body70.lr.ph ], [ %free_aggregator.1, %for.inc145.for.body70_crit_edge ]
  %slave.0377 = phi ptr [ %call67, %for.body70.lr.ph ], [ %call147, %for.inc145.for.body70_crit_edge ]
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave.0377, i32 0, i32 15
  %61 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ad_info, align 8
  %lag_ports72 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %lag_ports72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lag_ports72, align 4
  %tobool73.not = icmp eq ptr %64, null
  br i1 %tobool73.not, label %if.then74, label %if.end78

if.then74:                                        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #11
  %tobool75.not = icmp eq ptr %free_aggregator.0378, null
  %spec.select = select i1 %tobool75.not, ptr %62, ptr %free_aggregator.0378
  br label %for.inc145

if.end78:                                         ; preds = %for.body70
  %actor_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 4
  %65 = ptrtoint ptr %actor_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %actor_oper_aggregator_key, align 4
  %67 = ptrtoint ptr %actor_oper_port_key to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %actor_oper_port_key, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %68)
  %cmp81 = icmp eq i16 %66, %68
  br i1 %cmp81, label %land.lhs.true, label %if.end78.for.inc145_crit_edge

if.end78.for.inc145_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

land.lhs.true:                                    ; preds = %if.end78
  %partner_system = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 5
  %69 = ptrtoint ptr %partner_system to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %partner_system, align 4
  %71 = ptrtoint ptr %partner_oper to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %partner_oper, align 4
  %xor.i.i = xor i32 %72, %70
  %add.ptr.i.i = getelementptr %struct.aggregator, ptr %62, i32 0, i32 5, i32 0, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i, align 2
  %75 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %76, %74
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true85, label %land.lhs.true.for.inc145_crit_edge

land.lhs.true.for.inc145_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

land.lhs.true85:                                  ; preds = %land.lhs.true
  %partner_system_priority = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 6
  %77 = ptrtoint ptr %partner_system_priority to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %partner_system_priority, align 4
  %79 = ptrtoint ptr %system_priority to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %system_priority, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp89 = icmp eq i16 %78, %80
  br i1 %cmp89, label %land.lhs.true91, label %land.lhs.true85.for.inc145_crit_edge

land.lhs.true85.for.inc145_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

land.lhs.true91:                                  ; preds = %land.lhs.true85
  %partner_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 7
  %81 = ptrtoint ptr %partner_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %partner_oper_aggregator_key, align 2
  %83 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %key, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp95 = icmp ne i16 %82, %84
  %xor3.i.i353 = zext i16 %76 to i32
  %or.i.i354 = or i32 %72, %xor3.i.i353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i354)
  %cmp.i.i355 = icmp eq i32 %or.i.i354, 0
  %or.cond = select i1 %cmp95, i1 true, i1 %cmp.i.i355
  br i1 %or.cond, label %land.lhs.true91.for.inc145_crit_edge, label %land.lhs.true101

land.lhs.true91.for.inc145_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

land.lhs.true101:                                 ; preds = %land.lhs.true91
  %is_individual = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 2
  %85 = ptrtoint ptr %is_individual to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_individual, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool102.not = icmp eq i8 %86, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true101.for.inc145_crit_edge

land.lhs.true101.for.inc145_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

if.then103:                                       ; preds = %land.lhs.true101
  %lag_ports72.le = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 10
  %87 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %62, ptr %aggregator1, align 4
  %aggregator_identifier106 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 1
  %88 = ptrtoint ptr %aggregator_identifier106 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %aggregator_identifier106, align 2
  %actor_port_aggregator_identifier107 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  %90 = ptrtoint ptr %actor_port_aggregator_identifier107 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %actor_port_aggregator_identifier107, align 4
  %91 = ptrtoint ptr %lag_ports72.le to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lag_ports72.le, align 4
  %next_port_in_aggregator109 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 30
  %93 = ptrtoint ptr %next_port_in_aggregator109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %next_port_in_aggregator109, align 4
  %num_of_ports111 = getelementptr inbounds %struct.aggregator, ptr %62, i32 0, i32 13
  %94 = ptrtoint ptr %num_of_ports111 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_of_ports111, align 2
  %inc = add i16 %95, 1
  store i16 %inc, ptr %num_of_ports111, align 2
  store ptr %port, ptr %lag_ports72.le, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_port_selection_logic, %if.then126)) #9
          to label %do.end140 [label %if.then126], !srcloc !192

if.then126:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %retval.0.i350, align 8
  %98 = ptrtoint ptr %slave.0377 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %slave.0377, align 8
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %port, align 4
  %conv132 = zext i16 %101 to i32
  %102 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %aggregator1, align 4
  %aggregator_identifier134 = getelementptr inbounds %struct.aggregator, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %aggregator_identifier134 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %aggregator_identifier134, align 2
  %conv135 = zext i16 %105 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_port_selection_logic.__UNIQUE_ID_ddebug362, ptr noundef %97, ptr noundef nonnull @.str.52, ptr noundef %99, i32 noundef %conv132, i32 noundef %conv135) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then126, %if.then103
  %106 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %sm_vars, align 4
  %108 = or i16 %107, 256
  store i16 %108, ptr %sm_vars, align 4
  br label %if.end233

for.inc145:                                       ; preds = %land.lhs.true101.for.inc145_crit_edge, %land.lhs.true91.for.inc145_crit_edge, %land.lhs.true85.for.inc145_crit_edge, %land.lhs.true.for.inc145_crit_edge, %if.end78.for.inc145_crit_edge, %if.then74
  %free_aggregator.1 = phi ptr [ %free_aggregator.0378, %land.lhs.true101.for.inc145_crit_edge ], [ %free_aggregator.0378, %land.lhs.true91.for.inc145_crit_edge ], [ %free_aggregator.0378, %land.lhs.true85.for.inc145_crit_edge ], [ %free_aggregator.0378, %land.lhs.true.for.inc145_crit_edge ], [ %free_aggregator.0378, %if.end78.for.inc145_crit_edge ], [ %spec.select, %if.then74 ]
  %109 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %retval.0.i350, align 8
  %call147 = call ptr @netdev_lower_get_next_private(ptr noundef %110, ptr noundef nonnull %iter) #9
  %tobool69.not = icmp eq ptr %call147, null
  br i1 %tobool69.not, label %if.then150, label %for.inc145.for.body70_crit_edge

for.inc145.for.body70_crit_edge:                  ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70

if.then150:                                       ; preds = %for.inc145
  %tobool151.not = icmp eq ptr %free_aggregator.1, null
  br i1 %tobool151.not, label %if.then150.if.else224_crit_edge, label %if.then152

if.then150.if.else224_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else224

if.then152:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %free_aggregator.1, ptr %aggregator1, align 4
  %aggregator_identifier155 = getelementptr inbounds %struct.aggregator, ptr %free_aggregator.1, i32 0, i32 1
  %112 = ptrtoint ptr %aggregator_identifier155 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %aggregator_identifier155, align 2
  %actor_port_aggregator_identifier156 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  %114 = ptrtoint ptr %actor_port_aggregator_identifier156 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %actor_port_aggregator_identifier156, align 4
  %actor_oper_port_key157 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %115 = ptrtoint ptr %actor_oper_port_key157 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %actor_oper_port_key157, align 2
  %117 = trunc i16 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  %120 = getelementptr inbounds %struct.aggregator, ptr %free_aggregator.1, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %119, ptr %120, align 4
  %actor_admin_port_key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 6
  %122 = ptrtoint ptr %actor_admin_port_key to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %actor_admin_port_key, align 4
  %124 = load ptr, ptr %aggregator1, align 4
  %actor_admin_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %actor_admin_aggregator_key to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %123, ptr %actor_admin_aggregator_key, align 2
  %126 = load i16, ptr %actor_oper_port_key157, align 2
  %127 = load ptr, ptr %aggregator1, align 4
  %actor_oper_aggregator_key171 = getelementptr inbounds %struct.aggregator, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %actor_oper_aggregator_key171 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %126, ptr %actor_oper_aggregator_key171, align 4
  %129 = load ptr, ptr %aggregator1, align 4
  %partner_system173 = getelementptr inbounds %struct.aggregator, ptr %129, i32 0, i32 5
  %partner_oper174 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %130 = call ptr @memcpy(ptr %partner_system173, ptr %partner_oper174, i32 6)
  %system_priority177 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %131 = ptrtoint ptr %system_priority177 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %system_priority177, align 2
  %133 = load ptr, ptr %aggregator1, align 4
  %partner_system_priority179 = getelementptr inbounds %struct.aggregator, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %partner_system_priority179 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %132, ptr %partner_system_priority179, align 4
  %key181 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  %135 = ptrtoint ptr %key181 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %key181, align 2
  %137 = load ptr, ptr %aggregator1, align 4
  %partner_oper_aggregator_key183 = getelementptr inbounds %struct.aggregator, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %partner_oper_aggregator_key183 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %136, ptr %partner_oper_aggregator_key183, align 2
  %139 = load ptr, ptr %aggregator1, align 4
  %receive_state = getelementptr inbounds %struct.aggregator, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %receive_state to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %receive_state, align 4
  %141 = load ptr, ptr %aggregator1, align 4
  %transmit_state = getelementptr inbounds %struct.aggregator, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %transmit_state to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %transmit_state, align 2
  %143 = load ptr, ptr %aggregator1, align 4
  %lag_ports187 = getelementptr inbounds %struct.aggregator, ptr %143, i32 0, i32 10
  %144 = ptrtoint ptr %lag_ports187 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %port, ptr %lag_ports187, align 4
  %145 = load ptr, ptr %aggregator1, align 4
  %num_of_ports189 = getelementptr inbounds %struct.aggregator, ptr %145, i32 0, i32 13
  %146 = ptrtoint ptr %num_of_ports189 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %num_of_ports189, align 2
  %inc190 = add i16 %147, 1
  store i16 %inc190, ptr %num_of_ports189, align 2
  %148 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %sm_vars, align 4
  %150 = or i16 %149, 256
  store i16 %150, ptr %sm_vars, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_port_selection_logic, %if.then208)) #9
          to label %if.end233 [label %if.then208], !srcloc !192

if.then208:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %retval.0.i350, align 8
  %153 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %slave.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %157 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %port, align 4
  %conv215 = zext i16 %158 to i32
  %159 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %aggregator1, align 4
  %aggregator_identifier217 = getelementptr inbounds %struct.aggregator, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %aggregator_identifier217 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %aggregator_identifier217, align 2
  %conv218 = zext i16 %162 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_port_selection_logic.__UNIQUE_ID_ddebug363, ptr noundef %152, ptr noundef nonnull @.str.53, ptr noundef %156, i32 noundef %conv215, i32 noundef %conv218) #9
  br label %if.end233

if.else224:                                       ; preds = %if.then150.if.else224_crit_edge, %if.end64.if.else224_crit_edge
  %163 = ptrtoint ptr %retval.0.i350 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %retval.0.i350, align 8
  %165 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %slave.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 8
  %169 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %port, align 4
  %conv231 = zext i16 %170 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %164, ptr noundef nonnull @.str.54, ptr noundef %168, i32 noundef %conv231) #12
  br label %if.end233

if.end233:                                        ; preds = %if.else224, %if.then208, %if.then152, %do.end140
  %171 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %aggregator1, align 4
  %tobool.not.i356 = icmp eq ptr %172, null
  br i1 %tobool.not.i356, label %if.end233.__agg_ports_are_ready.exit_crit_edge, label %if.then.i357

if.end233.__agg_ports_are_ready.exit_crit_edge:   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

if.then.i357:                                     ; preds = %if.end233
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %172, i32 0, i32 10
  %173 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %port.09.i = load ptr, ptr %lag_ports.i, align 4
  %tobool2.not10.i = icmp eq ptr %port.09.i, null
  br i1 %tobool2.not10.i, label %if.then.i357.__agg_ports_are_ready.exit_crit_edge, label %if.then.i357.for.body.i_crit_edge

if.then.i357.for.body.i_crit_edge:                ; preds = %if.then.i357
  br label %for.body.i

if.then.i357.__agg_ports_are_ready.exit_crit_edge: ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

for.cond.i:                                       ; preds = %for.body.i
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.011.i, i32 0, i32 30
  %174 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool2.not.i = icmp eq ptr %port.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.__agg_ports_are_ready.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.__agg_ports_are_ready.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.i357.for.body.i_crit_edge
  %port.011.i = phi ptr [ %port.0.i, %for.cond.i.for.body.i_crit_edge ], [ %port.09.i, %if.then.i357.for.body.i_crit_edge ]
  %sm_vars.i = getelementptr inbounds %struct.port, ptr %port.011.i, i32 0, i32 13
  %175 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %sm_vars.i, align 4
  %177 = and i16 %176, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %tobool3.not.i = icmp eq i16 %177, 0
  br i1 %tobool3.not.i, label %for.body.i.__agg_ports_are_ready.exit_crit_edge, label %for.cond.i

for.body.i.__agg_ports_are_ready.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

__agg_ports_are_ready.exit:                       ; preds = %for.body.i.__agg_ports_are_ready.exit_crit_edge, %for.cond.i.__agg_ports_are_ready.exit_crit_edge, %if.then.i357.__agg_ports_are_ready.exit_crit_edge, %if.end233.__agg_ports_are_ready.exit_crit_edge
  %tobool1.not.i = phi i16 [ 16, %if.end233.__agg_ports_are_ready.exit_crit_edge ], [ 16, %if.then.i357.__agg_ports_are_ready.exit_crit_edge ], [ 0, %for.body.i.__agg_ports_are_ready.exit_crit_edge ], [ 16, %for.cond.i.__agg_ports_are_ready.exit_crit_edge ]
  %lag_ports.i358 = getelementptr inbounds %struct.aggregator, ptr %172, i32 0, i32 10
  %178 = ptrtoint ptr %lag_ports.i358 to i32
  call void @__asan_load4_noabort(i32 %178)
  %port.09.i359 = load ptr, ptr %lag_ports.i358, align 4
  %tobool.not10.i = icmp eq ptr %port.09.i359, null
  br i1 %tobool.not10.i, label %__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge, label %__agg_ports_are_ready.exit.for.body.i364_crit_edge

__agg_ports_are_ready.exit.for.body.i364_crit_edge: ; preds = %__agg_ports_are_ready.exit
  br label %for.body.i364

__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge: ; preds = %__agg_ports_are_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit

for.body.i364:                                    ; preds = %for.body.i364.for.body.i364_crit_edge, %__agg_ports_are_ready.exit.for.body.i364_crit_edge
  %port.011.i360 = phi ptr [ %port.0.i362, %for.body.i364.for.body.i364_crit_edge ], [ %port.09.i359, %__agg_ports_are_ready.exit.for.body.i364_crit_edge ]
  %sm_vars3.i = getelementptr inbounds %struct.port, ptr %port.011.i360, i32 0, i32 13
  %179 = ptrtoint ptr %sm_vars3.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %sm_vars3.i, align 4
  %181 = and i16 %180, -17
  %.sink.i = or i16 %181, %tobool1.not.i
  store i16 %.sink.i, ptr %sm_vars3.i, align 4
  %next_port_in_aggregator.i361 = getelementptr inbounds %struct.port, ptr %port.011.i360, i32 0, i32 30
  %182 = ptrtoint ptr %next_port_in_aggregator.i361 to i32
  call void @__asan_load4_noabort(i32 %182)
  %port.0.i362 = load ptr, ptr %next_port_in_aggregator.i361, align 4
  %tobool.not.i363 = icmp eq ptr %port.0.i362, null
  br i1 %tobool.not.i363, label %for.body.i364.__set_agg_ports_ready.exit_crit_edge, label %for.body.i364.for.body.i364_crit_edge

for.body.i364.for.body.i364_crit_edge:            ; preds = %for.body.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i364

for.body.i364.__set_agg_ports_ready.exit_crit_edge: ; preds = %for.body.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit

__set_agg_ports_ready.exit:                       ; preds = %for.body.i364.__set_agg_ports_ready.exit_crit_edge, %__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge
  %call237 = call fastcc ptr @__get_first_agg(ptr noundef %port)
  call fastcc void @ad_agg_selection_logic(ptr noundef %call237, ptr noundef %update_slave_arr)
  %183 = ptrtoint ptr %aggregator1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %aggregator1, align 4
  %is_active = getelementptr inbounds %struct.aggregator, ptr %184, i32 0, i32 12
  %185 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool239.not = icmp eq i16 %186, 0
  br i1 %tobool239.not, label %if.then240, label %__set_agg_ports_ready.exit.cleanup_crit_edge

__set_agg_ports_ready.exit.cleanup_crit_edge:     ; preds = %__set_agg_ports_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then240:                                       ; preds = %__set_agg_ports_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  %actor_oper_port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %187 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %actor_oper_port_state, align 1
  %189 = and i8 %188, -9
  store i8 %189, ptr %actor_oper_port_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then240, %__set_agg_ports_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_mux_machine(ptr noundef %port, ptr nocapture noundef writeonly %update_slave_arr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_mux_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 18
  %0 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sm_mux_state, align 4
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %2 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sm_vars, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sm_mux_state, align 4
  br label %if.end133

if.else:                                          ; preds = %entry
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %if.else.if.end133_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb48
    i32 4, label %sw.bb96
  ]

if.else.if.end133_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

sw.bb:                                            ; preds = %if.else
  %6 = and i32 %conv, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %sw.bb.if.end133_crit_edge, label %if.then11

sw.bb.if.end133_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %sm_mux_state, align 4
  br label %if.end133

sw.bb13:                                          ; preds = %if.else
  %and16 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end25

if.then18:                                        ; preds = %sw.bb13
  %and21 = and i16 %3, -33
  %9 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %and21, ptr %sm_vars, align 4
  %aggregator = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %10 = ptrtoint ptr %aggregator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aggregator, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then18.__agg_ports_are_ready.exit_crit_edge, label %if.then.i

if.then18.__agg_ports_are_ready.exit_crit_edge:   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

if.then.i:                                        ; preds = %if.then18
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %port.09.i = load ptr, ptr %lag_ports.i, align 4
  %tobool2.not10.i = icmp eq ptr %port.09.i, null
  br i1 %tobool2.not10.i, label %if.then.i.__agg_ports_are_ready.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.__agg_ports_are_ready.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

for.cond.i:                                       ; preds = %for.body.i
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.011.i, i32 0, i32 30
  %13 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool2.not.i = icmp eq ptr %port.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.__agg_ports_are_ready.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.__agg_ports_are_ready.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %port.011.i = phi ptr [ %port.0.i, %for.cond.i.for.body.i_crit_edge ], [ %port.09.i, %if.then.i.for.body.i_crit_edge ]
  %sm_vars.i = getelementptr inbounds %struct.port, ptr %port.011.i, i32 0, i32 13
  %14 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sm_vars.i, align 4
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool3.not.i = icmp eq i16 %16, 0
  br i1 %tobool3.not.i, label %for.body.i.__agg_ports_are_ready.exit_crit_edge, label %for.cond.i

for.body.i.__agg_ports_are_ready.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit

__agg_ports_are_ready.exit:                       ; preds = %for.body.i.__agg_ports_are_ready.exit_crit_edge, %for.cond.i.__agg_ports_are_ready.exit_crit_edge, %if.then.i.__agg_ports_are_ready.exit_crit_edge, %if.then18.__agg_ports_are_ready.exit_crit_edge
  %tobool1.not.i = phi i16 [ 16, %if.then18.__agg_ports_are_ready.exit_crit_edge ], [ 16, %if.then.i.__agg_ports_are_ready.exit_crit_edge ], [ 0, %for.body.i.__agg_ports_are_ready.exit_crit_edge ], [ 16, %for.cond.i.__agg_ports_are_ready.exit_crit_edge ]
  %lag_ports.i280 = getelementptr inbounds %struct.aggregator, ptr %11, i32 0, i32 10
  %17 = ptrtoint ptr %lag_ports.i280 to i32
  call void @__asan_load4_noabort(i32 %17)
  %port.09.i281 = load ptr, ptr %lag_ports.i280, align 4
  %tobool.not10.i = icmp eq ptr %port.09.i281, null
  br i1 %tobool.not10.i, label %__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge, label %__agg_ports_are_ready.exit.for.body.i286_crit_edge

__agg_ports_are_ready.exit.for.body.i286_crit_edge: ; preds = %__agg_ports_are_ready.exit
  br label %for.body.i286

__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge: ; preds = %__agg_ports_are_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit

for.body.i286:                                    ; preds = %for.body.i286.for.body.i286_crit_edge, %__agg_ports_are_ready.exit.for.body.i286_crit_edge
  %port.011.i282 = phi ptr [ %port.0.i284, %for.body.i286.for.body.i286_crit_edge ], [ %port.09.i281, %__agg_ports_are_ready.exit.for.body.i286_crit_edge ]
  %sm_vars3.i = getelementptr inbounds %struct.port, ptr %port.011.i282, i32 0, i32 13
  %18 = ptrtoint ptr %sm_vars3.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sm_vars3.i, align 4
  %20 = and i16 %19, -17
  %.sink.i = or i16 %20, %tobool1.not.i
  store i16 %.sink.i, ptr %sm_vars3.i, align 4
  %next_port_in_aggregator.i283 = getelementptr inbounds %struct.port, ptr %port.011.i282, i32 0, i32 30
  %21 = ptrtoint ptr %next_port_in_aggregator.i283 to i32
  call void @__asan_load4_noabort(i32 %21)
  %port.0.i284 = load ptr, ptr %next_port_in_aggregator.i283, align 4
  %tobool.not.i285 = icmp eq ptr %port.0.i284, null
  br i1 %tobool.not.i285, label %for.body.i286.__set_agg_ports_ready.exit_crit_edge, label %for.body.i286.for.body.i286_crit_edge

for.body.i286.for.body.i286_crit_edge:            ; preds = %for.body.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i286

for.body.i286.__set_agg_ports_ready.exit_crit_edge: ; preds = %for.body.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit

__set_agg_ports_ready.exit:                       ; preds = %for.body.i286.__set_agg_ports_ready.exit_crit_edge, %__agg_ports_are_ready.exit.__set_agg_ports_ready.exit_crit_edge
  %22 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sm_mux_state, align 4
  br label %if.end133

if.end25:                                         ; preds = %sw.bb13
  %sm_mux_timer_counter = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %23 = ptrtoint ptr %sm_mux_timer_counter to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sm_mux_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool27.not = icmp eq i16 %24, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %land.lhs.true

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %dec = add i16 %24, -1
  %25 = ptrtoint ptr %sm_mux_timer_counter to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %dec, ptr %sm_mux_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool29.not = icmp eq i16 %dec, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %26 = or i16 %3, 32
  %27 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %sm_vars, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %aggregator35 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %28 = ptrtoint ptr %aggregator35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aggregator35, align 4
  %tobool.not.i287 = icmp eq ptr %29, null
  br i1 %tobool.not.i287, label %if.end34.__agg_ports_are_ready.exit301_crit_edge, label %if.then.i291

if.end34.__agg_ports_are_ready.exit301_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit301

if.then.i291:                                     ; preds = %if.end34
  %lag_ports.i288 = getelementptr inbounds %struct.aggregator, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %lag_ports.i288 to i32
  call void @__asan_load4_noabort(i32 %30)
  %port.09.i289 = load ptr, ptr %lag_ports.i288, align 4
  %tobool2.not10.i290 = icmp eq ptr %port.09.i289, null
  br i1 %tobool2.not10.i290, label %if.then.i291.__agg_ports_are_ready.exit301_crit_edge, label %if.then.i291.for.body.i299_crit_edge

if.then.i291.for.body.i299_crit_edge:             ; preds = %if.then.i291
  br label %for.body.i299

if.then.i291.__agg_ports_are_ready.exit301_crit_edge: ; preds = %if.then.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit301

for.cond.i295:                                    ; preds = %for.body.i299
  %next_port_in_aggregator.i292 = getelementptr inbounds %struct.port, ptr %port.011.i296, i32 0, i32 30
  %31 = ptrtoint ptr %next_port_in_aggregator.i292 to i32
  call void @__asan_load4_noabort(i32 %31)
  %port.0.i293 = load ptr, ptr %next_port_in_aggregator.i292, align 4
  %tobool2.not.i294 = icmp eq ptr %port.0.i293, null
  br i1 %tobool2.not.i294, label %for.cond.i295.__agg_ports_are_ready.exit301_crit_edge, label %for.cond.i295.for.body.i299_crit_edge

for.cond.i295.for.body.i299_crit_edge:            ; preds = %for.cond.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i299

for.cond.i295.__agg_ports_are_ready.exit301_crit_edge: ; preds = %for.cond.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit301

for.body.i299:                                    ; preds = %for.cond.i295.for.body.i299_crit_edge, %if.then.i291.for.body.i299_crit_edge
  %port.011.i296 = phi ptr [ %port.0.i293, %for.cond.i295.for.body.i299_crit_edge ], [ %port.09.i289, %if.then.i291.for.body.i299_crit_edge ]
  %sm_vars.i297 = getelementptr inbounds %struct.port, ptr %port.011.i296, i32 0, i32 13
  %32 = ptrtoint ptr %sm_vars.i297 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sm_vars.i297, align 4
  %34 = and i16 %33, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool3.not.i298 = icmp eq i16 %34, 0
  br i1 %tobool3.not.i298, label %for.body.i299.__agg_ports_are_ready.exit301_crit_edge, label %for.cond.i295

for.body.i299.__agg_ports_are_ready.exit301_crit_edge: ; preds = %for.body.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit301

__agg_ports_are_ready.exit301:                    ; preds = %for.body.i299.__agg_ports_are_ready.exit301_crit_edge, %for.cond.i295.__agg_ports_are_ready.exit301_crit_edge, %if.then.i291.__agg_ports_are_ready.exit301_crit_edge, %if.end34.__agg_ports_are_ready.exit301_crit_edge
  %tobool1.not.i305 = phi i16 [ 16, %if.end34.__agg_ports_are_ready.exit301_crit_edge ], [ 16, %if.then.i291.__agg_ports_are_ready.exit301_crit_edge ], [ 0, %for.body.i299.__agg_ports_are_ready.exit301_crit_edge ], [ 16, %for.cond.i295.__agg_ports_are_ready.exit301_crit_edge ]
  %lag_ports.i302 = getelementptr inbounds %struct.aggregator, ptr %29, i32 0, i32 10
  %35 = ptrtoint ptr %lag_ports.i302 to i32
  call void @__asan_load4_noabort(i32 %35)
  %port.09.i303 = load ptr, ptr %lag_ports.i302, align 4
  %tobool.not10.i304 = icmp eq ptr %port.09.i303, null
  br i1 %tobool.not10.i304, label %__agg_ports_are_ready.exit301.__set_agg_ports_ready.exit315_crit_edge, label %__agg_ports_are_ready.exit301.for.body.i314_crit_edge

__agg_ports_are_ready.exit301.for.body.i314_crit_edge: ; preds = %__agg_ports_are_ready.exit301
  br label %for.body.i314

__agg_ports_are_ready.exit301.__set_agg_ports_ready.exit315_crit_edge: ; preds = %__agg_ports_are_ready.exit301
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit315

for.body.i314:                                    ; preds = %for.body.i314.for.body.i314_crit_edge, %__agg_ports_are_ready.exit301.for.body.i314_crit_edge
  %port.011.i307 = phi ptr [ %port.0.i312, %for.body.i314.for.body.i314_crit_edge ], [ %port.09.i303, %__agg_ports_are_ready.exit301.for.body.i314_crit_edge ]
  %sm_vars3.i308 = getelementptr inbounds %struct.port, ptr %port.011.i307, i32 0, i32 13
  %36 = ptrtoint ptr %sm_vars3.i308 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sm_vars3.i308, align 4
  %38 = and i16 %37, -17
  %.sink.i310 = or i16 %38, %tobool1.not.i305
  store i16 %.sink.i310, ptr %sm_vars3.i308, align 4
  %next_port_in_aggregator.i311 = getelementptr inbounds %struct.port, ptr %port.011.i307, i32 0, i32 30
  %39 = ptrtoint ptr %next_port_in_aggregator.i311 to i32
  call void @__asan_load4_noabort(i32 %39)
  %port.0.i312 = load ptr, ptr %next_port_in_aggregator.i311, align 4
  %tobool.not.i313 = icmp eq ptr %port.0.i312, null
  br i1 %tobool.not.i313, label %for.body.i314.__set_agg_ports_ready.exit315_crit_edge, label %for.body.i314.for.body.i314_crit_edge

for.body.i314.for.body.i314_crit_edge:            ; preds = %for.body.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i314

for.body.i314.__set_agg_ports_ready.exit315_crit_edge: ; preds = %for.body.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit315

__set_agg_ports_ready.exit315:                    ; preds = %for.body.i314.__set_agg_ports_ready.exit315_crit_edge, %__agg_ports_are_ready.exit301.__set_agg_ports_ready.exit315_crit_edge
  %40 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sm_vars, align 4
  %42 = and i16 %41, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool41.not = icmp eq i16 %42, 0
  br i1 %tobool41.not, label %__set_agg_ports_ready.exit315.if.end133_crit_edge, label %land.lhs.true42

__set_agg_ports_ready.exit315.if.end133_crit_edge: ; preds = %__set_agg_ports_ready.exit315
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

land.lhs.true42:                                  ; preds = %__set_agg_ports_ready.exit315
  %43 = ptrtoint ptr %sm_mux_timer_counter to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sm_mux_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool44.not = icmp eq i16 %44, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true42.if.end133_crit_edge

land.lhs.true42.if.end133_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %sm_mux_state, align 4
  br label %if.end133

sw.bb48:                                          ; preds = %if.else
  %and51 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %sw.bb48.if.else66_crit_edge, label %land.lhs.true53

sw.bb48.if.else66_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

land.lhs.true53:                                  ; preds = %sw.bb48
  %port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %46 = ptrtoint ptr %port_state to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %port_state, align 2
  %48 = and i16 %47, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool56.not = icmp eq i16 %48, 0
  br i1 %tobool56.not, label %land.lhs.true53.if.else66_crit_edge, label %land.lhs.true57

land.lhs.true53.if.else66_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %slave.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %49 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slave.i.i, align 4
  %cmp.i.i = icmp eq ptr %50, null
  br i1 %cmp.i.i, label %land.lhs.true57.if.then60_crit_edge, label %__get_bond_by_port.exit.i

land.lhs.true57.if.then60_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

__get_bond_by_port.exit.i:                        ; preds = %land.lhs.true57
  %bond.i.i.i = getelementptr inbounds %struct.slave, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bond.i.i.i, align 4
  %cmp.i = icmp eq ptr %52, null
  br i1 %cmp.i, label %__get_bond_by_port.exit.i.if.then60_crit_edge, label %__check_agg_selection_timer.exit

__get_bond_by_port.exit.i.if.then60_crit_edge:    ; preds = %__get_bond_by_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

__check_agg_selection_timer.exit:                 ; preds = %__get_bond_by_port.exit.i
  %agg_select_timer.i = getelementptr inbounds %struct.bonding, ptr %52, i32 0, i32 17, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %agg_select_timer.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %agg_select_timer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %agg_select_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i316.not = icmp eq i32 %54, 0
  br i1 %tobool.not.i316.not, label %__check_agg_selection_timer.exit.if.then60_crit_edge, label %__check_agg_selection_timer.exit.if.else66_crit_edge

__check_agg_selection_timer.exit.if.else66_crit_edge: ; preds = %__check_agg_selection_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

__check_agg_selection_timer.exit.if.then60_crit_edge: ; preds = %__check_agg_selection_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then60:                                        ; preds = %__check_agg_selection_timer.exit.if.then60_crit_edge, %__get_bond_by_port.exit.i.if.then60_crit_edge, %land.lhs.true57.if.then60_crit_edge
  %aggregator61 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %55 = ptrtoint ptr %aggregator61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aggregator61, align 4
  %is_active = getelementptr inbounds %struct.aggregator, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool62.not = icmp eq i16 %58, 0
  br i1 %tobool62.not, label %if.then60.if.end133_crit_edge, label %if.then63

if.then60.if.end133_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %sm_mux_state, align 4
  br label %if.end133

if.else66:                                        ; preds = %__check_agg_selection_timer.exit.if.else66_crit_edge, %land.lhs.true53.if.else66_crit_edge, %sw.bb48.if.else66_crit_edge
  %60 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sm_vars, align 4
  %62 = and i16 %61, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %62)
  %63 = icmp eq i16 %62, 256
  br i1 %63, label %if.else85, label %if.then76

if.then76:                                        ; preds = %if.else66
  %64 = and i16 %61, -33
  %65 = ptrtoint ptr %sm_vars to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %sm_vars, align 4
  %aggregator81 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %66 = ptrtoint ptr %aggregator81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aggregator81, align 4
  %tobool.not.i318 = icmp eq ptr %67, null
  br i1 %tobool.not.i318, label %if.then76.__agg_ports_are_ready.exit332_crit_edge, label %if.then.i322

if.then76.__agg_ports_are_ready.exit332_crit_edge: ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit332

if.then.i322:                                     ; preds = %if.then76
  %lag_ports.i319 = getelementptr inbounds %struct.aggregator, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %lag_ports.i319 to i32
  call void @__asan_load4_noabort(i32 %68)
  %port.09.i320 = load ptr, ptr %lag_ports.i319, align 4
  %tobool2.not10.i321 = icmp eq ptr %port.09.i320, null
  br i1 %tobool2.not10.i321, label %if.then.i322.__agg_ports_are_ready.exit332_crit_edge, label %if.then.i322.for.body.i330_crit_edge

if.then.i322.for.body.i330_crit_edge:             ; preds = %if.then.i322
  br label %for.body.i330

if.then.i322.__agg_ports_are_ready.exit332_crit_edge: ; preds = %if.then.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit332

for.cond.i326:                                    ; preds = %for.body.i330
  %next_port_in_aggregator.i323 = getelementptr inbounds %struct.port, ptr %port.011.i327, i32 0, i32 30
  %69 = ptrtoint ptr %next_port_in_aggregator.i323 to i32
  call void @__asan_load4_noabort(i32 %69)
  %port.0.i324 = load ptr, ptr %next_port_in_aggregator.i323, align 4
  %tobool2.not.i325 = icmp eq ptr %port.0.i324, null
  br i1 %tobool2.not.i325, label %for.cond.i326.__agg_ports_are_ready.exit332_crit_edge, label %for.cond.i326.for.body.i330_crit_edge

for.cond.i326.for.body.i330_crit_edge:            ; preds = %for.cond.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i330

for.cond.i326.__agg_ports_are_ready.exit332_crit_edge: ; preds = %for.cond.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit332

for.body.i330:                                    ; preds = %for.cond.i326.for.body.i330_crit_edge, %if.then.i322.for.body.i330_crit_edge
  %port.011.i327 = phi ptr [ %port.0.i324, %for.cond.i326.for.body.i330_crit_edge ], [ %port.09.i320, %if.then.i322.for.body.i330_crit_edge ]
  %sm_vars.i328 = getelementptr inbounds %struct.port, ptr %port.011.i327, i32 0, i32 13
  %70 = ptrtoint ptr %sm_vars.i328 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sm_vars.i328, align 4
  %72 = and i16 %71, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool3.not.i329 = icmp eq i16 %72, 0
  br i1 %tobool3.not.i329, label %for.body.i330.__agg_ports_are_ready.exit332_crit_edge, label %for.cond.i326

for.body.i330.__agg_ports_are_ready.exit332_crit_edge: ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_ports_are_ready.exit332

__agg_ports_are_ready.exit332:                    ; preds = %for.body.i330.__agg_ports_are_ready.exit332_crit_edge, %for.cond.i326.__agg_ports_are_ready.exit332_crit_edge, %if.then.i322.__agg_ports_are_ready.exit332_crit_edge, %if.then76.__agg_ports_are_ready.exit332_crit_edge
  %tobool1.not.i336 = phi i16 [ 16, %if.then76.__agg_ports_are_ready.exit332_crit_edge ], [ 16, %if.then.i322.__agg_ports_are_ready.exit332_crit_edge ], [ 0, %for.body.i330.__agg_ports_are_ready.exit332_crit_edge ], [ 16, %for.cond.i326.__agg_ports_are_ready.exit332_crit_edge ]
  %lag_ports.i333 = getelementptr inbounds %struct.aggregator, ptr %67, i32 0, i32 10
  %73 = ptrtoint ptr %lag_ports.i333 to i32
  call void @__asan_load4_noabort(i32 %73)
  %port.09.i334 = load ptr, ptr %lag_ports.i333, align 4
  %tobool.not10.i335 = icmp eq ptr %port.09.i334, null
  br i1 %tobool.not10.i335, label %__agg_ports_are_ready.exit332.__set_agg_ports_ready.exit346_crit_edge, label %__agg_ports_are_ready.exit332.for.body.i345_crit_edge

__agg_ports_are_ready.exit332.for.body.i345_crit_edge: ; preds = %__agg_ports_are_ready.exit332
  br label %for.body.i345

__agg_ports_are_ready.exit332.__set_agg_ports_ready.exit346_crit_edge: ; preds = %__agg_ports_are_ready.exit332
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit346

for.body.i345:                                    ; preds = %for.body.i345.for.body.i345_crit_edge, %__agg_ports_are_ready.exit332.for.body.i345_crit_edge
  %port.011.i338 = phi ptr [ %port.0.i343, %for.body.i345.for.body.i345_crit_edge ], [ %port.09.i334, %__agg_ports_are_ready.exit332.for.body.i345_crit_edge ]
  %sm_vars3.i339 = getelementptr inbounds %struct.port, ptr %port.011.i338, i32 0, i32 13
  %74 = ptrtoint ptr %sm_vars3.i339 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sm_vars3.i339, align 4
  %76 = and i16 %75, -17
  %.sink.i341 = or i16 %76, %tobool1.not.i336
  store i16 %.sink.i341, ptr %sm_vars3.i339, align 4
  %next_port_in_aggregator.i342 = getelementptr inbounds %struct.port, ptr %port.011.i338, i32 0, i32 30
  %77 = ptrtoint ptr %next_port_in_aggregator.i342 to i32
  call void @__asan_load4_noabort(i32 %77)
  %port.0.i343 = load ptr, ptr %next_port_in_aggregator.i342, align 4
  %tobool.not.i344 = icmp eq ptr %port.0.i343, null
  br i1 %tobool.not.i344, label %for.body.i345.__set_agg_ports_ready.exit346_crit_edge, label %for.body.i345.for.body.i345_crit_edge

for.body.i345.for.body.i345_crit_edge:            ; preds = %for.body.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i345

for.body.i345.__set_agg_ports_ready.exit346_crit_edge: ; preds = %for.body.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_agg_ports_ready.exit346

__set_agg_ports_ready.exit346:                    ; preds = %for.body.i345.__set_agg_ports_ready.exit346_crit_edge, %__agg_ports_are_ready.exit332.__set_agg_ports_ready.exit346_crit_edge
  %78 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %sm_mux_state, align 4
  br label %if.end133

if.else85:                                        ; preds = %if.else66
  %aggregator86 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %79 = ptrtoint ptr %aggregator86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %aggregator86, align 4
  %is_active87 = getelementptr inbounds %struct.aggregator, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %is_active87 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %is_active87, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool88.not = icmp eq i16 %82, 0
  br i1 %tobool88.not, label %if.else85.if.end133_crit_edge, label %if.then89

if.else85.if.end133_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then89:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  %actor_oper_port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %83 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %actor_oper_port_state, align 1
  %85 = or i8 %84, 8
  store i8 %85, ptr %actor_oper_port_state, align 1
  br label %if.end133

sw.bb96:                                          ; preds = %if.else
  %86 = and i32 %conv, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %86)
  %87 = icmp eq i32 %86, 256
  br i1 %87, label %lor.lhs.false106, label %sw.bb96.if.then117_crit_edge

sw.bb96.if.then117_crit_edge:                     ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

lor.lhs.false106:                                 ; preds = %sw.bb96
  %port_state108 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %88 = ptrtoint ptr %port_state108 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %port_state108, align 2
  %90 = and i16 %89, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool111.not = icmp eq i16 %90, 0
  br i1 %tobool111.not, label %lor.lhs.false106.if.then117_crit_edge, label %lor.lhs.false112

lor.lhs.false106.if.then117_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

lor.lhs.false112:                                 ; preds = %lor.lhs.false106
  %actor_oper_port_state113 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %91 = ptrtoint ptr %actor_oper_port_state113 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %actor_oper_port_state113, align 1
  %93 = and i8 %92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool116.not = icmp eq i8 %93, 0
  br i1 %tobool116.not, label %lor.lhs.false112.if.then117_crit_edge, label %if.else119

lor.lhs.false112.if.then117_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

if.then117:                                       ; preds = %lor.lhs.false112.if.then117_crit_edge, %lor.lhs.false106.if.then117_crit_edge, %sw.bb96.if.then117_crit_edge
  %94 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %sm_mux_state, align 4
  br label %if.end133

if.else119:                                       ; preds = %lor.lhs.false112
  %aggregator120 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %95 = ptrtoint ptr %aggregator120 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %aggregator120, align 4
  %tobool121.not = icmp eq ptr %96, null
  br i1 %tobool121.not, label %if.else119.if.end133_crit_edge, label %land.lhs.true122

if.else119.if.end133_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

land.lhs.true122:                                 ; preds = %if.else119
  %is_active124 = getelementptr inbounds %struct.aggregator, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %is_active124 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %is_active124, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool126.not = icmp eq i16 %98, 0
  br i1 %tobool126.not, label %land.lhs.true122.if.end133_crit_edge, label %land.lhs.true127

land.lhs.true122.if.end133_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %slave.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %99 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %slave.i, align 4
  %backup.i.i.i = getelementptr inbounds %struct.slave, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %backup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i.i.i = load i8, ptr %backup.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool129.not = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool129.not, label %if.then130, label %land.lhs.true127.if.end133_crit_edge

land.lhs.true127.if.end133_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then130:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__enable_port(ptr noundef %port)
  %102 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %update_slave_arr, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %land.lhs.true127.if.end133_crit_edge, %land.lhs.true122.if.end133_crit_edge, %if.else119.if.end133_crit_edge, %if.then117, %if.then89, %if.else85.if.end133_crit_edge, %__set_agg_ports_ready.exit346, %if.then63, %if.then60.if.end133_crit_edge, %if.then45, %land.lhs.true42.if.end133_crit_edge, %__set_agg_ports_ready.exit315.if.end133_crit_edge, %__set_agg_ports_ready.exit, %if.then11, %sw.bb.if.end133_crit_edge, %if.else.if.end133_crit_edge, %if.then
  %103 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sm_mux_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %1)
  %cmp.not = icmp eq i32 %104, %1
  br i1 %cmp.not, label %if.end133.if.end207_crit_edge, label %do.body137

if.end133.if.end207_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

do.body137:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_mux_machine.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_mux_machine, %if.then142)) #9
          to label %do.end149 [label %if.then142], !srcloc !192

if.then142:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %105 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bond, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %106, align 8
  %113 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %port, align 4
  %conv145 = zext i16 %114 to i32
  %115 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sm_mux_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_mux_machine.__UNIQUE_ID_ddebug357, ptr noundef %110, ptr noundef nonnull @.str.56, ptr noundef %112, i32 noundef %conv145, i32 noundef %1, i32 noundef %116) #9
  br label %do.end149

do.end149:                                        ; preds = %if.then142, %do.body137
  %117 = ptrtoint ptr %sm_mux_state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sm_mux_state, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %118, label %do.end149.if.end207_crit_edge [
    i32 1, label %sw.bb151
    i32 2, label %sw.bb164
    i32 3, label %sw.bb167
    i32 4, label %sw.bb191
  ]

do.end149.if.end207_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

sw.bb151:                                         ; preds = %do.end149
  %actor_oper_port_state152 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %120 = ptrtoint ptr %actor_oper_port_state152 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %actor_oper_port_state152, align 1
  %122 = and i8 %121, -9
  store i8 %122, ptr %actor_oper_port_state152, align 1
  %aggregator.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %123 = ptrtoint ptr %aggregator.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %aggregator.i, align 4
  %tobool.not.i347 = icmp eq ptr %124, null
  br i1 %tobool.not.i347, label %sw.bb151.ad_disable_collecting_distributing.exit_crit_edge, label %land.lhs.true.i

sw.bb151.ad_disable_collecting_distributing.exit_crit_edge: ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_disable_collecting_distributing.exit

land.lhs.true.i:                                  ; preds = %sw.bb151
  %partner_system.i = getelementptr inbounds %struct.aggregator, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %partner_system.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %partner_system.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.aggregator, ptr %124, i32 0, i32 5, i32 0, i32 4
  %127 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor3.i.i.i = zext i16 %128 to i32
  %or.i.i.i = or i32 %126, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.ad_disable_collecting_distributing.exit_crit_edge, label %do.body2.i

land.lhs.true.i.ad_disable_collecting_distributing.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_disable_collecting_distributing.exit

do.body2.i:                                       ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_mux_machine, %if.then7.i)) #9
          to label %do.end12.i [label %if.then7.i], !srcloc !192

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i348 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %129 = ptrtoint ptr %slave.i348 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %slave.i348, align 4
  %bond.i = getelementptr inbounds %struct.slave, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bond.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %130, align 8
  %137 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %port, align 4
  %conv.i = zext i16 %138 to i32
  %139 = ptrtoint ptr %aggregator.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %aggregator.i, align 4
  %aggregator_identifier.i = getelementptr inbounds %struct.aggregator, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %aggregator_identifier.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %aggregator_identifier.i, align 2
  %conv11.i = zext i16 %142 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371, ptr noundef %134, ptr noundef nonnull @.str.58, ptr noundef %136, i32 noundef %conv.i, i32 noundef %conv11.i) #9
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body2.i
  %slave.i.i349 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %143 = ptrtoint ptr %slave.i.i349 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %slave.i.i349, align 4
  %bond.i.i.i350 = getelementptr inbounds %struct.slave, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %bond.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bond.i.i.i350, align 4
  %params.i.i.i.i = getelementptr inbounds %struct.bonding, ptr %146, i32 0, i32 19
  %147 = ptrtoint ptr %params.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %params.i.i.i.i, align 8
  %149 = add i32 %148, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %do.end12.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

do.end12.i.if.end.i.i.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.end12.i
  %backup.i.i.i.i = getelementptr inbounds %struct.slave, ptr %144, i32 0, i32 8
  %151 = ptrtoint ptr %backup.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i.i.i.i = load i8, ptr %backup.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear17.sink.i.i.i.i = xor i8 %bf.load.i.i.i.i, -96
  %152 = ptrtoint ptr %backup.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %bf.clear17.sink.i.i.i.i, ptr %backup.i.i.i.i, align 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge, %do.end12.i.if.end.i.i.i_crit_edge
  %all_slaves_active.i.i.i = getelementptr inbounds %struct.bonding, ptr %146, i32 0, i32 19, i32 21
  %153 = ptrtoint ptr %all_slaves_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %all_slaves_active.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool2.not.i.i.i = icmp eq i32 %154, 0
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.end.i.i.i.__disable_port.exit.i_crit_edge

if.end.i.i.i.__disable_port.exit.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__disable_port.exit.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inactive.i.i.i = getelementptr inbounds %struct.slave, ptr %144, i32 0, i32 8
  %155 = ptrtoint ptr %inactive.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load.i.i.i351 = load i8, ptr %inactive.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i351, 64
  store i8 %bf.set.i.i.i, ptr %inactive.i.i.i, align 2
  br label %__disable_port.exit.i

__disable_port.exit.i:                            ; preds = %if.then3.i.i.i, %if.end.i.i.i.__disable_port.exit.i_crit_edge
  %156 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %update_slave_arr, align 1
  br label %ad_disable_collecting_distributing.exit

ad_disable_collecting_distributing.exit:          ; preds = %__disable_port.exit.i, %land.lhs.true.i.ad_disable_collecting_distributing.exit_crit_edge, %sw.bb151.ad_disable_collecting_distributing.exit_crit_edge
  %157 = ptrtoint ptr %actor_oper_port_state152 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %actor_oper_port_state152, align 1
  %159 = and i8 %158, -49
  store i8 %159, ptr %actor_oper_port_state152, align 1
  %ntt = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %160 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %ntt, align 2
  br label %if.end207

sw.bb164:                                         ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #11
  %161 = load i16, ptr @ad_ticks_per_sec, align 2
  %mul22.i = shl i16 %161, 1
  %sm_mux_timer_counter166 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %162 = ptrtoint ptr %sm_mux_timer_counter166 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %mul22.i, ptr %sm_mux_timer_counter166, align 4
  br label %if.end207

sw.bb167:                                         ; preds = %do.end149
  %aggregator168 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %163 = ptrtoint ptr %aggregator168 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %aggregator168, align 4
  %is_active169 = getelementptr inbounds %struct.aggregator, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %is_active169 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %is_active169, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool170.not = icmp eq i16 %166, 0
  %actor_oper_port_state177 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %167 = ptrtoint ptr %actor_oper_port_state177 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %actor_oper_port_state177, align 1
  %169 = and i8 %168, -57
  %masksel = select i1 %tobool170.not, i8 0, i8 8
  %.sink = or i8 %169, %masksel
  %actor_oper_port_state182 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %170 = ptrtoint ptr %actor_oper_port_state182 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %.sink, ptr %actor_oper_port_state182, align 1
  %tobool.not.i354 = icmp eq ptr %164, null
  br i1 %tobool.not.i354, label %sw.bb167.ad_disable_collecting_distributing.exit386_crit_edge, label %land.lhs.true.i360

sw.bb167.ad_disable_collecting_distributing.exit386_crit_edge: ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_disable_collecting_distributing.exit386

land.lhs.true.i360:                               ; preds = %sw.bb167
  %partner_system.i355 = getelementptr inbounds %struct.aggregator, ptr %164, i32 0, i32 5
  %171 = ptrtoint ptr %partner_system.i355 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %partner_system.i355, align 4
  %add.ptr.i.i.i356 = getelementptr %struct.aggregator, ptr %164, i32 0, i32 5, i32 0, i32 4
  %173 = ptrtoint ptr %add.ptr.i.i.i356 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr.i.i.i356, align 2
  %xor3.i.i.i357 = zext i16 %174 to i32
  %or.i.i.i358 = or i32 %172, %xor3.i.i.i357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i358)
  %cmp.i.i.i359 = icmp eq i32 %or.i.i.i358, 0
  br i1 %cmp.i.i.i359, label %land.lhs.true.i360.ad_disable_collecting_distributing.exit386_crit_edge, label %do.body2.i361

land.lhs.true.i360.ad_disable_collecting_distributing.exit386_crit_edge: ; preds = %land.lhs.true.i360
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_disable_collecting_distributing.exit386

do.body2.i361:                                    ; preds = %land.lhs.true.i360
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_mux_machine, %if.then7.i367)) #9
          to label %do.end12.i371 [label %if.then7.i367], !srcloc !192

if.then7.i367:                                    ; preds = %do.body2.i361
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i362 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %175 = ptrtoint ptr %slave.i362 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %slave.i362, align 4
  %bond.i363 = getelementptr inbounds %struct.slave, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %bond.i363 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bond.i363, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 8
  %181 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %176, align 8
  %183 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %port, align 4
  %conv.i364 = zext i16 %184 to i32
  %185 = ptrtoint ptr %aggregator168 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %aggregator168, align 4
  %aggregator_identifier.i365 = getelementptr inbounds %struct.aggregator, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %aggregator_identifier.i365 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %aggregator_identifier.i365, align 2
  %conv11.i366 = zext i16 %188 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371, ptr noundef %180, ptr noundef nonnull @.str.58, ptr noundef %182, i32 noundef %conv.i364, i32 noundef %conv11.i366) #9
  br label %do.end12.i371

do.end12.i371:                                    ; preds = %if.then7.i367, %do.body2.i361
  %slave.i.i368 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %189 = ptrtoint ptr %slave.i.i368 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %slave.i.i368, align 4
  %bond.i.i.i369 = getelementptr inbounds %struct.slave, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %bond.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bond.i.i.i369, align 4
  %params.i.i.i.i370 = getelementptr inbounds %struct.bonding, ptr %192, i32 0, i32 19
  %193 = ptrtoint ptr %params.i.i.i.i370 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %params.i.i.i.i370, align 8
  %195 = add i32 %194, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %195)
  %196 = icmp ult i32 %195, 2
  br i1 %196, label %do.end12.i371.if.end.i.i.i380_crit_edge, label %if.then.i.i.i375

do.end12.i371.if.end.i.i.i380_crit_edge:          ; preds = %do.end12.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i380

if.then.i.i.i375:                                 ; preds = %do.end12.i371
  %backup.i.i.i.i372 = getelementptr inbounds %struct.slave, ptr %190, i32 0, i32 8
  %197 = ptrtoint ptr %backup.i.i.i.i372 to i32
  call void @__asan_load1_noabort(i32 %197)
  %bf.load.i.i.i.i373 = load i8, ptr %backup.i.i.i.i372, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i373)
  %cmp.i.i.i.i374 = icmp slt i8 %bf.load.i.i.i.i373, 0
  br i1 %cmp.i.i.i.i374, label %if.then.i.i.i375.if.end.i.i.i380_crit_edge, label %if.end.i.i.i.i377

if.then.i.i.i375.if.end.i.i.i380_crit_edge:       ; preds = %if.then.i.i.i375
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i380

if.end.i.i.i.i377:                                ; preds = %if.then.i.i.i375
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear17.sink.i.i.i.i376 = xor i8 %bf.load.i.i.i.i373, -96
  %198 = ptrtoint ptr %backup.i.i.i.i372 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %bf.clear17.sink.i.i.i.i376, ptr %backup.i.i.i.i372, align 2
  br label %if.end.i.i.i380

if.end.i.i.i380:                                  ; preds = %if.end.i.i.i.i377, %if.then.i.i.i375.if.end.i.i.i380_crit_edge, %do.end12.i371.if.end.i.i.i380_crit_edge
  %all_slaves_active.i.i.i378 = getelementptr inbounds %struct.bonding, ptr %192, i32 0, i32 19, i32 21
  %199 = ptrtoint ptr %all_slaves_active.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %all_slaves_active.i.i.i378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool2.not.i.i.i379 = icmp eq i32 %200, 0
  br i1 %tobool2.not.i.i.i379, label %if.then3.i.i.i384, label %if.end.i.i.i380.__disable_port.exit.i385_crit_edge

if.end.i.i.i380.__disable_port.exit.i385_crit_edge: ; preds = %if.end.i.i.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %__disable_port.exit.i385

if.then3.i.i.i384:                                ; preds = %if.end.i.i.i380
  call void @__sanitizer_cov_trace_pc() #11
  %inactive.i.i.i381 = getelementptr inbounds %struct.slave, ptr %190, i32 0, i32 8
  %201 = ptrtoint ptr %inactive.i.i.i381 to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load.i.i.i382 = load i8, ptr %inactive.i.i.i381, align 2
  %bf.set.i.i.i383 = or i8 %bf.load.i.i.i382, 64
  store i8 %bf.set.i.i.i383, ptr %inactive.i.i.i381, align 2
  br label %__disable_port.exit.i385

__disable_port.exit.i385:                         ; preds = %if.then3.i.i.i384, %if.end.i.i.i380.__disable_port.exit.i385_crit_edge
  %202 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 1, ptr %update_slave_arr, align 1
  br label %ad_disable_collecting_distributing.exit386

ad_disable_collecting_distributing.exit386:       ; preds = %__disable_port.exit.i385, %land.lhs.true.i360.ad_disable_collecting_distributing.exit386_crit_edge, %sw.bb167.ad_disable_collecting_distributing.exit386_crit_edge
  %ntt190 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %203 = ptrtoint ptr %ntt190 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 1, ptr %ntt190, align 2
  br label %if.end207

sw.bb191:                                         ; preds = %do.end149
  %actor_oper_port_state192 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %204 = ptrtoint ptr %actor_oper_port_state192 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %actor_oper_port_state192, align 1
  %206 = or i8 %205, 56
  store i8 %206, ptr %actor_oper_port_state192, align 1
  %aggregator.i387 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 29
  %207 = ptrtoint ptr %aggregator.i387 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %aggregator.i387, align 4
  %is_active.i = getelementptr inbounds %struct.aggregator, ptr %208, i32 0, i32 12
  %209 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool.not.i388 = icmp eq i16 %210, 0
  br i1 %tobool.not.i388, label %sw.bb191.ad_enable_collecting_distributing.exit_crit_edge, label %do.body1.i

sw.bb191.ad_enable_collecting_distributing.exit_crit_edge: ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad_enable_collecting_distributing.exit

do.body1.i:                                       ; preds = %sw.bb191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_enable_collecting_distributing.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_mux_machine, %if.then5.i)) #9
          to label %do.end10.i [label %if.then5.i], !srcloc !192

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i389 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %211 = ptrtoint ptr %slave.i389 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %slave.i389, align 4
  %bond.i390 = getelementptr inbounds %struct.slave, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %bond.i390 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bond.i390, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 8
  %217 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %212, align 8
  %219 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %port, align 4
  %conv.i391 = zext i16 %220 to i32
  %221 = ptrtoint ptr %aggregator.i387 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %aggregator.i387, align 4
  %aggregator_identifier.i392 = getelementptr inbounds %struct.aggregator, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %aggregator_identifier.i392 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %aggregator_identifier.i392, align 2
  %conv9.i = zext i16 %224 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_enable_collecting_distributing.__UNIQUE_ID_ddebug370, ptr noundef %216, ptr noundef nonnull @.str.60, ptr noundef %218, i32 noundef %conv.i391, i32 noundef %conv9.i) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %do.body1.i
  %slave1.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %225 = ptrtoint ptr %slave1.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %slave1.i.i, align 4
  %link.i.i = getelementptr inbounds %struct.slave, ptr %226, i32 0, i32 6
  %227 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %link.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %cmp.i.i393 = icmp eq i8 %228, 0
  br i1 %cmp.i.i393, label %land.lhs.true.i.i, label %do.end10.i.__enable_port.exit.i_crit_edge

do.end10.i.__enable_port.exit.i_crit_edge:        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit.i

land.lhs.true.i.i:                                ; preds = %do.end10.i
  %229 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %226, align 8
  %state.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.i.__enable_port.exit.i_crit_edge, label %bond_slave_is_up.exit.i.i

land.lhs.true.i.i.__enable_port.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit.i

bond_slave_is_up.exit.i.i:                        ; preds = %land.lhs.true.i.i
  %233 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %state.i.i.i.i, align 4
  %235 = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool.not.i.i.i.i = icmp eq i32 %235, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i, label %bond_slave_is_up.exit.i.i.__enable_port.exit.i_crit_edge

bond_slave_is_up.exit.i.i.__enable_port.exit.i_crit_edge: ; preds = %bond_slave_is_up.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__enable_port.exit.i

if.then.i.i:                                      ; preds = %bond_slave_is_up.exit.i.i
  %backup.i.i.i.i394 = getelementptr inbounds %struct.slave, ptr %226, i32 0, i32 8
  %236 = ptrtoint ptr %backup.i.i.i.i394 to i32
  call void @__asan_load1_noabort(i32 %236)
  %bf.load.i.i.i.i395 = load i8, ptr %backup.i.i.i.i394, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i395)
  %cmp.i.i.i.i396 = icmp sgt i8 %bf.load.i.i.i.i395, -1
  br i1 %cmp.i.i.i.i396, label %if.then.i.i.bond_set_slave_active_flags.exit.i.i_crit_edge, label %if.end.i.i.i.i398

if.then.i.i.bond_set_slave_active_flags.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bond_set_slave_active_flags.exit.i.i

if.end.i.i.i.i398:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %237 = and i8 %bf.load.i.i.i.i395, 127
  %bf.clear17.sink.i.i.i.i397 = xor i8 %237, 32
  %238 = ptrtoint ptr %backup.i.i.i.i394 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %bf.clear17.sink.i.i.i.i397, ptr %backup.i.i.i.i394, align 2
  br label %bond_set_slave_active_flags.exit.i.i

bond_set_slave_active_flags.exit.i.i:             ; preds = %if.end.i.i.i.i398, %if.then.i.i.bond_set_slave_active_flags.exit.i.i_crit_edge
  %239 = ptrtoint ptr %backup.i.i.i.i394 to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load.i.i.i399 = load i8, ptr %backup.i.i.i.i394, align 2
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i399, -65
  store i8 %bf.clear.i.i.i, ptr %backup.i.i.i.i394, align 2
  br label %__enable_port.exit.i

__enable_port.exit.i:                             ; preds = %bond_set_slave_active_flags.exit.i.i, %bond_slave_is_up.exit.i.i.__enable_port.exit.i_crit_edge, %land.lhs.true.i.i.__enable_port.exit.i_crit_edge, %do.end10.i.__enable_port.exit.i_crit_edge
  %240 = ptrtoint ptr %update_slave_arr to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %update_slave_arr, align 1
  br label %ad_enable_collecting_distributing.exit

ad_enable_collecting_distributing.exit:           ; preds = %__enable_port.exit.i, %sw.bb191.ad_enable_collecting_distributing.exit_crit_edge
  %ntt204 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %241 = ptrtoint ptr %ntt204 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %ntt204, align 2
  br label %if.end207

if.end207:                                        ; preds = %ad_enable_collecting_distributing.exit, %ad_disable_collecting_distributing.exit386, %sw.bb164, %ad_disable_collecting_distributing.exit, %do.end149.if.end207_crit_edge, %if.end133.if.end207_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_tx_machine(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_tx_timer_counter = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %sm_tx_timer_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sm_tx_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %land.lhs.true

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %dec = add i16 %1, -1
  %2 = ptrtoint ptr %sm_tx_timer_counter to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dec, ptr %sm_tx_timer_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool2.not = icmp eq i16 %dec, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %ntt = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %3 = ptrtoint ptr %ntt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ntt, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.then.if.end23_crit_edge, label %land.lhs.true5

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true5:                                   ; preds = %if.then
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %5 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sm_vars, align 4
  %7 = and i16 %6, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp eq i16 %7, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.end23_crit_edge, label %if.then8

land.lhs.true5.if.end23_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then8:                                         ; preds = %land.lhs.true5
  %actor_system_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %actor_system_priority.i, align 2
  %actor_system_priority2.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 4
  %10 = ptrtoint ptr %actor_system_priority2.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %actor_system_priority2.i, align 1
  %actor_system.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 5
  %actor_system3.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %actor_system.i, ptr %actor_system3.i, i32 6)
  %actor_oper_port_key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %12 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %actor_oper_port_key.i, align 2
  %actor_key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 6
  %14 = ptrtoint ptr %actor_key.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %actor_key.i, align 1
  %actor_port_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %actor_port_priority.i, align 2
  %actor_port_priority4.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 7
  %17 = ptrtoint ptr %actor_port_priority4.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %actor_port_priority4.i, align 1
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port, align 4
  %actor_port.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 8
  %20 = ptrtoint ptr %actor_port.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %actor_port.i, align 1
  %actor_oper_port_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %21 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %actor_oper_port_state.i, align 1
  %actor_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 9
  %23 = ptrtoint ptr %actor_state.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %actor_state.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__update_lacpdu_from_port.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_tx_machine, %if.then.i)) #9
          to label %__update_lacpdu_from_port.exit [label %if.then.i], !srcloc !192

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %24 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave.i, align 4
  %bond.i = getelementptr inbounds %struct.slave, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bond.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 8
  %32 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %actor_oper_port_state.i, align 1
  %conv.i = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__update_lacpdu_from_port.__UNIQUE_ID_ddebug356, ptr noundef %29, ptr noundef nonnull @.str.24, ptr noundef %31, i32 noundef %conv.i) #9
  br label %__update_lacpdu_from_port.exit

__update_lacpdu_from_port.exit:                   ; preds = %if.then.i, %if.then8
  %partner_oper.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %system_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %system_priority.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %system_priority.i, align 2
  %partner_system_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 13
  %36 = ptrtoint ptr %partner_system_priority.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %partner_system_priority.i, align 1
  %partner_system.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 14
  %37 = call ptr @memcpy(ptr %partner_system.i, ptr %partner_oper.i, i32 6)
  %key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %key.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %key.i, align 2
  %partner_key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 15
  %40 = ptrtoint ptr %partner_key.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %partner_key.i, align 1
  %port_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 4
  %41 = ptrtoint ptr %port_priority.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %port_priority.i, align 2
  %partner_port_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 16
  %43 = ptrtoint ptr %partner_port_priority.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %partner_port_priority.i, align 1
  %port_number.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 3
  %44 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port_number.i, align 2
  %partner_port.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 17
  %46 = ptrtoint ptr %partner_port.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %partner_port.i, align 1
  %port_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %47 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %port_state.i, align 2
  %conv13.i = trunc i16 %48 to i8
  %partner_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 32, i32 18
  %49 = ptrtoint ptr %partner_state.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv13.i, ptr %partner_state.i, align 1
  %call = tail call fastcc i32 @ad_lacpdu_send(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %do.body11, label %__update_lacpdu_from_port.exit.if.end23_crit_edge

__update_lacpdu_from_port.exit.if.end23_crit_edge: ; preds = %__update_lacpdu_from_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body11:                                        ; preds = %__update_lacpdu_from_port.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_tx_machine.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_tx_machine, %if.then16)) #9
          to label %do.end20 [label %if.then16], !srcloc !192

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %50 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bond, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 8
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %port, align 4
  %conv19 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_tx_machine.__UNIQUE_ID_ddebug359, ptr noundef %55, ptr noundef nonnull @.str.62, ptr noundef %57, i32 noundef %conv19) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %60 = ptrtoint ptr %ntt to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ntt, align 2
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %__update_lacpdu_from_port.exit.if.end23_crit_edge, %land.lhs.true5.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %61 = load i16, ptr @ad_ticks_per_sec, align 2
  %62 = udiv i16 %61, 3
  %63 = ptrtoint ptr %sm_tx_timer_counter to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %sm_tx_timer_counter, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_slave_arr_work_rearm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_adapter_speed_duplex_changed(ptr nocapture noundef readonly %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %0 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ad_info, align 8
  %port1 = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1
  %slave2 = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave2, align 4
  %tobool.not = icmp eq ptr %3, null
  %bond = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef %9) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  tail call fastcc void @ad_update_actor_keys(ptr noundef %port1, i1 noundef zeroext false)
  %10 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bond, align 4
  %mode_lock6 = getelementptr inbounds %struct.bonding, ptr %11, i32 0, i32 9
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock6) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_adapter_speed_duplex_changed.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_adapter_speed_duplex_changed, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !192

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bond, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave, align 8
  %18 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port1, align 4
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_adapter_speed_duplex_changed.__UNIQUE_ID_ddebug380, ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef %17, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_handle_link_change(ptr nocapture noundef readonly %slave, i8 noundef zeroext %link) local_unnamed_addr #0 align 64 {
entry:
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #9
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %0 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ad_info, align 8
  %port1 = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1
  %slave2 = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave2, align 4
  %tobool.not = icmp eq ptr %3, null
  %bond = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %9) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %link)
  %cmp = icmp eq i8 %link, 0
  %is_enabled = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 12
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_enabled, align 2
  tail call fastcc void @ad_update_actor_keys(ptr noundef %port1, i1 noundef zeroext false)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_enabled, align 2
  %actor_oper_port_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %actor_oper_port_key.i, align 2
  %actor_admin_port_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %actor_admin_port_key.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %actor_admin_port_key.i, align 4
  %16 = and i16 %15, -64
  store i16 %16, ptr %actor_admin_port_key.i, align 4
  store i16 %16, ptr %actor_oper_port_key.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %16)
  %cmp.not74.i = icmp eq i16 %13, %16
  br i1 %cmp.not74.i, label %if.else.if.end8_crit_edge, label %if.end28.thread94.i

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end28.thread94.i:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sm_vars2498.i = getelementptr inbounds %struct.ad_slave_info, ptr %1, i32 0, i32 1, i32 13
  %17 = ptrtoint ptr %sm_vars2498.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sm_vars2498.i, align 4
  %19 = and i16 %18, -3
  store i16 %19, ptr %sm_vars2498.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end28.thread94.i, %if.else.if.end8_crit_edge, %if.then6
  %call = tail call fastcc ptr @__get_first_agg(ptr noundef %port1)
  call fastcc void @ad_agg_selection_logic(ptr noundef %call, ptr noundef nonnull %dummy)
  %20 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bond, align 4
  %mode_lock10 = getelementptr inbounds %struct.bonding, ptr %21, i32 0, i32 9
  tail call void @_raw_spin_unlock_bh(ptr noundef %mode_lock10) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_handle_link_change.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_handle_link_change, %if.then16)) #9
          to label %do.end28 [label %if.then16], !srcloc !192

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bond, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave, align 8
  %28 = ptrtoint ptr %port1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %port1, align 4
  %conv22 = zext i16 %29 to i32
  %cond = select i1 %cmp, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_handle_link_change.__UNIQUE_ID_ddebug381, ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef %27, i32 noundef %conv22, ptr noundef nonnull %cond) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then16, %if.end8
  %30 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bond, align 4
  %call30 = tail call i32 @bond_update_slave_arr(ptr noundef %31, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bond_update_slave_arr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bond_3ad_get_active_agg_info(ptr nocapture noundef readonly %bond, ptr nocapture noundef writeonly %ad_info) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lower, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %1, ptr noundef nonnull %iter) #9
  %tobool.not37 = icmp eq ptr %call, null
  br i1 %tobool.not37, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %slave.038 = phi ptr [ %call10, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ad_info2 = getelementptr inbounds %struct.slave, ptr %slave.038, i32 0, i32 15
  %3 = ptrtoint ptr %ad_info2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ad_info2, align 8
  %aggregator4 = getelementptr inbounds %struct.ad_slave_info, ptr %4, i32 0, i32 1, i32 29
  %5 = ptrtoint ptr %aggregator4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aggregator4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %is_active = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %is_active to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool7.not = icmp eq i16 %8, 0
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.end13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bond, align 8
  %call10 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %10, ptr noundef nonnull %iter) #9
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true
  %aggregator_identifier = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %aggregator_identifier to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %aggregator_identifier, align 2
  %13 = ptrtoint ptr %ad_info to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %ad_info, align 2
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 10
  %14 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %port.05.i = load ptr, ptr %lag_ports.i, align 4
  %tobool.not6.i = icmp eq ptr %port.05.i, null
  br i1 %tobool.not6.i, label %if.end13.__agg_active_ports.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.__agg_active_ports.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %port.08.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.05.i, %if.end13.for.body.i_crit_edge ]
  %active.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %is_enabled.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 12
  %15 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_enabled.i, align 2, !range !194
  %17 = zext i8 %16 to i32
  %spec.select.i = add i32 %active.07.i, %17
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 30
  %18 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool.not.i = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i, label %__agg_active_ports.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__agg_active_ports.exit.loopexit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %spec.select.i to i16
  br label %__agg_active_ports.exit

__agg_active_ports.exit:                          ; preds = %__agg_active_ports.exit.loopexit, %if.end13.__agg_active_ports.exit_crit_edge
  %active.0.lcssa.i = phi i16 [ 0, %if.end13.__agg_active_ports.exit_crit_edge ], [ %phi.cast, %__agg_active_ports.exit.loopexit ]
  %ports = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 1
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %active.0.lcssa.i, ptr %ports, align 2
  %actor_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %actor_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %actor_oper_aggregator_key, align 4
  %actor_key = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 2
  %22 = ptrtoint ptr %actor_key to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %actor_key, align 2
  %partner_oper_aggregator_key = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 7
  %23 = ptrtoint ptr %partner_oper_aggregator_key to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %partner_oper_aggregator_key, align 2
  %partner_key = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 3
  %25 = ptrtoint ptr %partner_key to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %partner_key, align 2
  %partner_system = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 4
  %partner_system16 = getelementptr inbounds %struct.aggregator, ptr %6, i32 0, i32 5
  %26 = ptrtoint ptr %partner_system16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %partner_system16, align 4
  %28 = ptrtoint ptr %partner_system to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %partner_system, align 4
  %add.ptr.i = getelementptr %struct.aggregator, ptr %6, i32 0, i32 5, i32 0, i32 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ad_info, ptr %ad_info, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %__agg_active_ports.exit, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__agg_active_ports.exit ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_3ad_get_active_agg_info(ptr nocapture noundef readonly %bond, ptr nocapture noundef writeonly %ad_info) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #9
  %4 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bond, align 8
  %lower.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lower.i, ptr %iter.i, align 4
  %call.i1 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %5, ptr noundef nonnull %iter.i) #9
  %tobool.not37.i = icmp eq ptr %call.i1, null
  br i1 %tobool.not37.i, label %rcu_read_lock.exit.__bond_3ad_get_active_agg_info.exit_crit_edge, label %rcu_read_lock.exit.for.body.i_crit_edge

rcu_read_lock.exit.for.body.i_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body.i

rcu_read_lock.exit.__bond_3ad_get_active_agg_info.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bond_3ad_get_active_agg_info.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.for.body.i_crit_edge
  %slave.038.i = phi ptr [ %call10.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i1, %rcu_read_lock.exit.for.body.i_crit_edge ]
  %ad_info2.i = getelementptr inbounds %struct.slave, ptr %slave.038.i, i32 0, i32 15
  %7 = ptrtoint ptr %ad_info2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad_info2.i, align 8
  %aggregator4.i = getelementptr inbounds %struct.ad_slave_info, ptr %8, i32 0, i32 1, i32 29
  %9 = ptrtoint ptr %aggregator4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aggregator4.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i2

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i2:                                 ; preds = %for.body.i
  %is_active.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not.i = icmp eq i16 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i2.for.inc.i_crit_edge, label %if.end13.i

land.lhs.true.i2.for.inc.i_crit_edge:             ; preds = %land.lhs.true.i2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i2.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bond, align 8
  %call10.i = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %14, ptr noundef nonnull %iter.i) #9
  %tobool.not.i3 = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i3, label %for.inc.i.__bond_3ad_get_active_agg_info.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.__bond_3ad_get_active_agg_info.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bond_3ad_get_active_agg_info.exit

if.end13.i:                                       ; preds = %land.lhs.true.i2
  %aggregator_identifier.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %aggregator_identifier.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %aggregator_identifier.i, align 2
  %17 = ptrtoint ptr %ad_info to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ad_info, align 2
  %lag_ports.i.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 10
  %18 = ptrtoint ptr %lag_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %port.05.i.i = load ptr, ptr %lag_ports.i.i, align 4
  %tobool.not6.i.i = icmp eq ptr %port.05.i.i, null
  br i1 %tobool.not6.i.i, label %if.end13.i.__agg_active_ports.exit.i_crit_edge, label %if.end13.i.for.body.i.i_crit_edge

if.end13.i.for.body.i.i_crit_edge:                ; preds = %if.end13.i
  br label %for.body.i.i

if.end13.i.__agg_active_ports.exit.i_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__agg_active_ports.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end13.i.for.body.i.i_crit_edge
  %port.08.i.i = phi ptr [ %port.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %port.05.i.i, %if.end13.i.for.body.i.i_crit_edge ]
  %active.07.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end13.i.for.body.i.i_crit_edge ]
  %is_enabled.i.i = getelementptr inbounds %struct.port, ptr %port.08.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %is_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_enabled.i.i, align 2, !range !194
  %21 = zext i8 %20 to i32
  %spec.select.i.i = add i32 %active.07.i.i, %21
  %next_port_in_aggregator.i.i = getelementptr inbounds %struct.port, ptr %port.08.i.i, i32 0, i32 30
  %22 = ptrtoint ptr %next_port_in_aggregator.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %port.0.i.i = load ptr, ptr %next_port_in_aggregator.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %port.0.i.i, null
  br i1 %tobool.not.i.i, label %__agg_active_ports.exit.loopexit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

__agg_active_ports.exit.loopexit.i:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i = trunc i32 %spec.select.i.i to i16
  br label %__agg_active_ports.exit.i

__agg_active_ports.exit.i:                        ; preds = %__agg_active_ports.exit.loopexit.i, %if.end13.i.__agg_active_ports.exit.i_crit_edge
  %active.0.lcssa.i.i = phi i16 [ 0, %if.end13.i.__agg_active_ports.exit.i_crit_edge ], [ %phi.cast.i, %__agg_active_ports.exit.loopexit.i ]
  %ports.i = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 1
  %23 = ptrtoint ptr %ports.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %active.0.lcssa.i.i, ptr %ports.i, align 2
  %actor_oper_aggregator_key.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 4
  %24 = ptrtoint ptr %actor_oper_aggregator_key.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %actor_oper_aggregator_key.i, align 4
  %actor_key.i = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 2
  %26 = ptrtoint ptr %actor_key.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %actor_key.i, align 2
  %partner_oper_aggregator_key.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 7
  %27 = ptrtoint ptr %partner_oper_aggregator_key.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %partner_oper_aggregator_key.i, align 2
  %partner_key.i = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 3
  %29 = ptrtoint ptr %partner_key.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %partner_key.i, align 2
  %partner_system.i = getelementptr inbounds %struct.ad_info, ptr %ad_info, i32 0, i32 4
  %partner_system16.i = getelementptr inbounds %struct.aggregator, ptr %10, i32 0, i32 5
  %30 = ptrtoint ptr %partner_system16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %partner_system16.i, align 4
  %32 = ptrtoint ptr %partner_system.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %partner_system.i, align 4
  %add.ptr.i.i = getelementptr %struct.aggregator, ptr %10, i32 0, i32 5, i32 0, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ad_info, ptr %ad_info, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i.i, align 2
  br label %__bond_3ad_get_active_agg_info.exit

__bond_3ad_get_active_agg_info.exit:              ; preds = %__agg_active_ports.exit.i, %for.inc.i.__bond_3ad_get_active_agg_info.exit_crit_edge, %rcu_read_lock.exit.__bond_3ad_get_active_agg_info.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %__agg_active_ports.exit.i ], [ -1, %rcu_read_lock.exit.__bond_3ad_get_active_agg_info.exit_crit_edge ], [ -1, %for.inc.i.__bond_3ad_get_active_agg_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #9
  %call.i4 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i4, label %__bond_3ad_get_active_agg_info.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

__bond_3ad_get_active_agg_info.exit.rcu_read_unlock.exit_crit_edge: ; preds = %__bond_3ad_get_active_agg_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %__bond_3ad_get_active_agg_info.exit
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %__bond_3ad_get_active_agg_info.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !196
  %36 = call i32 @llvm.read_register.i32(metadata !182) #9
  %and.i.i.i.i.i11 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_3ad_lacpdu_recv(ptr noundef %skb, ptr noundef %bond, ptr nocapture noundef readonly %slave) local_unnamed_addr #0 align 64 {
entry:
  %_lacpdu = alloca %struct.lacpdu, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %_lacpdu) #9
  %0 = call ptr @memset(ptr %_lacpdu, i32 255, i32 110)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30711, i16 %2)
  %cmp.not = icmp eq i16 %2, -30711
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %8, 25215488
  %add.ptr.i.i18 = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i18, align 2
  %xor37.i.i = xor i16 %10, 2
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %sub.i.i)
  %cmp.i.i19 = icmp sgt i32 %sub.i.i, 109
  br i1 %cmp.i.i19, label %skb_header_pointer.exit, label %if.end.i.i, !prof !197

if.end.i.i:                                       ; preds = %if.end4
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i20 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_lacpdu, i32 noundef 110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp3.i.i = icmp slt i32 %call.i.i20, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i.if.end10_crit_edge

lor.lhs.false.i.i.if.end10_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false.i.i.if.then6_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

skb_header_pointer.exit:                          ; preds = %if.end4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then6_crit_edge, label %skb_header_pointer.exit.if.end10_crit_edge

skb_header_pointer.exit.if.end10_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

skb_header_pointer.exit.if.then6_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %skb_header_pointer.exit.if.then6_crit_edge, %lor.lhs.false.i.i.if.then6_crit_edge, %if.end.i.i.if.then6_crit_edge
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %17 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ad_info, align 8
  %lacpdu_illegal_rx = getelementptr inbounds %struct.ad_slave_info, ptr %18, i32 0, i32 2, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_illegal_rx, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_illegal_rx) #9
  %lacpdu_illegal_rx9 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 17, i32 1, i32 3
  %call.i.i17 = call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_illegal_rx9, i32 noundef 8) #9
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_illegal_rx9) #9
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit.if.end10_crit_edge, %lor.lhs.false.i.i.if.end10_crit_edge
  %retval.0.i.i26 = phi ptr [ %16, %skb_header_pointer.exit.if.end10_crit_edge ], [ %_lacpdu, %lor.lhs.false.i.i.if.end10_crit_edge ]
  %call11 = call fastcc i32 @bond_3ad_rx_indication(ptr noundef nonnull %retval.0.i.i26, ptr noundef %slave)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ 1, %if.then6 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %_lacpdu) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bond_3ad_rx_indication(ptr noundef %lacpdu, ptr nocapture noundef readonly %slave) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bond1 = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond1, align 4
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 15
  %2 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ad_info, align 8
  %port2 = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1
  %slave3 = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %slave3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 8
  %8 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bond1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %7, ptr noundef %11) #12
  br label %cleanup

if.end14:                                         ; preds = %entry
  %12 = ptrtoint ptr %lacpdu to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lacpdu, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %13, label %sw.default123 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_rx_indication, %if.then22)) #9
          to label %do.end33 [label %if.then22], !srcloc !192

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 8
  %21 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %port2, align 4
  %conv28 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_rx_indication.__UNIQUE_ID_ddebug376, ptr noundef %18, ptr noundef nonnull @.str.70, ptr noundef %20, i32 noundef %conv28) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then22, %sw.bb
  %23 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bond1, align 4
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %24, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %mode_lock) #9
  tail call fastcc void @ad_rx_machine(ptr noundef %lacpdu, ptr noundef %port2)
  %25 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bond1, align 4
  %mode_lock36 = getelementptr inbounds %struct.bonding, ptr %26, i32 0, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %mode_lock36) #9
  br label %cleanup

sw.bb37:                                          ; preds = %if.end14
  %tlv_type = getelementptr inbounds %struct.bond_marker, ptr %lacpdu, i32 0, i32 2
  %27 = ptrtoint ptr %tlv_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tlv_type, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %28, label %do.body94 [
    i8 1, label %do.body41
    i8 2, label %do.body68
  ]

do.body41:                                        ; preds = %sw.bb37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_rx_indication, %if.then53)) #9
          to label %do.end65 [label %if.then53], !srcloc !192

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bond1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slave, align 8
  %36 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %port2, align 4
  %conv60 = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_rx_indication.__UNIQUE_ID_ddebug377, ptr noundef %33, ptr noundef nonnull @.str.71, ptr noundef %35, i32 noundef %conv60) #9
  br label %do.end65

do.end65:                                         ; preds = %if.then53, %do.body41
  tail call fastcc void @ad_marker_info_received(ptr noundef %lacpdu, ptr noundef %port2)
  br label %cleanup

do.body68:                                        ; preds = %sw.bb37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_rx_indication, %if.then80)) #9
          to label %do.end92 [label %if.then80], !srcloc !192

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bond1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave, align 8
  %44 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port2, align 4
  %conv87 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_rx_indication.__UNIQUE_ID_ddebug378, ptr noundef %41, ptr noundef nonnull @.str.72, ptr noundef %43, i32 noundef %conv87) #9
  br label %do.end92

do.end92:                                         ; preds = %if.then80, %do.body68
  %46 = ptrtoint ptr %slave3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %slave3, align 4
  %ad_info.i = getelementptr inbounds %struct.slave, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ad_info.i, align 8
  %marker_resp_rx.i = getelementptr inbounds %struct.ad_slave_info, ptr %49, i32 0, i32 2, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_resp_rx.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_resp_rx.i) #9
  %50 = ptrtoint ptr %slave3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %slave3, align 4
  %bond.i = getelementptr inbounds %struct.slave, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bond.i, align 4
  %marker_resp_rx4.i = getelementptr inbounds %struct.bonding, ptr %53, i32 0, i32 17, i32 1, i32 6
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_resp_rx4.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_resp_rx4.i) #9
  br label %cleanup

do.body94:                                        ; preds = %sw.bb37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bond_3ad_rx_indication, %if.then106)) #9
          to label %do.end118 [label %if.then106], !srcloc !192

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %bond1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bond1, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slave, align 8
  %60 = ptrtoint ptr %port2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %port2, align 4
  %conv113 = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bond_3ad_rx_indication.__UNIQUE_ID_ddebug379, ptr noundef %57, ptr noundef nonnull @.str.73, ptr noundef %59, i32 noundef %conv113) #9
  br label %do.end118

do.end118:                                        ; preds = %if.then106, %do.body94
  %62 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ad_info, align 8
  %marker_unknown_rx = getelementptr inbounds %struct.ad_slave_info, ptr %63, i32 0, i32 2, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_unknown_rx, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_unknown_rx) #9
  %marker_unknown_rx122 = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 17, i32 1, i32 8
  %call.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_unknown_rx122, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_unknown_rx122) #9
  br label %cleanup

sw.default123:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %lacpdu_unknown_rx = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 2, i32 2
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_unknown_rx, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_unknown_rx) #9
  %lacpdu_unknown_rx128 = getelementptr inbounds %struct.bonding, ptr %1, i32 0, i32 17, i32 1, i32 2
  %call.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lacpdu_unknown_rx128, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %lacpdu_unknown_rx128) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default123, %do.end118, %do.end92, %do.end65, %do.end33, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %sw.default123 ], [ 0, %do.end118 ], [ 0, %do.end92 ], [ 0, %do.end65 ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_3ad_update_lacp_rate(ptr noundef %bond) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #9
  %lacp_fast1 = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 19, i32 14
  %0 = ptrtoint ptr %lacp_fast1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lacp_fast1, align 4
  %mode_lock = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %mode_lock) #9
  %2 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bond, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lower, align 8
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next_private(ptr noundef %3, ptr noundef nonnull %iter) #9
  %tobool.not19 = icmp eq ptr %call, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %masksel = select i1 %tobool4.not, i8 0, i8 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %slave.020 = phi ptr [ %call, %for.body.lr.ph ], [ %call10, %for.body.for.body_crit_edge ]
  %ad_info = getelementptr inbounds %struct.slave, ptr %slave.020, i32 0, i32 15
  %7 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad_info, align 8
  %actor_oper_port_state6 = getelementptr inbounds %struct.ad_slave_info, ptr %8, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %actor_oper_port_state6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %actor_oper_port_state6, align 1
  %11 = and i8 %10, -3
  %.sink = or i8 %11, %masksel
  store i8 %.sink, ptr %actor_oper_port_state6, align 1
  %12 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bond, align 8
  %call10 = call ptr @netdev_lower_get_next_private(ptr noundef %13, ptr noundef nonnull %iter) #9
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mode_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bond_3ad_stats_size() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 108
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bond_3ad_stats_fill(ptr noundef %skb, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i97 = alloca i64, align 8
  %tmp.i95 = alloca i64, align 8
  %tmp.i93 = alloca i64, align 8
  %tmp.i91 = alloca i64, align 8
  %tmp.i89 = alloca i64, align 8
  %tmp.i87 = alloca i64, align 8
  %tmp.i85 = alloca i64, align 8
  %tmp.i83 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %stats) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #9
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %tmp.i, align 8
  %call.i82 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not = icmp eq i32 %call.i82, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lacpdu_tx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 1
  %call.i.i66 = call zeroext i1 @__kasan_check_read(ptr noundef %lacpdu_tx, i32 noundef 8) #9
  %call.i67 = call i64 @generic_atomic64_read(ptr noundef %lacpdu_tx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i83) #9
  %1 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i67, ptr %tmp.i83, align 8
  %call.i84 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i83, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool4.not = icmp eq i32 %call.i84, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lacpdu_unknown_rx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 2
  %call.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %lacpdu_unknown_rx, i32 noundef 8) #9
  %call.i69 = call i64 @generic_atomic64_read(ptr noundef %lacpdu_unknown_rx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i85) #9
  %2 = ptrtoint ptr %tmp.i85 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i69, ptr %tmp.i85, align 8
  %call.i86 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i85, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool9.not = icmp eq i32 %call.i86, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %lacpdu_illegal_rx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 3
  %call.i.i70 = call zeroext i1 @__kasan_check_read(ptr noundef %lacpdu_illegal_rx, i32 noundef 8) #9
  %call.i71 = call i64 @generic_atomic64_read(ptr noundef %lacpdu_illegal_rx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i87) #9
  %3 = ptrtoint ptr %tmp.i87 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i71, ptr %tmp.i87, align 8
  %call.i88 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i87, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool14.not = icmp eq i32 %call.i88, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %marker_rx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 4
  %call.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef %marker_rx, i32 noundef 8) #9
  %call.i73 = call i64 @generic_atomic64_read(ptr noundef %marker_rx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i89) #9
  %4 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i73, ptr %tmp.i89, align 8
  %call.i90 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i89, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool19.not = icmp eq i32 %call.i90, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %marker_tx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 5
  %call.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef %marker_tx, i32 noundef 8) #9
  %call.i75 = call i64 @generic_atomic64_read(ptr noundef %marker_tx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i91) #9
  %5 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i75, ptr %tmp.i91, align 8
  %call.i92 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i91, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool24.not = icmp eq i32 %call.i92, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %marker_resp_rx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 6
  %call.i.i76 = call zeroext i1 @__kasan_check_read(ptr noundef %marker_resp_rx, i32 noundef 8) #9
  %call.i77 = call i64 @generic_atomic64_read(ptr noundef %marker_resp_rx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i93) #9
  %6 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i77, ptr %tmp.i93, align 8
  %call.i94 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i93, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool29.not = icmp eq i32 %call.i94, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %marker_resp_tx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 7
  %call.i.i78 = call zeroext i1 @__kasan_check_read(ptr noundef %marker_resp_tx, i32 noundef 8) #9
  %call.i79 = call i64 @generic_atomic64_read(ptr noundef %marker_resp_tx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i95) #9
  %7 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i79, ptr %tmp.i95, align 8
  %call.i96 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i95, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool34.not = icmp eq i32 %call.i96, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %marker_unknown_rx = getelementptr inbounds %struct.bond_3ad_stats, ptr %stats, i32 0, i32 8
  %call.i.i80 = call zeroext i1 @__kasan_check_read(ptr noundef %marker_unknown_rx, i32 noundef 8) #9
  %call.i81 = call i64 @generic_atomic64_read(ptr noundef %marker_unknown_rx) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i97) #9
  %8 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i81, ptr %tmp.i97, align 8
  %call.i98 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i97, i32 noundef 9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool39.not = icmp eq i32 %call.i98, 0
  %. = select i1 %tobool39.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end6.cleanup_crit_edge ], [ -90, %if.end11.cleanup_crit_edge ], [ -90, %if.end16.cleanup_crit_edge ], [ -90, %if.end21.cleanup_crit_edge ], [ -90, %if.end26.cleanup_crit_edge ], [ -90, %if.end31.cleanup_crit_edge ], [ %., %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bond_lower_state_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @__enable_port(ptr nocapture noundef readonly %port) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %slave1 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave1, align 4
  %link = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.if.end_crit_edge, label %bond_slave_is_up.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

bond_slave_is_up.exit:                            ; preds = %land.lhs.true
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then, label %bond_slave_is_up.exit.if.end_crit_edge

bond_slave_is_up.exit.if.end_crit_edge:           ; preds = %bond_slave_is_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %bond_slave_is_up.exit
  %backup.i.i = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %backup.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %backup.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %cmp.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %cmp.i.i, label %if.then.bond_set_slave_active_flags.exit_crit_edge, label %if.end.i.i

if.then.bond_set_slave_active_flags.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bond_set_slave_active_flags.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = and i8 %bf.load.i.i, 127
  %bf.clear17.sink.i.i = xor i8 %12, 32
  %13 = ptrtoint ptr %backup.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear17.sink.i.i, ptr %backup.i.i, align 2
  br label %bond_set_slave_active_flags.exit

bond_set_slave_active_flags.exit:                 ; preds = %if.end.i.i, %if.then.bond_set_slave_active_flags.exit_crit_edge
  %14 = ptrtoint ptr %backup.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %backup.i.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %backup.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %bond_set_slave_active_flags.exit, %bond_slave_is_up.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_agg_bandwidth(ptr nocapture noundef readonly %aggregator) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lag_ports.i = getelementptr inbounds %struct.aggregator, ptr %aggregator, i32 0, i32 10
  %0 = ptrtoint ptr %lag_ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %port.05.i = load ptr, ptr %lag_ports.i, align 4
  %tobool.not6.i = icmp eq ptr %port.05.i, null
  br i1 %tobool.not6.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %port.08.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.05.i, %entry.for.body.i_crit_edge ]
  %active.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %is_enabled.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 12
  %1 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_enabled.i, align 2, !range !194
  %3 = zext i8 %2 to i32
  %spec.select.i = add i32 %active.07.i, %3
  %next_port_in_aggregator.i = getelementptr inbounds %struct.port, ptr %port.08.i, i32 0, i32 30
  %4 = ptrtoint ptr %next_port_in_aggregator.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %port.0.i = load ptr, ptr %next_port_in_aggregator.i, align 4
  %tobool.not.i = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i, label %__agg_active_ports.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__agg_active_ports.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %__agg_active_ports.exit.if.end_crit_edge, label %if.then

__agg_active_ports.exit.if.end_crit_edge:         ; preds = %__agg_active_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__agg_active_ports.exit
  %call1 = tail call fastcc zeroext i16 @__get_link_speed(ptr noundef nonnull %port.05.i)
  %5 = zext i16 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %call1, label %sw.default [
    i16 1, label %if.then.if.end_crit_edge
    i16 2, label %sw.bb2
    i16 3, label %sw.bb3
    i16 4, label %sw.bb5
    i16 5, label %sw.bb7
    i16 6, label %sw.bb9
    i16 7, label %sw.bb11
    i16 8, label %sw.bb13
    i16 9, label %sw.bb15
    i16 10, label %sw.bb17
    i16 11, label %sw.bb19
    i16 12, label %sw.bb21
    i16 13, label %sw.bb23
    i16 14, label %sw.bb25
    i16 15, label %sw.bb27
    i16 16, label %sw.bb29
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %spec.select.i, 10
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul4 = mul i32 %spec.select.i, 100
  br label %if.end

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul6 = mul i32 %spec.select.i, 1000
  br label %if.end

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul8 = mul i32 %spec.select.i, 2500
  br label %if.end

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul10 = mul i32 %spec.select.i, 5000
  br label %if.end

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul12 = mul i32 %spec.select.i, 10000
  br label %if.end

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul14 = mul i32 %spec.select.i, 14000
  br label %if.end

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul16 = mul i32 %spec.select.i, 20000
  br label %if.end

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul18 = mul i32 %spec.select.i, 25000
  br label %if.end

sw.bb19:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul20 = mul i32 %spec.select.i, 40000
  br label %if.end

sw.bb21:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul22 = mul i32 %spec.select.i, 50000
  br label %if.end

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul24 = mul i32 %spec.select.i, 56000
  br label %if.end

sw.bb25:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul26 = mul i32 %spec.select.i, 100000
  br label %if.end

sw.bb27:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul28 = mul i32 %spec.select.i, 200000
  br label %if.end

sw.bb29:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul30 = mul i32 %spec.select.i, 400000
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %if.then.if.end_crit_edge, %__agg_active_ports.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %bandwidth.0 = phi i32 [ 0, %sw.default ], [ %mul30, %sw.bb29 ], [ %mul28, %sw.bb27 ], [ %mul26, %sw.bb25 ], [ %mul24, %sw.bb23 ], [ %mul22, %sw.bb21 ], [ %mul20, %sw.bb19 ], [ %mul18, %sw.bb17 ], [ %mul16, %sw.bb15 ], [ %mul14, %sw.bb13 ], [ %mul12, %sw.bb11 ], [ %mul10, %sw.bb9 ], [ %mul8, %sw.bb7 ], [ %mul6, %sw.bb5 ], [ %mul4, %sw.bb3 ], [ %mul, %sw.bb2 ], [ 0, %__agg_active_ports.exit.if.end_crit_edge ], [ %spec.select.i, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %bandwidth.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @__get_link_speed(ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave1 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave1, align 4
  %link = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.else, label %entry.do.body43_crit_edge

entry.do.body43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.else:                                          ; preds = %entry
  %speed3 = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %speed3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %land.end [
    i32 10, label %if.else.do.body43_crit_edge
    i32 100, label %sw.bb4
    i32 1000, label %sw.bb5
    i32 2500, label %sw.bb6
    i32 5000, label %sw.bb7
    i32 10000, label %sw.bb8
    i32 14000, label %sw.bb9
    i32 20000, label %sw.bb10
    i32 25000, label %sw.bb11
    i32 40000, label %sw.bb12
    i32 50000, label %sw.bb13
    i32 56000, label %sw.bb14
    i32 100000, label %sw.bb15
    i32 200000, label %sw.bb16
    i32 400000, label %sw.bb17
    i32 -1, label %if.else.if.end40_crit_edge
  ]

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.else.do.body43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb4:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb10:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb12:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

sw.bb17:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

land.end:                                         ; preds = %if.else
  %.b78 = load i1, ptr @__get_link_speed.__already_done, align 1
  br i1 %.b78, label %land.end.if.end40_crit_edge, label %if.then27, !prof !197

land.end.if.end40_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__get_link_speed.__already_done, align 1
  %bond = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bond, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port, align 4
  %conv32 = zext i16 %14 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %10, ptr noundef %12, i32 noundef %5, i32 noundef %conv32) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then27, %land.end.if.end40_crit_edge, %if.else.if.end40_crit_edge
  br label %do.body43

do.body43:                                        ; preds = %if.end40, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %if.else.do.body43_crit_edge, %entry.do.body43_crit_edge
  %speed.0 = phi i16 [ 0, %if.end40 ], [ 16, %sw.bb17 ], [ 15, %sw.bb16 ], [ 14, %sw.bb15 ], [ 13, %sw.bb14 ], [ 12, %sw.bb13 ], [ 11, %sw.bb12 ], [ 10, %sw.bb11 ], [ 9, %sw.bb10 ], [ 8, %sw.bb9 ], [ 7, %sw.bb8 ], [ 6, %sw.bb7 ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 3, %sw.bb4 ], [ 0, %entry.do.body43_crit_edge ], [ 2, %if.else.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_link_speed.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_link_speed, %if.then53)) #9
          to label %do.end66 [label %if.then53], !srcloc !192

if.then53:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %bond54 = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %bond54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond54, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %port, align 4
  %conv60 = zext i16 %22 to i32
  %conv61 = zext i16 %speed.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__get_link_speed.__UNIQUE_ID_ddebug351, ptr noundef %18, ptr noundef nonnull @.str.38, ptr noundef %20, i32 noundef %conv60, i32 noundef %conv61) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then53, %do.body43
  ret i16 %speed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__record_pdu(ptr noundef readonly %lacpdu, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lacpdu, null
  %tobool1.not = icmp eq ptr %port, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end56_crit_edge, label %if.then

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then:                                          ; preds = %entry
  %partner_oper = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %partner_port.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 17
  %0 = ptrtoint ptr %partner_port.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %partner_port.i, align 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i = icmp eq i16 %1, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.lor.lhs.false.i_crit_edge

if.then.lor.lhs.false.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.then
  %partner_port_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 16
  %4 = ptrtoint ptr %partner_port_priority.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %partner_port_priority.i, align 1
  %actor_port_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %actor_port_priority.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp5.i = icmp eq i16 %5, %7
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %partner_system.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 14
  %actor_system.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %partner_system.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %partner_system.i, align 4
  %10 = ptrtoint ptr %actor_system.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actor_system.i, align 4
  %xor.i.i.i = xor i32 %11, %9
  %add.ptr.i.i.i = getelementptr %struct.lacpdu, ptr %lacpdu, i32 0, i32 14, i32 0, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.port, ptr %port, i32 0, i32 2, i32 0, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %15, %13
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true9.i, label %land.lhs.true7.i.lor.lhs.false.i_crit_edge

land.lhs.true7.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %partner_system_priority.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 13
  %16 = ptrtoint ptr %partner_system_priority.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %partner_system_priority.i, align 1
  %actor_system_priority.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %18 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %actor_system_priority.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp12.i = icmp eq i16 %17, %19
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true9.i.lor.lhs.false.i_crit_edge

land.lhs.true9.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true14.i:                                ; preds = %land.lhs.true9.i
  %partner_key.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 15
  %20 = ptrtoint ptr %partner_key.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %partner_key.i, align 1
  %actor_oper_port_key.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %22 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %actor_oper_port_key.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp17.i = icmp eq i16 %21, %23
  br i1 %cmp17.i, label %land.lhs.true19.i, label %land.lhs.true14.i.lor.lhs.false.i_crit_edge

land.lhs.true14.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true19.i:                                ; preds = %land.lhs.true14.i
  %partner_state.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 18
  %24 = ptrtoint ptr %partner_state.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %partner_state.i, align 1
  %actor_oper_port_state.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %actor_oper_port_state.i, align 1
  %28 = xor i8 %27, %25
  %29 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp23.i = icmp eq i8 %29, 0
  br i1 %cmp23.i, label %land.lhs.true19.i.if.then.i_crit_edge, label %land.lhs.true19.i.lor.lhs.false.i_crit_edge

land.lhs.true19.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true19.i.if.then.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true19.i.lor.lhs.false.i_crit_edge, %land.lhs.true14.i.lor.lhs.false.i_crit_edge, %land.lhs.true9.i.lor.lhs.false.i_crit_edge, %land.lhs.true7.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.then.lor.lhs.false.i_crit_edge
  %actor_state.i = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 9
  %30 = ptrtoint ptr %actor_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %actor_state.i, align 1
  %32 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp27.i = icmp eq i8 %32, 0
  br i1 %cmp27.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true19.i.if.then.i_crit_edge
  %sm_vars.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %33 = ptrtoint ptr %sm_vars.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sm_vars.i, align 4
  %35 = or i16 %34, 64
  store i16 %35, ptr %sm_vars.i, align 4
  br label %__choose_matched.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %sm_vars31.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %36 = ptrtoint ptr %sm_vars31.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sm_vars31.i, align 4
  %38 = and i16 %37, -65
  store i16 %38, ptr %sm_vars31.i, align 4
  br label %__choose_matched.exit

__choose_matched.exit:                            ; preds = %if.else.i, %if.then.i
  %actor_port = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 8
  %39 = ptrtoint ptr %actor_port to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %actor_port, align 1
  %port_number = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 3
  %41 = ptrtoint ptr %port_number to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %port_number, align 2
  %actor_port_priority = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 7
  %42 = ptrtoint ptr %actor_port_priority to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %actor_port_priority, align 1
  %port_priority = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 4
  %44 = ptrtoint ptr %port_priority to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %port_priority, align 2
  %actor_system = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 5
  %45 = call ptr @memcpy(ptr %partner_oper, ptr %actor_system, i32 6)
  %actor_system_priority = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 4
  %46 = ptrtoint ptr %actor_system_priority to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %actor_system_priority, align 1
  %system_priority = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %system_priority to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %system_priority, align 2
  %actor_key = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 6
  %49 = ptrtoint ptr %actor_key to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %actor_key, align 1
  %key = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 2
  %51 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %key, align 2
  %actor_state = getelementptr inbounds %struct.lacpdu, ptr %lacpdu, i32 0, i32 9
  %52 = ptrtoint ptr %actor_state to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %actor_state, align 1
  %conv = zext i8 %53 to i16
  %port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11, i32 5
  %54 = ptrtoint ptr %port_state to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv, ptr %port_state, align 2
  %actor_oper_port_state = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %55 = ptrtoint ptr %actor_oper_port_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %actor_oper_port_state, align 1
  %57 = and i8 %56, -65
  store i8 %57, ptr %actor_oper_port_state, align 1
  %sm_vars = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %58 = ptrtoint ptr %sm_vars to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sm_vars, align 4
  %60 = and i16 %59, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool6.not = icmp eq i16 %60, 0
  br i1 %tobool6.not, label %__choose_matched.exit.if.else_crit_edge, label %land.lhs.true7

__choose_matched.exit.if.else_crit_edge:          ; preds = %__choose_matched.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true7:                                   ; preds = %__choose_matched.exit
  %61 = ptrtoint ptr %actor_state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %actor_state, align 1
  %63 = and i8 %62, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool11.not = icmp eq i8 %63, 0
  br i1 %tobool11.not, label %land.lhs.true7.if.else_crit_edge, label %if.then12

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  %64 = or i16 %conv, 8
  %65 = ptrtoint ptr %port_state to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %port_state, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__record_pdu.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__record_pdu, %if.then20)) #9
          to label %if.end56 [label %if.then20], !srcloc !192

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %66 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bond, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__record_pdu.__UNIQUE_ID_ddebug354, ptr noundef %71, ptr noundef nonnull @.str.45, ptr noundef %73) #9
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %__choose_matched.exit.if.else_crit_edge
  %74 = and i16 %conv, 247
  %75 = ptrtoint ptr %port_state to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %port_state, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__record_pdu.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__record_pdu, %if.then42)) #9
          to label %if.end56 [label %if.then42], !srcloc !192

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %slave43 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %76 = ptrtoint ptr %slave43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %slave43, align 4
  %bond44 = getelementptr inbounds %struct.slave, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %bond44 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bond44, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %77, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__record_pdu.__UNIQUE_ID_ddebug355, ptr noundef %81, ptr noundef nonnull @.str.46, ptr noundef %83) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then42, %if.else, %if.then20, %if.then12, %entry.if.end56_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad_marker_info_received(ptr nocapture noundef readonly %marker_info, ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  %marker.sroa.7 = alloca <{ i8, i16, %struct.mac_addr, i32, i16, i8, i8, [90 x i8] }>, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 107, ptr nonnull %marker.sroa.7)
  %slave = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 28
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %ad_info = getelementptr inbounds %struct.slave, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %ad_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ad_info, align 8
  %marker_rx = getelementptr inbounds %struct.ad_slave_info, ptr %3, i32 0, i32 2, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_rx, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_rx) #9
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %bond = getelementptr inbounds %struct.slave, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bond, align 4
  %marker_rx4 = getelementptr inbounds %struct.bonding, ptr %7, i32 0, i32 17, i32 1, i32 4
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_rx4, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_rx4) #9
  %8 = ptrtoint ptr %marker_info to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %marker_info, align 1
  %marker.sroa.7.0.marker_info.sroa_idx = getelementptr inbounds i8, ptr %marker_info, i32 3
  %10 = call ptr @memcpy(ptr %marker.sroa.7, ptr %marker.sroa.7.0.marker_info.sroa_idx, i32 107)
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave, align 4
  %call.i.i46.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 140, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i.i46.i, null
  br i1 %tobool.not.i, label %entry.if.end16_crit_edge, label %do.body5

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ad_info6.i = getelementptr inbounds %struct.slave, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %ad_info6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ad_info6.i, align 8
  %marker_resp_tx.i = getelementptr inbounds %struct.ad_slave_info, ptr %14, i32 0, i32 2, i32 7
  %call.i.i44.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_resp_tx.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_resp_tx.i) #9
  %bond8.i = getelementptr inbounds %struct.slave, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %bond8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond8.i, align 4
  %marker_resp_tx11.i = getelementptr inbounds %struct.bonding, ptr %16, i32 0, i32 17, i32 1, i32 7
  %call.i.i45.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %marker_resp_tx11.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %marker_resp_tx11.i) #9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 16
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %20, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds %struct.anon.0, ptr %call.i.i46.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %23, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %add13.i = add i16 %conv.i.i, 14
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %add13.i, ptr %network_header.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i46.i, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -30711, ptr %protocol.i, align 8
  %call15.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i46.i, i32 noundef 124) #9
  %30 = ptrtoint ptr %call15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 25215488, ptr %call15.i, align 4
  %add.ptr1.i48.i = getelementptr i8, ptr %call15.i, i32 4
  %31 = ptrtoint ptr %add.ptr1.i48.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %add.ptr1.i48.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call15.i, i32 0, i32 1
  %perm_hwaddr.i = getelementptr inbounds %struct.slave, ptr %12, i32 0, i32 14
  %32 = ptrtoint ptr %perm_hwaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %perm_hwaddr.i, align 4
  %34 = ptrtoint ptr %h_source.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %h_source.i, align 4
  %add.ptr.i49.i = getelementptr %struct.slave, ptr %12, i32 0, i32 14, i32 4
  %35 = ptrtoint ptr %add.ptr.i49.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i49.i, align 2
  %add.ptr1.i50.i = getelementptr %struct.ethhdr, ptr %call15.i, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %add.ptr1.i50.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i50.i, align 2
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call15.i, i32 0, i32 2
  %38 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 -30711, ptr %h_proto.i, align 1
  %marker20.i = getelementptr inbounds %struct.bond_marker_header, ptr %call15.i, i32 0, i32 1
  %39 = ptrtoint ptr %marker20.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %9, ptr %marker20.i, align 1
  %marker.sroa.5.0.marker20.i.sroa_idx = getelementptr inbounds %struct.bond_marker_header, ptr %call15.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %marker.sroa.5.0.marker20.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %marker.sroa.5.0.marker20.i.sroa_idx, align 1
  %marker.sroa.7.0.marker20.i.sroa_idx = getelementptr inbounds %struct.bond_marker_header, ptr %call15.i, i32 0, i32 1, i32 3
  %41 = call ptr @memcpy(ptr %marker.sroa.7.0.marker20.i.sroa_idx, ptr %marker.sroa.7, i32 107)
  %call21.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i46.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad_marker_info_received.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad_marker_info_received, %if.then9)) #9
          to label %if.end16 [label %if.then9], !srcloc !192

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave, align 4
  %bond11 = getelementptr inbounds %struct.slave, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bond11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bond11, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 8
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port, align 4
  %conv = zext i16 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ad_marker_info_received.__UNIQUE_ID_ddebug372, ptr noundef %47, ptr noundef nonnull @.str.75, ptr noundef %49, i32 noundef %conv) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %do.body5, %entry.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 107, ptr nonnull %marker.sroa.7)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !154, !155, !156, !158, !159, !161, !163, !164, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2111, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2115, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug373, !3, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2154, i32 5}
!10 = !{ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug374, !9, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2160, i32 6}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2191, i32 5}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2210, i32 2}
!17 = !{ptr @bond_3ad_unbind_slave.__UNIQUE_ID_ddebug375, !16, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2261, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2345, i32 5}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bond_3ad_state_machine_handler._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @bond_3ad_state_machine_handler._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2360, i32 4}
!28 = !{ptr @bond_3ad_state_machine_handler._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bond_3ad_state_machine_handler._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2529, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2537, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bond_3ad_adapter_speed_duplex_changed.__UNIQUE_ID_ddebug380, !33, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2558, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2583, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bond_3ad_handle_link_change.__UNIQUE_ID_ddebug381, !39, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!42 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ad_ticks_per_sec, !45, !"ad_ticks_per_sec", i1 false, i1 false}
!45 = !{!"../drivers/net/bonding/bond_3ad.c", i32 87, i32 12}
!46 = !{ptr @ad_initialize_port.tmpl, !47, !"tmpl", i1 false, i1 false}
!47 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1838, i32 34}
!48 = !{ptr @ad_initialize_port.lacpdu, !49, !"lacpdu", i1 false, i1 false}
!49 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1845, i32 29}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/bonding/bond_3ad.c", i32 802, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__update_lacpdu_from_port.__UNIQUE_ID_ddebug356, !51, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1809, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ad_clear_agg.__UNIQUE_ID_ddebug369, !55, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!58 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1722, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug364, !60, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1728, i32 3}
!65 = !{ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug365, !64, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1735, i32 4}
!68 = !{ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug366, !67, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1744, i32 4}
!71 = !{ptr @ad_agg_selection_logic._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ad_agg_selection_logic._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1748, i32 3}
!75 = !{ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug367, !74, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!76 = !{ptr @ad_agg_selection_logic.__UNIQUE_ID_ddebug368, !77, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!77 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1751, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1619, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ad_agg_selection_test._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ad_agg_selection_test._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/bonding/bond_3ad.c", i32 330, i32 5}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__get_link_speed._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @__get_link_speed._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/bonding/bond_3ad.c", i32 339, i32 2}
!91 = !{ptr @__get_link_speed.__UNIQUE_ID_ddebug351, !90, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1154, i32 3}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ad_rx_machine.__UNIQUE_ID_ddebug358, !97, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1206, i32 5}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/bonding/bond_3ad.c", i32 505, i32 4}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__record_pdu.__UNIQUE_ID_ddebug354, !103, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/bonding/bond_3ad.c", i32 509, i32 4}
!108 = !{ptr @__record_pdu.__UNIQUE_ID_ddebug355, !107, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1359, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ad_periodic_machine.__UNIQUE_ID_ddebug360, !110, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1438, i32 5}
!115 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug361, !114, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1453, i32 4}
!119 = !{ptr @ad_port_selection_logic._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ad_port_selection_logic._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1487, i32 4}
!123 = !{ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug362, !122, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1534, i32 4}
!126 = !{ptr @ad_port_selection_logic.__UNIQUE_ID_ddebug363, !125, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1538, i32 4}
!129 = distinct !{null, !130, !"null_mac_addr", i1 false, i1 false}
!130 = !{!"../drivers/net/bonding/bond_3ad.c", i32 84, i32 17}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1036, i32 3}
!133 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ad_mux_machine.__UNIQUE_ID_ddebug357, !132, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1929, i32 3}
!137 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ad_disable_collecting_distributing.__UNIQUE_ID_ddebug371, !136, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1908, i32 3}
!141 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ad_enable_collecting_distributing.__UNIQUE_ID_ddebug370, !140, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1276, i32 5}
!145 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ad_tx_machine.__UNIQUE_ID_ddebug359, !144, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!149 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2501, i32 5}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/bonding/bond_3ad.c", i32 364, i32 4}
!154 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @__get_duplex.__UNIQUE_ID_ddebug352, !153, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/bonding/bond_3ad.c", i32 370, i32 4}
!158 = !{ptr @__get_duplex.__UNIQUE_ID_ddebug353, !157, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!159 = distinct !{null, !160, !"lacpdu_mcast_addr", i1 false, i1 false}
!160 = !{!"../drivers/net/bonding/bond_3ad.c", i32 90, i32 17}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2416, i32 3}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @bond_3ad_rx_indication._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @bond_3ad_rx_indication._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2424, i32 3}
!168 = !{ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug376, !167, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2440, i32 4}
!171 = !{ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug377, !170, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2445, i32 4}
!174 = !{ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug378, !173, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/bonding/bond_3ad.c", i32 2450, i32 4}
!177 = !{ptr @bond_3ad_rx_indication.__UNIQUE_ID_ddebug379, !176, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/bonding/bond_3ad.c", i32 1959, i32 3}
!180 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ad_marker_info_received.__UNIQUE_ID_ddebug372, !179, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2148916255, i64 2148916260, i64 2148916273, i64 2148916317, i64 2148916351, i64 2148916372}
!193 = !{!"auto-init"}
!194 = !{i8 0, i8 2}
!195 = !{i64 2149731077}
!196 = !{i64 2149731343}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2148536263}
!199 = !{i64 918176, i64 918200, i64 918221, i64 918238, i64 918255}
!200 = !{i64 2148536489}
