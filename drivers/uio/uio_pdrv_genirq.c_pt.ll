; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_pdrv_genirq.c_pt.bc'
source_filename = "../drivers/uio/uio_pdrv_genirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }
%struct.uio_pdrv_genirq_platdata = type { ptr, %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_of_id = internal constant [22 x i8] c"uio_pdrv_genirq.of_id\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_of_id = internal constant %struct.kparam_string { i32 128, ptr getelementptr (i8, ptr @uio_of_genirq_match, i64 64) }, align 4
@__param_of_id = internal constant %struct.kernel_param { ptr @__param_str_of_id, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_string_of_id } }, section "__param", align 4
@__UNIQUE_ID_of_idtype229 = internal constant [38 x i8] c"uio_pdrv_genirq.parmtype=of_id:string\00", section ".modinfo", align 1
@__UNIQUE_ID_of_id230 = internal constant [78 x i8] c"uio_pdrv_genirq.parm=of_id:Openfirmware id of the device to be handled by uio\00", section ".modinfo", align 1
@__initcall__kmod_uio_pdrv_genirq__231_296_uio_pdrv_genirq_init6 = internal global ptr @uio_pdrv_genirq_init, section ".initcall6.init", align 4
@uio_pdrv_genirq = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uio_pdrv_genirq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uio_of_genirq_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_pdrv_genirq_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uio_pdrv_genirq_exit = internal global ptr @uio_pdrv_genirq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [35 x i8] c"uio_pdrv_genirq.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [84 x i8] c"uio_pdrv_genirq.description=Userspace I/O platform driver with generic IRQ handling\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [49 x i8] c"uio_pdrv_genirq.file=drivers/uio/uio_pdrv_genirq\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [31 x i8] c"uio_pdrv_genirq.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [47 x i8] c"uio_pdrv_genirq.alias=platform:uio_pdrv_genirq\00", section ".modinfo", align 1
@uio_of_genirq_match = internal global { [2 x %struct.of_device_id], [120 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uio_pdrv_genirq\00", [16 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_pdrv_genirq_runtime_nop, ptr @uio_pdrv_genirq_runtime_nop, ptr null }, [36 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to kmalloc\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uio_pdrv_genirq_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/uio/uio_pdrv_genirq.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr = internal global ptr @uio_pdrv_genirq_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,uio-name\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devicetree\00", [21 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.11 = internal global ptr @uio_pdrv_genirq_probe._entry.9, section ".printk_index", align 4
@uio_pdrv_genirq_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt configuration error\0A\00", [33 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.14 = internal global ptr @uio_pdrv_genirq_probe._entry.12, section ".printk_index", align 4
@uio_pdrv_genirq_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.16 = internal global ptr @uio_pdrv_genirq_probe._entry.15, section ".printk_index", align 4
@uio_pdrv_genirq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.20 = internal global ptr @uio_pdrv_genirq_probe._entry.18, section ".printk_index", align 4
@uio_pdrv_genirq_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disable lazy unmask\0A\00", [43 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device has more than 5 I/O memory resources.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.25 = internal global ptr @uio_pdrv_genirq_probe._entry.22, section ".printk_index", align 4
@uio_pdrv_genirq_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register uio device\0A\00", [33 x i8] zeroinitializer }, align 32
@uio_pdrv_genirq_probe._entry_ptr.28 = internal global ptr @uio_pdrv_genirq_probe._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967290]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"uio_pdrv_genirq\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 287, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"uio_of_genirq_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 278, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 290, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"uio_pdrv_genirq_dev_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 272, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 126, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 130, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 134, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 136, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 141, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 147, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 153, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 158, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 170, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 187, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 201, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [33 x i8] c"../drivers/uio/uio_pdrv_genirq.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 250, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_of_id230, ptr @__UNIQUE_ID_of_idtype229, ptr @__exitcall_uio_pdrv_genirq_exit, ptr @__initcall__kmod_uio_pdrv_genirq__231_296_uio_pdrv_genirq_init6, ptr @__param_of_id, ptr @uio_pdrv_genirq_exit, ptr @uio_pdrv_genirq_probe._entry, ptr @uio_pdrv_genirq_probe._entry.12, ptr @uio_pdrv_genirq_probe._entry.15, ptr @uio_pdrv_genirq_probe._entry.18, ptr @uio_pdrv_genirq_probe._entry.22, ptr @uio_pdrv_genirq_probe._entry.26, ptr @uio_pdrv_genirq_probe._entry.9, ptr @uio_pdrv_genirq_probe._entry_ptr, ptr @uio_pdrv_genirq_probe._entry_ptr.11, ptr @uio_pdrv_genirq_probe._entry_ptr.14, ptr @uio_pdrv_genirq_probe._entry_ptr.16, ptr @uio_pdrv_genirq_probe._entry_ptr.20, ptr @uio_pdrv_genirq_probe._entry_ptr.25, ptr @uio_pdrv_genirq_probe._entry_ptr.28, ptr @uio_pdrv_genirq, ptr @uio_of_genirq_match, ptr @.str, ptr @uio_pdrv_genirq_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @uio_pdrv_genirq_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_of_genirq_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_pdrv_genirq_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uio_pdrv_genirq, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uio_pdrv_genirq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @uio_pdrv_genirq) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #6
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !80
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  br label %cleanup151

if.end:                                           ; preds = %if.then
  %call7 = call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call11 = call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef %4, i32 noundef 3264) #6
  br label %if.end17.thread

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #6
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.else, %if.then9
  %call14.sink = phi ptr [ %call11, %if.then9 ], [ %call14, %if.else ]
  %5 = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14.sink, ptr %5, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.8, ptr %version, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #6
  br label %lor.lhs.false

if.end17:                                         ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end17.do.end27_crit_edge, label %if.end17.lor.lhs.false_crit_edge

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end17.do.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

lor.lhs.false:                                    ; preds = %if.end17.lor.lhs.false_crit_edge, %if.end17.thread
  %uioinfo.0244 = phi ptr [ %call.i, %if.end17.thread ], [ %9, %if.end17.lor.lhs.false_crit_edge ]
  %name19 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 1
  %10 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name19, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %lor.lhs.false.do.end27_crit_edge, label %lor.lhs.false21

lor.lhs.false.do.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %version22 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 2
  %12 = ptrtoint ptr %version22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %version22, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %lor.lhs.false21.do.end27_crit_edge, label %if.end29

lor.lhs.false21.do.end27_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false21.do.end27_crit_edge, %lor.lhs.false.do.end27_crit_edge, %if.end17.do.end27_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup151

if.end29:                                         ; preds = %lor.lhs.false21
  %handler = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 8
  %14 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler, align 4
  %tobool30.not = icmp eq ptr %15, null
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end29.do.end38_crit_edge

if.end29.do.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

lor.lhs.false31:                                  ; preds = %if.end29
  %irqcontrol = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 12
  %16 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqcontrol, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false31.do.end38_crit_edge

lor.lhs.false31.do.end38_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 6
  %18 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_flags, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end40, label %lor.lhs.false33.do.end38_crit_edge

lor.lhs.false33.do.end38_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end38:                                         ; preds = %lor.lhs.false33.do.end38_crit_edge, %lor.lhs.false31.do.end38_crit_edge, %if.end29.do.end38_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup151

if.end40:                                         ; preds = %lor.lhs.false33
  %call.i240 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool43.not = icmp eq ptr %call.i240, null
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup151

if.end49:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %call.i240 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %uioinfo.0244, ptr %call.i240, align 4
  %lock = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %call.i240, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @uio_pdrv_genirq_probe.__key, i16 noundef signext 3) #6
  %flags = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %call.i240, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags, align 4
  %pdev55 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %call.i240, i32 0, i32 3
  %22 = ptrtoint ptr %pdev55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pdev, ptr %pdev55, align 4
  %irq = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 5
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool56.not = icmp eq i32 %24, 0
  br i1 %tobool56.not, label %if.then57, label %if.end49.if.then78_crit_edge

if.end49.if.then78_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

if.then57:                                        ; preds = %if.end49
  %call58 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call58, ptr %irq, align 4
  %26 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call58, label %if.else65 [
    i32 -6, label %if.end75.thread
    i32 -517, label %if.then57.cleanup151_crit_edge
  ]

if.then57.cleanup151_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

if.end75.thread:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %irq, align 4
  br label %if.end98

if.else65:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp66 = icmp slt i32 %call58, 0
  br i1 %cmp66, label %do.end70, label %if.end75

do.end70:                                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup151

if.end75:                                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool77.not = icmp eq i32 %call58, 0
  br i1 %tobool77.not, label %if.end75.if.end98_crit_edge, label %if.end75.if.then78_crit_edge

if.end75.if.then78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

if.end75.if.end98_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then78:                                        ; preds = %if.end75.if.then78_crit_edge, %if.end49.if.then78_crit_edge
  %28 = phi i32 [ %call58, %if.end75.if.then78_crit_edge ], [ %24, %if.end49.if.then78_crit_edge ]
  %call80 = call ptr @irq_get_irq_data(i32 noundef %28) #6
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then78.if.end98_crit_edge, label %land.lhs.true

if.then78.if.end98_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

land.lhs.true:                                    ; preds = %if.then78
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call80, i32 0, i32 3
  %29 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and83 = and i32 %32, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true.if.end98_crit_edge, label %do.body86

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

do.body86:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uio_pdrv_genirq_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uio_pdrv_genirq_probe, %if.then91)) #6
          to label %do.end95 [label %if.then91], !srcloc !81

if.then91:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uio_pdrv_genirq_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body86
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @irq_modify_status(i32 noundef %34, i32 noundef 0, i32 noundef 524288) #6
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %land.lhs.true.if.end98_crit_edge, %if.then78.if.end98_crit_edge, %if.end75.if.end98_crit_edge, %if.end75.thread
  %mem = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 3
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %35 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp99256.not = icmp eq i32 %36, 0
  br i1 %cmp99256.not, label %if.end98.for.end_crit_edge, label %for.body.lr.ph

if.end98.for.end_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end98
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %arrayidx106 = getelementptr %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %uiomem.0257 = phi ptr [ %mem, %for.body.lr.ph ], [ %uiomem.1.ph, %for.inc.for.body_crit_edge ]
  %37 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource, align 8
  %arrayidx100 = getelementptr %struct.resource, ptr %38, i32 %i.0258
  %flags101 = getelementptr %struct.resource, ptr %38, i32 %i.0258, i32 3
  %39 = ptrtoint ptr %flags101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %40)
  %cmp102.not = icmp eq i32 %40, 512
  br i1 %cmp102.not, label %if.end104, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end104:                                        ; preds = %for.body
  %cmp107.not = icmp ult ptr %uiomem.0257, %arrayidx106
  br i1 %cmp107.not, label %if.end113, label %cleanup123

if.end113:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %memtype = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0257, i32 0, i32 4
  %41 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %memtype, align 4
  %42 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx100, align 4
  %and114 = and i32 %43, -4096
  %addr = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0257, i32 0, i32 1
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and114, ptr %addr, align 4
  %45 = load i32, ptr %arrayidx100, align 4
  %and116 = and i32 %45, 4095
  %offs = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0257, i32 0, i32 2
  %46 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and116, ptr %offs, align 4
  %end.i = getelementptr %struct.resource, ptr %38, i32 %i.0258, i32 1
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end.i, align 4
  %49 = load i32, ptr %arrayidx100, align 4
  %add.i = or i32 %and116, 4096
  %add = add i32 %add.i, %48
  %sub = sub i32 %add, %49
  %and120 = and i32 %sub, -4096
  %size = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0257, i32 0, i32 3
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and120, ptr %size, align 4
  %name121 = getelementptr %struct.resource, ptr %38, i32 %i.0258, i32 2
  %51 = ptrtoint ptr %name121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name121, align 4
  %53 = ptrtoint ptr %uiomem.0257 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %uiomem.0257, align 4
  %incdec.ptr = getelementptr %struct.uio_mem, ptr %uiomem.0257, i32 1
  br label %for.inc

cleanup123:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %for.end

for.inc:                                          ; preds = %if.end113, %for.body.for.inc_crit_edge
  %uiomem.1.ph = phi ptr [ %uiomem.0257, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %if.end113 ]
  %inc = add nuw i32 %i.0258, 1
  %54 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_resources, align 4
  %cmp99 = icmp ult i32 %inc, %55
  br i1 %cmp99, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup123, %if.end98.for.end_crit_edge
  %uiomem.0255 = phi ptr [ %uiomem.0257, %cleanup123 ], [ %mem, %if.end98.for.end_crit_edge ], [ %uiomem.1.ph, %for.inc.for.end_crit_edge ]
  %arrayidx127 = getelementptr %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 4
  %cmp128260 = icmp ult ptr %uiomem.0255, %arrayidx127
  br i1 %cmp128260, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %uiomem.3261 = phi ptr [ %incdec.ptr130, %while.body.while.body_crit_edge ], [ %uiomem.0255, %for.end.while.body_crit_edge ]
  %size129 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.3261, i32 0, i32 3
  %56 = ptrtoint ptr %size129 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %size129, align 4
  %incdec.ptr130 = getelementptr %struct.uio_mem, ptr %uiomem.3261, i32 1
  %cmp128 = icmp ult ptr %incdec.ptr130, %arrayidx127
  br i1 %cmp128, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %57 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @uio_pdrv_genirq_handler, ptr %handler, align 4
  %58 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @uio_pdrv_genirq_irqcontrol, ptr %irqcontrol, align 4
  %open = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 10
  %59 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @uio_pdrv_genirq_open, ptr %open, align 4
  %release = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 11
  %60 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @uio_pdrv_genirq_release, ptr %release, align 4
  %priv133 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0244, i32 0, i32 7
  %61 = ptrtoint ptr %priv133 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i240, ptr %priv133, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i241 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @uio_pdrv_genirq_cleanup, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool.not.i = icmp eq i32 %call.i241, 0
  br i1 %tobool.not.i, label %if.end140, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup151

if.end140:                                        ; preds = %while.end
  %62 = ptrtoint ptr %call.i240 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i240, align 4
  %call143 = call i32 @__devm_uio_register_device(ptr noundef null, ptr noundef %dev, ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end140.cleanup151_crit_edge, label %do.end148

if.end140.cleanup151_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup151

do.end148:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup151

cleanup151:                                       ; preds = %do.end148, %if.end140.cleanup151_crit_edge, %devm_add_action_or_reset.exit, %do.end70, %if.then57.cleanup151_crit_edge, %do.end47, %do.end38, %do.end27, %do.end
  %retval.1 = phi i32 [ -22, %do.end38 ], [ %call58, %do.end70 ], [ -12, %do.end47 ], [ -22, %do.end27 ], [ -12, %do.end ], [ %call58, %if.then57.cleanup151_crit_edge ], [ %call.i241, %devm_add_action_or_reset.exit ], [ %call143, %do.end148 ], [ 0, %if.end140.cleanup151_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %flags = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or.i = or i32 %3, 1
  store i32 %or.i, ptr %flags, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq_nosync(i32 noundef %irq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_irqcontrol(ptr nocapture noundef readonly %dev_info, i32 noundef %irq_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_on)
  %tobool.not = icmp eq i32 %irq_on, 0
  %flags10 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags10, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and.i = and i32 %3, -2
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %flags10, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.then.if.end16_crit_edge, label %if.then9

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %6) #6
  br label %if.end16

if.else:                                          ; preds = %entry
  %or.i = or i32 %3, 1
  %7 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %flags10, align 4
  %and.i23 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool12.not = icmp eq i32 %and.i23, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %irq14 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 5
  %8 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq14, align 4
  tail call void @disable_irq_nosync(i32 noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else.if.end16_crit_edge, %if.then9, %if.then.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_open(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_pdrv_genirq_release(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pdev = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uio_pdrv_genirq_cleanup(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uio_pdrv_genirq_runtime_nop(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__param_of_id, !1, !"__param_of_id", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 283, i32 1}
!2 = !{ptr @__UNIQUE_ID_of_idtype229, !1, !"__UNIQUE_ID_of_idtype229", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_of_id230, !4, !"__UNIQUE_ID_of_id230", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 284, i32 1}
!5 = !{ptr @__initcall__kmod_uio_pdrv_genirq__231_296_uio_pdrv_genirq_init6, !6, !"__initcall__kmod_uio_pdrv_genirq__231_296_uio_pdrv_genirq_init6", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 296, i32 1}
!7 = !{ptr @__exitcall_uio_pdrv_genirq_exit, !6, !"__exitcall_uio_pdrv_genirq_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author232, !9, !"__UNIQUE_ID_author232", i1 false, i1 false}
!9 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 298, i32 1}
!10 = !{ptr @__UNIQUE_ID_description233, !11, !"__UNIQUE_ID_description233", i1 false, i1 false}
!11 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 299, i32 1}
!12 = !{ptr @__UNIQUE_ID_file234, !13, !"__UNIQUE_ID_file234", i1 false, i1 false}
!13 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 300, i32 1}
!14 = !{ptr @__UNIQUE_ID_license235, !13, !"__UNIQUE_ID_license235", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias236, !16, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!16 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 301, i32 1}
!17 = !{ptr @__param_str_of_id, !1, !"__param_str_of_id", i1 false, i1 false}
!18 = !{ptr @__param_string_of_id, !1, !"__param_string_of_id", i1 false, i1 false}
!19 = !{ptr @uio_of_genirq_match, !20, !"uio_of_genirq_match", i1 false, i1 false}
!20 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 278, i32 28}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 290, i32 11}
!23 = !{ptr @uio_pdrv_genirq, !24, !"uio_pdrv_genirq", i1 false, i1 false}
!24 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 287, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 126, i32 4}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @uio_pdrv_genirq_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @uio_pdrv_genirq_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 130, i32 38}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 134, i32 14}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 136, i32 22}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 141, i32 3}
!41 = !{ptr @uio_pdrv_genirq_probe._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 147, i32 3}
!45 = !{ptr @uio_pdrv_genirq_probe._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @uio_pdrv_genirq_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 153, i32 3}
!49 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @uio_pdrv_genirq_probe.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 158, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 170, i32 4}
!55 = !{ptr @uio_pdrv_genirq_probe._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 187, i32 4}
!59 = !{ptr @uio_pdrv_genirq_probe.__UNIQUE_ID_ddebug228, !58, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 201, i32 4}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @uio_pdrv_genirq_probe._entry.22, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 250, i32 3}
!67 = !{ptr @uio_pdrv_genirq_probe._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @uio_pdrv_genirq_probe._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @uio_pdrv_genirq_dev_pm_ops, !70, !"uio_pdrv_genirq_dev_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/uio/uio_pdrv_genirq.c", i32 272, i32 32}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i64 2148296268, i64 2148296273, i64 2148296286, i64 2148296330, i64 2148296364, i64 2148296385}
