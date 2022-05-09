; ModuleID = '/llk/IR_all_yes/drivers/net/wwan/wwan_hwsim.c_pt.bc'
source_filename = "../drivers/net/wwan/wwan_hwsim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wwan_ops = type { i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wwan_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wwan_hwsim_dev = type { %struct.list_head, i32, %struct.device, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wwan_hwsim_port = type { %struct.list_head, i32, ptr, ptr, %struct.work_struct, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__param_str_devices = internal constant [19 x i8] c"wwan_hwsim.devices\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wwan_hwsim_devsnum = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_devices = internal constant %struct.kernel_param { ptr @__param_str_devices, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.99 { ptr @wwan_hwsim_devsnum } }, section "__param", align 4
@__UNIQUE_ID_devicestype352 = internal constant [32 x i8] c"wwan_hwsim.parmtype=devices:int\00", section ".modinfo", align 1
@__UNIQUE_ID_devices353 = internal constant [52 x i8] c"wwan_hwsim.parm=devices:Number of simulated devices\00", section ".modinfo", align 1
@wwan_hwsim_debugfs_devcreate = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wwan_hwsim_debugfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wwan_hwsim_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_wwan_hwsim__354_542_wwan_hwsim_init6 = internal global ptr @wwan_hwsim_init, section ".initcall6.init", align 4
@__exitcall_wwan_hwsim_exit = internal global ptr @wwan_hwsim_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author355 = internal constant [34 x i8] c"wwan_hwsim.author=Sergey Ryazanov\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [59 x i8] c"wwan_hwsim.description=Device simulator for WWAN framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [44 x i8] c"wwan_hwsim.file=drivers/net/wwan/wwan_hwsim\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [23 x i8] c"wwan_hwsim.license=GPL\00", section ".modinfo", align 1
@wwan_hwsim_devs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@wwan_hwsim_devs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @wwan_hwsim_devs, ptr @wwan_hwsim_devs }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wwan_hwsim_devs_lock\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wwan_hwsim_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wwan_hwsim\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"devcreate\00", [22 x i8] zeroinitializer }, align 32
@wwan_hwsim_debugfs_devcreate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @wwan_hwsim_debugfs_devcreate_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wwan_hwsim_dev_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hwsim%u\00", [24 x i8] zeroinitializer }, align 32
@wwan_hwsim_dev_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->ports_lock\00", [47 x i8] zeroinitializer }, align 32
@wwan_hwsim_dev_new.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dev->del_work)\00", [62 x i8] zeroinitializer }, align 32
@wwan_hwsim_wwan_rtnl_ops = internal constant { %struct.wwan_ops, [16 x i8] } { %struct.wwan_ops { i32 0, ptr @wwan_hwsim_netdev_setup, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"destroy\00", [24 x i8] zeroinitializer }, align 32
@wwan_hwsim_debugfs_devdestroy_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @wwan_hwsim_debugfs_devdestroy_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"portcreate\00", [21 x i8] zeroinitializer }, align 32
@wwan_hwsim_debugfs_portcreate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @wwan_hwsim_debugfs_portcreate_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wwan_hwsim_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @wwan_hwsim_netdev_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@wwan_hwsim_port_ops = internal constant { %struct.wwan_port_ops, [44 x i8] } { %struct.wwan_port_ops { ptr @wwan_hwsim_port_start, ptr @wwan_hwsim_port_stop, ptr @wwan_hwsim_port_tx, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@wwan_hwsim_port_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&port->del_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%u\00", [25 x i8] zeroinitializer }, align 32
@wwan_hwsim_debugfs_portdestroy_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @wwan_hwsim_debugfs_portdestroy_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0D\0AOK\0D\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 65, i64 97]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 84, i64 116]
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"wwan_hwsim_devsnum\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 24, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [29 x i8] c"wwan_hwsim_debugfs_devcreate\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 31, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"wwan_hwsim_debugfs_topdir\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 30, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"wwan_hwsim_class\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 28, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"wwan_hwsim_devs_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"wwan_hwsim_devs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 34, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 33, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 509, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 515, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant [34 x i8] c"wwan_hwsim_debugfs_devcreate_fops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 447, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"wwan_hwsim_dev_idx\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 35, i32 21 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 280, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 282, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 289, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"wwan_hwsim_wwan_rtnl_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 96, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 297, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [35 x i8] c"wwan_hwsim_debugfs_devdestroy_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 424, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 300, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant [35 x i8] c"wwan_hwsim_debugfs_portcreate_fops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 403, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"wwan_hwsim_netdev_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 79, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"wwan_hwsim_port_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 183, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 213, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 215, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant [36 x i8] c"wwan_hwsim_debugfs_portdestroy_fops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 379, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../drivers/net/wwan/wwan_hwsim.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 160, i32 28 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_devices353, ptr @__UNIQUE_ID_devicestype352, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_wwan_hwsim_exit, ptr @__initcall__kmod_wwan_hwsim__354_542_wwan_hwsim_init6, ptr @__param_devices, ptr @wwan_hwsim_exit, ptr @wwan_hwsim_devsnum, ptr @wwan_hwsim_debugfs_devcreate, ptr @wwan_hwsim_debugfs_topdir, ptr @wwan_hwsim_class, ptr @wwan_hwsim_devs_lock, ptr @wwan_hwsim_devs, ptr @.str, ptr @wwan_hwsim_init.__key, ptr @.str.1, ptr @.str.2, ptr @wwan_hwsim_debugfs_devcreate_fops, ptr @wwan_hwsim_dev_idx, ptr @.str.3, ptr @wwan_hwsim_dev_new.__key, ptr @.str.4, ptr @wwan_hwsim_dev_new.__key.5, ptr @.str.6, ptr @wwan_hwsim_wwan_rtnl_ops, ptr @.str.7, ptr @wwan_hwsim_debugfs_devdestroy_fops, ptr @.str.8, ptr @wwan_hwsim_debugfs_portcreate_fops, ptr @wwan_hwsim_netdev_ops, ptr @wwan_hwsim_port_ops, ptr @wwan_hwsim_port_new.__key, ptr @.str.9, ptr @.str.10, ptr @wwan_hwsim_debugfs_portdestroy_fops, ptr @.str.11], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_devsnum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_devcreate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_devs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_devs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_devcreate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_dev_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_dev_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_dev_new.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_wwan_rtnl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_devdestroy_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_portcreate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_port_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_hwsim_debugfs_portdestroy_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wwan_hwsim_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @wwan_hwsim_debugfs_devcreate, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  tail call fastcc void @wwan_hwsim_free_devs()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #8
  %2 = load ptr, ptr @wwan_hwsim_debugfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %2) #8
  %3 = load ptr, ptr @wwan_hwsim_class, align 4
  tail call void @class_destroy(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wwan_hwsim_free_devs() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %0 = load volatile ptr, ptr @wwan_hwsim_devs, align 4
  %cmp.i.not2 = icmp eq ptr %0, @wwan_hwsim_devs
  br i1 %cmp.i.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %10, %list_del_init.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  tail call fastcc void @wwan_hwsim_dev_del(ptr noundef %1)
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %10 = load volatile ptr, ptr @wwan_hwsim_devs, align 4
  %cmp.i.not = icmp eq ptr %10, @wwan_hwsim_devs
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @wwan_hwsim_devsnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %0)
  %1 = icmp ugt i32 %0, 128
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @wwan_hwsim_init.__key) #8
  store ptr %call, ptr @wwan_hwsim_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #8
  store ptr %call6, ptr @wwan_hwsim_debugfs_topdir, align 4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 128, ptr noundef %call6, ptr noundef null, ptr noundef nonnull @wwan_hwsim_debugfs_devcreate_fops) #8
  store ptr %call7, ptr @wwan_hwsim_debugfs_devcreate, align 4
  %call8 = tail call fastcc i32 @wwan_hwsim_init_devs() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %err_clean_devs

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_clean_devs:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wwan_hwsim_free_devs()
  %3 = load ptr, ptr @wwan_hwsim_debugfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %4 = load ptr, ptr @wwan_hwsim_class, align 4
  tail call void @class_destroy(ptr noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clean_devs, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call8, %err_clean_devs ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wwan_hwsim_dev_del(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_portcreate = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %debugfs_portcreate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_portcreate, align 8
  tail call void @debugfs_remove(ptr noundef %1) #8
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %ports = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ports, align 4
  %cmp.i.not22 = icmp eq ptr %3, %ports
  br i1 %cmp.i.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %wwan_hwsim_port_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %18, %wwan_hwsim_port_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  %debugfs_topdir.i = getelementptr inbounds %struct.wwan_hwsim_port, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %debugfs_topdir.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_topdir.i, align 4
  tail call void @debugfs_remove(ptr noundef %14) #8
  %call.i = tail call ptr @current_work() #8
  %del_work.i = getelementptr inbounds %struct.wwan_hwsim_port, ptr %4, i32 0, i32 4
  %cmp.not.i = icmp eq ptr %call.i, %del_work.i
  br i1 %cmp.not.i, label %list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge, label %if.then.i

list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wwan_hwsim_port_del.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %del_work.i) #8
  br label %wwan_hwsim_port_del.exit

wwan_hwsim_port_del.exit:                         ; preds = %if.then.i, %list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge
  %wwan.i = getelementptr inbounds %struct.wwan_hwsim_port, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %wwan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wwan.i, align 4
  tail call void @wwan_remove_port(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %4) #8
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %17 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ports, align 4
  %cmp.i.not = icmp eq ptr %18, %ports
  br i1 %cmp.i.not, label %wwan_hwsim_port_del.exit.while.end_crit_edge, label %wwan_hwsim_port_del.exit.while.body_crit_edge

wwan_hwsim_port_del.exit.while.body_crit_edge:    ; preds = %wwan_hwsim_port_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

wwan_hwsim_port_del.exit.while.end_crit_edge:     ; preds = %wwan_hwsim_port_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %wwan_hwsim_port_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  %debugfs_topdir = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %debugfs_topdir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debugfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %20) #8
  %dev5 = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 2
  tail call void @wwan_unregister_ops(ptr noundef %dev5) #8
  %call6 = tail call ptr @current_work() #8
  %del_work = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 3
  %cmp.not = icmp eq ptr %call6, %del_work
  br i1 %cmp.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %del_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @device_unregister(ptr noundef %dev5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_unregister_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @current_work() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_remove_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wwan_hwsim_init_devs() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @wwan_hwsim_devsnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp37 = icmp sgt i32 %0, 0
  br i1 %cmp37, label %entry.for.body_crit_edge, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc14, %for.inc13.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call fastcc ptr @wwan_hwsim_dev_new()
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %cleanup16

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wwan_hwsim_devs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %2, ptr noundef nonnull @wwan_hwsim_devs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call, ptr getelementptr inbounds (%struct.list_head, ptr @wwan_hwsim_devs, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wwan_hwsim_devs, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call, i32 0, i32 6
  %ports = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call, i32 0, i32 8, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %list_add_tail.exit
  %cmp4 = phi i1 [ true, %list_add_tail.exit ], [ false, %for.inc.for.body5_crit_edge ]
  %call6 = tail call fastcc ptr @wwan_hwsim_port_new(ptr noundef %call)
  %cmp.i29 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup16

if.end10:                                         ; preds = %for.body5
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %call6, ptr noundef %8, ptr noundef %ports) #8
  br i1 %call.i.i30, label %if.end.i.i32, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i32:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ports, ptr %call6, align 4
  %prev3.i.i31 = getelementptr inbounds %struct.list_head, ptr %call6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i31, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call6, ptr %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i32, %if.end10.for.inc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc13

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc13:                                        ; preds = %for.inc
  %inc14 = add nuw nsw i32 %i.038, 1
  %13 = load i32, ptr @wwan_hwsim_devsnum, align 4
  %cmp = icmp slt i32 %inc14, %13
  br i1 %cmp, label %for.inc13.for.body_crit_edge, label %for.inc13.cleanup16_crit_edge

for.inc13.cleanup16_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup16:                                        ; preds = %for.inc13.cleanup16_crit_edge, %cleanup.thread, %if.then, %entry.cleanup16_crit_edge
  %retval.3 = phi i32 [ %1, %if.then ], [ %6, %cleanup.thread ], [ 0, %entry.cleanup16_crit_edge ], [ 0, %for.inc13.cleanup16_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_debugfs_devcreate_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %usrbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @wwan_hwsim_dev_new()
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wwan_hwsim_devs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %1, ptr noundef nonnull @wwan_hwsim_devs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call, ptr getelementptr inbounds (%struct.list_head, ptr @wwan_hwsim_devs, i32 0, i32 1), align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @wwan_hwsim_devs, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev3.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %count, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wwan_hwsim_dev_new() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1056) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %1 = load i32, ptr @wwan_hwsim_dev_idx, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @wwan_hwsim_dev_idx, align 4
  %id = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %id, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %dev2 = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 2
  %release = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 2, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wwan_hwsim_dev_release, ptr %release, align 4
  %4 = load ptr, ptr @wwan_hwsim_class, align 4
  %class = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 2, i32 33
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %class, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %call6 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev2, ptr noundef nonnull @.str.3, i32 noundef %7) #8
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ports_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wwan_hwsim_dev_new.__key, i16 noundef signext 3) #8
  %ports = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ports, ptr %prev.i, align 8
  %call9 = tail call i32 @device_register(ptr noundef %dev2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %err_free_dev

do.body13:                                        ; preds = %if.end
  %del_work = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %del_work, i32 noundef 0) #8
  %10 = ptrtoint ptr %del_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %del_work, align 8
  %lockdep_map = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @wwan_hwsim_dev_new.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i65 = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry17, ptr %prev.i65, align 8
  %func = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wwan_hwsim_dev_del_work, ptr %func, align 4
  %call22 = tail call i32 @wwan_register_ops(ptr noundef %dev2, ptr noundef nonnull @wwan_hwsim_wwan_rtnl_ops, ptr noundef nonnull %call7.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %err_unreg_dev

if.end25:                                         ; preds = %do.body13
  %init_name.i = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end25.dev_name.exit_crit_edge ]
  %18 = load ptr, ptr @wwan_hwsim_debugfs_topdir, align 4
  %call28 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %18) #8
  %debugfs_topdir = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %debugfs_topdir to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %debugfs_topdir, align 4
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %call28, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @wwan_hwsim_debugfs_devdestroy_fops) #8
  %20 = ptrtoint ptr %debugfs_topdir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_topdir, align 4
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 128, ptr noundef %21, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @wwan_hwsim_debugfs_portcreate_fops) #8
  %debugfs_portcreate = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %debugfs_portcreate to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call32, ptr %debugfs_portcreate, align 8
  br label %cleanup

err_unreg_dev:                                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_unregister(ptr noundef %dev2) #8
  %23 = inttoptr i32 %call22 to ptr
  br label %cleanup

err_free_dev:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %24 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %err_unreg_dev, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %err_free_dev ], [ %23, %err_unreg_dev ], [ %call7.i.i, %dev_name.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wwan_hwsim_dev_release(ptr noundef %sysdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sysdev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wwan_hwsim_dev_del_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -944
  tail call void @_raw_spin_lock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %work, i32 -940
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %work, i32 -940
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wwan_hwsim_devs_lock) #8
  tail call fastcc void @wwan_hwsim_dev_del(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wwan_register_ops(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wwan_hwsim_netdev_setup(ptr nocapture noundef writeonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @wwan_hwsim_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 30
  %3 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %4 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %max_mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -2, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 144, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_netdev_xmit(ptr noundef %skb, ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_debugfs_devdestroy_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %usrbuf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %del_work = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %del_work) #8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_debugfs_portcreate_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %usrbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc ptr @wwan_hwsim_port_new(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %ports = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %1, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %1, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call, ptr noundef %4, ptr noundef %ports) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ports, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %count, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wwan_hwsim_port_new(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %port_idx = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %port_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_idx, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %port_idx, align 8
  %id = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  %dev4 = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 2
  %call5 = tail call ptr @wwan_create_port(ptr noundef %dev4, i32 noundef 0, ptr noundef nonnull @wwan_hwsim_port_ops, ptr noundef nonnull %call7.i.i) #8
  %wwan = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %wwan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %wwan, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %del_work = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %del_work, i32 noundef 0) #8
  %7 = ptrtoint ptr %del_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %del_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @wwan_hwsim_port_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry15 = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry15, ptr %entry15, align 8
  %prev.i = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @wwan_hwsim_port_del_work, ptr %func, align 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %12)
  %debugfs_topdir = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %debugfs_topdir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_topdir, align 4
  %call20 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %14) #8
  %debugfs_topdir21 = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %debugfs_topdir21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %debugfs_topdir21, align 8
  %call23 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 128, ptr noundef %call20, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @wwan_hwsim_debugfs_portdestroy_fops) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.then8 ], [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_create_port(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wwan_hwsim_port_del_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %dev1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ports_lock = getelementptr inbounds %struct.wwan_hwsim_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ports_lock) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %3, %add.ptr
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %work, i32 -16
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %work, i32 -16
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ports_lock) #8
  %debugfs_topdir.i = getelementptr i8, ptr %work, i32 44
  %12 = ptrtoint ptr %debugfs_topdir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_topdir.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #8
  %call.i = tail call ptr @current_work() #8
  %cmp.not.i = icmp eq ptr %call.i, %work
  br i1 %cmp.not.i, label %list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge, label %if.then.i

list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wwan_hwsim_port_del.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  br label %wwan_hwsim_port_del.exit

wwan_hwsim_port_del.exit:                         ; preds = %if.then.i, %list_del_init.exit.wwan_hwsim_port_del.exit_crit_edge
  %wwan.i = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %wwan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wwan.i, align 4
  tail call void @wwan_remove_port(ptr noundef %15) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %wwan_hwsim_port_del.exit, %if.then
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_port_start(ptr noundef %wport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %wport) #8
  %pstate = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pstate, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wwan_hwsim_port_stop(ptr nocapture noundef %wport) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_port_tx(ptr noundef %wport, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %wport) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %in, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp165.not = icmp eq i32 %1, 0
  br i1 %cmp165.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %in, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc3, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.0166
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %5)
  %cmp1 = icmp eq i8 %5, 13
  %inc = zext i1 %cmp1 to i32
  %spec.select = add i32 %n.0167, %inc
  %inc3 = add nuw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc3, %1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = mul i32 %spec.select, 6
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %add = add i32 %1, %n.0.lcssa
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.end.cleanup106_crit_edge, label %for.cond8.preheader

for.end.cleanup106_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

for.cond8.preheader:                              ; preds = %for.end
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10169.not = icmp eq i32 %7, 0
  br i1 %cmp10169.not, label %for.cond8.preheader.if.end105_crit_edge, label %for.body12.lr.ph

for.cond8.preheader.if.end105_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

for.body12.lr.ph:                                 ; preds = %for.cond8.preheader
  %data13 = getelementptr inbounds %struct.sk_buff, ptr %in, i32 0, i32 19
  %pstate = getelementptr inbounds %struct.wwan_hwsim_port, ptr %call, i32 0, i32 6
  br label %for.body12

for.body12:                                       ; preds = %cleanup.for.body12_crit_edge, %for.body12.lr.ph
  %8 = phi i32 [ %7, %for.body12.lr.ph ], [ %26, %cleanup.for.body12_crit_edge ]
  %s.0171 = phi i32 [ 0, %for.body12.lr.ph ], [ %s.2, %cleanup.for.body12_crit_edge ]
  %i.1170 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc96, %cleanup.for.body12_crit_edge ]
  %9 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data13, align 4
  %arrayidx14 = getelementptr i8, ptr %10, i32 %i.1170
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %13 = ptrtoint ptr %pstate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pstate, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.body12.cleanup_crit_edge [
    i32 0, label %if.then17
    i32 1, label %if.then37
    i32 2, label %if.then54
    i32 3, label %if.then84
  ]

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %for.body12
  %16 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %12, label %if.then29 [
    i8 65, label %if.then17.cleanup.sink.split_crit_edge
    i8 97, label %if.then17.cleanup.sink.split_crit_edge177
    i8 10, label %if.then17.cleanup_crit_edge
  ]

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17.cleanup.sink.split_crit_edge177:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then29:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then37:                                        ; preds = %for.body12
  %17 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %12, label %if.else47 [
    i8 84, label %if.then37.cleanup.sink.split_crit_edge
    i8 116, label %if.then37.cleanup.sink.split_crit_edge178
  ]

if.then37.cleanup.sink.split_crit_edge178:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then37.cleanup.sink.split_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else47:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then54:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %12)
  %cmp56.not = icmp eq i8 %12, 13
  br i1 %cmp56.not, label %if.end59, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.then54
  %add60 = add nuw i32 %i.1170, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %8)
  %cmp62 = icmp ult i32 %add60, %8
  br i1 %cmp62, label %land.lhs.true, label %if.end59.if.end72_crit_edge

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66 = getelementptr i8, ptr %10, i32 %add60
  %18 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp68 = icmp eq i8 %19, 10
  %spec.select164 = select i1 %cmp68, i32 %add60, i32 %i.1170
  %.pre = add nuw i32 %spec.select164, 1
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true, %if.end59.if.end72_crit_edge
  %add78.pre-phi = phi i32 [ %.pre, %land.lhs.true ], [ %add60, %if.end59.if.end72_crit_edge ]
  %i.2 = phi i32 [ %spec.select164, %land.lhs.true ], [ %i.1170, %if.end59.if.end72_crit_edge ]
  %sub = sub i32 %i.2, %s.0171
  %add73 = add i32 %sub, 1
  %call74 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add73) #8
  %20 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data13, align 4
  %arrayidx76 = getelementptr i8, ptr %21, i32 %s.0171
  %22 = call ptr @memcpy(ptr %call74, ptr %arrayidx76, i32 %add73)
  %call77 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #8
  %23 = call ptr @memcpy(ptr %call77, ptr @.str.11, i32 6)
  br label %cleanup.sink.split

if.then84:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %12)
  %cmp86.not = icmp eq i8 %12, 13
  br i1 %cmp86.not, label %if.then84.cleanup.sink.split_crit_edge, label %if.then84.cleanup_crit_edge

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84.cleanup.sink.split_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then84.cleanup.sink.split_crit_edge, %if.end72, %if.else47, %if.then37.cleanup.sink.split_crit_edge, %if.then37.cleanup.sink.split_crit_edge178, %if.then29, %if.then17.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge177
  %.sink = phi i32 [ 3, %if.then29 ], [ 0, %if.end72 ], [ 3, %if.else47 ], [ 1, %if.then17.cleanup.sink.split_crit_edge ], [ 1, %if.then17.cleanup.sink.split_crit_edge177 ], [ 2, %if.then37.cleanup.sink.split_crit_edge ], [ 2, %if.then37.cleanup.sink.split_crit_edge178 ], [ 0, %if.then84.cleanup.sink.split_crit_edge ]
  %i.4.ph = phi i32 [ %i.1170, %if.then29 ], [ %i.2, %if.end72 ], [ %i.1170, %if.else47 ], [ %i.1170, %if.then17.cleanup.sink.split_crit_edge ], [ %i.1170, %if.then17.cleanup.sink.split_crit_edge177 ], [ %i.1170, %if.then37.cleanup.sink.split_crit_edge ], [ %i.1170, %if.then37.cleanup.sink.split_crit_edge178 ], [ %i.1170, %if.then84.cleanup.sink.split_crit_edge ]
  %s.2.ph = phi i32 [ %s.0171, %if.then29 ], [ %add78.pre-phi, %if.end72 ], [ %s.0171, %if.else47 ], [ %s.0171, %if.then17.cleanup.sink.split_crit_edge ], [ %s.0171, %if.then17.cleanup.sink.split_crit_edge177 ], [ %s.0171, %if.then37.cleanup.sink.split_crit_edge ], [ %s.0171, %if.then37.cleanup.sink.split_crit_edge178 ], [ %s.0171, %if.then84.cleanup.sink.split_crit_edge ]
  %24 = ptrtoint ptr %pstate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %pstate, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then84.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %for.body12.cleanup_crit_edge
  %i.4 = phi i32 [ %i.1170, %if.then54.cleanup_crit_edge ], [ %i.1170, %if.then84.cleanup_crit_edge ], [ %i.1170, %if.then17.cleanup_crit_edge ], [ %i.1170, %for.body12.cleanup_crit_edge ], [ %i.4.ph, %cleanup.sink.split ]
  %s.2 = phi i32 [ %s.0171, %if.then54.cleanup_crit_edge ], [ %s.0171, %if.then84.cleanup_crit_edge ], [ %s.0171, %if.then17.cleanup_crit_edge ], [ %s.0171, %for.body12.cleanup_crit_edge ], [ %s.2.ph, %cleanup.sink.split ]
  %inc96 = add nuw i32 %i.4, 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %cmp10 = icmp ult i32 %inc96, %26
  br i1 %cmp10, label %cleanup.for.body12_crit_edge, label %for.end97

cleanup.for.body12_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.end97:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_cmp4(i32 %inc96, i32 %s.2)
  %cmp98 = icmp sgt i32 %inc96, %s.2
  br i1 %cmp98, label %if.then100, label %for.end97.if.end105_crit_edge

for.end97.if.end105_crit_edge:                    ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then100:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #10
  %sub101 = sub i32 %inc96, %s.2
  %call102 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub101) #8
  %data103 = getelementptr inbounds %struct.sk_buff, ptr %in, i32 0, i32 19
  %27 = ptrtoint ptr %data103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data103, align 4
  %arrayidx104 = getelementptr i8, ptr %28, i32 %s.2
  %29 = call ptr @memcpy(ptr %call102, ptr %arrayidx104, i32 %sub101)
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %for.end97.if.end105_crit_edge, %for.cond8.preheader.if.end105_crit_edge
  tail call void @consume_skb(ptr noundef %in) #8
  tail call void @wwan_port_rx(ptr noundef %wport, ptr noundef nonnull %call.i) #8
  br label %cleanup106

cleanup106:                                       ; preds = %if.end105, %for.end.cleanup106_crit_edge
  %retval.0 = phi i32 [ 0, %if.end105 ], [ -12, %for.end.cleanup106_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_port_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wwan_hwsim_debugfs_portdestroy_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %usrbuf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %del_work = getelementptr inbounds %struct.wwan_hwsim_port, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %del_work) #8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_devices, !1, !"__param_devices", i1 false, i1 false}
!1 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_devicestype352, !1, !"__UNIQUE_ID_devicestype352", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_devices353, !4, !"__UNIQUE_ID_devices353", i1 false, i1 false}
!4 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 26, i32 1}
!5 = !{ptr @__initcall__kmod_wwan_hwsim__354_542_wwan_hwsim_init6, !6, !"__initcall__kmod_wwan_hwsim__354_542_wwan_hwsim_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 542, i32 1}
!7 = !{ptr @__exitcall_wwan_hwsim_exit, !8, !"__exitcall_wwan_hwsim_exit", i1 false, i1 false}
!8 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 543, i32 1}
!9 = !{ptr @__UNIQUE_ID_author355, !10, !"__UNIQUE_ID_author355", i1 false, i1 false}
!10 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 545, i32 1}
!11 = !{ptr @__UNIQUE_ID_description356, !12, !"__UNIQUE_ID_description356", i1 false, i1 false}
!12 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 546, i32 1}
!13 = !{ptr @__UNIQUE_ID_file357, !14, !"__UNIQUE_ID_file357", i1 false, i1 false}
!14 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 547, i32 1}
!15 = !{ptr @__UNIQUE_ID_license358, !14, !"__UNIQUE_ID_license358", i1 false, i1 false}
!16 = !{ptr @wwan_hwsim_class, !17, !"wwan_hwsim_class", i1 false, i1 false}
!17 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 28, i32 22}
!18 = !{ptr @wwan_hwsim_debugfs_topdir, !19, !"wwan_hwsim_debugfs_topdir", i1 false, i1 false}
!19 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 30, i32 23}
!20 = !{ptr @wwan_hwsim_debugfs_devcreate, !21, !"wwan_hwsim_debugfs_devcreate", i1 false, i1 false}
!21 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 31, i32 23}
!22 = !{ptr @__param_str_devices, !1, !"__param_str_devices", i1 false, i1 false}
!23 = !{ptr @wwan_hwsim_devsnum, !24, !"wwan_hwsim_devsnum", i1 false, i1 false}
!24 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 24, i32 12}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 33, i32 8}
!27 = !{ptr @wwan_hwsim_devs_lock, !26, !"wwan_hwsim_devs_lock", i1 false, i1 false}
!28 = !{ptr @wwan_hwsim_devs, !29, !"wwan_hwsim_devs", i1 false, i1 false}
!29 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 34, i32 8}
!30 = !{ptr @wwan_hwsim_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 509, i32 21}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 515, i32 24}
!35 = !{ptr @wwan_hwsim_debugfs_devcreate_fops, !36, !"wwan_hwsim_debugfs_devcreate_fops", i1 false, i1 false}
!36 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 447, i32 37}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 280, i32 26}
!39 = !{ptr @wwan_hwsim_dev_new.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 282, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @wwan_hwsim_dev_new.__key.5, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 289, i32 2}
!44 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 297, i32 22}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 300, i32 23}
!49 = !{ptr @wwan_hwsim_dev_idx, !50, !"wwan_hwsim_dev_idx", i1 false, i1 false}
!50 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 35, i32 21}
!51 = !{ptr @wwan_hwsim_wwan_rtnl_ops, !52, !"wwan_hwsim_wwan_rtnl_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 96, i32 30}
!53 = !{ptr @wwan_hwsim_netdev_ops, !54, !"wwan_hwsim_netdev_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 79, i32 36}
!55 = !{ptr @wwan_hwsim_debugfs_devdestroy_fops, !56, !"wwan_hwsim_debugfs_devdestroy_fops", i1 false, i1 false}
!56 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 424, i32 37}
!57 = !{ptr @wwan_hwsim_debugfs_portcreate_fops, !58, !"wwan_hwsim_debugfs_portcreate_fops", i1 false, i1 false}
!58 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 403, i32 37}
!59 = !{ptr @wwan_hwsim_port_new.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 213, i32 2}
!61 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 215, i32 31}
!64 = !{ptr @wwan_hwsim_port_ops, !65, !"wwan_hwsim_port_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 183, i32 35}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 160, i32 28}
!68 = !{ptr @wwan_hwsim_debugfs_portdestroy_fops, !69, !"wwan_hwsim_debugfs_portdestroy_fops", i1 false, i1 false}
!69 = !{!"../drivers/net/wwan/wwan_hwsim.c", i32 379, i32 37}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
