; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/sharpsl.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/sharpsl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sharpsl_nand = type { %struct.nand_controller, %struct.nand_chip, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sharpsl_nand_platform_data = type { ptr, ptr, ptr, i32, ptr }

@__initcall__kmod_sharpsl__261_243_sharpsl_nand_driver_init6 = internal global ptr @sharpsl_nand_driver_init, section ".initcall6.init", align 4
@sharpsl_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sharpsl_nand_probe, ptr @sharpsl_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sharpsl_nand_driver_exit = internal global ptr @sharpsl_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file262 = internal constant [42 x i8] c"sharpsl.file=drivers/mtd/nand/raw/sharpsl\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [20 x i8] c"sharpsl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [50 x i8] c"sharpsl.author=Richard Purdie <rpurdie@rpsys.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [81 x i8] c"sharpsl.description=Device specific logic for NAND flash on Sharp SL-C7xx Series\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sharpsl-nand\00", [19 x i8] zeroinitializer }, align 32
@sharpsl_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sharpsl_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/nand/raw/sharpsl.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sharpsl_nand_probe._entry_ptr = internal global ptr @sharpsl_nand_probe._entry, section ".printk_index", align 4
@sharpsl_nand_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no io memory resource defined!\0A\00", [32 x i8] zeroinitializer }, align 32
@sharpsl_nand_probe._entry_ptr.8 = internal global ptr @sharpsl_nand_probe._entry.6, section ".printk_index", align 4
@sharpsl_nand_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ioremap to access Sharp SL NAND chip failed\0A\00", [51 x i8] zeroinitializer }, align 32
@sharpsl_nand_probe._entry_ptr.11 = internal global ptr @sharpsl_nand_probe._entry.9, section ".printk_index", align 4
@sharpsl_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @sharpsl_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"sharpsl_nand_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 235, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 237, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 131, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 142, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 150, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"sharpsl_ops\00", align 1
@___asan_gen_.50 = private constant [34 x i8] c"../drivers/mtd/nand/raw/sharpsl.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 114, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1105, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_sharpsl_nand_driver_exit, ptr @__initcall__kmod_sharpsl__261_243_sharpsl_nand_driver_init6, ptr @sharpsl_nand_driver_exit, ptr @sharpsl_nand_probe._entry, ptr @sharpsl_nand_probe._entry.6, ptr @sharpsl_nand_probe._entry.9, ptr @sharpsl_nand_probe._entry_ptr, ptr @sharpsl_nand_probe._entry_ptr.11, ptr @sharpsl_nand_probe._entry_ptr.8, ptr @sharpsl_nand_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @sharpsl_ops, ptr @nand_controller_init.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sharpsl_nand_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sharpsl_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sharpsl_nand_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2272) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err_get_res

if.end13:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call15 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %add.i) #6
  %io = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %io, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %err_get_res

if.end23:                                         ; preds = %if.end13
  %chip = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @nand_controller_init.__key) #6
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sharpsl_ops, ptr %ops, align 4
  %controller26 = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 32
  %9 = ptrtoint ptr %controller26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %controller26, align 4
  %parent = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %ecc_layout = getelementptr inbounds %struct.sharpsl_nand_platform_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ecc_layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ecc_layout, align 4
  %ooblayout1.i = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 15
  %13 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ooblayout1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 24
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %18 = or i8 %17, 8
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 8
  %add.ptr38 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %18) #6, !srcloc !47
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 8
  %add.ptr40 = getelementptr i8, ptr %22, i32 20
  %legacy = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr40, ptr %legacy, align 8
  %IO_ADDR_W = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %24 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr40, ptr %IO_ADDR_W, align 4
  %cmd_ctrl = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 7
  %25 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sharpsl_nand_hwcontrol, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 9
  %26 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sharpsl_nand_dev_ready, ptr %dev_ready, align 4
  %chip_delay = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 15
  %27 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15, ptr %chip_delay, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %badblock_pattern47 = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %badblock_pattern47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %badblock_pattern47, align 4
  %call.i = tail call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end51, label %if.end23.err_scan_crit_edge

if.end23.err_scan_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_scan

if.end51:                                         ; preds = %if.end23
  %name = getelementptr inbounds %struct.sharpsl_nand, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str, ptr %name, align 8
  %part_parsers = getelementptr inbounds %struct.sharpsl_nand_platform_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %part_parsers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part_parsers, align 4
  %partitions = getelementptr inbounds %struct.sharpsl_nand_platform_data, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %partitions, align 4
  %nr_partitions = getelementptr inbounds %struct.sharpsl_nand_platform_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %nr_partitions to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_partitions, align 4
  %call52 = tail call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef %33, ptr noundef null, ptr noundef %35, i32 noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %err_add

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_add:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nand_cleanup(ptr noundef %chip) #6
  br label %err_scan

err_scan:                                         ; preds = %err_add, %if.end23.err_scan_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end23.err_scan_crit_edge ], [ %call52, %err_add ]
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 8
  tail call void @iounmap(ptr noundef %39) #6
  br label %err_get_res

err_get_res:                                      ; preds = %err_scan, %do.end21, %do.end11
  %err.1 = phi i32 [ %err.0, %err_scan ], [ -5, %do.end21 ], [ -19, %do.end11 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_get_res, %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.1, %err_get_res ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.sharpsl_nand, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 222, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #6
  %io = getelementptr inbounds %struct.sharpsl_nand, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  tail call void @iounmap(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sharpsl_nand_hwcontrol(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ctrl, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %ctrl, 7
  %and3 = shl i32 %ctrl, 4
  %shl = and i32 %and3, 16
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %io = getelementptr i8, ptr %chip, i32 2168
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %3 = and i8 %2, -24
  %4 = trunc i32 %or to i8
  %5 = or i8 %3, %4
  %conv14 = xor i8 %5, 17
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 8
  %add.ptr16 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %conv14) #6, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -1
  br i1 %cmp.not, label %if.end.if.end23_crit_edge, label %do.body19

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %conv22 = trunc i32 %cmd to i8
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %IO_ADDR_W, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %conv22) #6, !srcloc !47
  br label %if.end23

if.end23:                                         ; preds = %do.body19, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_nand_dev_ready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr i8, ptr %chip, i32 2168
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %3 = lshr i8 %2, 5
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sharpsl_attach_chip(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %strength, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %5 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sharpsl_nand_enable_hwecc, ptr %hwctl, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %6 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sharpsl_nand_calculate_ecc, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %7 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rawnand_sw_hamming_correct, ptr %correct, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sharpsl_nand_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %io = getelementptr i8, ptr %chip, i32 2168
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #6, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_nand_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr i8, ptr %chip, i32 2168
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %neg = xor i8 %2, -1
  %3 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %neg, ptr %ecc_code, align 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %neg13 = xor i8 %6, -1
  %arrayidx15 = getelementptr i8, ptr %ecc_code, i32 1
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %neg13, ptr %arrayidx15, align 1
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 8
  %add.ptr19 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %neg24 = xor i8 %10, -1
  %shl = shl i8 %neg24, 2
  %or = or i8 %shl, 3
  %arrayidx26 = getelementptr i8, ptr %ecc_code, i32 2
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %arrayidx26, align 1
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 8
  %add.ptr30 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp ne i8 %14, 0
  %conv35 = zext i1 %cmp to i32
  ret i32 %conv35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_sharpsl__261_243_sharpsl_nand_driver_init6, !1, !"__initcall__kmod_sharpsl__261_243_sharpsl_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 243, i32 1}
!2 = !{ptr @__exitcall_sharpsl_nand_driver_exit, !1, !"__exitcall_sharpsl_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file262, !4, !"__UNIQUE_ID_file262", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 245, i32 1}
!5 = !{ptr @__UNIQUE_ID_license263, !4, !"__UNIQUE_ID_license263", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author264, !7, !"__UNIQUE_ID_author264", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 246, i32 1}
!8 = !{ptr @__UNIQUE_ID_description265, !9, !"__UNIQUE_ID_description265", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 247, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 237, i32 11}
!12 = !{ptr @sharpsl_nand_driver, !13, !"sharpsl_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 235, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 131, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sharpsl_nand_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sharpsl_nand_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 142, i32 3}
!24 = !{ptr @sharpsl_nand_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sharpsl_nand_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 150, i32 3}
!28 = !{ptr @sharpsl_nand_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sharpsl_nand_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @nand_controller_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sharpsl_ops, !34, !"sharpsl_ops", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/sharpsl.c", i32 114, i32 41}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2154596218}
!45 = !{i64 5913257}
!46 = !{i64 2154596393}
!47 = !{i64 5912862}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2154588366}
!50 = !{i64 2154588543}
!51 = !{i64 2154588823}
!52 = !{i64 2154589120}
!53 = !{i64 2154589347}
!54 = !{i64 2154589638}
!55 = !{i64 2154589877}
!56 = !{i64 2154590116}
!57 = !{i64 2154590355}
