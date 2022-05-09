; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-boardinfo.c_pt.bc'
source_filename = "../drivers/i2c/i2c-boardinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__i2c_board_lock\22, \22a\22\09"
module asm "\09.weak\09__crc___i2c_board_lock\09\09\09\09"
module asm "\09.long\09__crc___i2c_board_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_board_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_board_lock\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_board_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__i2c_board_list\22, \22a\22\09"
module asm "\09.weak\09__crc___i2c_board_list\09\09\09\09"
module asm "\09.long\09__crc___i2c_board_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_board_list:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_board_list\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_board_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__i2c_first_dynamic_bus_num\22, \22a\22\09"
module asm "\09.weak\09__crc___i2c_first_dynamic_bus_num\09\09\09\09"
module asm "\09.long\09__crc___i2c_first_dynamic_bus_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_first_dynamic_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_first_dynamic_bus_num\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_first_dynamic_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_devinfo = type { %struct.list_head, i32, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__i2c_board_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@__i2c_board_lock = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @__i2c_board_lock, i64 56), ptr getelementptr (i8, ptr @__i2c_board_lock, i64 56) }, ptr @__i2c_board_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__i2c_board_lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab___i2c_board_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_board_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_board_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_board_lock to i32), ptr @__kstrtab___i2c_board_lock, ptr @__kstrtabns___i2c_board_lock }, section "___ksymtab_gpl+__i2c_board_lock", align 4
@__i2c_board_list = dso_local global %struct.list_head { ptr @__i2c_board_list, ptr @__i2c_board_list }, align 4
@__kstrtab___i2c_board_list = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_board_list = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_board_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_board_list to i32), ptr @__kstrtab___i2c_board_list, ptr @__kstrtabns___i2c_board_list }, section "___ksymtab_gpl+__i2c_board_list", align 4
@__i2c_first_dynamic_bus_num = dso_local global i32 0, align 4
@__kstrtab___i2c_first_dynamic_bus_num = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_first_dynamic_bus_num = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_first_dynamic_bus_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_first_dynamic_bus_num to i32), ptr @__kstrtab___i2c_first_dynamic_bus_num, ptr @__kstrtabns___i2c_first_dynamic_bus_num }, section "___ksymtab_gpl+__i2c_first_dynamic_bus_num", align 4
@i2c_register_board_info.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_boardinfo\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_register_board_info\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/i2c/i2c-boardinfo.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c-core: can't register boardinfo!\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 19, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [31 x i8] c"../drivers/i2c/i2c-boardinfo.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 66, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___i2c_board_list, ptr @__ksymtab___i2c_board_lock, ptr @__ksymtab___i2c_first_dynamic_bus_num, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_register_board_info(i32 noundef %busnum, ptr nocapture noundef readonly %info, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @__i2c_board_lock) #3
  %0 = load i32, ptr @__i2c_first_dynamic_bus_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %busnum)
  %cmp.not = icmp sgt i32 %0, %busnum
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %busnum, 1
  store i32 %add, ptr @__i2c_first_dynamic_bus_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not43 = icmp eq i32 %len, 0
  br i1 %tobool.not43, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %info.addr.045 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %info, %if.end.for.body_crit_edge ]
  %len.addr.044 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %len, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 68) #6
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %do.body, label %if.end10

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_register_board_info.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_register_board_info, %for.end)) #3
          to label %if.then8 [label %for.end], !srcloc !29

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2c_register_board_info.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.5) #3
  br label %for.end

if.end10:                                         ; preds = %for.body
  %busnum11 = getelementptr inbounds %struct.i2c_devinfo, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %busnum11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %busnum, ptr %busnum11, align 8
  %board_info = getelementptr inbounds %struct.i2c_devinfo, ptr %call7.i.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %board_info, ptr %info.addr.045, i32 56)
  %resources = getelementptr inbounds %struct.i2c_board_info, ptr %info.addr.045, i32 0, i32 8
  %4 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resources, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %if.then13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  %num_resources = getelementptr inbounds %struct.i2c_board_info, ptr %info.addr.045, i32 0, i32 9
  %6 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_resources, align 4
  %mul = shl i32 %7, 5
  %call15 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %mul, i32 noundef 3264) #3
  %resources17 = getelementptr inbounds %struct.i2c_devinfo, ptr %call7.i.i, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %resources17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %resources17, align 8
  %tobool20.not = icmp eq ptr %call15, null
  br i1 %tobool20.not, label %if.then21, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %for.end

if.end23:                                         ; preds = %if.then13.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @__i2c_board_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %9, ptr noundef nonnull @__i2c_board_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @__i2c_board_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__i2c_board_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end23.for.inc_crit_edge
  %dec = add i32 %len.addr.044, -1
  %incdec.ptr = getelementptr %struct.i2c_board_info, ptr %info.addr.045, i32 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then21, %if.then8, %do.body, %if.end.for.end_crit_edge
  %status.2 = phi i32 [ -12, %if.then21 ], [ -12, %if.then8 ], [ -12, %do.body ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @__i2c_board_lock) #3
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 19, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__i2c_board_lock, !1, !"__i2c_board_lock", i1 false, i1 false}
!4 = !{ptr @__ksymtab___i2c_board_lock, !5, !"__ksymtab___i2c_board_lock", i1 false, i1 false}
!5 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 20, i32 1}
!6 = !{ptr @__i2c_board_list, !7, !"__i2c_board_list", i1 false, i1 false}
!7 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 22, i32 1}
!8 = !{ptr @__ksymtab___i2c_board_list, !9, !"__ksymtab___i2c_board_list", i1 false, i1 false}
!9 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 23, i32 1}
!10 = !{ptr @__ksymtab___i2c_first_dynamic_bus_num, !11, !"__ksymtab___i2c_first_dynamic_bus_num", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 26, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 66, i32 4}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_register_board_info.__UNIQUE_ID_ddebug288, !13, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!18 = !{ptr @__i2c_first_dynamic_bus_num, !19, !"__i2c_first_dynamic_bus_num", i1 false, i1 false}
!19 = !{!"../drivers/i2c/i2c-boardinfo.c", i32 25, i32 5}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148987892, i64 2148987897, i64 2148987910, i64 2148987954, i64 2148987988, i64 2148988009}
