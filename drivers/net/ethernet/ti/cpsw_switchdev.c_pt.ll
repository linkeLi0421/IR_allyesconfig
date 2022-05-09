; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_switchdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpsw_switchdev_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.148 }
%union.anon.148 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [72 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [104 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@cpsw_switchdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cpsw_switchdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cpsw_switchdev_register_notifiers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"register switchdev notifier fail ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpsw_switchdev_register_notifiers\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/ti/cpsw_switchdev.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_switchdev_register_notifiers._entry_ptr = internal global ptr @cpsw_switchdev_register_notifiers._entry, section ".printk_index", align 4
@cpsw_switchdev_bl_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cpsw_switchdev_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cpsw_switchdev_register_notifiers._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"register switchdev blocking notifier ret:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@cpsw_switchdev_register_notifiers._entry_ptr.7 = internal global ptr @cpsw_switchdev_register_notifiers._entry.5, section ".printk_index", align 4
@cpsw_switchdev_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@cpsw_port_attr_set.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti_cpsw_new\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpsw_port_attr_set\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"attr: id %u port: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@cpsw_port_attr_set.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stp state: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@cpsw_port_stp_state_set.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpsw_port_stp_state_set\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ale state: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@cpsw_port_attr_br_flags_set.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpsw_port_attr_br_flags_set\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BR_MCAST_FLOOD: %d port %u\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpsw_switchdev_event_work.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpsw_switchdev_event_work\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"cpsw_fdb_add: MACID = %pM vid = %u flags = %u %u -- port %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cpsw_switchdev_event_work.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"cpsw_fdb_del: MACID = %pM vid = %u flags = %u %u -- port %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpsw_port_obj_add.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_port_obj_add\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"obj_add: id %u port: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_port_vlans_add.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpsw_port_vlans_add\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VID add: %s: vid:%u flags:%X\0A\00", [34 x i8] zeroinitializer }, align 32
@cpsw_port_vlan_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to add vlan\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpsw_port_vlan_add\00", [45 x i8] zeroinitializer }, align 32
@cpsw_port_vlan_add._entry_ptr = internal global ptr @cpsw_port_vlan_add._entry, section ".printk_index", align 4
@cpsw_port_vlan_add.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VID add: %s: vid:%u ports:%X\0A\00", [34 x i8] zeroinitializer }, align 32
@cpsw_port_mdb_add.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_port_mdb_add\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MDB add: %s: vid %u:%pM  ports: %X\0A\00", [60 x i8] zeroinitializer }, align 32
@cpsw_port_obj_del.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_port_obj_del\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"obj_del: id %u port: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_port_vlan_del.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpsw_port_vlan_del\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VID del: %s: vid:%u ports:%X\0A\00", [34 x i8] zeroinitializer }, align 32
@cpsw_port_mdb_del.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_port_mdb_del\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MDB del: %s: vid %u:%pM  ports: %X\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.cpsw_port_attr_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"cpsw_switchdev_notifier\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 486, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 529, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"cpsw_switchdev_bl_notifier\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 519, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 536, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 456, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 96, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 105, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 53, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 70, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 394, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 410, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 322, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 258, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 195, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 207, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 284, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 349, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 244, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [44 x i8] c"../drivers/net/ethernet/ti/cpsw_switchdev.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 307, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [32 x i8] c"switch.table.cpsw_port_attr_set\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @cpsw_port_vlan_add._entry, ptr @cpsw_port_vlan_add._entry_ptr, ptr @cpsw_switchdev_register_notifiers._entry, ptr @cpsw_switchdev_register_notifiers._entry.5, ptr @cpsw_switchdev_register_notifiers._entry_ptr, ptr @cpsw_switchdev_register_notifiers._entry_ptr.7, ptr @cpsw_switchdev_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cpsw_switchdev_bl_notifier, ptr @.str.6, ptr @cpsw_switchdev_event.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @switch.table.cpsw_port_attr_set], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_switchdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_switchdev_register_notifiers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_switchdev_bl_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_switchdev_register_notifiers._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_switchdev_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_port_vlan_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpsw_port_attr_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_switchdev_register_notifiers(ptr nocapture noundef readonly %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @cpsw_switchdev_bl_notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %call1) #11
  %call8 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_switchdev_unregister_notifiers(ptr nocapture noundef readnone %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @cpsw_switchdev_bl_notifier) #8
  %call1 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_attr_set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.i = icmp eq i32 %call2, 0
  %sub.i = sub i32 1, %call2
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @cpsw_port_dev_check(ptr noundef %1) #8
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body33, !prof !84

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 453, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body33:                                        ; preds = %if.end6
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @cpsw_switchdev_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry37 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry37, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cpsw_switchdev_event_work, ptr %func, align 4
  %priv41 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %priv41 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %priv41, align 8
  %event42 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %event42 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %event, ptr %event42, align 4
  %event.off = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body33
  %fdb_info43 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %fdb_info43, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 6) #12
  %addr = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i83, ptr %addr, align 8
  %tobool48.not = icmp eq ptr %call7.i.i83, null
  br i1 %tobool48.not, label %err_addr_alloc, label %if.end50

if.end50:                                         ; preds = %sw.bb
  %addr53 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %12 = ptrtoint ptr %addr53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr53, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %call7.i.i83 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call7.i.i83, align 8
  %add.ptr.i84 = getelementptr i8, ptr %13, i32 4
  %17 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i84, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i83, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i, align 4
  %tobool.not.i85 = icmp eq ptr %1, null
  br i1 %tobool.not.i85, label %if.end50.dev_hold.exit_crit_edge, label %do.body1.i

if.end50.dev_hold.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end50
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, 1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !86
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !84

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #8, !srcloc !87
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end50.dev_hold.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %34 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

sw.default:                                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

err_addr_alloc:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_addr_alloc, %sw.default, %dev_hold.exit, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ 32770, %do.end ], [ 0, %sw.default ], [ 0, %dev_hold.exit ], [ 32770, %err_addr_alloc ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_port_dev_check(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_port_attr_set(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_attr_set.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_attr_set, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_attr_set.__UNIQUE_ID_ddebug497, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id4 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb27
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %.elt44 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %.elt44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack45 = load i32, ptr %.elt44, align 4
  %and.i = and i32 %.unpack45, -2081
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -22
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  %u7 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %10 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %u7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %12 = icmp ult i8 %11, 5
  br i1 %12, label %switch.lookup, label %sw.bb6.cpsw_port_stp_state_set.exit_crit_edge

sw.bb6.cpsw_port_stp_state_set.exit_crit_edge:    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpsw_port_stp_state_set.exit

switch.lookup:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %13 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpsw1.i, align 4
  %15 = sext i8 %11 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cpsw_port_attr_set, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %14, i32 0, i32 17
  %17 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale.i, align 4
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %19 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %emac_port.i, align 8
  %call.i = tail call i32 @cpsw_ale_control_set(ptr noundef %18, i32 noundef %20, i32 noundef 12, i32 noundef %switch.load) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_stp_state_set.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_attr_set, %if.then.i)) #8
          to label %cpsw_port_stp_state_set.exit [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_stp_state_set.__UNIQUE_ID_ddebug495, ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %switch.load) #8
  br label %cpsw_port_stp_state_set.exit

cpsw_port_stp_state_set.exit:                     ; preds = %if.then.i, %switch.lookup, %sw.bb6.cpsw_port_stp_state_set.exit_crit_edge
  %retval.0.i49 = phi i32 [ -95, %sw.bb6.cpsw_port_stp_state_set.exit_crit_edge ], [ %call.i, %if.then.i ], [ %call.i, %switch.lookup ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_attr_set.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_attr_set, %if.then21)) #8
          to label %sw.epilog [label %if.then21], !srcloc !88

if.then21:                                        ; preds = %cpsw_port_stp_state_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr i8, ptr %ndev, i32 2308
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 4
  %25 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %u7, align 4
  %conv = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_attr_set.__UNIQUE_ID_ddebug498, ptr noundef %24, ptr noundef nonnull @.str.12, i32 noundef %conv) #8
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end
  %u28 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %27 = ptrtoint ptr %u28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %u28, align 4
  %.elt41 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %.elt41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack42 = load i32, ptr %.elt41, align 4
  %cpsw1.i50 = getelementptr i8, ptr %ndev, i32 3468
  %29 = ptrtoint ptr %cpsw1.i50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpsw1.i50, align 4
  %and.i51 = and i32 %.unpack42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %sw.bb27.sw.epilog_crit_edge, label %if.then.i53

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i53:                                      ; preds = %sw.bb27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_attr_br_flags_set.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_attr_set, %if.then8.i)) #8
          to label %do.end.i [label %if.then8.i], !srcloc !88

if.then8.i:                                       ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i54 = getelementptr i8, ptr %ndev, i32 2308
  %31 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i54, align 4
  %33 = lshr i32 %.unpack, 11
  %.lobit.i = and i32 %33, 1
  %emac_port.i55 = getelementptr i8, ptr %ndev, i32 3464
  %34 = ptrtoint ptr %emac_port.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %emac_port.i55, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_attr_br_flags_set.__UNIQUE_ID_ddebug496, ptr noundef %32, ptr noundef nonnull @.str.16, i32 noundef %.lobit.i, i32 noundef %35) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %if.then.i53
  %ale.i56 = getelementptr inbounds %struct.cpsw_common, ptr %30, i32 0, i32 17
  %36 = ptrtoint ptr %ale.i56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ale.i56, align 4
  %emac_port11.i = getelementptr i8, ptr %ndev, i32 3464
  %38 = ptrtoint ptr %emac_port11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %emac_port11.i, align 8
  %shl.i = shl nuw i32 1, %39
  %40 = and i32 %.unpack, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.i = icmp ne i32 %40, 0
  tail call void @cpsw_ale_set_unreg_mcast(ptr noundef %37, i32 noundef %shl.i, i1 noundef zeroext %tobool12.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %sw.bb27.sw.epilog_crit_edge, %if.then21, %cpsw_port_stp_state_set.exit, %sw.bb, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i49, %if.then21 ], [ %..i, %sw.bb ], [ -95, %do.end.sw.epilog_crit_edge ], [ %retval.0.i49, %cpsw_port_stp_state_set.exit ], [ 0, %sw.bb27.sw.epilog_crit_edge ], [ 0, %do.end.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_switchdev_event_work(ptr noundef %work) #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %cpsw2 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw2, align 4
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  tail call void @rtnl_lock() #8
  %event = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb32
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_switchdev_event_work, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %addr = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid, align 4
  %conv = zext i16 %14 to i32
  %added_by_user = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %added_by_user, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  %conv6 = zext i8 %bf.lshr to i32
  %bf.lshr8 = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr8, 1
  %conv9 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug506, ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef %12, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %added_by_user10 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %added_by_user10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load11 = load i8, ptr %added_by_user10, align 2
  %17 = and i8 %bf.load11, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %17)
  %18 = icmp eq i8 %17, -128
  br i1 %18, label %if.end20, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 3
  %addr21 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr21, align 4
  %bcmp131 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr, ptr noundef dereferenceable(6) %20, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp131)
  %cmp = icmp eq i32 %bcmp131, 0
  %spec.select = select i1 %cmp, i32 0, i32 %5
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  %vid27 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %vid27 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool29.not = icmp eq i16 %24, 0
  %cond = select i1 %tobool29.not, i32 0, i32 8
  %call31 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %22, ptr noundef %20, i32 noundef %spec.select, i32 noundef %cond, i16 noundef zeroext %24) #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #8
  %27 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %28 = ptrtoint ptr %addr21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr21, align 4
  %addr1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %addr1.i, align 4
  %31 = ptrtoint ptr %vid27 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vid27, align 4
  %vid2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %33 = ptrtoint ptr %vid2.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vid2.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %34 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %offloaded.i, align 2
  %call.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %26, ptr noundef nonnull %info.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #8
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_switchdev_event_work, %if.then46)) #8
          to label %do.end62 [label %if.then46], !srcloc !88

if.then46:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  %addr48 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %addr48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr48, align 4
  %vid49 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %vid49 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid49, align 4
  %conv50 = zext i16 %40 to i32
  %added_by_user51 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %added_by_user51 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load52 = load i8, ptr %added_by_user51, align 2
  %bf.lshr53 = lshr i8 %bf.load52, 7
  %conv54 = zext i8 %bf.lshr53 to i32
  %bf.lshr57 = lshr i8 %bf.load52, 5
  %bf.clear58 = and i8 %bf.lshr57, 1
  %conv59 = zext i8 %bf.clear58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug507, ptr noundef %36, ptr noundef nonnull @.str.19, ptr noundef %38, i32 noundef %conv50, i32 noundef %conv54, i32 noundef %conv59, i32 noundef %5) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then46, %sw.bb32
  %added_by_user63 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %added_by_user63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load64 = load i8, ptr %added_by_user63, align 2
  %43 = and i8 %bf.load64, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %43)
  %44 = icmp eq i8 %43, -128
  br i1 %44, label %if.end75, label %do.end62.sw.epilog_crit_edge

do.end62.sw.epilog_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end75:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  %mac_addr76 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 3
  %addr78 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %addr78 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %addr78, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr76, ptr noundef dereferenceable(6) %46, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp80 = icmp eq i32 %bcmp, 0
  %spec.select133 = select i1 %cmp80, i32 0, i32 %5
  %ale84 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %47 = ptrtoint ptr %ale84 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale84, align 4
  %vid86 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %vid86 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vid86, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool88.not = icmp eq i16 %50, 0
  %cond89 = select i1 %tobool88.not, i32 0, i32 8
  %call91 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %48, ptr noundef %46, i32 noundef %spec.select133, i32 noundef %cond89, i16 noundef zeroext %50) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end75, %do.end62.sw.epilog_crit_edge, %if.end20, %do.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @rtnl_unlock() #8
  %addr93 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %addr93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr93, align 4
  call void @kfree(ptr noundef %52) #8
  call void @kfree(ptr noundef %work) #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %sw.epilog.dev_put.exit_crit_edge, label %do.body1.i

sw.epilog.dev_put.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

do.body1.i:                                       ; preds = %sw.epilog
  %55 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !85
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 118
  %56 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcpu_refcnt.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %64, %58
  %65 = inttoptr i32 %add.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add13.i = add i32 %67, -1
  store i32 %add13.i, ptr %65, align 4
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !86
  %and.i.i.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !84

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #8, !srcloc !87
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %sw.epilog.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_unreg_mcast(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_switchdev_blocking_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_obj_add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_obj_del) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i17 = icmp eq i32 %call4, 0
  %sub.i18 = sub i32 1, %call4
  %or.i19 = or i32 %sub.i18, 32768
  %retval.0.i20 = select i1 %tobool.not.i17, i32 1, i32 %or.i19
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_attr_set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i21 = icmp eq i32 %call7, 0
  %sub.i22 = sub i32 1, %call7
  %or.i23 = or i32 %sub.i22, 32768
  %retval.0.i24 = select i1 %tobool.not.i21, i32 1, i32 %or.i23
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %sw.bb6 ], [ %retval.0.i20, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_port_obj_add(ptr noundef %ndev, ptr nocapture noundef readnone %ctx, ptr noundef %obj, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_obj_add.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_obj_add, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_obj_add.__UNIQUE_ID_ddebug504, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id8 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id8, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.bb10_crit_edge
    i32 3, label %do.end.sw.bb10_crit_edge27
  ]

do.end.sw.bb10_crit_edge27:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 4
  %11 = and i16 %10, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i = icmp ne i16 %11, 0
  %orig_dev1.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %12 = ptrtoint ptr %orig_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %orig_dev1.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %15, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %16 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.i = icmp ne i16 %16, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_vlans_add.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_obj_add, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !88

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %21 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid.i, align 2
  %conv13.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i, align 4
  %conv15.i = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_vlans_add.__UNIQUE_ID_ddebug501, ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %20, i32 noundef %conv13.i, i32 noundef %conv15.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  br i1 %tobool.i.not.i, label %do.end.i.if.end23.i_crit_edge, label %land.lhs.true.i

do.end.i.if.end23.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i, align 4
  %27 = and i16 %26, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool21.not.i = icmp eq i16 %27, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %do.end.i.if.end23.i_crit_edge
  %vid26.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %28 = ptrtoint ptr %vid26.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid26.i, align 2
  %call27.i = tail call fastcc i32 @cpsw_port_vlan_add(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool6.i, i16 noundef zeroext %29, ptr noundef %13) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge27
  %orig_dev1.i19 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %30 = ptrtoint ptr %orig_dev1.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %orig_dev1.i19, align 4
  %priv_flags.i.i20 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %priv_flags.i.i20 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %priv_flags.i.i20, align 16
  %and.i.i21 = and i64 %33, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i21)
  %tobool.i.not.i22 = icmp eq i64 %and.i.i21, 0
  %cpsw2.i = getelementptr i8, ptr %ndev, i32 3468
  %34 = ptrtoint ptr %cpsw2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpsw2.i, align 4
  br i1 %tobool.i.not.i22, label %if.else.i, label %sw.bb10.if.end.i_crit_edge

sw.bb10.if.end.i_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %36 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %emac_port.i, align 8
  %shl.i = shl nuw i32 1, %37
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb10.if.end.i_crit_edge
  %port_mask.0.i = phi i32 [ %shl.i, %if.else.i ], [ 1, %sw.bb10.if.end.i_crit_edge ]
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %35, i32 0, i32 17
  %38 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ale.i, align 4
  %addr.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %vid.i23 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %40 = ptrtoint ptr %vid.i23 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid.i23, align 2
  %call3.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %39, ptr noundef %addr.i, i32 noundef %port_mask.0.i, i32 noundef 8, i16 noundef zeroext %41, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_mdb_add.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_obj_add, %if.then9.i)) #8
          to label %sw.epilog [label %if.then9.i], !srcloc !88

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i24 = getelementptr i8, ptr %ndev, i32 2308
  %42 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i24, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 128
  %46 = ptrtoint ptr %vid.i23 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vid.i23, align 2
  %conv.i = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_mdb_add.__UNIQUE_ID_ddebug502, ptr noundef %43, ptr noundef nonnull @.str.28, ptr noundef %45, i32 noundef %conv.i, ptr noundef %addr.i, i32 noundef %port_mask.0.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9.i, %if.end.i, %if.end23.i, %land.lhs.true.i.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %do.end.sw.epilog_crit_edge ], [ %call27.i, %if.end23.i ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ %call3.i, %if.end.i ], [ %call3.i, %if.then9.i ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_port_obj_del(ptr noundef %ndev, ptr nocapture noundef readnone %ctx, ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_obj_del.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_obj_del, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_obj_del.__UNIQUE_ID_ddebug505, ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id8 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id8, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.bb11_crit_edge
    i32 3, label %do.end.sw.bb11_crit_edge21
  ]

do.end.sw.bb11_crit_edge21:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %9 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid, align 2
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %11 = ptrtoint ptr %orig_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %orig_dev, align 4
  %call10 = tail call fastcc i32 @cpsw_port_vlan_del(ptr noundef %add.ptr.i, i16 noundef zeroext %10, ptr noundef %12)
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge21
  %orig_dev1.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %13 = ptrtoint ptr %orig_dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %orig_dev1.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cpsw2.i = getelementptr i8, ptr %ndev, i32 3468
  %17 = ptrtoint ptr %cpsw2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpsw2.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %sw.bb11.if.end.i_crit_edge

sw.bb11.if.end.i_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %19 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %emac_port.i, align 8
  %shl.i = shl nuw i32 1, %20
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb11.if.end.i_crit_edge
  %del_mask.0.i = phi i32 [ %shl.i, %if.else.i ], [ 1, %sw.bb11.if.end.i_crit_edge ]
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %18, i32 0, i32 17
  %21 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale.i, align 4
  %addr.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %23 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid.i, align 2
  %call3.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %22, ptr noundef %addr.i, i32 noundef %del_mask.0.i, i32 noundef 8, i16 noundef zeroext %24) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_mdb_del.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_obj_del, %if.then9.i)) #8
          to label %sw.epilog [label %if.then9.i], !srcloc !88

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 128
  %29 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid.i, align 2
  %conv.i = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_mdb_del.__UNIQUE_ID_ddebug503, ptr noundef %26, ptr noundef nonnull @.str.34, ptr noundef %28, i32 noundef %conv.i, ptr noundef %addr.i, i32 noundef %del_mask.0.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9.i, %if.end.i, %sw.bb, %do.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call10, %sw.bb ], [ -95, %do.end.sw.epilog_crit_edge ], [ %call3.i, %if.end.i ], [ %call3.i, %if.then9.i ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_port_vlan_add(ptr noundef %priv, i1 noundef zeroext %untag, i1 noundef zeroext %pvid, i16 noundef zeroext %vid, ptr nocapture noundef readonly %orig_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cpsw3 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw3, align 4
  br i1 %tobool.i.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  %shl = shl nuw i32 1, %5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 128
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %unreg_mcast_mask.0 = phi i32 [ 0, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %port_mask.0 = phi i32 [ %shl, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %orig_dev.pn = phi ptr [ %7, %if.else ], [ %orig_dev, %entry.if.end_crit_edge ]
  %flags.0.in = getelementptr inbounds %struct.net_device, ptr %orig_dev.pn, i32 0, i32 14
  %8 = ptrtoint ptr %flags.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %flags.0 = load i32, ptr %flags.0.in, align 8
  %and = and i32 %flags.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 %port_mask.0
  %untag_mask.0 = select i1 %untag, i32 %port_mask.0, i32 0
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale, align 4
  %call12 = tail call i32 @cpsw_ale_vlan_add_modify(ptr noundef %10, i16 noundef zeroext %vid, i32 noundef %port_mask.0, i32 noundef %untag_mask.0, i32 noundef %spec.select, i32 noundef %unreg_mcast_mask.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %tobool.i.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %call19 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %14, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  br i1 %pvid, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %15 = ptrtoint ptr %cpsw3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpsw3, align 4
  %conv.i = zext i16 %vid to i32
  %emac_port.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %17 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %emac_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %20)
  %cmp.i = icmp eq i32 %20, 1638666
  %spec.store.select.i = select i1 %cmp.i, i32 12, i32 20
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 13
  %21 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slaves.i, align 4
  %sub.i = add i32 %18, -1
  %add.ptr.i = getelementptr %struct.cpsw_slave, ptr %22, i32 %sub.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %spec.store.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #8, !srcloc !89
  br label %cpsw_set_pvid.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %host_port_regs.i = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 7
  %26 = ptrtoint ptr %host_port_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_port_regs.i, align 4
  %port_vlan.i = getelementptr inbounds %struct.cpsw_host_regs, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port_vlan.i, i32 %28) #8, !srcloc !89
  br label %cpsw_set_pvid.exit

cpsw_set_pvid.exit:                               ; preds = %if.else.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_vlan_add.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_vlan_add, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !88

if.then30:                                        ; preds = %cpsw_set_pvid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 4
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_vlan_add.__UNIQUE_ID_ddebug499, ptr noundef %30, ptr noundef nonnull @.str.26, ptr noundef %32, i32 noundef %conv.i, i32 noundef %port_mask.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %cpsw_set_pvid.exit, %if.end20.cleanup_crit_edge, %do.end
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_vlan_add_modify(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_port_vlan_del(ptr noundef %priv, i16 noundef zeroext %vid, ptr nocapture noundef readonly %orig_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  br i1 %tobool.i.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  %call2 = tail call i32 @cpsw_ale_vlan_del_modify(ptr noundef %5, i16 noundef zeroext %vid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %6 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %emac_port, align 8
  %shl = shl nuw i32 1, %7
  %ale64 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %ale64 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ale64, align 4
  %call265 = tail call i32 @cpsw_ale_vlan_del_modify(ptr noundef %9, i16 noundef zeroext %vid, i32 noundef %shl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp.not66 = icmp eq i32 %call265, 0
  br i1 %cmp.not66, label %if.end.thread.if.end9_crit_edge, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread.if.end9_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %call8 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %11, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.thread.if.end9_crit_edge
  %port_mask.06776 = phi i32 [ 1, %if.then6 ], [ %shl, %if.end.thread.if.end9_crit_edge ]
  %ale69 = phi ptr [ %ale, %if.then6 ], [ %ale64, %if.end.thread.if.end9_crit_edge ]
  %conv = zext i16 %vid to i32
  %12 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpsw1, align 4
  %emac_port.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %14 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %emac_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %17)
  %cmp.i = icmp eq i32 %17, 1638666
  %spec.store.select.i = select i1 %cmp.i, i32 12, i32 20
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %13, i32 0, i32 13
  %18 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves.i, align 4
  %sub.i = add i32 %15, -1
  %add.ptr.i = getelementptr %struct.cpsw_slave, ptr %19, i32 %sub.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %spec.store.select.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !91
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  br label %cpsw_get_pvid.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %host_port_regs.i = getelementptr inbounds %struct.cpsw_common, ptr %13, i32 0, i32 7
  %24 = ptrtoint ptr %host_port_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host_port_regs.i, align 4
  %port_vlan.i = getelementptr inbounds %struct.cpsw_host_regs, ptr %25, i32 0, i32 3
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %port_vlan.i) #8, !srcloc !91
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  br label %cpsw_get_pvid.exit

cpsw_get_pvid.exit:                               ; preds = %if.else.i, %if.then.i
  %pvid.0.i = phi i32 [ %23, %if.then.i ], [ %27, %if.else.i ]
  %28 = trunc i32 %pvid.0.i to i16
  %conv.i = and i16 %28, 4095
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %vid)
  %cmp12 = icmp eq i16 %conv.i, %vid
  br i1 %cmp12, label %if.then14, label %cpsw_get_pvid.exit.if.end15_crit_edge

cpsw_get_pvid.exit.if.end15_crit_edge:            ; preds = %cpsw_get_pvid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %cpsw_get_pvid.exit
  %29 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpsw1, align 4
  %31 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %emac_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i = icmp eq i32 %32, 0
  br i1 %tobool4.not.i, label %if.else.i62, label %if.then.i59

if.then.i59:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %version.i52 = getelementptr inbounds %struct.cpsw_common, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %version.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %34)
  %cmp.i53 = icmp eq i32 %34, 1638666
  %spec.store.select.i54 = select i1 %cmp.i53, i32 12, i32 20
  %slaves.i55 = getelementptr inbounds %struct.cpsw_common, ptr %30, i32 0, i32 13
  %35 = ptrtoint ptr %slaves.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slaves.i55, align 4
  %sub.i56 = add i32 %32, -1
  %add.ptr.i57 = getelementptr %struct.cpsw_slave, ptr %36, i32 %sub.i56
  %37 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i57, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %38, i32 %spec.store.select.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 0) #8, !srcloc !89
  br label %if.end15

if.else.i62:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %host_port_regs.i60 = getelementptr inbounds %struct.cpsw_common, ptr %30, i32 0, i32 7
  %39 = ptrtoint ptr %host_port_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_port_regs.i60, align 4
  %port_vlan.i61 = getelementptr inbounds %struct.cpsw_host_regs, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port_vlan.i61, i32 0) #8, !srcloc !89
  br label %if.end15

if.end15:                                         ; preds = %if.else.i62, %if.then.i59, %cpsw_get_pvid.exit.if.end15_crit_edge
  %41 = ptrtoint ptr %ale69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale69, align 4
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 99
  %call18 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %42, ptr noundef %broadcast, i32 noundef %port_mask.06776, i32 noundef 8, i16 noundef zeroext %vid) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_vlan_del.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_port_vlan_del, %if.then24)) #8
          to label %cleanup [label %if.then24], !srcloc !88

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_vlan_del.__UNIQUE_ID_ddebug500, ptr noundef %46, ptr noundef nonnull @.str.32, ptr noundef %48, i32 noundef %conv, i32 noundef %port_mask.06776) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end15, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %call270 = phi i32 [ %call265, %if.end.thread.cleanup_crit_edge ], [ 0, %if.then24 ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end15 ]
  ret i32 %call270
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_vlan_del_modify(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 529, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpsw_switchdev_register_notifiers._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpsw_switchdev_register_notifiers._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 536, i32 3}
!10 = !{ptr @cpsw_switchdev_register_notifiers._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cpsw_switchdev_register_notifiers._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @cpsw_switchdev_notifier, !13, !"cpsw_switchdev_notifier", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 486, i32 30}
!14 = !{ptr @cpsw_switchdev_event.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 456, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 96, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cpsw_port_attr_set.__UNIQUE_ID_ddebug497, !18, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 105, i32 3}
!24 = !{ptr @cpsw_port_attr_set.__UNIQUE_ID_ddebug498, !23, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 53, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cpsw_port_stp_state_set.__UNIQUE_ID_ddebug495, !26, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 70, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cpsw_port_attr_br_flags_set.__UNIQUE_ID_ddebug496, !30, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 394, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug506, !34, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 410, i32 3}
!39 = !{ptr @cpsw_switchdev_event_work.__UNIQUE_ID_ddebug507, !38, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!40 = !{ptr @cpsw_switchdev_bl_notifier, !41, !"cpsw_switchdev_bl_notifier", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 519, i32 30}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 322, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cpsw_port_obj_add.__UNIQUE_ID_ddebug504, !43, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 258, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cpsw_port_vlans_add.__UNIQUE_ID_ddebug501, !47, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 195, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cpsw_port_vlan_add._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cpsw_port_vlan_add._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 207, i32 2}
!57 = !{ptr @cpsw_port_vlan_add.__UNIQUE_ID_ddebug499, !56, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 284, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cpsw_port_mdb_add.__UNIQUE_ID_ddebug502, !59, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 349, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cpsw_port_obj_del.__UNIQUE_ID_ddebug505, !63, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 244, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cpsw_port_vlan_del.__UNIQUE_ID_ddebug500, !67, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/ti/cpsw_switchdev.c", i32 307, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cpsw_port_mdb_del.__UNIQUE_ID_ddebug503, !71, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 772203, i64 772264}
!86 = !{i64 774935}
!87 = !{i64 775220}
!88 = !{i64 2148861537, i64 2148861542, i64 2148861555, i64 2148861599, i64 2148861633, i64 2148861654}
!89 = !{i64 6054946}
!90 = !{i64 2158019624}
!91 = !{i64 6055364}
!92 = !{i64 2158019318}
