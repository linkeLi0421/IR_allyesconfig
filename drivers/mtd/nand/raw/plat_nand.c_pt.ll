; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/plat_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/plat_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.plat_nand_data = type { %struct.nand_controller, %struct.nand_chip, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_nand_data = type { %struct.platform_nand_chip, %struct.platform_nand_ctrl }
%struct.platform_nand_chip = type { i32, i32, i32, ptr, i32, i32, i32, ptr }
%struct.platform_nand_ctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_plat_nand__198_156_plat_nand_driver_init6 = internal global ptr @plat_nand_driver_init, section ".initcall6.init", align 4
@plat_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @plat_nand_probe, ptr @plat_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @plat_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_plat_nand_driver_exit = internal global ptr @plat_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [46 x i8] c"plat_nand.file=drivers/mtd/nand/raw/plat_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [22 x i8] c"plat_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [29 x i8] c"plat_nand.author=Vitaly Wool\00", section ".modinfo", align 1
@__UNIQUE_ID_description202 = internal constant [49 x i8] c"plat_nand.description=Simple generic NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [34 x i8] c"plat_nand.alias=platform:gen_nand\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gen_nand\00", [23 x i8] zeroinitializer }, align 32
@plat_nand_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gen_nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@plat_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"platform_nand_data is missing\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"plat_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/plat_nand.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@plat_nand_probe._entry_ptr = internal global ptr @plat_nand_probe._entry, section ".printk_index", align 4
@plat_nand_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid number of chips specified\0A\00", [61 x i8] zeroinitializer }, align 32
@plat_nand_probe._entry_ptr.8 = internal global ptr @plat_nand_probe._entry.6, section ".printk_index", align 4
@plat_nand_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @plat_nand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"plat_nand_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 147, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 151, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"plat_nand_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 141, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 47, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 52, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"plat_nand_ops\00", align 1
@___asan_gen_.45 = private constant [36 x i8] c"../drivers/mtd/nand/raw/plat_nand.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 31, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1105, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 464, i32 31 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_plat_nand_driver_exit, ptr @__initcall__kmod_plat_nand__198_156_plat_nand_driver_init6, ptr @plat_nand_driver_exit, ptr @plat_nand_probe._entry, ptr @plat_nand_probe._entry.6, ptr @plat_nand_probe._entry_ptr, ptr @plat_nand_probe._entry_ptr.8, ptr @plat_nand_driver, ptr @.str, ptr @plat_nand_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @plat_nand_ops, ptr @nand_controller_init.__key, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_nand_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_nand_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_nand_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plat_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @plat_nand_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @plat_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @plat_nand_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plat_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2272, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @plat_nand_ops, ptr %ops, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nand_controller_init.__key) #5
  %chip15 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1
  %controller16 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 32
  %5 = ptrtoint ptr %controller16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %controller16, align 4
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %io_base = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %io_base, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %10 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %11 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end23.nand_set_flash_node.exit_crit_edge

if.end23.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %name.i.i) #5
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end23.nand_set_flash_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 8
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %legacy = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %legacy, align 8
  %IO_ADDR_W = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %17 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %IO_ADDR_W, align 4
  %ctrl = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1
  %cmd_ctrl = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_ctrl, align 4
  %cmd_ctrl37 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 7
  %20 = ptrtoint ptr %cmd_ctrl37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cmd_ctrl37, align 4
  %dev_ready = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_ready, align 4
  %dev_ready41 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 9
  %23 = ptrtoint ptr %dev_ready41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev_ready41, align 4
  %select_chip = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %select_chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %select_chip, align 4
  %select_chip45 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 2
  %26 = ptrtoint ptr %select_chip45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %select_chip45, align 8
  %write_buf = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_buf, align 4
  %write_buf49 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 5
  %29 = ptrtoint ptr %write_buf49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %write_buf49, align 4
  %read_buf = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_buf, align 4
  %read_buf53 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 6
  %32 = ptrtoint ptr %read_buf53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %read_buf53, align 8
  %chip_delay = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %chip_delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_delay, align 4
  %chip_delay57 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 5, i32 15
  %35 = ptrtoint ptr %chip_delay57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %chip_delay57, align 4
  %options = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %options, align 4
  %options60 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %options60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %options60, align 8
  %or = or i32 %39, %37
  store i32 %or, ptr %options60, align 8
  %bbt_options = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bbt_options, align 4
  %bbt_options63 = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 10
  %42 = ptrtoint ptr %bbt_options63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bbt_options63, align 8
  %or64 = or i32 %43, %41
  store i32 %or64, ptr %bbt_options63, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl, align 4
  %tobool66.not = icmp eq ptr %46, null
  br i1 %tobool66.not, label %nand_set_flash_node.exit.if.end74_crit_edge, label %if.then67

nand_set_flash_node.exit.if.end74_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then67:                                        ; preds = %nand_set_flash_node.exit
  %call70 = tail call i32 %46(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then67.if.end74_crit_edge, label %if.then67.out_crit_edge

if.then67.out_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %if.then67.if.end74_crit_edge, %nand_set_flash_node.exit.if.end74_crit_edge
  %ecc = getelementptr inbounds %struct.plat_nand_data, ptr %call.i, i32 0, i32 1, i32 33
  %47 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %ecc, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  %call.i158 = tail call i32 @nand_scan_with_ids(ptr noundef %chip15, i32 noundef %49, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool80.not = icmp eq i32 %call.i158, 0
  br i1 %tobool80.not, label %if.end82, label %if.end74.out_crit_edge

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end82:                                         ; preds = %if.end74
  %part_probe_types = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %part_probe_types to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part_probe_types, align 4
  %partitions = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %partitions, align 4
  %nr_partitions = getelementptr inbounds %struct.platform_nand_chip, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %nr_partitions to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_partitions, align 4
  %call86 = tail call i32 @mtd_device_parse_register(ptr noundef %chip15, ptr noundef %51, ptr noundef null, ptr noundef %53, i32 noundef %55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end82.cleanup_crit_edge, label %if.end89

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nand_cleanup(ptr noundef %chip15) #5
  br label %out

out:                                              ; preds = %if.end89, %if.end74.out_crit_edge, %if.then67.out_crit_edge
  %err.0 = phi i32 [ %call70, %if.then67.out_crit_edge ], [ %call.i158, %if.end74.out_crit_edge ], [ %call86, %if.end89 ]
  %remove = getelementptr inbounds %struct.platform_nand_data, ptr %1, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %remove, align 4
  %tobool92.not = icmp eq ptr %57, null
  br i1 %tobool92.not, label %out.cleanup_crit_edge, label %if.then93

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %57(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %out.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.then20, %if.end7.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %7, %if.then20 ], [ -22, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ %err.0, %if.then93 ], [ %err.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plat_nand_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %chip2 = getelementptr inbounds %struct.plat_nand_data, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %chip2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 133, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip2) #5
  %remove = getelementptr inbounds %struct.platform_nand_data, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.end.if.end28_crit_edge, label %if.then25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %pdev) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plat_nand_attach_chip(ptr nocapture noundef %chip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %algo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_plat_nand__198_156_plat_nand_driver_init6, !1, !"__initcall__kmod_plat_nand__198_156_plat_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 156, i32 1}
!2 = !{ptr @__exitcall_plat_nand_driver_exit, !1, !"__exitcall_plat_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file199, !4, !"__UNIQUE_ID_file199", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 158, i32 1}
!5 = !{ptr @__UNIQUE_ID_license200, !4, !"__UNIQUE_ID_license200", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author201, !7, !"__UNIQUE_ID_author201", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 159, i32 1}
!8 = !{ptr @__UNIQUE_ID_description202, !9, !"__UNIQUE_ID_description202", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 160, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias203, !11, !"__UNIQUE_ID_alias203", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 161, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 151, i32 12}
!14 = !{ptr @plat_nand_driver, !15, !"plat_nand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 147, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 47, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @plat_nand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @plat_nand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 52, i32 3}
!26 = !{ptr @plat_nand_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @plat_nand_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @plat_nand_ops, !29, !"plat_nand_ops", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 31, i32 41}
!30 = !{ptr @nand_controller_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!35 = !{ptr @plat_nand_match, !36, !"plat_nand_match", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/plat_nand.c", i32 141, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
