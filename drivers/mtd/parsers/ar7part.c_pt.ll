; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/ar7part.c_pt.bc'
source_filename = "../drivers/mtd/parsers/ar7part.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ar7_bin_rec = type { i32, i32, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
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
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__initcall__kmod_ar7part__230_124_ar7_parser_init6 = internal global ptr @ar7_parser_init, section ".initcall6.init", align 4
@ar7_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr @create_mtd_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ar7_parser_exit = internal global ptr @ar7_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [41 x i8] c"ar7part.file=drivers/mtd/parsers/ar7part\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [20 x i8] c"ar7part.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [80 x i8] c"ar7part.author=Felix Fietkau <nbd@openwrt.org>, Eugene Konev <ejka@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [48 x i8] c"ar7part.description=MTD partitioning for TI AR7\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ar7part\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loader\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TIENV0.8\00", [23 x i8] zeroinitializer }, align 32
@create_mtd_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014Unknown magic: %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"create_mtd_partitions\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/parsers/ar7part.c\00", [34 x i8] zeroinitializer }, align 32
@create_mtd_partitions._entry_ptr = internal global ptr @create_mtd_partitions._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"linux\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1123741182, i64 2165501438]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1123741182, i64 2165501438]
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"ar7_parser\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 120, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 122, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 47, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 52, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 61, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 96, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 106, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [33 x i8] c"../drivers/mtd/parsers/ar7part.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 111, i32 22 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ar7_parser_exit, ptr @__initcall__kmod_ar7part__230_124_ar7_parser_init6, ptr @ar7_parser_exit, ptr @create_mtd_partitions._entry, ptr @create_mtd_partitions._entry_ptr, ptr @ar7_parser, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar7_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_mtd_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ar7_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @ar7_parser, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ar7_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deregister_mtd_parser(ptr noundef nonnull @ar7_parser) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_mtd_partitions(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %header = alloca %struct.ar7_bin_rec, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %header) #7
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %header, align 4, !annotation !39
  %1 = getelementptr inbounds %struct.ar7_bin_rec, ptr %header, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !39
  %3 = getelementptr inbounds %struct.ar7_bin_rec, ptr %header, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !39
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %6 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 160) #10
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %call7.i.i.i, align 8
  %offset2 = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %offset2, align 8
  %11 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize, align 8
  %conv = zext i32 %12 to i64
  %size = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %size, align 8
  %mask_flags = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %mask_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %mask_flags, align 8
  %arrayidx6 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %arrayidx6, align 8
  %offset9 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 1, i32 3
  %16 = ptrtoint ptr %offset9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %offset9, align 8
  %size13 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %size13 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %size13, align 8
  %mask_flags15 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 1, i32 4
  %18 = ptrtoint ptr %mask_flags15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mask_flags15, align 8
  br label %do.body

do.body:                                          ; preds = %if.end32.do.body_crit_edge, %if.end
  %pre_size.0 = phi i32 [ %7, %if.end ], [ %add, %if.end32.do.body_crit_edge ]
  %retries.0 = phi i32 [ 10, %if.end ], [ %dec, %if.end32.do.body_crit_edge ]
  %conv16 = zext i32 %pre_size.0 to i64
  %call17 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv16, i32 noundef 12, ptr noundef nonnull %len, ptr noundef nonnull %header) #7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %header, ptr noundef nonnull dereferenceable(8) @.str.3, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool19.not = icmp eq i32 %bcmp, 0
  br i1 %tobool19.not, label %if.then20, label %do.body.if.end24_crit_edge

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %offset9 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv16, ptr %offset9, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body.if.end24_crit_edge
  %20 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %header, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end32 [
    i32 1123741182, label %if.end24.do.end_crit_edge
    i32 -2129465858, label %if.end24.do.end_crit_edge181
  ]

if.end24.do.end_crit_edge181:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end32:                                         ; preds = %if.end24
  %23 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erasesize, align 8
  %add = add i32 %24, %pre_size.0
  %dec = add nsw i32 %retries.0, -1
  %tobool34.not = icmp eq i32 %retries.0, 0
  br i1 %tobool34.not, label %if.end32.do.end_crit_edge, label %if.end32.do.body_crit_edge

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end32.do.end_crit_edge, %if.end24.do.end_crit_edge, %if.end24.do.end_crit_edge181
  %25 = ptrtoint ptr %offset9 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool37.not = icmp eq i64 %26, 0
  br i1 %tobool37.not, label %if.then38, label %do.end.if.end45_crit_edge

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %size39 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %27 = ptrtoint ptr %size39 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size39, align 8
  %29 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %erasesize, align 8
  %conv41 = zext i32 %30 to i64
  %sub = sub i64 %28, %conv41
  %31 = ptrtoint ptr %offset9 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub, ptr %offset9, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %do.end.if.end45_crit_edge
  %post_size.0 = phi i32 [ 0, %do.end.if.end45_crit_edge ], [ %30, %if.then38 ]
  %32 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %21, label %do.end71 [
    i32 1123741182, label %while.cond.preheader
    i32 -2129465858, label %while.cond56.preheader
  ]

while.cond56.preheader:                           ; preds = %if.end45
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool58.not176 = icmp eq i32 %34, 0
  br i1 %tobool58.not176, label %while.cond56.preheader.while.end65_crit_edge, label %while.cond56.preheader.while.body59_crit_edge

while.cond56.preheader.while.body59_crit_edge:    ; preds = %while.cond56.preheader
  br label %while.body59

while.cond56.preheader.while.end65_crit_edge:     ; preds = %while.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end65

while.cond.preheader:                             ; preds = %if.end45
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool47.not178 = icmp eq i32 %36, 0
  br i1 %tobool47.not178, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %37 = phi i32 [ %39, %while.body.while.body_crit_edge ], [ %36, %while.cond.preheader.while.body_crit_edge ]
  %offset.0179 = phi i32 [ %add50, %while.body.while.body_crit_edge ], [ %pre_size.0, %while.cond.preheader.while.body_crit_edge ]
  %add49 = add i32 %offset.0179, 12
  %add50 = add i32 %add49, %37
  %conv51 = zext i32 %add50 to i64
  %call52 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv51, i32 noundef 12, ptr noundef nonnull %len, ptr noundef nonnull %header) #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %tobool47.not = icmp eq i32 %39, 0
  br i1 %tobool47.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %offset.0.lcssa = phi i32 [ %pre_size.0, %while.cond.preheader.while.end_crit_edge ], [ %add50, %while.body.while.end_crit_edge ]
  %add54 = add i32 %offset.0.lcssa, 16
  br label %sw.epilog

while.body59:                                     ; preds = %while.body59.while.body59_crit_edge, %while.cond56.preheader.while.body59_crit_edge
  %40 = phi i32 [ %42, %while.body59.while.body59_crit_edge ], [ %34, %while.cond56.preheader.while.body59_crit_edge ]
  %offset.1177 = phi i32 [ %add62, %while.body59.while.body59_crit_edge ], [ %pre_size.0, %while.cond56.preheader.while.body59_crit_edge ]
  %add61 = add i32 %offset.1177, 12
  %add62 = add i32 %add61, %40
  %conv63 = zext i32 %add62 to i64
  %call64 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv63, i32 noundef 12, ptr noundef nonnull %len, ptr noundef nonnull %header) #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 4
  %tobool58.not = icmp eq i32 %42, 0
  br i1 %tobool58.not, label %while.body59.while.end65_crit_edge, label %while.body59.while.body59_crit_edge

while.body59.while.body59_crit_edge:              ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body59

while.body59.while.end65_crit_edge:               ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end65

while.end65:                                      ; preds = %while.body59.while.end65_crit_edge, %while.cond56.preheader.while.end65_crit_edge
  %offset.1.lcssa = phi i32 [ %pre_size.0, %while.cond56.preheader.while.end65_crit_edge ], [ %add62, %while.body59.while.end65_crit_edge ]
  %add68 = add i32 %offset.1.lcssa, 271
  %and = and i32 %add68, -256
  br label %sw.epilog

do.end71:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %21) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end71, %while.end65, %while.end
  %root_offset.0 = phi i32 [ 917504, %do.end71 ], [ %and, %while.end65 ], [ %add54, %while.end ]
  %conv74 = zext i32 %root_offset.0 to i64
  %call75 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv74, i32 noundef 12, ptr noundef nonnull %len, ptr noundef nonnull %header) #7
  %43 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1936814952, i32 %44)
  %cmp77.not = icmp eq i32 %44, 1936814952
  br i1 %cmp77.not, label %sw.epilog.if.end86_crit_edge, label %if.then79

sw.epilog.if.end86_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %erasesize, align 8
  %sub81 = add i32 %root_offset.0, -1
  %add82 = add i32 %sub81, %46
  %neg = sub i32 0, %46
  %and85 = and i32 %add82, %neg
  %.pre = zext i32 %and85 to i64
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %sw.epilog.if.end86_crit_edge
  %conv103.pre-phi = phi i64 [ %.pre, %if.then79 ], [ %conv74, %sw.epilog.if.end86_crit_edge ]
  %arrayidx87 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 2
  %47 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.7, ptr %arrayidx87, align 8
  %offset91 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 2, i32 3
  %48 = ptrtoint ptr %offset91 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv16, ptr %offset91, align 8
  %size92 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %49 = ptrtoint ptr %size92 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size92, align 8
  %conv95 = zext i32 %post_size.0 to i64
  %51 = add nuw nsw i64 %conv95, %conv16
  %sub96 = sub i64 %50, %51
  %size98 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 2, i32 2
  %52 = ptrtoint ptr %size98 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %sub96, ptr %size98, align 8
  %mask_flags100 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 2, i32 4
  %53 = ptrtoint ptr %mask_flags100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %mask_flags100, align 8
  %arrayidx101 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 3
  %54 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.8, ptr %arrayidx101, align 8
  %offset105 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 3, i32 3
  %55 = ptrtoint ptr %offset105 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv103.pre-phi, ptr %offset105, align 8
  %56 = add nuw nsw i64 %conv103.pre-phi, %conv95
  %sub110 = sub i64 %50, %56
  %size112 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 3, i32 2
  %57 = ptrtoint ptr %size112 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub110, ptr %size112, align 8
  %mask_flags114 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 3, i32 4
  %58 = ptrtoint ptr %mask_flags114 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mask_flags114, align 8
  %59 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.end86 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %header) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_ar7part__230_124_ar7_parser_init6, !1, !"__initcall__kmod_ar7part__230_124_ar7_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/ar7part.c", i32 124, i32 1}
!2 = !{ptr @__exitcall_ar7_parser_exit, !1, !"__exitcall_ar7_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file231, !4, !"__UNIQUE_ID_file231", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/ar7part.c", i32 126, i32 1}
!5 = !{ptr @__UNIQUE_ID_license232, !4, !"__UNIQUE_ID_license232", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author233, !7, !"__UNIQUE_ID_author233", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/ar7part.c", i32 127, i32 1}
!8 = !{ptr @__UNIQUE_ID_description234, !9, !"__UNIQUE_ID_description234", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/ar7part.c", i32 129, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/ar7part.c", i32 122, i32 10}
!12 = !{ptr @ar7_parser, !13, !"ar7_parser", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/ar7part.c", i32 120, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/ar7part.c", i32 47, i32 22}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/ar7part.c", i32 52, i32 22}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/parsers/ar7part.c", i32 61, i32 33}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/ar7part.c", i32 96, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @create_mtd_partitions._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @create_mtd_partitions._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/ar7part.c", i32 106, i32 22}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/parsers/ar7part.c", i32 111, i32 22}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
