; ModuleID = '/llk/IR_all_yes/drivers/net/netconsole.c_pt.bc'
source_filename = "../drivers/net/netconsole.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.netconsole_target = type { %struct.list_head, %struct.config_item, i8, i8, %struct.netpoll }
%struct.netpoll = type { ptr, ptr, [16 x i8], ptr, %union.inet_addr, %union.inet_addr, i8, i16, i16, [6 x i8] }
%union.inet_addr = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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

@__UNIQUE_ID_author341 = internal constant [61 x i8] c"netconsole.author=Maintainer: Matt Mackall <mpm@selenic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [61 x i8] c"netconsole.description=Console driver for network interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [39 x i8] c"netconsole.file=drivers/net/netconsole\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [23 x i8] c"netconsole.license=GPL\00", section ".modinfo", align 1
@__param_str_netconsole = internal constant [22 x i8] c"netconsole.netconsole\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_netconsole = internal constant %struct.kparam_string { i32 256, ptr @config }, align 4
@__param_netconsole = internal constant %struct.kernel_param { ptr @__param_str_netconsole, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_netconsole } }, section "__param", align 4
@__UNIQUE_ID_netconsoletype345 = internal constant [38 x i8] c"netconsole.parmtype=netconsole:string\00", section ".modinfo", align 1
@__UNIQUE_ID_netconsole346 = internal constant [99 x i8] c"netconsole.parm=netconsole: netconsole=[src-port]@[src-ip]/[dev],[tgt-port]@<tgt-ip>/[tgt-macaddr]\00", section ".modinfo", align 1
@__param_str_oops_only = internal constant [21 x i8] c"netconsole.oops_only\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@oops_only = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_oops_only = internal constant %struct.kernel_param { ptr @__param_str_oops_only, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.97 { ptr @oops_only } }, section "__param", align 4
@__UNIQUE_ID_oops_onlytype347 = internal constant [35 x i8] c"netconsole.parmtype=oops_only:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_oops_only348 = internal constant [49 x i8] c"netconsole.parm=oops_only:Only log oops messages\00", section ".modinfo", align 1
@__setup_str_option_setup = internal constant [12 x i8] c"netconsole=\00", section ".init.rodata", align 1
@__setup_option_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_option_setup, ptr @option_setup, i32 0 }, section ".init.setup", align 4
@netconsole_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"netconsole\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @netconsole_subsys_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@netconsole_ext = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"netcon_ext\00\00\00\00\00\00", ptr @write_ext_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 64, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@netconsole = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"netcon\00\00\00\00\00\00\00\00\00\00", ptr @write_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 4, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@netconsole_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netconsole_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@target_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @target_list, ptr @target_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_netconsole__353_973_init_netconsole7 = internal global ptr @init_netconsole, section ".initcall7.init", align 4
@__exitcall_cleanup_netconsole = internal global ptr @cleanup_netconsole, section ".exitcall.exit", align 4
@config = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@netconsole_subsys_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @netconsole_subsys_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@netconsole_subsys_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @make_netconsole_target, ptr null, ptr null, ptr null, ptr @drop_netconsole_target }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netconsole\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eth0\00", [27 x i8] zeroinitializer }, align 32
@netconsole_target_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @netconsole_target_item_ops, ptr null, ptr @netconsole_target_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@netconsole_target_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @netconsole_target_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@netconsole_target_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @attr_enabled, ptr @attr_extended, ptr @attr_dev_name, ptr @attr_local_port, ptr @attr_remote_port, ptr @attr_local_ip, ptr @attr_remote_ip, ptr @attr_local_mac, ptr @attr_remote_mac, ptr null], [56 x i8] zeroinitializer }, align 32
@attr_enabled = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 420, ptr @enabled_show, ptr @enabled_store }, [44 x i8] zeroinitializer }, align 32
@attr_extended = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @extended_show, ptr @extended_store }, [44 x i8] zeroinitializer }, align 32
@attr_dev_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @dev_name_show, ptr @dev_name_store }, [44 x i8] zeroinitializer }, align 32
@attr_local_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @local_port_show, ptr @local_port_store }, [44 x i8] zeroinitializer }, align 32
@attr_remote_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @remote_port_show, ptr @remote_port_store }, [44 x i8] zeroinitializer }, align 32
@attr_local_ip = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 420, ptr @local_ip_show, ptr @local_ip_store }, [44 x i8] zeroinitializer }, align 32
@attr_remote_ip = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 420, ptr @remote_ip_show, ptr @remote_ip_store }, [44 x i8] zeroinitializer }, align 32
@attr_local_mac = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.35, ptr null, i16 292, ptr @local_mac_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@attr_remote_mac = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.37, ptr null, i16 420, ptr @remote_mac_show, ptr @remote_mac_store }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dynamic_netconsole_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dynamic_netconsole_mutex, i64 52), ptr getelementptr (i8, ptr @dynamic_netconsole_mutex, i64 52) }, ptr @dynamic_netconsole_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@enabled_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016netconsole: network logging has already %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enabled_store\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/netconsole.c\00", [39 x i8] zeroinitializer }, align 32
@enabled_store._entry_ptr = internal global ptr @enabled_store._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"started\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@enabled_store._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016netconsole: network logging started\0A\00", [57 x i8] zeroinitializer }, align 32
@enabled_store._entry_ptr.11 = internal global ptr @enabled_store._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dynamic_netconsole_mutex.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dynamic_netconsole_mutex\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extended\00", [23 x i8] zeroinitializer }, align 32
@extended_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013netconsole: target (%s) is enabled, disable to update parameters\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extended_store\00", [17 x i8] zeroinitializer }, align 32
@extended_store._entry_ptr = internal global ptr @extended_store._entry, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dev_name_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.19, ptr @.str.6, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev_name_store\00", [17 x i8] zeroinitializer }, align 32
@dev_name_store._entry_ptr = internal global ptr @dev_name_store._entry, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"local_port\00", [21 x i8] zeroinitializer }, align 32
@local_port_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.21, ptr @.str.6, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"local_port_store\00", [47 x i8] zeroinitializer }, align 32
@local_port_store._entry_ptr = internal global ptr @local_port_store._entry, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remote_port\00", [20 x i8] zeroinitializer }, align 32
@remote_port_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.6, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remote_port_store\00", [46 x i8] zeroinitializer }, align 32
@remote_port_store._entry_ptr = internal global ptr @remote_port_store._entry, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"local_ip\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%pI6c\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@local_ip_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.27, ptr @.str.6, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"local_ip_store\00", [17 x i8] zeroinitializer }, align 32
@local_ip_store._entry_ptr = internal global ptr @local_ip_store._entry, section ".printk_index", align 4
@local_ip_store._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013netconsole: invalid IPv6 address at: <%c>\0A\00", [51 x i8] zeroinitializer }, align 32
@local_ip_store._entry_ptr.30 = internal global ptr @local_ip_store._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"remote_ip\00", [22 x i8] zeroinitializer }, align 32
@remote_ip_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.32, ptr @.str.6, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"remote_ip_store\00", [16 x i8] zeroinitializer }, align 32
@remote_ip_store._entry_ptr = internal global ptr @remote_ip_store._entry, section ".printk_index", align 4
@remote_ip_store._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.32, ptr @.str.6, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@remote_ip_store._entry_ptr.34 = internal global ptr @remote_ip_store._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"local_mac\00", [22 x i8] zeroinitializer }, align 32
@local_mac_show.bcast = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remote_mac\00", [21 x i8] zeroinitializer }, align 32
@remote_mac_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.38, ptr @.str.6, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"remote_mac_store\00", [47 x i8] zeroinitializer }, align 32
@remote_mac_store._entry_ptr = internal global ptr @remote_mac_store._entry, section ".printk_index", align 4
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"target_list_lock\00", [47 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@send_ext_msg_udp.buf = internal global { [1000 x i8], [248 x i8] } zeroinitializer, align 32
@send_ext_msg_udp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",ncfrag=%d/%d;\00", [17 x i8] zeroinitializer }, align 32
@send_ext_msg_udp.__already_done.41 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"had an event\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unregistered\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"released slaves\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"is joining a master device\00", [37 x i8] zeroinitializer }, align 32
@netconsole_netdev_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016netconsole: network logging stopped on interface %s as it %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netconsole_netdev_event\00", [40 x i8] zeroinitializer }, align 32
@netconsole_netdev_event._entry_ptr = internal global ptr @netconsole_netdev_event._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@init_netconsole._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.49, ptr @.str.6, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_netconsole\00", [16 x i8] zeroinitializer }, align 32
@init_netconsole._entry_ptr = internal global ptr @init_netconsole._entry, section ".printk_index", align 4
@init_netconsole._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.6, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013netconsole: cleaning up\0A\00", [37 x i8] zeroinitializer }, align 32
@init_netconsole._entry_ptr.52 = internal global ptr @init_netconsole._entry.50, section ".printk_index", align 4
@dynamic_netconsole_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&netconsole_subsys.su_mutex\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 11, i64 18, i64 20]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 11, i64 18, i64 20]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 18, i64 20]
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"oops_only\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 51, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"netconsole_subsys\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 680, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"netconsole_ext\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 870, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"netconsole\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 876, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"netconsole_netdev_notifier\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 756, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"target_list\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 65, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 47, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"netconsole_subsys_type\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 674, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"netconsole_subsys_group_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 669, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 632, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 633, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"netconsole_target_type\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 608, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"target_list_lock\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"netconsole_target_item_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 604, i32 40 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"netconsole_target_attrs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 582, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"attr_enabled\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"attr_extended\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"attr_dev_name\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"attr_local_port\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"attr_remote_port\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"attr_local_ip\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"attr_remote_ip\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"attr_local_mac\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"attr_remote_mac\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 572, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 249, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"dynamic_netconsole_mutex\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 329, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 350, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 110, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 573, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 380, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 574, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 259, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 411, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 575, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 436, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 576, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 459, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 577, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 277, i32 35 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 279, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 481, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 490, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 578, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 517, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 526, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 579, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 295, i32 18 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 297, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 580, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 554, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 68, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 773, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 805, i32 7 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 736, i32 21 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 739, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 742, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 745, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 748, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 891, i32 42 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 921, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 929, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [28 x i8] c"../drivers/net/netconsole.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 115, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_netconsole346, ptr @__UNIQUE_ID_netconsoletype345, ptr @__UNIQUE_ID_oops_only348, ptr @__UNIQUE_ID_oops_onlytype347, ptr @__exitcall_cleanup_netconsole, ptr @__initcall__kmod_netconsole__353_973_init_netconsole7, ptr @__param_netconsole, ptr @__param_oops_only, ptr @__setup_option_setup, ptr @cleanup_netconsole, ptr @dev_name_store._entry, ptr @dev_name_store._entry_ptr, ptr @dynamic_netconsole_exit, ptr @enabled_store._entry, ptr @enabled_store._entry.9, ptr @enabled_store._entry_ptr, ptr @enabled_store._entry_ptr.11, ptr @extended_store._entry, ptr @extended_store._entry_ptr, ptr @init_netconsole._entry, ptr @init_netconsole._entry.50, ptr @init_netconsole._entry_ptr, ptr @init_netconsole._entry_ptr.52, ptr @local_ip_store._entry, ptr @local_ip_store._entry.28, ptr @local_ip_store._entry_ptr, ptr @local_ip_store._entry_ptr.30, ptr @local_port_store._entry, ptr @local_port_store._entry_ptr, ptr @netconsole_netdev_event._entry, ptr @netconsole_netdev_event._entry_ptr, ptr @remote_ip_store._entry, ptr @remote_ip_store._entry.33, ptr @remote_ip_store._entry_ptr, ptr @remote_ip_store._entry_ptr.34, ptr @remote_mac_store._entry, ptr @remote_mac_store._entry_ptr, ptr @remote_port_store._entry, ptr @remote_port_store._entry_ptr, ptr @oops_only, ptr @netconsole_subsys, ptr @netconsole_ext, ptr @netconsole, ptr @netconsole_netdev_notifier, ptr @target_list, ptr @config, ptr @netconsole_subsys_type, ptr @netconsole_subsys_group_ops, ptr @.str, ptr @.str.1, ptr @netconsole_target_type, ptr @target_list_lock, ptr @netconsole_target_item_ops, ptr @netconsole_target_attrs, ptr @attr_enabled, ptr @attr_extended, ptr @attr_dev_name, ptr @attr_local_port, ptr @attr_remote_port, ptr @attr_local_ip, ptr @attr_remote_ip, ptr @attr_local_mac, ptr @attr_remote_mac, ptr @.str.2, ptr @.str.3, ptr @dynamic_netconsole_mutex, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @local_mac_show.bcast, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @send_ext_msg_udp.buf, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @dynamic_netconsole_init.__key, ptr @.str.53], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops_only to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_ext to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_subsys_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_subsys_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_target_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_target_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_target_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_enabled to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_extended to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_dev_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_local_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_remote_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_local_ip to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_remote_ip to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_local_mac to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_remote_mac to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_netconsole_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enabled_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enabled_store._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extended_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_name_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_port_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_port_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_ip_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_ip_store._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_ip_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_ip_store._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_mac_show.bcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_mac_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_ext_msg_udp.buf to i32), i32 1000, i32 1248, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netconsole_netdev_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_netconsole._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_netconsole._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_netconsole_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @option_setup(ptr noundef %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef nonnull @config, ptr noundef %opt, i32 noundef 256) #13
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dynamic_netconsole_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @netconsole_subsys) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_netconsole() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_console(ptr noundef nonnull @netconsole_ext) #13
  %call1 = tail call i32 @unregister_console(ptr noundef nonnull @netconsole) #13
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @netconsole_subsys) #13
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @netconsole_netdev_notifier) #13
  %0 = load ptr, ptr @target_list, align 4
  %cmp.not18 = icmp eq ptr %0, @target_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %nt.019 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %nt.019 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %nt.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nt.019) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nt.019, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %nt.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nt.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %nt.019 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %nt.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nt.019, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %np.i = getelementptr inbounds %struct.netconsole_target, ptr %nt.019, i32 0, i32 4
  tail call void @netpoll_cleanup(ptr noundef %np.i) #13
  tail call void @kfree(ptr noundef %nt.019) #13
  %cmp.not = icmp eq ptr %tmp.0, @target_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_netconsole() #1 section ".init.text" align 64 {
entry:
  %input = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #13
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @config, ptr %input, align 4
  %char0 = load i8, ptr @config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %while.cond.preheader

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.cond.preheader:                             ; preds = %entry
  %call180 = call ptr @strsep(ptr noundef nonnull %input, ptr noundef nonnull @.str.48) #13
  %tobool2.not81 = icmp eq ptr %call180, null
  br i1 %tobool2.not81, label %while.cond.preheader.if.end21_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end21_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.body:                                       ; preds = %list_add.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call182 = phi ptr [ %call1, %list_add.exit.while.body_crit_edge ], [ %call180, %while.cond.preheader.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 136) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %while.body.fail.i_crit_edge, label %if.end.i

while.body.fail.i_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i

if.end.i:                                         ; preds = %while.body
  %np.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name.i, align 8
  %dev_name.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %call2.i = call i32 @strlcpy(ptr noundef %dev_name.i, ptr noundef nonnull @.str.1, i32 noundef 16) #13
  %local_port.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %local_port.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6665, ptr %local_port.i, align 2
  %remote_port.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %remote_port.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 6666, ptr %remote_port.i, align 8
  %remote_mac.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 4, i32 9
  %5 = call ptr @memset(ptr %remote_mac.i, i32 255, i32 6)
  %6 = ptrtoint ptr %call182 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %7)
  %cmp.i = icmp eq i8 %7, 43
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %extended.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %extended.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %extended.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %call182, i32 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i.if.end9.i_crit_edge
  %target_config.addr.0.i = phi ptr [ %incdec.ptr.i, %if.then8.i ], [ %call182, %if.end.i.if.end9.i_crit_edge ]
  %call11.i = call i32 @netpoll_parse_options(ptr noundef %np.i, ptr noundef %target_config.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.fail.i_crit_edge

if.end9.i.fail.i_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i

if.end14.i:                                       ; preds = %if.end9.i
  %call16.i = call i32 @netpoll_setup(ptr noundef %np.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.fail.i_crit_edge

if.end14.i.fail.i_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %enabled.i = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %enabled.i, align 4
  br label %alloc_param_target.exit

fail.i:                                           ; preds = %if.end14.i.fail.i_crit_edge, %if.end9.i.fail.i_crit_edge, %while.body.fail.i_crit_edge
  %err.0.i = phi i32 [ %call11.i, %if.end9.i.fail.i_crit_edge ], [ %call16.i, %if.end14.i.fail.i_crit_edge ], [ -12, %while.body.fail.i_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #13
  %10 = inttoptr i32 %err.0.i to ptr
  br label %alloc_param_target.exit

alloc_param_target.exit:                          ; preds = %fail.i, %if.end19.i
  %retval.0.i = phi ptr [ %10, %fail.i ], [ %call7.i.i.i, %if.end19.i ]
  %cmp.i76 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then5, label %if.end

if.then5:                                         ; preds = %alloc_param_target.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %retval.0.i to i32
  br label %do.end42

if.end:                                           ; preds = %alloc_param_target.exit
  %extended = getelementptr inbounds %struct.netconsole_target, ptr %retval.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extended, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %. = select i1 %tobool7.not, ptr getelementptr inbounds (%struct.console, ptr @netconsole, i32 0, i32 8), ptr getelementptr inbounds (%struct.console, ptr @netconsole_ext, i32 0, i32 8)
  %.90 = select i1 %tobool7.not, i16 1, i16 5
  %14 = ptrtoint ptr %. to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %., align 4
  %16 = or i16 %15, %.90
  store i16 %16, ptr %., align 4
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %17 = load ptr, ptr @target_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i, ptr noundef nonnull @target_list, ptr noundef %17) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %retval.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @target_list, ptr %prev3.i.i, align 4
  store volatile ptr %retval.0.i, ptr @target_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call18) #13
  %call1 = call ptr @strsep(ptr noundef nonnull %input, ptr noundef nonnull @.str.48) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %list_add.exit.if.end21_crit_edge, label %list_add.exit.while.body_crit_edge

list_add.exit.while.body_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_add.exit.if.end21_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %list_add.exit.if.end21_crit_edge, %while.cond.preheader.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = call i32 @register_netdevice_notifier(ptr noundef nonnull @netconsole_netdev_notifier) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.do.end42_crit_edge

if.end21.do.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

if.end25:                                         ; preds = %if.end21
  %call26 = call fastcc i32 @dynamic_netconsole_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %undonotifier

if.end29:                                         ; preds = %if.end25
  %21 = load i16, ptr getelementptr inbounds (%struct.console, ptr @netconsole_ext, i32 0, i32 8), align 4
  %22 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool31.not = icmp eq i16 %22, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void @register_console(ptr noundef nonnull @netconsole_ext) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  call void @register_console(ptr noundef nonnull @netconsole) #13
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  br label %cleanup

undonotifier:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = call i32 @unregister_netdevice_notifier(ptr noundef nonnull @netconsole_netdev_notifier) #13
  br label %do.end42

do.end42:                                         ; preds = %undonotifier, %if.end21.do.end42_crit_edge, %if.then5
  %err.0 = phi i32 [ %11, %if.then5 ], [ %call22, %if.end21.do.end42_crit_edge ], [ %call26, %undonotifier ]
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #18
  %23 = load ptr, ptr @target_list, align 4
  %cmp51.not83 = icmp eq ptr %23, @target_list
  br i1 %cmp51.not83, label %do.end42.cleanup_crit_edge, label %do.end42.for.body_crit_edge

do.end42.for.body_crit_edge:                      ; preds = %do.end42
  br label %for.body

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end42.for.body_crit_edge
  %nt.084 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %23, %do.end42.for.body_crit_edge ]
  %24 = ptrtoint ptr %nt.084 to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp.0 = load ptr, ptr %nt.084, align 4
  %call.i.i77 = call zeroext i1 @__list_del_entry_valid(ptr noundef %nt.084) #13
  br i1 %call.i.i77, label %if.end.i.i78, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i78:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nt.084, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %nt.084 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nt.084, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i78, %for.body.list_del.exit_crit_edge
  %31 = ptrtoint ptr %nt.084 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %nt.084, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nt.084, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %np.i79 = getelementptr inbounds %struct.netconsole_target, ptr %nt.084, i32 0, i32 4
  call void @netpoll_cleanup(ptr noundef %np.i79) #13
  call void @kfree(ptr noundef %nt.084) #13
  %cmp51.not = icmp eq ptr %tmp.0, @target_list
  br i1 %cmp51.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %err.0, %do.end42.cleanup_crit_edge ], [ %err.0, %list_del.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #13
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_netconsole_target(ptr nocapture noundef readnone %group, ptr noundef %name) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %name2, align 8
  %dev_name = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 4, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %dev_name, ptr noundef nonnull @.str.1, i32 noundef 16) #13
  %local_port = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6665, ptr %local_port, align 2
  %remote_port = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %remote_port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6666, ptr %remote_port, align 8
  %remote_mac = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 4, i32 9
  %4 = call ptr @memset(ptr %remote_mac, i32 255, i32 6)
  %item = getelementptr inbounds %struct.netconsole_target, ptr %call7.i.i, i32 0, i32 1
  tail call void @config_item_init_type_name(ptr noundef %item, ptr noundef %name, ptr noundef nonnull @netconsole_target_type) #13
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %5 = load ptr, ptr @target_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @target_list, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @target_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @target_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %item, %list_add.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_netconsole_target(ptr nocapture noundef readnone %group, ptr noundef %item) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %spec.select.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call3) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %np = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4
  tail call void @netpoll_cleanup(ptr noundef %np) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %item6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  tail call void @config_item_put(ptr noundef %item6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netconsole_target_release(ptr noundef %item) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @kfree(ptr noundef %spec.select.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #13
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled, align 4, !annotation !194
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %enabled) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %if.end.out_unlock_crit_edge, label %if.end5

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %enabled6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %4 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled6, align 4, !range !193
  %6 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp9 = icmp eq i8 %5, %6
  br i1 %cmp9, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool7.not, ptr @.str.8, ptr @.str.7
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #18
  br label %out_unlock

if.end16:                                         ; preds = %if.end5
  br i1 %tobool, label %if.then18, label %do.body38

if.then18:                                        ; preds = %if.end16
  %extended = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 3
  %7 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extended, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  br i1 %tobool19.not, label %if.then18.if.end26_crit_edge, label %land.lhs.true

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then18
  %9 = load i16, ptr getelementptr inbounds (%struct.console, ptr @netconsole_ext, i32 0, i32 8), align 4
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool22.not = icmp eq i16 %10, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i16 %9, 4
  store i16 %or, ptr getelementptr inbounds (%struct.console, ptr @netconsole_ext, i32 0, i32 8), align 4
  call void @register_console(ptr noundef nonnull @netconsole_ext) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %np = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4
  call void @netpoll_print_options(ptr noundef %np) #13
  %call28 = call i32 @netpoll_setup(ptr noundef %np) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end34, label %if.end26.out_unlock_crit_edge

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  br label %if.end50

do.body38:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %11 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call43) #13
  %np49 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4
  call void @netpoll_cleanup(ptr noundef %np49) #13
  br label %if.end50

if.end50:                                         ; preds = %do.body38, %do.end34
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool51 = icmp ne i32 %13, 0
  %frombool = zext i1 %tobool51 to i8
  %14 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %enabled6, align 4
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call53 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

out_unlock:                                       ; preds = %if.end26.out_unlock_crit_edge, %do.end, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ], [ -22, %do.end ], [ %call28, %if.end26.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end50
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %call53, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netpoll_print_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netpoll_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extended_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %extended = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 3
  %0 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extended, align 1, !range !193
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extended_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %extended = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extended) #13
  %0 = ptrtoint ptr %extended to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %extended, align 4, !annotation !194
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %3 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %4) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call4 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %extended) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11 = icmp ne i32 %6, 0
  %extended12 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 3
  %frombool = zext i1 %tobool11 to i8
  %8 = ptrtoint ptr %extended12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %extended12, align 1
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call13 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

out_unlock:                                       ; preds = %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end.out_unlock_crit_edge ], [ -22, %if.end6.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end10
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %call13, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extended) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_name_show(ptr noundef %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dev_name = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 2
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %dev_name)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_name_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #18
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_name = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %dev_name, ptr noundef %buf, i32 noundef 16) #13
  %call8 = tail call i32 @strnlen(ptr noundef %dev_name, i32 noundef 16) #19
  %sub = add i32 %call8, -1
  %arrayidx = getelementptr %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 2, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp = icmp eq i8 %5, 10
  br i1 %cmp, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call18 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_port_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %local_port = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %local_port, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_port_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %local_port = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 7
  %call4 = tail call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef %local_port) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call7 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

out_unlock:                                       ; preds = %if.end.out_unlock_crit_edge, %do.end
  %rv.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end6
  %retval.0 = phi i32 [ %rv.0, %out_unlock ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_port_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %remote_port = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %remote_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %remote_port, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_port_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %remote_port = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 8
  %call4 = tail call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef %remote_port) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call7 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

out_unlock:                                       ; preds = %if.end.out_unlock_crit_edge, %do.end
  %rv.0 = phi i32 [ -22, %do.end ], [ %call4, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end6
  %retval.0 = phi i32 [ %rv.0, %out_unlock ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_ip_show(ptr noundef %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %ipv6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ipv6, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %local_ip4 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 4
  %.str.26..str.25 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.26..str.25, ptr noundef %local_ip4)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_ip_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @strnchr(ptr noundef %buf, i32 noundef %count, i32 noundef 58) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else23, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !194
  %local_ip = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 4
  %call7 = call i32 @in6_pton(ptr noundef %buf, i32 noundef %count, ptr noundef %local_ip, i32 noundef -1, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp sgt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then8:                                         ; preds = %if.then6
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end16 [
    i8 0, label %if.then8.cleanup_crit_edge
    i8 10, label %if.then8.cleanup_crit_edge49
  ]

if.then8.cleanup_crit_edge49:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %8 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end16, %if.then6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  br label %out_unlock

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %if.then8.cleanup_crit_edge49
  %ipv6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %ipv6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ipv6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  br label %if.end33

if.else23:                                        ; preds = %if.end
  %ipv625 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %ipv625 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv625, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %if.then27, label %if.else23.out_unlock_crit_edge

if.else23.out_unlock_crit_edge:                   ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @in_aton(ptr noundef %buf) #13
  %local_ip30 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %local_ip30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call28, ptr %local_ip30, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %cleanup
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call34 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup35

out_unlock:                                       ; preds = %if.else23.out_unlock_crit_edge, %cleanup.thread, %do.end
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup35

cleanup35:                                        ; preds = %out_unlock, %if.end33
  %retval.0 = phi i32 [ -22, %out_unlock ], [ %call34, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_ip_show(ptr noundef %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %ipv6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ipv6, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %remote_ip4 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 5
  %.str.26..str.25 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.26..str.25, ptr noundef %remote_ip4)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_ip_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %end = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %3) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @strnchr(ptr noundef %buf, i32 noundef %count, i32 noundef 58) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else23, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %end, align 4, !annotation !194
  %remote_ip = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 5
  %call7 = call i32 @in6_pton(ptr noundef %buf, i32 noundef %count, ptr noundef %remote_ip, i32 noundef -1, ptr noundef nonnull %end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp sgt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then8:                                         ; preds = %if.then6
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %8, label %do.end16 [
    i8 0, label %if.then8.cleanup_crit_edge
    i8 10, label %if.then8.cleanup_crit_edge49
  ]

if.then8.cleanup_crit_edge49:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %8 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end16, %if.then6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  br label %out_unlock

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %if.then8.cleanup_crit_edge49
  %ipv6 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %ipv6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ipv6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  br label %if.end33

if.else23:                                        ; preds = %if.end
  %ipv625 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %ipv625 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv625, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %if.then27, label %if.else23.out_unlock_crit_edge

if.else23.out_unlock_crit_edge:                   ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @in_aton(ptr noundef %buf) #13
  %remote_ip30 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %remote_ip30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call28, ptr %remote_ip30, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %cleanup
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call34 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup35

out_unlock:                                       ; preds = %if.else23.out_unlock_crit_edge, %cleanup.thread, %do.end
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup35

cleanup35:                                        ; preds = %out_unlock, %if.end33
  %retval.0 = phi i32 [ -22, %out_unlock ], [ %call34, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_mac_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %np = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ @local_mac_show.bcast, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, ptr noundef %cond)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_mac_show(ptr noundef %item, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %remote_mac = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 9
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, ptr noundef %remote_mac)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_mac_store(ptr noundef %item, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  %remote_mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -8
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %remote_mac) #13
  %0 = call ptr @memset(ptr %remote_mac, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef nonnull @dynamic_netconsole_mutex, i32 noundef 0) #13
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 2
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %item1 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 1
  %3 = ptrtoint ptr %item1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %item1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %4) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @mac_pton(ptr noundef %buf, ptr noundef nonnull %remote_mac) #13
  br i1 %call4, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %buf, i32 17
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %6, label %if.end6.out_unlock_crit_edge [
    i8 0, label %if.end6.if.end12_crit_edge
    i8 10, label %if.end6.if.end12_crit_edge23
  ]

if.end6.if.end12_crit_edge23:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.end6.if.end12_crit_edge23
  %remote_mac13 = getelementptr inbounds %struct.netconsole_target, ptr %spec.select.i, i32 0, i32 4, i32 9
  %8 = call ptr @memcpy(ptr %remote_mac13, ptr %remote_mac, i32 6)
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  %call16 = call i32 @strnlen(ptr noundef %buf, i32 noundef %count) #19
  br label %cleanup

out_unlock:                                       ; preds = %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef nonnull @dynamic_netconsole_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end12
  %retval.0 = phi i32 [ -22, %out_unlock ], [ %call16, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %remote_mac) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_ext_msg(ptr nocapture noundef readnone %con, ptr noundef %msg, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @oops_only, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %2 = load volatile ptr, ptr @target_list, align 4
  %cmp.i.not = icmp eq ptr %2, @target_list
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %nt.032 = load ptr, ptr @target_list, align 4
  %cmp9.not33 = icmp eq ptr %nt.032, @target_list
  br i1 %cmp9.not33, label %do.body3.for.end_crit_edge, label %for.body.lr.ph

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %len)
  %cmp.i31 = icmp slt i32 %len, 1001
  %sub.ptr.rhs.cast.i = ptrtoint ptr %msg to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nt.034 = phi ptr [ %nt.032, %for.body.lr.ph ], [ %nt.0, %for.inc.for.body_crit_edge ]
  %extended = getelementptr inbounds %struct.netconsole_target, ptr %nt.034, i32 0, i32 3
  %3 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extended, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true13:                                  ; preds = %for.body
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %nt.034, i32 0, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %land.lhs.true13.for.inc_crit_edge, label %land.lhs.true16

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %np = getelementptr inbounds %struct.netconsole_target, ptr %nt.034, i32 0, i32 4
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true16.for.inc_crit_edge, label %if.then19

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true16
  br i1 %cmp.i31, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netpoll_send_udp(ptr noundef %np, ptr noundef %msg, i32 noundef %len) #13
  br label %for.inc

if.end.i:                                         ; preds = %if.then19
  %call.i = tail call ptr @memchr(ptr noundef %msg, i32 noundef 59, i32 noundef %len) #20
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end41.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b155.i = load i1, ptr @send_ext_msg_udp.__already_done, align 1
  br i1 %.b155.i, label %land.rhs.i.for.inc_crit_edge, label %if.then9.i, !prof !195

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @send_ext_msg_udp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 786, i32 noundef 9, ptr noundef null) #13
  br label %for.inc

if.end41.i:                                       ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %11 = xor i32 %sub.ptr.sub.i, -1
  %sub42.i = add i32 %11, %len
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %12 = call ptr @memcpy(ptr @send_ext_msg_udp.buf, ptr %msg, i32 %sub.ptr.sub.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42.i)
  %cmp43159.i = icmp sgt i32 %sub42.i, 0
  br i1 %cmp43159.i, label %while.body.lr.ph.i, label %if.end41.i.for.inc_crit_edge

if.end41.i.for.inc_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.end41.i
  %add.ptr.i = getelementptr i8, ptr @send_ext_msg_udp.buf, i32 %sub.ptr.sub.i
  %sub44.i = sub i32 1000, %sub.ptr.sub.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.0160.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add111.i, %cleanup.i.while.body.i_crit_edge ]
  %call45.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub44.i, ptr noundef nonnull @.str.40, i32 noundef %offset.0160.i, i32 noundef %sub42.i) #13
  %add.i = add i32 %call45.i, %sub.ptr.sub.i
  %sub46.i = sub i32 %sub42.i, %offset.0160.i
  %sub47.i = sub i32 1000, %add.i
  %13 = tail call i32 @llvm.smin.i32(i32 %sub46.i, i32 %sub47.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp51.i = icmp slt i32 %13, 1
  br i1 %cmp51.i, label %land.rhs58.i, label %cleanup.i

land.rhs58.i:                                     ; preds = %while.body.i
  %.b153154.i = load i1, ptr @send_ext_msg_udp.__already_done.41, align 1
  br i1 %.b153154.i, label %land.rhs58.i.for.inc_crit_edge, label %if.then69.i, !prof !195

land.rhs58.i.for.inc_crit_edge:                   ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then69.i:                                      ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @send_ext_msg_udp.__already_done.41, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 809, i32 noundef 9, ptr noundef null) #13
  br label %for.inc

cleanup.i:                                        ; preds = %while.body.i
  %add.ptr107.i = getelementptr i8, ptr @send_ext_msg_udp.buf, i32 %add.i
  %add.ptr108.i = getelementptr i8, ptr %incdec.ptr.i, i32 %offset.0160.i
  %14 = call ptr @memcpy(ptr %add.ptr107.i, ptr %add.ptr108.i, i32 %13)
  %add110.i = add i32 %13, %add.i
  tail call void @netpoll_send_udp(ptr noundef %np, ptr noundef nonnull @send_ext_msg_udp.buf, i32 noundef %add110.i) #13
  %add111.i = add i32 %13, %offset.0160.i
  %cmp43.i = icmp sgt i32 %sub42.i, %add111.i
  br i1 %cmp43.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.for.inc_crit_edge

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

for.inc:                                          ; preds = %cleanup.i.for.inc_crit_edge, %if.then69.i, %land.rhs58.i.for.inc_crit_edge, %if.end41.i.for.inc_crit_edge, %if.then9.i, %land.rhs.i.for.inc_crit_edge, %if.then.i, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %nt.034 to i32
  call void @__asan_load4_noabort(i32 %15)
  %nt.0 = load ptr, ptr %nt.034, align 4
  %cmp9.not = icmp eq ptr %nt.0, @target_list
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body3.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netpoll_send_udp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_msg(ptr nocapture noundef readnone %con, ptr noundef %msg, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @oops_only, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = load volatile ptr, ptr @target_list, align 4
  %cmp.i.not = icmp eq ptr %2, @target_list
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %nt.055 = load ptr, ptr @target_list, align 4
  %cmp12.not56 = icmp eq ptr %nt.055, @target_list
  br i1 %cmp12.not56, label %do.body5.for.end35_crit_edge, label %for.body.lr.ph

do.body5.for.end35_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end35

for.body.lr.ph:                                   ; preds = %do.body5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool23.not52 = icmp eq i32 %len, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nt.057 = phi ptr [ %nt.055, %for.body.lr.ph ], [ %nt.0, %for.inc.for.body_crit_edge ]
  %extended = getelementptr inbounds %struct.netconsole_target, ptr %nt.057, i32 0, i32 3
  %3 = ptrtoint ptr %extended to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extended, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not = icmp eq i8 %4, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %nt.057, i32 0, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %land.lhs.true15.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %np = getelementptr inbounds %struct.netconsole_target, ptr %nt.057, i32 0, i32 4
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %brmerge = or i1 %tobool.i.not, %tobool23.not52
  br i1 %brmerge, label %land.lhs.true18.for.inc_crit_edge, label %land.lhs.true18.for.body24_crit_edge

land.lhs.true18.for.body24_crit_edge:             ; preds = %land.lhs.true18
  br label %for.body24

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %land.lhs.true18.for.body24_crit_edge
  %left.054 = phi i32 [ %sub, %for.body24.for.body24_crit_edge ], [ %len, %land.lhs.true18.for.body24_crit_edge ]
  %tmp.053 = phi ptr [ %add.ptr29, %for.body24.for.body24_crit_edge ], [ %msg, %land.lhs.true18.for.body24_crit_edge ]
  %11 = tail call i32 @llvm.smin.i32(i32 %left.054, i32 1000)
  tail call void @netpoll_send_udp(ptr noundef %np, ptr noundef %tmp.053, i32 noundef %11) #13
  %add.ptr29 = getelementptr i8, ptr %tmp.053, i32 %11
  %sub = sub i32 %left.054, %11
  %tobool23.not = icmp eq i32 %sub, 0
  br i1 %tobool23.not, label %for.body24.for.inc_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %for.body24.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %nt.057 to i32
  call void @__asan_load4_noabort(i32 %12)
  %nt.0 = load ptr, ptr %nt.057, align 4
  %cmp12.not = icmp eq ptr %nt.0, @target_list
  br i1 %cmp12.not, label %for.inc.for.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end35

for.end35:                                        ; preds = %for.inc.for.end35_crit_edge, %do.body5.for.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netconsole_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %event, label %entry.done_crit_edge [
    i32 11, label %entry.do.body6_crit_edge
    i32 6, label %entry.do.body6_crit_edge128
    i32 18, label %entry.do.body6_crit_edge129
    i32 20, label %entry.do.body6_crit_edge130
  ]

entry.do.body6_crit_edge130:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

entry.do.body6_crit_edge129:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

entry.do.body6_crit_edge128:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

do.body6:                                         ; preds = %entry.do.body6_crit_edge, %entry.do.body6_crit_edge128, %entry.do.body6_crit_edge129, %entry.do.body6_crit_edge130
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %nt.08995 = load ptr, ptr @target_list, align 4
  %cmp13.not9096 = icmp eq ptr %nt.08995, @target_list
  br i1 %cmp13.not9096, label %done.critedge, label %do.body6.for.body.lr.ph_crit_edge

do.body6.for.body.lr.ph_crit_edge:                ; preds = %do.body6
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %netconsole_target_put.exit.for.body.lr.ph_crit_edge, %do.body6.for.body.lr.ph_crit_edge
  %nt.08999 = phi ptr [ %nt.089, %netconsole_target_put.exit.for.body.lr.ph_crit_edge ], [ %nt.08995, %do.body6.for.body.lr.ph_crit_edge ]
  %flags.098 = phi i32 [ %call32, %netconsole_target_put.exit.for.body.lr.ph_crit_edge ], [ %call9, %do.body6.for.body.lr.ph_crit_edge ]
  %stopped.0.off097 = phi i1 [ true, %netconsole_target_put.exit.for.body.lr.ph_crit_edge ], [ false, %do.body6.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %netconsole_target_put.exit86.for.body_crit_edge, %for.body.lr.ph
  %nt.091 = phi ptr [ %nt.08999, %for.body.lr.ph ], [ %nt.0, %netconsole_target_put.exit86.for.body_crit_edge ]
  %item.i = getelementptr inbounds %struct.netconsole_target, ptr %nt.091, i32 0, i32 1
  %3 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %item.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.netconsole_target_get.exit_crit_edge, label %if.then.i

for.body.netconsole_target_get.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %netconsole_target_get.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call ptr @config_item_get(ptr noundef %item.i) #13
  br label %netconsole_target_get.exit

netconsole_target_get.exit:                       ; preds = %if.then.i, %for.body.netconsole_target_get.exit_crit_edge
  %np = getelementptr inbounds %struct.netconsole_target, ptr %nt.091, i32 0, i32 4
  %5 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %np, align 4
  %cmp16 = icmp eq ptr %6, %1
  br i1 %cmp16, label %if.then18, label %netconsole_target_get.exit.if.end42_crit_edge

netconsole_target_get.exit.if.end42_crit_edge:    ; preds = %netconsole_target_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then18:                                        ; preds = %netconsole_target_get.exit
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %if.then18.if.end42_crit_edge [
    i32 11, label %sw.bb
    i32 18, label %if.then18.sw.bb22_crit_edge
    i32 20, label %if.then18.sw.bb22_crit_edge131
    i32 6, label %if.then18.sw.bb22_crit_edge132
  ]

if.then18.sw.bb22_crit_edge132:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

if.then18.sw.bb22_crit_edge131:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

if.then18.sw.bb22_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb22

if.then18.if.end42_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

sw.bb:                                            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %dev_name = getelementptr inbounds %struct.netconsole_target, ptr %nt.091, i32 0, i32 4, i32 2
  %call21 = tail call i32 @strlcpy(ptr noundef %dev_name, ptr noundef %1, i32 noundef 16) #13
  br label %if.end42

sw.bb22:                                          ; preds = %if.then18.sw.bb22_crit_edge, %if.then18.sw.bb22_crit_edge131, %if.then18.sw.bb22_crit_edge132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %flags.098) #13
  tail call void @__netpoll_cleanup(ptr noundef %np) #13
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @target_list_lock) #13
  %8 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %np, align 4
  %tobool.not.i79 = icmp eq ptr %9, null
  br i1 %tobool.not.i79, label %sw.bb22.dev_put_track.exit_crit_edge, label %do.body1.i.i

sw.bb22.dev_put_track.exit_crit_edge:             ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %sw.bb22
  %dev_tracker = getelementptr inbounds %struct.netconsole_target, ptr %nt.091, i32 0, i32 4, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #13
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !196
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !183) #13
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i.i = add i32 %22, -1
  store i32 %add13.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !197
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !198

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #13, !srcloc !199
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %sw.bb22.dev_put_track.exit_crit_edge
  %24 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %np, align 4
  %enabled = getelementptr inbounds %struct.netconsole_target, ptr %nt.091, i32 0, i32 2
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %enabled, align 4
  %26 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %item.i, align 4
  %tobool.not.i81 = icmp eq ptr %27, null
  br i1 %tobool.not.i81, label %dev_put_track.exit.netconsole_target_put.exit_crit_edge, label %if.then.i82

dev_put_track.exit.netconsole_target_put.exit_crit_edge: ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %netconsole_target_put.exit

if.then.i82:                                      ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @config_item_put(ptr noundef %item.i) #13
  br label %netconsole_target_put.exit

netconsole_target_put.exit:                       ; preds = %if.then.i82, %dev_put_track.exit.netconsole_target_put.exit_crit_edge
  %nt.089 = load ptr, ptr @target_list, align 4
  %cmp13.not90 = icmp eq ptr %nt.089, @target_list
  br i1 %cmp13.not90, label %if.then47.critedge, label %netconsole_target_put.exit.for.body.lr.ph_crit_edge

netconsole_target_put.exit.for.body.lr.ph_crit_edge: ; preds = %netconsole_target_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.end42:                                         ; preds = %sw.bb, %if.then18.if.end42_crit_edge, %netconsole_target_get.exit.if.end42_crit_edge
  %28 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %item.i, align 4
  %tobool.not.i84 = icmp eq ptr %29, null
  br i1 %tobool.not.i84, label %if.end42.netconsole_target_put.exit86_crit_edge, label %if.then.i85

if.end42.netconsole_target_put.exit86_crit_edge:  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %netconsole_target_put.exit86

if.then.i85:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @config_item_put(ptr noundef %item.i) #13
  br label %netconsole_target_put.exit86

netconsole_target_put.exit86:                     ; preds = %if.then.i85, %if.end42.netconsole_target_put.exit86_crit_edge
  %30 = ptrtoint ptr %nt.091 to i32
  call void @__asan_load4_noabort(i32 %30)
  %nt.0 = load ptr, ptr %nt.091, align 4
  %cmp13.not = icmp eq ptr %nt.0, @target_list
  br i1 %cmp13.not, label %for.end, label %netconsole_target_put.exit86.for.body_crit_edge

netconsole_target_put.exit86.for.body_crit_edge:  ; preds = %netconsole_target_put.exit86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %netconsole_target_put.exit86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %flags.098) #13
  br i1 %stopped.0.off097, label %for.end.if.then47_crit_edge, label %for.end.done_crit_edge

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

for.end.if.then47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.then47.critedge:                               ; preds = %netconsole_target_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call32) #13
  br label %if.then47

if.then47:                                        ; preds = %if.then47.critedge, %for.end.if.then47_crit_edge
  %31 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %event, label %if.then47.do.end54_crit_edge [
    i32 6, label %sw.bb48
    i32 18, label %sw.bb49
    i32 20, label %sw.bb50
  ]

if.then47.do.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

sw.bb48:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

sw.bb49:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

sw.bb50:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

do.end54:                                         ; preds = %sw.bb50, %sw.bb49, %sw.bb48, %if.then47.do.end54_crit_edge
  %msg.0 = phi ptr [ @.str.42, %if.then47.do.end54_crit_edge ], [ @.str.45, %sw.bb50 ], [ @.str.44, %sw.bb49 ], [ @.str.43, %sw.bb48 ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %1, ptr noundef nonnull %msg.0) #18
  br label %done

done.critedge:                                    ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @target_list_lock, i32 noundef %call9) #13
  br label %done

done:                                             ; preds = %done.critedge, %do.end54, %for.end.done_crit_edge, %entry.done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netpoll_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dynamic_netconsole_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @netconsole_subsys) #13
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @netconsole_subsys, i32 0, i32 1), ptr noundef nonnull @.str.53, ptr noundef nonnull @dynamic_netconsole_init.__key) #13
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @netconsole_subsys) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_parse_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !131, !133, !134, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !174, !175, !176, !178, !179, !180, !182}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/netconsole.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/netconsole.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/netconsole.c", i32 42, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_netconsole, !8, !"__param_netconsole", i1 false, i1 false}
!8 = !{!"../drivers/net/netconsole.c", i32 48, i32 1}
!9 = !{ptr @__UNIQUE_ID_netconsoletype345, !8, !"__UNIQUE_ID_netconsoletype345", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_netconsole346, !11, !"__UNIQUE_ID_netconsole346", i1 false, i1 false}
!11 = !{!"../drivers/net/netconsole.c", i32 49, i32 1}
!12 = !{ptr @__param_oops_only, !13, !"__param_oops_only", i1 false, i1 false}
!13 = !{!"../drivers/net/netconsole.c", i32 52, i32 1}
!14 = !{ptr @__UNIQUE_ID_oops_onlytype347, !13, !"__UNIQUE_ID_oops_onlytype347", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_oops_only348, !16, !"__UNIQUE_ID_oops_only348", i1 false, i1 false}
!16 = !{!"../drivers/net/netconsole.c", i32 53, i32 1}
!17 = !{ptr @__setup_option_setup, !18, !"__setup_option_setup", i1 false, i1 false}
!18 = !{!"../drivers/net/netconsole.c", i32 61, i32 1}
!19 = !{ptr @__initcall__kmod_netconsole__353_973_init_netconsole7, !20, !"__initcall__kmod_netconsole__353_973_init_netconsole7", i1 false, i1 false}
!20 = !{!"../drivers/net/netconsole.c", i32 973, i32 1}
!21 = !{ptr @__exitcall_cleanup_netconsole, !22, !"__exitcall_cleanup_netconsole", i1 false, i1 false}
!22 = !{!"../drivers/net/netconsole.c", i32 974, i32 1}
!23 = !{ptr @__param_str_netconsole, !8, !"__param_str_netconsole", i1 false, i1 false}
!24 = !{ptr @__param_string_netconsole, !8, !"__param_string_netconsole", i1 false, i1 false}
!25 = !{ptr @config, !26, !"config", i1 false, i1 false}
!26 = !{!"../drivers/net/netconsole.c", i32 47, i32 13}
!27 = !{ptr @__param_str_oops_only, !13, !"__param_str_oops_only", i1 false, i1 false}
!28 = !{ptr @oops_only, !29, !"oops_only", i1 false, i1 false}
!29 = !{!"../drivers/net/netconsole.c", i32 51, i32 13}
!30 = !{ptr @__setup_str_option_setup, !18, !"__setup_str_option_setup", i1 false, i1 false}
!31 = !{ptr @netconsole_subsys, !32, !"netconsole_subsys", i1 false, i1 false}
!32 = !{!"../drivers/net/netconsole.c", i32 680, i32 34}
!33 = !{ptr @netconsole_subsys_type, !34, !"netconsole_subsys_type", i1 false, i1 false}
!34 = !{!"../drivers/net/netconsole.c", i32 674, i32 38}
!35 = !{ptr @netconsole_subsys_group_ops, !36, !"netconsole_subsys_group_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/netconsole.c", i32 669, i32 41}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/netconsole.c", i32 632, i32 16}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/netconsole.c", i32 633, i32 27}
!41 = !{ptr @netconsole_target_type, !42, !"netconsole_target_type", i1 false, i1 false}
!42 = !{!"../drivers/net/netconsole.c", i32 608, i32 38}
!43 = !{ptr @netconsole_target_item_ops, !44, !"netconsole_target_item_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/netconsole.c", i32 604, i32 40}
!45 = !{ptr @netconsole_target_attrs, !46, !"netconsole_target_attrs", i1 false, i1 false}
!46 = !{!"../drivers/net/netconsole.c", i32 582, i32 35}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/netconsole.c", i32 572, i32 1}
!49 = !{ptr @attr_enabled, !48, !"attr_enabled", i1 false, i1 false}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/netconsole.c", i32 249, i32 34}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/netconsole.c", i32 329, i32 3}
!54 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @enabled_store._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @enabled_store._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/netconsole.c", i32 350, i32 3}
!62 = !{ptr @enabled_store._entry.9, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @enabled_store._entry_ptr.11, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/netconsole.c", i32 110, i32 8}
!66 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dynamic_netconsole_mutex, !65, !"dynamic_netconsole_mutex", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/netconsole.c", i32 573, i32 1}
!70 = !{ptr @attr_extended, !69, !"attr_extended", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/netconsole.c", i32 380, i32 3}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @extended_store._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @extended_store._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/netconsole.c", i32 574, i32 1}
!78 = !{ptr @attr_dev_name, !77, !"attr_dev_name", i1 false, i1 false}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/netconsole.c", i32 259, i32 34}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/netconsole.c", i32 411, i32 3}
!83 = !{ptr @dev_name_store._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dev_name_store._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/netconsole.c", i32 575, i32 1}
!87 = !{ptr @attr_local_port, !86, !"attr_local_port", i1 false, i1 false}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/netconsole.c", i32 436, i32 3}
!90 = !{ptr @local_port_store._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @local_port_store._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/netconsole.c", i32 576, i32 1}
!94 = !{ptr @attr_remote_port, !93, !"attr_remote_port", i1 false, i1 false}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/netconsole.c", i32 459, i32 3}
!97 = !{ptr @remote_port_store._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @remote_port_store._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.24, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/netconsole.c", i32 577, i32 1}
!101 = !{ptr @attr_local_ip, !100, !"attr_local_ip", i1 false, i1 false}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/netconsole.c", i32 277, i32 35}
!104 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/netconsole.c", i32 279, i32 35}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/netconsole.c", i32 481, i32 3}
!108 = !{ptr @local_ip_store._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @local_ip_store._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/netconsole.c", i32 490, i32 5}
!112 = !{ptr @local_ip_store._entry.28, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @local_ip_store._entry_ptr.30, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/netconsole.c", i32 578, i32 1}
!116 = !{ptr @attr_remote_ip, !115, !"attr_remote_ip", i1 false, i1 false}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/netconsole.c", i32 517, i32 3}
!119 = !{ptr @remote_ip_store._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @remote_ip_store._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @remote_ip_store._entry.33, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/net/netconsole.c", i32 526, i32 5}
!123 = !{ptr @remote_ip_store._entry_ptr.34, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/netconsole.c", i32 579, i32 1}
!126 = !{ptr @attr_local_mac, !125, !"attr_local_mac", i1 false, i1 false}
!127 = !{ptr @local_mac_show.bcast, !128, !"bcast", i1 false, i1 false}
!128 = !{!"../drivers/net/netconsole.c", i32 295, i32 18}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/netconsole.c", i32 297, i32 34}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/netconsole.c", i32 580, i32 1}
!133 = !{ptr @attr_remote_mac, !132, !"attr_remote_mac", i1 false, i1 false}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/netconsole.c", i32 554, i32 3}
!136 = !{ptr @remote_mac_store._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @remote_mac_store._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/netconsole.c", i32 68, i32 8}
!140 = !{ptr @target_list_lock, !139, !"target_list_lock", i1 false, i1 false}
!141 = !{ptr @netconsole_ext, !142, !"netconsole_ext", i1 false, i1 false}
!142 = !{!"../drivers/net/netconsole.c", i32 870, i32 23}
!143 = !{ptr @send_ext_msg_udp.buf, !144, !"buf", i1 false, i1 false}
!144 = !{!"../drivers/net/netconsole.c", i32 773, i32 14}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/net/netconsole.c", i32 786, i32 6}
!147 = !{ptr @.str.40, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/netconsole.c", i32 805, i32 7}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/net/netconsole.c", i32 809, i32 7}
!151 = !{ptr @netconsole, !152, !"netconsole", i1 false, i1 false}
!152 = !{!"../drivers/net/netconsole.c", i32 876, i32 23}
!153 = !{ptr @netconsole_netdev_notifier, !154, !"netconsole_netdev_notifier", i1 false, i1 false}
!154 = !{!"../drivers/net/netconsole.c", i32 756, i32 30}
!155 = !{ptr @.str.42, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/netconsole.c", i32 736, i32 21}
!157 = !{ptr @.str.43, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/netconsole.c", i32 739, i32 10}
!159 = !{ptr @.str.44, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/netconsole.c", i32 742, i32 10}
!161 = !{ptr @.str.45, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/netconsole.c", i32 745, i32 10}
!163 = !{ptr @.str.46, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/netconsole.c", i32 748, i32 3}
!165 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @netconsole_netdev_event._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @netconsole_netdev_event._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @target_list, !169, !"target_list", i1 false, i1 false}
!169 = !{!"../drivers/net/netconsole.c", i32 65, i32 8}
!170 = !{ptr @.str.48, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/netconsole.c", i32 891, i32 42}
!172 = !{ptr @.str.49, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/netconsole.c", i32 921, i32 2}
!174 = !{ptr @init_netconsole._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @init_netconsole._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.51, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/netconsole.c", i32 929, i32 2}
!178 = !{ptr @init_netconsole._entry.50, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @init_netconsole._entry_ptr.52, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @dynamic_netconsole_init.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/net/netconsole.c", i32 115, i32 2}
!182 = !{ptr @.str.53, !181, !"<string literal>", i1 false, i1 false}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
!194 = !{!"auto-init"}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 1092703, i64 1092764}
!197 = !{i64 1095435}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{i64 1095720}
