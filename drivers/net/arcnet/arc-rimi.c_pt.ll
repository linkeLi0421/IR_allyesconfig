; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/arc-rimi.c_pt.bc'
source_filename = "../drivers/net/arcnet/arc-rimi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__param_str_node = internal constant [14 x i8] c"arc_rimi.node\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@node = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_node = internal constant %struct.kernel_param { ptr @__param_str_node, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @node } }, section "__param", align 4
@__UNIQUE_ID_nodetype345 = internal constant [27 x i8] c"arc_rimi.parmtype=node:int\00", section ".modinfo", align 1
@__param_str_io = internal constant [12 x i8] c"arc_rimi.io\00", align 1
@io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype346 = internal constant [25 x i8] c"arc_rimi.parmtype=io:int\00", section ".modinfo", align 1
@__param_str_irq = internal constant [13 x i8] c"arc_rimi.irq\00", align 1
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype347 = internal constant [26 x i8] c"arc_rimi.parmtype=irq:int\00", section ".modinfo", align 1
@__param_str_device = internal constant [16 x i8] c"arc_rimi.device\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_device = internal constant %struct.kparam_string { i32 9, ptr @device }, align 4
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_device } }, section "__param", align 4
@__UNIQUE_ID_devicetype348 = internal constant [32 x i8] c"arc_rimi.parmtype=device:string\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [42 x i8] c"arc_rimi.file=drivers/net/arcnet/arc-rimi\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [21 x i8] c"arc_rimi.license=GPL\00", section ".modinfo", align 1
@my_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@__setup_str_arcrimi_setup = internal constant [9 x i8] c"arcrimi=\00", section ".init.rodata", align 1
@__setup_arcrimi_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_arcrimi_setup, ptr @arcrimi_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_arc_rimi__351_384_arc_rimi_init6 = internal global ptr @arc_rimi_init, section ".initcall6.init", align 4
@__exitcall_arc_rimi_exit = internal global ptr @arc_rimi_exit, section ".exitcall.exit", align 4
@device = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@arcrimi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013arcnet:arc_rimi: Too many arguments\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arcrimi_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/arcnet/arc-rimi.c\00", [34 x i8] zeroinitializer }, align 32
@arcrimi_setup._entry_ptr = internal global ptr @arcrimi_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@arcrimi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016arcnet:arc_rimi: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arcrimi_probe\00", [18 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr = internal global ptr @arcrimi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RIM I (entirely mem-mapped) support\00", [60 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016arcnet:arc_rimi: E-mail me if you actually test the RIM I driver, please!\0A\00", [51 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr.9 = internal global ptr @arcrimi_probe._entry.7, section ".printk_index", align 4
@arcrimi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016arcnet:arc_rimi: Given: node %02Xh, shmem %lXh, irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr.12 = internal global ptr @arcrimi_probe._entry.10, section ".printk_index", align 4
@arcrimi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013arcnet:arc_rimi: No autoprobe for RIM I; you must specify the shmem and irq!\0A\00", [48 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr.15 = internal global ptr @arcrimi_probe._entry.13, section ".printk_index", align 4
@arcrimi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013arcnet:arc_rimi: You need to specify your card's station ID!\0A\00", [32 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr.18 = internal global ptr @arcrimi_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arcnet (90xx)\00", [18 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015arcnet:arc_rimi: Card memory already allocated\0A\00", [46 x i8] zeroinitializer }, align 32
@arcrimi_probe._entry_ptr.22 = internal global ptr @arcrimi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Can't ioremap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arcnet (RIM I)\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get IRQ %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RIM I\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Card memory already allocated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't remap device memory!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ARCnet RIM I: station %02Xh found at IRQ %d, ShMem %lXh (%ld*%d bytes)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resetting %s (status=%02Xh)\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@___asan_gen_.38 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 306, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 307, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 308, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"my_dev\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 317, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 309, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 366, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 378, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 70, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 71, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 72, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 78, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 83, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 91, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 93, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 134, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 139, i32 49 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 142, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 179, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 198, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 205, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 213, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [33 x i8] c"../drivers/net/arcnet/arc-rimi.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 246, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_devicetype348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_iotype346, ptr @__UNIQUE_ID_irqtype347, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_nodetype345, ptr @__exitcall_arc_rimi_exit, ptr @__initcall__kmod_arc_rimi__351_384_arc_rimi_init6, ptr @__param_device, ptr @__param_io, ptr @__param_irq, ptr @__param_node, ptr @__setup_arcrimi_setup, ptr @arc_rimi_exit, ptr @arcrimi_probe._entry, ptr @arcrimi_probe._entry.10, ptr @arcrimi_probe._entry.13, ptr @arcrimi_probe._entry.16, ptr @arcrimi_probe._entry.20, ptr @arcrimi_probe._entry.7, ptr @arcrimi_probe._entry_ptr, ptr @arcrimi_probe._entry_ptr.12, ptr @arcrimi_probe._entry_ptr.15, ptr @arcrimi_probe._entry_ptr.18, ptr @arcrimi_probe._entry_ptr.22, ptr @arcrimi_probe._entry_ptr.9, ptr @arcrimi_setup._entry, ptr @arcrimi_setup._entry_ptr, ptr @node, ptr @io, ptr @irq, ptr @my_dev, ptr @device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcrimi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arc_rimi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @my_dev, align 4
  tail call void @unregister_netdev(ptr noundef %0) #6
  %mem_start = getelementptr i8, ptr %0, i32 5000
  %1 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem_start, align 4
  tail call void @iounmap(ptr noundef %2) #6
  %mem_start1 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %mem_start1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_start1, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_end, align 8
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %add) #6
  %irq = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %0) #6
  tail call void @free_arcdev(ptr noundef %0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_arcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcrimi_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ints) #6
  %0 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 3
  %3 = call ptr @memset(ptr %ints, i32 255, i32 32)
  %call = call ptr @get_options(ptr noundef %s, i32 noundef 8, ptr noundef nonnull %ints) #6
  %4 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ints, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb6_crit_edge
  ]

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

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
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @node, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %entry.sw.bb4_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  store i32 %10, ptr @irq, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %entry.sw.bb6_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  store i32 %12, ptr @io, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %sw.bb6.cleanup_crit_edge, label %if.then9

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @device, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ints) #6
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_rimi_init() #0 section ".init.text" align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_arcdev(ptr noundef nonnull @device) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @node, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %0, label %if.then2 [
    i32 0, label %if.end.if.end3_crit_edge
    i32 255, label %if.end.if.end3_crit_edge22
  ]

if.end.if.end3_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %0 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %2 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge22
  %5 = load i32, ptr @io, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mem_start, align 4
  %7 = load i32, ptr @irq, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5 = icmp eq i32 %7, 2
  %spec.select = select i1 %cmp5, i32 9, i32 %7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %irq, align 4
  %call10 = call fastcc i32 @arcrimi_probe(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void @free_arcdev(ptr noundef nonnull %call) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call, ptr @my_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then12 ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
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
define internal fastcc i32 @arcrimi_probe(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %1 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_addr, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_start, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %6, i32 noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mem_start9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %mem_start9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mem_start9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end.if.then14_crit_edge, label %lor.lhs.false

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %irq11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %11 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp12 = icmp slt i32 %12, 1
  br i1 %cmp12, label %lor.lhs.false.if.then14_crit_edge, label %if.end23

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %13 = load i32, ptr @arcnet_debug, align 4
  %and15 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.return_crit_edge, label %do.end19

if.then14.return_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %return

if.end23:                                         ; preds = %lor.lhs.false
  %dev_addr24 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr24, align 64
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp27 = icmp eq i8 %17, 0
  br i1 %cmp27, label %if.then29, label %if.end38

if.then29:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %18 = load i32, ptr @arcnet_debug, align 4
  %and30 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then29.return_crit_edge, label %do.end34

if.then29.return_crit_edge:                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %return

if.end38:                                         ; preds = %if.end23
  %call40 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 2048, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %19 = load i32, ptr @arcnet_debug, align 4
  %and43 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then42.return_crit_edge, label %do.end47

if.then42.return_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end47:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %return

if.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call fastcc i32 @arcrimi_found(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end51, %do.end47, %if.then42.return_crit_edge, %do.end34, %if.then29.return_crit_edge, %do.end19, %if.then14.return_crit_edge
  %retval.0 = phi i32 [ %call52, %if.end51 ], [ -19, %do.end19 ], [ -19, %if.then14.return_crit_edge ], [ -19, %do.end34 ], [ -19, %if.then29.return_crit_edge ], [ -19, %do.end47 ], [ -19, %if.then42.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arcrimi_found(ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_start, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef 2048) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_start, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 2048) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %4 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @arcnet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @iounmap(ptr noundef nonnull %call) #6
  %7 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_start, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef 2048) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %9 = load i32, ptr @arcnet_debug, align 4
  %and10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then7.cleanup_crit_edge, label %if.then12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %11) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_start, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call, i8 -47) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %add.ptr25 = getelementptr i8, ptr %call, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 -47) #6, !srcloc !109
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %14)
  %cmp = icmp eq i8 %14, -47
  br i1 %cmp, label %land.lhs.true, label %if.end17.if.end39_crit_edge

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end17
  %sub = add i32 %13, -2048
  %call30 = tail call fastcc i32 @check_mirror(i32 noundef %sub, i32 noundef 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true33:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub34 = add i32 %13, -4096
  %call35 = tail call fastcc i32 @check_mirror(i32 noundef %sub34, i32 noundef 2048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 1
  %spec.select = select i1 %cmp36, i32 4096, i32 2048
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true33, %land.lhs.true.if.end39_crit_edge, %if.end17.if.end39_crit_edge
  %mirror_size.0 = phi i32 [ 2048, %land.lhs.true.if.end39_crit_edge ], [ 2048, %if.end17.if.end39_crit_edge ], [ %spec.select, %land.lhs.true33 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end39
  %.pn = phi i32 [ %13, %if.end39 ], [ %first_mirror.0, %while.cond.while.cond_crit_edge ]
  %first_mirror.0 = sub i32 %.pn, %mirror_size.0
  %call41 = tail call fastcc i32 @check_mirror(i32 noundef %first_mirror.0, i32 noundef %mirror_size.0)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond46_crit_edge

while.cond.while.cond46_crit_edge:                ; preds = %while.cond
  br label %while.cond46

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.cond46:                                     ; preds = %while.cond46.while.cond46_crit_edge, %while.cond.while.cond46_crit_edge
  %.pn204 = phi i32 [ %last_mirror.0, %while.cond46.while.cond46_crit_edge ], [ %13, %while.cond.while.cond46_crit_edge ]
  %last_mirror.0 = add i32 %.pn204, %mirror_size.0
  %call47 = tail call fastcc i32 @check_mirror(i32 noundef %last_mirror.0, i32 noundef %mirror_size.0)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %while.cond46.while.cond46_crit_edge, label %while.end52

while.cond46.while.cond46_crit_edge:              ; preds = %while.cond46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond46

while.end52:                                      ; preds = %while.cond46
  %15 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.pn, ptr %mem_start, align 4
  %sub56 = add i32 %.pn204, 2047
  %mem_end = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub56, ptr %mem_end, align 8
  %card_name = getelementptr i8, ptr %dev, i32 2596
  %17 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.26, ptr %card_name, align 4
  %hw = getelementptr i8, ptr %dev, i32 4956
  %command = getelementptr i8, ptr %dev, i32 4960
  %18 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @arcrimi_command, ptr %command, align 4
  %status = getelementptr i8, ptr %dev, i32 4964
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @arcrimi_status, ptr %status, align 4
  %intmask = getelementptr i8, ptr %dev, i32 4968
  %20 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @arcrimi_setmask, ptr %intmask, align 4
  %reset = getelementptr i8, ptr %dev, i32 4972
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @arcrimi_reset, ptr %reset, align 4
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %hw, align 4
  %copy_to_card = getelementptr i8, ptr %dev, i32 4992
  %23 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @arcrimi_copy_to_card, ptr %copy_to_card, align 4
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %24 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @arcrimi_copy_from_card, ptr %copy_from_card, align 4
  tail call void @iounmap(ptr noundef nonnull %call) #6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef 2048) #6
  %25 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_start, align 4
  %27 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_end, align 8
  %sub67 = sub i32 1, %26
  %add68 = add i32 %sub67, %28
  %call69 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %add68, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.body72, label %if.end79

do.body72:                                        ; preds = %while.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %29 = load i32, ptr @arcnet_debug, align 4
  %and73 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.err_free_irq_crit_edge, label %if.then75

do.body72.err_free_irq_crit_edge:                 ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_irq

if.then75:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %err_free_irq

if.end79:                                         ; preds = %while.end52
  %30 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_start, align 4
  %32 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_end, align 8
  %sub83 = sub i32 1, %31
  %add84 = add i32 %sub83, %33
  %call85 = tail call ptr @ioremap(i32 noundef %31, i32 noundef %add84) #6
  %mem_start86 = getelementptr i8, ptr %dev, i32 5000
  %34 = ptrtoint ptr %mem_start86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call85, ptr %mem_start86, align 4
  %tobool88.not = icmp eq ptr %call85, null
  br i1 %tobool88.not, label %do.body90, label %if.end97

do.body90:                                        ; preds = %if.end79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %35 = load i32, ptr @arcnet_debug, align 4
  %and91 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.err_release_mem_crit_edge, label %if.then93

do.body90.err_release_mem_crit_edge:              ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release_mem

if.then93:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %err_release_mem

if.end97:                                         ; preds = %if.end79
  %add.ptr101 = getelementptr i8, ptr %call85, i32 1
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr101) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %37 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %38 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %39 to i32
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %40 = load i32, ptr @arcnet_debug, align 4
  %and106 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end97.do.end118_crit_edge, label %if.then108

if.end97.do.end118_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end118

if.then108:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv109 = zext i8 %44 to i32
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %47 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mem_start, align 4
  %49 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mem_end, align 8
  %sub114 = sub i32 1, %48
  %add115 = add i32 %sub114, %50
  %div = udiv i32 %add115, %mirror_size.0
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv109, i32 noundef %46, i32 noundef %48, i32 noundef %div, i32 noundef %mirror_size.0) #9
  br label %do.end118

do.end118:                                        ; preds = %if.then108, %if.end97.do.end118_crit_edge
  %call119 = call i32 @register_netdev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %do.end118.cleanup_crit_edge, label %err_unmap

do.end118.cleanup_crit_edge:                      ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_unmap:                                        ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %mem_start86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem_start86, align 4
  call void @iounmap(ptr noundef %52) #6
  br label %err_release_mem

err_release_mem:                                  ; preds = %err_unmap, %if.then93, %do.body90.err_release_mem_crit_edge
  %53 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mem_start, align 4
  %55 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mem_end, align 8
  %sub127 = sub i32 1, %54
  %add128 = add i32 %sub127, %56
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %54, i32 noundef %add128) #6
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_release_mem, %if.then75, %do.body72.err_free_irq_crit_edge
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call130 = call ptr @free_irq(i32 noundef %58, ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq, %do.end118.cleanup_crit_edge, %if.then12, %if.then7.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %err_free_irq ], [ -19, %if.then3 ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.then12 ], [ -19, %if.then7.cleanup_crit_edge ], [ 0, %do.end118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_mirror(i32 noundef %addr, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %addr, i32 noundef %size, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ioremap(i32 noundef %addr, i32 noundef %size) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call1) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %0)
  %cmp = icmp eq i8 %0, -47
  %. = zext i1 %cmp to i32
  tail call void @iounmap(ptr noundef nonnull %call1) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %res.1 = phi i32 [ %., %if.then3 ], [ -1, %if.end.if.end9_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %addr, i32 noundef %size) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %if.end9 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcrimi_command(ptr nocapture noundef readonly %dev, i32 noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %cmd to i8
  %add.ptr1 = getelementptr i8, ptr %1, i32 2049
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv) #6, !srcloc !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcrimi_status(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcrimi_setmask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %mask to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcrimi_reset(ptr noundef %dev, i32 noundef %really_reset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
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
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %dev, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %really_reset)
  %tobool4.not = icmp eq i32 %really_reset, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool4.not, label %do.body11, label %do.body6

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 -47) #6, !srcloc !109
  br label %cleanup

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr14 = getelementptr i8, ptr %1, i32 2049
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 14) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 22) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 13) #6, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.body6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcrimi_copy_to_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %mul = shl i32 %bufnum, 9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %offset
  tail call void @mmiocpy(ptr noundef %add.ptr2, ptr noundef %buf, i32 noundef %count) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcrimi_copy_from_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %mul = shl i32 %bufnum, 9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %offset
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr2, i32 noundef %count) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__param_node, !1, !"__param_node", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 311, i32 1}
!2 = !{ptr @__UNIQUE_ID_nodetype345, !1, !"__UNIQUE_ID_nodetype345", i1 false, i1 false}
!3 = !{ptr @__param_io, !4, !"__param_io", i1 false, i1 false}
!4 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 312, i32 1}
!5 = !{ptr @__UNIQUE_ID_iotype346, !4, !"__UNIQUE_ID_iotype346", i1 false, i1 false}
!6 = !{ptr @__param_irq, !7, !"__param_irq", i1 false, i1 false}
!7 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 313, i32 1}
!8 = !{ptr @__UNIQUE_ID_irqtype347, !7, !"__UNIQUE_ID_irqtype347", i1 false, i1 false}
!9 = !{ptr @__param_device, !10, !"__param_device", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 314, i32 1}
!11 = !{ptr @__UNIQUE_ID_devicetype348, !10, !"__UNIQUE_ID_devicetype348", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file349, !13, !"__UNIQUE_ID_file349", i1 false, i1 false}
!13 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 315, i32 1}
!14 = !{ptr @__UNIQUE_ID_license350, !13, !"__UNIQUE_ID_license350", i1 false, i1 false}
!15 = !{ptr @__setup_arcrimi_setup, !16, !"__setup_arcrimi_setup", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 381, i32 1}
!17 = !{ptr @__initcall__kmod_arc_rimi__351_384_arc_rimi_init6, !18, !"__initcall__kmod_arc_rimi__351_384_arc_rimi_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 384, i32 1}
!19 = !{ptr @__exitcall_arc_rimi_exit, !20, !"__exitcall_arc_rimi_exit", i1 false, i1 false}
!20 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 385, i32 1}
!21 = !{ptr @node, !22, !"node", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 306, i32 12}
!23 = !{ptr @io, !24, !"io", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 307, i32 12}
!25 = !{ptr @irq, !26, !"irq", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 308, i32 12}
!27 = !{ptr @my_dev, !28, !"my_dev", i1 false, i1 false}
!28 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 317, i32 27}
!29 = !{ptr @__param_str_node, !1, !"__param_str_node", i1 false, i1 false}
!30 = !{ptr @__param_str_io, !4, !"__param_str_io", i1 false, i1 false}
!31 = !{ptr @__param_str_irq, !7, !"__param_str_irq", i1 false, i1 false}
!32 = !{ptr @__param_str_device, !10, !"__param_str_device", i1 false, i1 false}
!33 = !{ptr @__param_string_device, !10, !"__param_string_device", i1 false, i1 false}
!34 = !{ptr @device, !35, !"device", i1 false, i1 false}
!35 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 309, i32 13}
!36 = !{ptr @__setup_str_arcrimi_setup, !16, !"__setup_str_arcrimi_setup", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 366, i32 3}
!39 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @arcrimi_setup._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @arcrimi_setup._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 378, i32 36}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 70, i32 3}
!47 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @arcrimi_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @arcrimi_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 71, i32 3}
!53 = !{ptr @arcrimi_probe._entry.7, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arcrimi_probe._entry_ptr.9, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 72, i32 3}
!57 = !{ptr @arcrimi_probe._entry.10, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @arcrimi_probe._entry_ptr.12, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 78, i32 4}
!61 = !{ptr @arcrimi_probe._entry.13, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @arcrimi_probe._entry_ptr.15, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 83, i32 4}
!65 = !{ptr @arcrimi_probe._entry.16, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @arcrimi_probe._entry_ptr.18, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 91, i32 7}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 93, i32 4}
!71 = !{ptr @arcrimi_probe._entry.20, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @arcrimi_probe._entry_ptr.22, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 134, i32 3}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 139, i32 49}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 142, i32 3}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 179, i32 18}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 198, i32 3}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 205, i32 3}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 213, i32 2}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 246, i32 2}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 294, i32 2}
!91 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !90, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!94 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/arcnet/arc-rimi.c", i32 303, i32 2}
!97 = distinct !{null, !96, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!98 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2155962930}
!109 = !{i64 6718051}
!110 = !{i64 2155963240}
!111 = !{i64 6718446}
!112 = !{i64 2155963569}
!113 = !{i64 2155969702}
!114 = !{i64 2155952867}
!115 = !{i64 2155980006}
!116 = !{i64 2155979743}
!117 = !{i64 2155979418}
!118 = !{i64 2155975000}
!119 = !{i64 2155978740}
!120 = !{i64 2155979091}
