; ModuleID = '/llk/IR_all_yes/drivers/net/plip/plip.c_pt.bc'
source_filename = "../drivers/net/plip/plip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
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
%struct.ifreq = type { %union.anon.106, %union.anon.107 }
%union.anon.106 = type { [16 x i8] }
%union.anon.107 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_local = type { ptr, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.plip_local, %struct.plip_local, ptr, i32, i32, i32, i16, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.completion }
%struct.plip_local = type { i32, i32, %union.anon.120, i16, i8, i8, ptr }
%union.anon.120 = type { i16 }
%struct.anon.121 = type { i8, i8 }

@__param_str_parport = internal constant [13 x i8] c"plip.parport\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_parport = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @parport }, align 4
@__param_parport = internal constant %struct.kernel_param { ptr @__param_str_parport, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.99 { ptr @__param_arr_parport } }, section "__param", align 4
@__UNIQUE_ID_parporttype362 = internal constant [35 x i8] c"plip.parmtype=parport:array of int\00", section ".modinfo", align 1
@__param_str_timid = internal constant [11 x i8] c"plip.timid\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timid = internal constant %struct.kernel_param { ptr @__param_str_timid, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.99 { ptr @timid } }, section "__param", align 4
@__UNIQUE_ID_timidtype363 = internal constant [24 x i8] c"plip.parmtype=timid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_parport364 = internal constant [64 x i8] c"plip.parm=parport:List of parport device numbers to use by plip\00", section ".modinfo", align 1
@dev_plip = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@plip_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @plip_detach, ptr @plip_attach, ptr @plip_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__setup_str_plip_setup = internal constant [6 x i8] c"plip=\00", section ".init.rodata", align 1
@__setup_plip_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_plip_setup, ptr @plip_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_plip__365_1438_plip_init6 = internal global ptr @plip_init, section ".initcall6.init", align 4
@__exitcall_plip_cleanup_module = internal global ptr @plip_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file366 = internal constant [32 x i8] c"plip.file=drivers/net/plip/plip\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [17 x i8] c"plip.license=GPL\00", section ".modinfo", align 1
@parport = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plip\00", [27 x i8] zeroinitializer }, align 32
@plip_attach.unit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@plip_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013plip: too many devices\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"plip_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/plip/plip.c\00", [40 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr = internal global ptr @plip_attach._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"plip%d\00", [25 x i8] zeroinitializer }, align 32
@plip_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016plip: %s has no IRQ. Using IRQ-less mode,which is fairly inefficient!\0A\00", [55 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.7 = internal global ptr @plip_attach._entry.5, section ".printk_index", align 4
@plip_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: parport_register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.10 = internal global ptr @plip_attach._entry.8, section ".printk_index", align 4
@plip_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: network register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.13 = internal global ptr @plip_attach._entry.11, section ".printk_index", align 4
@plip_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.16 = internal global ptr @plip_attach._entry.14, section ".printk_index", align 4
@version = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NET3 PLIP version 2.4-parport gniibe@mri.co.jp\0A\00", [48 x i8] zeroinitializer }, align 32
@plip_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: Parallel port at %#3lx, using IRQ %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.19 = internal global ptr @plip_attach._entry.17, section ".printk_index", align 4
@plip_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Parallel port at %#3lx, not using IRQ.\0A\00", [50 x i8] zeroinitializer }, align 32
@plip_attach._entry_ptr.22 = internal global ptr @plip_attach._entry.20, section ".printk_index", align 4
@plip_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: why am I being woken up?\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"plip_wakeup\00", [20 x i8] zeroinitializer }, align 32
@plip_wakeup._entry_ptr = internal global ptr @plip_wakeup._entry, section ".printk_index", align 4
@plip_wakeup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: I'm broken.\0A\00", [45 x i8] zeroinitializer }, align 32
@plip_wakeup._entry_ptr.27 = internal global ptr @plip_wakeup._entry.25, section ".printk_index", align 4
@plip_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: spurious interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"plip_interrupt\00", [17 x i8] zeroinitializer }, align 32
@plip_interrupt._entry_ptr = internal global ptr @plip_interrupt._entry, section ".printk_index", align 4
@plip_interrupt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: receive interrupt in error state\0A\00", [56 x i8] zeroinitializer }, align 32
@plip_interrupt._entry_ptr.32 = internal global ptr @plip_interrupt._entry.30, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@plip_init_netdev.addr_init = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FC\FC\FC\FC\FC\FC", [26 x i8] zeroinitializer }, align 32
@plip_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @plip_open, ptr @plip_close, ptr @plip_tx_packet, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @plip_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@plip_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @plip_hard_header, ptr null, ptr @plip_hard_header_cache, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&nl->immediate)\00", [62 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&nl->deferred)->work)\00", [54 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&nl->deferred)->timer\00", [40 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&nl->timer)->work)\00", [57 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&nl->timer)->timer\00", [43 x i8] zeroinitializer }, align 32
@plip_init_netdev.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nl->lock\00", [22 x i8] zeroinitializer }, align 32
@plip_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@plip_tx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: packet too big, %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"plip_tx_packet\00", [17 x i8] zeroinitializer }, align 32
@plip_tx_packet._entry_ptr = internal global ptr @plip_tx_packet._entry, section ".printk_index", align 4
@plip_rewrite_address.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@connection_state_table = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @plip_none, ptr @plip_receive_packet, ptr @plip_send_packet, ptr @plip_connection_close, ptr @plip_error], [44 x i8] zeroinitializer }, align 32
@plip_receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: bogus packet size %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"plip_receive_packet\00", [44 x i8] zeroinitializer }, align 32
@plip_receive_packet._entry_ptr = internal global ptr @plip_receive_packet._entry, section ".printk_index", align 4
@plip_receive_packet._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Memory squeeze.\0A\00", [41 x i8] zeroinitializer }, align 32
@plip_receive_packet._entry_ptr.57 = internal global ptr @plip_receive_packet._entry.55, section ".printk_index", align 4
@plip_receive_packet._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: checksum error\0A\00", [42 x i8] zeroinitializer }, align 32
@plip_receive_packet._entry_ptr.60 = internal global ptr @plip_receive_packet._entry.58, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@plip_send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: send skb lost\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"plip_send_packet\00", [47 x i8] zeroinitializer }, align 32
@plip_send_packet._entry_ptr = internal global ptr @plip_send_packet._entry, section ".printk_index", align 4
@plip_bh_timeout_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: transmit timeout(%d,%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"plip_bh_timeout_error\00", [42 x i8] zeroinitializer }, align 32
@plip_bh_timeout_error._entry_ptr = internal global ptr @plip_bh_timeout_error._entry, section ".printk_index", align 4
@plip_bh_timeout_error._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: receive timeout(%d,%02x)\0A\00", [32 x i8] zeroinitializer }, align 32
@plip_bh_timeout_error._entry_ptr.67 = internal global ptr @plip_bh_timeout_error._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parport\00", [24 x i8] zeroinitializer }, align 32
@parport_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@plip_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016plip: too many ports, %s ignored.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"plip_setup\00", [21 x i8] zeroinitializer }, align 32
@plip_setup._entry_ptr = internal global ptr @plip_setup._entry, section ".printk_index", align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timid\00", [26 x i8] zeroinitializer }, align 32
@plip_setup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.3, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014warning: 'plip=0x%x' ignored\0A\00", [32 x i8] zeroinitializer }, align 32
@plip_setup._entry_ptr.74 = internal global ptr @plip_setup._entry.72, section ".printk_index", align 4
@plip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014plip: warning, ignoring `timid' since specific ports given.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plip_init\00", [22 x i8] zeroinitializer }, align 32
@plip_init._entry_ptr = internal global ptr @plip_init._entry, section ".printk_index", align 4
@plip_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014plip: couldn't register driver\0A\00", [62 x i8] zeroinitializer }, align 32
@plip_init._entry_ptr.79 = internal global ptr @plip_init._entry.77, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"timid\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1246, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"dev_plip\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1252, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"plip_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1356, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"parport\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1245, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1357, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1268, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1277, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1281, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1291, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1308, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1315, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1319, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 53, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1321, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1325, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1196, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1199, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 935, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 962, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"addr_init\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 287, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"plip_netdev_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 266, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"plip_header_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 261, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 309, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 310, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 313, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 315, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1114, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 249, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 87, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 988, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 695, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 723, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [23 x i8] c"connection_state_table\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 355, i32 24 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 633, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 639, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 670, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 765, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 427, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 446, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1395, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant [12 x i8] c"parport_ptr\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1386, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1400, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1402, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1409, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1426, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [27 x i8] c"../drivers/net/plip/plip.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1431, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__UNIQUE_ID_parport364, ptr @__UNIQUE_ID_parporttype362, ptr @__UNIQUE_ID_timidtype363, ptr @__exitcall_plip_cleanup_module, ptr @__initcall__kmod_plip__365_1438_plip_init6, ptr @__param_parport, ptr @__param_timid, ptr @__setup_plip_setup, ptr @plip_attach._entry, ptr @plip_attach._entry.11, ptr @plip_attach._entry.14, ptr @plip_attach._entry.17, ptr @plip_attach._entry.20, ptr @plip_attach._entry.5, ptr @plip_attach._entry.8, ptr @plip_attach._entry_ptr, ptr @plip_attach._entry_ptr.10, ptr @plip_attach._entry_ptr.13, ptr @plip_attach._entry_ptr.16, ptr @plip_attach._entry_ptr.19, ptr @plip_attach._entry_ptr.22, ptr @plip_attach._entry_ptr.7, ptr @plip_bh_timeout_error._entry, ptr @plip_bh_timeout_error._entry.65, ptr @plip_bh_timeout_error._entry_ptr, ptr @plip_bh_timeout_error._entry_ptr.67, ptr @plip_cleanup_module, ptr @plip_init._entry, ptr @plip_init._entry.77, ptr @plip_init._entry_ptr, ptr @plip_init._entry_ptr.79, ptr @plip_interrupt._entry, ptr @plip_interrupt._entry.30, ptr @plip_interrupt._entry_ptr, ptr @plip_interrupt._entry_ptr.32, ptr @plip_receive_packet._entry, ptr @plip_receive_packet._entry.55, ptr @plip_receive_packet._entry.58, ptr @plip_receive_packet._entry_ptr, ptr @plip_receive_packet._entry_ptr.57, ptr @plip_receive_packet._entry_ptr.60, ptr @plip_send_packet._entry, ptr @plip_send_packet._entry_ptr, ptr @plip_setup._entry, ptr @plip_setup._entry.72, ptr @plip_setup._entry_ptr, ptr @plip_setup._entry_ptr.74, ptr @plip_tx_packet._entry, ptr @plip_tx_packet._entry_ptr, ptr @plip_wakeup._entry, ptr @plip_wakeup._entry.25, ptr @plip_wakeup._entry_ptr, ptr @plip_wakeup._entry_ptr.27, ptr @timid, ptr @dev_plip, ptr @plip_driver, ptr @parport, ptr @.str, ptr @plip_attach.unit, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @version, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @plip_init_netdev.addr_init, ptr @plip_netdev_ops, ptr @plip_header_ops, ptr @plip_init_netdev.__key, ptr @.str.33, ptr @plip_init_netdev.__key.34, ptr @.str.35, ptr @plip_init_netdev.__key.36, ptr @.str.37, ptr @plip_init_netdev.__key.38, ptr @.str.39, ptr @plip_init_netdev.__key.40, ptr @.str.41, ptr @plip_init_netdev.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @connection_state_table, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @parport_ptr, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_plip to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach.unit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_wakeup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_interrupt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.addr_init to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init_netdev.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_tx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connection_state_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_receive_packet._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_receive_packet._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_bh_timeout_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_bh_timeout_error._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_setup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plip_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plip_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @dev_plip, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @unregister_netdev(ptr noundef nonnull %1) #13
  %port_owner = getelementptr i8, ptr %1, i32 2616
  %2 = ptrtoint ptr %port_owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %pardev = getelementptr i8, ptr %1, i32 2592
  %4 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pardev, align 4
  tail call void @parport_release(ptr noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %pardev3 = getelementptr i8, ptr %1, i32 2592
  %6 = ptrtoint ptr %pardev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev3, align 4
  tail call void @parport_unregister_device(ptr noundef %7) #13
  tail call void @free_netdev(ptr noundef nonnull %1) #13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @parport_unregister_driver(ptr noundef nonnull @plip_driver) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ints) #13
  %0 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 1
  %1 = call ptr @memset(ptr %ints, i32 255, i32 16)
  %call = call ptr @get_options(ptr noundef %str, i32 noundef 4, ptr noundef nonnull %ints) #13
  %call1 = call i32 @strncmp(ptr noundef %call, ptr noundef nonnull dereferenceable(8) @.str.68, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 7
  %call2 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 10) #13
  %2 = load i32, ptr @parport_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @parport_ptr, align 4
  %arrayidx = getelementptr [8 x i32], ptr @parport, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %arrayidx, align 4
  br label %if.end24

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %call) #16
  br label %if.end24

if.else5:                                         ; preds = %entry
  %call6 = call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(6) @.str.71) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1, ptr @timid, align 4
  br label %if.end24

if.else9:                                         ; preds = %if.else5
  %4 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ints, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11 = icmp eq i32 %5, 0
  br i1 %cmp11, label %if.else9.if.then14_crit_edge, label %lor.lhs.false

if.else9.if.then14_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.else9
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %lor.lhs.false.if.then14_crit_edge, label %do.end18

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.else9.if.then14_crit_edge
  store i32 -2, ptr @parport, align 4
  br label %if.end24

do.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %7) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %if.then14, %if.then8, %do.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ints) #13
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @parport, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %land.lhs.true [
    i32 -2, label %entry.return_crit_edge
    i32 -1, label %entry.if.end3_crit_edge
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @timid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end3_crit_edge, label %do.end

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #16
  store i32 0, ptr @timid, align 4
  br label %if.end3

if.end3:                                          ; preds = %do.end, %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @__parport_register_driver(ptr noundef nonnull @plip_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %do.end8

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #16
  br label %return

return:                                           ; preds = %do.end8, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end8 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @plip_detach(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_attach(ptr noundef %port) #4 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  %plip_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #13
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %plip_cb) #13
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %plip_cb, i32 0, i32 1
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %plip_cb, i32 0, i32 2
  %3 = getelementptr inbounds %struct.pardev_cb, ptr %plip_cb, i32 0, i32 3
  %4 = load i32, ptr @parport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %for.body.i

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr @timid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %devices = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 12
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devices, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.i:                                       ; preds = %for.body.i
  %8 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp1.not.1.i = icmp eq i32 %8, -1
  br i1 %cmp1.not.1.i, label %for.cond.i.cleanup_crit_edge, label %for.body.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %16)
  %cmp3.1.i = icmp eq i32 %8, %16
  br i1 %cmp3.1.i, label %for.body.1.i.if.then_crit_edge, label %for.cond.1.i

for.body.1.i.if.then_crit_edge:                   ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.1.i:                                     ; preds = %for.body.1.i
  %9 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.not.2.i = icmp eq i32 %9, -1
  br i1 %cmp1.not.2.i, label %for.cond.1.i.cleanup_crit_edge, label %for.body.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %16)
  %cmp3.2.i = icmp eq i32 %9, %16
  br i1 %cmp3.2.i, label %for.body.2.i.if.then_crit_edge, label %for.cond.2.i

for.body.2.i.if.then_crit_edge:                   ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.2.i:                                     ; preds = %for.body.2.i
  %10 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1.not.3.i = icmp eq i32 %10, -1
  br i1 %cmp1.not.3.i, label %for.cond.2.i.cleanup_crit_edge, label %for.body.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp3.3.i = icmp eq i32 %10, %16
  br i1 %cmp3.3.i, label %for.body.3.i.if.then_crit_edge, label %for.cond.3.i

for.body.3.i.if.then_crit_edge:                   ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.3.i:                                     ; preds = %for.body.3.i
  %11 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp1.not.4.i = icmp eq i32 %11, -1
  br i1 %cmp1.not.4.i, label %for.cond.3.i.cleanup_crit_edge, label %for.body.4.i

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp3.4.i = icmp eq i32 %11, %16
  br i1 %cmp3.4.i, label %for.body.4.i.if.then_crit_edge, label %for.cond.4.i

for.body.4.i.if.then_crit_edge:                   ; preds = %for.body.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.4.i:                                     ; preds = %for.body.4.i
  %12 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp1.not.5.i = icmp eq i32 %12, -1
  br i1 %cmp1.not.5.i, label %for.cond.4.i.cleanup_crit_edge, label %for.body.5.i

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp3.5.i = icmp eq i32 %12, %16
  br i1 %cmp3.5.i, label %for.body.5.i.if.then_crit_edge, label %for.cond.5.i

for.body.5.i.if.then_crit_edge:                   ; preds = %for.body.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.5.i:                                     ; preds = %for.body.5.i
  %13 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp1.not.6.i = icmp eq i32 %13, -1
  br i1 %cmp1.not.6.i, label %for.cond.5.i.cleanup_crit_edge, label %for.body.6.i

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp3.6.i = icmp eq i32 %13, %16
  br i1 %cmp3.6.i, label %for.body.6.i.if.then_crit_edge, label %for.cond.6.i

for.body.6.i.if.then_crit_edge:                   ; preds = %for.body.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.6.i:                                     ; preds = %for.body.6.i
  %14 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp1.not.7.i = icmp ne i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.7.i.not = icmp eq i32 %14, %16
  %or.cond = select i1 %cmp1.not.7.i, i1 %cmp3.7.i.not, i1 false
  br i1 %or.cond, label %for.cond.6.i.if.then_crit_edge, label %for.cond.6.i.cleanup_crit_edge

for.cond.6.i.cleanup_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.6.i.if.then_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.body.i:                                       ; preds = %entry
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %16)
  %cmp3.i = icmp eq i32 %4, %16
  br i1 %cmp3.i, label %for.body.i.if.then_crit_edge, label %for.cond.i

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %for.body.i.if.then_crit_edge, %for.cond.6.i.if.then_crit_edge, %for.body.6.i.if.then_crit_edge, %for.body.5.i.if.then_crit_edge, %for.body.4.i.if.then_crit_edge, %for.body.3.i.if.then_crit_edge, %for.body.2.i.if.then_crit_edge, %for.body.1.i.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %17 = load i32, ptr @plip_attach.unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp4 = icmp eq i32 %17, 8
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, i32 noundef %17)
  %call8 = tail call ptr @alloc_etherdev_mqs(i32 noundef 424, i32 noundef 1, i32 noundef 1) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call15 = call ptr @strcpy(ptr noundef nonnull %call8, ptr noundef nonnull %name) #17
  %irq = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 5
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq16 = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 64
  %20 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq16, align 4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 5
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %base_addr, align 32
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp18 = icmp eq i32 %24, -1
  br i1 %cmp18, label %do.end22, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %name24 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %25 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name24, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %26) #16
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.end11.if.end26_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call8, i32 2304
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8, ptr %add.ptr.i, align 4
  %28 = getelementptr inbounds i8, ptr %plip_cb, i32 16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8, ptr %2, align 4
  %31 = ptrtoint ptr %plip_cb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @plip_preempt, ptr %plip_cb, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @plip_wakeup, ptr %1, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @plip_interrupt, ptr %3, align 4
  %34 = load i32, ptr @plip_attach.unit, align 4
  %call31 = call ptr @parport_register_dev_model(ptr noundef %port, ptr noundef nonnull %call8, ptr noundef nonnull %plip_cb, i32 noundef %34) #13
  %pardev = getelementptr i8, ptr %call8, i32 2592
  %35 = ptrtoint ptr %pardev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call31, ptr %pardev, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %name) #16
  br label %err_free_dev

if.end41:                                         ; preds = %if.end26
  call fastcc void @plip_init_netdev(ptr noundef nonnull %call8)
  %call42 = call i32 @register_netdev(ptr noundef nonnull %call8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end54, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %name) #16
  %36 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pardev, align 4
  call void @parport_unregister_device(ptr noundef %37) #13
  br label %err_free_dev

do.end54:                                         ; preds = %if.end41
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @version) #16
  %38 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp58.not = icmp eq i32 %39, -1
  %40 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_addr, align 32
  br i1 %cmp58.not, label %do.end71, label %do.end62

do.end62:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %call8, i32 noundef %41, i32 noundef %39) #16
  br label %if.end77

do.end71:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %call8, i32 noundef %41) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %do.end62
  %42 = load i32, ptr @plip_attach.unit, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr @plip_attach.unit, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @dev_plip, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8, ptr %arrayidx, align 4
  br label %cleanup

err_free_dev:                                     ; preds = %do.end47, %do.end37
  call void @free_netdev(ptr noundef nonnull %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.end77, %if.end.cleanup_crit_edge, %do.end, %for.cond.6.i.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %plip_cb) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plip_probe(ptr nocapture noundef readonly %par_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pardevice, ptr %par_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #17
  %4 = ptrtoint ptr %par_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par_dev, align 8
  %call3 = tail call i32 @strncmp(ptr noundef %5, ptr noundef %3, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plip_preempt(ptr nocapture noundef %handle) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr i8, ptr %handle, i32 2604
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 2616, i32 2620
  %not.cmp.not = xor i1 %cmp.not, true
  %.5 = zext i1 %not.cmp.not to i32
  %port_owner = getelementptr i8, ptr %handle, i32 %.
  %2 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.5, ptr %port_owner, align 4
  ret i32 %.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_wakeup(ptr noundef %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port_owner = getelementptr i8, ptr %handle, i32 2616
  %0 = ptrtoint ptr %port_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %handle) #16
  %pardev = getelementptr i8, ptr %handle, i32 2592
  %2 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardev, align 4
  %call2 = tail call i32 @parport_claim(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %handle) #16
  br label %if.end12

if.end12:                                         ; preds = %do.end7, %entry.if.end12_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %handle, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %pardev16 = getelementptr i8, ptr %handle, i32 2592
  %6 = ptrtoint ptr %pardev16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev16, align 4
  %call17 = tail call i32 @parport_claim(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %port_owner, align 4
  %9 = ptrtoint ptr %pardev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pardev16, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %12, i8 noundef zeroext 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_interrupt(ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_data = getelementptr i8, ptr %dev_id, i32 2572
  %lock = getelementptr i8, ptr %dev_id, i32 2624
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %pardev.i = getelementptr i8, ptr %dev_id, i32 2592
  %0 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_status.i, align 4
  %call2.i = tail call zeroext i8 %7(ptr noundef %3) #13
  %8 = and i8 %call2.i, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %8)
  %cmp8.not = icmp eq i8 %8, -64
  br i1 %cmp8.not, label %if.end19, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %entry
  %connection = getelementptr i8, ptr %dev_id, i32 2604
  %9 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connection, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %10, label %if.end19.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %if.end19.sw.bb20_crit_edge
    i32 2, label %if.end19.sw.bb20_crit_edge48
    i32 4, label %do.end26
  ]

if.end19.sw.bb20_crit_edge48:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb20

if.end19.sw.bb20_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb20

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #13
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb, %if.end19.sw.bb20_crit_edge, %if.end19.sw.bb20_crit_edge48
  %14 = ptrtoint ptr %rcv_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %rcv_data, align 4
  %15 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %connection, align 4
  %timeout_count = getelementptr i8, ptr %dev_id, i32 2608
  %16 = ptrtoint ptr %timeout_count to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %timeout_count, align 4
  %immediate = getelementptr i8, ptr %dev_id, i32 2308
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %immediate) #13
  br label %cleanup

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %dev_id) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %sw.bb20, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plip_init_netdev(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %0 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 144, ptr %flags, align 8
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @plip_init_netdev.addr_init, i32 noundef 6) #13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @plip_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @plip_header_ops, ptr %header_ops, align 4
  %port_owner = getelementptr i8, ptr %dev, i32 2616
  %4 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %port_owner, align 4
  %trigger = getelementptr i8, ptr %dev, i32 2596
  %5 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %trigger, align 4
  %nibble = getelementptr i8, ptr %dev, i32 2600
  %6 = ptrtoint ptr %nibble to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3000, ptr %nibble, align 4
  %immediate = getelementptr i8, ptr %dev, i32 2308
  tail call void @__init_work(ptr noundef %immediate, i32 noundef 0) #13
  %7 = ptrtoint ptr %immediate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %immediate, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 2324
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @plip_init_netdev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4 = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @plip_bh, ptr %func, align 4
  %deferred = getelementptr i8, ptr %dev, i32 2352
  tail call void @__init_work(ptr noundef %deferred, i32 noundef 0) #13
  %11 = ptrtoint ptr %deferred to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %deferred, align 4
  %lockdep_map15 = getelementptr i8, ptr %dev, i32 2368
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map15, ptr noundef nonnull @.str.35, ptr noundef nonnull @plip_init_netdev.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry18 = getelementptr i8, ptr %dev, i32 2356
  %12 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i87 = getelementptr i8, ptr %dev, i32 2360
  %13 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry18, ptr %prev.i87, align 4
  %func21 = getelementptr i8, ptr %dev, i32 2364
  %14 = ptrtoint ptr %func21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @plip_kick_bh, ptr %func21, align 4
  %timer = getelementptr i8, ptr %dev, i32 2396
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.37, ptr noundef nonnull @plip_init_netdev.__key.36) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp = icmp eq i32 %16, -1
  br i1 %cmp, label %do.body31, label %entry.do.body57_crit_edge

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body57

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %timer32 = getelementptr i8, ptr %dev, i32 2452
  tail call void @__init_work(ptr noundef %timer32, i32 noundef 0) #13
  %17 = ptrtoint ptr %timer32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %timer32, align 4
  %lockdep_map41 = getelementptr i8, ptr %dev, i32 2468
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map41, ptr noundef nonnull @.str.39, ptr noundef nonnull @plip_init_netdev.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry44 = getelementptr i8, ptr %dev, i32 2456
  %18 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i88 = getelementptr i8, ptr %dev, i32 2460
  %19 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry44, ptr %prev.i88, align 4
  %func47 = getelementptr i8, ptr %dev, i32 2464
  %20 = ptrtoint ptr %func47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @plip_timer_bh, ptr %func47, align 4
  %timer52 = getelementptr i8, ptr %dev, i32 2496
  tail call void @init_timer_key(ptr noundef %timer52, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.41, ptr noundef nonnull @plip_init_netdev.__key.40) #13
  br label %do.body57

do.body57:                                        ; preds = %do.body31, %entry.do.body57_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2624
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @plip_init_netdev.__key.42, i16 noundef signext 3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_bh(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %snd_data = getelementptr i8, ptr %work, i32 244
  %rcv_data = getelementptr i8, ptr %work, i32 264
  %is_deferred = getelementptr i8, ptr %work, i32 304
  %0 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %is_deferred, align 4
  %connection = getelementptr i8, ptr %work, i32 296
  %1 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connection, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @connection_state_table, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %4(ptr noundef %6, ptr noundef %add.ptr, ptr noundef %snd_data, ptr noundef %rcv_data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %lock.i = getelementptr i8, ptr %work, i32 316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %9 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connection, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %10, label %land.lhs.true.if.end55.i_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then23.i
  ]

land.lhs.true.if.end55.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp1.not.i = icmp eq i32 %call, 2
  br i1 %cmp1.not.i, label %if.then.i.if.end15.i_crit_edge, label %if.then2.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then2.i:                                       ; preds = %if.then.i
  %timeout_count.i = getelementptr i8, ptr %work, i32 300
  %12 = ptrtoint ptr %timeout_count.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %timeout_count.i, align 4
  %inc.i = add i16 %13, 1
  store i16 %inc.i, ptr %timeout_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp3.i = icmp eq i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %inc.i)
  %cmp5.i = icmp ult i16 %inc.i, 11
  %or.cond.i = select i1 %cmp3.i, i1 %cmp5.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %inc.i)
  %cmp9.i = icmp ult i16 %inc.i, 4
  %or.cond130.i = select i1 %or.cond.i, i1 true, i1 %cmp9.i
  br i1 %or.cond130.i, label %if.then11.i, label %if.end.i

if.then11.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br label %if.then

if.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %pardev.i.i = getelementptr i8, ptr %8, i32 2592
  %14 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pardev.i.i, align 4
  %port1.i.i = getelementptr inbounds %struct.pardevice, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port1.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_status.i.i, align 4
  %call2.i.i = tail call zeroext i8 %21(ptr noundef %17) #13
  %22 = ptrtoint ptr %snd_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %snd_data, align 4
  %conv13.i = zext i8 %call2.i.i to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %8, i32 noundef %23, i32 noundef %conv13.i) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i, %if.then.i.if.end15.i_crit_edge
  %error.addr.0.i = phi i32 [ %call, %if.end.i ], [ 3, %if.then.i.if.end15.i_crit_edge ]
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %24 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_errors.i, align 4
  %inc16.i = add i32 %25, 1
  store i32 %inc16.i, ptr %tx_errors.i, align 4
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 16
  br label %if.end55.sink.split.i

if.then23.i:                                      ; preds = %land.lhs.true
  %26 = ptrtoint ptr %rcv_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rcv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp25.i = icmp eq i32 %27, 1
  br i1 %cmp25.i, label %plip_bh_timeout_error.exit, label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp30.not.i = icmp eq i32 %call, 2
  br i1 %cmp30.not.i, label %if.end29.i.if.end51.i_crit_edge, label %if.then32.i

if.end29.i.if.end51.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then32.i:                                      ; preds = %if.end29.i
  %timeout_count33.i = getelementptr i8, ptr %work, i32 300
  %28 = ptrtoint ptr %timeout_count33.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %timeout_count33.i, align 4
  %inc34.i = add i16 %29, 1
  store i16 %inc34.i, ptr %timeout_count33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %inc34.i)
  %cmp36.i = icmp ult i16 %inc34.i, 4
  br i1 %cmp36.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br label %if.then

if.end40.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  %pardev.i119.i = getelementptr i8, ptr %8, i32 2592
  %30 = ptrtoint ptr %pardev.i119.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pardev.i119.i, align 4
  %port1.i120.i = getelementptr inbounds %struct.pardevice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %port1.i120.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port1.i120.i, align 4
  %ops.i121.i = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %ops.i121.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i121.i, align 4
  %read_status.i122.i = getelementptr inbounds %struct.parport_operations, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %read_status.i122.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_status.i122.i, align 4
  %call2.i123.i = tail call zeroext i8 %37(ptr noundef %33) #13
  %38 = ptrtoint ptr %rcv_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rcv_data, align 4
  %conv49.i = zext i8 %call2.i123.i to i32
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %8, i32 noundef %39, i32 noundef %conv49.i) #16
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end40.i, %if.end29.i.if.end51.i_crit_edge
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 6
  br label %if.end55.sink.split.i

if.end55.sink.split.i:                            ; preds = %if.end51.i, %if.end15.i
  %rx_dropped.sink131.i = phi ptr [ %rx_dropped.i, %if.end51.i ], [ %tx_aborted_errors.i, %if.end15.i ]
  %error.addr.1.ph.i = phi i32 [ %call, %if.end51.i ], [ %error.addr.0.i, %if.end15.i ]
  %40 = ptrtoint ptr %rx_dropped.sink131.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dropped.sink131.i, align 8
  %inc53.i = add i32 %41, 1
  store i32 %inc53.i, ptr %rx_dropped.sink131.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end55.sink.split.i, %land.lhs.true.if.end55.i_crit_edge
  %error.addr.1.i = phi i32 [ %call, %land.lhs.true.if.end55.i_crit_edge ], [ %error.addr.1.ph.i, %if.end55.sink.split.i ]
  %42 = ptrtoint ptr %rcv_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rcv_data, align 4
  %skb.i = getelementptr i8, ptr %work, i32 280
  %43 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end55.i.if.end60.i_crit_edge, label %if.then57.i

if.end55.i.if.end60.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %44, i32 noundef 0) #13
  %45 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %skb.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end60.i_crit_edge
  %46 = ptrtoint ptr %snd_data to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %snd_data, align 4
  %skb62.i = getelementptr i8, ptr %work, i32 260
  %47 = ptrtoint ptr %skb62.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skb62.i, align 4
  %tobool63.not.i = icmp eq ptr %48, null
  br i1 %tobool63.not.i, label %if.end60.i.if.end67.i_crit_edge, label %if.then64.i

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %48) #13
  %49 = ptrtoint ptr %skb62.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %skb62.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end60.i.if.end67.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %error.addr.1.i)
  %cmp69.i = icmp eq i32 %error.addr.1.i, 3
  br i1 %cmp69.i, label %if.then71.i, label %if.end67.i.if.end78.i_crit_edge

if.end67.i.if.end78.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78.i

if.then71.i:                                      ; preds = %if.end67.i
  %irq.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 64
  %50 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp72.not.i = icmp eq i32 %51, -1
  br i1 %cmp72.not.i, label %if.then71.i.if.end76.i_crit_edge, label %if.then74.i

if.then71.i.if.end76.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

if.then74.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @disable_irq(i32 noundef %51) #13
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then74.i, %if.then71.i.if.end76.i_crit_edge
  %52 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %53) #13
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end76.i, %if.end67.i.if.end78.i_crit_edge
  %irq.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 64
  %54 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.not.i.i = icmp eq i32 %55, -1
  br i1 %cmp.not.i.i, label %if.end78.i.disable_parport_interrupts.exit.i_crit_edge, label %if.then.i.i

if.end78.i.disable_parport_interrupts.exit.i_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_parport_interrupts.exit.i

if.then.i.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  %pardev.i124.i = getelementptr i8, ptr %8, i32 2592
  %56 = ptrtoint ptr %pardev.i124.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pardev.i124.i, align 4
  %port1.i125.i = getelementptr inbounds %struct.pardevice, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %port1.i125.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port1.i125.i, align 4
  %ops.i126.i = getelementptr inbounds %struct.parport, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %ops.i126.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i126.i, align 4
  %disable_irq.i.i = getelementptr inbounds %struct.parport_operations, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %disable_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disable_irq.i.i, align 4
  tail call void %63(ptr noundef %59) #13
  br label %disable_parport_interrupts.exit.i

disable_parport_interrupts.exit.i:                ; preds = %if.then.i.i, %if.end78.i.disable_parport_interrupts.exit.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %64 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  %66 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %connection, align 4
  %pardev.i127.i = getelementptr i8, ptr %8, i32 2592
  %67 = ptrtoint ptr %pardev.i127.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pardev.i127.i, align 4
  %port1.i128.i = getelementptr inbounds %struct.pardevice, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %port1.i128.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %port1.i128.i, align 4
  %ops.i129.i = getelementptr inbounds %struct.parport, ptr %70, i32 0, i32 24
  %71 = ptrtoint ptr %ops.i129.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i129.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  tail call void %74(ptr noundef %70, i8 noundef zeroext 0) #13
  br label %if.then

plip_bh_timeout_error.exit:                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br label %if.end

if.then:                                          ; preds = %disable_parport_interrupts.exit.i, %if.then38.i, %if.then11.i
  %75 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %is_deferred, align 4
  %deferred = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %deferred, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %plip_bh_timeout_error.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_kick_bh(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_deferred = getelementptr i8, ptr %work, i32 260
  %0 = ptrtoint ptr %is_deferred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_deferred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %immediate = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %immediate) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plip_timer_bh(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %kill_timer = getelementptr i8, ptr %work, i32 216
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kill_timer, i32 noundef 4) #13
  %0 = ptrtoint ptr %kill_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kill_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %work, i32 -148
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @plip_interrupt(ptr noundef %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 1) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %killed_timer_cmp = getelementptr i8, ptr %work, i32 220
  tail call void @complete(ptr noundef %killed_timer_cmp) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_open(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port_owner = getelementptr i8, ptr %dev, i32 2616
  %0 = ptrtoint ptr %port_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %pardev = getelementptr i8, ptr %dev, i32 2592
  %2 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardev, align 4
  %call1 = tail call i32 @parport_claim(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %port_owner, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %should_relinquish = getelementptr i8, ptr %dev, i32 2620
  %5 = ptrtoint ptr %should_relinquish to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %should_relinquish, align 4
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  %6 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %9, i8 noundef zeroext 0) #13
  %irq.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %if.end5.if.then6_crit_edge, label %enable_parport_interrupts.exit

if.end5.if.then6_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

enable_parport_interrupts.exit:                   ; preds = %if.end5
  %16 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pardev.i, align 4
  %port1.i54 = getelementptr inbounds %struct.pardevice, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %port1.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port1.i54, align 4
  %ops.i55 = getelementptr inbounds %struct.parport, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i55, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_irq.i, align 4
  tail call void %23(ptr noundef %19) #13
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp = icmp eq i32 %.pr, -1
  br i1 %cmp, label %enable_parport_interrupts.exit.if.then6_crit_edge, label %enable_parport_interrupts.exit.if.end8_crit_edge

enable_parport_interrupts.exit.if.end8_crit_edge: ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

enable_parport_interrupts.exit.if.then6_crit_edge: ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %enable_parport_interrupts.exit.if.then6_crit_edge, %if.end5.if.then6_crit_edge
  %kill_timer = getelementptr i8, ptr %dev, i32 2668
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kill_timer, i32 noundef 4) #13
  %25 = ptrtoint ptr %kill_timer to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %kill_timer, align 4
  %timer = getelementptr i8, ptr %dev, i32 2452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %timer, i32 noundef 1) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %enable_parport_interrupts.exit.if.end8_crit_edge
  %snd_data = getelementptr i8, ptr %dev, i32 2552
  %27 = ptrtoint ptr %snd_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %snd_data, align 4
  %rcv_data = getelementptr i8, ptr %dev, i32 2572
  %28 = ptrtoint ptr %rcv_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rcv_data, align 4
  %skb = getelementptr i8, ptr %dev, i32 2568
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %skb, align 4
  %skb12 = getelementptr i8, ptr %dev, i32 2588
  %30 = ptrtoint ptr %skb12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %skb12, align 4
  %connection = getelementptr i8, ptr %dev, i32 2604
  %31 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %connection, align 4
  %is_deferred = getelementptr i8, ptr %dev, i32 2612
  %32 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %is_deferred, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %if.end8.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end8.__in_dev_get_rtnl.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i57

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rtnl.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 249, ptr noundef nonnull @.str.46) #13
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i57, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end8.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %33 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ip_ptr.i, align 32
  %tobool14.not = icmp eq ptr %34, null
  br i1 %tobool14.not, label %__in_dev_get_rtnl.exit.if.end31_crit_edge, label %if.then15

__in_dev_get_rtnl.exit.if.end31_crit_edge:        ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then15:                                        ; preds = %__in_dev_get_rtnl.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %ifa_list, align 4
  %call17 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.then15.do.end26_crit_edge

if.then15.do.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

land.lhs.true:                                    ; preds = %if.then15
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @plip_open.__warned, align 1
  br i1 %.b52, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @plip_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1114, ptr noundef nonnull @.str.44) #13
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %if.then15.do.end26_crit_edge
  %cmp28.not = icmp eq ptr %36, null
  br i1 %cmp28.not, label %do.end26.if.end31_crit_edge, label %if.then29

do.end26.if.end31_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %36, i32 0, i32 4
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 2, ptr noundef %ifa_local, i32 noundef 4) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.end26.if.end31_crit_edge, %__in_dev_get_rtnl.exit.if.end31_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -11, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_close(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_data = getelementptr i8, ptr %dev, i32 2552
  %rcv_data = getelementptr i8, ptr %dev, i32 2572
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @disable_irq(i32 noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %5) #13
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %killed_timer_cmp = getelementptr i8, ptr %dev, i32 2672
  %8 = ptrtoint ptr %killed_timer_cmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %killed_timer_cmp, align 4
  %wait.i = getelementptr i8, ptr %dev, i32 2676
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #13
  %kill_timer = getelementptr i8, ptr %dev, i32 2668
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kill_timer, i32 noundef 4) #13
  %9 = ptrtoint ptr %kill_timer to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %kill_timer, align 4
  tail call void @wait_for_completion(ptr noundef %killed_timer_cmp) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %is_deferred = getelementptr i8, ptr %dev, i32 2612
  %10 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %is_deferred, align 4
  %connection = getelementptr i8, ptr %dev, i32 2604
  %11 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %connection, align 4
  %port_owner = getelementptr i8, ptr %dev, i32 2616
  %12 = ptrtoint ptr %port_owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %pardev = getelementptr i8, ptr %dev, i32 2592
  %14 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pardev, align 4
  tail call void @parport_release(ptr noundef %15) #13
  %16 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %port_owner, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %17 = ptrtoint ptr %snd_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %snd_data, align 4
  %skb = getelementptr i8, ptr %dev, i32 2568
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %19) #13
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %skb, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %21 = ptrtoint ptr %rcv_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rcv_data, align 4
  %skb17 = getelementptr i8, ptr %dev, i32 2588
  %22 = ptrtoint ptr %skb17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %23, i32 noundef 0) #13
  %24 = ptrtoint ptr %skb17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %skb17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_tx_packet(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_data = getelementptr i8, ptr %dev, i32 2552
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_owner = getelementptr i8, ptr %dev, i32 2616
  %4 = ptrtoint ptr %port_owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %pardev = getelementptr i8, ptr %dev, i32 2592
  %6 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev, align 4
  %call3 = tail call i32 @parport_claim(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %port_owner, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i46 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i46) #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %16 to i32
  %add = add i32 %14, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp = icmp ugt i32 %12, %add
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %dev, i32 noundef %12) #16
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i48 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i48) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %lock = getelementptr i8, ptr %dev, i32 2624
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %skb14 = getelementptr i8, ptr %dev, i32 2568
  %19 = ptrtoint ptr %skb14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb, ptr %skb14, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv16 = trunc i32 %21 to i16
  %length = getelementptr i8, ptr %dev, i32 2560
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv16, ptr %length, align 4
  %23 = ptrtoint ptr %snd_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %snd_data, align 4
  %connection = getelementptr i8, ptr %dev, i32 2604
  %24 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp17 = icmp eq i32 %25, 0
  br i1 %cmp17, label %if.then19, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %connection, align 4
  %timeout_count = getelementptr i8, ptr %dev, i32 2608
  %27 = ptrtoint ptr %timeout_count to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %timeout_count, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end13.if.end21_crit_edge
  %immediate = getelementptr i8, ptr %dev, i32 2308
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %immediate) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %do.end ], [ 0, %if.end21 ], [ 16, %entry.cleanup_crit_edge ], [ 16, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_siocdevprivate(ptr nocapture noundef %dev, ptr nocapture noundef %rq, ptr nocapture noundef readnone %data, i32 noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35312
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ifr_ifru, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %1, label %if.end.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %trigger = getelementptr i8, ptr %dev, i32 2596
  %3 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %trigger, align 4
  %trigger4 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %trigger4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %trigger4, align 4
  %nibble = getelementptr i8, ptr %dev, i32 2600
  %6 = ptrtoint ptr %nibble to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nibble, align 4
  %nibble5 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %nibble5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %nibble5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %call7 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call7, label %if.end9, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %trigger10 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %trigger10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trigger10, align 4
  %trigger11 = getelementptr i8, ptr %dev, i32 2596
  %11 = ptrtoint ptr %trigger11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %trigger11, align 4
  %nibble12 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %nibble12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nibble12, align 4
  %nibble13 = getelementptr i8, ptr %dev, i32 2600
  %14 = ptrtoint ptr %nibble13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nibble13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.bb6.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -1, %sw.bb6.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_hard_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_header(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @plip_rewrite_address(ptr noundef %dev, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_hard_header_cache(ptr noundef %neigh, ptr noundef %hh, i16 noundef zeroext %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_header_cache(ptr noundef %neigh, ptr noundef %hh, i16 noundef zeroext %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hh_data = getelementptr inbounds %struct.hh_cache, ptr %hh, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %hh_data, i32 2
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call fastcc void @plip_rewrite_address(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plip_rewrite_address(ptr noundef %dev, ptr nocapture noundef writeonly %eth) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !186) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !196
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 696, ptr noundef nonnull @.str.51) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i25 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rcu.exit

land.lhs.true.i27:                                ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i27.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i27.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i27
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i28

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__in_dev_get_rcu.exit

if.then.i28:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 232, ptr noundef nonnull @.str.44) #13
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i28, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i27.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %__in_dev_get_rcu.exit.if.end18_crit_edge, label %if.then

__in_dev_get_rcu.exit.if.end18_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ifa_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.do.end10_crit_edge

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @plip_rewrite_address.__warned, align 1
  br i1 %.b24, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @plip_rewrite_address.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1019, ptr noundef nonnull @.str.44) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end10.if.end18_crit_edge, label %if.then13

do.end10.if.end18_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %eth, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = call ptr @memcpy(ptr %h_source, ptr %9, i32 6)
  %11 = ptrtoint ptr %eth to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -772, ptr %eth, align 1
  %add.ptr = getelementptr i8, ptr %eth, i32 2
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifa_address, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %add.ptr, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %do.end10.if.end18_crit_edge, %__in_dev_get_rcu.exit.if.end18_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i29, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %if.end18
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 724, ptr noundef nonnull @.str.52) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !197
  %15 = tail call i32 @llvm.read_register.i32(metadata !186) #13
  %and.i.i.i.i.i36 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_cache(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plip_none(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %nl, ptr nocapture noundef readnone %snd, ptr nocapture noundef readnone %rcv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_receive_packet(ptr noundef %dev, ptr noundef %nl, ptr nocapture noundef readonly %snd, ptr noundef %rcv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nibble = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 8
  %0 = ptrtoint ptr %nibble to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nibble, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %rcv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rcv, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb31_crit_edge
    i32 4, label %entry.sw.bb75_crit_edge
    i32 5, label %entry.sw.bb106_crit_edge
    i32 0, label %entry.sw.bb130_crit_edge
  ]

entry.sw.bb130_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb130

entry.sw.bb106_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb106

entry.sw.bb75_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb31

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  br i1 %cmp.not, label %sw.bb.disable_parport_interrupts.exit_crit_edge, label %if.end

sw.bb.disable_parport_interrupts.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_parport_interrupts.exit

if.end:                                           ; preds = %sw.bb
  tail call void @disable_irq(i32 noundef %6) #13
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, -1
  br i1 %cmp.not.i, label %if.end.disable_parport_interrupts.exit_crit_edge, label %if.then.i

if.end.disable_parport_interrupts.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_parport_interrupts.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  %8 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %disable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %disable_irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_irq.i, align 4
  tail call void %15(ptr noundef %11) #13
  br label %disable_parport_interrupts.exit

disable_parport_interrupts.exit:                  ; preds = %if.then.i, %if.end.disable_parport_interrupts.exit_crit_edge, %sw.bb.disable_parport_interrupts.exit_crit_edge
  %pardev.i254 = getelementptr i8, ptr %dev, i32 2592
  %16 = ptrtoint ptr %pardev.i254 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pardev.i254, align 4
  %port1.i255 = getelementptr inbounds %struct.pardevice, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %port1.i255 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port1.i255, align 4
  %ops.i256 = getelementptr inbounds %struct.parport, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %ops.i256 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i256, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %19, i8 noundef zeroext 1) #13
  %24 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %rcv, align 4
  %nibble4 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %25 = ptrtoint ptr %nibble4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %nibble4, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %disable_parport_interrupts.exit, %entry.sw.bb5_crit_edge
  %26 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %snd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7.not = icmp eq i32 %27, 0
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb5
  %trigger = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 7
  %28 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trigger, align 4
  %conv10 = trunc i32 %29 to i16
  %nibble11 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %length = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 2
  %lsb = getelementptr inbounds %struct.anon.121, ptr %length, i32 0, i32 1
  %call = tail call fastcc i32 @plip_receive(i16 noundef zeroext %conv10, ptr noundef %dev, ptr noundef %nibble11, ptr noundef %lsb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then9.if.end29_crit_edge, label %if.then12

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then12:                                        ; preds = %if.then9
  %30 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rcv, align 4
  %is_deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 11
  %31 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %is_deferred, align 4
  %connection = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  %32 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %connection, align 4
  %deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %deferred, i32 noundef 1) #13
  %irq.i257 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %34 = ptrtoint ptr %irq.i257 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not.i258 = icmp eq i32 %35, -1
  br i1 %cmp.not.i258, label %if.then12.cleanup_crit_edge, label %enable_parport_interrupts.exit

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

enable_parport_interrupts.exit:                   ; preds = %if.then12
  %pardev.i259 = getelementptr i8, ptr %dev, i32 2592
  %36 = ptrtoint ptr %pardev.i259 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pardev.i259, align 4
  %port1.i260 = getelementptr inbounds %struct.pardevice, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %port1.i260 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port1.i260, align 4
  %ops.i261 = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %ops.i261 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i261, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enable_irq.i, align 4
  tail call void %43(ptr noundef %39) #13
  %44 = ptrtoint ptr %irq.i257 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr286 = load i32, ptr %irq.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr286)
  %cmp16.not = icmp eq i32 %.pr286, -1
  br i1 %cmp16.not, label %enable_parport_interrupts.exit.cleanup_crit_edge, label %if.then18

enable_parport_interrupts.exit.cleanup_crit_edge: ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %.pr286) #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb5
  %nibble22 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %length23 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 2
  %lsb24 = getelementptr inbounds %struct.anon.121, ptr %length23, i32 0, i32 1
  %call25 = tail call fastcc i32 @plip_receive(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble22, ptr noundef %lsb24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else.if.end29_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then9.if.end29_crit_edge
  %45 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %rcv, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end29, %entry.sw.bb31_crit_edge
  %nibble32 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %length33 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 2
  %call34 = tail call fastcc i32 @plip_receive(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble32, ptr noundef %length33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb31.cleanup_crit_edge

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %sw.bb31
  %46 = ptrtoint ptr %length33 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %length33, align 4
  %conv39 = zext i16 %47 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %48 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %50 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hard_header_len, align 2
  %conv40 = zext i16 %51 to i32
  %add = add i32 %49, %conv40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv39)
  %cmp41 = icmp ult i32 %add, %conv39
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %47)
  %cmp45 = icmp ult i16 %47, 8
  %or.cond = or i1 %cmp45, %cmp41
  br i1 %or.cond, label %do.end, label %if.end51

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %dev, i32 noundef %conv39) #16
  br label %cleanup

if.end51:                                         ; preds = %if.end37
  %add54 = add nuw nsw i32 %conv39, 2
  %call.i.i263 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add54, i32 noundef 2592) #13
  %skb = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 6
  %52 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i263, ptr %skb, align 4
  %cmp57 = icmp eq ptr %call.i.i263, null
  br i1 %cmp57, label %do.end62, label %if.end67

do.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %dev) #16
  br label %cleanup

if.end67:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i263, i32 0, i32 19
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i263, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %56, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %57 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb, align 4
  %59 = ptrtoint ptr %length33 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %length33, align 4
  %conv71 = zext i16 %60 to i32
  %call72 = tail call ptr @skb_put(ptr noundef %58, i32 noundef %conv71) #13
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skb, align 4
  %63 = getelementptr inbounds %struct.anon.44, ptr %62, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dev, ptr %63, align 8
  %65 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %rcv, align 4
  %byte = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 3
  %66 = ptrtoint ptr %byte to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %byte, align 2
  %checksum = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 4
  %67 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %checksum, align 4
  br label %sw.bb75

sw.bb75:                                          ; preds = %if.end67, %entry.sw.bb75_crit_edge
  %skb76 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 6
  %68 = ptrtoint ptr %skb76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb76, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %nibble78 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %byte79 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 3
  %length87 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 2
  br label %do.body77

do.body77:                                        ; preds = %do.cond84.do.body77_crit_edge, %sw.bb75
  %72 = ptrtoint ptr %byte79 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %byte79, align 2
  %idxprom = zext i16 %73 to i32
  %arrayidx = getelementptr i8, ptr %71, i32 %idxprom
  %call80 = tail call fastcc i32 @plip_receive(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble78, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.cond84, label %do.body77.cleanup_crit_edge

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond84:                                        ; preds = %do.body77
  %74 = ptrtoint ptr %byte79 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %byte79, align 2
  %inc = add i16 %75, 1
  store i16 %inc, ptr %byte79, align 2
  %76 = ptrtoint ptr %length87 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %length87, align 4
  %cmp89 = icmp ult i16 %inc, %77
  br i1 %cmp89, label %do.cond84.do.body77_crit_edge, label %do.body92.preheader

do.cond84.do.body77_crit_edge:                    ; preds = %do.cond84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body77

do.body92.preheader:                              ; preds = %do.cond84
  %checksum97 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 4
  br label %do.body92

do.body92:                                        ; preds = %do.body92.do.body92_crit_edge, %do.body92.preheader
  %78 = ptrtoint ptr %byte79 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %byte79, align 2
  %dec = add i16 %79, -1
  store i16 %dec, ptr %byte79, align 2
  %idxprom94 = zext i16 %dec to i32
  %arrayidx95 = getelementptr i8, ptr %71, i32 %idxprom94
  %80 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx95, align 1
  %82 = ptrtoint ptr %checksum97 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %checksum97, align 4
  %add99 = add i8 %83, %81
  store i8 %add99, ptr %checksum97, align 4
  %tobool103.not = icmp eq i16 %dec, 0
  br i1 %tobool103.not, label %do.end104, label %do.body92.do.body92_crit_edge

do.body92.do.body92_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body92

do.end104:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 5, ptr %rcv, align 4
  br label %sw.bb106

sw.bb106:                                         ; preds = %do.end104, %entry.sw.bb106_crit_edge
  %nibble107 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 1
  %data108 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 5
  %call109 = tail call fastcc i32 @plip_receive(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble107, ptr noundef %data108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %sw.bb106.cleanup_crit_edge

sw.bb106.cleanup_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end112:                                        ; preds = %sw.bb106
  %85 = ptrtoint ptr %data108 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data108, align 1
  %checksum115 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 4
  %87 = ptrtoint ptr %checksum115 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %checksum115, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp117.not = icmp eq i8 %86, %88
  br i1 %cmp117.not, label %if.end128, label %if.then119

if.then119:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %89 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_crc_errors, align 8
  %inc120 = add i32 %90, 1
  store i32 %inc120, ptr %rx_crc_errors, align 8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %dev) #16
  br label %cleanup

if.end128:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %rcv to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %rcv, align 4
  br label %sw.bb130

sw.bb130:                                         ; preds = %if.end128, %entry.sw.bb130_crit_edge
  %skb131 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 6
  %92 = ptrtoint ptr %skb131 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb131, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 18
  %96 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 15, i32 0, i32 21
  %98 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %99 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %100 to i32
  %call.i = tail call ptr @skb_pull(ptr noundef %93, i32 noundef %conv.i) #13
  %101 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %head.i.i, align 8
  %103 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i = zext i16 %104 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %102, i32 %conv.i.i.i
  %105 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i.i, align 4
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i, label %sw.bb130.if.end12.i_crit_edge, label %if.then.i264

sw.bb130.if.end12.i_crit_edge:                    ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then.i264:                                     ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %108 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %broadcast.i, align 4
  %xor.i.i.i = xor i32 %109, %106
  %add.ptr.i.i33.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %110 = ptrtoint ptr %add.ptr.i.i33.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i.i33.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %112 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %113, %111
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 15
  %114 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %.34.i = select i1 %cmp.i.i.i, i16 8192, i16 16384
  %bf.set.i = or i16 %.34.i, %bf.clear.i
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i264, %sw.bb130.if.end12.i_crit_edge
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %115 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %116)
  %cmp.i = icmp ugt i16 %116, 1535
  br i1 %cmp.i, label %if.end12.i.plip_type_trans.exit_crit_edge, label %if.end17.i

if.end12.i.plip_type_trans.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %plip_type_trans.exit

if.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %118, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %120)
  %cmp19.i = icmp eq i16 %120, -1
  %..i = select i1 %cmp19.i, i16 1, i16 4
  br label %plip_type_trans.exit

plip_type_trans.exit:                             ; preds = %if.end17.i, %if.end12.i.plip_type_trans.exit_crit_edge
  %retval.0.i = phi i16 [ %116, %if.end12.i.plip_type_trans.exit_crit_edge ], [ %..i, %if.end17.i ]
  %121 = ptrtoint ptr %skb131 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %skb131, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %122, i32 0, i32 15, i32 0, i32 18
  %123 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %retval.0.i, ptr %protocol, align 8
  %124 = load ptr, ptr %skb131, align 4
  %call135 = tail call i32 @netif_rx_ni(ptr noundef %124) #13
  %length136 = getelementptr inbounds %struct.plip_local, ptr %rcv, i32 0, i32 2
  %125 = ptrtoint ptr %length136 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %length136, align 4
  %conv137 = zext i16 %126 to i32
  %stats138 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %127 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_bytes, align 8
  %add139 = add i32 %128, %conv137
  store i32 %add139, ptr %rx_bytes, align 8
  %129 = ptrtoint ptr %stats138 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %stats138, align 8
  %inc141 = add i32 %130, 1
  store i32 %inc141, ptr %stats138, align 8
  %131 = ptrtoint ptr %skb131 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %skb131, align 4
  %pardev.i265 = getelementptr i8, ptr %dev, i32 2592
  %132 = ptrtoint ptr %pardev.i265 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pardev.i265, align 4
  %port1.i266 = getelementptr inbounds %struct.pardevice, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %port1.i266 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %port1.i266, align 4
  %ops.i267 = getelementptr inbounds %struct.parport, ptr %135, i32 0, i32 24
  %136 = ptrtoint ptr %ops.i267 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i267, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  tail call void %139(ptr noundef %135, i8 noundef zeroext 0) #13
  %lock = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %140 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %snd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp144.not = icmp eq i32 %141, 0
  %connection157 = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  br i1 %cmp144.not, label %if.else156, label %if.then146

if.then146:                                       ; preds = %plip_type_trans.exit
  %142 = ptrtoint ptr %connection157 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %connection157, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %immediate = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %143 = load ptr, ptr @system_wq, align 4
  %call.i.i268 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %143, ptr noundef %immediate) #13
  %irq.i269 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %144 = ptrtoint ptr %irq.i269 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %irq.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %145)
  %cmp.not.i270 = icmp eq i32 %145, -1
  br i1 %cmp.not.i270, label %if.then146.cleanup_crit_edge, label %enable_parport_interrupts.exit276

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

enable_parport_interrupts.exit276:                ; preds = %if.then146
  %146 = ptrtoint ptr %pardev.i265 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pardev.i265, align 4
  %port1.i272 = getelementptr inbounds %struct.pardevice, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %port1.i272 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %port1.i272, align 4
  %ops.i273 = getelementptr inbounds %struct.parport, ptr %149, i32 0, i32 24
  %150 = ptrtoint ptr %ops.i273 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i273, align 4
  %enable_irq.i274 = getelementptr inbounds %struct.parport_operations, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %enable_irq.i274 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %enable_irq.i274, align 4
  tail call void %153(ptr noundef %149) #13
  %154 = ptrtoint ptr %irq.i269 to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pr288 = load i32, ptr %irq.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr288)
  %cmp151.not = icmp eq i32 %.pr288, -1
  br i1 %cmp151.not, label %enable_parport_interrupts.exit276.cleanup_crit_edge, label %if.then153

enable_parport_interrupts.exit276.cleanup_crit_edge: ; preds = %enable_parport_interrupts.exit276
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then153:                                       ; preds = %enable_parport_interrupts.exit276
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %.pr288) #13
  br label %cleanup

if.else156:                                       ; preds = %plip_type_trans.exit
  %155 = ptrtoint ptr %connection157 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %connection157, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %irq.i277 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %156 = ptrtoint ptr %irq.i277 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp.not.i278 = icmp eq i32 %157, -1
  br i1 %cmp.not.i278, label %if.else156.cleanup_crit_edge, label %enable_parport_interrupts.exit284

if.else156.cleanup_crit_edge:                     ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

enable_parport_interrupts.exit284:                ; preds = %if.else156
  %158 = ptrtoint ptr %pardev.i265 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pardev.i265, align 4
  %port1.i280 = getelementptr inbounds %struct.pardevice, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %port1.i280 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %port1.i280, align 4
  %ops.i281 = getelementptr inbounds %struct.parport, ptr %161, i32 0, i32 24
  %162 = ptrtoint ptr %ops.i281 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i281, align 4
  %enable_irq.i282 = getelementptr inbounds %struct.parport_operations, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %enable_irq.i282 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %enable_irq.i282, align 4
  tail call void %165(ptr noundef %161) #13
  %166 = ptrtoint ptr %irq.i277 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr290 = load i32, ptr %irq.i277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr290)
  %cmp160.not = icmp eq i32 %.pr290, -1
  br i1 %cmp160.not, label %enable_parport_interrupts.exit284.cleanup_crit_edge, label %if.then162

enable_parport_interrupts.exit284.cleanup_crit_edge: ; preds = %enable_parport_interrupts.exit284
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then162:                                       ; preds = %enable_parport_interrupts.exit284
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %.pr290) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %enable_parport_interrupts.exit284.cleanup_crit_edge, %if.else156.cleanup_crit_edge, %if.then153, %enable_parport_interrupts.exit276.cleanup_crit_edge, %if.then146.cleanup_crit_edge, %if.then119, %sw.bb106.cleanup_crit_edge, %do.body77.cleanup_crit_edge, %do.end62, %do.end, %sw.bb31.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then18, %enable_parport_interrupts.exit.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then119 ], [ 2, %do.end ], [ 2, %do.end62 ], [ 0, %if.then18 ], [ 0, %enable_parport_interrupts.exit.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %sw.bb31.cleanup_crit_edge ], [ 1, %sw.bb106.cleanup_crit_edge ], [ 0, %if.then153 ], [ 0, %enable_parport_interrupts.exit276.cleanup_crit_edge ], [ 0, %if.then162 ], [ 0, %enable_parport_interrupts.exit284.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.then146.cleanup_crit_edge ], [ 0, %if.else156.cleanup_crit_edge ], [ 1, %do.body77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_send_packet(ptr noundef %dev, ptr noundef %nl, ptr noundef %snd, ptr nocapture noundef readnone %rcv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nibble = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 8
  %0 = ptrtoint ptr %nibble to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nibble, align 4
  %conv = trunc i32 %1 to i16
  %skb = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 6
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %dev) #16
  %6 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %snd, align 4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb51
    i32 3, label %if.end.sw.bb58_crit_edge
    i32 4, label %if.end.sw.bb66_crit_edge
    i32 5, label %if.end.sw.bb97_crit_edge
    i32 0, label %if.end.sw.bb111_crit_edge
  ]

if.end.sw.bb111_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb111

if.end.sw.bb97_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb97

if.end.sw.bb66_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66

if.end.sw.bb58_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb58

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  %11 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_status.i, align 4
  %call2.i = tail call zeroext i8 %18(ptr noundef %14) #13
  %19 = and i8 %call2.i, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %19)
  %cmp9.not = icmp eq i8 %19, -128
  br i1 %cmp9.not, label %if.end12, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %20 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pardev.i, align 4
  %port1.i194 = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port1.i194 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port1.i194, align 4
  %ops.i195 = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %ops.i195 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i195, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %23, i8 noundef zeroext 8) #13
  %trigger = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 7
  %28 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trigger, align 4
  %lock = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 14
  %connection = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end45.while.cond_crit_edge, %if.end12
  %cx.0 = phi i32 [ %29, %if.end12 ], [ %dec, %if.end45.while.cond_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %31 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %connection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp13 = icmp eq i32 %32, 1
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %33 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %collisions, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %collisions, align 4
  br label %cleanup

if.end17:                                         ; preds = %while.cond
  %35 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pardev.i, align 4
  %port1.i197 = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port1.i197 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port1.i197, align 4
  %ops.i198 = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %ops.i198 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i198, align 4
  %read_status.i199 = getelementptr inbounds %struct.parport_operations, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %read_status.i199 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_status.i199, align 4
  %call2.i200 = tail call zeroext i8 %42(ptr noundef %38) #13
  %43 = and i8 %call2.i200, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br i1 %tobool.not, label %if.end45, label %if.then21

if.then21:                                        ; preds = %if.end17
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp23.not = icmp eq i32 %45, -1
  br i1 %cmp23.not, label %if.then21.if.end27_crit_edge, label %if.then25

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @disable_irq(i32 noundef %45) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then21.if.end27_crit_edge
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %47) #13
  %48 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %connection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp30 = icmp eq i32 %49, 1
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp34.not = icmp eq i32 %51, -1
  br i1 %cmp30, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.end27
  br i1 %cmp34.not, label %if.then32.if.end38_crit_edge, label %if.then36

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %51) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then32.if.end38_crit_edge
  %collisions40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %52 = ptrtoint ptr %collisions40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %collisions40, align 4
  %inc41 = add i32 %53, 1
  store i32 %inc41, ptr %collisions40, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end27
  br i1 %cmp34.not, label %if.end42.disable_parport_interrupts.exit_crit_edge, label %if.then.i

if.end42.disable_parport_interrupts.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_parport_interrupts.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pardev.i, align 4
  %port1.i202 = getelementptr inbounds %struct.pardevice, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %port1.i202 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port1.i202, align 4
  %ops.i203 = getelementptr inbounds %struct.parport, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %ops.i203 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i203, align 4
  %disable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %disable_irq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disable_irq.i, align 4
  tail call void %61(ptr noundef %57) #13
  br label %disable_parport_interrupts.exit

disable_parport_interrupts.exit:                  ; preds = %if.then.i, %if.end42.disable_parport_interrupts.exit_crit_edge
  %62 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %snd, align 4
  %nibble44 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 1
  %63 = ptrtoint ptr %nibble44 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %nibble44, align 4
  %timeout_count = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 10
  %64 = ptrtoint ptr %timeout_count to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %timeout_count, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end17
  %dec = add i32 %cx.0, -1
  %cmp47 = icmp eq i32 %dec, 0
  br i1 %cmp47, label %if.then49, label %if.end45.while.cond_crit_edge

if.end45.while.cond_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pardev.i, align 4
  %port1.i205 = getelementptr inbounds %struct.pardevice, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %port1.i205 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %port1.i205, align 4
  %ops.i206 = getelementptr inbounds %struct.parport, ptr %68, i32 0, i32 24
  %69 = ptrtoint ptr %ops.i206 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i206, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  tail call void %72(ptr noundef %68, i8 noundef zeroext 0) #13
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  %nibble52 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 1
  %length = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 2
  %lsb = getelementptr inbounds %struct.anon.121, ptr %length, i32 0, i32 1
  %73 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %lsb, align 1
  %call53 = tail call fastcc i32 @plip_send(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble52, i8 noundef zeroext %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %snd, align 4
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.end56, %if.end.sw.bb58_crit_edge
  %nibble59 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 1
  %length60 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 2
  %76 = ptrtoint ptr %length60 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %length60, align 4
  %call61 = tail call fastcc i32 @plip_send(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble59, i8 noundef zeroext %77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end64:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %snd, align 4
  %byte = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 3
  %79 = ptrtoint ptr %byte to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %byte, align 2
  %checksum = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 4
  %80 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %checksum, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %if.end64, %if.end.sw.bb66_crit_edge
  %nibble68 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 1
  %byte69 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 3
  %length78 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 2
  br label %do.body67

do.body67:                                        ; preds = %do.cond74.do.body67_crit_edge, %sw.bb66
  %81 = ptrtoint ptr %byte69 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %byte69, align 2
  %idxprom = zext i16 %82 to i32
  %arrayidx = getelementptr i8, ptr %5, i32 %idxprom
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx, align 1
  %call70 = tail call fastcc i32 @plip_send(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble68, i8 noundef zeroext %84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.cond74, label %do.body67.cleanup_crit_edge

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond74:                                        ; preds = %do.body67
  %85 = ptrtoint ptr %byte69 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %byte69, align 2
  %inc76 = add i16 %86, 1
  store i16 %inc76, ptr %byte69, align 2
  %87 = ptrtoint ptr %length78 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %length78, align 4
  %cmp80 = icmp ult i16 %inc76, %88
  br i1 %cmp80, label %do.cond74.do.body67_crit_edge, label %do.body83.preheader

do.cond74.do.body67_crit_edge:                    ; preds = %do.cond74
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

do.body83.preheader:                              ; preds = %do.cond74
  %checksum89 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 4
  br label %do.body83

do.body83:                                        ; preds = %do.body83.do.body83_crit_edge, %do.body83.preheader
  %89 = ptrtoint ptr %byte69 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %byte69, align 2
  %dec85 = add i16 %90, -1
  store i16 %dec85, ptr %byte69, align 2
  %idxprom86 = zext i16 %dec85 to i32
  %arrayidx87 = getelementptr i8, ptr %5, i32 %idxprom86
  %91 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx87, align 1
  %93 = ptrtoint ptr %checksum89 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %checksum89, align 4
  %add = add i8 %94, %92
  store i8 %add, ptr %checksum89, align 4
  %tobool94.not = icmp eq i16 %dec85, 0
  br i1 %tobool94.not, label %do.end95, label %do.body83.do.body83_crit_edge

do.body83.do.body83_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body83

do.end95:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 5, ptr %snd, align 4
  br label %sw.bb97

sw.bb97:                                          ; preds = %do.end95, %if.end.sw.bb97_crit_edge
  %nibble98 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 1
  %checksum99 = getelementptr inbounds %struct.plip_local, ptr %snd, i32 0, i32 4
  %96 = ptrtoint ptr %checksum99 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %checksum99, align 4
  %call100 = tail call fastcc i32 @plip_send(i16 noundef zeroext %conv, ptr noundef %dev, ptr noundef %nibble98, i8 noundef zeroext %97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %sw.bb97.cleanup_crit_edge

sw.bb97.cleanup_crit_edge:                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end103:                                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %102 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_bytes, align 4
  %add106 = add i32 %103, %101
  store i32 %add106, ptr %tx_bytes, align 4
  %104 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %104) #13
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %105 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_packets, align 4
  %inc109 = add i32 %106, 1
  store i32 %inc109, ptr %tx_packets, align 4
  %107 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %snd, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %if.end103, %if.end.sw.bb111_crit_edge
  %pardev.i207 = getelementptr i8, ptr %dev, i32 2592
  %108 = ptrtoint ptr %pardev.i207 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pardev.i207, align 4
  %port1.i208 = getelementptr inbounds %struct.pardevice, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %port1.i208 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %port1.i208, align 4
  %ops.i209 = getelementptr inbounds %struct.parport, ptr %111, i32 0, i32 24
  %112 = ptrtoint ptr %ops.i209 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i209, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  tail call void %115(ptr noundef %111, i8 noundef zeroext 0) #13
  %116 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %skb, align 4
  %connection113 = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  %117 = ptrtoint ptr %connection113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3, ptr %connection113, align 4
  %is_deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 11
  %118 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %is_deferred, align 4
  %deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %119 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %deferred, i32 noundef 1) #13
  %irq.i210 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %120 = ptrtoint ptr %irq.i210 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irq.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.not.i211 = icmp eq i32 %121, -1
  br i1 %cmp.not.i211, label %sw.bb111.cleanup_crit_edge, label %enable_parport_interrupts.exit

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

enable_parport_interrupts.exit:                   ; preds = %sw.bb111
  %122 = ptrtoint ptr %pardev.i207 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pardev.i207, align 4
  %port1.i213 = getelementptr inbounds %struct.pardevice, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %port1.i213 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port1.i213, align 4
  %ops.i214 = getelementptr inbounds %struct.parport, ptr %125, i32 0, i32 24
  %126 = ptrtoint ptr %ops.i214 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i214, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %enable_irq.i, align 4
  tail call void %129(ptr noundef %125) #13
  %130 = ptrtoint ptr %irq.i210 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr = load i32, ptr %irq.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp116.not = icmp eq i32 %.pr, -1
  br i1 %cmp116.not, label %enable_parport_interrupts.exit.cleanup_crit_edge, label %if.then118

enable_parport_interrupts.exit.cleanup_crit_edge: ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then118:                                       ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %.pr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %enable_parport_interrupts.exit.cleanup_crit_edge, %sw.bb111.cleanup_crit_edge, %sw.bb97.cleanup_crit_edge, %do.body67.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %sw.bb51.cleanup_crit_edge, %if.then49, %disable_parport_interrupts.exit, %if.end38, %if.then15, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 0, %if.then15 ], [ 0, %if.end38 ], [ 3, %if.then49 ], [ 3, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb51.cleanup_crit_edge ], [ 1, %sw.bb58.cleanup_crit_edge ], [ 1, %sw.bb97.cleanup_crit_edge ], [ 0, %if.then118 ], [ 0, %enable_parport_interrupts.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %disable_parport_interrupts.exit ], [ 0, %sw.bb111.cleanup_crit_edge ], [ 1, %do.body67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_connection_close(ptr nocapture noundef readonly %dev, ptr noundef %nl, ptr nocapture noundef readnone %snd, ptr nocapture noundef readnone %rcv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %connection = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %connection, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %should_relinquish = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 13
  %5 = ptrtoint ptr %should_relinquish to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %should_relinquish, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %port_owner = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 12
  %7 = ptrtoint ptr %port_owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %port_owner, align 4
  %8 = ptrtoint ptr %should_relinquish to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %should_relinquish, align 4
  %pardev = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 6
  %9 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pardev, align 4
  tail call void @parport_release(ptr noundef %10) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plip_error(ptr nocapture noundef readonly %dev, ptr noundef %nl, ptr nocapture noundef readnone %snd, ptr nocapture noundef readnone %rcv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  %0 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_status.i, align 4
  %call2.i = tail call zeroext i8 %7(ptr noundef %3) #13
  %8 = and i8 %call2.i, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %8)
  %cmp = icmp eq i8 %8, -128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %connection = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 9
  %9 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %connection, align 4
  %should_relinquish = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 13
  %10 = ptrtoint ptr %should_relinquish to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %should_relinquish, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %irq.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %enable_parport_interrupts.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

enable_parport_interrupts.exit:                   ; preds = %if.then
  %15 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pardev.i, align 4
  %port1.i17 = getelementptr inbounds %struct.pardevice, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %port1.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port1.i17, align 4
  %ops.i18 = getelementptr inbounds %struct.parport, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i18, align 4
  %enable_irq.i = getelementptr inbounds %struct.parport_operations, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enable_irq.i, align 4
  tail call void %22(ptr noundef %18) #13
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp2.not = icmp eq i32 %.pr, -1
  br i1 %cmp2.not, label %enable_parport_interrupts.exit.if.end_crit_edge, label %if.then4

enable_parport_interrupts.exit.if.end_crit_edge:  ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %enable_parport_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @enable_irq(i32 noundef %.pr) #13
  br label %if.end

if.end:                                           ; preds = %if.then4, %enable_parport_interrupts.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %25) #13
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %is_deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 11
  %26 = ptrtoint ptr %is_deferred to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %is_deferred, align 4
  %deferred = getelementptr inbounds %struct.net_local, ptr %nl, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %deferred, i32 noundef 1) #13
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @plip_receive(i16 noundef zeroext %nibble_timeout, ptr nocapture noundef readonly %dev, ptr nocapture noundef %ns_p, ptr nocapture noundef %data_p) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %ns_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_p, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb17_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = zext i16 %nibble_timeout to i32
  br label %sw.bb17

sw.bb:                                            ; preds = %entry
  %conv = zext i16 %nibble_timeout to i32
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  br label %while.cond

while.cond:                                       ; preds = %if.end9.while.cond_crit_edge, %sw.bb
  %cx.0 = phi i32 [ %conv, %sw.bb ], [ %dec, %if.end9.while.cond_crit_edge ]
  %3 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_status.i, align 4
  %call2.i = tail call zeroext i8 %10(ptr noundef %6) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2.i)
  %cmp = icmp sgt i8 %call2.i, -1
  br i1 %cmp, label %if.then, label %while.cond.if.end9_crit_edge

while.cond.if.end9_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %while.cond
  %12 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pardev.i, align 4
  %port1.i62 = getelementptr inbounds %struct.pardevice, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port1.i62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port1.i62, align 4
  %ops.i63 = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i63, align 4
  %read_status.i64 = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %read_status.i64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_status.i64, align 4
  %call2.i65 = tail call zeroext i8 %19(ptr noundef %15) #13
  call void @__sanitizer_cov_trace_cmp1(i8 %call2.i, i8 %call2.i65)
  %cmp6 = icmp eq i8 %call2.i, %call2.i65
  br i1 %cmp6, label %while.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %while.cond.if.end9_crit_edge
  %dec = add i32 %cx.0, -1
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end9.while.cond_crit_edge

if.end9.while.cond_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %20 = lshr i8 %call2.i, 3
  %21 = ptrtoint ptr %data_p to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %data_p, align 1
  %22 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pardev.i, align 4
  %port1.i67 = getelementptr inbounds %struct.pardevice, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %port1.i67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port1.i67, align 4
  %ops.i68 = getelementptr inbounds %struct.parport, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i68, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void %29(ptr noundef %25, i8 noundef zeroext 16) #13
  %30 = ptrtoint ptr %ns_p to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %ns_p, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %while.end, %entry.sw.bb17_crit_edge
  %conv18.pre-phi = phi i32 [ %.pre, %entry.sw.bb17_crit_edge ], [ %conv, %while.end ]
  %pardev.i69 = getelementptr i8, ptr %dev, i32 2592
  br label %while.cond19

while.cond19:                                     ; preds = %if.end32.while.cond19_crit_edge, %sw.bb17
  %cx.1 = phi i32 [ %conv18.pre-phi, %sw.bb17 ], [ %dec33, %if.end32.while.cond19_crit_edge ]
  %31 = ptrtoint ptr %pardev.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pardev.i69, align 4
  %port1.i70 = getelementptr inbounds %struct.pardevice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port1.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port1.i70, align 4
  %ops.i71 = getelementptr inbounds %struct.parport, ptr %34, i32 0, i32 24
  %35 = ptrtoint ptr %ops.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i71, align 4
  %read_status.i72 = getelementptr inbounds %struct.parport_operations, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %read_status.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_status.i72, align 4
  %call2.i73 = tail call zeroext i8 %38(ptr noundef %34) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2.i73)
  %tobool.not = icmp sgt i8 %call2.i73, -1
  br i1 %tobool.not, label %while.cond19.if.end32_crit_edge, label %if.then24

while.cond19.if.end32_crit_edge:                  ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then24:                                        ; preds = %while.cond19
  %40 = ptrtoint ptr %pardev.i69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pardev.i69, align 4
  %port1.i75 = getelementptr inbounds %struct.pardevice, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port1.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port1.i75, align 4
  %ops.i76 = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i76, align 4
  %read_status.i77 = getelementptr inbounds %struct.parport_operations, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %read_status.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_status.i77, align 4
  %call2.i78 = tail call zeroext i8 %47(ptr noundef %43) #13
  call void @__sanitizer_cov_trace_cmp1(i8 %call2.i73, i8 %call2.i78)
  %cmp28 = icmp eq i8 %call2.i73, %call2.i78
  br i1 %cmp28, label %while.end38, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32:                                         ; preds = %if.then24.if.end32_crit_edge, %while.cond19.if.end32_crit_edge
  %dec33 = add i32 %cx.1, -1
  %cmp34 = icmp eq i32 %dec33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end32.while.cond19_crit_edge

if.end32.while.cond19_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond19

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end38:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i8 %call2.i73, 1
  %and40 = and i8 %shl, -16
  %48 = ptrtoint ptr %data_p to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data_p, align 1
  %or = or i8 %49, %and40
  store i8 %or, ptr %data_p, align 1
  %50 = ptrtoint ptr %pardev.i69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pardev.i69, align 4
  %port1.i80 = getelementptr inbounds %struct.pardevice, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %port1.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port1.i80, align 4
  %ops.i81 = getelementptr inbounds %struct.parport, ptr %53, i32 0, i32 24
  %54 = ptrtoint ptr %ops.i81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i81, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call void %57(ptr noundef %53, i8 noundef zeroext 0) #13
  %58 = ptrtoint ptr %ns_p to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ns_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end38, %if.end32.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end38 ], [ 1, %if.end32.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @plip_send(i16 noundef zeroext %nibble_timeout, ptr nocapture noundef readonly %dev, ptr nocapture noundef %ns_p, i8 noundef zeroext %data) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %ns_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_p, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb17_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = and i8 %data, 15
  br label %sw.bb2

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre81 = lshr i8 %data, 4
  %.pre82 = zext i16 %nibble_timeout to i32
  br label %sw.bb17

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = and i8 %data, 15
  %pardev.i = getelementptr i8, ptr %dev, i32 2592
  %4 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pardev.i, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %7, i8 noundef zeroext %3) #13
  %12 = ptrtoint ptr %ns_p to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %ns_p, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %and4.pre-phi = phi i8 [ %.pre, %entry.sw.bb2_crit_edge ], [ %3, %sw.bb ]
  %or = or i8 %and4.pre-phi, 16
  %pardev.i50 = getelementptr i8, ptr %dev, i32 2592
  %13 = ptrtoint ptr %pardev.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pardev.i50, align 4
  %port1.i51 = getelementptr inbounds %struct.pardevice, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port1.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port1.i51, align 4
  %ops.i52 = getelementptr inbounds %struct.parport, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %ops.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i52, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %16, i8 noundef zeroext %or) #13
  %conv6 = zext i16 %nibble_timeout to i32
  %21 = ptrtoint ptr %pardev.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pardev.i50, align 4
  %port1.i5468 = getelementptr inbounds %struct.pardevice, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %port1.i5468 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port1.i5468, align 4
  %ops.i5569 = getelementptr inbounds %struct.parport, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %ops.i5569 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i5569, align 4
  %read_status.i70 = getelementptr inbounds %struct.parport_operations, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %read_status.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_status.i70, align 4
  %call2.i71 = tail call zeroext i8 %28(ptr noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2.i71)
  %cmp72 = icmp sgt i8 %call2.i71, -1
  br i1 %cmp72, label %sw.bb2.while.end_crit_edge, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  br label %if.end

sw.bb2.while.end_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %if.end13.if.end_crit_edge, %sw.bb2.if.end_crit_edge
  %cx.073 = phi i32 [ %dec, %if.end13.if.end_crit_edge ], [ %conv6, %sw.bb2.if.end_crit_edge ]
  %dec = add i32 %cx.073, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #13
  %30 = ptrtoint ptr %pardev.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pardev.i50, align 4
  %port1.i54 = getelementptr inbounds %struct.pardevice, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %port1.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port1.i54, align 4
  %ops.i55 = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i55, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_status.i, align 4
  %call2.i = tail call zeroext i8 %37(ptr noundef %33) #13
  %cmp = icmp sgt i8 %call2.i, -1
  br i1 %cmp, label %if.end13.while.end_crit_edge, label %if.end13.if.end_crit_edge

if.end13.if.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %sw.bb2.while.end_crit_edge
  %38 = lshr i8 %data, 4
  %39 = or i8 %38, 16
  %40 = ptrtoint ptr %pardev.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pardev.i50, align 4
  %port1.i57 = getelementptr inbounds %struct.pardevice, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %port1.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port1.i57, align 4
  %ops.i58 = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %ops.i58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i58, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void %47(ptr noundef %43, i8 noundef zeroext %39) #13
  %48 = ptrtoint ptr %ns_p to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %ns_p, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %while.end, %entry.sw.bb17_crit_edge
  %conv21.pre-phi = phi i32 [ %.pre82, %entry.sw.bb17_crit_edge ], [ %conv6, %while.end ]
  %.pre-phi = phi i8 [ %.pre81, %entry.sw.bb17_crit_edge ], [ %38, %while.end ]
  %pardev.i59 = getelementptr i8, ptr %dev, i32 2592
  %49 = ptrtoint ptr %pardev.i59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pardev.i59, align 4
  %port1.i60 = getelementptr inbounds %struct.pardevice, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port1.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port1.i60, align 4
  %ops.i61 = getelementptr inbounds %struct.parport, ptr %52, i32 0, i32 24
  %53 = ptrtoint ptr %ops.i61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i61, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  tail call void %56(ptr noundef %52, i8 noundef zeroext %.pre-phi) #13
  %57 = ptrtoint ptr %pardev.i59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pardev.i59, align 4
  %port1.i6374 = getelementptr inbounds %struct.pardevice, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %port1.i6374 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port1.i6374, align 4
  %ops.i6475 = getelementptr inbounds %struct.parport, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %ops.i6475 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i6475, align 4
  %read_status.i6576 = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %read_status.i6576 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_status.i6576, align 4
  %call2.i6677 = tail call zeroext i8 %64(ptr noundef %60) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call2.i6677)
  %tobool.not78 = icmp sgt i8 %call2.i6677, -1
  br i1 %tobool.not78, label %sw.bb17.if.end28_crit_edge, label %sw.bb17.while.end34_crit_edge

sw.bb17.while.end34_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end34

sw.bb17.if.end28_crit_edge:                       ; preds = %sw.bb17
  br label %if.end28

if.end28:                                         ; preds = %if.end33.if.end28_crit_edge, %sw.bb17.if.end28_crit_edge
  %cx.179 = phi i32 [ %dec29, %if.end33.if.end28_crit_edge ], [ %conv21.pre-phi, %sw.bb17.if.end28_crit_edge ]
  %dec29 = add i32 %cx.179, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec29)
  %cmp30 = icmp eq i32 %dec29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #13
  %66 = ptrtoint ptr %pardev.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pardev.i59, align 4
  %port1.i63 = getelementptr inbounds %struct.pardevice, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %port1.i63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port1.i63, align 4
  %ops.i64 = getelementptr inbounds %struct.parport, ptr %69, i32 0, i32 24
  %70 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i64, align 4
  %read_status.i65 = getelementptr inbounds %struct.parport_operations, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %read_status.i65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_status.i65, align 4
  %call2.i66 = tail call zeroext i8 %73(ptr noundef %69) #13
  %tobool.not = icmp sgt i8 %call2.i66, -1
  br i1 %tobool.not, label %if.end33.if.end28_crit_edge, label %if.end33.while.end34_crit_edge

if.end33.while.end34_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end34

if.end33.if.end28_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

while.end34:                                      ; preds = %if.end33.while.end34_crit_edge, %sw.bb17.while.end34_crit_edge
  %74 = ptrtoint ptr %ns_p to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %ns_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end34, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end34 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end28.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !117, !119, !121, !123, !124, !125, !127, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !166, !167, !168, !169, !171, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__param_parport, !1, !"__param_parport", i1 false, i1 false}
!1 = !{!"../drivers/net/plip/plip.c", i32 1248, i32 1}
!2 = !{ptr @__UNIQUE_ID_parporttype362, !1, !"__UNIQUE_ID_parporttype362", i1 false, i1 false}
!3 = !{ptr @__param_timid, !4, !"__param_timid", i1 false, i1 false}
!4 = !{!"../drivers/net/plip/plip.c", i32 1249, i32 1}
!5 = !{ptr @__UNIQUE_ID_timidtype363, !4, !"__UNIQUE_ID_timidtype363", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_parport364, !7, !"__UNIQUE_ID_parport364", i1 false, i1 false}
!7 = !{!"../drivers/net/plip/plip.c", i32 1250, i32 1}
!8 = !{ptr @__setup_plip_setup, !9, !"__setup_plip_setup", i1 false, i1 false}
!9 = !{!"../drivers/net/plip/plip.c", i32 1416, i32 1}
!10 = !{ptr @__initcall__kmod_plip__365_1438_plip_init6, !11, !"__initcall__kmod_plip__365_1438_plip_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/plip/plip.c", i32 1438, i32 1}
!12 = !{ptr @__exitcall_plip_cleanup_module, !13, !"__exitcall_plip_cleanup_module", i1 false, i1 false}
!13 = !{!"../drivers/net/plip/plip.c", i32 1439, i32 1}
!14 = !{ptr @__UNIQUE_ID_file366, !15, !"__UNIQUE_ID_file366", i1 false, i1 false}
!15 = !{!"../drivers/net/plip/plip.c", i32 1440, i32 1}
!16 = !{ptr @__UNIQUE_ID_license367, !15, !"__UNIQUE_ID_license367", i1 false, i1 false}
!17 = !{ptr @timid, !18, !"timid", i1 false, i1 false}
!18 = !{!"../drivers/net/plip/plip.c", i32 1246, i32 12}
!19 = !{ptr @__param_str_parport, !1, !"__param_str_parport", i1 false, i1 false}
!20 = !{ptr @__param_arr_parport, !1, !"__param_arr_parport", i1 false, i1 false}
!21 = !{ptr @parport, !22, !"parport", i1 false, i1 false}
!22 = !{!"../drivers/net/plip/plip.c", i32 1245, i32 12}
!23 = !{ptr @__param_str_timid, !4, !"__param_str_timid", i1 false, i1 false}
!24 = !{ptr @dev_plip, !25, !"dev_plip", i1 false, i1 false}
!25 = !{!"../drivers/net/plip/plip.c", i32 1252, i32 27}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/plip/plip.c", i32 1357, i32 11}
!28 = !{ptr @plip_driver, !29, !"plip_driver", i1 false, i1 false}
!29 = !{!"../drivers/net/plip/plip.c", i32 1356, i32 30}
!30 = !{ptr @plip_attach.unit, !31, !"unit", i1 false, i1 false}
!31 = !{!"../drivers/net/plip/plip.c", i32 1268, i32 13}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/plip/plip.c", i32 1277, i32 4}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @plip_attach._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @plip_attach._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/plip/plip.c", i32 1281, i32 17}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/plip/plip.c", i32 1291, i32 4}
!42 = !{ptr @plip_attach._entry.5, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @plip_attach._entry_ptr.7, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/plip/plip.c", i32 1308, i32 4}
!46 = !{ptr @plip_attach._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @plip_attach._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/plip/plip.c", i32 1315, i32 4}
!50 = !{ptr @plip_attach._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @plip_attach._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/plip/plip.c", i32 1319, i32 3}
!54 = !{ptr @plip_attach._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @plip_attach._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/plip/plip.c", i32 1321, i32 4}
!58 = !{ptr @plip_attach._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @plip_attach._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/plip/plip.c", i32 1325, i32 4}
!62 = !{ptr @plip_attach._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @plip_attach._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/plip/plip.c", i32 1196, i32 3}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @plip_wakeup._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @plip_wakeup._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/plip/plip.c", i32 1199, i32 4}
!71 = !{ptr @plip_wakeup._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @plip_wakeup._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/plip/plip.c", i32 935, i32 4}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @plip_interrupt._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @plip_interrupt._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/plip/plip.c", i32 962, i32 3}
!80 = !{ptr @plip_interrupt._entry.30, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @plip_interrupt._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @plip_init_netdev.addr_init, !83, !"addr_init", i1 false, i1 false}
!83 = !{!"../drivers/net/plip/plip.c", i32 287, i32 18}
!84 = !{ptr @plip_init_netdev.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/net/plip/plip.c", i32 309, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @plip_init_netdev.__key.34, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/plip/plip.c", i32 310, i32 2}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @plip_init_netdev.__key.36, !88, !"__key", i1 false, i1 false}
!91 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @plip_init_netdev.__key.38, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/net/plip/plip.c", i32 313, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @plip_init_netdev.__key.40, !93, !"__key", i1 false, i1 false}
!96 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @plip_init_netdev.__key.42, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/plip/plip.c", i32 315, i32 2}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @plip_netdev_ops, !101, !"plip_netdev_ops", i1 false, i1 false}
!101 = !{!"../drivers/net/plip/plip.c", i32 266, i32 36}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../drivers/net/plip/plip.c", i32 1114, i32 33}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @init_completion.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/completion.h", i32 87, i32 2}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/plip/plip.c", i32 988, i32 3}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @plip_tx_packet._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @plip_tx_packet._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @plip_header_ops, !118, !"plip_header_ops", i1 false, i1 false}
!118 = !{!"../drivers/net/plip/plip.c", i32 261, i32 32}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../drivers/net/plip/plip.c", i32 1019, i32 33}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!129 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @connection_state_table, !131, !"connection_state_table", i1 false, i1 false}
!131 = !{!"../drivers/net/plip/plip.c", i32 355, i32 24}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/plip/plip.c", i32 633, i32 4}
!134 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @plip_receive_packet._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @plip_receive_packet._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/plip/plip.c", i32 639, i32 4}
!139 = !{ptr @plip_receive_packet._entry.55, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @plip_receive_packet._entry_ptr.57, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/plip/plip.c", i32 670, i32 5}
!143 = !{ptr @plip_receive_packet._entry.58, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @plip_receive_packet._entry_ptr.60, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/plip/plip.c", i32 765, i32 3}
!147 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @plip_send_packet._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @plip_send_packet._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/plip/plip.c", i32 427, i32 4}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @plip_bh_timeout_error._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @plip_bh_timeout_error._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/plip/plip.c", i32 446, i32 4}
!157 = !{ptr @plip_bh_timeout_error._entry.65, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @plip_bh_timeout_error._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @version, !160, !"version", i1 false, i1 false}
!160 = !{!"../drivers/net/plip/plip.c", i32 53, i32 19}
!161 = !{ptr @__setup_str_plip_setup, !9, !"__setup_str_plip_setup", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/plip/plip.c", i32 1395, i32 20}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/plip/plip.c", i32 1400, i32 4}
!166 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @plip_setup._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @plip_setup._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/plip/plip.c", i32 1402, i32 26}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/plip/plip.c", i32 1409, i32 4}
!173 = !{ptr @plip_setup._entry.72, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @plip_setup._entry_ptr.74, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @parport_ptr, !176, !"parport_ptr", i1 false, i1 false}
!176 = !{!"../drivers/net/plip/plip.c", i32 1386, i32 12}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/plip/plip.c", i32 1426, i32 3}
!179 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @plip_init._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @plip_init._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/plip/plip.c", i32 1431, i32 3}
!184 = !{ptr @plip_init._entry.77, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @plip_init._entry_ptr.79, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2149437173}
!197 = !{i64 2149437439}
