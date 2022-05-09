; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_pruss.c_pt.bc'
source_filename = "../drivers/uio/uio_pruss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.uio_pruss_dev = type { ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.uio_pruss_pdata = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }

@__param_str_sram_pool_sz = internal constant [23 x i8] c"uio_pruss.sram_pool_sz\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sram_pool_sz = internal global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@__param_sram_pool_sz = internal constant %struct.kernel_param { ptr @__param_str_sram_pool_sz, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @sram_pool_sz } }, section "__param", align 4
@__UNIQUE_ID_sram_pool_sztype234 = internal constant [36 x i8] c"uio_pruss.parmtype=sram_pool_sz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sram_pool_sz235 = internal constant [56 x i8] c"uio_pruss.parm=sram_pool_sz:sram pool size to allocate \00", section ".modinfo", align 1
@__param_str_extram_pool_sz = internal constant [25 x i8] c"uio_pruss.extram_pool_sz\00", align 1
@extram_pool_sz = internal global { i32, [28 x i8] } { i32 262144, [28 x i8] zeroinitializer }, align 32
@__param_extram_pool_sz = internal constant %struct.kernel_param { ptr @__param_str_extram_pool_sz, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @extram_pool_sz } }, section "__param", align 4
@__UNIQUE_ID_extram_pool_sztype236 = internal constant [38 x i8] c"uio_pruss.parmtype=extram_pool_sz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_extram_pool_sz237 = internal constant [65 x i8] c"uio_pruss.parm=extram_pool_sz:external ram pool size to allocate\00", section ".modinfo", align 1
@__initcall__kmod_uio_pruss__238_251_pruss_driver_init6 = internal global ptr @pruss_driver_init, section ".initcall6.init", align 4
@pruss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pruss_probe, ptr @pruss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pruss_driver_exit = internal global ptr @pruss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [37 x i8] c"uio_pruss.file=drivers/uio/uio_pruss\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [25 x i8] c"uio_pruss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version241 = internal constant [22 x i8] c"uio_pruss.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uio_pruss\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author242 = internal constant [58 x i8] c"uio_pruss.author=Amit Chatterjee <amit.chatterjee@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"uio_pruss.author=Pratheesh Gangadhar <pratheesh@ti.com>\00", section ".modinfo", align 1
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pruss_uio\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pruss\00", [26 x i8] zeroinitializer }, align 32
@pruss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 135, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pruss_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/uio/uio_pruss.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr = internal global ptr @pruss_probe._entry, section ".printk_index", align 4
@pruss_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 141, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.12 = internal global ptr @pruss_probe._entry.10, section ".printk_index", align 4
@pruss_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 147, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No PRUSS I/O resource specified\0A\00", [63 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.15 = internal global ptr @pruss_probe._entry.13, section ".printk_index", align 4
@pruss_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 153, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid memory resource\0A\00", [39 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.18 = internal global ptr @pruss_probe._entry.16, section ".printk_index", align 4
@pruss_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 164, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not allocate SRAM pool\0A\00", [34 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.21 = internal global ptr @pruss_probe._entry.19, section ".printk_index", align 4
@pruss_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 173, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not allocate external memory\0A\00", [60 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.24 = internal global ptr @pruss_probe._entry.22, section ".printk_index", align 4
@pruss_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 181, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't remap PRUSS I/O  address range\0A\00", [58 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.27 = internal global ptr @pruss_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pruss_evt%d\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"sram_pool_sz\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 34, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"extram_pool_sz\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 38, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"pruss_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 243, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 254, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 247, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 133, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 135, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 147, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 153, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 164, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 173, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 181, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [27 x i8] c"../drivers/uio/uio_pruss.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 202, i32 45 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_extram_pool_sz237, ptr @__UNIQUE_ID_extram_pool_sztype236, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_sram_pool_sz235, ptr @__UNIQUE_ID_sram_pool_sztype234, ptr @__UNIQUE_ID_version241, ptr @__exitcall_pruss_driver_exit, ptr @__initcall__kmod_uio_pruss__238_251_pruss_driver_init6, ptr @__modver_attr, ptr @__param_extram_pool_sz, ptr @__param_sram_pool_sz, ptr @pruss_driver_exit, ptr @pruss_probe._entry, ptr @pruss_probe._entry.10, ptr @pruss_probe._entry.13, ptr @pruss_probe._entry.16, ptr @pruss_probe._entry.19, ptr @pruss_probe._entry.22, ptr @pruss_probe._entry.25, ptr @pruss_probe._entry_ptr, ptr @pruss_probe._entry_ptr.12, ptr @pruss_probe._entry_ptr.15, ptr @pruss_probe._entry_ptr.18, ptr @pruss_probe._entry_ptr.21, ptr @pruss_probe._entry_ptr.24, ptr @pruss_probe._entry_ptr.27, ptr @sram_pool_sz, ptr @extram_pool_sz, ptr @pruss_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_pool_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extram_pool_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pruss_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pruss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pruss_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2272, i32 noundef 3520) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %pruss_clk = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pruss_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %pruss_clk, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  %4 = ptrtoint ptr %pruss_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pruss_clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call i32 @clk_enable(ptr noundef %call8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %err_clk_disable

if.end29:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool30.not = icmp eq i32 %8, 0
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %err_clk_disable

if.end35:                                         ; preds = %if.end29
  %sram_pool = getelementptr inbounds %struct.uio_pruss_pdata, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sram_pool, align 4
  %tobool36.not = icmp eq ptr %10, null
  br i1 %tobool36.not, label %if.end35.if.end49_crit_edge, label %if.then37

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then37:                                        ; preds = %if.end35
  %sram_pool39 = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %sram_pool39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %sram_pool39, align 4
  %12 = load i32, ptr @sram_pool_sz, align 4
  %sram_paddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 2
  %call41 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %10, i32 noundef %12, ptr noundef %sram_paddr) #5
  %13 = ptrtoint ptr %call41 to i32
  %sram_vaddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %sram_vaddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sram_vaddr, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.end47, label %if.then37.if.end49_crit_edge

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end47:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %err_clk_disable

if.end49:                                         ; preds = %if.then37.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %15 = load i32, ptr @extram_pool_sz, align 4
  %ddr_paddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 3
  %call.i210 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %15, ptr noundef %ddr_paddr, i32 noundef 3265, i32 noundef 0) #5
  %ddr_vaddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %ddr_vaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i210, ptr %ddr_vaddr, align 4
  %tobool52.not = icmp eq ptr %call.i210, null
  br i1 %tobool52.not, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  br label %err_free_sram

if.end57:                                         ; preds = %if.end49
  %end.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %19 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call23, align 4
  %sub.i = add i32 %18, 1
  %add.i = sub i32 %sub.i, %20
  %call60 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %add.i) #5
  %prussio_vaddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %prussio_vaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call60, ptr %prussio_vaddr, align 4
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %do.end66, label %if.end67

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #8
  br label %err_free_ddr_vaddr

if.end67:                                         ; preds = %if.end57
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %pintc_base68 = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %pintc_base68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pintc_base68, align 4
  %call69 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %hostirq_start = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %hostirq_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call69, ptr %hostirq_start, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %sram_paddr77 = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end67
  %cnt.0217 = phi i32 [ 0, %if.end67 ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.0216 = phi ptr [ %27, %if.end67 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %28 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call23, align 4
  %addr = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %addr, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i, align 4
  %33 = load i32, ptr %call23, align 4
  %sub.i212 = add i32 %32, 1
  %add.i213 = sub i32 %sub.i212, %33
  %size = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 0, i32 3
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i213, ptr %size, align 4
  %memtype = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 0, i32 4
  %35 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %memtype, align 4
  %36 = ptrtoint ptr %sram_paddr77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sram_paddr77, align 4
  %addr80 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 1, i32 1
  %38 = ptrtoint ptr %addr80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %addr80, align 4
  %39 = load i32, ptr @sram_pool_sz, align 4
  %size83 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 1, i32 3
  %40 = ptrtoint ptr %size83 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %size83, align 4
  %memtype86 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 1, i32 4
  %41 = ptrtoint ptr %memtype86 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %memtype86, align 4
  %42 = ptrtoint ptr %ddr_paddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ddr_paddr, align 4
  %addr90 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 2, i32 1
  %44 = ptrtoint ptr %addr90 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %addr90, align 4
  %45 = load i32, ptr @extram_pool_sz, align 4
  %size93 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 2, i32 3
  %46 = ptrtoint ptr %size93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %size93, align 4
  %memtype96 = getelementptr %struct.uio_info, ptr %p.0216, i32 0, i32 3, i32 2, i32 4
  %47 = ptrtoint ptr %memtype96 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %memtype96, align 4
  %call97 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.28, i32 noundef %cnt.0217) #5
  %name = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 1
  %48 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call97, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 2
  %49 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.2, ptr %version, align 4
  %50 = ptrtoint ptr %hostirq_start to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hostirq_start, align 4
  %add = add i32 %51, %cnt.0217
  %irq = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 5
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add, ptr %irq, align 4
  %handler = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 8
  %53 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pruss_handler, ptr %handler, align 4
  %priv = getelementptr inbounds %struct.uio_info, ptr %p.0216, i32 0, i32 7
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %priv, align 4
  %call99 = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %dev1, ptr noundef %p.0216) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %err_unloop, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %cnt.0217, 1
  %incdec.ptr = getelementptr %struct.uio_info, ptr %p.0216, i32 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_unloop:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0217)
  %cmp105218.not = icmp eq i32 %cnt.0217, 0
  br i1 %cmp105218.not, label %err_unloop.for.end110_crit_edge, label %for.body106

err_unloop.for.end110_crit_edge:                  ; preds = %err_unloop
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106:                                      ; preds = %err_unloop
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  tail call void @uio_unregister_device(ptr noundef %57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.0217)
  %exitcond223.not = icmp eq i32 %cnt.0217, 1
  br i1 %exitcond223.not, label %for.body106.for.end110_crit_edge, label %for.body106.1

for.body106.for.end110_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.1:                                    ; preds = %for.body106
  %incdec.ptr109 = getelementptr %struct.uio_info, ptr %57, i32 1
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.0217)
  %exitcond223.not.1 = icmp eq i32 %cnt.0217, 2
  br i1 %exitcond223.not.1, label %for.body106.1.for.end110_crit_edge, label %for.body106.2

for.body106.1.for.end110_crit_edge:               ; preds = %for.body106.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.2:                                    ; preds = %for.body106.1
  %incdec.ptr109.1 = getelementptr %struct.uio_info, ptr %57, i32 2
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.0217)
  %exitcond223.not.2 = icmp eq i32 %cnt.0217, 3
  br i1 %exitcond223.not.2, label %for.body106.2.for.end110_crit_edge, label %for.body106.3

for.body106.2.for.end110_crit_edge:               ; preds = %for.body106.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.3:                                    ; preds = %for.body106.2
  %incdec.ptr109.2 = getelementptr %struct.uio_info, ptr %57, i32 3
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cnt.0217)
  %exitcond223.not.3 = icmp eq i32 %cnt.0217, 4
  br i1 %exitcond223.not.3, label %for.body106.3.for.end110_crit_edge, label %for.body106.4

for.body106.3.for.end110_crit_edge:               ; preds = %for.body106.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.4:                                    ; preds = %for.body106.3
  %incdec.ptr109.3 = getelementptr %struct.uio_info, ptr %57, i32 4
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cnt.0217)
  %exitcond223.not.4 = icmp eq i32 %cnt.0217, 5
  br i1 %exitcond223.not.4, label %for.body106.4.for.end110_crit_edge, label %for.body106.5

for.body106.4.for.end110_crit_edge:               ; preds = %for.body106.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.5:                                    ; preds = %for.body106.4
  %incdec.ptr109.4 = getelementptr %struct.uio_info, ptr %57, i32 5
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cnt.0217)
  %exitcond223.not.5 = icmp eq i32 %cnt.0217, 6
  br i1 %exitcond223.not.5, label %for.body106.5.for.end110_crit_edge, label %for.body106.6

for.body106.5.for.end110_crit_edge:               ; preds = %for.body106.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end110

for.body106.6:                                    ; preds = %for.body106.5
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr109.5 = getelementptr %struct.uio_info, ptr %57, i32 6
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr109.5) #5
  br label %for.end110

for.end110:                                       ; preds = %for.body106.6, %for.body106.5.for.end110_crit_edge, %for.body106.4.for.end110_crit_edge, %for.body106.3.for.end110_crit_edge, %for.body106.2.for.end110_crit_edge, %for.body106.1.for.end110_crit_edge, %for.body106.for.end110_crit_edge, %err_unloop.for.end110_crit_edge
  %58 = ptrtoint ptr %prussio_vaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prussio_vaddr, align 4
  tail call void @iounmap(ptr noundef %59) #5
  br label %err_free_ddr_vaddr

err_free_ddr_vaddr:                               ; preds = %for.end110, %do.end66
  %ret.0 = phi i32 [ %call99, %for.end110 ], [ -12, %do.end66 ]
  %60 = load i32, ptr @extram_pool_sz, align 4
  %61 = ptrtoint ptr %ddr_vaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ddr_vaddr, align 4
  %63 = ptrtoint ptr %ddr_paddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ddr_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 0) #5
  br label %err_free_sram

err_free_sram:                                    ; preds = %err_free_ddr_vaddr, %do.end56
  %ret.1 = phi i32 [ %ret.0, %err_free_ddr_vaddr ], [ -12, %do.end56 ]
  %65 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sram_pool, align 4
  %tobool115.not = icmp eq ptr %66, null
  br i1 %tobool115.not, label %err_free_sram.err_clk_disable_crit_edge, label %if.then116

err_free_sram.err_clk_disable_crit_edge:          ; preds = %err_free_sram
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_disable

if.then116:                                       ; preds = %err_free_sram
  call void @__sanitizer_cov_trace_pc() #7
  %sram_pool117 = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %sram_pool117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sram_pool117, align 4
  %sram_vaddr118 = getelementptr inbounds %struct.uio_pruss_dev, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %sram_vaddr118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sram_vaddr118, align 4
  %71 = load i32, ptr @sram_pool_sz, align 4
  tail call void @gen_pool_free_owner(ptr noundef %68, i32 noundef %70, i32 noundef %71, ptr noundef null) #5
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %if.then116, %err_free_sram.err_clk_disable_crit_edge, %do.end47, %do.end34, %do.end28
  %ret.2 = phi i32 [ %ret.1, %if.then116 ], [ %ret.1, %err_free_sram.err_clk_disable_crit_edge ], [ -12, %do.end47 ], [ -5, %do.end34 ], [ -5, %do.end28 ]
  %72 = ptrtoint ptr %pruss_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pruss_clk, align 4
  tail call void @clk_disable(ptr noundef %73) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %for.end, %do.end21, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call16, %do.end21 ], [ %ret.2, %err_clk_disable ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @uio_unregister_device(ptr noundef %3) #5
  %incdec.ptr.i = getelementptr %struct.uio_info, ptr %3, i32 1
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.i) #5
  %incdec.ptr.1.i = getelementptr %struct.uio_info, ptr %3, i32 2
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.1.i) #5
  %incdec.ptr.2.i = getelementptr %struct.uio_info, ptr %3, i32 3
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.2.i) #5
  %incdec.ptr.3.i = getelementptr %struct.uio_info, ptr %3, i32 4
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.3.i) #5
  %incdec.ptr.4.i = getelementptr %struct.uio_info, ptr %3, i32 5
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.4.i) #5
  %incdec.ptr.5.i = getelementptr %struct.uio_info, ptr %3, i32 6
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.5.i) #5
  %incdec.ptr.6.i = getelementptr %struct.uio_info, ptr %3, i32 7
  tail call void @uio_unregister_device(ptr noundef %incdec.ptr.6.i) #5
  %prussio_vaddr.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %prussio_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prussio_vaddr.i, align 4
  tail call void @iounmap(ptr noundef %5) #5
  %ddr_vaddr.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ddr_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddr_vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %8 = load i32, ptr @extram_pool_sz, align 4
  %ddr_paddr.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ddr_paddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ddr_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull %7, i32 noundef %10, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %sram_vaddr.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %sram_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sram_vaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.pruss_cleanup.exit_crit_edge, label %if.then3.i

if.end.i.pruss_cleanup.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pruss_cleanup.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sram_pool.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sram_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sram_pool.i, align 4
  %15 = load i32, ptr @sram_pool_sz, align 4
  tail call void @gen_pool_free_owner(ptr noundef %14, i32 noundef %12, i32 noundef %15, ptr noundef null) #5
  br label %pruss_cleanup.exit

pruss_cleanup.exit:                               ; preds = %if.then3.i, %if.end.i.pruss_cleanup.exit_crit_edge
  %pruss_clk.i = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pruss_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pruss_clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_handler(i32 noundef %irq, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.uio_info, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %hostirq_start = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hostirq_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostirq_start, align 4
  %sub = sub i32 %irq, %3
  %add = add i32 %sub, 2
  %shl = shl nuw i32 1, %add
  %prussio_vaddr = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %prussio_vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prussio_vaddr, align 4
  %pintc_base = getelementptr inbounds %struct.uio_pruss_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %pintc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pintc_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 5376
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 2304
  %shl4 = shl i32 %add, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %shl4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %.mask = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool8.not = icmp eq i32 %.mask, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %add) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #5, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_sram_pool_sz, !1, !"__param_sram_pool_sz", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_pruss.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_sram_pool_sztype234, !1, !"__UNIQUE_ID_sram_pool_sztype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_sram_pool_sz235, !4, !"__UNIQUE_ID_sram_pool_sz235", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_pruss.c", i32 36, i32 1}
!5 = !{ptr @__param_extram_pool_sz, !6, !"__param_extram_pool_sz", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio_pruss.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_extram_pool_sztype236, !6, !"__UNIQUE_ID_extram_pool_sztype236", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_extram_pool_sz237, !9, !"__UNIQUE_ID_extram_pool_sz237", i1 false, i1 false}
!9 = !{!"../drivers/uio/uio_pruss.c", i32 40, i32 1}
!10 = !{ptr @__initcall__kmod_uio_pruss__238_251_pruss_driver_init6, !11, !"__initcall__kmod_uio_pruss__238_251_pruss_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/uio/uio_pruss.c", i32 251, i32 1}
!12 = !{ptr @__exitcall_pruss_driver_exit, !11, !"__exitcall_pruss_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file239, !14, !"__UNIQUE_ID_file239", i1 false, i1 false}
!14 = !{!"../drivers/uio/uio_pruss.c", i32 253, i32 1}
!15 = !{ptr @__UNIQUE_ID_license240, !14, !"__UNIQUE_ID_license240", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_version241, !17, !"__UNIQUE_ID_version241", i1 false, i1 false}
!17 = !{!"../drivers/uio/uio_pruss.c", i32 254, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author242, !23, !"__UNIQUE_ID_author242", i1 false, i1 false}
!23 = !{!"../drivers/uio/uio_pruss.c", i32 255, i32 1}
!24 = !{ptr @__UNIQUE_ID_author243, !25, !"__UNIQUE_ID_author243", i1 false, i1 false}
!25 = !{!"../drivers/uio/uio_pruss.c", i32 256, i32 1}
!26 = !{ptr @__param_str_sram_pool_sz, !1, !"__param_str_sram_pool_sz", i1 false, i1 false}
!27 = !{ptr @sram_pool_sz, !28, !"sram_pool_sz", i1 false, i1 false}
!28 = !{!"../drivers/uio/uio_pruss.c", i32 34, i32 12}
!29 = !{ptr @__param_str_extram_pool_sz, !6, !"__param_str_extram_pool_sz", i1 false, i1 false}
!30 = !{ptr @extram_pool_sz, !31, !"extram_pool_sz", i1 false, i1 false}
!31 = !{!"../drivers/uio/uio_pruss.c", i32 38, i32 12}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/uio/uio_pruss.c", i32 247, i32 14}
!34 = !{ptr @pruss_driver, !35, !"pruss_driver", i1 false, i1 false}
!35 = !{!"../drivers/uio/uio_pruss.c", i32 243, i32 31}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/uio/uio_pruss.c", i32 133, i32 38}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/uio/uio_pruss.c", i32 135, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pruss_probe._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @pruss_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/uio/uio_pruss.c", i32 141, i32 3}
!48 = !{ptr @pruss_probe._entry.10, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pruss_probe._entry_ptr.12, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/uio/uio_pruss.c", i32 147, i32 3}
!52 = !{ptr @pruss_probe._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pruss_probe._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/uio/uio_pruss.c", i32 153, i32 3}
!56 = !{ptr @pruss_probe._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pruss_probe._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/uio/uio_pruss.c", i32 164, i32 4}
!60 = !{ptr @pruss_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pruss_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/uio/uio_pruss.c", i32 173, i32 3}
!64 = !{ptr @pruss_probe._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pruss_probe._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/uio/uio_pruss.c", i32 181, i32 3}
!68 = !{ptr @pruss_probe._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pruss_probe._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/uio/uio_pruss.c", i32 202, i32 45}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 5617239}
!82 = !{i64 2153157588}
!83 = !{i64 2153158943}
!84 = !{i64 5616821}
