; ModuleID = '/llk/IR_all_yes/drivers/net/can/janz-ican3.c_pt.bc'
source_filename = "../drivers/net/can/janz-ican3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.janz_cmodio_onboard_regs = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ican3_msg = type { i8, i8, i16, [252 x i8] }
%struct.ican3_fast_desc = type { i8, i8, [14 x i8] }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.can_berr_counter = type { i16, i16 }
%struct.ican3_dev = type { %struct.can_priv, ptr, %struct.napi_struct, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.completion, %struct.can_berr_counter, i32, [32 x i8], i32, %struct.sk_buff_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ican3_dpm_control = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ican3_new_desc = type { i8, i8 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }

@__initcall__kmod_janz_ican3__472_2049_ican3_driver_init6 = internal global ptr @ican3_driver_init, section ".initcall6.init", align 4
@ican3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ican3_probe, ptr @ican3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ican3_driver_exit = internal global ptr @ican3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author473 = internal constant [55 x i8] c"janz_ican3.author=Ira W. Snyder <iws@ovro.caltech.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description474 = internal constant [55 x i8] c"janz_ican3.description=Janz MODULbus VMOD-ICAN3 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file475 = internal constant [43 x i8] c"janz_ican3.file=drivers/net/can/janz-ican3\00", section ".modinfo", align 1
@__UNIQUE_ID_license476 = internal constant [23 x i8] c"janz_ican3.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias477 = internal constant [37 x i8] c"janz_ican3.alias=platform:janz-ican3\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"janz-ican3\00", [21 x i8] zeroinitializer }, align 32
@ican3_probe.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"janz_ican3\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ican3_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/can/janz-ican3.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"probe: module number %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ican3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1904, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate CANdev\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr = internal global ptr @ican3_probe._entry, section ".printk_index", align 4
@ican3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mod->lock\00", [21 x i8] zeroinitializer }, align 32
@ican3_sysfs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ican3_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ican3_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ican3_open, ptr @ican3_stop, ptr @ican3_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ican3_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"janz-ican3\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@ican3_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1949, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MODULbus registers not found\0A\00", [34 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.11 = internal global ptr @ican3_probe._entry.9, section ".printk_index", align 4
@ican3_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1956, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MODULbus registers not ioremap\0A\00", [32 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.14 = internal global ptr @ican3_probe._entry.12, section ".printk_index", align 4
@ican3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1966, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CONTROL registers not found\0A\00", [35 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.17 = internal global ptr @ican3_probe._entry.15, section ".printk_index", align 4
@ican3_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1973, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CONTROL registers not ioremap\0A\00", [33 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.20 = internal global ptr @ican3_probe._entry.18, section ".printk_index", align 4
@ican3_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1982, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.23 = internal global ptr @ican3_probe._entry.21, section ".printk_index", align 4
@ican3_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1990, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unable to start CANdev\0A\00", [36 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.26 = internal global ptr @ican3_probe._entry.24, section ".printk_index", align 4
@ican3_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1997, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: unable to register CANdev\0A\00", [33 x i8] zeroinitializer }, align 32
@ican3_probe._entry_ptr.29 = internal global ptr @ican3_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"module %d: registered CAN device\0A\00", [62 x i8] zeroinitializer }, align 32
@ican3_old_recv_msg.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ican3_old_recv_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no mbox for reading\0A\00", [43 x i8] zeroinitializer }, align 32
@ican3_new_recv_msg.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ican3_new_recv_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: no buffers to recv\0A\00", [40 x i8] zeroinitializer }, align 32
@ican3_handle_message.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 1, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ican3_handle_message\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: modno %d spec 0x%.2x len %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@ican3_handle_idvers.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ican3_handle_idvers\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IDVERS response: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lost %d control messages\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to handle errors on non-SJA1000\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error message too short\0A\00", [39 x i8] zeroinitializer }, align 32
@ican3_handle_cevtind.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 1, i8 11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ican3_handle_cevtind\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bus error interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to re-enable bus-error\0A\00", [33 x i8] zeroinitializer }, align 32
@ican3_handle_cevtind.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.45, i8 1, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data overrun interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@ican3_handle_cevtind.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.46, i8 1, i8 21, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error warning + passive interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no mbox for writing\0A\00", [43 x i8] zeroinitializer }, align 32
@ican3_new_send_msg.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ican3_new_send_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: no free buffers\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"received an unknown inquiry response\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown NMTS event indication %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unhandled NMTS indication %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"received unknown message: spec 0x%.2x length %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BUG: echo skb not occupied\0A\00", [36 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ican3_sysfs_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_termination, ptr @dev_attr_fwinfo, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_termination = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @termination_show, ptr @termination_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fwinfo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fwinfo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"termination\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s timed out\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.termination_show = private unnamed_addr constant [17 x i8] c"termination_show\00", align 1
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fwinfo\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to start CAN layer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to set bus-on\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to set bus-off\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BUG: no free descriptors\0A\00", [38 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ican3_get_berr_counter = private unnamed_addr constant [23 x i8] c"ican3_get_berr_counter\00", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to reset module\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JANZ-ICAN3\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ICAN3 not detected (found %s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CAL/CANopen\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to connect to module\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to switch to new-style interface\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to enable termination\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to set bus-error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to switch to fast host interface\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to set acceptance filter\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reset CAN module\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 5, i64 10, i64 21, i64 55, i64 176]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 9]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 8, i64 12]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"ican3_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2041, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2043, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1896, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1904, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1915, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"ican3_sysfs_attr_group\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1875, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"ican3_netdev_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1748, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"ican3_bittiming_const\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1760, i32 41 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1949, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1956, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1966, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1973, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1982, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1990, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1997, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 2001, i32 25 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 320, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 598, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1244, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 987, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1003, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1043, i32 25 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1049, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1071, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1087, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1102, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1111, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 365, i32 25 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 567, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1192, i32 25 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1219, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1226, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1235, i32 25 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1292, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1984, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 87, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"ican3_sysfs_attrs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1869, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant [21 x i8] c"dev_attr_termination\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"dev_attr_fwinfo\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1866, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1832, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1836, i32 25 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1867, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1863, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1642, i32 25 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1649, i32 25 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1673, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1700, i32 25 }
@___asan_gen_.301 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 104, i32 6 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1569, i32 25 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1575, i32 27 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1576, i32 25 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1579, i32 26 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1589, i32 25 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1596, i32 25 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1603, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1610, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1617, i32 25 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1623, i32 25 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [32 x i8] c"../drivers/net/can/janz-ican3.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 1550, i32 24 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_alias477, ptr @__UNIQUE_ID_author473, ptr @__UNIQUE_ID_description474, ptr @__UNIQUE_ID_file475, ptr @__UNIQUE_ID_license476, ptr @__exitcall_ican3_driver_exit, ptr @__initcall__kmod_janz_ican3__472_2049_ican3_driver_init6, ptr @ican3_driver_exit, ptr @ican3_probe._entry, ptr @ican3_probe._entry.12, ptr @ican3_probe._entry.15, ptr @ican3_probe._entry.18, ptr @ican3_probe._entry.21, ptr @ican3_probe._entry.24, ptr @ican3_probe._entry.27, ptr @ican3_probe._entry.9, ptr @ican3_probe._entry_ptr, ptr @ican3_probe._entry_ptr.11, ptr @ican3_probe._entry_ptr.14, ptr @ican3_probe._entry_ptr.17, ptr @ican3_probe._entry_ptr.20, ptr @ican3_probe._entry_ptr.23, ptr @ican3_probe._entry_ptr.26, ptr @ican3_probe._entry_ptr.29, ptr @ican3_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ican3_probe.__key, ptr @.str.8, ptr @ican3_sysfs_attr_group, ptr @ican3_netdev_ops, ptr @ican3_bittiming_const, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @skb_queue_head_init.__key, ptr @.str.55, ptr @init_completion.__key, ptr @.str.56, ptr @ican3_sysfs_attrs, ptr @dev_attr_termination, ptr @dev_attr_fwinfo, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ican3_sysfs_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_termination to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fwinfo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ican3_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ican3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ican3_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_probe.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_probe, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !185

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ican3_probe.__UNIQUE_ID_ddebug471, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call11 = tail call ptr @alloc_candev_mqs(i32 noundef 856, i32 noundef 0, i32 noundef 1, i32 noundef 1) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call11, i32 2304
  %ndev19 = getelementptr i8, ptr %call11, i32 2616
  %5 = ptrtoint ptr %ndev19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %ndev19, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %num = getelementptr i8, ptr %call11, i32 2848
  %8 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num, align 8
  %napi = getelementptr i8, ptr %call11, i32 2624
  tail call void @netif_napi_add(ptr noundef nonnull %call11, ptr noundef %napi, ptr noundef nonnull @ican3_napi, i32 noundef 1024) #9
  %echoq = getelementptr i8, ptr %call11, i32 3028
  %lock.i = getelementptr i8, ptr %call11, i32 3040
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %9 = ptrtoint ptr %echoq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %echoq, ptr %echoq, align 4
  %prev.i.i = getelementptr i8, ptr %call11, i32 3032
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %echoq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %call11, i32 3036
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr i8, ptr %call11, i32 3084
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ican3_probe.__key, i16 noundef signext 3) #9
  %termination_comp = getelementptr i8, ptr %call11, i32 2868
  %12 = ptrtoint ptr %termination_comp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %termination_comp, align 4
  %wait.i = getelementptr i8, ptr %call11, i32 2872
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #9
  %buserror_comp = getelementptr i8, ptr %call11, i32 2928
  %13 = ptrtoint ptr %buserror_comp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buserror_comp, align 4
  %wait.i184 = getelementptr i8, ptr %call11, i32 2932
  tail call void @__init_swait_queue_head(ptr noundef %wait.i184, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #9
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 134
  %14 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ican3_sysfs_attr_group, ptr %sysfs_groups, align 16
  %free_page = getelementptr i8, ptr %call11, i32 3156
  %15 = ptrtoint ptr %free_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %free_page, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ican3_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %or = or i32 %18, 262144
  store i32 %or, ptr %flags, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %parent, align 8
  %clock = getelementptr i8, ptr %call11, i32 2440
  %20 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8000000, ptr %clock, align 8
  %bittiming_const = getelementptr i8, ptr %call11, i32 2332
  %21 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ican3_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call11, i32 2596
  %22 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ican3_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call11, i32 2608
  %23 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ican3_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call11, i32 2480
  %24 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 28, ptr %ctrlmode_supported, align 8
  %call31 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr i8, ptr %call11, i32 2864
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call31, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end17.out_free_ndev_crit_edge, label %if.end34

if.end17.out_free_ndev_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_ndev

if.end34:                                         ; preds = %if.end17
  %irq36 = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 64
  %26 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call31, ptr %irq36, align 4
  %call37 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %out_free_ndev

if.end43:                                         ; preds = %if.end34
  %27 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call37, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call37, i32 0, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  %call45 = tail call ptr @ioremap(i32 noundef %28, i32 noundef %add.i) #9
  %dpm = getelementptr i8, ptr %call11, i32 2860
  %31 = ptrtoint ptr %dpm to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call45, ptr %dpm, align 4
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %do.end51, label %if.end52

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %out_free_ndev

if.end52:                                         ; preds = %if.end43
  %add.ptr = getelementptr i8, ptr %call45, i32 256
  %dpmctrl = getelementptr i8, ptr %call11, i32 2856
  %32 = ptrtoint ptr %dpmctrl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %dpmctrl, align 8
  %call54 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.end59, label %if.end60

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %out_iounmap_dpm

if.end60:                                         ; preds = %if.end52
  %33 = ptrtoint ptr %call54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call54, align 4
  %end.i185 = getelementptr inbounds %struct.resource, ptr %call54, i32 0, i32 1
  %35 = ptrtoint ptr %end.i185 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end.i185, align 4
  %sub.i186 = sub i32 1, %34
  %add.i187 = add i32 %sub.i186, %36
  %call63 = tail call ptr @ioremap(i32 noundef %34, i32 noundef %add.i187) #9
  %ctrl = getelementptr i8, ptr %call11, i32 2852
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call63, ptr %ctrl, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %do.end69, label %if.end70

do.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %out_iounmap_dpm

if.end70:                                         ; preds = %if.end60
  %38 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %39
  %conv = trunc i32 %shl to i8
  %int_disable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %call63, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable, i8 %conv) #9, !srcloc !187
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @ican3_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not = icmp eq i32 %call.i, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  br label %out_iounmap_ctrl

if.end80:                                         ; preds = %if.end70
  tail call void @napi_enable(ptr noundef %napi) #9
  %call82 = tail call fastcc i32 @ican3_startup_module(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %if.end80.out_free_irq_crit_edge

if.end80.out_free_irq_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_irq

if.end88:                                         ; preds = %if.end80
  %call89 = tail call i32 @register_candev(ptr noundef nonnull %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end95, label %if.end88.out_free_irq_crit_edge

if.end88.out_free_irq_crit_edge:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_irq

if.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev19, align 8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.30, i32 noundef %45) #12
  br label %cleanup

out_free_irq:                                     ; preds = %if.end88.out_free_irq_crit_edge, %if.end80.out_free_irq_crit_edge
  %.str.28.sink = phi ptr [ @.str.25, %if.end80.out_free_irq_crit_edge ], [ @.str.28, %if.end88.out_free_irq_crit_edge ]
  %ret.0 = phi i32 [ %call82, %if.end80.out_free_irq_crit_edge ], [ %call89, %if.end88.out_free_irq_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.28.sink, ptr noundef nonnull @.str.2) #12
  tail call void @napi_disable(ptr noundef %napi) #9
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num, align 8
  %shl100 = shl nuw i32 1, %47
  %conv101 = trunc i32 %shl100 to i8
  %48 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl, align 4
  %int_disable103 = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %49, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable103, i8 %conv101) #9, !srcloc !187
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 8
  %call105 = tail call ptr @free_irq(i32 noundef %51, ptr noundef %add.ptr.i) #9
  br label %out_iounmap_ctrl

out_iounmap_ctrl:                                 ; preds = %out_free_irq, %do.end79
  %ret.1 = phi i32 [ %call.i, %do.end79 ], [ %ret.0, %out_free_irq ]
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl, align 4
  tail call void @iounmap(ptr noundef %53) #9
  br label %out_iounmap_dpm

out_iounmap_dpm:                                  ; preds = %out_iounmap_ctrl, %do.end69, %do.end59
  %ret.2 = phi i32 [ %ret.1, %out_iounmap_ctrl ], [ -12, %do.end69 ], [ -19, %do.end59 ]
  %54 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dpm, align 4
  tail call void @iounmap(ptr noundef %55) #9
  br label %out_free_ndev

out_free_ndev:                                    ; preds = %out_iounmap_dpm, %do.end51, %do.end42, %if.end17.out_free_ndev_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_iounmap_dpm ], [ -12, %do.end51 ], [ -19, %do.end42 ], [ -19, %if.end17.out_free_ndev_crit_edge ]
  tail call void @free_candev(ptr noundef nonnull %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_ndev, %if.end95, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ -6, %entry.cleanup_crit_edge ], [ %ret.3, %out_free_ndev ], [ -12, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #9
  %napi = getelementptr i8, ptr %1, i32 2624
  tail call void @napi_disable(ptr noundef %napi) #9
  %num = getelementptr i8, ptr %1, i32 2848
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %3
  %conv = trunc i32 %shl to i8
  %ctrl = getelementptr i8, ptr %1, i32 2852
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %int_disable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable, i8 %conv) #9, !srcloc !187
  %irq = getelementptr i8, ptr %1, i32 2864
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %add.ptr.i) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i.i) #9
  %8 = call ptr @memset(ptr %msg.i.i, i32 0, i32 256)
  %spec.i.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %spec.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %spec.i.i, align 1
  %call.i.i = call fastcc i32 @ican3_send_msg(ptr noundef %add.ptr.i, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i.i) #9
  %call1.i = call fastcc i32 @ican3_reset_module(ptr noundef %add.ptr.i) #9
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  call void @iounmap(ptr noundef %11) #9
  %dpm = getelementptr i8, ptr %1, i32 2860
  %12 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dpm, align 4
  call void @iounmap(ptr noundef %13) #9
  call void @free_candev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_napi(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %desc.i = alloca %struct.ican3_fast_desc, align 1
  %cf.i = alloca ptr, align 4
  %msg = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -320
  %lock.i = getelementptr i8, ptr %napi, i32 460
  %iftype.i = getelementptr i8, ptr %napi, i32 400
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg) #9
  %0 = call ptr @memset(ptr %msg, i32 255, i32 256)
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %1 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iftype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.i = icmp eq i32 %2, 0
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call fastcc i32 @ican3_old_recv_msg(ptr noundef %add.ptr, ptr noundef nonnull %msg) #9
  br label %ican3_recv_msg.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call fastcc i32 @ican3_new_recv_msg(ptr noundef %add.ptr, ptr noundef nonnull %msg) #9
  br label %ican3_recv_msg.exit

ican3_recv_msg.exit:                              ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call7.i, %if.then.i ], [ %call8.i, %if.else.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %while.cond1.critedge

if.end:                                           ; preds = %ican3_recv_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ican3_handle_message(ptr noundef %add.ptr, ptr noundef nonnull %msg)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #9
  br label %while.cond

while.cond1.critedge:                             ; preds = %ican3_recv_msg.exit
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp70 = icmp sgt i32 %budget, 0
  br i1 %cmp70, label %while.body2.lr.ph, label %while.cond1.critedge.do.body12_crit_edge

while.cond1.critedge.do.body12_crit_edge:         ; preds = %while.cond1.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

while.body2.lr.ph:                                ; preds = %while.cond1.critedge
  %ndev1.i = getelementptr i8, ptr %napi, i32 -8
  %3 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 4
  %9 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 5
  %10 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i, i32 0, i32 2, i32 6
  %fastrx_start.i = getelementptr i8, ptr %napi, i32 516
  %fastrx_num.i = getelementptr i8, ptr %napi, i32 520
  %dpmctrl.i.i = getelementptr i8, ptr %napi, i32 232
  %dpm.i = getelementptr i8, ptr %napi, i32 236
  %echoq.i.i = getelementptr i8, ptr %napi, i32 404
  br label %while.body2

while.body2:                                      ; preds = %if.end6.while.body2_crit_edge, %while.body2.lr.ph
  %received.071 = phi i32 [ 0, %while.body2.lr.ph ], [ %inc, %if.end6.while.body2_crit_edge ]
  %11 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev1.i, align 8
  %stats2.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #9
  %13 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %14 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !188
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %15 = ptrtoint ptr %fastrx_start.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fastrx_start.i, align 4
  %17 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fastrx_num.i, align 8
  %div93.i = lshr i32 %18, 4
  %add.i = add i32 %div93.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %add.i, 255
  br i1 %cmp.i.i, label %do.body2.i.i, label %ican3_set_page.exit.i, !prof !189

do.body2.i.i:                                     ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_set_page.exit.i:                            ; preds = %while.body2
  %conv.i.i = trunc i32 %add.i to i8
  %19 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %conv.i.i) #9, !srcloc !187
  %21 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpm.i, align 4
  %23 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fastrx_num.i, align 8
  %rem.i = shl i32 %24, 4
  %mul.i = and i32 %rem.i, 240
  %add.ptr.i = getelementptr i8, ptr %22, i32 %mul.i
  call void @mmiocpy(ptr noundef nonnull %desc.i, ptr noundef %add.ptr.i, i32 noundef 16) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  %25 = ptrtoint ptr %desc.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %desc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool.not.i = icmp sgt i8 %26, -1
  br i1 %tobool.not.i, label %if.then9.critedge, label %if.end.i

if.end.i:                                         ; preds = %ican3_set_page.exit.i
  %call10.i = call ptr @alloc_can_skb(ptr noundef %12, ptr noundef nonnull %cf.i) #9
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.then15.i, label %if.end16.i, !prof !189

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 6
  %27 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %err_noalloc.i

if.end16.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cf.i, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %33 = and i8 %32, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i95.i = icmp eq i8 %33, 0
  br i1 %cmp.i95.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %30, align 8
  %or.i.i = or i32 %38, 1073741824
  store i32 %or.i.i, ptr %30, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %conv7.i.i = zext i8 %40 to i32
  %shl.i.i = shl nuw nsw i32 %conv7.i.i, 3
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %30, align 8
  %or9.i.i = or i32 %shl.i.i, %42
  store i32 %or9.i.i, ptr %30, align 8
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 1
  %45 = lshr i8 %44, 5
  %46 = zext i8 %45 to i32
  %or15.i.i = or i32 %or9.i.i, %46
  store i32 %or15.i.i, ptr %30, align 8
  %47 = load i8, ptr %5, align 1
  %48 = and i8 %47, 15
  %49 = call i8 @llvm.umin.i8(i8 %48, i8 8) #9
  %50 = getelementptr inbounds %struct.can_frame, ptr %30, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %49, ptr %50, align 4
  br label %ican3_to_can_frame.exit.i

if.else.i.i:                                      ; preds = %if.end16.i
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %4, align 1
  %54 = and i8 %53, 15
  %55 = call i8 @llvm.umin.i8(i8 %54, i8 8) #9
  %56 = getelementptr inbounds %struct.can_frame, ptr %30, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %56, align 4
  %58 = and i8 %53, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool53.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool53.not.i.i, label %if.else.i.i.if.end57.i.i_crit_edge, label %if.then54.i.i

if.else.i.i.if.end57.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i

if.then54.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %30, align 8
  %or56.i.i = or i32 %60, 1073741824
  store i32 %or56.i.i, ptr %30, align 8
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr.i.i = load i8, ptr %4, align 1
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then54.i.i, %if.else.i.i.if.end57.i.i_crit_edge
  %62 = phi i8 [ %.pr.i.i, %if.then54.i.i ], [ %53, %if.else.i.i.if.end57.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %tobool62.not.i.i = icmp sgt i8 %62, -1
  br i1 %tobool62.not.i.i, label %if.else91.i.i, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %30, align 8
  %or65.i.i = or i32 %64, -2147483648
  store i32 %or65.i.i, ptr %30, align 8
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %conv68.i.i = zext i8 %66 to i32
  %shl69.i.i = shl nuw nsw i32 %conv68.i.i, 21
  %or71.i.i = or i32 %shl69.i.i, %or65.i.i
  store i32 %or71.i.i, ptr %30, align 8
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %7, align 1
  %conv74.i.i = zext i8 %68 to i32
  %shl75.i.i = shl nuw nsw i32 %conv74.i.i, 13
  %or77.i.i = or i32 %shl75.i.i, %or71.i.i
  store i32 %or77.i.i, ptr %30, align 8
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %8, align 1
  %conv80.i.i = zext i8 %70 to i32
  %shl81.i.i = shl nuw nsw i32 %conv80.i.i, 5
  %or83.i.i = or i32 %shl81.i.i, %or77.i.i
  br label %if.end104.i.i

if.else91.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %6, align 1
  %conv94.i.i = zext i8 %72 to i32
  %shl95.i.i = shl nuw nsw i32 %conv94.i.i, 3
  %73 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %30, align 8
  %or97.i.i = or i32 %shl95.i.i, %74
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.else91.i.i, %if.then63.i.i
  %storemerge.i = phi i32 [ %or83.i.i, %if.then63.i.i ], [ %or97.i.i, %if.else91.i.i ]
  %arrayidx99.sink.i.i = phi ptr [ %9, %if.then63.i.i ], [ %7, %if.else91.i.i ]
  %.sink3.i.i = phi i8 [ 3, %if.then63.i.i ], [ 5, %if.else91.i.i ]
  %75 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %storemerge.i, ptr %30, align 8
  %76 = ptrtoint ptr %arrayidx99.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx99.sink.i.i, align 1
  %78 = lshr i8 %77, %.sink3.i.i
  %79 = zext i8 %78 to i32
  %or103.i.i = or i32 %storemerge.i, %79
  store i32 %or103.i.i, ptr %30, align 8
  br label %ican3_to_can_frame.exit.i

ican3_to_can_frame.exit.i:                        ; preds = %if.end104.i.i, %if.end.i.i
  %.sink113.i = phi i8 [ %49, %if.end.i.i ], [ %55, %if.end104.i.i ]
  %.sink.i = phi ptr [ %6, %if.end.i.i ], [ %10, %if.end104.i.i ]
  %data28.i.i = getelementptr inbounds %struct.can_frame, ptr %30, i32 0, i32 5
  %conv31.i.i = zext i8 %.sink113.i to i32
  %80 = call ptr @memcpy(ptr %data28.i.i, ptr %.sink.i, i32 %conv31.i.i)
  %data.i96.i = getelementptr inbounds %struct.sk_buff, ptr %call10.i, i32 0, i32 19
  %81 = ptrtoint ptr %data.i96.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i96.i, align 4
  %83 = ptrtoint ptr %echoq.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %echoq.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %84, %echoq.i.i
  %tobool.not25.i.i = icmp eq ptr %84, null
  %tobool.not.i97.i = or i1 %cmp.i.i.i, %tobool.not25.i.i
  br i1 %tobool.not.i97.i, label %ican3_to_can_frame.exit.i.if.end22.i_crit_edge, label %if.end.i98.i

ican3_to_can_frame.exit.i.if.end22.i_crit_edge:   ; preds = %ican3_to_can_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end.i98.i:                                     ; preds = %ican3_to_can_frame.exit.i
  %data1.i.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data1.i.i, align 4
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %82, align 8
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.not.i.i = icmp eq i32 %88, %90
  br i1 %cmp.not.i.i, label %if.end4.i.i, label %if.end.i98.i.if.end22.i_crit_edge

if.end.i98.i.if.end22.i_crit_edge:                ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end4.i.i:                                      ; preds = %if.end.i98.i
  %91 = getelementptr inbounds %struct.can_frame, ptr %82, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 4
  %94 = getelementptr inbounds %struct.can_frame, ptr %86, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %96)
  %cmp6.not.i.i = icmp eq i8 %93, %96
  br i1 %cmp6.not.i.i, label %ican3_echo_skb_matches.exit.i, label %if.end4.i.i.if.end22.i_crit_edge

if.end4.i.i.if.end22.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

ican3_echo_skb_matches.exit.i:                    ; preds = %if.end4.i.i
  %conv.i99.i = zext i8 %93 to i32
  %data10.i.i = getelementptr inbounds %struct.can_frame, ptr %82, i32 0, i32 5
  %data11.i.i = getelementptr inbounds %struct.can_frame, ptr %86, i32 0, i32 5
  %bcmp.i.i = call i32 @bcmp(ptr %data10.i.i, ptr %data11.i.i, i32 %conv.i99.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp15.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp15.i.i, label %if.then18.i, label %ican3_echo_skb_matches.exit.i.if.end22.i_crit_edge

ican3_echo_skb_matches.exit.i.if.end22.i_crit_edge: ; preds = %ican3_echo_skb_matches.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then18.i:                                      ; preds = %ican3_echo_skb_matches.exit.i
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 1
  %97 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_packets.i, align 4
  %inc19.i = add i32 %98, 1
  store i32 %inc19.i, ptr %tx_packets.i, align 4
  %call.i.i = call ptr @skb_dequeue(ptr noundef %echoq.i.i) #9
  %tobool.not.i101.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i101.i, label %if.then.i102.i, label %if.end.i104.i

if.then.i102.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ndev1.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %100, ptr noundef nonnull @.str.54) #12
  br label %ican3_get_echo_skb.exit.i

if.end.i104.i:                                    ; preds = %if.then18.i
  %data.i103.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %101 = ptrtoint ptr %data.i103.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i103.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %and.i.i = and i32 %104, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i104.i.if.end3.i.i_crit_edge

if.end.i104.i.if.end3.i.i_crit_edge:              ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = getelementptr inbounds %struct.can_frame, ptr %102, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i104.i.if.end3.i.i_crit_edge
  %dlc.0.i.i = phi i8 [ 0, %if.end.i104.i.if.end3.i.i_crit_edge ], [ %107, %if.then2.i.i ]
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %108 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.lshr.mask.i.i = and i16 %bf.load.i.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i.i)
  %cmp.not.i105.i = icmp eq i16 %bf.lshr.mask.i.i, -24576
  br i1 %cmp.not.i105.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #9
  br label %ican3_get_echo_skb.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %109 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 12, ptr %protocol.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 6655
  %bf.set12.i.i = or i16 %bf.clear.i.i, 8704
  %110 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %bf.set12.i.i, ptr %pkt_type.i.i, align 8
  %111 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ndev1.i, align 8
  %113 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %112, ptr %113, align 8
  %call14.i.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i) #9
  br label %ican3_get_echo_skb.exit.i

ican3_get_echo_skb.exit.i:                        ; preds = %if.end7.i.i, %if.then5.i.i, %if.then.i102.i
  %retval.0.shrunk.i.i = phi i8 [ %dlc.0.i.i, %if.then5.i.i ], [ %dlc.0.i.i, %if.end7.i.i ], [ 0, %if.then.i102.i ]
  %retval.0.i106.i = zext i8 %retval.0.shrunk.i.i to i32
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 3
  %115 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_bytes.i, align 4
  %add21.i = add i32 %116, %retval.0.i106.i
  store i32 %add21.i, ptr %tx_bytes.i, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call10.i, i32 noundef 0) #9
  br label %err_noalloc.i

if.end22.i:                                       ; preds = %ican3_echo_skb_matches.exit.i.if.end22.i_crit_edge, %if.end4.i.i.if.end22.i_crit_edge, %if.end.i98.i.if.end22.i_crit_edge, %ican3_to_can_frame.exit.i.if.end22.i_crit_edge
  %117 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %stats2.i, align 4
  %inc23.i = add i32 %118, 1
  store i32 %inc23.i, ptr %stats2.i, align 4
  %119 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cf.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %and24.i = and i32 %122, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end22.i.if.end29.i_crit_edge

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = getelementptr inbounds %struct.can_frame, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 4
  %conv27.i = zext i8 %125 to i32
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 2
  %126 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_bytes.i, align 4
  %add28.i = add i32 %127, %conv27.i
  store i32 %add28.i, ptr %rx_bytes.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end29.i_crit_edge
  %call30.i = call i32 @netif_receive_skb(ptr noundef nonnull %call10.i) #9
  br label %err_noalloc.i

err_noalloc.i:                                    ; preds = %if.end29.i, %ican3_get_echo_skb.exit.i, %if.then15.i
  %128 = ptrtoint ptr %desc.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %desc.i, align 1
  %130 = xor i8 %129, -128
  store i8 %130, ptr %desc.i, align 1
  %call43.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %131 = ptrtoint ptr %fastrx_start.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fastrx_start.i, align 4
  %133 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fastrx_num.i, align 8
  %div5094.i = lshr i32 %134, 4
  %add51.i = add i32 %div5094.i, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add51.i)
  %cmp.i107.i = icmp ugt i32 %add51.i, 255
  br i1 %cmp.i107.i, label %do.body2.i108.i, label %ican3_set_page.exit111.i, !prof !189

do.body2.i108.i:                                  ; preds = %err_noalloc.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_set_page.exit111.i:                         ; preds = %err_noalloc.i
  %conv.i109.i = trunc i32 %add51.i to i8
  %135 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %136, i8 %conv.i109.i) #9, !srcloc !187
  call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef nonnull %desc.i, i32 noundef 1) #9
  %137 = ptrtoint ptr %desc.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %desc.i, align 1
  %139 = and i8 %138, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool55.not.i = icmp eq i8 %139, 0
  br i1 %tobool55.not.i, label %cond.false.i, label %ican3_set_page.exit111.i.if.end6_crit_edge

ican3_set_page.exit111.i.if.end6_crit_edge:       ; preds = %ican3_set_page.exit111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

cond.false.i:                                     ; preds = %ican3_set_page.exit111.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fastrx_num.i, align 8
  %add57.i = add i32 %141, 1
  br label %if.end6

if.end6:                                          ; preds = %cond.false.i, %ican3_set_page.exit111.i.if.end6_crit_edge
  %cond.i = phi i32 [ %add57.i, %cond.false.i ], [ 0, %ican3_set_page.exit111.i.if.end6_crit_edge ]
  %142 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %cond.i, ptr %fastrx_num.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call43.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #9
  %inc = add nuw nsw i32 %received.071, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %if.end6.do.body12_crit_edge, label %if.end6.while.body2_crit_edge

if.end6.while.body2_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body2

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

if.then9.critedge:                                ; preds = %ican3_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #9
  %call10 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %received.071) #9
  br label %do.body12

do.body12:                                        ; preds = %if.then9.critedge, %if.end6.do.body12_crit_edge, %while.cond1.critedge.do.body12_crit_edge
  %received.069 = phi i32 [ %received.071, %if.then9.critedge ], [ 0, %while.cond1.critedge.do.body12_crit_edge ], [ %budget, %if.end6.do.body12_crit_edge ]
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %ndev = getelementptr i8, ptr %napi, i32 -8
  %143 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ndev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 103
  %145 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %146, i32 0, i32 13
  %147 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.body12.if.end25_crit_edge, label %land.lhs.true

do.body12.if.end25_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %do.body12
  %qlen.i.i = getelementptr i8, ptr %napi, i32 412
  %149 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %150)
  %cmp.i = icmp ugt i32 %150, 511
  br i1 %cmp.i, label %land.lhs.true.if.end25_crit_edge, label %if.end.i51

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end.i51:                                       ; preds = %land.lhs.true
  %fasttx_start.i = getelementptr i8, ptr %napi, i32 524
  %151 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fasttx_start.i, align 4
  %fasttx_num.i = getelementptr i8, ptr %napi, i32 528
  %153 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %fasttx_num.i, align 8
  %div12.i = lshr i32 %154, 4
  %add.i49 = add i32 %div12.i, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i49)
  %cmp.i.i50 = icmp ugt i32 %add.i49, 255
  br i1 %cmp.i.i50, label %do.body2.i.i52, label %ican3_txok.exit, !prof !189

do.body2.i.i52:                                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_txok.exit:                                  ; preds = %if.end.i51
  %conv.i.i53 = trunc i32 %add.i49 to i8
  %dpmctrl.i.i54 = getelementptr i8, ptr %napi, i32 232
  %155 = ptrtoint ptr %dpmctrl.i.i54 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dpmctrl.i.i54, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %156, i8 %conv.i.i53) #9, !srcloc !187
  %dpm.i55 = getelementptr i8, ptr %napi, i32 236
  %157 = ptrtoint ptr %dpm.i55 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dpm.i55, align 4
  %159 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fasttx_num.i, align 8
  %rem.i56 = shl i32 %160, 4
  %mul.i57 = and i32 %rem.i56, 240
  %add.ptr.i58 = getelementptr i8, ptr %158, i32 %mul.i57
  %161 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i58) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i59 = icmp slt i8 %161, 0
  br i1 %tobool.not.i59, label %if.then23, label %ican3_txok.exit.if.end25_crit_edge

ican3_txok.exit.if.end25_crit_edge:               ; preds = %ican3_txok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %ican3_txok.exit
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ndev, align 8
  %_tx.i.i62 = getelementptr inbounds %struct.net_device, ptr %163, i32 0, i32 103
  %164 = ptrtoint ptr %_tx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %_tx.i.i62, align 128
  call void @netif_tx_wake_queue(ptr noundef %165) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %ican3_txok.exit.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %do.body12.if.end25_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call16) #9
  %num = getelementptr i8, ptr %napi, i32 224
  %166 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %167
  %conv27 = trunc i32 %shl to i8
  %ctrl = getelementptr i8, ptr %napi, i32 228
  %168 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ctrl, align 4
  %int_enable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %169, i32 0, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_enable, i8 %conv27) #9, !srcloc !187
  ret i32 %received.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @ican3_set_bus_state(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_get_berr_counter(ptr noundef %ndev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  %msg.i = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %0 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %1 = ptrtoint ptr %spec.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %spec.i, align 1
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %len.i, align 2
  %call.i = call fastcc i32 @ican3_send_msg(ptr noundef %add.ptr.i, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buserror_comp = getelementptr i8, ptr %ndev, i32 2928
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef %buserror_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev5 = getelementptr i8, ptr %ndev, i32 2616
  %3 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev5, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.ican3_get_berr_counter) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bec7 = getelementptr i8, ptr %ndev, i32 2984
  %rxerr = getelementptr i8, ptr %ndev, i32 2986
  %5 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rxerr, align 2
  %rxerr8 = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %7 = ptrtoint ptr %rxerr8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %rxerr8, align 2
  %8 = ptrtoint ptr %bec7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bec7, align 8
  %10 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %bec, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -110, %if.then4 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.ican3_dev, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %int_disable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %int_disable) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %num = getelementptr inbounds %struct.ican3_dev, ptr %dev_id, i32 0, i32 3
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %4
  %5 = trunc i32 %shl to i8
  %conv1 = and i8 %2, %5
  %conv2 = zext i8 %conv1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv2)
  %cmp = icmp eq i32 %shl, %conv2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpmctrl = getelementptr inbounds %struct.ican3_dev, ptr %dev_id, i32 0, i32 5
  %6 = ptrtoint ptr %dpmctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpmctrl, align 8
  %interrupt = getelementptr inbounds %struct.ican3_dpm_control, ptr %7, i32 0, i32 2
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %interrupt) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num, align 8
  %shl8 = shl nuw i32 1, %10
  %conv9 = trunc i32 %shl8 to i8
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl, align 4
  %int_disable11 = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable11, i8 %conv9) #9, !srcloc !187
  %napi = getelementptr inbounds %struct.ican3_dev, ptr %dev_id, i32 0, i32 2
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_startup_module(ptr noundef %mod) unnamed_addr #2 align 64 {
entry:
  %msg.i124 = alloca %struct.ican3_msg, align 2
  %msg.i112 = alloca %struct.ican3_msg, align 2
  %desc.i98 = alloca %struct.ican3_fast_desc, align 1
  %msg.i92 = alloca %struct.ican3_msg, align 2
  %msg.i89 = alloca %struct.ican3_msg, align 2
  %msg.i85 = alloca %struct.ican3_msg, align 2
  %desc.i = alloca %struct.ican3_new_desc, align 1
  %msg.i = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ican3_reset_module(ptr noundef %mod)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwinfo = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 13
  %dpm = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  tail call void @mmiocpy(ptr noundef %fwinfo, ptr noundef %add.ptr, i32 noundef 31) #9
  %call3 = tail call i32 @strncmp(ptr noundef %fwinfo, ptr noundef nonnull dereferenceable(11) @.str.69, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev6 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %4 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.70, ptr noundef %fwinfo) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call12 = tail call ptr @strstr(ptr noundef %fwinfo, ptr noundef nonnull @.str.71)
  %tobool13.not = icmp ne ptr %call12, null
  %spec.select = zext i1 %tobool13.not to i32
  %6 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %num = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %9
  %conv = trunc i32 %shl to i8
  %ctrl = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 4
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %int_enable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %11, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_enable, i8 %conv) #9, !srcloc !187
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %12 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %spec.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %spec.i, align 1
  %call.i = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ndev20 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %14 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev20, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %desc.i) #9
  %16 = getelementptr inbounds %struct.ican3_new_desc, ptr %desc.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %rx_num.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 18
  %17 = ptrtoint ptr %rx_num.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_num.i, align 4
  %rx_int.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 17
  %18 = ptrtoint ptr %rx_int.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rx_int.i, align 8
  %dpmctrl.i.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %19 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 5) #9, !srcloc !187
  %21 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpm, align 4
  %free_page.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end21
  %i.087.i = phi i32 [ 0, %if.end21 ], [ %inc14.i, %if.end.i.for.body.i_crit_edge ]
  %dst.086.i = phi ptr [ %22, %if.end21 ], [ %add.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %desc.i, align 1
  %24 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %free_page.i, align 4
  %conv7.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv7.i, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.087.i)
  %cmp8.i = icmp eq i32 %i.087.i, 15
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 97, ptr %desc.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  call void @mmiocpy(ptr noundef %dst.086.i, ptr noundef nonnull %desc.i, i32 noundef 2) #9
  %add.ptr.i = getelementptr i8, ptr %dst.086.i, i32 2
  %28 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %free_page.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %free_page.i, align 4
  %inc14.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 6) #9, !srcloc !187
  %32 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dpm, align 4
  %tx_num.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 19
  %34 = ptrtoint ptr %tx_num.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %tx_num.i, align 8
  br label %for.body19.i

for.body19.i:                                     ; preds = %if.end31.i.for.body19.i_crit_edge, %for.end.i
  %i.189.i = phi i32 [ 0, %for.end.i ], [ %inc36.i, %if.end31.i.for.body19.i_crit_edge ]
  %dst.188.i = phi ptr [ %33, %for.end.i ], [ %add.ptr32.i, %if.end31.i.for.body19.i_crit_edge ]
  %35 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -127, ptr %desc.i, align 1
  %36 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %free_page.i, align 4
  %conv22.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv22.i, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.189.i)
  %cmp24.i = icmp eq i32 %i.189.i, 15
  br i1 %cmp24.i, label %if.then26.i, label %for.body19.i.if.end31.i_crit_edge

for.body19.i.if.end31.i_crit_edge:                ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then26.i:                                      ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -63, ptr %desc.i, align 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %for.body19.i.if.end31.i_crit_edge
  call void @mmiocpy(ptr noundef %dst.188.i, ptr noundef nonnull %desc.i, i32 noundef 2) #9
  %add.ptr32.i = getelementptr i8, ptr %dst.188.i, i32 2
  %40 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %free_page.i, align 4
  %inc34.i = add i32 %41, 1
  store i32 %inc34.i, ptr %free_page.i, align 4
  %inc36.i = add nuw nsw i32 %i.189.i, 1
  %exitcond90.not.i = icmp eq i32 %inc36.i, 16
  br i1 %exitcond90.not.i, label %ican3_init_new_host_interface.exit, label %if.end31.i.for.body19.i_crit_edge

if.end31.i.for.body19.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19.i

ican3_init_new_host_interface.exit:               ; preds = %if.end31.i
  %42 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 7) #9, !srcloc !187
  %44 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dpm, align 4
  %46 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -63, ptr %desc.i, align 1
  %47 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %free_page.i, align 4
  %conv41.i = trunc i32 %48 to i8
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv41.i, ptr %16, align 1
  call void @mmiocpy(ptr noundef %45, ptr noundef nonnull %desc.i, i32 noundef 2) #9
  %50 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %free_page.i, align 4
  %inc44.i = add i32 %51, 1
  store i32 %inc44.i, ptr %free_page.i, align 4
  %52 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 8) #9, !srcloc !187
  %54 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dpm, align 4
  %56 = ptrtoint ptr %desc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -63, ptr %desc.i, align 1
  %57 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %free_page.i, align 4
  %conv48.i = trunc i32 %58 to i8
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv48.i, ptr %16, align 1
  call void @mmiocpy(ptr noundef %55, ptr noundef nonnull %desc.i, i32 noundef 2) #9
  %60 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %free_page.i, align 4
  %inc51.i = add i32 %61, 1
  store i32 %inc51.i, ptr %free_page.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %desc.i) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i85) #9
  %62 = call ptr @memset(ptr %msg.i85, i32 0, i32 256)
  %spec.i86 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i85, i32 0, i32 1
  %63 = ptrtoint ptr %spec.i86 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %spec.i86, align 1
  %iftype.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 14
  %64 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iftype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i = icmp eq i32 %65, 0
  br i1 %cmp.not.i, label %ican3_init_new_host_interface.exit.if.end.i88_crit_edge, label %do.end.i, !prof !193

ican3_init_new_host_interface.exit.if.end.i88_crit_edge: ; preds = %ican3_init_new_host_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i88

do.end.i:                                         ; preds = %ican3_init_new_host_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 688, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i88

if.end.i88:                                       ; preds = %do.end.i, %ican3_init_new_host_interface.exit.if.end.i88_crit_edge
  %call.i87 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool19.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool19.not.i, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i85) #9
  %ndev25 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %66 = ptrtoint ptr %ndev25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev25, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.73) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end.i88
  %68 = ptrtoint ptr %iftype.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %iftype.i, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i85) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i89) #9
  %69 = call ptr @memset(ptr %msg.i89, i32 0, i32 256)
  %spec.i90 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i89, i32 0, i32 1
  %70 = ptrtoint ptr %spec.i90 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 18, ptr %spec.i90, align 1
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i89, i32 0, i32 2
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 512, ptr %len.i, align 2
  %arrayidx2.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i89, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %arrayidx2.i, align 1
  %call.i91 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i89) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool28.not = icmp eq i32 %call.i91, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %ndev30 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %73 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev30, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i92) #9
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %6, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values)
  switch i32 %76, label %ican3_set_buserror.exit.thread [
    i32 0, label %if.then.i96
    i32 1, label %if.then5.i
  ]

ican3_set_buserror.exit.thread:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i92) #9
  br label %if.then34

if.then.i96:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %78 = call ptr @memset(ptr %msg.i92, i32 0, i32 256)
  %spec.i93 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 1
  %79 = ptrtoint ptr %spec.i93 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 71, ptr %spec.i93, align 1
  %len.i94 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 2
  %80 = ptrtoint ptr %len.i94 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 512, ptr %len.i94, align 2
  %arrayidx2.i95 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 3, i32 1
  br label %ican3_set_buserror.exit

if.then5.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %81 = call ptr @memset(ptr %msg.i92, i32 0, i32 256)
  %spec6.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 1
  %82 = ptrtoint ptr %spec6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -76, ptr %spec6.i, align 1
  %len7.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 2
  %83 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1024, ptr %len7.i, align 2
  %data8.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 3
  %84 = ptrtoint ptr %data8.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %data8.i, align 2
  %arrayidx15.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i92, i32 0, i32 3, i32 3
  br label %ican3_set_buserror.exit

ican3_set_buserror.exit:                          ; preds = %if.then5.i, %if.then.i96
  %arrayidx15.sink.i = phi ptr [ %arrayidx15.i, %if.then5.i ], [ %arrayidx2.i95, %if.then.i96 ]
  %85 = ptrtoint ptr %arrayidx15.sink.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %arrayidx15.sink.i, align 1
  %call.i97 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i92) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool33.not = icmp eq i32 %call.i97, 0
  br i1 %tobool33.not, label %if.end36, label %ican3_set_buserror.exit.if.then34_crit_edge

ican3_set_buserror.exit.if.then34_crit_edge:      ; preds = %ican3_set_buserror.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %ican3_set_buserror.exit.if.then34_crit_edge, %ican3_set_buserror.exit.thread
  %retval.0.i135 = phi i32 [ -524, %ican3_set_buserror.exit.thread ], [ %call.i97, %ican3_set_buserror.exit.if.then34_crit_edge ]
  %ndev35 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %86 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev35, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end36:                                         ; preds = %ican3_set_buserror.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i98) #9
  %88 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc.i98, i32 0, i32 1
  %call2.i100 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %89 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %free_page.i, align 4
  %fastrx_start.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 20
  %91 = ptrtoint ptr %fastrx_start.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %fastrx_start.i, align 4
  %fastrx_num.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 21
  %92 = ptrtoint ptr %fastrx_num.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %fastrx_num.i, align 8
  %93 = call ptr @memset(ptr %desc.i98, i32 0, i32 16)
  %94 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %88, align 1
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.backedge, %if.end36
  %i.089.i = phi i32 [ 0, %if.end36 ], [ %i.089.i.be, %for.body.i104.backedge ]
  %addr.088.i = phi i32 [ 0, %if.end36 ], [ %addr.088.i.be, %for.body.i104.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %i.089.i)
  %cmp7.i = icmp eq i32 %i.089.i, 1023
  br i1 %cmp7.i, label %if.then.i105, label %for.body.i104.if.end.i106_crit_edge

for.body.i104.if.end.i106_crit_edge:              ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i106

if.then.i105:                                     ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %desc.i98 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %desc.i98, align 1
  %97 = or i8 %96, 64
  store i8 %97, ptr %desc.i98, align 1
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.then.i105, %for.body.i104.if.end.i106_crit_edge
  %98 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %free_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %99)
  %cmp.i.i = icmp ugt i32 %99, 255
  br i1 %cmp.i.i, label %do.body2.i.i, label %ican3_set_page.exit.i, !prof !189

do.body2.i.i:                                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_set_page.exit.i:                            ; preds = %if.end.i106
  %conv.i.i = trunc i32 %99 to i8
  %100 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %101, i8 %conv.i.i) #9, !srcloc !187
  %102 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dpm, align 4
  %add.ptr.i107 = getelementptr i8, ptr %103, i32 %addr.088.i
  call void @mmiocpy(ptr noundef %add.ptr.i107, ptr noundef nonnull %desc.i98, i32 noundef 16) #9
  %add.i = add i32 %addr.088.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i)
  %cmp13.i = icmp ugt i32 %add.i, 255
  br i1 %cmp13.i, label %for.inc.thread.i, label %for.inc.i

for.inc.i:                                        ; preds = %ican3_set_page.exit.i
  %inc18.i = add nuw nsw i32 %i.089.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc18.i)
  %exitcond.not.i108 = icmp eq i32 %inc18.i, 1024
  br i1 %exitcond.not.i108, label %for.end.i110, label %for.inc.i.for.body.i104.backedge_crit_edge

for.inc.i.for.body.i104.backedge_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i104.backedge

for.inc.thread.i:                                 ; preds = %ican3_set_page.exit.i
  %104 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %free_page.i, align 4
  %inc.i109 = add i32 %105, 1
  store i32 %inc.i109, ptr %free_page.i, align 4
  %inc1894.i = add nuw nsw i32 %i.089.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc1894.i)
  %exitcond.not95.i = icmp eq i32 %inc1894.i, 1024
  br i1 %exitcond.not95.i, label %for.inc.thread.i.if.end24.i_crit_edge, label %for.inc.thread.i.for.body.i104.backedge_crit_edge

for.inc.thread.i.for.body.i104.backedge_crit_edge: ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i104.backedge

for.inc.thread.i.if.end24.i_crit_edge:            ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

for.body.i104.backedge:                           ; preds = %for.inc.thread.i.for.body.i104.backedge_crit_edge, %for.inc.i.for.body.i104.backedge_crit_edge
  %i.089.i.be = phi i32 [ %inc18.i, %for.inc.i.for.body.i104.backedge_crit_edge ], [ %inc1894.i, %for.inc.thread.i.for.body.i104.backedge_crit_edge ]
  %addr.088.i.be = phi i32 [ %add.i, %for.inc.i.for.body.i104.backedge_crit_edge ], [ 0, %for.inc.thread.i.for.body.i104.backedge_crit_edge ]
  br label %for.body.i104

for.end.i110:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp19.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp19.not.i, label %for.end.i110.if.end24.i_crit_edge, label %if.then21.i

for.end.i110.if.end24.i_crit_edge:                ; preds = %for.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then21.i:                                      ; preds = %for.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %free_page.i, align 4
  %inc23.i = add i32 %107, 1
  store i32 %inc23.i, ptr %free_page.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %for.end.i110.if.end24.i_crit_edge, %for.inc.thread.i.if.end24.i_crit_edge
  %108 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %free_page.i, align 4
  %fasttx_start.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 22
  %110 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %fasttx_start.i, align 4
  %fasttx_num.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 23
  %111 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %fasttx_num.i, align 8
  %112 = getelementptr inbounds i8, ptr %desc.i98, i32 2
  %113 = call ptr @memset(ptr %112, i32 0, i32 14)
  %114 = ptrtoint ptr %desc.i98 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -128, ptr %desc.i98, align 1
  %115 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %88, align 1
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc50.i.for.body31.i_crit_edge, %if.end24.i
  %i.191.i = phi i32 [ 0, %if.end24.i ], [ %inc51.i111, %for.inc50.i.for.body31.i_crit_edge ]
  %addr.290.i = phi i32 [ 0, %if.end24.i ], [ %addr.3.i, %for.inc50.i.for.body31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %i.191.i)
  %cmp32.i = icmp eq i32 %i.191.i, 511
  br i1 %cmp32.i, label %if.then34.i, label %for.body31.i.if.end39.i_crit_edge

for.body31.i.if.end39.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then34.i:                                      ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %desc.i98 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %desc.i98, align 1
  %118 = or i8 %117, 64
  store i8 %118, ptr %desc.i98, align 1
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %for.body31.i.if.end39.i_crit_edge
  %119 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %free_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %120)
  %cmp.i82.i = icmp ugt i32 %120, 255
  br i1 %cmp.i82.i, label %do.body2.i83.i, label %ican3_set_page.exit86.i, !prof !189

do.body2.i83.i:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_set_page.exit86.i:                          ; preds = %if.end39.i
  %conv.i84.i = trunc i32 %120 to i8
  %121 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %122, i8 %conv.i84.i) #9, !srcloc !187
  %123 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dpm, align 4
  %add.ptr42.i = getelementptr i8, ptr %124, i32 %addr.290.i
  call void @mmiocpy(ptr noundef %add.ptr42.i, ptr noundef nonnull %desc.i98, i32 noundef 16) #9
  %add43.i = add i32 %addr.290.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add43.i)
  %cmp44.i = icmp ugt i32 %add43.i, 255
  br i1 %cmp44.i, label %if.then46.i, label %ican3_set_page.exit86.i.for.inc50.i_crit_edge

ican3_set_page.exit86.i.for.inc50.i_crit_edge:    ; preds = %ican3_set_page.exit86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50.i

if.then46.i:                                      ; preds = %ican3_set_page.exit86.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %free_page.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %free_page.i, align 4
  %inc48.i = add i32 %126, 1
  store i32 %inc48.i, ptr %free_page.i, align 4
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %if.then46.i, %ican3_set_page.exit86.i.for.inc50.i_crit_edge
  %addr.3.i = phi i32 [ 0, %if.then46.i ], [ %add43.i, %ican3_set_page.exit86.i.for.inc50.i_crit_edge ]
  %inc51.i111 = add nuw nsw i32 %i.191.i, 1
  %exitcond92.not.i = icmp eq i32 %inc51.i111, 512
  br i1 %exitcond92.not.i, label %ican3_init_fast_host_interface.exit, label %for.inc50.i.for.body31.i_crit_edge

for.inc50.i.for.body31.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

ican3_init_fast_host_interface.exit:              ; preds = %for.inc50.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i100) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i98) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i112) #9
  %127 = call ptr @memset(ptr %msg.i112, i32 0, i32 256)
  %spec.i113 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 1
  %128 = ptrtoint ptr %spec.i113 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 17, ptr %spec.i113, align 1
  %len.i114 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 2
  %129 = ptrtoint ptr %len.i114 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 2048, ptr %len.i114, align 2
  %130 = ptrtoint ptr %fastrx_start.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fastrx_start.i, align 4
  %mul.i = shl i32 %131, 8
  %conv2.i = trunc i32 %131 to i8
  %arrayidx4.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 1
  %132 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %shr5.i = lshr i32 %mul.i, 16
  %conv7.i116 = trunc i32 %shr5.i to i8
  %arrayidx9.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv7.i116, ptr %arrayidx9.i, align 2
  %shr10.i = lshr i32 %mul.i, 24
  %conv12.i = trunc i32 %shr10.i to i8
  %arrayidx14.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 3
  %134 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv12.i, ptr %arrayidx14.i, align 1
  %135 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fasttx_start.i, align 4
  %mul15.i = shl i32 %136, 8
  %conv22.i118 = trunc i32 %136 to i8
  %arrayidx24.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 5
  %137 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv22.i118, ptr %arrayidx24.i, align 1
  %shr25.i = lshr i32 %mul15.i, 16
  %conv27.i = trunc i32 %shr25.i to i8
  %arrayidx29.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 6
  %138 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv27.i, ptr %arrayidx29.i, align 2
  %shr30.i = lshr i32 %mul15.i, 24
  %conv32.i = trunc i32 %shr30.i to i8
  %arrayidx34.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i112, i32 0, i32 3, i32 7
  %139 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv32.i, ptr %arrayidx34.i, align 1
  %140 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %iftype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.not.i120 = icmp eq i32 %141, 1
  br i1 %cmp.not.i120, label %ican3_init_fast_host_interface.exit.ican3_msg_fasthostif.exit_crit_edge, label %do.end.i121, !prof !193

ican3_init_fast_host_interface.exit.ican3_msg_fasthostif.exit_crit_edge: ; preds = %ican3_init_fast_host_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ican3_msg_fasthostif.exit

do.end.i121:                                      ; preds = %ican3_init_fast_host_interface.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 723, i32 noundef 9, ptr noundef null) #9
  br label %ican3_msg_fasthostif.exit

ican3_msg_fasthostif.exit:                        ; preds = %do.end.i121, %ican3_init_fast_host_interface.exit.ican3_msg_fasthostif.exit_crit_edge
  %call.i122 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i112) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool38.not = icmp eq i32 %call.i122, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %ican3_msg_fasthostif.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ndev40 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %142 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ndev40, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %143, ptr noundef nonnull @.str.76) #12
  br label %cleanup

if.end41:                                         ; preds = %ican3_msg_fasthostif.exit
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i124) #9
  %144 = call ptr @memset(ptr %msg.i124, i32 0, i32 256)
  %spec.i125 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 1
  %145 = ptrtoint ptr %spec.i125 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 16, ptr %spec.i125, align 1
  %len.i126 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 2
  %146 = ptrtoint ptr %len.i126 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1280, ptr %len.i126, align 2
  %arrayidx4.i128 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 2
  %147 = ptrtoint ptr %arrayidx4.i128 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -1, ptr %arrayidx4.i128, align 2
  %arrayidx6.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 3
  %148 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 7, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 4
  %149 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %arrayidx8.i, align 2
  %call.i129 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool9.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool9.not.i, label %ican3_set_id_filter.exit, label %ican3_set_id_filter.exit.thread

ican3_set_id_filter.exit.thread:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i124) #9
  br label %if.then44

ican3_set_id_filter.exit:                         ; preds = %if.end41
  %150 = call ptr @memset(ptr %msg.i124, i32 0, i32 256)
  %151 = ptrtoint ptr %spec.i125 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 16, ptr %spec.i125, align 1
  %152 = ptrtoint ptr %len.i126 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 3328, ptr %len.i126, align 2
  %153 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 32, ptr %arrayidx8.i, align 2
  %arrayidx23.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 5
  %154 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -1, ptr %arrayidx23.i, align 1
  %arrayidx25.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 6
  %155 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -1, ptr %arrayidx25.i, align 2
  %arrayidx27.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 7
  %156 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -1, ptr %arrayidx27.i, align 1
  %arrayidx29.i130 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 8
  %157 = ptrtoint ptr %arrayidx29.i130 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 63, ptr %arrayidx29.i130, align 2
  %arrayidx35.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i124, i32 0, i32 3, i32 9
  %158 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %arrayidx35.i, align 1
  %call36.i = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i124) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool43.not = icmp eq i32 %call36.i, 0
  br i1 %tobool43.not, label %ican3_set_id_filter.exit.cleanup_crit_edge, label %ican3_set_id_filter.exit.if.then44_crit_edge

ican3_set_id_filter.exit.if.then44_crit_edge:     ; preds = %ican3_set_id_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

ican3_set_id_filter.exit.cleanup_crit_edge:       ; preds = %ican3_set_id_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %ican3_set_id_filter.exit.if.then44_crit_edge, %ican3_set_id_filter.exit.thread
  %retval.0.i132138 = phi i32 [ %call.i129, %ican3_set_id_filter.exit.thread ], [ %call36.i, %ican3_set_id_filter.exit.if.then44_crit_edge ]
  %ndev45 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %159 = ptrtoint ptr %ndev45 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ndev45, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %160, ptr noundef nonnull @.str.77) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %ican3_set_id_filter.exit.cleanup_crit_edge, %if.then39, %if.then34, %if.then29, %if.then24, %if.then19, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %if.then5 ], [ %call.i, %if.then19 ], [ %call.i87, %if.then24 ], [ %call.i91, %if.then29 ], [ %retval.0.i135, %if.then34 ], [ %call.i122, %if.then39 ], [ %retval.0.i132138, %if.then44 ], [ 0, %ican3_set_id_filter.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ican3_handle_message(ptr noundef %mod, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_handle_message.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_handle_message, %do.end6)) #9
          to label %if.then [label %do.end6], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %num = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %spec = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spec, align 1
  %conv = zext i8 %5 to i32
  %len = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv5 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_handle_message.__UNIQUE_ID_ddebug470, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef %conv, i32 noundef %conv5) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %spec7 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %spec7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %spec7, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %10, label %sw.default [
    i8 4, label %sw.bb
    i8 5, label %do.end6.sw.bb9_crit_edge
    i8 21, label %do.end6.sw.bb9_crit_edge46
    i8 55, label %sw.bb10
    i8 10, label %sw.bb12
    i8 -80, label %sw.bb13
  ]

do.end6.sw.bb9_crit_edge46:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

do.end6.sw.bb9_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb:                                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_handle_idvers.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_handle_message, %sw.epilog)) #9
          to label %if.then.i [label %sw.epilog], !srcloc !185

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ndev.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %12 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev.i, align 8
  %data.i = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_handle_idvers.__UNIQUE_ID_ddebug466, ptr noundef %13, ptr noundef nonnull @.str.38, ptr noundef %data.i) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end6.sw.bb9_crit_edge, %do.end6.sw.bb9_crit_edge46
  %ndev.i29 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %14 = ptrtoint ptr %ndev.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i29, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %16 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp.i = icmp eq i8 %10, 5
  br i1 %cmp.i, label %if.then.i31, label %if.end.i

if.then.i31:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %data.i30 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.i30, align 2
  %conv4.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.39, i32 noundef %conv4.i) #12
  br label %ican3_handle_msglost.exit

if.end.i:                                         ; preds = %sw.bb9
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %15, ptr noundef nonnull %cf.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.ican3_handle_msglost.exit_crit_edge, label %if.then5.i

if.end.i.ican3_handle_msglost.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ican3_handle_msglost.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cf.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %or.i = or i32 %22, 4
  store i32 %or.i, ptr %20, align 8
  %23 = load ptr, ptr %cf.i, align 4
  %arrayidx7.i = getelementptr %struct.can_frame, ptr %23, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx7.i, align 1
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 11
  %25 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %rx_over_errors.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 4
  %27 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_errors.i, align 4
  %inc8.i = add i32 %28, 1
  store i32 %inc8.i, ptr %rx_errors.i, align 4
  %call9.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  br label %ican3_handle_msglost.exit

ican3_handle_msglost.exit:                        ; preds = %if.then5.i, %if.end.i.ican3_handle_msglost.exit_crit_edge, %if.then.i31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ican3_handle_cevtind(ptr noundef %mod, ptr noundef %msg)
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end6
  %data.i32 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %data.i32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i32, align 2
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %30, label %sw.default.i [
    i8 0, label %sw.bb12.sw.bb.i_crit_edge
    i8 4, label %sw.bb12.sw.bb.i_crit_edge47
    i8 1, label %sw.bb8.i
  ]

sw.bb12.sw.bb.i_crit_edge47:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb12.sw.bb.i_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.bb12.sw.bb.i_crit_edge, %sw.bb12.sw.bb.i_crit_edge47
  %arrayidx2.i = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %33 to i16
  %bec.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 11
  %rxerr.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv3.i, ptr %rxerr.i, align 2
  %arrayidx5.i = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx5.i, align 2
  %conv6.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %bec.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv6.i, ptr %bec.i, align 8
  %buserror_comp.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 10
  tail call void @complete(ptr noundef %buserror_comp.i) #9
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10.i = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx10.i, align 2
  %40 = and i8 %39, 1
  %termination_enabled.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 9
  %41 = ptrtoint ptr %termination_enabled.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %termination_enabled.i, align 4
  %termination_comp.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 8
  tail call void @complete(ptr noundef %termination_comp.i) #9
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %ndev.i33 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %42 = ptrtoint ptr %ndev.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev.i33, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.50) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end6
  %data.i34 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  %44 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i34, align 2
  %conv.i = zext i8 %45 to i32
  %arrayidx2.i35 = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx2.i35 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx2.i35, align 1
  %conv3.i36 = zext i8 %47 to i32
  %mul.i = shl nuw nsw i32 %conv3.i36, 8
  %add.i = or i32 %mul.i, %conv.i
  %trunc.i = trunc i32 %add.i to i16
  %48 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %trunc.i, label %if.else23.i [
    i16 9, label %if.then.i37
    i16 8, label %sw.bb13.sw.epilog_crit_edge
  ]

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i37:                                      ; preds = %sw.bb13
  %arrayidx8.i = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx8.i, align 2
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %50, label %sw.default.i40 [
    i8 3, label %if.then.i37.sw.bb.i38_crit_edge
    i8 2, label %if.then.i37.sw.bb.i38_crit_edge48
    i8 12, label %if.then.i37.sw.epilog_crit_edge
    i8 8, label %if.then.i37.sw.epilog_crit_edge49
  ]

if.then.i37.sw.epilog_crit_edge49:                ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i37.sw.epilog_crit_edge:                  ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i37.sw.bb.i38_crit_edge48:                ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i38

if.then.i37.sw.bb.i38_crit_edge:                  ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i38

sw.bb.i38:                                        ; preds = %if.then.i37.sw.bb.i38_crit_edge, %if.then.i37.sw.bb.i38_crit_edge48
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len.i, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %add.i.i = add i16 %54, -3
  %55 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #9
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %len.i, align 2
  %add.ptr.i = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 3
  %conv14.i = zext i16 %add.i.i to i32
  %57 = call ptr @memmove(ptr %data.i34, ptr %add.ptr.i, i32 %conv14.i)
  tail call fastcc void @ican3_handle_cevtind(ptr noundef %mod, ptr noundef %msg) #9
  br label %sw.epilog

sw.default.i40:                                   ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i = zext i8 %50 to i32
  %ndev.i39 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %58 = ptrtoint ptr %ndev.i39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev.i39, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.51, i32 noundef %conv9.i) #12
  br label %sw.epilog

if.else23.i:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %ndev24.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %60 = ptrtoint ptr %ndev24.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev24.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.52, i32 noundef %add.i) #12
  br label %sw.epilog

sw.default:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ndev.i41 = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %62 = ptrtoint ptr %ndev.i41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ndev.i41, align 8
  %conv.i43 = zext i8 %10 to i32
  %len.i44 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %64 = ptrtoint ptr %len.i44 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len.i44, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #9
  %conv1.i = zext i16 %66 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.53, i32 noundef %conv.i43, i32 noundef %conv1.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else23.i, %sw.default.i40, %sw.bb.i38, %if.then.i37.sw.epilog_crit_edge, %if.then.i37.sw.epilog_crit_edge49, %sw.bb13.sw.epilog_crit_edge, %sw.default.i, %sw.bb8.i, %sw.bb.i, %sw.bb10, %ican3_handle_msglost.exit, %if.then.i, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_old_recv_msg(ptr nocapture noundef readonly %mod, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpmctrl.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 0) #9, !srcloc !187
  %dpm = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %5 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpm, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 1
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %xor56 = xor i8 %7, %4
  %conv6 = zext i8 %xor56 to i32
  %and = and i32 %conv6, 3
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and, label %if.else [
    i32 0, label %do.body8
    i32 3, label %entry.if.end29_crit_edge
  ]

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_old_recv_msg.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_old_recv_msg, %cleanup)) #9
          to label %if.then13 [label %cleanup], !srcloc !185

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_old_recv_msg.__UNIQUE_ID_ddebug459, ptr noundef %10, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29:                                         ; preds = %if.else, %entry.if.end29_crit_edge
  %.sink = phi i32 [ 1, %if.else ], [ 4, %entry.if.end29_crit_edge ]
  %and26 = and i32 %.sink, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %conv.i = select i1 %tobool27.not, i8 2, i8 1
  %11 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %conv.i) #9, !srcloc !187
  %13 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dpm, align 4
  tail call void @mmiocpy(ptr noundef %msg, ptr noundef %14, i32 noundef 256) #9
  %15 = select i1 %tobool27.not, i8 2, i8 1
  %conv36 = xor i8 %7, %15
  %16 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 0) #9, !srcloc !187
  %18 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dpm, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %conv36) #9, !srcloc !187
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then13, %do.body8
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %if.then13 ], [ -12, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_new_recv_msg(ptr nocapture noundef %mod, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.ican3_new_desc, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %desc) #9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %desc, align 1, !annotation !188
  %1 = getelementptr inbounds %struct.ican3_new_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !188
  %dpm = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %3 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpm, align 4
  %rx_num = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 18
  %5 = ptrtoint ptr %rx_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_num, align 4
  %mul = shl i32 %6, 1
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  %dpmctrl.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %7 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 5) #9, !srcloc !187
  call void @mmiocpy(ptr noundef nonnull %desc, ptr noundef %add.ptr, i32 noundef 2) #9
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not = icmp sgt i8 %10, -1
  br i1 %tobool.not, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_new_recv_msg.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_new_recv_msg, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !185

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_new_recv_msg.__UNIQUE_ID_ddebug461, ptr noundef %12, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dpmctrl.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #9, !srcloc !187
  %17 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpm, align 4
  call void @mmiocpy(ptr noundef %msg, ptr noundef %18, i32 noundef 256) #9
  %19 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpmctrl.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 5) #9, !srcloc !187
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %desc, align 1
  %23 = xor i8 %22, -128
  store i8 %23, ptr %desc, align 1
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %desc, i32 noundef 2) #9
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %desc, align 1
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  br i1 %tobool18.not, label %cond.false, label %if.end9.cond.end_crit_edge

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %rx_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_num, align 4
  %add = add i32 %28, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end9.cond.end_crit_edge ]
  %29 = ptrtoint ptr %rx_num to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %rx_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then6, %do.body1
  %retval.0 = phi i32 [ 0, %cond.end ], [ -12, %if.then6 ], [ -12, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %desc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ican3_handle_cevtind(ptr noundef %mod, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.ican3_msg, align 2
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %state2 = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 21
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #9
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !188
  %data = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  %arrayidx = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not = icmp eq i8 %6, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.40) #12
  br label %cleanup238

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %9)
  %cmp6 = icmp ult i16 %9, 6
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.41) #12
  br label %cleanup238

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 2
  %arrayidx14 = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 2
  %arrayidx16 = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 2
  %arrayidx20 = getelementptr %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cmp22 = icmp eq i8 %11, 16
  br i1 %cmp22, label %if.then24, label %if.end10.if.end50_crit_edge

if.end10.if.end50_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then24:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_handle_cevtind, %do.end33)) #9
          to label %if.then29 [label %do.end33], !srcloc !185

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_handle_cevtind.__UNIQUE_ID_ddebug467, ptr noundef %21, ptr noundef nonnull @.str.43) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %if.then24
  %22 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %if.then36, label %if.else

if.then36:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %echoq = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 15
  %call37 = tail call ptr @skb_dequeue(ptr noundef %echoq) #9
  tail call void @kfree_skb_reason(ptr noundef %call37, i32 noundef 0) #9
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  br label %if.end39

if.else:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %rx_errors.sink15 = phi ptr [ %rx_errors, %if.else ], [ %tx_errors, %if.then36 ]
  %23 = ptrtoint ptr %rx_errors.sink15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors.sink15, align 4
  %inc38 = add i32 %24, 1
  store i32 %inc38, ptr %rx_errors.sink15, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %fwtype.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 12
  %25 = ptrtoint ptr %fwtype.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fwtype.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %26, label %ican3_set_buserror.exit.thread [
    i32 0, label %if.then.i
    i32 1, label %if.then5.i
  ]

ican3_set_buserror.exit.thread:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  br label %if.then42

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %spec.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 71, ptr %spec.i, align 1
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 512, ptr %len.i, align 2
  %arrayidx2.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3, i32 1
  br label %ican3_set_buserror.exit

if.then5.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %31 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec6.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %32 = ptrtoint ptr %spec6.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -76, ptr %spec6.i, align 1
  %len7.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %33 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1024, ptr %len7.i, align 2
  %data8.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3
  %34 = ptrtoint ptr %data8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %data8.i, align 2
  %arrayidx15.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3, i32 3
  br label %ican3_set_buserror.exit

ican3_set_buserror.exit:                          ; preds = %if.then5.i, %if.then.i
  %arrayidx15.sink.i = phi ptr [ %arrayidx15.i, %if.then5.i ], [ %arrayidx2.i, %if.then.i ]
  %35 = ptrtoint ptr %arrayidx15.sink.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx15.sink.i, align 1
  %call.i = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end44, label %ican3_set_buserror.exit.if.then42_crit_edge

ican3_set_buserror.exit.if.then42_crit_edge:      ; preds = %ican3_set_buserror.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %ican3_set_buserror.exit.if.then42_crit_edge, %ican3_set_buserror.exit.thread
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.44) #12
  br label %cleanup238

if.end44:                                         ; preds = %ican3_set_buserror.exit
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 22
  %38 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrlmode, align 4
  %and46 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not.not, label %if.end44.cleanup238_crit_edge, label %if.end44.if.end50_crit_edge

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end44.cleanup238_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup238

if.end50:                                         ; preds = %if.end44.if.end50_crit_edge, %if.end10.if.end50_crit_edge
  %call51 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf) #9
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.end50.cleanup238_crit_edge, label %if.end55

if.end50.cleanup238_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup238

if.end55:                                         ; preds = %if.end50
  %40 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %11, label %if.end55.if.end143_crit_edge [
    i8 2, label %if.end55.do.body64_crit_edge
    i8 4, label %if.end55.do.body64_crit_edge16
    i8 1, label %do.body96
  ]

if.end55.do.body64_crit_edge16:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body64

if.end55.do.body64_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body64

if.end55.if.end143_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.body64:                                        ; preds = %if.end55.do.body64_crit_edge, %if.end55.do.body64_crit_edge16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_handle_cevtind, %do.end84)) #9
          to label %if.then78 [label %do.end84], !srcloc !185

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_handle_cevtind.__UNIQUE_ID_ddebug468, ptr noundef %42, ptr noundef nonnull @.str.45) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %do.body64
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %or = or i32 %46, 4
  store i32 %or, ptr %44, align 8
  %47 = load ptr, ptr %cf, align 4
  %arrayidx86 = getelementptr %struct.can_frame, ptr %47, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx86, align 1
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %49 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_over_errors, align 4
  %inc87 = add i32 %50, 1
  store i32 %inc87, ptr %rx_over_errors, align 4
  %rx_errors88 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %51 = ptrtoint ptr %rx_errors88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_errors88, align 4
  %inc89 = add i32 %52, 1
  store i32 %inc89, ptr %rx_errors88, align 4
  br label %if.end143

do.body96:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_handle_cevtind, %do.end116)) #9
          to label %if.then110 [label %do.end116], !srcloc !185

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_handle_cevtind.__UNIQUE_ID_ddebug469, ptr noundef %54, ptr noundef nonnull @.str.46) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then110, %do.body96
  %conv117 = zext i8 %15 to i32
  %and118 = and i32 %conv117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else125, label %if.then120

if.then120:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %or122 = or i32 %58, 64
  store i32 %or122, ptr %56, align 8
  %bus_off = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_off, align 4
  %inc124 = add i32 %60, 1
  store i32 %inc124, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %1) #9
  br label %if.end143

if.else125:                                       ; preds = %do.end116
  %and127 = and i32 %conv117, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.else125.if.end143_crit_edge, label %if.then129

if.else125.if.end143_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then129:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp131 = icmp slt i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp135 = icmp slt i8 %19, 0
  %or.cond = select i1 %cmp131, i1 true, i1 %cmp135
  %spec.select = select i1 %or.cond, i32 2, i32 1
  br label %if.end143

if.end143:                                        ; preds = %if.then129, %if.else125.if.end143_crit_edge, %if.then120, %do.end84, %if.end55.if.end143_crit_edge
  %state.0 = phi i32 [ 3, %if.then120 ], [ %3, %do.end84 ], [ %3, %if.end55.if.end143_crit_edge ], [ 0, %if.else125.if.end143_crit_edge ], [ %spec.select, %if.then129 ]
  br i1 %cmp22, label %if.then147, label %if.end143.if.end191_crit_edge

if.end143.if.end191_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then147:                                       ; preds = %if.end143
  %can_stats149 = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 1
  %61 = ptrtoint ptr %can_stats149 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %can_stats149, align 4
  %inc150 = add i32 %62, 1
  store i32 %inc150, ptr %can_stats149, align 4
  %63 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cf, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %or152 = or i32 %66, 136
  store i32 %or152, ptr %64, align 8
  %and154 = and i8 %13, -64
  %67 = zext i8 %and154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %and154, label %sw.default [
    i8 0, label %sw.bb
    i8 64, label %sw.bb160
    i8 -128, label %sw.bb166
  ]

sw.bb:                                            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cf, align 4
  %arrayidx156 = getelementptr %struct.can_frame, ptr %69, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx156, align 2
  %72 = or i8 %71, 1
  store i8 %72, ptr %arrayidx156, align 2
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cf, align 4
  %arrayidx162 = getelementptr %struct.can_frame, ptr %74, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx162, align 2
  %77 = or i8 %76, 2
  store i8 %77, ptr %arrayidx162, align 2
  br label %sw.epilog

sw.bb166:                                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cf, align 4
  %arrayidx168 = getelementptr %struct.can_frame, ptr %79, i32 0, i32 5, i32 2
  %80 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx168, align 2
  %82 = or i8 %81, 4
  store i8 %82, ptr %arrayidx168, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %and173 = and i8 %13, 31
  %83 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cf, align 4
  %arrayidx176 = getelementptr %struct.can_frame, ptr %84, i32 0, i32 5, i32 3
  %85 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %and173, ptr %arrayidx176, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb166, %sw.bb160, %sw.bb
  %86 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool179.not = icmp eq i8 %86, 0
  br i1 %tobool179.not, label %if.then180, label %sw.epilog.if.end186_crit_edge

sw.epilog.if.end186_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.then180:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cf, align 4
  %arrayidx182 = getelementptr %struct.can_frame, ptr %88, i32 0, i32 5, i32 2
  %89 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx182, align 2
  %91 = or i8 %90, -128
  store i8 %91, ptr %arrayidx182, align 2
  br label %if.end186

if.end186:                                        ; preds = %if.then180, %sw.epilog.if.end186_crit_edge
  %92 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cf, align 4
  %arrayidx188 = getelementptr %struct.can_frame, ptr %93, i32 0, i32 5, i32 6
  %94 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %19, ptr %arrayidx188, align 2
  %95 = load ptr, ptr %cf, align 4
  %arrayidx190 = getelementptr %struct.can_frame, ptr %95, i32 0, i32 5, i32 7
  %96 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %17, ptr %arrayidx190, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.end186, %if.end143.if.end191_crit_edge
  %97 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %state2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %98)
  %cmp194.not = icmp ne i32 %state.0, %98
  %state.0.off = add i32 %state.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.0.off)
  %switch = icmp ult i32 %state.0.off, 2
  %or.cond14 = and i1 %switch, %cmp194.not
  br i1 %or.cond14, label %if.then201, label %if.end191.if.end234_crit_edge

if.end191.if.end234_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

if.then201:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state.0)
  %cmp196 = icmp eq i32 %state.0, 1
  %99 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cf, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %or203 = or i32 %102, 4
  store i32 %or203, ptr %100, align 8
  br i1 %cmp196, label %if.then206, label %if.else217

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  %error_warning = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %error_warning, align 4
  %inc209 = add i32 %104, 1
  store i32 %inc209, ptr %error_warning, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp212 = icmp ugt i8 %19, %17
  %conv214 = select i1 %cmp212, i8 8, i8 4
  br label %if.end229

if.else217:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  %error_passive = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 1, i32 2
  %105 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %error_passive, align 4
  %inc220 = add i32 %106, 1
  store i32 %inc220, ptr %error_passive, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp223 = icmp ugt i8 %19, %17
  %conv226 = select i1 %cmp223, i8 32, i8 16
  br label %if.end229

if.end229:                                        ; preds = %if.else217, %if.then206
  %conv226.sink = phi i8 [ %conv226, %if.else217 ], [ %conv214, %if.then206 ]
  %107 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %107)
  %.sink = load ptr, ptr %cf, align 4
  %arrayidx228 = getelementptr %struct.can_frame, ptr %.sink, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv226.sink, ptr %arrayidx228, align 1
  %109 = load ptr, ptr %cf, align 4
  %arrayidx231 = getelementptr %struct.can_frame, ptr %109, i32 0, i32 5, i32 6
  %110 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %19, ptr %arrayidx231, align 2
  %111 = load ptr, ptr %cf, align 4
  %arrayidx233 = getelementptr %struct.can_frame, ptr %111, i32 0, i32 5, i32 7
  %112 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %17, ptr %arrayidx233, align 1
  br label %if.end234

if.end234:                                        ; preds = %if.end229, %if.end191.if.end234_crit_edge
  %113 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %state.0, ptr %state2, align 8
  %call237 = call i32 @netif_rx(ptr noundef nonnull %call51) #9
  br label %cleanup238

cleanup238:                                       ; preds = %if.end234, %if.end50.cleanup238_crit_edge, %if.end44.cleanup238_crit_edge, %if.then42, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %iftype = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 14
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dpmctrl.i.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %2 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpmctrl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 0) #9, !srcloc !187
  %dpm.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %4 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpm.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %7 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dpm.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %xor42.i = xor i8 %9, %6
  %conv6.i = zext i8 %xor42.i to i32
  %and.i = and i32 %conv6.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 48
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ndev.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %10 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.47) #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i = and i32 %conv6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %cond.i = select i1 %tobool.not.i, i8 16, i8 32
  %conv.i.i = select i1 %tobool.not.i, i8 3, i8 4
  %12 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dpmctrl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %conv.i.i) #9, !srcloc !187
  %14 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dpm.i, align 4
  tail call void @mmiocpy(ptr noundef %15, ptr noundef %msg, i32 noundef 256) #9
  %xor15.i = xor i8 %cond.i, %9
  %16 = or i8 %xor15.i, 64
  %spec.select.i = select i1 %tobool.not.i, i8 %xor15.i, i8 %16
  %17 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpmctrl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 0) #9, !srcloc !187
  %19 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpm.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %20, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %spec.select.i) #9, !srcloc !187
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @ican3_new_send_msg(ptr noundef %mod, ptr noundef %msg)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.i
  %ret.0 = phi i32 [ %call8, %if.else ], [ -12, %if.then.i ], [ 0, %if.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_new_send_msg(ptr nocapture noundef %mod, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.ican3_new_desc, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %desc) #9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %desc, align 1, !annotation !188
  %1 = getelementptr inbounds %struct.ican3_new_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !188
  %dpm = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %3 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpm, align 4
  %tx_num = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 19
  %5 = ptrtoint ptr %tx_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_num, align 8
  %mul = shl i32 %6, 1
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  %dpmctrl.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %7 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 6) #9, !srcloc !187
  call void @mmiocpy(ptr noundef nonnull %desc, ptr noundef %add.ptr, i32 noundef 2) #9
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not = icmp sgt i8 %10, -1
  br i1 %tobool.not, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ican3_new_send_msg.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ican3_new_send_msg, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !185

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ican3_new_send_msg.__UNIQUE_ID_ddebug460, ptr noundef %12, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dpmctrl.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #9, !srcloc !187
  %17 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpm, align 4
  call void @mmiocpy(ptr noundef %18, ptr noundef %msg, i32 noundef 256) #9
  %19 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpmctrl.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 6) #9, !srcloc !187
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %desc, align 1
  %23 = xor i8 %22, -128
  store i8 %23, ptr %desc, align 1
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %desc, i32 noundef 2) #9
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %desc, align 1
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  br i1 %tobool18.not, label %cond.false, label %if.end9.cond.end_crit_edge

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %tx_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_num, align 8
  %add = add i32 %28, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end9.cond.end_crit_edge ]
  %29 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %tx_num, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then6, %do.body1
  %retval.0 = phi i32 [ 0, %cond.end ], [ -12, %if.then6 ], [ -12, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %desc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @termination_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %msg.i = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1200
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %0 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %1 = ptrtoint ptr %spec.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %spec.i, align 1
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %len.i, align 2
  %data.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %data.i, align 2
  %call.i = call fastcc i32 @ican3_send_msg(ptr noundef %add.ptr.i, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %termination_comp = getelementptr i8, ptr %dev, i32 1764
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef %termination_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr i8, ptr %dev, i32 1512
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.termination_show) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %termination_enabled = getelementptr i8, ptr %dev, i32 1820
  %6 = ptrtoint ptr %termination_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %termination_enabled, align 4, !range !194
  %8 = zext i8 %7 to i32
  %call7 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -110, %if.then4 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @termination_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i = alloca %struct.ican3_msg, align 2
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #9
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable, align 4, !annotation !188
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %enable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1200
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2 = icmp ne i32 %2, 0
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %3 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %spec.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %spec.i, align 1
  %len.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 512, ptr %len.i, align 2
  %conv.i = zext i1 %tobool2 to i8
  %arrayidx2.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %call.i10 = call fastcc i32 @ican3_send_msg(ptr noundef %add.ptr.i, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool4.not = icmp eq i32 %call.i10, 0
  %count.call3 = select i1 %tobool4.not, i32 %count, i32 %call.i10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwinfo_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fwinfo = getelementptr i8, ptr %dev, i32 1888
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.61, ptr noundef %fwinfo) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ndev2 = getelementptr i8, ptr %ndev, i32 2616
  %0 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev2, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call3 = tail call fastcc i32 @ican3_set_bus_state(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev6 = getelementptr i8, ptr %ndev, i32 2616
  %2 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.63) #12
  tail call void @close_candev(ptr noundef %ndev) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr i8, ptr %ndev, i32 2472
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_stop(ptr noundef %ndev) #2 align 64 {
entry:
  %msg.i = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %state = getelementptr i8, ptr %ndev, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #9
  %fwtype.i = getelementptr i8, ptr %ndev, i32 2988
  %3 = ptrtoint ptr %fwtype.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwtype.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %4, label %ican3_set_bus_state.exit.thread [
    i32 0, label %if.then16.i
    i32 1, label %if.then38.i
  ]

ican3_set_bus_state.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  br label %if.then

if.then16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec32.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %spec32.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 66, ptr %spec32.i, align 1
  br label %ican3_set_bus_state.exit

if.then38.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memset(ptr %msg.i, i32 0, i32 256)
  %spec39.i = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %spec39.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -76, ptr %spec39.i, align 1
  %10 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ican3_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %12, align 2
  br label %ican3_set_bus_state.exit

ican3_set_bus_state.exit:                         ; preds = %if.then38.i, %if.then16.i
  %call58.i = call fastcc i32 @ican3_send_msg(ptr noundef %add.ptr.i, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool.not = icmp eq i32 %call58.i, 0
  br i1 %tobool.not, label %if.end, label %ican3_set_bus_state.exit.if.then_crit_edge

ican3_set_bus_state.exit.if.then_crit_edge:       ; preds = %ican3_set_bus_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ican3_set_bus_state.exit.if.then_crit_edge, %ican3_set_bus_state.exit.thread
  %retval.0.i12 = phi i32 [ -524, %ican3_set_bus_state.exit.thread ], [ %call58.i, %ican3_set_bus_state.exit.if.then_crit_edge ]
  %ndev2 = getelementptr i8, ptr %ndev, i32 2616
  %14 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev2, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end:                                           ; preds = %ican3_set_bus_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %echoq = getelementptr i8, ptr %ndev, i32 3028
  call void @skb_queue_purge(ptr noundef %echoq) #9
  call void @close_candev(ptr noundef %ndev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i12, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ican3_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  %desc = alloca %struct.ican3_fast_desc, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #9
  %2 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.ican3_fast_desc, ptr %desc, i32 0, i32 2, i32 6
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = call ptr @memset(ptr %desc, i32 255, i32 16)
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol.i, align 8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %12, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp2.not.i = icmp eq i32 %15, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !193

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp6.i = icmp ugt i8 %17, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !189

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %19)
  %cmp16.not.i = icmp eq i32 %19, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !193

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %21)
  %cmp21.i = icmp ugt i8 %21, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !189

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !193

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %25 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp38.i.i = icmp eq i16 %25, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.do.body2_crit_edge

if.end37.i.i.do.body2_crit_edge:                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex.i.i, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %23, align 8
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %skbcnt.i.i, align 4
  %32 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %35 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %40 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %do.body2

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %43 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

do.body2:                                         ; preds = %if.then40.i.i, %if.end37.i.i.do.body2_crit_edge
  %lock = getelementptr i8, ptr %ndev, i32 3084
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %qlen.i.i = getelementptr i8, ptr %ndev, i32 3036
  %45 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %46)
  %cmp.i = icmp ugt i32 %46, 511
  br i1 %cmp.i, label %do.body2.if.then8_crit_edge, label %if.end.i

do.body2.if.then8_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.i:                                         ; preds = %do.body2
  %fasttx_start.i = getelementptr i8, ptr %ndev, i32 3148
  %47 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fasttx_start.i, align 4
  %fasttx_num.i = getelementptr i8, ptr %ndev, i32 3152
  %49 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fasttx_num.i, align 8
  %div12.i = lshr i32 %50, 4
  %add.i = add i32 %div12.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i)
  %cmp.i.i54 = icmp ugt i32 %add.i, 255
  br i1 %cmp.i.i54, label %do.body2.i.i, label %ican3_txok.exit, !prof !189

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_txok.exit:                                  ; preds = %if.end.i
  %conv.i.i = trunc i32 %add.i to i8
  %dpmctrl.i.i = getelementptr i8, ptr %ndev, i32 2856
  %51 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dpmctrl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 %conv.i.i) #9, !srcloc !187
  %dpm.i = getelementptr i8, ptr %ndev, i32 2860
  %53 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dpm.i, align 4
  %55 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fasttx_num.i, align 8
  %rem.i = shl i32 %56, 4
  %mul.i = and i32 %rem.i, 240
  %add.ptr.i55 = getelementptr i8, ptr %54, i32 %mul.i
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i55) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp slt i8 %57, 0
  br i1 %tobool.not.i, label %if.end11, label %ican3_txok.exit.if.then8_crit_edge

ican3_txok.exit.if.then8_crit_edge:               ; preds = %ican3_txok.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %ican3_txok.exit.if.then8_crit_edge, %do.body2.if.then8_crit_edge
  %ndev9 = getelementptr i8, ptr %ndev, i32 2616
  %58 = ptrtoint ptr %ndev9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev9, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.66) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

if.end11:                                         ; preds = %ican3_txok.exit
  %60 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fasttx_start.i, align 4
  %62 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fasttx_num.i, align 8
  %div53 = lshr i32 %63, 4
  %add = add i32 %div53, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp.i57 = icmp ugt i32 %add, 255
  br i1 %cmp.i57, label %do.body2.i, label %ican3_set_page.exit, !prof !189

do.body2.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_set_page.exit:                              ; preds = %if.end11
  %conv.i = trunc i32 %add to i8
  %64 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dpmctrl.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %conv.i) #9, !srcloc !187
  %66 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dpm.i, align 4
  %68 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fasttx_num.i, align 8
  %rem = shl i32 %69, 4
  %mul = and i32 %rem, 240
  %add.ptr = getelementptr i8, ptr %67, i32 %mul
  %70 = call ptr @memset(ptr %desc, i32 0, i32 16)
  call void @mmiocpy(ptr noundef nonnull %desc, ptr noundef %add.ptr, i32 noundef 1) #9
  %71 = call ptr @memset(ptr %3, i32 0, i32 14)
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %2, align 1
  %73 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %3, align 1
  %ctrlmode.i = getelementptr i8, ptr %ndev, i32 2476
  %77 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i59 = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i59, i8 16, i8 18
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %spec.store.select.i, ptr %4, align 1
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %1, align 8
  %and14.i = and i32 %81, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %ican3_set_page.exit.if.end22.i_crit_edge, label %if.then16.i

ican3_set_page.exit.if.end22.i_crit_edge:         ; preds = %ican3_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then16.i:                                      ; preds = %ican3_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %82 = or i8 %75, 64
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %3, align 1
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i = load i32, ptr %1, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %ican3_set_page.exit.if.end22.i_crit_edge
  %85 = phi i32 [ %.pr.i, %if.then16.i ], [ %81, %ican3_set_page.exit.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %tobool25.not.i = icmp sgt i32 %85, -1
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %3, align 1
  %88 = or i8 %87, -128
  store i8 %88, ptr %3, align 1
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 8
  %and33.i = lshr i32 %90, 21
  %conv34.i = trunc i32 %and33.i to i8
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv34.i, ptr %5, align 1
  %92 = load i32, ptr %1, align 8
  %and38.i = lshr i32 %92, 13
  %conv40.i = trunc i32 %and38.i to i8
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv40.i, ptr %6, align 1
  %94 = load i32, ptr %1, align 8
  %and44.i = lshr i32 %94, 5
  br label %can_frame_to_ican3.exit

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %and55.i = lshr i32 %85, 3
  br label %can_frame_to_ican3.exit

can_frame_to_ican3.exit:                          ; preds = %if.else.i, %if.then26.i
  %and44.i.sink = phi i32 [ %and44.i, %if.then26.i ], [ %and55.i, %if.else.i ]
  %.sink85 = phi ptr [ %7, %if.then26.i ], [ %5, %if.else.i ]
  %.sink83 = phi i8 [ 3, %if.then26.i ], [ 5, %if.else.i ]
  %.sink = phi ptr [ %8, %if.then26.i ], [ %6, %if.else.i ]
  %conv46.i = trunc i32 %and44.i.sink to i8
  %95 = ptrtoint ptr %.sink85 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv46.i, ptr %.sink85, align 1
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %1, align 8
  %.tr96.i = trunc i32 %97 to i8
  %conv51.i = shl i8 %.tr96.i, %.sink83
  %98 = ptrtoint ptr %.sink to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv51.i, ptr %.sink, align 1
  %data69.i = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %73, align 4
  %conv71.i = zext i8 %100 to i32
  %101 = call ptr @memcpy(ptr %9, ptr %data69.i, i32 %conv71.i)
  %call.i.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %can_create_echo_skb.exit.thread.i, label %if.end.i.i, !prof !189

can_create_echo_skb.exit.thread.i:                ; preds = %can_frame_to_ican3.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %ican3_put_echo_skb.exit

if.end.i.i:                                       ; preds = %can_frame_to_ican3.exit
  %102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %tobool.not.i.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i60_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end.i60_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %104, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #9
  %105 = ptrtoint ptr %skc_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %skc_refcnt.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i
  %107 = phi i32 [ %106, %land.lhs.true.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %108 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %107, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #9
  %109 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %111 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 %110, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i.i) #9, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %111, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %111, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %110
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !193

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %112 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %113, 1
  %114 = or i32 %add5.i.i.i.i.i.i, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %.not.i.i.i.i.i.i = icmp sgt i32 %114, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !193

if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit.i.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 0) #9
  %115 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i.i

refcount_inc_not_zero.exit.i.i.i:                 ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge
  %116 = phi i32 [ %113, %if.end4.i.i.i.i.i.i.refcount_inc_not_zero.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool12.i.i.i.not.i.i.i = icmp eq i32 %116, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #9
  br i1 %tobool12.i.i.i.not.i.i.i, label %refcount_inc_not_zero.exit.i.i.i.if.end.i60_crit_edge, label %if.then.i.i.i

refcount_inc_not_zero.exit.i.i.i.if.end.i60_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60

if.then.i.i.i:                                    ; preds = %refcount_inc_not_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %117 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @sock_efree, ptr %destructor.i.i.i, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %104, ptr %118, align 4
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i.i.i, %refcount_inc_not_zero.exit.i.i.i.if.end.i60_crit_edge, %if.end.i.i.if.end.i60_crit_edge
  call void @consume_skb(ptr noundef %skb) #9
  %echoq.i = getelementptr i8, ptr %ndev, i32 3028
  call void @skb_queue_tail(ptr noundef %echoq.i, ptr noundef nonnull %call.i.i) #9
  br label %ican3_put_echo_skb.exit

ican3_put_echo_skb.exit:                          ; preds = %if.end.i60, %can_create_echo_skb.exit.thread.i
  %120 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %desc, align 1
  %122 = or i8 %121, 16
  store i8 %122, ptr %desc, align 1
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %desc, i32 noundef 16) #9
  %123 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dpmctrl.i.i, align 8
  %interrupt = getelementptr inbounds %struct.ican3_dpm_control, ptr %124, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %interrupt, i8 1) #9, !srcloc !187
  %125 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %desc, align 1
  %127 = xor i8 %126, -128
  store i8 %127, ptr %desc, align 1
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %desc, i32 noundef 16) #9
  %128 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %desc, align 1
  %130 = and i8 %129, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not = icmp eq i8 %130, 0
  br i1 %tobool.not, label %cond.false, label %ican3_put_echo_skb.exit.cond.end_crit_edge

ican3_put_echo_skb.exit.cond.end_crit_edge:       ; preds = %ican3_put_echo_skb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %ican3_put_echo_skb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fasttx_num.i, align 8
  %add21 = add i32 %132, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ican3_put_echo_skb.exit.cond.end_crit_edge
  %cond = phi i32 [ %add21, %cond.false ], [ 0, %ican3_put_echo_skb.exit.cond.end_crit_edge ]
  %133 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %cond, ptr %fasttx_num.i, align 8
  %134 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %135)
  %cmp.i62 = icmp ugt i32 %135, 511
  br i1 %cmp.i62, label %cond.end.if.then24_crit_edge, label %if.end.i68

cond.end.if.then24_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.end.i68:                                       ; preds = %cond.end
  %136 = ptrtoint ptr %fasttx_start.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %fasttx_start.i, align 4
  %div12.i65 = lshr i32 %cond, 4
  %add.i66 = add i32 %137, %div12.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i66)
  %cmp.i.i67 = icmp ugt i32 %add.i66, 255
  br i1 %cmp.i.i67, label %do.body2.i.i69, label %ican3_txok.exit79, !prof !189

do.body2.i.i69:                                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/janz-ican3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !190
  unreachable

ican3_txok.exit79:                                ; preds = %if.end.i68
  %conv.i.i70 = trunc i32 %add.i66 to i8
  %138 = ptrtoint ptr %dpmctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dpmctrl.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %139, i8 %conv.i.i70) #9, !srcloc !187
  %140 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dpm.i, align 4
  %142 = ptrtoint ptr %fasttx_num.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fasttx_num.i, align 8
  %rem.i73 = shl i32 %143, 4
  %mul.i74 = and i32 %rem.i73, 240
  %add.ptr.i75 = getelementptr i8, ptr %141, i32 %mul.i74
  %144 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i75) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i76 = icmp slt i8 %144, 0
  br i1 %tobool.not.i76, label %ican3_txok.exit79.if.end25_crit_edge, label %ican3_txok.exit79.if.then24_crit_edge

ican3_txok.exit79.if.then24_crit_edge:            ; preds = %ican3_txok.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

ican3_txok.exit79.if.end25_crit_edge:             ; preds = %ican3_txok.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %ican3_txok.exit79.if.then24_crit_edge, %cond.end.if.then24_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %145 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %146, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %ican3_txok.exit79.if.end25_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then8, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 16, %if.then8 ], [ 0, %can_dropped_invalid_skb.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_set_bus_state(ptr noundef %mod, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.ican3_msg, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg) #9
  %brp = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brp, align 4
  %sub = add i32 %1, 63
  %and = and i32 %sub, 63
  %sjw = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %sub1 = shl i32 %3, 6
  %and2 = add i32 %sub1, 192
  %or = or i32 %and2, %and
  %conv = trunc i32 %or to i8
  %prop_seg = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, 15
  %sub3 = add i32 %add, %7
  %and4 = and i32 %sub3, 15
  %phase_seg2 = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 4, i32 5
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub5 = shl i32 %9, 4
  %and6 = add i32 %sub5, 112
  %shl7 = and i32 %and6, 112
  %or8 = or i32 %shl7, %and4
  %conv9 = trunc i32 %or8 to i8
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %mod, i32 0, i32 22
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %12 = trunc i32 %11 to i8
  %13 = shl i8 %12, 5
  %14 = and i8 %13, -128
  %15 = or i8 %14, %conv9
  %fwtype = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 12
  %16 = ptrtoint ptr %fwtype to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fwtype, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %17, label %entry.cleanup_crit_edge [
    i32 0, label %if.then16
    i32 1, label %if.then38
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %entry
  br i1 %on, label %if.then18, label %if.then16.if.end28_crit_edge

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then18:                                        ; preds = %if.then16
  %19 = call ptr @memset(ptr %msg, i32 0, i32 256)
  %spec = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 65, ptr %spec, align 1
  %len = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1024, ptr %len, align 2
  %arrayidx20 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx22, align 2
  %arrayidx24 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %15, ptr %arrayidx24, align 1
  %call = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.then18.if.end28_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %if.then16.if.end28_crit_edge
  %cond = phi i8 [ 67, %if.then18.if.end28_crit_edge ], [ 66, %if.then16.if.end28_crit_edge ]
  %25 = call ptr @memset(ptr %msg, i32 0, i32 256)
  %spec32 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %spec32 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cond, ptr %spec32, align 1
  br label %cleanup.sink.split

if.then38:                                        ; preds = %entry
  %27 = call ptr @memset(ptr %msg, i32 0, i32 256)
  %spec39 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 1
  %28 = ptrtoint ptr %spec39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -76, ptr %spec39, align 1
  br i1 %on, label %if.then41, label %if.then38.if.end57_crit_edge

if.then38.if.end57_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %arrayidx48, align 2
  %arrayidx50 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %15, ptr %arrayidx50, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then41, %if.then38.if.end57_crit_edge
  %.sink104 = phi i16 [ 1024, %if.then41 ], [ 512, %if.then38.if.end57_crit_edge ]
  %.sink = phi i8 [ 0, %if.then41 ], [ 1, %if.then38.if.end57_crit_edge ]
  %31 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %.sink104, ptr %31, align 2
  %33 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %33, align 2
  %35 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %35, align 1
  %call58 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  %37 = and i1 %tobool59.not, %on
  br i1 %37, label %if.then63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %38 = call ptr @memset(ptr %msg, i32 0, i32 256)
  %39 = ptrtoint ptr %spec39 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -80, ptr %spec39, align 1
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2816, ptr %31, align 2
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %35, align 1
  %arrayidx71 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %arrayidx71, align 2
  %arrayidx73 = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx73, align 1
  %add.ptr = getelementptr inbounds %struct.ican3_msg, ptr %msg, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 7813573204477489408, ptr %add.ptr, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then63, %if.end28
  %call76 = call fastcc i32 @ican3_send_msg(ptr noundef %mod, ptr noundef nonnull %msg)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end57.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then18.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ %call76, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ican3_reset_module(ptr nocapture noundef %mod) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 8
  %shl = shl nuw i32 1, %1
  %conv = trunc i32 %shl to i8
  %ctrl = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %int_disable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable, i8 %conv) #9, !srcloc !187
  %free_page = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 24
  %4 = ptrtoint ptr %free_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %free_page, align 4
  %dpmctrl.i = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 5
  %5 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 0) #9, !srcloc !187
  %dpm = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 6
  %7 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dpm, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 2
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %10 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpmctrl.i, align 8
  %hwreset = getelementptr inbounds %struct.ican3_dpm_control, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %hwreset, i8 0) #9, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = xor i8 %9, -1
  %add.neg = sub i32 -50, %12
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %14 = ptrtoint ptr %dpmctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dpmctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #9, !srcloc !187
  %16 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dpm, align 4
  %add.ptr2 = getelementptr i8, ptr %17, i32 2
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #9, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %13)
  %cmp = icmp eq i8 %18, %13
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @msleep(i32 noundef 10) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %19
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ndev = getelementptr inbounds %struct.ican3_dev, ptr %mod, i32 0, i32 1
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.78) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !86, !87, !89, !91, !92, !94, !95, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__initcall__kmod_janz_ican3__472_2049_ican3_driver_init6, !1, !"__initcall__kmod_janz_ican3__472_2049_ican3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/janz-ican3.c", i32 2049, i32 1}
!2 = !{ptr @__exitcall_ican3_driver_exit, !1, !"__exitcall_ican3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author473, !4, !"__UNIQUE_ID_author473", i1 false, i1 false}
!4 = !{!"../drivers/net/can/janz-ican3.c", i32 2051, i32 1}
!5 = !{ptr @__UNIQUE_ID_description474, !6, !"__UNIQUE_ID_description474", i1 false, i1 false}
!6 = !{!"../drivers/net/can/janz-ican3.c", i32 2052, i32 1}
!7 = !{ptr @__UNIQUE_ID_file475, !8, !"__UNIQUE_ID_file475", i1 false, i1 false}
!8 = !{!"../drivers/net/can/janz-ican3.c", i32 2053, i32 1}
!9 = !{ptr @__UNIQUE_ID_license476, !8, !"__UNIQUE_ID_license476", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias477, !11, !"__UNIQUE_ID_alias477", i1 false, i1 false}
!11 = !{!"../drivers/net/can/janz-ican3.c", i32 2054, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/janz-ican3.c", i32 2043, i32 11}
!14 = !{ptr @ican3_driver, !15, !"ican3_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/janz-ican3.c", i32 2041, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/janz-ican3.c", i32 1896, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ican3_probe.__UNIQUE_ID_ddebug471, !17, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/janz-ican3.c", i32 1904, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ican3_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @ican3_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ican3_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/can/janz-ican3.c", i32 1915, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/janz-ican3.c", i32 1949, i32 3}
!33 = !{ptr @ican3_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ican3_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/janz-ican3.c", i32 1956, i32 3}
!37 = !{ptr @ican3_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ican3_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/janz-ican3.c", i32 1966, i32 3}
!41 = !{ptr @ican3_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ican3_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/janz-ican3.c", i32 1973, i32 3}
!45 = !{ptr @ican3_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ican3_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/janz-ican3.c", i32 1982, i32 3}
!49 = !{ptr @ican3_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ican3_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/janz-ican3.c", i32 1990, i32 3}
!53 = !{ptr @ican3_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ican3_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/janz-ican3.c", i32 1997, i32 3}
!57 = !{ptr @ican3_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ican3_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/janz-ican3.c", i32 2001, i32 25}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/janz-ican3.c", i32 320, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ican3_old_recv_msg.__UNIQUE_ID_ddebug459, !62, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/janz-ican3.c", i32 598, i32 3}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ican3_new_recv_msg.__UNIQUE_ID_ddebug461, !66, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/janz-ican3.c", i32 1244, i32 2}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ican3_handle_message.__UNIQUE_ID_ddebug470, !70, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/janz-ican3.c", i32 987, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ican3_handle_idvers.__UNIQUE_ID_ddebug466, !74, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/janz-ican3.c", i32 1003, i32 25}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/janz-ican3.c", i32 1043, i32 25}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/janz-ican3.c", i32 1049, i32 25}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/can/janz-ican3.c", i32 1071, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug467, !84, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/janz-ican3.c", i32 1087, i32 26}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/janz-ican3.c", i32 1102, i32 3}
!91 = !{ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug468, !90, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/janz-ican3.c", i32 1111, i32 3}
!94 = !{ptr @ican3_handle_cevtind.__UNIQUE_ID_ddebug469, !93, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/janz-ican3.c", i32 365, i32 25}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/janz-ican3.c", i32 567, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ican3_new_send_msg.__UNIQUE_ID_ddebug460, !98, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/janz-ican3.c", i32 1192, i32 25}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/janz-ican3.c", i32 1219, i32 27}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/can/janz-ican3.c", i32 1226, i32 26}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/janz-ican3.c", i32 1235, i32 25}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/janz-ican3.c", i32 1292, i32 25}
!111 = !{ptr @skb_queue_head_init.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @init_completion.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../include/linux/completion.h", i32 87, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ican3_sysfs_attr_group, !118, !"ican3_sysfs_attr_group", i1 false, i1 false}
!118 = !{!"../drivers/net/can/janz-ican3.c", i32 1875, i32 37}
!119 = !{ptr @ican3_sysfs_attrs, !120, !"ican3_sysfs_attrs", i1 false, i1 false}
!120 = !{!"../drivers/net/can/janz-ican3.c", i32 1869, i32 26}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/can/janz-ican3.c", i32 1866, i32 8}
!123 = !{ptr @dev_attr_termination, !122, !"dev_attr_termination", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/can/janz-ican3.c", i32 1832, i32 26}
!126 = !{ptr @__func__.termination_show, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/can/janz-ican3.c", i32 1832, i32 44}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/janz-ican3.c", i32 1836, i32 25}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/can/janz-ican3.c", i32 1867, i32 8}
!132 = !{ptr @dev_attr_fwinfo, !131, !"dev_attr_fwinfo", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/can/janz-ican3.c", i32 1863, i32 35}
!135 = !{ptr @ican3_netdev_ops, !136, !"ican3_netdev_ops", i1 false, i1 false}
!136 = !{!"../drivers/net/can/janz-ican3.c", i32 1748, i32 36}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/can/janz-ican3.c", i32 1642, i32 25}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/can/janz-ican3.c", i32 1649, i32 25}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/can/janz-ican3.c", i32 847, i32 25}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/can/janz-ican3.c", i32 1673, i32 25}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/can/janz-ican3.c", i32 1700, i32 25}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ican3_bittiming_const, !151, !"ican3_bittiming_const", i1 false, i1 false}
!151 = !{!"../drivers/net/can/janz-ican3.c", i32 1760, i32 41}
!152 = !{ptr @__func__.ican3_get_berr_counter, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/can/janz-ican3.c", i32 1807, i32 44}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/can/janz-ican3.c", i32 1569, i32 25}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/can/janz-ican3.c", i32 1575, i32 27}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/can/janz-ican3.c", i32 1576, i32 25}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/can/janz-ican3.c", i32 1579, i32 26}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/can/janz-ican3.c", i32 1589, i32 25}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/can/janz-ican3.c", i32 1596, i32 25}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/can/janz-ican3.c", i32 1603, i32 25}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/can/janz-ican3.c", i32 1610, i32 25}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/can/janz-ican3.c", i32 1617, i32 25}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/can/janz-ican3.c", i32 1623, i32 25}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/can/janz-ican3.c", i32 1550, i32 24}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2148740564, i64 2148740569, i64 2148740582, i64 2148740626, i64 2148740660, i64 2148740681}
!186 = !{i64 2152206089}
!187 = !{i64 4664744}
!188 = !{!"auto-init"}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{i64 2156947003, i64 2156947496, i64 2156947040, i64 2156947096, i64 2156947130, i64 2156947154, i64 2156947195, i64 2156947216, i64 2156947244, i64 2156947278}
!191 = !{i64 4665139}
!192 = !{i64 2152204484}
!193 = !{!"branch_weights", i32 2000, i32 1}
!194 = !{i8 0, i8 2}
!195 = !{i64 742485, i64 742509, i64 742530, i64 742547, i64 742564}
