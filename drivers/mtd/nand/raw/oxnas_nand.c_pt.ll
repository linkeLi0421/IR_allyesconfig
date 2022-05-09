; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/oxnas_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/oxnas_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.oxnas_nand_ctrl = type { %struct.nand_controller, ptr, ptr, [1 x ptr], i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.46 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.46 = type { %struct.mtd_part, [160 x i8] }
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

@__initcall__kmod_oxnas_nand__198_206_oxnas_nand_driver_init6 = internal global ptr @oxnas_nand_driver_init, section ".initcall6.init", align 4
@oxnas_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @oxnas_nand_probe, ptr @oxnas_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @oxnas_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_oxnas_nand_driver_exit = internal global ptr @oxnas_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [48 x i8] c"oxnas_nand.file=drivers/mtd/nand/raw/oxnas_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [23 x i8] c"oxnas_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [59 x i8] c"oxnas_nand.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description202 = internal constant [41 x i8] c"oxnas_nand.description=Oxnas NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [37 x i8] c"oxnas_nand.alias=platform:oxnas_nand\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oxnas_nand\00", [21 x i8] zeroinitializer }, align 32
@oxnas_nand_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox820-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/oxnas_nand.c\00", [62 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"oxnas_nand_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 197, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 201, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"oxnas_nand_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 191, i32 34 }
@___asan_gen_.14 = private constant [37 x i8] c"../drivers/mtd/nand/raw/oxnas_nand.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 165, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1105, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 464, i32 31 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_oxnas_nand_driver_exit, ptr @__initcall__kmod_oxnas_nand__198_206_oxnas_nand_driver_init6, ptr @oxnas_nand_driver_exit, ptr @oxnas_nand_driver, ptr @.str, ptr @oxnas_nand_match, ptr @.str.1, ptr @nand_controller_init.__key, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_nand_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @oxnas_nand_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @oxnas_nand_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @nand_controller_init.__key) #3
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %io_base = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #3
  %clk = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 2
  %cmp.i148 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i148, ptr null, ptr %call10
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select, ptr %clk, align 4
  %call.i149 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #3
  %cmp.not5.i = icmp eq ptr %call.i149, null
  br i1 %cmp.not5.i, label %if.end8.if.end18_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i149, %if.end8.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #3
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp = icmp sgt i32 %inc.i, 1
  br i1 %cmp, label %of_get_child_count.exit.cleanup_crit_edge, label %of_get_child_count.exit.if.end18_crit_edge

of_get_child_count.exit.if.end18_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %of_get_child_count.exit.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i150 = tail call i32 @clk_prepare(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %call1.i151 = tail call i32 @clk_enable(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool2.not.i = icmp eq i32 %call1.i151, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %6) #3
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %call.i152 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #3
  %call26 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #3
  %cmp27.not163 = icmp eq ptr %call26, null
  br i1 %cmp27.not163, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %nchips = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %nand_np.0164 = phi ptr [ %call26, %for.body.lr.ph ], [ %call49, %if.end48.for.body_crit_edge ]
  %call.i153 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2168, i32 noundef 3520) #3
  %tobool30.not = icmp eq ptr %call.i153, null
  br i1 %tobool30.not, label %for.body.err_release_child_crit_edge, label %if.end32

for.body.err_release_child_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_release_child

if.end32:                                         ; preds = %for.body
  %controller = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 32
  %7 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %controller, align 4
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i153, i32 0, i32 56, i32 27
  %8 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nand_np.0164, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i153, i32 0, i32 13
  %9 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end32.nand_set_flash_node.exit_crit_edge

if.end32.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef nonnull %nand_np.0164, ptr noundef nonnull @.str.3, ptr noundef %name.i.i) #3
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end32.nand_set_flash_node.exit_crit_edge
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 34
  %11 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %priv1.i, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i153, i32 0, i32 56, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call.i153, i32 0, i32 54
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i153, ptr %priv, align 8
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 5, i32 7
  %14 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @oxnas_nand_cmd_ctrl, ptr %cmd_ctrl, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @oxnas_nand_read_buf, ptr %read_buf, align 8
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @oxnas_nand_read_byte, ptr %read_byte, align 4
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @oxnas_nand_write_buf, ptr %write_buf, align 4
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call.i153, i32 0, i32 5, i32 15
  %18 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %chip_delay, align 4
  %call.i154 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i153, i32 noundef 1, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool42.not = icmp eq i32 %call.i154, 0
  br i1 %tobool42.not, label %if.end44, label %nand_set_flash_node.exit.err_release_child_crit_edge

nand_set_flash_node.exit.err_release_child_crit_edge: ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_release_child

if.end44:                                         ; preds = %nand_set_flash_node.exit
  %call45 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i153, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %err_cleanup_nand

if.end48:                                         ; preds = %if.end44
  %19 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nchips, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %nchips, align 4
  %arrayidx = getelementptr %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 3, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i153, ptr %arrayidx, align 4
  %call49 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %nand_np.0164) #3
  %cmp27.not = icmp eq ptr %call49, null
  br i1 %cmp27.not, label %if.end48.for.end_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end48.for.end_crit_edge, %if.end23.for.end_crit_edge
  %nchips50 = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %nchips50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nchips50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool51.not = icmp eq i32 %23, 0
  br i1 %tobool51.not, label %for.end.err_clk_unprepare_crit_edge, label %if.end53

for.end.err_clk_unprepare_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_clk_unprepare

if.end53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_cleanup_nand:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nand_cleanup(ptr noundef nonnull %call.i153) #3
  br label %err_release_child

err_release_child:                                ; preds = %err_cleanup_nand, %nand_set_flash_node.exit.err_release_child_crit_edge, %for.body.err_release_child_crit_edge
  %err.0 = phi i32 [ %call45, %err_cleanup_nand ], [ %call.i154, %nand_set_flash_node.exit.err_release_child_crit_edge ], [ -12, %for.body.err_release_child_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %nand_np.0164) #3
  %25 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp56165.not = icmp eq i32 %26, 0
  br i1 %cmp56165.not, label %err_release_child.err_clk_unprepare_crit_edge, label %err_release_child.for.body57_crit_edge

err_release_child.for.body57_crit_edge:           ; preds = %err_release_child
  br label %for.body57

err_release_child.err_clk_unprepare_crit_edge:    ; preds = %err_release_child
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_clk_unprepare

for.body57:                                       ; preds = %if.end77.for.body57_crit_edge, %err_release_child.for.body57_crit_edge
  %i.0166 = phi i32 [ %inc85, %if.end77.for.body57_crit_edge ], [ 0, %err_release_child.for.body57_crit_edge ]
  %arrayidx59 = getelementptr %struct.oxnas_nand_ctrl, ptr %call.i, i32 0, i32 3, i32 %i.0166
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx59, align 4
  %call61 = tail call i32 @mtd_device_unregister(ptr noundef %28) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.body57.if.end77_crit_edge, label %do.end, !prof !34

for.body57.if.end77_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end77

do.end:                                           ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 9, ptr noundef null) #3
  br label %if.end77

if.end77:                                         ; preds = %do.end, %for.body57.if.end77_crit_edge
  tail call void @nand_cleanup(ptr noundef %28) #3
  %inc85 = add nuw i32 %i.0166, 1
  %29 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nchips, align 4
  %cmp56 = icmp ult i32 %inc85, %30
  br i1 %cmp56, label %if.end77.for.body57_crit_edge, label %if.end77.err_clk_unprepare_crit_edge

if.end77.err_clk_unprepare_crit_edge:             ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_clk_unprepare

if.end77.for.body57_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body57

err_clk_unprepare:                                ; preds = %if.end77.err_clk_unprepare_crit_edge, %err_release_child.err_clk_unprepare_crit_edge, %for.end.err_clk_unprepare_crit_edge
  %err.1 = phi i32 [ -19, %for.end.err_clk_unprepare_crit_edge ], [ %err.0, %err_release_child.err_clk_unprepare_crit_edge ], [ %err.0, %if.end77.err_clk_unprepare_crit_edge ]
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %32) #3
  tail call void @clk_unprepare(ptr noundef %32) #3
  br label %cleanup

cleanup:                                          ; preds = %err_clk_unprepare, %if.end53, %if.then3.i, %if.end18.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %err.1, %err_clk_unprepare ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %of_get_child_count.exit.cleanup_crit_edge ], [ %call1.i151, %if.then3.i ], [ %call.i150, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nchips = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 3, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !34

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %5) #3
  %inc = add nuw i32 %i.029, 1
  %6 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nchips, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %clk = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #3
  tail call void @clk_unprepare(ptr noundef %9) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_nand_cmd_ctrl(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %and = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %conv = trunc i32 %cmd to i8
  %io_base = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #3, !srcloc !36
  br label %if.end10

if.else:                                          ; preds = %entry
  %and1 = and i32 %ctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.if.end10_crit_edge, label %do.body4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

do.body4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %conv7 = trunc i32 %cmd to i8
  %io_base8 = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %io_base8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base8, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 262144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv7) #3, !srcloc !36
  br label %if.end10

if.end10:                                         ; preds = %do.body4, %if.else.if.end10_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_nand_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  tail call void @__raw_readsb(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oxnas_nand_read_byte(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #3, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_nand_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.oxnas_nand_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 4
  tail call void @__raw_writesb(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_oxnas_nand__198_206_oxnas_nand_driver_init6, !1, !"__initcall__kmod_oxnas_nand__198_206_oxnas_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 206, i32 1}
!2 = !{ptr @__exitcall_oxnas_nand_driver_exit, !1, !"__exitcall_oxnas_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file199, !4, !"__UNIQUE_ID_file199", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 208, i32 1}
!5 = !{ptr @__UNIQUE_ID_license200, !4, !"__UNIQUE_ID_license200", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author201, !7, !"__UNIQUE_ID_author201", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 209, i32 1}
!8 = !{ptr @__UNIQUE_ID_description202, !9, !"__UNIQUE_ID_description202", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 210, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias203, !11, !"__UNIQUE_ID_alias203", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 211, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 201, i32 12}
!14 = !{ptr @oxnas_nand_driver, !15, !"oxnas_nand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 197, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 165, i32 3}
!18 = !{ptr @nand_controller_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!23 = !{ptr @oxnas_nand_match, !24, !"oxnas_nand_match", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/oxnas_nand.c", i32 191, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153211289}
!36 = !{i64 687902}
!37 = !{i64 2153211701}
!38 = !{i64 688297}
!39 = !{i64 2153210933}
