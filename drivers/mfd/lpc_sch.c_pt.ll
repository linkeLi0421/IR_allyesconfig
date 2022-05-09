; ModuleID = '/llk/IR_all_yes/drivers/mfd/lpc_sch.c_pt.bc'
source_filename = "../drivers/mfd/lpc_sch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpc_sch_info = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@__initcall__kmod_lpc_sch__236_184_lpc_sch_driver_init6 = internal global ptr @lpc_sch_driver_init, section ".initcall6.init", align 4
@lpc_sch_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @lpc_sch_ids, ptr @lpc_sch_probe, ptr @lpc_sch_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lpc_sch_driver_exit = internal global ptr @lpc_sch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [54 x i8] c"lpc_sch.author=Denis Turischev <denis@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [56 x i8] c"lpc_sch.description=LPC interface for Intel Poulsbo SCH\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [33 x i8] c"lpc_sch.file=drivers/mfd/lpc_sch\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"lpc_sch.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpc_sch\00", [24 x i8] zeroinitializer }, align 32
@lpc_sch_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 33049, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 33158, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 3168, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 2398, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sch_chipset_info = internal constant { [4 x %struct.lpc_sch_info], [48 x i8] } { [4 x %struct.lpc_sch_info] [%struct.lpc_sch_info { i32 64, i32 64, i32 0 }, %struct.lpc_sch_info { i32 64, i32 64, i32 64 }, %struct.lpc_sch_info { i32 64, i32 128, i32 64 }, %struct.lpc_sch_info { i32 0, i32 64, i32 64 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isch_smbus\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sch_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ie6xx_wdt\00", [22 x i8] zeroinitializer }, align 32
@lpc_sch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 165, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"All decode registers disabled.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc_sch_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/lpc_sch.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc_sch_probe._entry_ptr = internal global ptr @lpc_sch_probe._entry, section ".printk_index", align 4
@lpc_sch_get_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 91, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Decode of the %s I/O range disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpc_sch_get_io\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpc_sch_get_io._entry_ptr = internal global ptr @lpc_sch_get_io._entry, section ".printk_index", align 4
@lpc_sch_get_io._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.6, i32 96, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I/O space for %s uninitialized\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc_sch_get_io._entry_ptr.14 = internal global ptr @lpc_sch_get_io._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"lpc_sch_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 177, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 184, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"lpc_sch_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 66, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"sch_chipset_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 45, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 140, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 148, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 165, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 90, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [25 x i8] c"../drivers/mfd/lpc_sch.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 96, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_lpc_sch_driver_exit, ptr @__initcall__kmod_lpc_sch__236_184_lpc_sch_driver_init6, ptr @lpc_sch_driver_exit, ptr @lpc_sch_get_io._entry, ptr @lpc_sch_get_io._entry.12, ptr @lpc_sch_get_io._entry_ptr, ptr @lpc_sch_get_io._entry_ptr.14, ptr @lpc_sch_probe._entry, ptr @lpc_sch_probe._entry_ptr, ptr @lpc_sch_driver, ptr @.str, ptr @lpc_sch_ids, ptr @sch_chipset_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_sch_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_sch_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_chipset_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_sch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_sch_get_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_sch_get_io._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_sch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lpc_sch_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc_sch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @lpc_sch_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_sch_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %base_addr_cfg.i.i = alloca i32, align 4
  %lpc_sch_cells = alloca [3 x %struct.mfd_cell], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %lpc_sch_cells) #5
  %0 = call ptr @memset(ptr %lpc_sch_cells, i32 255, i32 264)
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.lpc_sch_info], ptr @sch_chipset_info, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr_cfg.i.i) #5
  %7 = ptrtoint ptr %base_addr_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %base_addr_cfg.i.i, align 4, !annotation !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %call.i18.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %base_addr_cfg.i.i) #5
  %8 = ptrtoint ptr %base_addr_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i, label %if.end2.thread.i.i, label %if.end2.i.i

if.end2.thread.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #8
  br label %do.end9.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %phi.cast.i.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i.i)
  %cmp4.i.i = icmp eq i32 %phi.cast.i.i, 0
  br i1 %cmp4.i.i, label %if.end2.i.i.do.end9.i.i_crit_edge, label %10

if.end2.i.i.do.end9.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end2.i.i.do.end9.i.i_crit_edge, %if.end2.thread.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end9.i.i, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i.i) #5
  br label %21

10:                                               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %phi.cast.i.i, ptr %call.i.i, align 4
  %add.i.i = add i32 %4, -1
  %sub.i.i = add i32 %add.i.i, %phi.cast.i.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i.i, ptr %end.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %flags.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i.i) #5
  %14 = getelementptr inbounds i8, ptr %lpc_sch_cells, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 80)
  %16 = ptrtoint ptr %lpc_sch_cells to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.1, ptr %lpc_sch_cells, align 8
  %resources.i = getelementptr inbounds %struct.mfd_cell, ptr %lpc_sch_cells, i32 0, i32 15
  %17 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %resources.i, align 4
  %num_resources.i = getelementptr inbounds %struct.mfd_cell, ptr %lpc_sch_cells, i32 0, i32 14
  %18 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_resources.i, align 8
  %ignore_resource_conflicts.i = getelementptr inbounds %struct.mfd_cell, ptr %lpc_sch_cells, i32 0, i32 16
  %19 = ptrtoint ptr %ignore_resource_conflicts.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ignore_resource_conflicts.i, align 8
  %id6.i = getelementptr inbounds %struct.mfd_cell, ptr %lpc_sch_cells, i32 0, i32 1
  %20 = ptrtoint ptr %id6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %6, ptr %id6.i, align 4
  br label %21

21:                                               ; preds = %10, %if.end
  %22 = phi i32 [ 1, %10 ], [ 0, %if.end ]
  %io_size_gpio = getelementptr [4 x %struct.lpc_sch_info], ptr @sch_chipset_info, i32 0, i32 %2, i32 1
  %23 = ptrtoint ptr %io_size_gpio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_size_gpio, align 4
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device, align 4
  %arrayidx6 = getelementptr [3 x %struct.mfd_cell], ptr %lpc_sch_cells, i32 0, i32 %22
  %call7 = call fastcc i32 @lpc_sch_populate_cell(ptr noundef %dev, i32 noundef 68, ptr noundef nonnull @.str.2, i32 noundef %24, i32 noundef %26, ptr noundef %arrayidx6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %.cleanup_crit_edge, label %if.end10

.cleanup_crit_edge:                               ; preds = %21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp eq i32 %call7, 0
  %inc13 = zext i1 %cmp11 to i32
  %spec.select58 = add nuw nsw i32 %22, %inc13
  %io_size_wdt = getelementptr [4 x %struct.lpc_sch_info], ptr @sch_chipset_info, i32 0, i32 %2, i32 2
  %27 = ptrtoint ptr %io_size_wdt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_size_wdt, align 4
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device, align 4
  %arrayidx16 = getelementptr [3 x %struct.mfd_cell], ptr %lpc_sch_cells, i32 0, i32 %spec.select58
  %call17 = call fastcc i32 @lpc_sch_populate_cell(ptr noundef %dev, i32 noundef 132, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %30, ptr noundef %arrayidx16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end10.cleanup_crit_edge, label %if.end20

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp21 = icmp eq i32 %call17, 0
  %inc23 = zext i1 %cmp21 to i32
  %spec.select59 = add nuw nsw i32 %spec.select58, %inc23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select59)
  %cmp25 = icmp eq i32 %spec.select59, 0
  br i1 %cmp25, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 @mfd_add_devices(ptr noundef %dev.i, i32 noundef 0, ptr noundef nonnull %lpc_sch_cells, i32 noundef %spec.select59, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end, %if.end10.cleanup_crit_edge, %.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call30, %if.end28 ], [ %call7, %.cleanup_crit_edge ], [ %call17, %if.end10.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %lpc_sch_cells) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc_sch_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @mfd_remove_devices(ptr noundef %dev1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc_sch_populate_cell(ptr noundef %pdev, i32 noundef %where, ptr noundef %name, i32 noundef %size, i32 noundef %id, ptr nocapture noundef writeonly %cell) unnamed_addr #2 align 64 {
entry:
  %base_addr_cfg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr_cfg.i) #5
  %0 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %base_addr_cfg.i, align 4, !annotation !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.i = icmp eq i32 %size, 0
  br i1 %cmp.i, label %if.end.lpc_sch_get_io.exit.thread_crit_edge, label %if.end.i

if.end.lpc_sch_get_io.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lpc_sch_get_io.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i18 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %where, ptr noundef nonnull %base_addr_cfg.i) #5
  %1 = ptrtoint ptr %base_addr_cfg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not.i = icmp sgt i32 %2, -1
  br i1 %tobool.not.i, label %if.end2.thread.i, label %if.end2.i

if.end2.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %name) #8
  br label %do.end9.i

if.end2.i:                                        ; preds = %if.end.i
  %phi.cast.i = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i)
  %cmp4.i = icmp eq i32 %phi.cast.i, 0
  br i1 %cmp4.i, label %if.end2.i.do.end9.i_crit_edge, label %if.end4

if.end2.i.do.end9.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.end2.i.do.end9.i_crit_edge, %if.end2.thread.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %name) #8
  br label %lpc_sch_get_io.exit.thread

lpc_sch_get_io.exit.thread:                       ; preds = %do.end9.i, %if.end.lpc_sch_get_io.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end.lpc_sch_get_io.exit.thread_crit_edge ], [ 2, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phi.cast.i, ptr %call.i, align 4
  %add.i = add i32 %size, -1
  %sub.i = add i32 %add.i, %phi.cast.i
  %end.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %end.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %flags.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr_cfg.i) #5
  %6 = getelementptr inbounds i8, ptr %cell, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 80)
  %8 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %cell, align 8
  %resources = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 15
  %9 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %resources, align 4
  %num_resources = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 14
  %10 = ptrtoint ptr %num_resources to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_resources, align 8
  %ignore_resource_conflicts = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 16
  %11 = ptrtoint ptr %ignore_resource_conflicts to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ignore_resource_conflicts, align 8
  %id6 = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 1
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %id, ptr %id6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lpc_sch_get_io.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %lpc_sch_get_io.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_lpc_sch__236_184_lpc_sch_driver_init6, !1, !"__initcall__kmod_lpc_sch__236_184_lpc_sch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/lpc_sch.c", i32 184, i32 1}
!2 = !{ptr @__exitcall_lpc_sch_driver_exit, !1, !"__exitcall_lpc_sch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/mfd/lpc_sch.c", i32 186, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/mfd/lpc_sch.c", i32 187, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/mfd/lpc_sch.c", i32 188, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lpc_sch_driver, !12, !"lpc_sch_driver", i1 false, i1 false}
!12 = !{!"../drivers/mfd/lpc_sch.c", i32 177, i32 26}
!13 = !{ptr @lpc_sch_ids, !14, !"lpc_sch_ids", i1 false, i1 false}
!14 = !{!"../drivers/mfd/lpc_sch.c", i32 66, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/lpc_sch.c", i32 140, i32 43}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/lpc_sch.c", i32 148, i32 46}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/lpc_sch.c", i32 156, i32 44}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/lpc_sch.c", i32 165, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lpc_sch_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @lpc_sch_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sch_chipset_info, !30, !"sch_chipset_info", i1 false, i1 false}
!30 = !{!"../drivers/mfd/lpc_sch.c", i32 45, i32 28}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/lpc_sch.c", i32 90, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lpc_sch_get_io._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @lpc_sch_get_io._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/lpc_sch.c", i32 96, i32 3}
!39 = !{ptr @lpc_sch_get_io._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lpc_sch_get_io._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
