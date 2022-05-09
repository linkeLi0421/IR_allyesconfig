; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.rmnet_port = type { ptr, i32, i8, i8, [255 x %struct.hlist_head], ptr, ptr }
%struct.rmnet_endpoint = type { i8, ptr, %struct.hlist_node }
%struct.ifla_rmnet_flags = type { i32, i32 }

@rmnet_get_port_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmnet\00", [26 x i8] zeroinitializer }, align 32
@rmnet_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.48 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@rmnet_link_ops = dso_local global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.2, i32 104, ptr null, ptr @rmnet_vnd_setup, i8 0, i32 3, ptr @rmnet_policy, ptr @rmnet_rtnl_validate, ptr @rmnet_newlink, ptr @rmnet_changelink, ptr @rmnet_dellink, ptr @rmnet_get_size, ptr @rmnet_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@rmnet_get_port_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rmnet_get_endpoint.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rmnet_add_bridge.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rmnet: more than one rmnet dev attached\00", [56 x i8] zeroinitializer }, align 32
@rmnet_add_bridge.__msg.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rmnet: more than one bridge dev attached\00", [55 x i8] zeroinitializer }, align 32
@rmnet_add_bridge.__msg.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rmnet: slave cannot be another rmnet dev\00", [55 x i8] zeroinitializer }, align 32
@rmnet_add_bridge.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rmnet_add_bridge\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registered with rmnet as slave\0A\00", [32 x i8] zeroinitializer }, align 32
@rmnet_del_bridge.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rmnet_del_bridge\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"removed from rmnet as slave\0A\00", [35 x i8] zeroinitializer }, align 32
@rmnet_dev_notifier = internal global %struct.notifier_block { ptr @rmnet_config_notify_cb, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_rmnet__471_515_rmnet_init6 = internal global ptr @rmnet_init, section ".initcall6.init", align 4
@__exitcall_rmnet_exit = internal global ptr @rmnet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias472 = internal constant [28 x i8] c"rmnet.alias=rtnl-link-rmnet\00", section ".modinfo", align 1
@__UNIQUE_ID_file473 = internal constant [53 x i8] c"rmnet.file=drivers/net/ethernet/qualcomm/rmnet/rmnet\00", section ".modinfo", align 1
@__UNIQUE_ID_license474 = internal constant [21 x i8] c"rmnet.license=GPL v2\00", section ".modinfo", align 1
@rmnet_rtnl_validate.__msg = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rmnet: MUX ID not specified\00", [36 x i8] zeroinitializer }, align 32
@rmnet_rtnl_validate.__msg.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rmnet: invalid MUX ID\00", [42 x i8] zeroinitializer }, align 32
@rmnet_newlink.__msg = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rmnet: link not specified\00", [38 x i8] zeroinitializer }, align 32
@rmnet_newlink.__msg.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rmnet: link does not exist\00", [37 x i8] zeroinitializer }, align 32
@rmnet_newlink.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmnet_newlink\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"data format [0x%08X]\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rmnet_changelink.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmnet: MUX ID already exists\00", [35 x i8] zeroinitializer }, align 32
@rmnet_changelink.__msg.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmnet: Invalid MTU on real dev\00", [33 x i8] zeroinitializer }, align 32
@rmnet_register_real_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rmnet_register_real_device.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rmnet: bridge device already exists\00", [60 x i8] zeroinitializer }, align 32
@rmnet_register_real_device.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str, ptr @.str.18, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rmnet_register_real_device\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"registered with rmnet\0A\00", [41 x i8] zeroinitializer }, align 32
@rmnet_unregister_real_device.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str, ptr @.str.20, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmnet_unregister_real_device\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Removed from rmnet\0A\00", [44 x i8] zeroinitializer }, align 32
@rmnet_config_notify_cb.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmnet_config_notify_cb\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Kernel unregister\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 32, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 393, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"rmnet_policy\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 18, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 409, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 418, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 441, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 446, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 451, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 476, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 487, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 278, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 284, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 128, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 134, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 170, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 320, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 345, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 56, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 61, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 82, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [54 x i8] c"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 254, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias472, ptr @__UNIQUE_ID_file473, ptr @__UNIQUE_ID_license474, ptr @__exitcall_rmnet_exit, ptr @__initcall__kmod_rmnet__471_515_rmnet_init6, ptr @rmnet_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rmnet_policy, ptr @.str.3, ptr @.str.4, ptr @rmnet_add_bridge.__msg, ptr @rmnet_add_bridge.__msg.5, ptr @rmnet_add_bridge.__msg.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rmnet_rtnl_validate.__msg, ptr @rmnet_rtnl_validate.__msg.11, ptr @rmnet_newlink.__msg, ptr @rmnet_newlink.__msg.12, ptr @.str.13, ptr @.str.14, ptr @rmnet_changelink.__msg, ptr @rmnet_changelink.__msg.15, ptr @.str.16, ptr @rmnet_register_real_device.__msg, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_add_bridge.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_add_bridge.__msg.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_add_bridge.__msg.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_rtnl_validate.__msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_rtnl_validate.__msg.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_newlink.__msg to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_newlink.__msg.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_changelink.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_changelink.__msg.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_register_real_device.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmnet_get_port_rtnl(ptr nocapture noundef readonly %real_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_handler_data, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_vnd_setup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_rtnl_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_rtnl_validate.__msg) #6
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %3)
  %cmp = icmp ugt i16 %3, 254
  br i1 %cmp, label %do.body8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body8:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_rtnl_validate.__msg.11) #6
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %do.body8.cleanup.sink.split_crit_edge

do.body8.cleanup.sink.split_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body8.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %rmnet_rtnl_validate.__msg.11.sink = phi ptr [ @rmnet_rtnl_validate.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @rmnet_rtnl_validate.__msg.11, %do.body8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %do.body.cleanup.sink.split_crit_edge ], [ -34, %do.body8.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rmnet_rtnl_validate.__msg.11.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -34, %do.body8.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readonly %data, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_newlink.__msg) #6
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rmnet_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %call5 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %4) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body8, label %if.end16

do.body8:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_newlink.__msg.12) #6
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %if.then11

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rmnet_newlink.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #9
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %arrayidx21 = getelementptr ptr, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx21, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i107 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i107, align 2
  %call23 = tail call fastcc i32 @rmnet_register_real_device(ptr noundef nonnull %call5, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.err0_crit_edge

if.end20.err0_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err0

if.end26:                                         ; preds = %if.end20
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end26.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end26.rmnet_get_port_rtnl.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.end26.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 95
  %11 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_handler_data.i, align 4
  %conv = trunc i16 %10 to i8
  %call28 = tail call i32 @rmnet_vnd_newlink(i8 noundef zeroext %conv, ptr noundef %dev, ptr noundef %12, ptr noundef nonnull %call5, ptr noundef nonnull %call7.i.i, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %rmnet_get_port_rtnl.exit.err1_crit_edge

rmnet_get_port_rtnl.exit.err1_crit_edge:          ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end31:                                         ; preds = %rmnet_get_port_rtnl.exit
  %call32 = tail call i32 @netdev_upper_dev_link(ptr noundef nonnull %call5, ptr noundef %dev, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %err2, label %if.end35

if.end35:                                         ; preds = %if.end31
  %rmnet_mode = getelementptr inbounds %struct.rmnet_port, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %rmnet_mode, align 1
  %rmnet_dev = getelementptr inbounds %struct.rmnet_port, ptr %12, i32 0, i32 6
  %14 = ptrtoint ptr %rmnet_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %rmnet_dev, align 4
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %call7.i.i, i32 0, i32 2
  %idxprom = zext i16 %10 to i32
  %arrayidx37 = getelementptr %struct.rmnet_port, ptr %12, i32 0, i32 4, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx37, align 4
  %17 = ptrtoint ptr %hlnode to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %hlnode, align 8
  %pprev.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx37, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !83
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %hlnode, ptr %arrayidx37, align 4
  %tobool.not.i108 = icmp eq ptr %16, null
  br i1 %tobool.not.i108, label %if.end35.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end35.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %hlnode, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end35.hlist_add_head_rcu.exit_crit_edge
  %arrayidx38 = getelementptr ptr, ptr %data, i32 2
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %hlist_add_head_rcu.exit.do.body48_crit_edge, label %if.then40

hlist_add_head_rcu.exit.do.body48_crit_edge:      ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.then40:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %mask = getelementptr i8, ptr %22, i32 8
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %neg = and i32 %24, 1
  %and = xor i32 %neg, 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %and45 = and i32 %26, %24
  %or = or i32 %and, %and45
  br label %do.body48

do.body48:                                        ; preds = %if.then40, %hlist_add_head_rcu.exit.do.body48_crit_edge
  %data_format.0 = phi i32 [ %or, %if.then40 ], [ 1, %hlist_add_head_rcu.exit.do.body48_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_newlink.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_newlink, %if.then53)) #6
          to label %do.end58 [label %if.then53], !srcloc !84

if.then53:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_newlink.__UNIQUE_ID_ddebug461, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %data_format.0) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body48
  %data_format59 = getelementptr inbounds %struct.rmnet_port, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %data_format59 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %data_format.0, ptr %data_format59, align 4
  br label %cleanup

err2:                                             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #6
  %call61 = tail call i32 @rmnet_vnd_dellink(i8 noundef zeroext %conv, ptr noundef %12, ptr noundef nonnull %call7.i.i) #6
  br label %err1

err1:                                             ; preds = %err2, %rmnet_get_port_rtnl.exit.err1_crit_edge
  %err.0 = phi i32 [ %call28, %rmnet_get_port_rtnl.exit.err1_crit_edge ], [ %call32, %err2 ]
  tail call fastcc void @rmnet_unregister_real_device(ptr noundef nonnull %call5)
  br label %err0

err0:                                             ; preds = %err1, %if.end20.err0_crit_edge
  %err.1 = phi i32 [ %call23, %if.end20.err0_crit_edge ], [ %err.0, %err1 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.end58, %if.end16.cleanup_crit_edge, %if.then11, %do.body8.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err0 ], [ 0, %do.end58 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -19, %if.then11 ], [ -19, %do.body8.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %data, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end:                                           ; preds = %entry
  %real_dev1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 94
  %2 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %3, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup64_crit_edge

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end5:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end5.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end5.rmnet_get_port_rtnl.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.end5.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_handler_data.i, align 4
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %rmnet_get_port_rtnl.exit.if.end35_crit_edge, label %if.then8

rmnet_get_port_rtnl.exit.if.end35_crit_edge:      ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then8:                                         ; preds = %rmnet_get_port_rtnl.exit
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 8
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp.not = icmp eq i16 %9, %12
  br i1 %cmp.not, label %if.then8.if.end35_crit_edge, label %if.then14

if.then8.if.end35_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then14:                                        ; preds = %if.then8
  %call.i99 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i102, label %if.then14.do.end.i_crit_edge

if.then14.do.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i102:                               ; preds = %if.then14
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i102.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i102.do.end.i_crit_edge:            ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i102
  %.b40.i = load i1, ptr @rmnet_get_endpoint.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i103

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i103:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_endpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 418, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i103, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i102.do.end.i_crit_edge, %if.then14.do.end.i_crit_edge
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.rmnet_port, ptr %5, i32 0, i32 4, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %14, null
  %add.ptr.i104 = getelementptr i8, ptr %14, i32 -8
  %tobool12.not4447.i = icmp eq ptr %add.ptr.i104, null
  %tobool12.not44.i = or i1 %tobool10.not.i, %tobool12.not4447.i
  br i1 %tobool12.not44.i, label %do.end.i.cleanup64_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup64_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %ep.045.i = phi ptr [ %add.ptr29.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i104, %do.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %ep.045.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ep.045.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %11)
  %cmp.i105 = icmp eq i8 %16, %11
  br i1 %cmp.i105, label %if.end19, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlnode.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2
  %17 = ptrtoint ptr %hlnode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hlnode.i, align 4
  %tobool25.not.i = icmp eq ptr %18, null
  %add.ptr29.i = getelementptr i8, ptr %18, i32 -8
  %tobool12.not48.i = icmp eq ptr %add.ptr29.i, null
  %tobool12.not.i = or i1 %tobool25.not.i, %tobool12.not48.i
  br i1 %tobool12.not.i, label %for.inc.i.cleanup64_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup64_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end19:                                         ; preds = %for.body.i
  %conv20 = trunc i16 %9 to i8
  %call.i106 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i110, label %if.end19.do.end.i120_crit_edge

if.end19.do.end.i120_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i120

land.lhs.true.i110:                               ; preds = %if.end19
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool2.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool2.not.i109, label %land.lhs.true.i110.do.end.i120_crit_edge, label %land.lhs.true3.i112

land.lhs.true.i110.do.end.i120_crit_edge:         ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i120

land.lhs.true3.i112:                              ; preds = %land.lhs.true.i110
  %.b40.i111 = load i1, ptr @rmnet_get_endpoint.__warned, align 1
  br i1 %.b40.i111, label %land.lhs.true3.i112.do.end.i120_crit_edge, label %if.then.i113

land.lhs.true3.i112.do.end.i120_crit_edge:        ; preds = %land.lhs.true3.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i120

if.then.i113:                                     ; preds = %land.lhs.true3.i112
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_endpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 418, ptr noundef nonnull @.str.4) #6
  br label %do.end.i120

do.end.i120:                                      ; preds = %if.then.i113, %land.lhs.true3.i112.do.end.i120_crit_edge, %land.lhs.true.i110.do.end.i120_crit_edge, %if.end19.do.end.i120_crit_edge
  %conv20.mask = and i16 %9, 255
  %idxprom.i114 = zext i16 %conv20.mask to i32
  %arrayidx.i115 = getelementptr %struct.rmnet_port, ptr %5, i32 0, i32 4, i32 %idxprom.i114
  %19 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i115, align 4
  %tobool10.not.i116 = icmp eq ptr %20, null
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 -8
  %tobool12.not4447.i118 = icmp eq ptr %add.ptr.i117, null
  %tobool12.not44.i119 = or i1 %tobool10.not.i116, %tobool12.not4447.i118
  br i1 %tobool12.not44.i119, label %do.end.i120.if.end27_crit_edge, label %do.end.i120.for.body.i123_crit_edge

do.end.i120.for.body.i123_crit_edge:              ; preds = %do.end.i120
  br label %for.body.i123

do.end.i120.if.end27_crit_edge:                   ; preds = %do.end.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.body.i123:                                    ; preds = %for.inc.i129.for.body.i123_crit_edge, %do.end.i120.for.body.i123_crit_edge
  %ep.045.i121 = phi ptr [ %add.ptr29.i126, %for.inc.i129.for.body.i123_crit_edge ], [ %add.ptr.i117, %do.end.i120.for.body.i123_crit_edge ]
  %21 = ptrtoint ptr %ep.045.i121 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep.045.i121, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %conv20)
  %cmp.i122 = icmp eq i8 %22, %conv20
  br i1 %cmp.i122, label %do.body, label %for.inc.i129

for.inc.i129:                                     ; preds = %for.body.i123
  %hlnode.i124 = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i121, i32 0, i32 2
  %23 = ptrtoint ptr %hlnode.i124 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hlnode.i124, align 4
  %tobool25.not.i125 = icmp eq ptr %24, null
  %add.ptr29.i126 = getelementptr i8, ptr %24, i32 -8
  %tobool12.not48.i127 = icmp eq ptr %add.ptr29.i126, null
  %tobool12.not.i128 = or i1 %tobool25.not.i125, %tobool12.not48.i127
  br i1 %tobool12.not.i128, label %for.inc.i129.if.end27_crit_edge, label %for.inc.i129.for.body.i123_crit_edge

for.inc.i129.for.body.i123_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i123

for.inc.i129.if.end27_crit_edge:                  ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body:                                          ; preds = %for.body.i123
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_changelink.__msg) #6
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body.cleanup64_crit_edge, label %do.body.cleanup64.sink.split_crit_edge

do.body.cleanup64.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.sink.split

do.body.cleanup64_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end27:                                         ; preds = %for.inc.i129.if.end27_crit_edge, %do.end.i120.if.end27_crit_edge
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2
  %pprev.i.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.not.i, label %if.end27.hlist_del_init_rcu.exit_crit_edge, label %if.then.i132

if.end27.hlist_del_init_rcu.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del_init_rcu.exit

if.then.i132:                                     ; preds = %if.end27
  %27 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hlnode, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %26, align 4
  %tobool.not.i7.i = icmp eq ptr %28, null
  br i1 %tobool.not.i7.i, label %if.then.i132.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i132.__hlist_del.exit.i_crit_edge:        ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i132.__hlist_del.exit.i_crit_edge
  %31 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.end27.hlist_del_init_rcu.exit_crit_edge
  %arrayidx29 = getelementptr %struct.rmnet_port, ptr %5, i32 0, i32 4, i32 %conv
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx29, align 4
  %34 = ptrtoint ptr %hlnode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %hlnode, align 4
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx29, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !83
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %hlnode, ptr %arrayidx29, align 4
  %tobool.not.i133 = icmp eq ptr %33, null
  br i1 %tobool.not.i133, label %hlist_del_init_rcu.exit.cleanup_crit_edge, label %do.body49.i

hlist_del_init_rcu.exit.cleanup_crit_edge:        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49.i:                                      ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %hlnode, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %hlist_del_init_rcu.exit.cleanup_crit_edge
  %38 = ptrtoint ptr %ep.045.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv20, ptr %ep.045.i, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv20, ptr %add.ptr.i, align 8
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %if.then8.if.end35_crit_edge, %rmnet_get_port_rtnl.exit.if.end35_crit_edge
  %arrayidx36 = getelementptr ptr, ptr %data, i32 2
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %41, null
  br i1 %tobool37.not, label %if.end35.cleanup64_crit_edge, label %if.then38

if.end35.cleanup64_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.then38:                                        ; preds = %if.end35
  %data_format = getelementptr inbounds %struct.rmnet_port, ptr %5, i32 0, i32 1
  %42 = ptrtoint ptr %data_format to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_format, align 4
  %add.ptr.i134 = getelementptr i8, ptr %41, i32 4
  %mask = getelementptr i8, ptr %41, i32 8
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask, align 4
  %neg = xor i32 %45, -1
  %and = and i32 %43, %neg
  store i32 %and, ptr %data_format, align 4
  %46 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i134, align 4
  %48 = load i32, ptr %mask, align 4
  %and44 = and i32 %48, %47
  %or = or i32 %and44, %and
  store i32 %or, ptr %data_format, align 4
  %call46 = tail call i32 @rmnet_vnd_update_dev_mtu(ptr noundef %5, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then38.cleanup64_crit_edge, label %if.then48

if.then38.cleanup64_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.then48:                                        ; preds = %if.then38
  %49 = ptrtoint ptr %data_format to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %43, ptr %data_format, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_changelink.__msg.15) #6
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %if.then48.cleanup64_crit_edge, label %if.then48.cleanup64.sink.split_crit_edge

if.then48.cleanup64.sink.split_crit_edge:         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64.sink.split

if.then48.cleanup64_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

cleanup64.sink.split:                             ; preds = %if.then48.cleanup64.sink.split_crit_edge, %do.body.cleanup64.sink.split_crit_edge
  %rmnet_changelink.__msg.15.sink = phi ptr [ @rmnet_changelink.__msg, %do.body.cleanup64.sink.split_crit_edge ], [ @rmnet_changelink.__msg.15, %if.then48.cleanup64.sink.split_crit_edge ]
  %50 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rmnet_changelink.__msg.15.sink, ptr %extack, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %cleanup64.sink.split, %if.then48.cleanup64_crit_edge, %if.then38.cleanup64_crit_edge, %if.end35.cleanup64_crit_edge, %do.body.cleanup64_crit_edge, %for.inc.i.cleanup64_crit_edge, %do.end.i.cleanup64_crit_edge, %if.end.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.3 = phi i32 [ -19, %entry.cleanup64_crit_edge ], [ -19, %if.end.cleanup64_crit_edge ], [ 0, %if.then38.cleanup64_crit_edge ], [ 0, %if.end35.cleanup64_crit_edge ], [ -22, %do.body.cleanup64_crit_edge ], [ -19, %do.end.i.cleanup64_crit_edge ], [ -22, %if.then48.cleanup64_crit_edge ], [ -22, %cleanup64.sink.split ], [ -19, %for.inc.i.cleanup64_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmnet_dellink(ptr noundef %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr.i, align 8
  %real_dev2 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %real_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_dev2, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 94
  %4 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %5, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.end.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.rmnet_get_port_rtnl.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.end.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 95
  %6 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_handler_data.i, align 4
  %bridge_ep = getelementptr inbounds %struct.rmnet_port, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bridge_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge_ep, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %rmnet_get_port_rtnl.exit.if.end8_crit_edge, label %if.then6

rmnet_get_port_rtnl.exit.if.end8_crit_edge:       ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %rmnet_get_port_rtnl.exit
  %call.i34 = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i34, label %if.then6.rmnet_get_port_rtnl.exit42_crit_edge, label %land.lhs.true.i37

if.then6.rmnet_get_port_rtnl.exit42_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit42

land.lhs.true.i37:                                ; preds = %if.then6
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rmnet_get_port_rtnl.exit42_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rmnet_get_port_rtnl.exit42_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit42

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rmnet_get_port_rtnl.exit42_crit_edge, label %if.then.i40

land.lhs.true2.i39.rmnet_get_port_rtnl.exit42_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit42

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit42

rmnet_get_port_rtnl.exit42:                       ; preds = %if.then.i40, %land.lhs.true2.i39.rmnet_get_port_rtnl.exit42_crit_edge, %land.lhs.true.i37.rmnet_get_port_rtnl.exit42_crit_edge, %if.then6.rmnet_get_port_rtnl.exit42_crit_edge
  %rx_handler_data.i41 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_handler_data.i41, align 4
  tail call fastcc void @rmnet_unregister_bridge(ptr noundef %11)
  br label %if.end8

if.end8:                                          ; preds = %rmnet_get_port_rtnl.exit42, %rmnet_get_port_rtnl.exit.if.end8_crit_edge
  %call.i43 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i46, label %if.end8.do.end.i_crit_edge

if.end8.do.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i46:                                ; preds = %if.end8
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool2.not.i = icmp eq i32 %call1.i45, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i46.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i46.do.end.i_crit_edge:             ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i46
  %.b40.i = load i1, ptr @rmnet_get_endpoint.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i47

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i47:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_endpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 418, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i47, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i46.do.end.i_crit_edge, %if.end8.do.end.i_crit_edge
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr %struct.rmnet_port, ptr %7, i32 0, i32 4, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  %add.ptr.i48 = getelementptr i8, ptr %13, i32 -8
  %tobool12.not4447.i = icmp eq ptr %add.ptr.i48, null
  %tobool12.not44.i = or i1 %tobool10.not.i, %tobool12.not4447.i
  br i1 %tobool12.not44.i, label %do.end.i.if.end13_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end13_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %ep.045.i = phi ptr [ %add.ptr29.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i48, %do.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %ep.045.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep.045.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %1)
  %cmp.i49 = icmp eq i8 %15, %1
  br i1 %cmp.i49, label %if.then11, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlnode.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2
  %16 = ptrtoint ptr %hlnode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hlnode.i, align 4
  %tobool25.not.i = icmp eq ptr %17, null
  %add.ptr29.i = getelementptr i8, ptr %17, i32 -8
  %tobool12.not48.i = icmp eq ptr %add.ptr29.i, null
  %tobool12.not.i = or i1 %tobool25.not.i, %tobool12.not48.i
  br i1 %tobool12.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %for.body.i
  %pprev.i.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.i, label %if.then11.hlist_del_init_rcu.exit_crit_edge, label %if.then.i50

if.then11.hlist_del_init_rcu.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del_init_rcu.exit

if.then.i50:                                      ; preds = %if.then11
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045.i, i32 0, i32 2
  %20 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hlnode, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %19, align 4
  %tobool.not.i7.i = icmp eq ptr %21, null
  br i1 %tobool.not.i7.i, label %if.then.i50.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i50.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i50.__hlist_del.exit.i_crit_edge
  %24 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.then11.hlist_del_init_rcu.exit_crit_edge
  %call12 = tail call i32 @rmnet_vnd_dellink(i8 noundef zeroext %1, ptr noundef %7, ptr noundef nonnull %ep.045.i) #6
  tail call void @kfree(ptr noundef nonnull %ep.045.i) #6
  br label %if.end13

if.end13:                                         ; preds = %hlist_del_init_rcu.exit, %for.inc.i.if.end13_crit_edge, %do.end.i.if.end13_crit_edge
  tail call void @netdev_upper_dev_unlink(ptr noundef %3, ptr noundef %dev) #6
  tail call fastcc void @rmnet_unregister_real_device(ptr noundef %3)
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmnet_get_size(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %f = alloca %struct.ifla_rmnet_flags, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f) #6
  %0 = getelementptr inbounds %struct.ifla_rmnet_flags, ptr %f, i32 0, i32 1
  %real_dev1 = getelementptr i8, ptr %dev, i32 2308
  %1 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %real_dev1, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr.i, align 8
  %conv = zext i8 %4 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #6
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 94
  %6 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %7, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %call.i19 = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i19, label %if.then5.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.then5.rmnet_get_port_rtnl.exit_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.then5.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_handler_data.i, align 4
  %data_format = getelementptr inbounds %struct.rmnet_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_format, align 4
  br label %if.end8

if.end8:                                          ; preds = %rmnet_get_port_rtnl.exit, %if.end.if.end8_crit_edge
  %storemerge = phi i32 [ %11, %rmnet_get_port_rtnl.exit ], [ 0, %if.end.if.end8_crit_edge ]
  %12 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %f, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %0, align 4
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %f) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.nla_put_failure_crit_edge

if.end8.nla_put_failure_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end8.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmnet_get_port_rcu(ptr noundef %real_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %1, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true6

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @rmnet_get_port_rcu.__warned, align 1
  br i1 %.b13, label %land.lhs.true6.return_crit_edge, label %if.then8

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.3) #6
  br label %return

return:                                           ; preds = %if.then8, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.then8 ], [ %3, %land.lhs.true6.return_crit_edge ], [ %3, %land.lhs.true.return_crit_edge ], [ %3, %if.then.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rmnet_get_endpoint(ptr noundef %port, i8 noundef zeroext %mux_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @rmnet_get_endpoint.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_endpoint.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 418, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %idxprom = zext i8 %mux_id to i32
  %arrayidx = getelementptr %struct.rmnet_port, ptr %port, i32 0, i32 4, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool12.not4447 = icmp eq ptr %add.ptr, null
  %tobool12.not44 = or i1 %tobool10.not, %tobool12.not4447
  br i1 %tobool12.not44, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %ep.045 = phi ptr [ %add.ptr29, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %ep.045 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ep.045, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mux_id)
  %cmp = icmp eq i8 %3, %mux_id
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.045, i32 0, i32 2
  %4 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlnode, align 4
  %tobool25.not = icmp eq ptr %5, null
  %add.ptr29 = getelementptr i8, ptr %5, i32 -8
  %tobool12.not48 = icmp eq ptr %add.ptr29, null
  %tobool12.not = or i1 %tobool25.not, %tobool12.not48
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %ep.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %ep.045, %for.body.cleanup_crit_edge ]
  ret ptr %ep.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_add_bridge(ptr noundef %rmnet_dev, ptr noundef %slave_dev, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %rmnet_dev, i32 2308
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %entry.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.rmnet_get_port_rtnl.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %entry.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %nr_rmnet_devs = getelementptr inbounds %struct.rmnet_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_rmnet_devs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_rmnet_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %rmnet_get_port_rtnl.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_add_bridge.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rmnet_add_bridge.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %rmnet_get_port_rtnl.exit
  %rmnet_mode = getelementptr inbounds %struct.rmnet_port, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rmnet_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp7.not = icmp eq i8 %8, 1
  br i1 %cmp7.not, label %if.end18, label %do.body10

do.body10:                                        ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_add_bridge.__msg.5) #6
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rmnet_add_bridge.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 94
  %10 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %11, @rmnet_rx_handler
  br i1 %cmp.i.not, label %do.body22, label %if.end30

do.body22:                                        ; preds = %if.end18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_add_bridge.__msg.6) #6
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body22.cleanup_crit_edge, label %if.then25

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rmnet_add_bridge.__msg.6, ptr %extack, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %call31 = tail call fastcc i32 @rmnet_register_real_device(ptr noundef %slave_dev, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @netdev_master_upper_dev_link(ptr noundef %slave_dev, ptr noundef %rmnet_dev, ptr noundef null, ptr noundef null, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rmnet_unregister_real_device(ptr noundef %slave_dev)
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call ptr @rmnet_get_port_rtnl(ptr noundef %slave_dev)
  %rmnet_mode41 = getelementptr inbounds %struct.rmnet_port, ptr %call40, i32 0, i32 3
  %13 = ptrtoint ptr %rmnet_mode41 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %rmnet_mode41, align 1
  %bridge_ep = getelementptr inbounds %struct.rmnet_port, ptr %call40, i32 0, i32 5
  %14 = ptrtoint ptr %bridge_ep to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %bridge_ep, align 4
  %rmnet_dev42 = getelementptr inbounds %struct.rmnet_port, ptr %call40, i32 0, i32 6
  %15 = ptrtoint ptr %rmnet_dev42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rmnet_dev, ptr %rmnet_dev42, align 4
  %16 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %rmnet_mode, align 1
  %bridge_ep44 = getelementptr inbounds %struct.rmnet_port, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %bridge_ep44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %slave_dev, ptr %bridge_ep44, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_add_bridge.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_add_bridge, %if.then51)) #6
          to label %cleanup [label %if.then51], !srcloc !84

if.then51:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_add_bridge.__UNIQUE_ID_ddebug469, ptr noundef %slave_dev, ptr noundef nonnull @.str.8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end39, %if.then37, %if.end30.cleanup_crit_edge, %if.then25, %do.body22.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.then37 ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -16, %if.then25 ], [ -16, %do.body22.cleanup_crit_edge ], [ -16, %if.end30.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmnet_register_real_device(ptr noundef %real_dev, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b96 = load i1, ptr @rmnet_register_real_device.__already_done, align 1
  br i1 %.b96, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !85

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_register_real_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 56) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 94
  %0 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %1, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.then40, label %if.end51

if.then40:                                        ; preds = %if.end30
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.then40.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.then40.rmnet_get_port_rtnl.exit_crit_edge:     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.then40
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.then40.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_handler_data.i, align 4
  %rmnet_mode = getelementptr inbounds %struct.rmnet_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rmnet_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %rmnet_get_port_rtnl.exit.cleanup_crit_edge, label %do.body44

rmnet_get_port_rtnl.exit.cleanup_crit_edge:       ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body44:                                        ; preds = %rmnet_get_port_rtnl.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_register_real_device.__msg) #6
  %tobool45.not = icmp eq ptr %extack, null
  br i1 %tobool45.not, label %do.body44.cleanup_crit_edge, label %if.then46

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rmnet_register_real_device.__msg, ptr %extack, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1040) #9
  %tobool53.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %real_dev, ptr %call7.i.i, align 8
  %call56 = tail call i32 @netdev_rx_handler_register(ptr noundef %real_dev, ptr noundef nonnull @rmnet_rx_handler, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.body.preheader, label %if.then58

for.body.preheader:                               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 12
  %9 = call ptr @memset(ptr %uglygep, i32 0, i32 1020)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_register_real_device.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_register_real_device, %if.then74)) #6
          to label %cleanup [label %if.then74], !srcloc !84

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.then74:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_register_real_device.__UNIQUE_ID_ddebug460, ptr noundef %real_dev, ptr noundef nonnull @.str.18) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.then58, %for.body.preheader, %if.end51.cleanup_crit_edge, %if.then46, %do.body44.cleanup_crit_edge, %rmnet_get_port_rtnl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then58 ], [ -22, %if.then46 ], [ -22, %do.body44.cleanup_crit_edge ], [ 0, %rmnet_get_port_rtnl.exit.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmnet_unregister_real_device(ptr noundef %real_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %entry.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.rmnet_get_port_rtnl.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %entry.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_handler_data.i, align 4
  %nr_rmnet_devs = getelementptr inbounds %struct.rmnet_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_rmnet_devs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_rmnet_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %rmnet_get_port_rtnl.exit.cleanup_crit_edge

rmnet_get_port_rtnl.exit.cleanup_crit_edge:       ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netdev_rx_handler_unregister(ptr noundef %real_dev) #6
  tail call void @kfree(ptr noundef %1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_unregister_real_device.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_unregister_real_device, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !84

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_unregister_real_device.__UNIQUE_ID_ddebug459, ptr noundef %real_dev, ptr noundef nonnull @.str.20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %rmnet_get_port_rtnl.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_del_bridge(ptr nocapture noundef readnone %rmnet_dev, ptr noundef %slave_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %entry.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.rmnet_get_port_rtnl.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %entry.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_handler_data.i, align 4
  tail call fastcc void @rmnet_unregister_bridge(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_del_bridge.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_del_bridge, %if.then)) #6
          to label %do.end6 [label %if.then], !srcloc !84

if.then:                                          ; preds = %rmnet_get_port_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_del_bridge.__UNIQUE_ID_ddebug470, ptr noundef %slave_dev, ptr noundef nonnull @.str.10) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then, %rmnet_get_port_rtnl.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmnet_unregister_bridge(ptr nocapture noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmnet_mode = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %rmnet_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rmnet_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmnet_dev2 = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %rmnet_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmnet_dev2, align 4
  %nr_rmnet_devs = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %nr_rmnet_devs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_rmnet_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %bridge_ep = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %bridge_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge_ep, align 4
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i, label %if.then3.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true.i

if.then3.rmnet_get_port_rtnl.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.then3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit

rmnet_get_port_rtnl.exit:                         ; preds = %if.then.i, %land.lhs.true2.i.rmnet_get_port_rtnl.exit_crit_edge, %land.lhs.true.i.rmnet_get_port_rtnl.exit_crit_edge, %if.then3.rmnet_get_port_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_handler_data.i, align 4
  %bridge_ep4 = getelementptr inbounds %struct.rmnet_port, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %bridge_ep4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bridge_ep4, align 4
  %rmnet_mode5 = getelementptr inbounds %struct.rmnet_port, ptr %11, i32 0, i32 3
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %bridge_ep to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bridge_ep, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %rmnet_get_port_rtnl.exit
  %rmnet_mode.sink = phi ptr [ %rmnet_mode, %if.else ], [ %rmnet_mode5, %rmnet_get_port_rtnl.exit ]
  %bridge_dev.0 = phi ptr [ %7, %if.else ], [ %9, %rmnet_get_port_rtnl.exit ]
  %14 = ptrtoint ptr %rmnet_mode.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %rmnet_mode.sink, align 1
  tail call void @netdev_upper_dev_unlink(ptr noundef %bridge_dev.0, ptr noundef %3) #6
  tail call fastcc void @rmnet_unregister_real_device(ptr noundef %bridge_dev.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmnet_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtnl_link_unregister(ptr noundef nonnull @rmnet_link_ops) #6
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rmnet_dev_notifier) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @rmnet_dev_notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_link_register(ptr noundef nonnull @rmnet_link_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rmnet_dev_notifier) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_vnd_newlink(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_vnd_dellink(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_vnd_update_dev_mtu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_rx_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_config_notify_cb(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 94
  %2 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i.not = icmp eq ptr %3, @rmnet_rx_handler
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 6, label %do.body2
    i32 7, label %sw.bb11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body2:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_config_notify_cb.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_config_notify_cb, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !84

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_config_notify_cb.__UNIQUE_ID_ddebug462, ptr noundef %1, ptr noundef nonnull @.str.22) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #6
  %5 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list.i, ptr %list.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i, ptr %5, align 4
  %call.i.i = call zeroext i1 @lockdep_rtnl_is_held() #6
  br i1 %call.i.i, label %do.end10.rmnet_get_port_rtnl.exit.i_crit_edge, label %land.lhs.true.i.i

do.end10.rmnet_get_port_rtnl.exit.i_crit_edge:    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit.i

land.lhs.true.i.i:                                ; preds = %do.end10
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rmnet_get_port_rtnl.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rmnet_get_port_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rmnet_get_port_rtnl.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rmnet_get_port_rtnl.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rmnet_get_port_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_get_port_rtnl.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rmnet_get_port_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  br label %rmnet_get_port_rtnl.exit.i

rmnet_get_port_rtnl.exit.i:                       ; preds = %if.then.i.i, %land.lhs.true2.i.i.rmnet_get_port_rtnl.exit.i_crit_edge, %land.lhs.true.i.i.rmnet_get_port_rtnl.exit.i_crit_edge, %do.end10.rmnet_get_port_rtnl.exit.i_crit_edge
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_handler_data.i.i, align 4
  %nr_rmnet_devs.i = getelementptr inbounds %struct.rmnet_port, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_rmnet_devs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_rmnet_devs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call fastcc void @rmnet_unregister_bridge(ptr noundef %9) #6
  br i1 %tobool.not.i, label %rmnet_get_port_rtnl.exit.i.rmnet_force_unassociate_device.exit_crit_edge, label %rmnet_get_port_rtnl.exit.i.for.body.i_crit_edge

rmnet_get_port_rtnl.exit.i.for.body.i_crit_edge:  ; preds = %rmnet_get_port_rtnl.exit.i
  br label %for.body.i

rmnet_get_port_rtnl.exit.i.rmnet_force_unassociate_device.exit_crit_edge: ; preds = %rmnet_get_port_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rmnet_force_unassociate_device.exit

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %rmnet_get_port_rtnl.exit.i.for.body.i_crit_edge
  %bkt_ep.052.i = phi i32 [ %inc.i, %for.inc25.i.for.body.i_crit_edge ], [ 0, %rmnet_get_port_rtnl.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rmnet_port, ptr %9, i32 0, i32 4, i32 %bkt_ep.052.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  %add.ptr.i = getelementptr i8, ptr %13, i32 -8
  %tobool5.not5053.i = icmp eq ptr %add.ptr.i, null
  %tobool5.not50.i = or i1 %tobool2.not.i, %tobool5.not5053.i
  br i1 %tobool5.not50.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

land.rhs6.i:                                      ; preds = %hlist_del_init_rcu.exit.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %ep.151.i = phi ptr [ %add.ptr21.i, %hlist_del_init_rcu.exit.i.land.rhs6.i_crit_edge ], [ %add.ptr.i, %for.body.i.land.rhs6.i_crit_edge ]
  %hlnode.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.151.i, i32 0, i32 2
  %14 = ptrtoint ptr %hlnode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hlnode.i, align 4
  %egress_dev.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.151.i, i32 0, i32 1
  %16 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %egress_dev.i, align 4
  call void @unregister_netdevice_queue(ptr noundef %17, ptr noundef nonnull %list.i) #6
  %18 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %egress_dev.i, align 4
  call void @netdev_upper_dev_unlink(ptr noundef %1, ptr noundef %19) #6
  %20 = ptrtoint ptr %ep.151.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ep.151.i, align 4
  %call13.i = call i32 @rmnet_vnd_dellink(i8 noundef zeroext %21, ptr noundef %9, ptr noundef nonnull %ep.151.i) #6
  %pprev.i.i.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.151.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs6.i.hlist_del_init_rcu.exit.i_crit_edge, label %if.then.i47.i

land.rhs6.i.hlist_del_init_rcu.exit.i_crit_edge:  ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del_init_rcu.exit.i

if.then.i47.i:                                    ; preds = %land.rhs6.i
  %24 = ptrtoint ptr %hlnode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hlnode.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %23, align 4
  %tobool.not.i7.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i7.i.i, label %if.then.i47.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i47.i.__hlist_del.exit.i.i_crit_edge:     ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i47.i.__hlist_del.exit.i.i_crit_edge
  %28 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hlist_del_init_rcu.exit.i

hlist_del_init_rcu.exit.i:                        ; preds = %__hlist_del.exit.i.i, %land.rhs6.i.hlist_del_init_rcu.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %ep.151.i) #6
  %tobool17.not.i = icmp eq ptr %15, null
  %add.ptr21.i = getelementptr i8, ptr %15, i32 -8
  %tobool5.not54.i = icmp eq ptr %add.ptr21.i, null
  %tobool5.not.i = or i1 %tobool17.not.i, %tobool5.not54.i
  br i1 %tobool5.not.i, label %hlist_del_init_rcu.exit.i.for.inc25.i_crit_edge, label %hlist_del_init_rcu.exit.i.land.rhs6.i_crit_edge

hlist_del_init_rcu.exit.i.land.rhs6.i_crit_edge:  ; preds = %hlist_del_init_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs6.i

hlist_del_init_rcu.exit.i.for.inc25.i_crit_edge:  ; preds = %hlist_del_init_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %hlist_del_init_rcu.exit.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %inc.i = add nuw nsw i32 %bkt_ep.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %for.end26.i, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end26.i:                                      ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rmnet_unregister_real_device(ptr noundef %1) #6
  call void @unregister_netdevice_many(ptr noundef nonnull %list.i) #6
  br label %rmnet_force_unassociate_device.exit

rmnet_force_unassociate_device.exit:              ; preds = %for.end26.i, %rmnet_get_port_rtnl.exit.i.rmnet_force_unassociate_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %call12 = tail call i32 @rmnet_vnd_validate_real_dev_mtu(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.bb11.sw.epilog_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %rmnet_force_unassociate_device.exit, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 32770, %sw.bb11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_vnd_validate_real_dev_mtu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 32, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 393, i32 11}
!6 = !{ptr @rmnet_link_ops, !7, !"rmnet_link_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 392, i32 22}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 409, i32 10}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 418, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rmnet_add_bridge.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 441, i32 3}
!16 = !{ptr @rmnet_add_bridge.__msg.5, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 446, i32 3}
!18 = !{ptr @rmnet_add_bridge.__msg.6, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 451, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 476, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rmnet_add_bridge.__UNIQUE_ID_ddebug469, !21, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 487, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rmnet_del_bridge.__UNIQUE_ID_ddebug470, !25, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_rmnet__471_515_rmnet_init6, !29, !"__initcall__kmod_rmnet__471_515_rmnet_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 515, i32 1}
!30 = !{ptr @__exitcall_rmnet_exit, !31, !"__exitcall_rmnet_exit", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 516, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias472, !33, !"__UNIQUE_ID_alias472", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 517, i32 1}
!34 = !{ptr @__UNIQUE_ID_file473, !35, !"__UNIQUE_ID_file473", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 518, i32 1}
!36 = !{ptr @__UNIQUE_ID_license474, !35, !"__UNIQUE_ID_license474", i1 false, i1 false}
!37 = !{ptr @rmnet_policy, !38, !"rmnet_policy", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 18, i32 32}
!39 = !{ptr @rmnet_rtnl_validate.__msg, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 278, i32 3}
!41 = !{ptr @rmnet_rtnl_validate.__msg.11, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 284, i32 3}
!43 = !{ptr @rmnet_newlink.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 128, i32 3}
!45 = !{ptr @rmnet_newlink.__msg.12, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 134, i32 3}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 170, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rmnet_newlink.__UNIQUE_ID_ddebug461, !48, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!51 = !{ptr @rmnet_changelink.__msg, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 320, i32 5}
!53 = !{ptr @rmnet_changelink.__msg.15, !54, !"__msg", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 345, i32 4}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 56, i32 2}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rmnet_register_real_device.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 61, i32 4}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 82, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rmnet_register_real_device.__UNIQUE_ID_ddebug460, !61, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 46, i32 2}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rmnet_unregister_real_device.__UNIQUE_ID_ddebug459, !65, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!68 = !{ptr @rmnet_dev_notifier, !69, !"rmnet_dev_notifier", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 268, i32 30}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_config.c", i32 254, i32 3}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rmnet_config_notify_cb.__UNIQUE_ID_ddebug462, !71, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2149457631}
!84 = !{i64 2148253078, i64 2148253083, i64 2148253096, i64 2148253140, i64 2148253174, i64 2148253195}
!85 = !{!"branch_weights", i32 2000, i32 1}
