; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/mpl115.c_pt.bc'
source_filename = "../drivers/iio/pressure/mpl115.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpl115_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_mpl115_probe\09\09\09\09"
module asm "\09.long\09__crc_mpl115_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpl115_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mpl115_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mpl115_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mpl115_data = type { ptr, %struct.mutex, i16, i16, i16, i16, ptr }
%struct.mpl115_ops = type { ptr, ptr, ptr }

@mpl115_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@mpl115_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mpl115_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mpl115_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_mpl115_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpl115_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mpl115_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpl115_probe to i32), ptr @__kstrtab_mpl115_probe, ptr @__kstrtabns_mpl115_probe }, section "___ksymtab_gpl+mpl115_probe", align 4
@__UNIQUE_ID_author170 = internal constant [49 x i8] c"mpl115.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [64 x i8] c"mpl115.description=Freescale MPL115 pressure/temperature driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [40 x i8] c"mpl115.file=drivers/iio/pressure/mpl115\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [19 x i8] c"mpl115.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 159, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"mpl115_info\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 141, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"mpl115_channels\00", align 1
@___asan_gen_.11 = private constant [33 x i8] c"../drivers/iio/pressure/mpl115.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 128, i32 35 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_mpl115_probe, ptr @mpl115_probe.__key, ptr @.str, ptr @mpl115_info, ptr @mpl115_channels], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpl115_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpl115_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpl115_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpl115_probe(ptr noundef %dev, ptr noundef %name, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 4
  %ops3 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %ops3, align 4
  %lock = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mpl115_probe.__key) #2
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mpl115_info, ptr %info, align 8
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name4, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mpl115_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_channels, align 4
  %9 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call7 = tail call i32 %12(ptr noundef %14) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops3, align 4
  %read = getelementptr inbounds %struct.mpl115_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call13 = tail call i32 %18(ptr noundef %20, i8 noundef zeroext 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %conv = trunc i32 %call13 to i16
  %a0 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %a0 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %a0, align 4
  %22 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops3, align 4
  %read17 = getelementptr inbounds %struct.mpl115_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read17, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call19 = tail call i32 %25(ptr noundef %27, i8 noundef zeroext 6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end15.cleanup_crit_edge, label %if.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %conv24 = trunc i32 %call19 to i16
  %b1 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %b1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv24, ptr %b1, align 2
  %29 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops3, align 4
  %read26 = getelementptr inbounds %struct.mpl115_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read26, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call28 = tail call i32 %32(ptr noundef %34, i8 noundef zeroext 8) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %conv33 = trunc i32 %call28 to i16
  %b2 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %b2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv33, ptr %b2, align 4
  %36 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops3, align 4
  %read35 = getelementptr inbounds %struct.mpl115_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %read35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read35, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call37 = tail call i32 %39(ptr noundef %41, i8 noundef zeroext 10) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end32.cleanup_crit_edge, label %if.end41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  %conv42 = trunc i32 %call37 to i16
  %c12 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %c12 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv42, ptr %c12, align 2
  %call43 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call37, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpl115_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 3, label %sw.bb7
    i32 2, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #2
  %ops.i.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.mpl115_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %6(ptr noundef %8, i8 noundef zeroext 18, i8 noundef zeroext 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.mpl115_comp_pressure.exit_crit_edge, label %if.end.i

sw.bb.mpl115_comp_pressure.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpl115_comp_pressure.exit

if.end.i:                                         ; preds = %sw.bb
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #2
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %read.i = getelementptr inbounds %struct.mpl115_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 %12(ptr noundef %14, i8 noundef zeroext 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.mpl115_comp_pressure.exit_crit_edge, label %if.end4.i

if.end.i.mpl115_comp_pressure.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpl115_comp_pressure.exit

if.end4.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %read6.i = getelementptr inbounds %struct.mpl115_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %read6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read6.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call8.i = tail call i32 %18(ptr noundef %20, i8 noundef zeroext 2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end4.i.mpl115_comp_pressure.exit_crit_edge, label %if.end12.i

if.end4.i.mpl115_comp_pressure.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpl115_comp_pressure.exit

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  %21 = lshr i32 %call1.i, 6
  %22 = lshr i32 %call8.i, 6
  %b1.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %b1.i, align 2
  %conv15.i = sext i16 %24 to i32
  %c12.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %c12.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %c12.i, align 2
  %conv16.i = sext i16 %26 to i32
  %conv17.i = and i32 %22, 65535
  %mul.i = mul nsw i32 %conv17.i, %conv16.i
  %shr18.i = ashr i32 %mul.i, 11
  %add.i = add nsw i32 %shr18.i, %conv15.i
  %a0.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %a0.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %a0.i, align 4
  %conv19.i = sext i16 %28 to i32
  %shl.i = shl nsw i32 %conv19.i, 10
  %conv20.i = and i32 %21, 65535
  %mul21.i = mul i32 %add.i, %conv20.i
  %add22.i = add i32 %mul21.i, %shl.i
  %b2.i = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %b2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %b2.i, align 4
  %conv23.i = sext i16 %30 to i32
  %mul25.i = mul nsw i32 %conv17.i, %conv23.i
  %shr26.i = ashr i32 %mul25.i, 1
  %add27.i = add i32 %add22.i, %shr26.i
  %shr28.i = ashr i32 %add27.i, 9
  %mul29.i = mul nsw i32 %shr28.i, 65
  %div.i = sdiv i32 %mul29.i, 1023
  %add30.i = add nsw i32 %div.i, 800
  %shr31.i = lshr i32 %add30.i, 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr31.i, ptr %val, align 4
  %and.i = and i32 %div.i, 15
  %mul32.i = mul nuw nsw i32 %and.i, 62500
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul32.i, ptr %val2, align 4
  br label %mpl115_comp_pressure.exit

mpl115_comp_pressure.exit:                        ; preds = %if.end12.i, %if.end4.i.mpl115_comp_pressure.exit_crit_edge, %if.end.i.mpl115_comp_pressure.exit_crit_edge, %sw.bb.mpl115_comp_pressure.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end.i.mpl115_comp_pressure.exit_crit_edge ], [ %call8.i, %if.end4.i.mpl115_comp_pressure.exit_crit_edge ], [ %call8.i, %if.end12.i ], [ %call.i.i, %sw.bb.mpl115_comp_pressure.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  %call1. = select i1 %cmp, i32 %ret.0.i, i32 2
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %lock.i20 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i20, i32 noundef 0) #2
  %ops.i.i21 = getelementptr inbounds %struct.mpl115_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %ops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i21, align 4
  %write.i.i22 = getelementptr inbounds %struct.mpl115_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write.i.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i22, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i.i23 = tail call i32 %36(ptr noundef %38, i8 noundef zeroext 18, i8 noundef zeroext 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %cmp.i.i24 = icmp slt i32 %call.i.i23, 0
  br i1 %cmp.i.i24, label %mpl115_read_temp.exit.thread, label %mpl115_read_temp.exit

mpl115_read_temp.exit.thread:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mutex_unlock(ptr noundef %lock.i20) #2
  br label %cleanup

mpl115_read_temp.exit:                            ; preds = %sw.bb2
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #2
  %39 = ptrtoint ptr %ops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i21, align 4
  %read.i25 = getelementptr inbounds %struct.mpl115_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %read.i25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i25, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call1.i26 = tail call i32 %42(ptr noundef %44, i8 noundef zeroext 2) #2
  tail call void @mutex_unlock(ptr noundef %lock.i20) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %cmp4 = icmp slt i32 %call1.i26, 0
  br i1 %cmp4, label %mpl115_read_temp.exit.cleanup_crit_edge, label %if.end6

mpl115_read_temp.exit.cleanup_crit_edge:          ; preds = %mpl115_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %mpl115_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #4
  %shr31 = lshr i32 %call1.i26, 6
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr31, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -605, ptr %val, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 750000, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -186, ptr %val, align 4
  %49 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 915888, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb7, %if.end6, %mpl115_read_temp.exit.cleanup_crit_edge, %mpl115_read_temp.exit.thread, %mpl115_comp_pressure.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %if.end6 ], [ %call1., %mpl115_comp_pressure.exit ], [ %call1.i26, %mpl115_read_temp.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i23, %mpl115_read_temp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mpl115_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/mpl115.c", i32 159, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_mpl115_probe, !4, !"__ksymtab_mpl115_probe", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/mpl115.c", i32 190, i32 1}
!5 = !{ptr @__UNIQUE_ID_author170, !6, !"__UNIQUE_ID_author170", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/mpl115.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_description171, !8, !"__UNIQUE_ID_description171", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/mpl115.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_file172, !10, !"__UNIQUE_ID_file172", i1 false, i1 false}
!10 = !{!"../drivers/iio/pressure/mpl115.c", i32 194, i32 1}
!11 = !{ptr @__UNIQUE_ID_license173, !10, !"__UNIQUE_ID_license173", i1 false, i1 false}
!12 = !{ptr @mpl115_info, !13, !"mpl115_info", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/mpl115.c", i32 141, i32 30}
!14 = !{ptr @mpl115_channels, !15, !"mpl115_channels", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/mpl115.c", i32 128, i32 35}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
