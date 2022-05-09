; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/micrel/ks8851_spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8851_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ks8851_net_spi = type { %struct.ks8851_net, %struct.mutex, %struct.work_struct, ptr, %struct.spi_message, %struct.spi_message, %struct.spi_transfer, [2 x %struct.spi_transfer], [100 x i8] }
%struct.ks8851_net = type { ptr, %struct.spinlock, [80 x i8], %union.ks8851_tx_hdr, [8 x i8], [8 x i8], [106 x i8], i32, i16, i8, i16, i16, i16, %struct.mii_if_info, %struct.ks8851_rxctrl, %struct.work_struct, %struct.sk_buff_head, %struct.eeprom_93cx6, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8] }
%union.ks8851_tx_hdr = type { [3 x i16] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ks8851_rxctrl = type { [4 x i16], i16, i16 }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__initcall__kmod_ks8851_spi__384_477_ks8851_driver_init6 = internal global ptr @ks8851_driver_init, section ".initcall6.init", align 4
@ks8851_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ks8851_probe_spi, ptr @ks8851_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks8851_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ks8851_driver_exit = internal global ptr @ks8851_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description385 = internal constant [45 x i8] c"ks8851_spi.description=KS8851 Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [47 x i8] c"ks8851_spi.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [55 x i8] c"ks8851_spi.file=drivers/net/ethernet/micrel/ks8851_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [23 x i8] c"ks8851_spi.license=GPL\00", section ".modinfo", align 1
@__param_str_message = internal constant [19 x i8] c"ks8851_spi.message\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_message = internal constant %struct.kernel_param { ptr @__param_str_message, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.101 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_messagetype389 = internal constant [32 x i8] c"ks8851_spi.parmtype=message:int\00", section ".modinfo", align 1
@__UNIQUE_ID_message390 = internal constant [65 x i8] c"ks8851_spi.parm=message:Message verbosity level (0=none, 31=all)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias391 = internal constant [28 x i8] c"ks8851_spi.alias=spi:ks8851\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ks8851\00", [25 x i8] zeroinitializer }, align 32
@ks8851_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ks8851\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ks8851_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ks8851_probe_spi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&kss->lock\00", [21 x i8] zeroinitializer }, align 32
@ks8851_probe_spi.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&kss->tx_work)\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"read: spi_sync() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_sync() failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ks8851_rdfifo_spi.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ks8851_spi\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8851_rdfifo_spi\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/micrel/ks8851_spi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %d@%p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: spi_sync() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ks8851_wrfifo_spi.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.8, ptr @.str.12, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ks8851_wrfifo_spi\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: skb %p, %d@%p, irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ks8851_start_xmit_spi.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.13, ptr @.str.8, ptr @.str.14, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ks8851_start_xmit_spi\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: skb %p, %d@%p\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ks8851_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 468, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"msg_enable\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 29, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 470, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"ks8851_match_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 462, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"ks8851_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [40 x i8] c"../drivers/net/ethernet/micrel/ks8851.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 434, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 439, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 440, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 182, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 134, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 221, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 238, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 261, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [44 x i8] c"../drivers/net/ethernet/micrel/ks8851_spi.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 384, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias391, ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__UNIQUE_ID_message390, ptr @__UNIQUE_ID_messagetype389, ptr @__exitcall_ks8851_driver_exit, ptr @__initcall__kmod_ks8851_spi__384_477_ks8851_driver_init6, ptr @__param_message, ptr @ks8851_driver_exit, ptr @ks8851_driver, ptr @msg_enable, ptr @.str, ptr @ks8851_match_table, ptr @ks8851_pm_ops, ptr @ks8851_probe_spi.__key, ptr @.str.1, ptr @ks8851_probe_spi.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_spi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8851_probe_spi.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ks8851_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ks8851_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %spi, i32 noundef 1152, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %lock = getelementptr i8, ptr %call, i32 2760
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ks8851_lock_spi, ptr %lock, align 8
  %unlock = getelementptr i8, ptr %call, i32 2764
  %2 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ks8851_unlock_spi, ptr %unlock, align 4
  %rdreg16 = getelementptr i8, ptr %call, i32 2768
  %3 = ptrtoint ptr %rdreg16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ks8851_rdreg16_spi, ptr %rdreg16, align 16
  %wrreg16 = getelementptr i8, ptr %call, i32 2772
  %4 = ptrtoint ptr %wrreg16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ks8851_wrreg16_spi, ptr %wrreg16, align 4
  %rdfifo = getelementptr i8, ptr %call, i32 2776
  %5 = ptrtoint ptr %rdfifo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ks8851_rdfifo_spi, ptr %rdfifo, align 8
  %wrfifo = getelementptr i8, ptr %call, i32 2780
  %6 = ptrtoint ptr %wrfifo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ks8851_wrfifo_spi, ptr %wrfifo, align 4
  %start_xmit = getelementptr i8, ptr %call, i32 2784
  %7 = ptrtoint ptr %start_xmit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ks8851_start_xmit_spi, ptr %start_xmit, align 32
  %rx_skb = getelementptr i8, ptr %call, i32 2788
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ks8851_rx_skb_spi, ptr %rx_skb, align 4
  %flush_tx_work = getelementptr i8, ptr %call, i32 2792
  %9 = ptrtoint ptr %flush_tx_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ks8851_flush_tx_work_spi, ptr %flush_tx_work, align 8
  %rc_ier = getelementptr i8, ptr %call, i32 2568
  %10 = ptrtoint ptr %rc_ier to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -7422, ptr %rc_ier, align 8
  %spidev = getelementptr i8, ptr %call, i32 2952
  %11 = ptrtoint ptr %spidev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %spidev, align 8
  %lock3 = getelementptr i8, ptr %call, i32 2816
  tail call void @__mutex_init(ptr noundef %lock3, ptr noundef nonnull @.str.1, ptr noundef nonnull @ks8851_probe_spi.__key) #6
  %tx_work = getelementptr i8, ptr %call, i32 2908
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2924
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @ks8851_probe_spi.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry8 = getelementptr i8, ptr %call, i32 2912
  %13 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2916
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2920
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ks8851_tx_work, ptr %func, align 4
  %spi_msg1 = getelementptr i8, ptr %call, i32 2956
  %16 = getelementptr i8, ptr %call, i32 2964
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %spi_msg1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %spi_msg1, ptr %spi_msg1, align 4
  %prev.i.i.i = getelementptr i8, ptr %call, i32 2960
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spi_msg1, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr i8, ptr %call, i32 3004
  %20 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr i8, ptr %call, i32 3008
  %21 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr i8, ptr %call, i32 3152
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %spi_msg1, ptr noundef %spi_msg1) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spi_msg1, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %call, i32 3156
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spi_msg1, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %spi_msg1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i, ptr %spi_msg1, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %spi_msg2 = getelementptr i8, ptr %call, i32 3012
  %26 = getelementptr i8, ptr %call, i32 3020
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %spi_msg2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %spi_msg2, ptr %spi_msg2, align 4
  %prev.i.i.i53 = getelementptr i8, ptr %call, i32 3016
  %29 = ptrtoint ptr %prev.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi_msg2, ptr %prev.i.i.i53, align 4
  %resources.i.i54 = getelementptr i8, ptr %call, i32 3060
  %30 = ptrtoint ptr %resources.i.i54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i54, ptr %resources.i.i54, align 4
  %prev.i2.i.i55 = getelementptr i8, ptr %call, i32 3064
  %31 = ptrtoint ptr %prev.i2.i.i55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i54, ptr %prev.i2.i.i55, align 4
  %transfer_list.i56 = getelementptr i8, ptr %call, i32 3248
  %call.i.i.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i56, ptr noundef %spi_msg2, ptr noundef %spi_msg2) #6
  br i1 %call.i.i.i58, label %if.end.i.i.i60, label %spi_message_add_tail.exit.spi_message_add_tail.exit61_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit61_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit61

if.end.i.i.i60:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i56, ptr %prev.i.i.i53, align 4
  %33 = ptrtoint ptr %transfer_list.i56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spi_msg2, ptr %transfer_list.i56, align 4
  %prev3.i.i.i59 = getelementptr i8, ptr %call, i32 3252
  %34 = ptrtoint ptr %prev3.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spi_msg2, ptr %prev3.i.i.i59, align 4
  %35 = ptrtoint ptr %spi_msg2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i56, ptr %spi_msg2, align 4
  br label %spi_message_add_tail.exit61

spi_message_add_tail.exit61:                      ; preds = %if.end.i.i.i60, %spi_message_add_tail.exit.spi_message_add_tail.exit61_crit_edge
  %transfer_list.i62 = getelementptr i8, ptr %call, i32 3344
  %36 = ptrtoint ptr %prev.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i53, align 4
  %call.i.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i62, ptr noundef %37, ptr noundef %spi_msg2) #6
  br i1 %call.i.i.i64, label %if.end.i.i.i66, label %spi_message_add_tail.exit61.spi_message_add_tail.exit67_crit_edge

spi_message_add_tail.exit61.spi_message_add_tail.exit67_crit_edge: ; preds = %spi_message_add_tail.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit67

if.end.i.i.i66:                                   ; preds = %spi_message_add_tail.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i62, ptr %prev.i.i.i53, align 4
  %39 = ptrtoint ptr %transfer_list.i62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spi_msg2, ptr %transfer_list.i62, align 4
  %prev3.i.i.i65 = getelementptr i8, ptr %call, i32 3348
  %40 = ptrtoint ptr %prev3.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i65, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i62, ptr %37, align 4
  br label %spi_message_add_tail.exit67

spi_message_add_tail.exit67:                      ; preds = %if.end.i.i.i66, %spi_message_add_tail.exit61.spi_message_add_tail.exit67_crit_edge
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %irq17 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %44 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %irq17, align 4
  %45 = load i32, ptr @msg_enable, align 4
  %call18 = tail call i32 @ks8851_probe_common(ptr noundef nonnull %call, ptr noundef %spi, i32 noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %spi_message_add_tail.exit67 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ks8851_remove_common(ptr noundef %spi) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_lock_spi(ptr noundef %ks, ptr nocapture noundef readnone %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_unlock_spi(ptr noundef %ks, ptr nocapture noundef readnone %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_rdreg16_spi(ptr noundef %ks, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 12, i32 48
  %shl1 = shl i32 %reg, 10
  %or = or i32 %cond, %shl1
  %shr = lshr i32 %reg, 6
  %or2 = or i32 %or, %shr
  %txd.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 5
  %rxd.i = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 4
  %conv.i = trunc i32 %or2 to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %1 = ptrtoint ptr %txd.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %txd.i, align 2
  %spidev.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 3
  %2 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spidev.i, align 8
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spi_msg2.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 5
  %spi_xfer2.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7
  %9 = ptrtoint ptr %spi_xfer2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txd.i, ptr %spi_xfer2.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i, align 4
  %incdec.ptr.i = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %incdec.ptr.i, align 4
  %rx_buf5.i = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 1
  %13 = ptrtoint ptr %rx_buf5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rxd.i, ptr %rx_buf5.i, align 4
  %len6.i = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len6.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spi_msg1.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 4
  %spi_xfer1.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6
  %15 = ptrtoint ptr %spi_xfer1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %txd.i, ptr %spi_xfer1.i, align 4
  %rx_buf8.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %rx_buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rxd.i, ptr %rx_buf8.i, align 4
  %len9.i = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %len9.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %msg.0.i = phi ptr [ %spi_msg2.i, %if.then.i ], [ %spi_msg1.i, %if.else.i ]
  %call.i = tail call i32 @spi_sync(ptr noundef %3, ptr noundef %msg.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.4) #9
  br label %ks8851_rdreg.exit

if.else13.i:                                      ; preds = %if.end.i
  %20 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spidev.i, align 8
  %master15.i = getelementptr inbounds %struct.spi_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %master15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master15.i, align 4
  %flags16.i = getelementptr inbounds %struct.spi_controller, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags16.i, align 4
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool19.not.i = icmp eq i16 %26, 0
  br i1 %tobool19.not.i, label %if.else21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %rxd.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %rxd.i, align 1
  br label %ks8851_rdreg.exit

if.else21.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr22.i = getelementptr %struct.ks8851_net, ptr %ks, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %add.ptr22.i, align 1
  br label %ks8851_rdreg.exit

ks8851_rdreg.exit:                                ; preds = %if.else21.i, %if.then20.i, %if.then12.i
  %rx.0 = phi i16 [ 0, %if.then12.i ], [ %30, %if.else21.i ], [ %28, %if.then20.i ]
  %31 = tail call i16 @llvm.bswap.i16(i16 %rx.0)
  %conv = zext i16 %31 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_wrreg16_spi(ptr noundef %ks, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %txb = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer1 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6
  %spi_msg1 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb) #6
  %0 = getelementptr inbounds [2 x i16], ptr %txb, i32 0, i32 1
  %and = and i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 12, i32 48
  %shl1 = shl i32 %reg, 10
  %or = or i32 %cond, %shl1
  %shr = lshr i32 %reg, 6
  %or2 = or i32 %or, %shr
  %1 = trunc i32 %or2 to i16
  %conv = or i16 %1, 64
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %txb to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %txb, align 2
  %conv4 = trunc i32 %val to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %0, align 2
  %6 = ptrtoint ptr %spi_xfer1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %txb, ptr %spi_xfer1, align 4
  %rx_buf = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len, align 4
  %spidev = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 3
  %9 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spidev, align 8
  %call = call i32 @spi_sync(ptr noundef %10, ptr noundef %spi_msg1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ks, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_rdfifo_spi(ptr noundef %ks, ptr noundef %buff, i32 noundef %len) #2 align 64 {
entry:
  %txb = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer2 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7
  %spi_msg2 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %txb) #6
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 7
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_rdfifo_spi.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_rdfifo_spi, %if.then6)) #6
          to label %do.end9 [label %if.then6], !srcloc !63

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_rdfifo_spi.__UNIQUE_ID_ddebug381, ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %len, ptr noundef %buff) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %4 = ptrtoint ptr %txb to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %txb, align 1
  %5 = ptrtoint ptr %spi_xfer2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %txb, ptr %spi_xfer2, align 4
  %rx_buf = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_buf, align 4
  %len11 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len11, align 4
  %incdec.ptr = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1
  %rx_buf12 = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %rx_buf12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buff, ptr %rx_buf12, align 4
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %incdec.ptr, align 4
  %len14 = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 2
  %10 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %len14, align 4
  %spidev = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 3
  %11 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spidev, align 8
  %call15 = call i32 @spi_sync(ptr noundef %12, ptr noundef %spi_msg2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %do.end9.if.end18_crit_edge

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ks, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.end9.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %txb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_wrfifo_spi(ptr noundef %ks, ptr noundef %txp, i1 noundef zeroext %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_xfer2 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7
  %spi_msg2 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 5
  %msg_enable = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 7
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 128
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_wrfifo_spi.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_wrfifo_spi, %if.then7)) #6
          to label %do.end11 [label %if.then7], !srcloc !63

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ks, align 128
  %len = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %conv = zext i1 %irq to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_wrfifo_spi.__UNIQUE_ID_ddebug382, ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %txp, i32 noundef %5, ptr noundef %7, i32 noundef %conv) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body1, %entry.do.end11_crit_edge
  %fid12 = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 9
  %8 = ptrtoint ptr %fid12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fid12, align 2
  %inc = add i8 %9, 1
  store i8 %inc, ptr %fid12, align 2
  %10 = and i8 %9, 63
  %and14 = zext i8 %10 to i32
  %or = or i32 %and14, 32768
  %spec.select = select i1 %irq, i32 %or, i32 %and14
  %txh = getelementptr inbounds %struct.ks8851_net, ptr %ks, i32 0, i32 3
  %arrayidx = getelementptr [6 x i8], ptr %txh, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -64, ptr %arrayidx, align 1
  %conv18 = trunc i32 %spec.select to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %arrayidx20 = getelementptr %struct.ks8851_net, ptr %ks, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx20, align 2
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 6
  %14 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len21, align 4
  %conv22 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %arrayidx24 = getelementptr %struct.ks8851_net, ptr %ks, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx24, align 4
  %18 = ptrtoint ptr %spi_xfer2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %spi_xfer2, align 4
  %rx_buf = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 1
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_buf, align 4
  %len27 = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %len27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %len27, align 4
  %incdec.ptr = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1
  %data28 = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %21 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data28, align 4
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %incdec.ptr, align 4
  %rx_buf30 = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 1
  %24 = ptrtoint ptr %rx_buf30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rx_buf30, align 4
  %25 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len21, align 4
  %add = add i32 %26, 3
  %and32 = and i32 %add, -4
  %len33 = getelementptr %struct.ks8851_net_spi, ptr %ks, i32 0, i32 7, i32 1, i32 2
  %27 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and32, ptr %len33, align 4
  %spidev = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 3
  %28 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spidev, align 8
  %call34 = tail call i32 @spi_sync(ptr noundef %29, ptr noundef %spi_msg2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.then36, label %do.end11.if.end38_crit_edge

do.end11.if.end38_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ks, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %do.end11.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8851_start_xmit_spi(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add1.i = add i32 %1, 7
  %and.i = and i32 %add1.i, -4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 2560
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 128
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body2

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ks8851_start_xmit_spi.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ks8851_start_xmit_spi, %if.then8)) #6
          to label %do.end12 [label %if.then8], !srcloc !63

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ks8851_start_xmit_spi.__UNIQUE_ID_ddebug383, ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %skb, i32 noundef %7, ptr noundef %9) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body2, %entry.do.end12_crit_edge
  %statelock = getelementptr i8, ptr %dev, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %statelock) #6
  %tx_space = getelementptr i8, ptr %dev, i32 2564
  %10 = ptrtoint ptr %tx_space to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_space, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv)
  %cmp = icmp ugt i32 %and.i, %conv
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %if.end18

if.else:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %14 = trunc i32 %and.i to i16
  %conv17 = sub i16 %11, %14
  %15 = ptrtoint ptr %tx_space to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv17, ptr %tx_space, align 4
  %txq = getelementptr i8, ptr %dev, i32 2664
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %ret.0 = phi i32 [ 16, %if.then14 ], [ 0, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %statelock) #6
  %tx_work = getelementptr i8, ptr %dev, i32 2908
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %tx_work) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_rx_skb_spi(ptr nocapture noundef readnone %ks, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netif_rx_ni(ptr noundef %skb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_flush_tx_work_spi(ptr noundef %ks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_work = getelementptr inbounds %struct.ks8851_net_spi, ptr %ks, i32 0, i32 2
  %call = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ks8851_tx_work(ptr noundef %work) #2 align 64 {
entry:
  %txb.i39 = alloca [2 x i16], align 2
  %txb.i29 = alloca [2 x i16], align 2
  %txb.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -604
  %txq = getelementptr i8, ptr %work, i32 -244
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 4
  %cmp.i = icmp eq ptr %1, %txq
  %lock.i = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  br i1 %cmp.i, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rc_rxqcr = getelementptr i8, ptr %work, i32 -338
  %spi_xfer1.i = getelementptr i8, ptr %work, i32 160
  %spi_msg1.i = getelementptr i8, ptr %work, i32 48
  %2 = getelementptr inbounds [2 x i16], ptr %txb.i, i32 0, i32 1
  %rx_buf.i = getelementptr i8, ptr %work, i32 164
  %len.i = getelementptr i8, ptr %work, i32 168
  %spidev.i = getelementptr i8, ptr %work, i32 44
  %3 = getelementptr inbounds [2 x i16], ptr %txb.i29, i32 0, i32 1
  %4 = getelementptr inbounds [2 x i16], ptr %txb.i39, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call3 = call ptr @skb_dequeue(ptr noundef %txq) #6
  %5 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txq, align 4
  %cmp.i26 = icmp eq ptr %6, %txq
  %tobool8.not = icmp eq ptr %call3, null
  br i1 %tobool8.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  %7 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rc_rxqcr, align 2
  %9 = or i16 %8, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i) #6
  %10 = ptrtoint ptr %txb.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 29192, ptr %txb.i, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %9) #6
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %2, align 2
  %13 = ptrtoint ptr %spi_xfer1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txb.i, ptr %spi_xfer1.i, align 4
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_buf.i, align 4
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %len.i, align 4
  %16 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spidev.i, align 8
  %call.i = call i32 @spi_sync(ptr noundef %17, ptr noundef %spi_msg1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i28 = icmp slt i32 %call.i, 0
  br i1 %cmp.i28, label %if.then.i, label %if.then.ks8851_wrreg16_spi.exit_crit_edge

if.then.ks8851_wrreg16_spi.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ks8851_wrreg16_spi.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.5) #9
  br label %ks8851_wrreg16_spi.exit

ks8851_wrreg16_spi.exit:                          ; preds = %if.then.i, %if.then.ks8851_wrreg16_spi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i) #6
  call void @ks8851_wrfifo_spi(ptr noundef %add.ptr, ptr noundef nonnull %call3, i1 noundef zeroext %cmp.i26)
  %20 = ptrtoint ptr %rc_rxqcr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rc_rxqcr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i29) #6
  %22 = ptrtoint ptr %txb.i29 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 29192, ptr %txb.i29, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %21) #6
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %3, align 2
  %25 = ptrtoint ptr %spi_xfer1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %txb.i29, ptr %spi_xfer1.i, align 4
  %26 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rx_buf.i, align 4
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %len.i, align 4
  %28 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spidev.i, align 8
  %call.i35 = call i32 @spi_sync(ptr noundef %29, ptr noundef %spi_msg1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %if.then.i37, label %ks8851_wrreg16_spi.exit.ks8851_wrreg16_spi.exit38_crit_edge

ks8851_wrreg16_spi.exit.ks8851_wrreg16_spi.exit38_crit_edge: ; preds = %ks8851_wrreg16_spi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ks8851_wrreg16_spi.exit38

if.then.i37:                                      ; preds = %ks8851_wrreg16_spi.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.5) #9
  br label %ks8851_wrreg16_spi.exit38

ks8851_wrreg16_spi.exit38:                        ; preds = %if.then.i37, %ks8851_wrreg16_spi.exit.ks8851_wrreg16_spi.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i29) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txb.i39) #6
  %32 = ptrtoint ptr %txb.i39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 19968, ptr %txb.i39, align 2
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %4, align 2
  %34 = ptrtoint ptr %spi_xfer1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %txb.i39, ptr %spi_xfer1.i, align 4
  %35 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rx_buf.i, align 4
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %len.i, align 4
  %37 = ptrtoint ptr %spidev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spidev.i, align 8
  %call.i45 = call i32 @spi_sync(ptr noundef %38, ptr noundef %spi_msg1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %if.then.i47, label %ks8851_wrreg16_spi.exit38.ks8851_wrreg16_spi.exit48_crit_edge

ks8851_wrreg16_spi.exit38.ks8851_wrreg16_spi.exit48_crit_edge: ; preds = %ks8851_wrreg16_spi.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %ks8851_wrreg16_spi.exit48

if.then.i47:                                      ; preds = %ks8851_wrreg16_spi.exit38
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.5) #9
  br label %ks8851_wrreg16_spi.exit48

ks8851_wrreg16_spi.exit48:                        ; preds = %if.then.i47, %ks8851_wrreg16_spi.exit38.ks8851_wrreg16_spi.exit48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txb.i39) #6
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 128
  %len.i49 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %43 = ptrtoint ptr %len.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i49, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 3
  %45 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %46, %44
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 1
  %47 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  call void @consume_skb(ptr noundef nonnull %call3) #6
  br label %if.end

if.end:                                           ; preds = %ks8851_wrreg16_spi.exit48, %while.body.if.end_crit_edge
  br i1 %cmp.i26, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_probe_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ks8851_remove_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ks8851_spi__384_477_ks8851_driver_init6, !1, !"__initcall__kmod_ks8851_spi__384_477_ks8851_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 477, i32 1}
!2 = !{ptr @__exitcall_ks8851_driver_exit, !1, !"__exitcall_ks8851_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description385, !4, !"__UNIQUE_ID_description385", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_author386, !6, !"__UNIQUE_ID_author386", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_file387, !8, !"__UNIQUE_ID_file387", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_license388, !8, !"__UNIQUE_ID_license388", i1 false, i1 false}
!10 = !{ptr @__param_message, !11, !"__param_message", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 483, i32 1}
!12 = !{ptr @__UNIQUE_ID_messagetype389, !11, !"__UNIQUE_ID_messagetype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_message390, !14, !"__UNIQUE_ID_message390", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 484, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias391, !16, !"__UNIQUE_ID_alias391", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 485, i32 1}
!17 = !{ptr @msg_enable, !18, !"msg_enable", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 29, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 470, i32 11}
!21 = !{ptr @ks8851_driver, !22, !"ks8851_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 468, i32 26}
!23 = !{ptr @ks8851_probe_spi.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 439, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ks8851_probe_spi.__key.2, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 440, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 182, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 134, i32 26}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 221, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ks8851_rdfifo_spi.__UNIQUE_ID_ddebug381, !34, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 238, i32 26}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 261, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ks8851_wrfifo_spi.__UNIQUE_ID_ddebug382, !42, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 384, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ks8851_start_xmit_spi.__UNIQUE_ID_ddebug383, !46, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!49 = !{ptr @ks8851_match_table, !50, !"ks8851_match_table", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/micrel/ks8851_spi.c", i32 462, i32 34}
!51 = !{ptr @ks8851_pm_ops, !52, !"ks8851_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/micrel/ks8851.h", i32 434, i32 23}
!53 = !{ptr @__param_str_message, !11, !"__param_str_message", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148727860, i64 2148727865, i64 2148727878, i64 2148727922, i64 2148727956, i64 2148727977}
