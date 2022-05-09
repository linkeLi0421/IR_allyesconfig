; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_dmem_genirq.c_pt.bc'
source_filename = "../drivers/uio/uio_dmem_genirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.uio_dmem_genirq_platdata = type { ptr, %struct.spinlock, i32, ptr, i32, i32, [5 x ptr], %struct.mutex, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uio_dmem_genirq_pdata = type { %struct.uio_info, ptr, i32 }

@__initcall__kmod_uio_dmem_genirq__236_339_uio_dmem_genirq_init6 = internal global ptr @uio_dmem_genirq_init, section ".initcall6.init", align 4
@uio_dmem_genirq = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uio_dmem_genirq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uio_of_genirq_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_dmem_genirq_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uio_dmem_genirq_exit = internal global ptr @uio_dmem_genirq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [44 x i8] c"uio_dmem_genirq.author=Damian Hobson-Garcia\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [79 x i8] c"uio_dmem_genirq.description=Userspace I/O platform driver with dynamic memory.\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [49 x i8] c"uio_dmem_genirq.file=drivers/uio/uio_dmem_genirq\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [31 x i8] c"uio_dmem_genirq.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [47 x i8] c"uio_dmem_genirq.alias=platform:uio_dmem_genirq\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uio_dmem_genirq\00", [16 x i8] zeroinitializer }, align 32
@uio_of_genirq_match = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@uio_dmem_genirq_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uio_dmem_genirq_runtime_nop, ptr @uio_dmem_genirq_runtime_nop, ptr null }, [36 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to kmalloc\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uio_dmem_genirq_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/uio/uio_dmem_genirq.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr = internal global ptr @uio_dmem_genirq_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devicetree\00", [21 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform_data\0A\00", [41 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.10 = internal global ptr @uio_dmem_genirq_probe._entry.8, section ".printk_index", align 4
@uio_dmem_genirq_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt configuration error\0A\00", [33 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.13 = internal global ptr @uio_dmem_genirq_probe._entry.11, section ".printk_index", align 4
@uio_dmem_genirq_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.15 = internal global ptr @uio_dmem_genirq_probe._entry.14, section ".printk_index", align 4
@uio_dmem_genirq_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.18 = internal global ptr @uio_dmem_genirq_probe._entry.16, section ".printk_index", align 4
@uio_dmem_genirq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->alloc_lock\00", [46 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disable lazy unmask\0A\00", [43 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device has more than 5 I/O memory resources.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.26 = internal global ptr @uio_dmem_genirq_probe._entry.23, section ".printk_index", align 4
@uio_dmem_genirq_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device has more than 5 dynamic and fixed memory regions.\0A\00", [38 x i8] zeroinitializer }, align 32
@uio_dmem_genirq_probe._entry_ptr.29 = internal global ptr @uio_dmem_genirq_probe._entry.27, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"uio_dmem_genirq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 330, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 333, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"uio_of_genirq_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 324, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"uio_dmem_genirq_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 318, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 166, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 169, i32 58 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 171, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 175, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 181, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 187, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 198, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 201, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 225, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 239, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [33 x i8] c"../drivers/uio/uio_dmem_genirq.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 256, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_uio_dmem_genirq_exit, ptr @__initcall__kmod_uio_dmem_genirq__236_339_uio_dmem_genirq_init6, ptr @uio_dmem_genirq_exit, ptr @uio_dmem_genirq_probe._entry, ptr @uio_dmem_genirq_probe._entry.11, ptr @uio_dmem_genirq_probe._entry.14, ptr @uio_dmem_genirq_probe._entry.16, ptr @uio_dmem_genirq_probe._entry.23, ptr @uio_dmem_genirq_probe._entry.27, ptr @uio_dmem_genirq_probe._entry.8, ptr @uio_dmem_genirq_probe._entry_ptr, ptr @uio_dmem_genirq_probe._entry_ptr.10, ptr @uio_dmem_genirq_probe._entry_ptr.13, ptr @uio_dmem_genirq_probe._entry_ptr.15, ptr @uio_dmem_genirq_probe._entry_ptr.18, ptr @uio_dmem_genirq_probe._entry_ptr.26, ptr @uio_dmem_genirq_probe._entry_ptr.29, ptr @uio_dmem_genirq, ptr @.str, ptr @uio_of_genirq_match, ptr @uio_dmem_genirq_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @uio_dmem_genirq_probe.__key, ptr @.str.19, ptr @uio_dmem_genirq_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_of_genirq_match to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dmem_genirq_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uio_dmem_genirq, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uio_dmem_genirq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @uio_dmem_genirq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end, label %if.end12.thread

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup157

if.end12.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call11 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %5) #5
  %name = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.7, ptr %version, align 4
  br label %lor.lhs.false

if.end12:                                         ; preds = %entry
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end12.do.end22_crit_edge, label %if.end12.lor.lhs.false_crit_edge

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end12.do.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

lor.lhs.false:                                    ; preds = %if.end12.lor.lhs.false_crit_edge, %if.end12.thread
  %uioinfo.0254 = phi ptr [ %call.i, %if.end12.thread ], [ %1, %if.end12.lor.lhs.false_crit_edge ]
  %name14 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 1
  %8 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name14, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %lor.lhs.false.do.end22_crit_edge, label %lor.lhs.false16

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %version17 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 2
  %10 = ptrtoint ptr %version17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %version17, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %lor.lhs.false16.do.end22_crit_edge, label %if.end24

lor.lhs.false16.do.end22_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false16.do.end22_crit_edge, %lor.lhs.false.do.end22_crit_edge, %if.end12.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup157

if.end24:                                         ; preds = %lor.lhs.false16
  %handler = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 8
  %12 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.end24.do.end33_crit_edge

if.end24.do.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

lor.lhs.false26:                                  ; preds = %if.end24
  %irqcontrol = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 12
  %14 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqcontrol, align 4
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false26.do.end33_crit_edge

lor.lhs.false26.do.end33_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %irq_flags = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 6
  %16 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_flags, align 4
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end35, label %lor.lhs.false28.do.end33_crit_edge

lor.lhs.false28.do.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

do.end33:                                         ; preds = %lor.lhs.false28.do.end33_crit_edge, %lor.lhs.false26.do.end33_crit_edge, %if.end24.do.end33_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup157

if.end35:                                         ; preds = %lor.lhs.false28
  %call.i250 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 180, i32 noundef 3520) #5
  %tobool38.not = icmp eq ptr %call.i250, null
  br i1 %tobool38.not, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup157

if.end44:                                         ; preds = %if.end35
  %call46 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup157

if.end53:                                         ; preds = %if.end44
  %18 = ptrtoint ptr %call.i250 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %uioinfo.0254, ptr %call.i250, align 4
  %lock = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @uio_dmem_genirq_probe.__key, i16 noundef signext 3) #5
  %flags = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags, align 4
  %pdev59 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 3
  %20 = ptrtoint ptr %pdev59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %pdev59, align 4
  %alloc_lock = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %alloc_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @uio_dmem_genirq_probe.__key.20) #5
  %irq = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 5
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool63.not = icmp eq i32 %22, 0
  br i1 %tobool63.not, label %if.then64, label %if.end53.if.then78_crit_edge

if.end53.if.then78_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78

if.then64:                                        ; preds = %if.end53
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call65)
  %cmp = icmp eq i32 %call65, -6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then64
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %tobool68.not = icmp eq ptr %24, null
  br i1 %tobool68.not, label %land.lhs.true.cleanup157_crit_edge, label %if.end75.thread257

land.lhs.true.cleanup157_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup157

if.end75.thread257:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %irq, align 4
  br label %if.end99

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp70 = icmp slt i32 %call65, 0
  br i1 %cmp70, label %if.else.cleanup157_crit_edge, label %if.end75

if.else.cleanup157_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup157

if.end75:                                         ; preds = %if.else
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call65, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool77.not = icmp eq i32 %call65, 0
  br i1 %tobool77.not, label %if.end75.if.end99_crit_edge, label %if.end75.if.then78_crit_edge

if.end75.if.then78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then78

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then78:                                        ; preds = %if.end75.if.then78_crit_edge, %if.end53.if.then78_crit_edge
  %27 = phi i32 [ %call65, %if.end75.if.then78_crit_edge ], [ %22, %if.end53.if.then78_crit_edge ]
  %call80 = tail call ptr @irq_get_irq_data(i32 noundef %27) #5
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then78.if.end99_crit_edge, label %land.lhs.true82

if.then78.if.end99_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

land.lhs.true82:                                  ; preds = %if.then78
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call80, i32 0, i32 3
  %28 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and84 = and i32 %31, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true82.if.end99_crit_edge, label %do.body87

land.lhs.true82.if.end99_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.body87:                                        ; preds = %land.lhs.true82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uio_dmem_genirq_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uio_dmem_genirq_probe, %if.then92)) #5
          to label %do.end96 [label %if.then92], !srcloc !74

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uio_dmem_genirq_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.22) #5
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body87
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %33, i32 noundef 0, i32 noundef 524288) #5
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %land.lhs.true82.if.end99_crit_edge, %if.then78.if.end99_crit_edge, %if.end75.if.end99_crit_edge, %if.end75.thread257
  %mem = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 3
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %34 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp100270.not = icmp eq i32 %35, 0
  br i1 %cmp100270.not, label %if.end99.for.end_crit_edge, label %for.body.lr.ph

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end99
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %arrayidx107 = getelementptr %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0272 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %uiomem.0271 = phi ptr [ %mem, %for.body.lr.ph ], [ %uiomem.1.ph, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resource, align 8
  %arrayidx101 = getelementptr %struct.resource, ptr %37, i32 %i.0272
  %flags102 = getelementptr %struct.resource, ptr %37, i32 %i.0272, i32 3
  %38 = ptrtoint ptr %flags102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %39)
  %cmp103.not = icmp eq i32 %39, 512
  br i1 %cmp103.not, label %if.end105, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end105:                                        ; preds = %for.body
  %cmp108.not = icmp ult ptr %uiomem.0271, %arrayidx107
  br i1 %cmp108.not, label %if.end114, label %cleanup

if.end114:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %memtype = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0271, i32 0, i32 4
  %40 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %memtype, align 4
  %41 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx101, align 4
  %addr = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0271, i32 0, i32 1
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %addr, align 4
  %end.i = getelementptr %struct.resource, ptr %37, i32 %i.0272, i32 1
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end.i, align 4
  %46 = load i32, ptr %arrayidx101, align 4
  %sub.i = add i32 %45, 1
  %add.i = sub i32 %sub.i, %46
  %size = getelementptr inbounds %struct.uio_mem, ptr %uiomem.0271, i32 0, i32 3
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i, ptr %size, align 4
  %incdec.ptr = getelementptr %struct.uio_mem, ptr %uiomem.0271, i32 1
  br label %for.inc

cleanup:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %for.end

for.inc:                                          ; preds = %if.end114, %for.body.for.inc_crit_edge
  %uiomem.1.ph = phi ptr [ %uiomem.0271, %for.body.for.inc_crit_edge ], [ %incdec.ptr, %if.end114 ]
  %inc = add nuw i32 %i.0272, 1
  %48 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_resources, align 4
  %cmp100 = icmp ult i32 %inc, %49
  br i1 %cmp100, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end99.for.end_crit_edge
  %uiomem.0269 = phi ptr [ %uiomem.0271, %cleanup ], [ %mem, %if.end99.for.end_crit_edge ], [ %uiomem.1.ph, %for.inc.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %uiomem.0269 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %mem to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 28
  %dmem_region_start = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 4
  %50 = ptrtoint ptr %dmem_region_start to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.ptr.div, ptr %dmem_region_start, align 4
  %num_dynamic_regions = getelementptr inbounds %struct.uio_dmem_genirq_pdata, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %num_dynamic_regions to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_dynamic_regions, align 4
  %num_dmem_regions = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %call.i250, i32 0, i32 5
  %53 = ptrtoint ptr %num_dmem_regions to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_dmem_regions, align 4
  %54 = load i32, ptr %num_dynamic_regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp120274.not = icmp eq i32 %54, 0
  br i1 %cmp120274.not, label %for.end.for.end138_crit_edge, label %for.body121.lr.ph

for.end.for.end138_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end138

for.body121.lr.ph:                                ; preds = %for.end
  %arrayidx123 = getelementptr %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 4
  %dynamic_region_sizes = getelementptr inbounds %struct.uio_dmem_genirq_pdata, ptr %1, i32 0, i32 1
  br label %for.body121

for.body121:                                      ; preds = %if.end130.for.body121_crit_edge, %for.body121.lr.ph
  %i.1276 = phi i32 [ 0, %for.body121.lr.ph ], [ %inc137, %if.end130.for.body121_crit_edge ]
  %uiomem.3275 = phi ptr [ %uiomem.0269, %for.body121.lr.ph ], [ %incdec.ptr135, %if.end130.for.body121_crit_edge ]
  %cmp124.not = icmp ult ptr %uiomem.3275, %arrayidx123
  br i1 %cmp124.not, label %if.end130, label %do.end128

do.end128:                                        ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  br label %for.end138

if.end130:                                        ; preds = %for.body121
  %memtype131 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.3275, i32 0, i32 4
  %55 = ptrtoint ptr %memtype131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %memtype131, align 4
  %addr132 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.3275, i32 0, i32 1
  %56 = ptrtoint ptr %addr132 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %addr132, align 4
  %57 = ptrtoint ptr %dynamic_region_sizes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dynamic_region_sizes, align 4
  %arrayidx133 = getelementptr i32, ptr %58, i32 %i.1276
  %59 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx133, align 4
  %size134 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.3275, i32 0, i32 3
  %61 = ptrtoint ptr %size134 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size134, align 4
  %incdec.ptr135 = getelementptr %struct.uio_mem, ptr %uiomem.3275, i32 1
  %inc137 = add nuw i32 %i.1276, 1
  %62 = ptrtoint ptr %num_dynamic_regions to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_dynamic_regions, align 4
  %cmp120 = icmp ult i32 %inc137, %63
  br i1 %cmp120, label %if.end130.for.body121_crit_edge, label %if.end130.for.end138_crit_edge

if.end130.for.end138_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end138

if.end130.for.body121_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body121

for.end138:                                       ; preds = %if.end130.for.end138_crit_edge, %do.end128, %for.end.for.end138_crit_edge
  %uiomem.3267 = phi ptr [ %uiomem.3275, %do.end128 ], [ %uiomem.0269, %for.end.for.end138_crit_edge ], [ %incdec.ptr135, %if.end130.for.end138_crit_edge ]
  %arrayidx140 = getelementptr %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 4
  %cmp141278 = icmp ult ptr %uiomem.3267, %arrayidx140
  br i1 %cmp141278, label %for.end138.while.body_crit_edge, label %for.end138.while.end_crit_edge

for.end138.while.end_crit_edge:                   ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

for.end138.while.body_crit_edge:                  ; preds = %for.end138
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end138.while.body_crit_edge
  %uiomem.4279 = phi ptr [ %incdec.ptr143, %while.body.while.body_crit_edge ], [ %uiomem.3267, %for.end138.while.body_crit_edge ]
  %size142 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.4279, i32 0, i32 3
  %64 = ptrtoint ptr %size142 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %size142, align 4
  %incdec.ptr143 = getelementptr %struct.uio_mem, ptr %uiomem.4279, i32 1
  %cmp141 = icmp ult ptr %incdec.ptr143, %arrayidx140
  br i1 %cmp141, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end138.while.end_crit_edge
  %65 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @uio_dmem_genirq_handler, ptr %handler, align 4
  %66 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @uio_dmem_genirq_irqcontrol, ptr %irqcontrol, align 4
  %open = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 10
  %67 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @uio_dmem_genirq_open, ptr %open, align 4
  %release = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 11
  %68 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @uio_dmem_genirq_release, ptr %release, align 4
  %priv146 = getelementptr inbounds %struct.uio_info, ptr %uioinfo.0254, i32 0, i32 7
  %69 = ptrtoint ptr %priv146 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i250, ptr %priv146, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %call.i251 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @uio_dmem_genirq_pm_disable, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool.not.i = icmp eq i32 %call.i251, 0
  br i1 %tobool.not.i, label %if.end153, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup157

if.end153:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %call.i250 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i250, align 4
  %call156 = tail call i32 @__devm_uio_register_device(ptr noundef null, ptr noundef %dev, ptr noundef %71) #5
  br label %cleanup157

cleanup157:                                       ; preds = %if.end153, %devm_add_action_or_reset.exit, %if.else.cleanup157_crit_edge, %land.lhs.true.cleanup157_crit_edge, %do.end51, %do.end42, %do.end33, %do.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end33 ], [ %call46, %do.end51 ], [ %call156, %if.end153 ], [ -12, %do.end42 ], [ -22, %do.end22 ], [ -12, %do.end ], [ %call65, %if.else.cleanup157_crit_edge ], [ %call.i251, %devm_add_action_or_reset.exit ], [ -6, %land.lhs.true.cleanup157_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %flags = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %irq) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_irqcontrol(ptr nocapture noundef readonly %dev_info, i32 noundef %irq_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_on)
  %tobool.not = icmp eq i32 %irq_on, 0
  %flags11 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %if.end18

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  %irq16 = getelementptr inbounds %struct.uio_info, ptr %dev_info, i32 0, i32 5
  %4 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq16, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge, %if.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_open(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dmem_region_start = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dmem_region_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmem_region_start, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %alloc_lock = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_lock, i32 noundef 0) #5
  %refcnt = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not44 = icmp eq i32 %7, 0
  br i1 %tobool.not44, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.uio_info, ptr %5, i32 0, i32 3, i32 %3
  %pdev = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %dmem_region.046 = phi i32 [ %3, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %uiomem.045 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %incdec.ptr, %cleanup.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx5 = getelementptr %struct.uio_info, ptr %9, i32 0, i32 4
  %cmp = icmp ult ptr %uiomem.045, %arrayidx5
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %size = getelementptr inbounds %struct.uio_mem, ptr %uiomem.045, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %addr8 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.045, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef %addr8, i32 noundef 3264, i32 noundef 0) #5
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %addr8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %addr8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge
  %inc = add i32 %dmem_region.046, 1
  %arrayidx13 = getelementptr %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 6, i32 %dmem_region.046
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %arrayidx13, align 4
  %incdec.ptr = getelementptr %struct.uio_mem, ptr %uiomem.045, i32 1
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt, align 4
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %cleanup.land.rhs_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %18 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcnt, align 4
  %inc15 = add i32 %19, 1
  store i32 %inc15, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %alloc_lock) #5
  %pdev17 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %call.i39 = tail call i32 @__pm_runtime_resume(ptr noundef %dev18, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dmem_genirq_release(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dmem_region_start = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dmem_region_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmem_region_start, align 4
  %pdev = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %dmem_region_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmem_region_start, align 4
  %alloc_lock = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_lock, i32 noundef 0) #5
  %refcnt = getelementptr inbounds %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not38 = icmp eq i32 %dec, 0
  br i1 %tobool.not38, label %land.rhs.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.uio_info, ptr %7, i32 0, i32 3, i32 %9
  br label %land.rhs

land.rhs:                                         ; preds = %if.end16.land.rhs_crit_edge, %land.rhs.preheader
  %dmem_region.041 = phi i32 [ %inc, %if.end16.land.rhs_crit_edge ], [ %3, %land.rhs.preheader ]
  %uiomem.039 = phi ptr [ %incdec.ptr, %if.end16.land.rhs_crit_edge ], [ %arrayidx, %land.rhs.preheader ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx6 = getelementptr %struct.uio_info, ptr %13, i32 0, i32 4
  %cmp = icmp ult ptr %uiomem.039, %arrayidx6
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %size = getelementptr inbounds %struct.uio_mem, ptr %uiomem.039, i32 0, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %arrayidx8 = getelementptr %struct.uio_dmem_genirq_platdata, ptr %1, i32 0, i32 6, i32 %dmem_region.041
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %addr = getelementptr inbounds %struct.uio_mem, ptr %uiomem.039, i32 0, i32 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12, i32 noundef %15, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %addr17 = getelementptr inbounds %struct.uio_mem, ptr %uiomem.039, i32 0, i32 1
  %22 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %addr17, align 4
  %inc = add i32 %dmem_region.041, 1
  %incdec.ptr = getelementptr %struct.uio_mem, ptr %uiomem.039, i32 1
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %refcnt, align 4
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %if.end16.land.rhs_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end16.land.rhs_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uio_dmem_genirq_pm_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uio_dmem_genirq_runtime_nop(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_uio_dmem_genirq__236_339_uio_dmem_genirq_init6, !1, !"__initcall__kmod_uio_dmem_genirq__236_339_uio_dmem_genirq_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 339, i32 1}
!2 = !{ptr @__exitcall_uio_dmem_genirq_exit, !1, !"__exitcall_uio_dmem_genirq_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 341, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 342, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 343, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 344, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 333, i32 11}
!14 = !{ptr @uio_dmem_genirq, !15, !"uio_dmem_genirq", i1 false, i1 false}
!15 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 330, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 166, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uio_dmem_genirq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uio_dmem_genirq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 169, i32 58}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 171, i32 22}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 175, i32 3}
!30 = !{ptr @uio_dmem_genirq_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @uio_dmem_genirq_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 181, i32 3}
!34 = !{ptr @uio_dmem_genirq_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @uio_dmem_genirq_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @uio_dmem_genirq_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 187, i32 3}
!38 = !{ptr @uio_dmem_genirq_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 193, i32 3}
!41 = !{ptr @uio_dmem_genirq_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @uio_dmem_genirq_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @uio_dmem_genirq_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 198, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @uio_dmem_genirq_probe.__key.20, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 201, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 225, i32 4}
!51 = !{ptr @uio_dmem_genirq_probe.__UNIQUE_ID_ddebug235, !50, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 239, i32 4}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @uio_dmem_genirq_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @uio_dmem_genirq_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 256, i32 4}
!59 = !{ptr @uio_dmem_genirq_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @uio_dmem_genirq_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @uio_of_genirq_match, !62, !"uio_of_genirq_match", i1 false, i1 false}
!62 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 324, i32 34}
!63 = !{ptr @uio_dmem_genirq_dev_pm_ops, !64, !"uio_dmem_genirq_dev_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/uio/uio_dmem_genirq.c", i32 318, i32 32}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148297404, i64 2148297409, i64 2148297422, i64 2148297466, i64 2148297500, i64 2148297521}
