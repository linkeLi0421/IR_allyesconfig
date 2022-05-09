; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_jedec.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_jedec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_jedec_params = type <{ [4 x i8], i16, i16, [3 x i8], i16, i8, [18 x i8], [12 x i8], [20 x i8], [6 x i8], [10 x i8], i32, i16, [6 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [38 x i8], i16, i16, i16, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, [36 x i8], i8, i16, [4 x %struct.jedec_ecc_info], [29 x i8], [148 x i8], i16, [88 x i8], i16 }>
%struct.jedec_ecc_info = type { i8, i8, i16, i16, [2 x i8] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JEDEC\00", [26 x i8] zeroinitializer }, align 32
@nand_jedec_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Could not find valid JEDEC parameter page; aborting\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nand_jedec_detect\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/nand_jedec.c\00", [62 x i8] zeroinitializer }, align 32
@nand_jedec_detect._entry_ptr = internal global ptr @nand_jedec_detect._entry, section ".printk_index", align 4
@nand_jedec_detect._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016unsupported JEDEC version: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nand_jedec_detect._entry_ptr.6 = internal global ptr @nand_jedec_detect._entry.4, section ".printk_index", align 4
@nand_jedec_detect._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Invalid codeword size\0A\00", [39 x i8] zeroinitializer }, align 32
@nand_jedec_detect._entry_ptr.9 = internal global ptr @nand_jedec_detect._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 41, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 74, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 86, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [37 x i8] c"../drivers/mtd/nand/raw/nand_jedec.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 131, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nand_jedec_detect._entry, ptr @nand_jedec_detect._entry.4, ptr @nand_jedec_detect._entry.7, ptr @nand_jedec_detect._entry_ptr, ptr @nand_jedec_detect._entry_ptr.6, ptr @nand_jedec_detect._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_jedec_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_jedec_detect._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_jedec_detect._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_jedec_detect(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %id) #7
  %memorg.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %0 = call ptr @memset(ptr %id, i32 255, i32 5)
  %call4 = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 64, ptr noundef nonnull %id, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %id, ptr noundef nonnull dereferenceable(5) @.str, i32 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 512) #11
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %tobool.not.i174 = icmp eq ptr %3, null
  br i1 %tobool.not.i174, label %if.end11.if.then16_crit_edge, label %lor.lhs.false.i

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false.i:                                  ; preds = %if.end11
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then16_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.then16_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %7, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.then16_crit_edge, label %lor.lhs.false13

nand_has_exec_op.exit.if.then16_crit_edge:        ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false13:                                  ; preds = %nand_has_exec_op.exit
  %call14 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %call7.i.i, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false13.if.then16_crit_edge, label %lor.lhs.false13.if.end27_crit_edge

lor.lhs.false13.if.end27_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %nand_has_exec_op.exit.if.then16_crit_edge, %lor.lhs.false.i.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %lor.lhs.false13.if.end27_crit_edge
  %use_datain.0.off0 = phi i1 [ false, %lor.lhs.false13.if.end27_crit_edge ], [ true, %if.then16 ]
  %crc32 = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 47
  %call20 = call i32 @nand_read_param_page_op(ptr noundef %chip, i8 noundef zeroext 64, ptr noundef nonnull %call7.i.i, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %phi.cmp = icmp eq i32 %call20, 0
  br i1 %phi.cmp, label %if.end30, label %if.end27.free_jedec_param_page_crit_edge

if.end27.free_jedec_param_page_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_jedec_param_page

if.end30:                                         ; preds = %if.end27
  %call31 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %call7.i.i, i32 noundef 510) #7
  %8 = ptrtoint ptr %crc32 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %crc32, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  call void @__sanitizer_cov_trace_cmp2(i16 %call31, i16 %10)
  %cmp34 = icmp eq i16 %call31, %10
  br i1 %cmp34, label %if.end30.if.end42_crit_edge, label %if.else.1

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else.1:                                        ; preds = %if.end30
  br i1 %use_datain.0.off0, label %if.then22.1, label %if.else24.1

if.else24.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  %call25.1 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef 512, ptr noundef nonnull %call7.i.i, i32 noundef 512, i1 noundef zeroext true) #7
  br label %if.end27.1

if.then22.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  %call23.1 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %call7.i.i, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %if.end27.1

if.end27.1:                                       ; preds = %if.then22.1, %if.else24.1
  %ret.1.1 = phi i32 [ %call23.1, %if.then22.1 ], [ %call25.1, %if.else24.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.1)
  %tobool28.not.1 = icmp eq i32 %ret.1.1, 0
  br i1 %tobool28.not.1, label %if.end30.1, label %if.end27.1.free_jedec_param_page_crit_edge

if.end27.1.free_jedec_param_page_crit_edge:       ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_jedec_param_page

if.end30.1:                                       ; preds = %if.end27.1
  %call31.1 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %call7.i.i, i32 noundef 510) #7
  %11 = ptrtoint ptr %crc32 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crc32, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_cmp2(i16 %call31.1, i16 %13)
  %cmp34.1 = icmp eq i16 %call31.1, %13
  br i1 %cmp34.1, label %if.end30.1.if.end42_crit_edge, label %if.else.2

if.end30.1.if.end42_crit_edge:                    ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else.2:                                        ; preds = %if.end30.1
  br i1 %use_datain.0.off0, label %if.then22.2, label %if.else24.2

if.else24.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  %call25.2 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef 1024, ptr noundef nonnull %call7.i.i, i32 noundef 512, i1 noundef zeroext true) #7
  br label %if.end27.2

if.then22.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  %call23.2 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %call7.i.i, i32 noundef 512, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %if.end27.2

if.end27.2:                                       ; preds = %if.then22.2, %if.else24.2
  %ret.1.2 = phi i32 [ %call23.2, %if.then22.2 ], [ %call25.2, %if.else24.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.2)
  %tobool28.not.2 = icmp eq i32 %ret.1.2, 0
  br i1 %tobool28.not.2, label %if.end30.2, label %if.end27.2.free_jedec_param_page_crit_edge

if.end27.2.free_jedec_param_page_crit_edge:       ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_jedec_param_page

if.end30.2:                                       ; preds = %if.end27.2
  %call31.2 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %call7.i.i, i32 noundef 510) #7
  %14 = ptrtoint ptr %crc32 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crc32, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  call void @__sanitizer_cov_trace_cmp2(i16 %call31.2, i16 %16)
  %cmp34.2 = icmp eq i16 %call31.2, %16
  br i1 %cmp34.2, label %if.end30.2.if.end42_crit_edge, label %do.end

if.end30.2.if.end42_crit_edge:                    ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end:                                           ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %free_jedec_param_page

if.end42:                                         ; preds = %if.end30.2.if.end42_crit_edge, %if.end30.1.if.end42_crit_edge, %if.end30.if.end42_crit_edge
  %revision = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %revision, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv43 = zext i16 %19 to i32
  %20 = and i32 %conv43, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %do.end56, label %if.end59

do.end56:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv43) #12
  br label %free_jedec_param_page

if.end59:                                         ; preds = %if.end42
  %manufacturer = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 7
  call void @sanitize_string(ptr noundef %manufacturer, i32 noundef 12) #7
  %model = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 8
  call void @sanitize_string(ptr noundef %model, i32 noundef 20) #7
  %call64 = call noalias ptr @kstrdup(ptr noundef %model, i32 noundef 3264) #7
  %parameters = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %22 = ptrtoint ptr %parameters to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call64, ptr %parameters, align 4
  %tobool68.not = icmp eq ptr %call64, null
  br i1 %tobool68.not, label %if.end59.free_jedec_param_page_crit_edge, label %if.end70

if.end59.free_jedec_param_page_crit_edge:         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_jedec_param_page

if.end70:                                         ; preds = %if.end59
  %byte_per_page = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %byte_per_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %byte_per_page, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pagesize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %27 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %writesize, align 4
  %pages_per_block = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 14
  %28 = ptrtoint ptr %pages_per_block to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pages_per_block, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 true) #7, !range !25
  %sub.i.op = xor i32 %31, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  %shl = shl nuw i32 1, %sub
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %pages_per_eraseblock to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl, ptr %pages_per_eraseblock, align 4
  %mul75 = shl i32 %25, %sub
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %33 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul75, ptr %erasesize, align 8
  %spare_bytes_per_page = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 12
  %34 = ptrtoint ptr %spare_bytes_per_page to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %spare_bytes_per_page, align 4
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv76 = zext i16 %36 to i32
  %oobsize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv76, ptr %oobsize, align 4
  %oobsize78 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %38 = ptrtoint ptr %oobsize78 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv76, ptr %oobsize78, align 4
  %lun_count = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %lun_count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lun_count, align 4
  %conv79 = zext i8 %40 to i32
  %luns_per_target = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %luns_per_target to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv79, ptr %luns_per_target, align 4
  %multi_plane_addr = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 20
  %42 = ptrtoint ptr %multi_plane_addr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %multi_plane_addr, align 8
  %conv80 = zext i8 %43 to i32
  %shl81 = shl nuw i32 1, %conv80
  %planes_per_lun = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 6
  %44 = ptrtoint ptr %planes_per_lun to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl81, ptr %planes_per_lun, align 4
  %blocks_per_lun = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %blocks_per_lun to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blocks_per_lun, align 8
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %48 = call i32 @llvm.ctlz.i32(i32 %47, i1 true) #7, !range !25
  %sub.i172.op = xor i32 %48, 31
  %sub.i172.op.op = shl nuw i32 1, %sub.i172.op
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %eraseblocks_per_lun to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i172.op.op, ptr %eraseblocks_per_lun, align 4
  %bits_per_cell = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 18
  %50 = ptrtoint ptr %bits_per_cell to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bits_per_cell, align 2
  %conv85 = zext i8 %51 to i32
  %52 = ptrtoint ptr %memorg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv85, ptr %memorg.i, align 4
  %features = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %features, align 2
  %55 = and i16 %54, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool89.not = icmp eq i16 %55, 0
  br i1 %tobool89.not, label %if.end70.if.end91_crit_edge, label %if.then90

if.end70.if.end91_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then90:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %56 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %options, align 8
  %or = or i32 %57, 2
  store i32 %or, ptr %options, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end70.if.end91_crit_edge
  %codeword_size = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 42, i32 0, i32 1
  %58 = ptrtoint ptr %codeword_size to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %codeword_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %59)
  %cmp93 = icmp ugt i8 %59, 8
  br i1 %cmp93, label %if.then95, label %do.end103

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %ecc_info = getelementptr inbounds %struct.nand_jedec_params, ptr %call7.i.i, i32 0, i32 42
  %60 = ptrtoint ptr %ecc_info to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ecc_info, align 1
  %conv96 = zext i8 %61 to i32
  %conv98 = zext i8 %59 to i32
  %shl99 = shl nuw i32 1, %conv98
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %requirements.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %requirements.i, align 4
  %requirements.sroa.5.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 1
  %63 = ptrtoint ptr %requirements.sroa.5.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %requirements.sroa.5.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.7.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 2
  %64 = ptrtoint ptr %requirements.sroa.7.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %requirements.sroa.7.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.9.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %65 = ptrtoint ptr %requirements.sroa.9.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv96, ptr %requirements.sroa.9.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.11.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %66 = ptrtoint ptr %requirements.sroa.11.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl99, ptr %requirements.sroa.11.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.13.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %67 = ptrtoint ptr %requirements.sroa.13.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %requirements.sroa.13.0.requirements.i.sroa_idx, align 4
  br label %free_jedec_param_page

do.end103:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %free_jedec_param_page

free_jedec_param_page:                            ; preds = %do.end103, %if.then95, %if.end59.free_jedec_param_page_crit_edge, %do.end56, %do.end, %if.end27.2.free_jedec_param_page_crit_edge, %if.end27.1.free_jedec_param_page_crit_edge, %if.end27.free_jedec_param_page_crit_edge
  %ret.3 = phi i32 [ 0, %do.end ], [ 0, %do.end56 ], [ -12, %if.end59.free_jedec_param_page_crit_edge ], [ 1, %do.end103 ], [ 1, %if.then95 ], [ 0, %if.end27.2.free_jedec_param_page_crit_edge ], [ 0, %if.end27.1.free_jedec_param_page_crit_edge ], [ 0, %if.end27.free_jedec_param_page_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_jedec_param_page, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free_jedec_param_page ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_param_page_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @onfi_crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sanitize_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_jedec.c", i32 41, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_jedec.c", i32 74, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nand_jedec_detect._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nand_jedec_detect._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_jedec.c", i32 86, i32 3}
!10 = !{ptr @nand_jedec_detect._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nand_jedec_detect._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_jedec.c", i32 131, i32 3}
!14 = !{ptr @nand_jedec_detect._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nand_jedec_detect._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i32 0, i32 33}
