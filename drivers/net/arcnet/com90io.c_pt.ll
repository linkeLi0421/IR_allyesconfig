; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/com90io.c_pt.bc'
source_filename = "../drivers/net/arcnet/com90io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__param_str_io = internal constant [11 x i8] c"com90io.io\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype352 = internal constant [24 x i8] c"com90io.parmtype=io:int\00", section ".modinfo", align 1
@__param_str_irq = internal constant [12 x i8] c"com90io.irq\00", align 1
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype353 = internal constant [25 x i8] c"com90io.parmtype=irq:int\00", section ".modinfo", align 1
@__param_str_device = internal constant [15 x i8] c"com90io.device\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_device = internal constant %struct.kparam_string { i32 9, ptr @device }, align 4
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_device } }, section "__param", align 4
@__UNIQUE_ID_devicetype354 = internal constant [31 x i8] c"com90io.parmtype=device:string\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [40 x i8] c"com90io.file=drivers/net/arcnet/com90io\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [20 x i8] c"com90io.license=GPL\00", section ".modinfo", align 1
@__setup_str_com90io_setup = internal constant [9 x i8] c"com90io=\00", section ".init.rodata", align 1
@__setup_com90io_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_com90io_setup, ptr @com90io_setup, i32 0 }, section ".init.setup", align 4
@my_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_com90io__357_425_com90io_init6 = internal global ptr @com90io_init, section ".initcall6.init", align 4
@__exitcall_com90io_exit = internal global ptr @com90io_exit, section ".exitcall.exit", align 4
@device = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@com90io_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013arcnet:com90io: Too many arguments\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90io_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/arcnet/com90io.c\00", [35 x i8] zeroinitializer }, align 32
@com90io_setup._entry_ptr = internal global ptr @com90io_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@com90io_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016arcnet:com90io: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90io_probe\00", [18 x i8] zeroinitializer }, align 32
@com90io_probe._entry_ptr = internal global ptr @com90io_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"COM90xx IO-mapped mode support (by David Woodhouse et el.)\00", [37 x i8] zeroinitializer }, align 32
@com90io_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016arcnet:com90io: E-mail me if you actually test this driver, please!\0A\00", [57 x i8] zeroinitializer }, align 32
@com90io_probe._entry_ptr.9 = internal global ptr @com90io_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"No autoprobe for IO mapped cards; you must specify the base address!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90io probe\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IO request_region %x-%x failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IO address %x empty\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Status invalid (%Xh)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Status after reset: %X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Status after reset acknowledged: %X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Eternal reset (status=%Xh)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Signature byte not found (%Xh instead).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Autoprobe IRQ failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arcnet (COM90xx-IO)\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get IRQ %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COM90xx I/O\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"COM90IO: station %02Xh found at %03lXh, IRQ %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resetting %s (status=%02Xh)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reset failed: TESTvalue not present.\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 346, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 347, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"my_dev\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 380, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 348, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 365, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 374, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 136, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 137, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 144, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 145, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 150, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 160, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 164, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 169, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 175, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 189, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 206, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 229, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 230, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 241, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 266, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 284, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [32 x i8] c"../drivers/net/arcnet/com90io.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 302, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_devicetype354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_iotype352, ptr @__UNIQUE_ID_irqtype353, ptr @__UNIQUE_ID_license356, ptr @__exitcall_com90io_exit, ptr @__initcall__kmod_com90io__357_425_com90io_init6, ptr @__param_device, ptr @__param_io, ptr @__param_irq, ptr @__setup_com90io_setup, ptr @com90io_exit, ptr @com90io_probe._entry, ptr @com90io_probe._entry.7, ptr @com90io_probe._entry_ptr, ptr @com90io_probe._entry_ptr.9, ptr @com90io_setup._entry, ptr @com90io_setup._entry_ptr, ptr @io, ptr @irq, ptr @my_dev, ptr @device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90io_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90io_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90io_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @com90io_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ints) #6
  %0 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %ints, i32 0, i32 2
  %2 = call ptr @memset(ptr %ints, i32 255, i32 16)
  %call = call ptr @get_options(ptr noundef %s, i32 noundef 4, ptr noundef nonnull %ints) #6
  %3 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ints, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge
  ]

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end, %entry.sw.bb_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @irq, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %entry.sw.bb4_crit_edge
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  store i32 %9, ptr @io, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %if.then7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @device, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %entry.cleanup_crit_edge ], [ 1, %if.then7 ], [ 1, %sw.bb4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ints) #6
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @com90io_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @my_dev, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  tail call void @unregister_netdev(ptr noundef %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %add = add i32 %2, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %5 = and i8 %4, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %5) #6, !srcloc !103
  %irq = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %0) #6
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef 16) #6
  tail call void @free_arcdev(ptr noundef %0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_arcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @com90io_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_arcdev(ptr noundef nonnull @device) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @io, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %base_addr, align 32
  %2 = load i32, ptr @irq, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  %spec.select = select i1 %cmp, i32 9, i32 %2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %irq, align 4
  %call5 = tail call fastcc i32 @com90io_probe(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_arcdev(ptr noundef nonnull %call) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call, ptr @my_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_arcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @com90io_probe(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %2 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %do.body8, label %if.end15

do.body8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %3 = load i32, ptr @arcnet_debug, align 4
  %and9 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %if.then11

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.body19, label %if.end26

do.body19:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %4 = load i32, ptr @arcnet_debug, align 4
  %and20 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %if.then22

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %1, 15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %sub) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %and28 = and i32 %1, 1048575
  %add29 = or i32 %and28, -18874368
  %5 = inttoptr i32 %add29 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %do.body35, label %if.end42

do.body35:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %7 = load i32, ptr @arcnet_debug, align 4
  %and36 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.err_out_crit_edge, label %if.then38

do.body35.err_out_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %1) #9
  br label %err_out

if.end42:                                         ; preds = %if.end26
  %add44 = add i32 %1, 8
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %8 = inttoptr i32 %add46 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end42
  %__ms.0223 = phi i32 [ 300, %if.end42 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0223, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %tobool50.not = icmp eq i32 %dec, 0
  br i1 %tobool50.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %conv58 = zext i8 %11 to i32
  %and59 = and i32 %conv58, 157
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %12 = load i32, ptr @arcnet_debug, align 4
  %and72 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %cmp60.not, label %do.body71, label %do.body63

do.body63:                                        ; preds = %while.end
  br i1 %tobool73.not, label %do.body63.err_out_crit_edge, label %if.then66

do.body63.err_out_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then66:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv58) #9
  br label %err_out

do.body71:                                        ; preds = %while.end
  br i1 %tobool73.not, label %do.body71.do.body78_crit_edge, label %if.then74

do.body71.do.body78_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

if.then74:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv58) #9
  br label %do.body78

do.body78:                                        ; preds = %if.then74, %do.body71.do.body78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %add81 = add i32 %1, 1
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %13 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 30) #6, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %14 = load i32, ptr @arcnet_debug, align 4
  %and86 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body78.do.end91_crit_edge, label %if.then88

do.body78.do.end91_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91

if.then88:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv58) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body78.do.end91_crit_edge
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %conv99 = zext i8 %15 to i32
  %and100 = and i32 %conv99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body111, label %do.body103

do.body103:                                       ; preds = %do.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %16 = load i32, ptr @arcnet_debug, align 4
  %and104 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.err_out_crit_edge, label %if.then106

do.body103.err_out_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then106:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv99) #9
  br label %err_out

do.body111:                                       ; preds = %do.end91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %add114 = add i32 %1, 2
  %and115 = and i32 %add114, 1048575
  %add116 = or i32 %and115, -18874368
  %17 = inttoptr i32 %add116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 22) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %add121 = add i32 %1, 15
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %18 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 64) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %add128 = add i32 %1, 14
  %and129 = and i32 %add128, 1048575
  %add130 = or i32 %and129, -18874368
  %19 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !103
  %add133 = add i32 %1, 12
  %and134 = and i32 %add133, 1048575
  %add135 = or i32 %and134, -18874368
  %20 = inttoptr i32 %add135 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %conv139 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %21)
  %cmp140.not = icmp eq i8 %21, -47
  br i1 %cmp140.not, label %if.end150, label %do.body143

do.body143:                                       ; preds = %do.body111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %22 = load i32, ptr @arcnet_debug, align 4
  %and144 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.err_out_crit_edge, label %if.then146

do.body143.err_out_crit_edge:                     ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then146:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv139) #9
  br label %err_out

if.end150:                                        ; preds = %do.body111
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool151.not = icmp eq i32 %24, 0
  br i1 %tobool151.not, label %if.then152, label %if.end150.if.end182_crit_edge

if.end150.if.end182_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

if.then152:                                       ; preds = %if.end150
  %call153 = tail call i32 @probe_irq_on() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -128) #6, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #6, !srcloc !103
  %call168 = tail call i32 @probe_irq_off(i32 noundef %call153) #6
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call168, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call168)
  %cmp171 = icmp slt i32 %call168, 1
  br i1 %cmp171, label %do.body174, label %if.then152.if.end182_crit_edge

if.then152.if.end182_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

do.body174:                                       ; preds = %if.then152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %27 = load i32, ptr @arcnet_debug, align 4
  %and175 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.err_out_crit_edge, label %if.then177

do.body174.err_out_crit_edge:                     ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then177:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %err_out

if.end182:                                        ; preds = %if.then152.if.end182_crit_edge, %if.end150.if.end182_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 16) #6
  %call183 = tail call fastcc i32 @com90io_found(ptr noundef %dev)
  br label %cleanup

err_out:                                          ; preds = %if.then177, %do.body174.err_out_crit_edge, %if.then146, %do.body143.err_out_crit_edge, %if.then106, %do.body103.err_out_crit_edge, %if.then66, %do.body63.err_out_crit_edge, %if.then38, %do.body35.err_out_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 16) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end182, %if.then22, %do.body19.cleanup_crit_edge, %if.then11, %do.body8.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_out ], [ %call183, %if.end182 ], [ -19, %if.then11 ], [ -19, %do.body8.cleanup_crit_edge ], [ -6, %if.then22 ], [ -6, %do.body19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @com90io_found(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @arcnet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %4 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %6) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  %call6 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %8, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef 0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %dev) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %card_name = getelementptr i8, ptr %dev, i32 2596
  %11 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.22, ptr %card_name, align 4
  %hw = getelementptr i8, ptr %dev, i32 4956
  %command = getelementptr i8, ptr %dev, i32 4960
  %12 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @com90io_command, ptr %command, align 4
  %status = getelementptr i8, ptr %dev, i32 4964
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @com90io_status, ptr %status, align 4
  %intmask = getelementptr i8, ptr %dev, i32 4968
  %14 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @com90io_setmask, ptr %intmask, align 4
  %reset = getelementptr i8, ptr %dev, i32 4972
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @com90io_reset, ptr %reset, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hw, align 4
  %copy_to_card = getelementptr i8, ptr %dev, i32 4992
  %17 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @com90io_copy_to_card, ptr %copy_to_card, align 4
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %18 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @com90io_copy_from_card, ptr %copy_from_card, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 22, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i, align 4
  %add = add i32 %1, 2
  %and23 = and i32 %add, 1048575
  %add24 = or i32 %and23, -18874368
  %22 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %21) #6, !srcloc !103
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %24, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %add7.i = add i32 %24, 14
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %26 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 1) #6, !srcloc !103
  %add11.i = add i32 %24, 12
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %27 = inttoptr i32 %add13.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %29 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %30 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %call27 = call i32 @register_netdev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body48, label %do.body30

do.body30:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  call void @arm_heavy_mb() #6
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %33 = and i8 %32, -3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %33) #6, !srcloc !103
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call45 = call ptr @free_irq(i32 noundef %35, ptr noundef %dev) #6
  %36 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr, align 32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %37, i32 noundef 16) #6
  br label %cleanup

do.body48:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %38 = load i32, ptr @arcnet_debug, align 4
  %and49 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %if.then51

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr, align 64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv52 = zext i8 %42 to i32
  %43 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_addr, align 32
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv52, i32 noundef %44, i32 noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body48.cleanup_crit_edge, %do.body30, %if.then8, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.body30 ], [ -16, %if.then8 ], [ -19, %if.then2 ], [ -19, %do.body.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %do.body48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90io_command(ptr nocapture noundef readonly %dev, i32 noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %conv1 = trunc i32 %cmd to i8
  %sext = shl i32 %1, 16
  %conv2 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv2, 1
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv1) #6, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com90io_status(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %sext = shl i32 %1, 16
  %conv1 = ashr exact i32 %sext, 16
  %and = and i32 %conv1, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %conv4 = zext i8 %3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90io_setmask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %conv1 = trunc i32 %mask to i8
  %sext = shl i32 %1, 16
  %conv2 = ashr exact i32 %sext, 16
  %and = and i32 %conv2, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv1) #6, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com90io_reset(ptr noundef %dev, i32 noundef %really_reset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %2 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sext77 = shl i32 %1, 16
  %conv1 = ashr exact i32 %sext77, 16
  %and2 = and i32 %conv1, 1048575
  %add3 = or i32 %and2, -18874368
  %3 = inttoptr i32 %add3 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %conv6 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %dev, i32 noundef %conv6) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %really_reset)
  %tobool7.not = icmp eq i32 %really_reset, 0
  %.pre = shl i32 %1, 16
  %.pre79 = ashr exact i32 %.pre, 16
  br i1 %tobool7.not, label %do.end.if.end18_crit_edge, label %if.then8

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %do.end
  %add11 = add nsw i32 %.pre79, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %5 = inttoptr i32 %add13 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then8
  %__ms.078 = phi i32 [ 300, %if.then8 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.078, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %while.body.if.end18_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %while.body.if.end18_crit_edge, %do.end.if.end18_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 30, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 4
  %add24 = add nsw i32 %.pre79, 2
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %11 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %10) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %add32 = add nsw i32 %.pre79, 1
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %12 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 14) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 22) #6, !srcloc !103
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %14, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %add7.i = add i32 %14, 14
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %16 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #6, !srcloc !103
  %add11.i = add i32 %14, 12
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %18)
  %cmp.not = icmp eq i8 %18, -47
  br i1 %cmp.not, label %do.body56, label %do.body48

do.body48:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %19 = load i32, ptr @arcnet_debug, align 4
  %and49 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %if.then51

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup

do.body56:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 13) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %if.then51, %do.body48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body56 ], [ 1, %if.then51 ], [ 1, %do.body48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90io_copy_to_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul30 = shl i32 %bufnum, 9
  %add31 = add i32 %mul30, %offset
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %add31, 8
  %2 = trunc i32 %shr.i to i8
  %conv.i = or i8 %2, 64
  %add.i = add i32 %1, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %conv6.i = trunc i32 %add31 to i8
  %add7.i = add i32 %1, 14
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %4 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv6.i) #6, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not21.i = icmp eq i32 %count, 0
  br i1 %tobool.not21.i, label %entry.put_whole_buffer.exit_crit_edge, label %do.body11.lr.ph.i

entry.put_whole_buffer.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_whole_buffer.exit

do.body11.lr.ph.i:                                ; preds = %entry
  %add14.i = add i32 %1, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %5 = inttoptr i32 %add16.i to ptr
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.lr.ph.i
  %dest.addr.023.i = phi ptr [ %buf, %do.body11.lr.ph.i ], [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ]
  %length.addr.022.i = phi i32 [ %count, %do.body11.lr.ph.i ], [ %dec.i, %do.body11.i.do.body11.i_crit_edge ]
  %dec.i = add i32 %length.addr.022.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %incdec.ptr.i = getelementptr i8, ptr %dest.addr.023.i, i32 1
  %6 = ptrtoint ptr %dest.addr.023.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dest.addr.023.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %7) #6, !srcloc !103
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body11.i.put_whole_buffer.exit_crit_edge, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

do.body11.i.put_whole_buffer.exit_crit_edge:      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_whole_buffer.exit

put_whole_buffer.exit:                            ; preds = %do.body11.i.put_whole_buffer.exit_crit_edge, %entry.put_whole_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90io_copy_from_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul30 = shl i32 %bufnum, 9
  %add31 = add i32 %mul30, %offset
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %add31, 8
  %2 = trunc i32 %shr.i to i8
  %conv.i = or i8 %2, 64
  %add.i = add i32 %1, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %conv6.i = trunc i32 %add31 to i8
  %add7.i = add i32 %1, 14
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %4 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv6.i) #6, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not19.i = icmp eq i32 %count, 0
  br i1 %tobool.not19.i, label %entry.get_whole_buffer.exit_crit_edge, label %while.body.lr.ph.i

entry.get_whole_buffer.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_whole_buffer.exit

while.body.lr.ph.i:                               ; preds = %entry
  %add11.i = add i32 %1, 12
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %5 = inttoptr i32 %add13.i to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %length.addr.021.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dest.addr.020.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %length.addr.021.i, -1
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %incdec.ptr.i = getelementptr i8, ptr %dest.addr.020.i, i32 1
  %7 = ptrtoint ptr %dest.addr.020.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %dest.addr.020.i, align 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.get_whole_buffer.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.get_whole_buffer.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_whole_buffer.exit

get_whole_buffer.exit:                            ; preds = %while.body.i.get_whole_buffer.exit_crit_edge, %entry.get_whole_buffer.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_io, !1, !"__param_io", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/com90io.c", i32 350, i32 1}
!2 = !{ptr @__UNIQUE_ID_iotype352, !1, !"__UNIQUE_ID_iotype352", i1 false, i1 false}
!3 = !{ptr @__param_irq, !4, !"__param_irq", i1 false, i1 false}
!4 = !{!"../drivers/net/arcnet/com90io.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_irqtype353, !4, !"__UNIQUE_ID_irqtype353", i1 false, i1 false}
!6 = !{ptr @__param_device, !7, !"__param_device", i1 false, i1 false}
!7 = !{!"../drivers/net/arcnet/com90io.c", i32 352, i32 1}
!8 = !{ptr @__UNIQUE_ID_devicetype354, !7, !"__UNIQUE_ID_devicetype354", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file355, !10, !"__UNIQUE_ID_file355", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/com90io.c", i32 353, i32 1}
!11 = !{ptr @__UNIQUE_ID_license356, !10, !"__UNIQUE_ID_license356", i1 false, i1 false}
!12 = !{ptr @__setup_com90io_setup, !13, !"__setup_com90io_setup", i1 false, i1 false}
!13 = !{!"../drivers/net/arcnet/com90io.c", i32 377, i32 1}
!14 = !{ptr @__initcall__kmod_com90io__357_425_com90io_init6, !15, !"__initcall__kmod_com90io__357_425_com90io_init6", i1 false, i1 false}
!15 = !{!"../drivers/net/arcnet/com90io.c", i32 425, i32 1}
!16 = !{ptr @__exitcall_com90io_exit, !17, !"__exitcall_com90io_exit", i1 false, i1 false}
!17 = !{!"../drivers/net/arcnet/com90io.c", i32 426, i32 1}
!18 = !{ptr @io, !19, !"io", i1 false, i1 false}
!19 = !{!"../drivers/net/arcnet/com90io.c", i32 346, i32 12}
!20 = !{ptr @irq, !21, !"irq", i1 false, i1 false}
!21 = !{!"../drivers/net/arcnet/com90io.c", i32 347, i32 12}
!22 = !{ptr @my_dev, !23, !"my_dev", i1 false, i1 false}
!23 = !{!"../drivers/net/arcnet/com90io.c", i32 380, i32 27}
!24 = !{ptr @__param_str_io, !1, !"__param_str_io", i1 false, i1 false}
!25 = !{ptr @__param_str_irq, !4, !"__param_str_irq", i1 false, i1 false}
!26 = !{ptr @__param_str_device, !7, !"__param_str_device", i1 false, i1 false}
!27 = !{ptr @__param_string_device, !7, !"__param_string_device", i1 false, i1 false}
!28 = !{ptr @device, !29, !"device", i1 false, i1 false}
!29 = !{!"../drivers/net/arcnet/com90io.c", i32 348, i32 13}
!30 = !{ptr @__setup_str_com90io_setup, !13, !"__setup_str_com90io_setup", i1 false, i1 false}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/arcnet/com90io.c", i32 365, i32 3}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @com90io_setup._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @com90io_setup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/arcnet/com90io.c", i32 374, i32 36}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/arcnet/com90io.c", i32 136, i32 3}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @com90io_probe._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @com90io_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/arcnet/com90io.c", i32 137, i32 3}
!47 = !{ptr @com90io_probe._entry.7, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @com90io_probe._entry_ptr.9, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/arcnet/com90io.c", i32 141, i32 3}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/arcnet/com90io.c", i32 144, i32 7}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/arcnet/com90io.c", i32 145, i32 3}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/arcnet/com90io.c", i32 150, i32 3}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/arcnet/com90io.c", i32 160, i32 3}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/arcnet/com90io.c", i32 164, i32 2}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/arcnet/com90io.c", i32 169, i32 2}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/arcnet/com90io.c", i32 175, i32 3}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/arcnet/com90io.c", i32 189, i32 3}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/arcnet/com90io.c", i32 206, i32 4}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/arcnet/com90io.c", i32 229, i32 4}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/arcnet/com90io.c", i32 230, i32 3}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/arcnet/com90io.c", i32 241, i32 18}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/arcnet/com90io.c", i32 266, i32 2}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/arcnet/com90io.c", i32 284, i32 2}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/arcnet/com90io.c", i32 302, i32 3}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/arcnet/com90io.c", i32 335, i32 2}
!83 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !82, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!86 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/arcnet/com90io.c", i32 342, i32 2}
!89 = distinct !{null, !88, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!90 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2156027684}
!101 = !{i64 6719475}
!102 = !{i64 2156027486}
!103 = !{i64 6719080}
!104 = !{i64 2155956091}
!105 = !{i64 2155963183}
!106 = !{i64 2155964870}
!107 = !{i64 2155970618}
!108 = !{i64 2155973956}
!109 = !{i64 2155977049}
!110 = !{i64 2155977473}
!111 = !{i64 2155977887}
!112 = !{i64 2155978376}
!113 = !{i64 2155981564}
!114 = !{i64 2155982510}
!115 = !{i64 2155988703}
!116 = !{i64 2155942035}
!117 = !{i64 2155942473}
!118 = !{i64 2155942962}
!119 = !{i64 2155989913}
!120 = !{i64 2155989715}
!121 = !{i64 2156004037}
!122 = !{i64 2156004521}
!123 = !{i64 2156004806}
!124 = !{i64 2155994657}
!125 = !{i64 2155997845}
!126 = !{i64 2155999486}
!127 = !{i64 2155999926}
!128 = !{i64 2156000366}
!129 = !{i64 2156003623}
!130 = !{i64 2155944539}
!131 = !{i64 2155944977}
!132 = !{i64 2155945407}
!133 = !{i64 2155943287}
!134 = !{i64 2155943725}
!135 = !{i64 2155944214}
