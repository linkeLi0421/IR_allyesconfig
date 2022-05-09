; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/ingenic_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/ingenic_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vpu_mem_map = type { ptr, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.vpu = type { i32, [2 x %struct.clk_bulk_data], ptr, [3 x %struct.vpu_mem_info], ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.vpu_mem_info = type { ptr, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_auto_boot = internal constant [24 x i8] c"ingenic_rproc.auto_boot\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@auto_boot = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_auto_boot = internal constant %struct.kernel_param { ptr @__param_str_auto_boot, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @auto_boot } }, section "__param", align 4
@__UNIQUE_ID_auto_boottype232 = internal constant [38 x i8] c"ingenic_rproc.parmtype=auto_boot:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_boot233 = internal constant [76 x i8] c"ingenic_rproc.parm=auto_boot:Auto-boot the remote processor [default=false]\00", section ".modinfo", align 1
@__initcall__kmod_ingenic_rproc__234_250_ingenic_rproc_driver_init6 = internal global ptr @ingenic_rproc_driver_init, section ".initcall6.init", align 4
@ingenic_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_rproc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_rproc_of_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_rproc_driver_exit = internal global ptr @ingenic_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [52 x i8] c"ingenic_rproc.file=drivers/remoteproc/ingenic_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"ingenic_rproc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [58 x i8] c"ingenic_rproc.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [73 x i8] c"ingenic_rproc.description=Ingenic JZ47xx Remote Processor control driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-vpu\00", [20 x i8] zeroinitializer }, align 32
@ingenic_rproc_of_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-vpu-rproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ingenic_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr @ingenic_rproc_prepare, ptr @ingenic_rproc_unprepare, ptr @ingenic_rproc_start, ptr @ingenic_rproc_stop, ptr null, ptr null, ptr @ingenic_rproc_kick, ptr @ingenic_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ingenic_rproc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/ingenic_rproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry_ptr = internal global ptr @ingenic_rproc_probe._entry, section ".printk_index", align 4
@vpu_mem_map = internal constant { [3 x %struct.vpu_mem_map], [40 x i8] } { [3 x %struct.vpu_mem_map] [%struct.vpu_mem_map { ptr @.str.22, i32 321585152 }, %struct.vpu_mem_map { ptr @.str.23, i32 -201326592 }, %struct.vpu_mem_map { ptr @.str.24, i32 321847296 }], [40 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry_ptr.8 = internal global ptr @ingenic_rproc_probe._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get clocks\0A\00", [42 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry_ptr.12 = internal global ptr @ingenic_rproc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VPU\00", [28 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry_ptr.16 = internal global ptr @ingenic_rproc_probe._entry.14, section ".printk_index", align 4
@ingenic_rproc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register remote processor\0A\00", [59 x i8] zeroinitializer }, align 32
@ingenic_rproc_probe._entry_ptr.19 = internal global ptr @ingenic_rproc_probe._entry.17, section ".printk_index", align 4
@ingenic_rproc_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to start clocks: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ingenic_rproc_prepare\00", [42 x i8] zeroinitializer }, align 32
@ingenic_rproc_prepare._entry_ptr = internal global ptr @ingenic_rproc_prepare._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcsm0\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcsm1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"auto_boot\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 30, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"ingenic_rproc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 243, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 246, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"ingenic_rproc_of_matches\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 237, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"ingenic_rproc_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 143, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 186, i32 59 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 189, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"vpu_mem_map\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 46, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 200, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 208, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 213, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 222, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 224, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 230, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 77, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 47, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 48, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [38 x i8] c"../drivers/remoteproc/ingenic_rproc.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 49, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_auto_boot233, ptr @__UNIQUE_ID_auto_boottype232, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ingenic_rproc_driver_exit, ptr @__initcall__kmod_ingenic_rproc__234_250_ingenic_rproc_driver_init6, ptr @__param_auto_boot, ptr @ingenic_rproc_driver_exit, ptr @ingenic_rproc_prepare._entry, ptr @ingenic_rproc_prepare._entry_ptr, ptr @ingenic_rproc_probe._entry, ptr @ingenic_rproc_probe._entry.10, ptr @ingenic_rproc_probe._entry.14, ptr @ingenic_rproc_probe._entry.17, ptr @ingenic_rproc_probe._entry.7, ptr @ingenic_rproc_probe._entry_ptr, ptr @ingenic_rproc_probe._entry_ptr.12, ptr @ingenic_rproc_probe._entry_ptr.16, ptr @ingenic_rproc_probe._entry_ptr.19, ptr @ingenic_rproc_probe._entry_ptr.8, ptr @auto_boot, ptr @ingenic_rproc_driver, ptr @.str, ptr @ingenic_rproc_of_matches, ptr @ingenic_rproc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vpu_mem_map, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_boot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_of_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_mem_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_rproc_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_rproc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_rproc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_rproc_alloc(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @ingenic_rproc_ops, ptr noundef null, i32 noundef 64) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @auto_boot, align 1, !range !77
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call, i32 0, i32 30
  %1 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %auto_boot, align 1
  %priv = getelementptr inbounds %struct.rproc, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev4 = getelementptr inbounds %struct.vpu, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call5) #6
  %aux_base = getelementptr inbounds %struct.vpu, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %aux_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %aux_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %call13 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.22) #6
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13) #6
  %base = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %base, align 4
  %cmp.i124 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %for.body.preheader.if.then20_crit_edge, label %if.end28

for.body.preheader.if.then20_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux_base, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.then20:                                        ; preds = %if.end28.1.if.then20_crit_edge, %if.end28.if.then20_crit_edge, %for.body.preheader.if.then20_crit_edge
  %call14.lcssa = phi ptr [ %call14, %for.body.preheader.if.then20_crit_edge ], [ %call14.1, %if.end28.if.then20_crit_edge ], [ %call14.2, %if.end28.1.if.then20_crit_edge ]
  %11 = ptrtoint ptr %call14.lcssa to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end28:                                         ; preds = %for.body.preheader
  %arrayidx15 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 0
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %14 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call13, align 4
  %sub.i = add i32 %13, 1
  %add.i = sub i32 %sub.i, %15
  %len = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %len, align 4
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vpu_mem_map, ptr %arrayidx15, align 4
  %call13.1 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.23) #6
  %call14.1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13.1) #6
  %base.1 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %base.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14.1, ptr %base.1, align 4
  %cmp.i124.1 = icmp ugt ptr %call14.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.1, label %if.end28.if.then20_crit_edge, label %if.end28.1

if.end28.if.then20_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.end28.1:                                       ; preds = %if.end28
  %arrayidx15.1 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 1
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call13.1, i32 0, i32 1
  %19 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i.1, align 4
  %21 = ptrtoint ptr %call13.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call13.1, align 4
  %sub.i.1 = add i32 %20, 1
  %add.i.1 = sub i32 %sub.i.1, %22
  %len.1 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 1, i32 1
  %23 = ptrtoint ptr %len.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i.1, ptr %len.1, align 4
  %24 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr getelementptr inbounds ([3 x %struct.vpu_mem_map], ptr @vpu_mem_map, i32 0, i32 1), ptr %arrayidx15.1, align 4
  %call13.2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.24) #6
  %call14.2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13.2) #6
  %base.2 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 2, i32 2
  %25 = ptrtoint ptr %base.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14.2, ptr %base.2, align 4
  %cmp.i124.2 = icmp ugt ptr %call14.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.2, label %if.end28.1.if.then20_crit_edge, label %if.end28.2

if.end28.1.if.then20_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.end28.2:                                       ; preds = %if.end28.1
  %arrayidx15.2 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 2
  %end.i.2 = getelementptr inbounds %struct.resource, ptr %call13.2, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.2, align 4
  %28 = ptrtoint ptr %call13.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call13.2, align 4
  %sub.i.2 = add i32 %27, 1
  %add.i.2 = sub i32 %sub.i.2, %29
  %len.2 = getelementptr %struct.vpu, ptr %3, i32 0, i32 3, i32 2, i32 1
  %30 = ptrtoint ptr %len.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i.2, ptr %len.2, align 4
  %31 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr getelementptr inbounds ([3 x %struct.vpu_mem_map], ptr @vpu_mem_map, i32 0, i32 2), ptr %arrayidx15.2, align 4
  %clks = getelementptr inbounds %struct.vpu, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.9, ptr %clks, align 4
  %arrayidx37 = getelementptr %struct.vpu, ptr %3, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.1, ptr %arrayidx37, align 4
  %call40 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end28.2
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call47, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp49 = icmp slt i32 %call47, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call47, ptr noundef nonnull @vpu_interrupt, ptr noundef null, i32 noundef 524288, ptr noundef nonnull @.str.13, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp55 = icmp slt i32 %call.i, 0
  br i1 %cmp55, label %do.end59, label %if.end60

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %call61 = tail call i32 @devm_rproc_add(ptr noundef %dev1, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %do.end66

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end60.cleanup_crit_edge, %do.end59, %if.end46.cleanup_crit_edge, %do.end45, %if.then20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %11, %if.then20 ], [ %call40, %do.end45 ], [ %call.i, %do.end59 ], [ %call61, %do.end66 ], [ -12, %entry.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpu_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %aux_base = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux_base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #6, !srcloc !81
  %call4 = tail call i32 @rproc_vq_interrupt(ptr noundef %data, i32 noundef %5) #6
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rproc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_prepare(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %clks = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.ph) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_unprepare(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %clks = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 1
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @enable_irq(i32 noundef %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %aux_base = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 234881024) #6, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %aux_base = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #6, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %vqid)
  %aux_base = getelementptr inbounds %struct.vpu, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %aux_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !81
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @ingenic_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv5 = zext i32 %len to i64
  %add = add i64 %conv5, %da
  %arrayidx = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %da2 = getelementptr inbounds %struct.vpu_mem_map, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %da2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %da2, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %da)
  %cmp3.not = icmp ugt i64 %conv, %da
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %len7 = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len7, align 4
  %add8 = add i32 %7, %5
  %conv9 = zext i32 %add8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9)
  %cmp10 = icmp ult i64 %add, %conv9
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %i.031.lcssa = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true.1.cleanup_crit_edge ], [ 2, %land.lhs.true.2.cleanup_crit_edge ]
  %.lcssa = phi i32 [ %5, %land.lhs.true.cleanup_crit_edge ], [ %14, %land.lhs.true.1.cleanup_crit_edge ], [ %20, %land.lhs.true.2.cleanup_crit_edge ]
  %base = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 %i.031.lcssa, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = trunc i64 %da to i32
  %idx.ext = sub i32 %10, %.lcssa
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %da2.1 = getelementptr inbounds %struct.vpu_mem_map, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %da2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %da2.1, align 4
  %conv.1 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.1, i64 %da)
  %cmp3.not.1 = icmp ugt i64 %conv.1, %da
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %len7.1 = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %len7.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len7.1, align 4
  %add8.1 = add i32 %16, %14
  %conv9.1 = zext i32 %add8.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9.1)
  %cmp10.1 = icmp ult i64 %add, %conv9.1
  br i1 %cmp10.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %da2.2 = getelementptr inbounds %struct.vpu_mem_map, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %da2.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %da2.2, align 4
  %conv.2 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.2, i64 %da)
  %cmp3.not.2 = icmp ugt i64 %conv.2, %da
  br i1 %cmp3.not.2, label %for.inc.1.for.end_crit_edge, label %land.lhs.true.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.2:                                  ; preds = %for.inc.1
  %len7.2 = getelementptr %struct.vpu, ptr %1, i32 0, i32 3, i32 2, i32 1
  %21 = ptrtoint ptr %len7.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len7.2, align 4
  %add8.2 = add i32 %22, %20
  %conv9.2 = zext i32 %add8.2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9.2)
  %cmp10.2 = icmp ult i64 %add, %conv9.2
  br i1 %cmp10.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %cleanup
  %va.2 = phi ptr [ %add.ptr, %cleanup ], [ null, %land.lhs.true.2.for.end_crit_edge ], [ null, %for.inc.1.for.end_crit_edge ]
  ret ptr %va.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__param_auto_boot, !1, !"__param_auto_boot", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_auto_boottype232, !1, !"__UNIQUE_ID_auto_boottype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_auto_boot233, !4, !"__UNIQUE_ID_auto_boot233", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_ingenic_rproc__234_250_ingenic_rproc_driver_init6, !6, !"__initcall__kmod_ingenic_rproc__234_250_ingenic_rproc_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 250, i32 1}
!7 = !{ptr @__exitcall_ingenic_rproc_driver_exit, !6, !"__exitcall_ingenic_rproc_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 252, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author237, !12, !"__UNIQUE_ID_author237", i1 false, i1 false}
!12 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 253, i32 1}
!13 = !{ptr @__UNIQUE_ID_description238, !14, !"__UNIQUE_ID_description238", i1 false, i1 false}
!14 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 254, i32 1}
!15 = !{ptr @auto_boot, !16, !"auto_boot", i1 false, i1 false}
!16 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 30, i32 13}
!17 = !{ptr @__param_str_auto_boot, !1, !"__param_str_auto_boot", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 246, i32 11}
!20 = !{ptr @ingenic_rproc_driver, !21, !"ingenic_rproc_driver", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 243, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 186, i32 59}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 189, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ingenic_rproc_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @ingenic_rproc_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ingenic_rproc_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 200, i32 4}
!34 = !{ptr @ingenic_rproc_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 208, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 213, i32 3}
!39 = !{ptr @ingenic_rproc_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ingenic_rproc_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 222, i32 11}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 224, i32 3}
!45 = !{ptr @ingenic_rproc_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ingenic_rproc_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 230, i32 3}
!49 = !{ptr @ingenic_rproc_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ingenic_rproc_probe._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ingenic_rproc_ops, !52, !"ingenic_rproc_ops", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 143, i32 31}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 77, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ingenic_rproc_prepare._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ingenic_rproc_prepare._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 47, i32 4}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 48, i32 4}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 49, i32 4}
!64 = !{ptr @vpu_mem_map, !65, !"vpu_mem_map", i1 false, i1 false}
!65 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 46, i32 33}
!66 = !{ptr @ingenic_rproc_of_matches, !67, !"ingenic_rproc_of_matches", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/ingenic_rproc.c", i32 237, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{i64 4234037}
!79 = !{i64 2154252991}
!80 = !{i64 2154253211}
!81 = !{i64 4233619}
!82 = !{i64 2154250940}
!83 = !{i64 2154251446}
!84 = !{i64 2154251918}
