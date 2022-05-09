; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/txx9ndfmc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/txx9ndfmc.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.txx9ndfmc_priv = type { ptr, %struct.nand_chip, i32, ptr }
%struct.txx9ndfmc_platform_data = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.txx9ndfmc_drvdata = type { [4 x ptr], ptr, i8, i8, %struct.nand_controller }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/txx9ndfmc.c\00", [63 x i8] zeroinitializer }, align 32
@__initcall__kmod_txx9ndfmc__206_417_txx9ndfmc_driver_init6 = internal global ptr @txx9ndfmc_driver_init, section ".initcall6.init", align 4
@txx9ndfmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr @txx9ndfmc_resume, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_txx9ndfmc_driver_exit = internal global ptr @txx9ndfmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file207 = internal constant [46 x i8] c"txx9ndfmc.file=drivers/mtd/nand/raw/txx9ndfmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [22 x i8] c"txx9ndfmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [60 x i8] c"txx9ndfmc.description=TXx9 SoC NAND flash controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias210 = internal constant [35 x i8] c"txx9ndfmc.alias=platform:txx9ndfmc\00", section ".modinfo", align 1
@txx9ndfmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CLK:%ldMHz HOLD:%d SPW:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"txx9ndfmc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@txx9ndfmc_probe._entry_ptr = internal global ptr @txx9ndfmc_probe._entry, section ".printk_index", align 4
@txx9ndfmc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @txx9ndfmc_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%u\00", [26 x i8] zeroinitializer }, align 32
@txx9ndfmc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 352, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to allocate MTD name.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@txx9ndfmc_probe._entry_ptr.9 = internal global ptr @txx9ndfmc_probe._entry.6, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@txx9ndfmc_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 235, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset failed.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"txx9ndfmc_initialize\00", [43 x i8] zeroinitializer }, align 32
@txx9ndfmc_initialize._entry_ptr = internal global ptr @txx9ndfmc_initialize._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txx9ndfmc\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 390, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"txx9ndfmc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 409, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 306, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"txx9ndfmc_controller_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 275, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 343, i32 47 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 352, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1105, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 235, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [36 x i8] c"../drivers/mtd/nand/raw/txx9ndfmc.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 413, i32 11 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__exitcall_txx9ndfmc_driver_exit, ptr @__initcall__kmod_txx9ndfmc__206_417_txx9ndfmc_driver_init6, ptr @txx9ndfmc_driver_exit, ptr @txx9ndfmc_initialize._entry, ptr @txx9ndfmc_initialize._entry_ptr, ptr @txx9ndfmc_probe._entry, ptr @txx9ndfmc_probe._entry.6, ptr @txx9ndfmc_probe._entry_ptr, ptr @txx9ndfmc_probe._entry_ptr.9, ptr @txx9ndfmc_remove, ptr @.str, ptr @txx9ndfmc_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @txx9ndfmc_controller_ops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @nand_controller_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txx9ndfmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txx9ndfmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txx9ndfmc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txx9ndfmc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txx9ndfmc_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_remove(ptr nocapture noundef readonly %dev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %1, i32 0, i32 %i.043
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call7 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end3.if.end23_crit_edge, label %do.end, !prof !49

if.end3.if.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end3.if.end23_crit_edge
  tail call void @nand_cleanup(ptr noundef nonnull %3) #7
  %mtdname = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mtdname to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtdname, align 4
  tail call void @kfree(ptr noundef %7) #7
  tail call void @kfree(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %cleanup.cleanup32_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @txx9ndfmc_driver, ptr noundef nonnull @txx9ndfmc_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @txx9ndfmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @txx9ndfmc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_probe(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %gbus_clock = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gbus_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gbus_clock, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup125_crit_edge, label %if.end

entry.cleanup125_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup125

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %dev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup125

if.end10:                                         ; preds = %if.end
  %hold11 = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hold11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hold11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  %. = select i1 %tobool12.not, i32 20, i32 %7
  %spw13 = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %spw13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spw13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  %cond18 = select i1 %tobool14.not, i32 90, i32 %9
  %sub = add i32 %3, 999
  %div = udiv i32 %sub, 1000
  %mul = mul i32 %., %div
  %sub20 = add i32 %mul, 999999
  %div21 = udiv i32 %sub20, 1000000
  %mul25 = mul i32 %cond18, %div
  %sub27 = add i32 %mul25, 999999
  %div28 = udiv i32 %sub27, 1000000
  %flags = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %sub31 = add nsw i32 %div21, -2
  %spec.select = select i1 %tobool29.not, i32 %div21, i32 %sub31
  %12 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 15)
  %conv = trunc i32 %13 to i8
  %hold44 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %hold44 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %hold44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %sub27)
  %cmp46 = icmp ugt i32 %sub27, 2999999
  %15 = tail call i32 @llvm.smin.i32(i32 %div28, i32 16)
  %16 = add nsw i32 %15, -1
  %17 = select i1 %cmp46, i32 %16, i32 1
  %conv59 = trunc i32 %17 to i8
  %spw60 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %spw60 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv59, ptr %spw60, align 1
  %add62 = add i32 %3, 500000
  %div63 = udiv i32 %add62, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %div63, i32 noundef %13, i32 noundef %17) #10
  %controller = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.10, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @txx9ndfmc_controller_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @txx9ndfmc_initialize(ptr noundef %dev)
  %ch_mask = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %wide_mask = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end10
  %i.0212 = phi i32 [ 0, %if.end10 ], [ %inc, %cleanup.for.body_crit_edge ]
  %21 = ptrtoint ptr %ch_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ch_mask, align 4
  %conv67 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 1, %i.0212
  %and68 = and i32 %shl, %conv67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.body.cleanup_crit_edge, label %if.end71

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 2184) #11
  %tobool73.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %chip76 = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %parent, align 8
  %read_byte = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 3
  %25 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @txx9ndfmc_read_byte, ptr %read_byte, align 4
  %read_buf = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 6
  %26 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @txx9ndfmc_read_buf, ptr %read_buf, align 8
  %write_buf = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 5
  %27 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @txx9ndfmc_write_buf, ptr %write_buf, align 4
  %cmd_ctrl = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 7
  %28 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @txx9ndfmc_cmd_ctrl, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 9
  %29 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @txx9ndfmc_dev_ready, ptr %dev_ready, align 4
  %chip_delay = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 15
  %30 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 100, ptr %chip_delay, align 4
  %controller86 = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 32
  %31 = ptrtoint ptr %controller86 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %controller, ptr %controller86, align 4
  %priv1.i = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 34
  %32 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %priv1.i, align 8
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %call7.i.i, align 8
  %34 = ptrtoint ptr %ch_mask to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ch_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp90.not = icmp eq i8 %35, 1
  %cs96 = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 2
  br i1 %cmp90.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end75
  %36 = ptrtoint ptr %cs96 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.0212, ptr %cs96, align 8
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then92.dev_name.exit_crit_edge

if.then92.dev_name.exit_crit_edge:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then92.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %40, %if.end.i ], [ %38, %if.then92.dev_name.exit_crit_edge ]
  %call95 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, i32 noundef %i.0212) #7
  br label %if.end101

if.else:                                          ; preds = %if.end75
  %41 = ptrtoint ptr %cs96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %cs96, align 8
  %42 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i207 = icmp eq ptr %43, null
  br i1 %tobool.not.i207, label %if.end.i208, label %if.else.dev_name.exit210_crit_edge

if.else.dev_name.exit210_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit210

if.end.i208:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit210

dev_name.exit210:                                 ; preds = %if.end.i208, %if.else.dev_name.exit210_crit_edge
  %retval.0.i209 = phi ptr [ %45, %if.end.i208 ], [ %43, %if.else.dev_name.exit210_crit_edge ]
  %call99 = tail call noalias ptr @kstrdup(ptr noundef %retval.0.i209, i32 noundef 3264) #7
  br label %if.end101

if.end101:                                        ; preds = %dev_name.exit210, %dev_name.exit
  %call99.sink = phi ptr [ %call99, %dev_name.exit210 ], [ %call95, %dev_name.exit ]
  %mtdname100 = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %mtdname100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call99.sink, ptr %mtdname100, align 4
  %mtdname102 = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 3
  %tobool103.not = icmp eq ptr %call99.sink, null
  br i1 %tobool103.not, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end109:                                        ; preds = %if.end101
  %47 = ptrtoint ptr %wide_mask to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wide_mask, align 2
  %conv110 = zext i8 %48 to i32
  %and112 = and i32 %shl, %conv110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end109.if.end115_crit_edge, label %if.then114

if.end109.if.end115_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %options = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %options, align 8
  %or = or i32 %50, 2
  store i32 %or, ptr %options, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end109.if.end115_crit_edge
  %call.i211 = tail call i32 @nand_scan_with_ids(ptr noundef %chip76, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool117.not = icmp eq i32 %call.i211, 0
  %51 = ptrtoint ptr %mtdname102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mtdname102, align 4
  br i1 %tobool117.not, label %if.end120, label %if.then118

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %52) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end120:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %53 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %name, align 8
  %call122 = tail call i32 @mtd_device_parse_register(ptr noundef %chip76, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  %arrayidx = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 %i.0212
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %chip76, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then118, %if.then104, %if.end71.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %cleanup.cleanup125_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup125_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup125

cleanup125:                                       ; preds = %cleanup.cleanup125_crit_edge, %if.then7, %entry.cleanup125_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ -12, %entry.cleanup125_crit_edge ], [ 0, %cleanup.cleanup125_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txx9ndfmc_initialize(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl.i.i = shl i32 24, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %or = or i32 %12, 1
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %base.i.i26 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i26, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %shl.i.i27 = shl i32 24, %20
  %add.ptr.i.i28 = getelementptr i8, ptr %18, i32 %shl.i.i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 %or) #7, !srcloc !51
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %base.i.i3144 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i3144 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i3144, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %shl.i.i3245 = shl i32 24, %28
  %add.ptr.i.i3346 = getelementptr i8, ptr %26, i32 %shl.i.i3245
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3346) #7, !srcloc !50
  %and547 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and547)
  %tobool6.not48 = icmp eq i32 %and547, 0
  br i1 %tobool6.not48, label %if.else.if.end9_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.else.while.body_crit_edge
  %tmout.049 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 100, %if.else.while.body_crit_edge ]
  %dec = add nsw i32 %tmout.049, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %if.end9

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #7
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 8
  %base.i.i31 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i31, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %shl.i.i32 = shl i32 24, %38
  %add.ptr.i.i33 = getelementptr i8, ptr %36, i32 %shl.i.i32
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #7, !srcloc !50
  %and5 = and i32 %39, 1
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %do.end, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %hold = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %hold to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hold, align 4
  %conv = zext i8 %41 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %spw = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %spw to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %spw, align 1
  %conv10 = zext i8 %43 to i32
  %or11 = or i32 %shl, %conv10
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %46 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platform_data.i, align 8
  %base.i.i36 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %base.i.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i36, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %shl.i.i37 = shl i32 20, %51
  %add.ptr.i.i38 = getelementptr i8, ptr %49, i32 %shl.i.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %or11) #7, !srcloc !51
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and13 = shl i32 %53, 2
  %54 = and i32 %and13, 4
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i, align 4
  %57 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %platform_data.i, align 8
  %base.i.i41 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i41, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %58, align 4
  %shl.i.i42 = shl i32 4, %62
  %add.ptr.i.i43 = getelementptr i8, ptr %60, i32 %shl.i.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %54) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @txx9ndfmc_read_byte(ptr nocapture noundef readonly %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !50
  %conv = trunc i32 %8 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txx9ndfmc_read_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not4 = icmp eq i32 %len, 0
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %buf.addr.06 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %len.addr.05 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.05, -1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !50
  %conv = trunc i32 %8 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.06, i32 1
  %9 = ptrtoint ptr %buf.addr.06 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %buf.addr.06, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txx9ndfmc_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i.i, align 8
  %base.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl.i.i = shl i32 4, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %or = or i32 %12, 128
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %15 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i.i, align 8
  %base.i.i10 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i10, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %shl.i.i11 = shl i32 4, %20
  %add.ptr.i.i12 = getelementptr i8, ptr %18, i32 %shl.i.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %or) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not18 = icmp eq i32 %len, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %len.addr.020 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %buf.addr.019 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %dec = add i32 %len.addr.020, -1
  %incdec.ptr = getelementptr i8, ptr %buf.addr.019, i32 1
  %21 = ptrtoint ptr %buf.addr.019 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.addr.019, align 1
  %conv = zext i8 %22 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %conv) #7, !srcloc !51
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i, align 4
  %25 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %platform_data.i.i, align 8
  %base.i.i15 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i15, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %shl.i.i16 = shl i32 4, %30
  %add.ptr.i.i17 = getelementptr i8, ptr %28, i32 %shl.i.i16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %12) #7, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txx9ndfmc_cmd_ctrl(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %and = and i32 %ctrl, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %shl.i.i = shl i32 4, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %and5 = and i32 %14, -20
  %and6 = lshr i32 %ctrl, 1
  %or = and i32 %and6, 3
  %or11 = or i32 %or, %and5
  %and12 = and i32 %ctrl, 1
  %15 = shl nuw nsw i32 %and12, 4
  %or15 = or i32 %or11, %15
  %cs = getelementptr inbounds %struct.txx9ndfmc_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp slt i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %tobool13.not, %cmp
  %and19 = and i32 %or15, -13
  %shl = shl i32 %17, 2
  %or21 = or i32 %and19, %shl
  %mcr.0 = select i1 %or.cond, i32 %or15, i32 %or21
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %20 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_data.i, align 8
  %base.i.i59 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i59, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %shl.i.i60 = shl i32 4, %25
  %add.ptr.i.i61 = getelementptr i8, ptr %23, i32 %shl.i.i60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %mcr.0) #7, !srcloc !51
  br label %if.end22

if.end22:                                         ; preds = %if.then, %entry.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp23.not = icmp eq i32 %cmd, -1
  br i1 %cmp23.not, label %if.end26, label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %and25 = and i32 %cmd, 255
  %driver_data.i.i.i.i62 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i.i62, align 4
  %base.i.i64 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i64, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %and25) #7, !srcloc !51
  br label %if.end36

if.end26:                                         ; preds = %if.end22
  %flags = getelementptr inbounds %struct.txx9ndfmc_platform_data, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and27 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %brmerge = or i1 %tobool.not, %tobool28.not
  br i1 %brmerge, label %if.end26.if.end36_crit_edge, label %if.then34

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i.i65 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i.i65, align 4
  %base.i.i67 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i67, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #7, !srcloc !51
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26.if.end36_crit_edge, %if.end26.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_dev_ready(ptr nocapture noundef readonly %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %platform_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl.i.i = shl i32 8, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %and = lshr i32 %12, 7
  %and.lobit = and i32 %and, 1
  %13 = xor i32 %and.lobit, 1
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @txx9ndfmc_attach_chip(ptr nocapture noundef %chip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %strength, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %4)
  %cmp2 = icmp ugt i32 %4, 511
  %spec.select = select i1 %cmp2, i32 512, i32 256
  %spec.select24 = select i1 %cmp2, i32 6, i32 3
  %5 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select24, ptr %7, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %9 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @txx9ndfmc_calculate_ecc, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %10 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @txx9ndfmc_correct_data, ptr %correct, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %11 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @txx9ndfmc_enable_hwecc, ptr %hwctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %platform_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl.i.i = shl i32 4, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %and = and i32 %12, -97
  %13 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %15 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i28 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i28, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %shl.i.i29 = shl i32 4, %20
  %add.ptr.i.i30 = getelementptr i8, ptr %18, i32 %shl.i.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %and) #7, !srcloc !51
  %or3 = or i32 %and, 64
  %21 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %23 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i33 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i33, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %shl.i.i34 = shl i32 4, %28
  %add.ptr.i.i35 = getelementptr i8, ptr %26, i32 %shl.i.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35, i32 %or3) #7, !srcloc !51
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %29 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp50 = icmp sgt i32 %30, 0
  br i1 %cmp50, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %eccbytes.052 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %30, %entry.for.body_crit_edge ]
  %ecc_code.addr.051 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %ecc_code, %entry.for.body_crit_edge ]
  %31 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i38 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i38, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !50
  %conv = trunc i32 %35 to i8
  %arrayidx = getelementptr i8, ptr %ecc_code.addr.051, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %arrayidx, align 1
  %37 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i41 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i41, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !50
  %conv6 = trunc i32 %41 to i8
  %42 = ptrtoint ptr %ecc_code.addr.051 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv6, ptr %ecc_code.addr.051, align 1
  %43 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i44 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i44, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !50
  %conv9 = trunc i32 %47 to i8
  %arrayidx10 = getelementptr i8, ptr %ecc_code.addr.051, i32 2
  %48 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv9, ptr %arrayidx10, align 1
  %add.ptr = getelementptr i8, ptr %ecc_code.addr.051, i32 3
  %sub = add nsw i32 %eccbytes.052, -3
  %cmp = icmp ugt i32 %eccbytes.052, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %49 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %51 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i47 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i47, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  %shl.i.i48 = shl i32 4, %56
  %add.ptr.i.i49 = getelementptr i8, ptr %54, i32 %shl.i.i48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %and) #7, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_correct_data(ptr noundef %chip, ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %corrected.019 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %eccsize.018 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %calc_ecc.addr.017 = phi ptr [ %add.ptr3, %if.end.for.body_crit_edge ], [ %calc_ecc, %entry.for.body_crit_edge ]
  %read_ecc.addr.016 = phi ptr [ %add.ptr2, %if.end.for.body_crit_edge ], [ %read_ecc, %entry.for.body_crit_edge ]
  %buf.addr.015 = phi ptr [ %add.ptr, %if.end.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %call = tail call i32 @rawnand_sw_hamming_correct(ptr noundef %chip, ptr noundef %buf.addr.015, ptr noundef %read_ecc.addr.016, ptr noundef %calc_ecc.addr.017) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add = add i32 %call, %corrected.019
  %add.ptr = getelementptr i8, ptr %buf.addr.015, i32 256
  %add.ptr2 = getelementptr i8, ptr %read_ecc.addr.016, i32 3
  %add.ptr3 = getelementptr i8, ptr %calc_ecc.addr.017, i32 3
  %sub = add nsw i32 %eccsize.018, -256
  %cmp = icmp sgt i32 %eccsize.018, 256
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @txx9ndfmc_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %platform_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %shl.i.i = shl i32 4, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  %and = and i32 %12, -97
  %or = or i32 %12, 96
  %13 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %15 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i13 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i13, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %shl.i.i14 = shl i32 4, %20
  %add.ptr.i.i15 = getelementptr i8, ptr %18, i32 %shl.i.i14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %or) #7, !srcloc !51
  %21 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %23 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i18 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i18, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %shl.i.i19 = shl i32 4, %28
  %add.ptr.i.i20 = getelementptr i8, ptr %26, i32 %shl.i.i19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %and) #7, !srcloc !51
  %or4 = or i32 %and, 32
  %29 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %31 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platform_data.i.i.i, align 8
  %base.i.i23 = getelementptr inbounds %struct.txx9ndfmc_drvdata, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %base.i.i23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i23, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  %shl.i.i24 = shl i32 4, %36
  %add.ptr.i.i25 = getelementptr i8, ptr %34, i32 %shl.i.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 %or4) #7, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txx9ndfmc_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @txx9ndfmc_initialize(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 390, i32 3}
!2 = !{ptr @__initcall__kmod_txx9ndfmc__206_417_txx9ndfmc_driver_init6, !3, !"__initcall__kmod_txx9ndfmc__206_417_txx9ndfmc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 417, i32 1}
!4 = !{ptr @__exitcall_txx9ndfmc_driver_exit, !3, !"__exitcall_txx9ndfmc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file207, !6, !"__UNIQUE_ID_file207", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 419, i32 1}
!7 = !{ptr @__UNIQUE_ID_license208, !6, !"__UNIQUE_ID_license208", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description209, !9, !"__UNIQUE_ID_description209", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 420, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias210, !11, !"__UNIQUE_ID_alias210", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 421, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 306, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @txx9ndfmc_probe._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @txx9ndfmc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 343, i32 47}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 352, i32 4}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @txx9ndfmc_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @txx9ndfmc_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nand_controller_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @txx9ndfmc_controller_ops, !30, !"txx9ndfmc_controller_ops", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 275, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 235, i32 5}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @txx9ndfmc_initialize._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @txx9ndfmc_initialize._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 413, i32 11}
!38 = !{ptr @txx9ndfmc_driver, !39, !"txx9ndfmc_driver", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/txx9ndfmc.c", i32 409, i32 31}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 5603258}
!51 = !{i64 5602840}
