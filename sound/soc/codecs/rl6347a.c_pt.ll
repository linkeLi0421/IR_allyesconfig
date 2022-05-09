; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rl6347a.c_pt.bc'
source_filename = "../sound/soc/codecs/rl6347a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rl6347a_hw_write\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6347a_hw_write\09\09\09\09"
module asm "\09.long\09__crc_rl6347a_hw_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6347a_hw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6347a_hw_write\22\09\09\09\09\09"
module asm "__kstrtabns_rl6347a_hw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rl6347a_hw_read\22, \22a\22\09"
module asm "\09.weak\09__crc_rl6347a_hw_read\09\09\09\09"
module asm "\09.long\09__crc_rl6347a_hw_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6347a_hw_read:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6347a_hw_read\22\09\09\09\09\09"
module asm "__kstrtabns_rl6347a_hw_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.rl6347a_priv = type { ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@rl6347a_hw_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2C error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rl6347a_hw_write\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/rl6347a.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rl6347a_hw_write._entry_ptr = internal global ptr @rl6347a_hw_write._entry, section ".printk_index", align 4
@__kstrtab_rl6347a_hw_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6347a_hw_write = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6347a_hw_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6347a_hw_write to i32), ptr @__kstrtab_rl6347a_hw_write, ptr @__kstrtabns_rl6347a_hw_write }, section "___ksymtab_gpl+rl6347a_hw_write", align 4
@__kstrtab_rl6347a_hw_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6347a_hw_read = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6347a_hw_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6347a_hw_read to i32), ptr @__kstrtab_rl6347a_hw_read, ptr @__kstrtabns_rl6347a_hw_read }, section "___ksymtab_gpl+rl6347a_hw_read", align 4
@__UNIQUE_ID_description288 = internal constant [64 x i8] c"snd_soc_rl6347a.description=RL6347A class device shared support\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"snd_soc_rl6347a.author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [54 x i8] c"snd_soc_rl6347a.file=sound/soc/codecs/snd-soc-rl6347a\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [31 x i8] c"snd_soc_rl6347a.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [30 x i8] c"../sound/soc/codecs/rl6347a.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 51, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_rl6347a_hw_read, ptr @__ksymtab_rl6347a_hw_write, ptr @rl6347a_hw_write._entry, ptr @rl6347a_hw_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rl6347a_hw_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6347a_hw_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %reg)
  %cmp = icmp ult i32 %reg, 256
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %5 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %data.i, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %5, align 1
  %shr1455.i = lshr i32 %reg, 8
  %conv18.i = trunc i32 %shr1455.i to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18.i, ptr %6, align 1
  %conv21.i = trunc i32 %reg to i8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21.i, ptr %7, align 1
  %call.i56 = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %data.i, i32 noundef 4, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i56)
  %cmp24.i = icmp eq i32 %call.i56, 4
  br i1 %cmp24.i, label %if.then.rl6347a_hw_write.exit_crit_edge, label %do.end.i

if.then.rl6347a_hw_write.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rl6347a_hw_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i56) #7
  br label %rl6347a_hw_write.exit

rl6347a_hw_write.exit:                            ; preds = %do.end.i, %if.then.rl6347a_hw_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  %index_cache_size = getelementptr inbounds %struct.rl6347a_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %index_cache_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index_cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp258 = icmp sgt i32 %13, 0
  br i1 %cmp258, label %for.body.lr.ph, label %rl6347a_hw_write.exit.if.end8_crit_edge

rl6347a_hw_write.exit.if.end8_crit_edge:          ; preds = %rl6347a_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.lr.ph:                                   ; preds = %rl6347a_hw_write.exit
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_default, ptr %15, i32 %i.059
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %reg)
  %cmp4 = icmp eq i32 %17, %reg
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %def = getelementptr %struct.reg_default, ptr %15, i32 %i.059, i32 1
  %18 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %value, ptr %def, align 4
  br label %if.end8

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.if.end8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %for.inc.if.end8_crit_edge, %if.then5, %rl6347a_hw_write.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %reg.addr.0 = phi i32 [ %reg, %entry.if.end8_crit_edge ], [ 33816576, %if.then5 ], [ 33816576, %rl6347a_hw_write.exit.if.end8_crit_edge ], [ 33816576, %for.inc.if.end8_crit_edge ]
  %shr = lshr i32 %reg.addr.0, 24
  %conv = trunc i32 %shr to i8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %data, align 1
  %shr10 = lshr i32 %reg.addr.0, 16
  %conv12 = trunc i32 %shr10 to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %2, align 1
  %shr1455 = or i32 %reg.addr.0, %value
  %and1554 = lshr i32 %shr1455, 8
  %conv18 = trunc i32 %and1554 to i8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18, ptr %3, align 1
  %conv21 = trunc i32 %value to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv21, ptr %4, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %data, i32 noundef 4, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp24 = icmp eq i32 %call.i, 4
  br i1 %cmp24, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28 = icmp slt i32 %call.i, 0
  %call23. = select i1 %cmp28, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call23., %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rl6347a_hw_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  %data.i = alloca [4 x i8], align 1
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  %be_reg = alloca i32, align 4
  %buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #4
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be_reg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %reg)
  %cmp = icmp ult i32 %reg, 256
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %3 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %data.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %3, align 1
  %shr1455.i = lshr i32 %reg, 8
  %conv18.i = trunc i32 %shr1455.i to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv18.i, ptr %4, align 1
  %conv21.i = trunc i32 %reg to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv21.i, ptr %5, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %data.i, i32 noundef 4, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp24.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp24.i, label %if.then.rl6347a_hw_write.exit_crit_edge, label %do.end.i

if.then.rl6347a_hw_write.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rl6347a_hw_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i.i) #7
  br label %rl6347a_hw_write.exit

rl6347a_hw_write.exit:                            ; preds = %do.end.i, %if.then.rl6347a_hw_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %if.end

if.end:                                           ; preds = %rl6347a_hw_write.exit, %entry.if.end_crit_edge
  %reg.addr.0 = phi i32 [ 33816576, %rl6347a_hw_write.exit ], [ %reg, %entry.if.end_crit_edge ]
  %or = or i32 %reg.addr.0, 524288
  %10 = and i32 %or, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %10)
  %cmp2 = icmp eq i32 %10, 720896
  %shr = lshr i32 %reg.addr.0, 8
  %and5 = and i32 %shr, 15
  %and6 = and i32 %or, -3856
  %or7 = or i32 %and6, %and5
  %reg.addr.1 = select i1 %cmp2, i32 %or7, i32 %or
  %11 = ptrtoint ptr %be_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %reg.addr.1, ptr %be_reg, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4, ptr %len, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %17 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %be_reg, ptr %buf13, align 4
  %arrayidx15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayidx15, align 4
  %flags18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags18, align 2
  %len20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len20 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 4, ptr %len20, align 4
  %buf22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf22, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call23 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %xfer, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call23)
  %cmp26.not = icmp eq i32 %call23, 2
  br i1 %cmp26.not, label %if.end29, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf, align 4
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call23, %if.end.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be_reg) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rl6347a.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rl6347a_hw_write._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rl6347a_hw_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_rl6347a_hw_write, !9, !"__ksymtab_rl6347a_hw_write", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/rl6347a.c", i32 57, i32 1}
!10 = !{ptr @__ksymtab_rl6347a_hw_read, !11, !"__ksymtab_rl6347a_hw_read", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rl6347a.c", i32 104, i32 1}
!12 = !{ptr @__UNIQUE_ID_description288, !13, !"__UNIQUE_ID_description288", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rl6347a.c", i32 106, i32 1}
!14 = !{ptr @__UNIQUE_ID_author289, !15, !"__UNIQUE_ID_author289", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rl6347a.c", i32 107, i32 1}
!16 = !{ptr @__UNIQUE_ID_file290, !17, !"__UNIQUE_ID_file290", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rl6347a.c", i32 108, i32 1}
!18 = !{ptr @__UNIQUE_ID_license291, !17, !"__UNIQUE_ID_license291", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
